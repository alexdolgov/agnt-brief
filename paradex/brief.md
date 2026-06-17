# Agentic Audit Brief: Paradex

## Project Overview

- Project: Paradex (`paradex`)
- Website: [https://app.paradex.trade/r/defillama](https://app.paradex.trade/r/defillama)
- Lifecycle: unknown
- Generated: 2026-06-17T07:00:46.739Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: n/a
- Contract surface: 0 unique implementations (0 raw deployments)
- DeFi Llama TVL: $27,280,553.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Paradex is a perpetuals decentralized exchange. The recorded Ethereum contracts appear to represent bridge/deposit-withdrawal infrastructure for Ethereum/Starknet connectivity, not the complete trading protocol or sole on-chain infrastructure.

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 5 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 0
- Raw deployments: 0
- Audits discovered: 5
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 3 aging, 2 stale, 0 unknown
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
| [May 2025 (Cairo Security Clan)](https://github.com/Cairo-Security-Clan/Audit-Portfolio/blob/main/Paradex_Audit_Report.pdf) | Cairo Security Clan | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Oct 2024 (Zellic)](https://github.com/tradeparadex/paradex-docs/blob/main/fern/assets/StarkGate_Oct_2024.pdf) | Zellic | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [Oct 2023 (Zellic)](https://github.com/tradeparadex/paradex-docs/blob/main/fern/assets/StarkGate_Oct_2023.pdf) | Zellic | Audit | 2023-10 | stale | Direct | contract_name | 0 | n/a |
| [Nov 2022 (Trail of Bits)](https://github.com/tradeparadex/paradex-docs/blob/main/fern/assets/Starknet_Core_Summary_Report_Sept_2022.pdf) | Trail of Bits | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [March 2025 (HackerOne)](https://github.com/tradeparadex/paradex-docs/blob/main/fern/assets/Paradex_Penetration_Test_March_25_2025.pdf) | HackerOne | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=2

Zero-match audit list:

- [12218] May 2025 (Cairo Security Clan)
- [12219] Oct 2024 (Zellic)
- [12220] Oct 2023 (Zellic)
- [12221] Nov 2022 (Trail of Bits)
- [12222] March 2025 (HackerOne)

Fork inheritance lineage and inherited audits are included when available.
