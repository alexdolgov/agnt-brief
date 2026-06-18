# Agentic Audit Brief: Sophon Farm

## Project Overview

- Project: Sophon Farm (`sophon-farm`)
- Website: [https://farm.sophon.xyz/](https://farm.sophon.xyz/)
- Lifecycle: unknown
- Generated: 2026-06-18T20:35:01.858Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-4ae8
- Chains: n/a
- Contract surface: 0 unique implementations (0 raw deployments)
- DeFi Llama TVL: $5,527,504.53
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Sophon Farm is a points farming protocol tracked by DefiLlama on Ethereum and Sophon. Users deposit tokens to farm Sophon Points, which are redeemable for $SOPH; the live protocol is not Ethereum-only and active TVL should be mapped to the relevant Ethereum and Sophon contract surfaces.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 2 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 0/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 0
- Raw deployments: 0
- Audits discovered: 9
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 6 aging, 2 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

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
| [DL audit link](https://docs.sophon.xyz/links/audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Quantstamp Audit Report for Farming on Ethereum](https://github.com/sophon-org/audits/blob/main/Quantstamp%20-%20Sophon%20Farming%20Final%20Report.pdf) | Quantstamp | Audit | 2024-06 | stale | Direct | contract_name | 0 | n/a |
| [Sherlock Audit Report for Farming on Ethereum](https://github.com/sophon-org/audits/blob/main/Sherlock%20-%20sophon-farming-contracts-audit-report-1718619027.pdf) | Sherlock | Contest | 2024-06 | stale | Direct | contract_name | 0 | n/a |
| [Omniscia Audit Report for Custom USDC Bridge](https://github.com/sophon-org/audits/blob/main/Omniscia%20-%20Security%20Review%20-%2011_20_2024.pdf) | Omniscia | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Omniscia Audit Report for Guardian NFT, L1 Paymaster, and SOPH Token](https://github.com/sophon-org/audits/blob/main/Omniscia%20-%20Security%20Review%20-%2011_01_2024.pdf) | Guardian | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Omniscia Audit Report for Farming on layer-2 oracle based allocation reward system](https://github.com/sophon-org/audits/blob/main/Omniscia%20-%20Security%20Review%20-%20Farming%20-%2001_08_2025.pdf) | Omniscia | Audit | 2025-02 | aging | Direct | contract_name | 0 | n/a |
| [Omniscia Audit Report for Tokens and BridgeHubWrapper](https://github.com/sophon-org/audits/blob/main/Quantstamp%20-%20Sophon%20tokens%20%26%20BridgeHubWrappe.pdf) | Quantstamp | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Nethermind - NM0482_FINAL_SOPHON.pdf](https://github.com/sophon-org/audits/blob/main/Nethermind%20-%20NM0482_FINAL_SOPHON.pdf) | Nethermind | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Omniscia - 04_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf](https://github.com/sophon-org/audits/blob/main/Omniscia%20-%2004_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf) | yAudit | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=18

Zero-match audit list:

- [2202] DL audit link
- [2203] Quantstamp Audit Report for Farming on Ethereum
- [2204] Sherlock Audit Report for Farming on Ethereum
- [2205] Omniscia Audit Report for Custom USDC Bridge
- [2206] Omniscia Audit Report for Guardian NFT, L1 Paymaster, and SOPH Token
- [2207] Omniscia Audit Report for Farming on layer-2 oracle based allocation reward system
- [2208] Omniscia Audit Report for Tokens and BridgeHubWrapper
- [2209] Nethermind - NM0482_FINAL_SOPHON.pdf
- [2210] Omniscia - 04_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf

Fork inheritance lineage and inherited audits are included when available.
