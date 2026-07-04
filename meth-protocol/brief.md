# Agentic Audit Brief: mETH Protocol

## Project Overview

- Project: mETH Protocol (`meth-protocol`)
- Website: [https://www.methprotocol.xyz/](https://www.methprotocol.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:31.517Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $360,161,561.49
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/1 (100.0%)
- Deployed-live implementations: 1 of 1 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 26 (26 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 4 fresh, 7 aging, 13 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BlockSec | Tier 2 | 1 | 100.0% | 2025-10 |
| Mantle | Tier 2 | 1 | 100.0% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| L1Cook | unknown | ethereum | n/a | [`0x9f0c01...c7b94d`](./contracts/ethereum-1/0x9f0c013016e8656bc256f948cd4b79ab25c7b94d/) | ✅ Audited |

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
| [Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Mantle_SCs_Aug23(Public)(Liquid%20Staking%20Protocol).pdf) | Hexens | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [Mantle_Sep23(Public) (Oracle).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Mantle_Sep23(Public)%20(Oracle).pdf) | Hexens | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [mantle-cmeth-audit-aug-2024(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/mantle-cmeth-audit-aug-2024(Public).pdf) | Hexens | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [Mantle Network METH Secuity Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Mantle%20Network/METH/Mantle%20Network%20METH%20Secuity%20Audit%20Report.pdf) | MixBytes | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [Mantle cMETH Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Mantle%20Network/cMETH/Mantle%20cMETH%20Security%20Audit%20Report.pdf) | MixBytes | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [Mantle mETH x Aave Integration Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Mantle%20Network/mETH%20x%20Aave%20Integration/Mantle%20mETH%20x%20Aave%20Integration%20Security%20Audit%20Report.pdf) | MixBytes | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Mantle_LSP_L2_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_LSP_L2_Report.pdf) | Verilog | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [secure3.io/contest/64954f6b](https://secure3.io/contest/64954f6b) | Secure3 | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [secure3.io/contest/bbb030a7](https://secure3.io/contest/bbb030a7) | Secure3 | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [Mantle_L2_ERC20_Token_Bridge_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_L2_ERC20_Token_Bridge_Report.pdf) | unknown | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [MixBytes-BufferPool.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2F7DhxKicJ8bDVIc97CU5f%2FMixBytes-BufferPool.pdf) | MixBytes | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Hexens-BufferPool.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FNQRVoWBNlZQgGHJqlE2P%2FHexens-BufferPool.pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Blocksec-BufferPool.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FNdXlRHtKYExIqqa9s7fP%2FBlocksec-BufferPool.pdf) | BlockSec | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Exvul-BufferPool.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FIVOEAhgisB2EtOU2rwNP%2FExvul-BufferPool.pdf) | Exvul | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Mantle cMETH Security Audit Report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FDQqPYLP8pvuxVwj4n6av%2FMantle%20cMETH%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [verilog-mantle-fuzzland-cook-pm-audit-report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2F5uL6TUlJvsnMnZ3bTBfG%2Fverilog-mantle-fuzzland-cook-pm-audit-report.pdf) | Fuzzland | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Mantle Fix Review 3 Report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FvRlXVC4cVdibzenmeS6I%2FMantle%20Fix%20Review%203%20Report.pdf) | Mantle | Audit | 2024-10 | aging | Direct | contract_name | 1 | high |
| [BlockSec Final[Cook].pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FVvF5gHAjjBeZ25zObSz2%2FBlockSec%20Final%5BCook%5D.pdf) | BlockSec | Audit | 2024-10 | aging | Direct | contract_name | 1 | high |
| [Mantle-cmETH_Secure3_Audit_Report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2Ff5ozoh0YRvxE3YO8FqMK%2FMantle-cmETH_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [mantle-cmeth-hexens-audit-aug-2024.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FT0QClInfYwk3ARBy1vrk%2Fmantle-cmeth-hexens-audit-aug-2024.pdf) | Hexens | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FG407rVeB9SxJVhM28PEC%2FMantle_SCs_Aug23(Public)(Liquid%20Staking%20Protocol).pdf) | Hexens | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [Mantle_Sep23(Public) (Oracle).pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FMlIxHGCEPsOGBFdgxvrJ%2FMantle_Sep23(Public)%20(Oracle).pdf) | Hexens | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [Mantle Network METH Secuity Audit Report Upd.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FZBSPwrDcGKf3Y7WyeJXr%2FMantle%20Network%20METH%20Secuity%20Audit%20Report%20Upd.pdf) | yAudit | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2Fb5AJNmg1LvkJjL88oJCt%2FMantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FEtxWvXpZa5vpZuHK1hGi%2FMantle-LSD-mntETH_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [Mantle_LSP_L2_Report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FJgFbWoSYWVOJkwVeRceq%2FMantle_LSP_L2_Report.pdf) | Verilog Solutions | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 24
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=2

Zero-match audit list:

- [21210] Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf
- [21211] Mantle_Sep23(Public) (Oracle).pdf
- [21212] mantle-cmeth-audit-aug-2024(Public).pdf
- [21213] Mantle Network METH Secuity Audit Report.pdf
- [21214] Mantle cMETH Security Audit Report.pdf
- [21215] Mantle mETH x Aave Integration Security Audit Report.pdf
- [21216] Mantle_LSP_L2_Report.pdf
- [21217] secure3.io/contest/64954f6b
- [21218] secure3.io/contest/bbb030a7
- [23905] Mantle_L2_ERC20_Token_Bridge_Report.pdf
- [23908] MixBytes-BufferPool.pdf
- [23909] Hexens-BufferPool.pdf
- [23910] Blocksec-BufferPool.pdf
- [23911] Exvul-BufferPool.pdf
- [23912] Mantle cMETH Security Audit Report.pdf
- [23913] verilog-mantle-fuzzland-cook-pm-audit-report.pdf
- [23916] Mantle-cmETH_Secure3_Audit_Report.pdf
- [23917] mantle-cmeth-hexens-audit-aug-2024.pdf
- [23918] Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf
- [23919] Mantle_Sep23(Public) (Oracle).pdf
- [23920] Mantle Network METH Secuity Audit Report Upd.pdf
- [23921] Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf
- [23922] Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf
- [23923] Mantle_LSP_L2_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
