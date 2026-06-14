# Agentic Audit Brief: Stakingverse

## Project Overview

- Project: Stakingverse (`stakingverse`)
- Website: [https://stakingverse.io](https://stakingverse.io)
- Lifecycle: active (Tier 0, 62.1% below peak)
- Generated: 2026-06-14T04:13:41.569Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-d641
- Chains: ethereum, lukso
- Contract surface: 3 unique implementations (4 raw deployments)
- DeFi Llama TVL: $3,278,435.93
- On-chain TVL (included contracts): $3,542,371.79
- TVL by chain: Ethereum $3,542,371.79

## Project Description

Stakingverse is a liquid staking protocol operating on LUKSO and Ethereum, supporting liquid staking for LYX/LUKSO and ETH/Ethereum through a vault-based architecture. Receipt-token relationships should be stated only where independently verified; do not claim that SLYX represents staked ETH without verification.

### Architecture

The ERC1967Proxy delegates to the EthVault implementation, which likely mints and burns SLYX tokens in response to user deposits and withdrawals. The StakingverseVault may interact with the same SLYX token or share infrastructure with the main vault.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 3
- Raw deployments: 4
- Audits discovered: 18
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,542,371.79
- Latest audit: 2026-04 (fresh)
- Staleness: 2 fresh, 4 aging, 7 stale, 5 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| EthVault | core_logic | ethereum | 2 deployments: ethereum [`0x8a93a8...c89f56`](./contracts/ethereum-1/0x8a93a876912c9f03f88bc9114847cf5b63c89f56/); ethereum `0x927a83...23e2cc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | lukso | `0x8a3982...bc8f7d` | ❓ Unverified |
| UnnamedContract | unknown | lukso | `0x9f49a9...0f6f04` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/Stakingverse/pool-contracts/55073caed01dcdd7fe83374c299a6ae0dcd57816/audits/Stakingverse_LST_Audit.pdf) | Nethermind AI Agent | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/Stakingverse/pool-contracts/55073caed01dcdd7fe83374c299a6ae0dcd57816/audits/Stakingverse_Audit_MiloTruck.pdf) | MiloTruck | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/Stakingverse/pool-contracts/55073caed01dcdd7fe83374c299a6ae0dcd57816/audits/Liquid_Staking_Audit_Oct_2024.pdf) | Nethermind AI Agent | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://stakingverse.io/Terms.pdf) | Nethermind AI Agent | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2024-09-Sigma-Prime.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2024-09-Sigma-Prime.pdf) | Sigma Prime | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [2023-08-Halborn.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2023-08-Halborn.pdf) | Halborn | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [2024-03-Consensys-Diligence.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2024-03-Consensys-Diligence.pdf) | Consensys Diligence | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [2023-05-Halborn.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2023-05-Halborn.pdf) | Halborn | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [2023-08-Sigma-Prime.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2023-08-Sigma-Prime.pdf) | Sigma Prime | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [2024-06-Sigma-Prime.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2024-06-Sigma-Prime.pdf) | Sigma Prime | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [2025-09-ABDK.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2025-09-ABDK.pdf) | ABDK | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [2026-04-Statemind.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2026-04-Statemind.pdf) | Statemind | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |
| [nethermind-ai-agent-audit-report-stakingverse-pool-contracts.pdf](https://github.com/Stakingverse/pool-contracts/blob/main/audits/nethermind-ai-agent-audit-report-stakingverse-pool-contracts.pdf) | Nethermind | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [nethermind-findings.md](https://github.com/Stakingverse/pool-contracts/blob/main/audits/nethermind-findings.md) | Nethermind | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [slither_report_SLYXToken.md](https://github.com/Stakingverse/pool-contracts/blob/main/audits/slither_report_SLYXToken.md) | Slither | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [slither_report_StakingverseVault.md](https://github.com/Stakingverse/pool-contracts/blob/main/audits/slither_report_StakingverseVault.md) | Slither | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2023-1-9-UniversalPage.md](https://github.com/Universal-Page/contracts/blob/main/audits/2023-1-9-UniversalPage.md) | unknown | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [2024-2-1-UniversalPage-Vault-security-review.pdf](https://github.com/Universal-Page/contracts/blob/main/audits/2024-2-1-UniversalPage-Vault-security-review.pdf) | unknown | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 18
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2617] Rendered PDF capture
- [2618] Rendered PDF capture
- [2619] Rendered PDF capture
- [2620] Rendered PDF capture
- [2623] 2024-09-Sigma-Prime.pdf
- [2624] 2023-08-Halborn.pdf
- [2625] 2024-03-Consensys-Diligence.pdf
- [2626] 2023-05-Halborn.pdf
- [2627] 2023-08-Sigma-Prime.pdf
- [2628] 2024-06-Sigma-Prime.pdf
- [2629] 2025-09-ABDK.pdf
- [2630] 2026-04-Statemind.pdf
- [14329] nethermind-ai-agent-audit-report-stakingverse-pool-contracts.pdf
- [14330] nethermind-findings.md
- [14331] slither_report_SLYXToken.md
- [14332] slither_report_StakingverseVault.md
- [14337] 2023-1-9-UniversalPage.md
- [14338] 2024-2-1-UniversalPage-Vault-security-review.pdf

Fork inheritance lineage and inherited audits are included when available.
