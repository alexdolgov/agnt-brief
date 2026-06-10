# Agentic Audit Brief: Sophon Farm

## Project Overview

- Project: Sophon Farm (`sophon-farm`)
- Website: [https://farm.sophon.xyz/](https://farm.sophon.xyz/)
- Lifecycle: active (Tier 1, dead)
- Generated: 2026-06-10T20:59:16.250Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 1 unique implementations (6 raw deployments)
- DeFi Llama TVL: $6,795,564.93
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Sophon Farm is a points farming protocol tracked by DefiLlama on Ethereum and Sophon. Users deposit tokens to farm Sophon Points, which are redeemable for $SOPH; the live protocol is not Ethereum-only and active TVL should be mapped to the relevant Ethereum and Sophon contract surfaces.

## Audit Coverage Summary

- Verified implementations audited: 1/1 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 6
- Audits discovered: 9
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 6 aging, 2 stale, 1 unknown
- Tier 1 coverage: 100.0% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Omniscia | Tier 2 | 1 | 100.0% | 2025-02 |
| Quantstamp | Tier 2 | 1 | 100.0% | 2024-11 |
| Sherlock | Tier 1 | 1 | 100.0% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SophonFarming | unknown | ethereum | 6 deployments: ethereum [`0x52df5e...4a774a`](./contracts/ethereum-1/0x52df5e394469743839a47b4d0b1e09b8a84a774a/); ethereum `0x619164...e35f31`; ethereum `0x78910e...0e2a06`; ethereum `0xcea810...3219b2`; ethereum `0xda3bfc...807de8`; ethereum `0xeff8e6...6ae064` | ✅ Audited |

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
| [Quantstamp Audit Report for Farming on Ethereum](https://github.com/sophon-org/audits/blob/main/Quantstamp%20-%20Sophon%20Farming%20Final%20Report.pdf) | Quantstamp | Audit | 2024-06 | stale | Direct | contract_name | 6 | high |
| [Sherlock Audit Report for Farming on Ethereum](https://github.com/sophon-org/audits/blob/main/Sherlock%20-%20sophon-farming-contracts-audit-report-1718619027.pdf) | Sherlock | Contest | 2024-06 | stale | Direct | contract_name | 6 | high |
| [Omniscia Audit Report for Custom USDC Bridge](https://github.com/sophon-org/audits/blob/main/Omniscia%20-%20Security%20Review%20-%2011_20_2024.pdf) | Omniscia | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Omniscia Audit Report for Guardian NFT, L1 Paymaster, and SOPH Token](https://github.com/sophon-org/audits/blob/main/Omniscia%20-%20Security%20Review%20-%2011_01_2024.pdf) | Guardian | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Omniscia Audit Report for Farming on layer-2 oracle based allocation reward system](https://github.com/sophon-org/audits/blob/main/Omniscia%20-%20Security%20Review%20-%20Farming%20-%2001_08_2025.pdf) | Omniscia | Audit | 2025-02 | aging | Direct | contract_name | 6 | high |
| [Omniscia Audit Report for Tokens and BridgeHubWrapper](https://github.com/sophon-org/audits/blob/main/Quantstamp%20-%20Sophon%20tokens%20%26%20BridgeHubWrappe.pdf) | Quantstamp | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Nethermind - NM0482_FINAL_SOPHON.pdf](https://github.com/sophon-org/audits/blob/main/Nethermind%20-%20NM0482_FINAL_SOPHON.pdf) | Nethermind | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Omniscia - 04_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf](https://github.com/sophon-org/audits/blob/main/Omniscia%20-%2004_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf) | yAudit | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

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
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=18

Zero-match audit list:

- [2202] DL audit link
- [2205] Omniscia Audit Report for Custom USDC Bridge
- [2206] Omniscia Audit Report for Guardian NFT, L1 Paymaster, and SOPH Token
- [2208] Omniscia Audit Report for Tokens and BridgeHubWrapper
- [2209] Nethermind - NM0482_FINAL_SOPHON.pdf
- [2210] Omniscia - 04_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf

Fork inheritance lineage and inherited audits are included when available.
