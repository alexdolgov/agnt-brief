# Agentic Audit Brief: Phuture

⚠️ Lifecycle status: SUNSETTING - TVL dropped 46.5% over 90 days

## Project Overview

- Project: Phuture (`phuture`)
- Website: [https://www.phuture.finance](https://www.phuture.finance)
- Lifecycle: sunsetting (Tier 1, sunsetting)
- Generated: 2026-06-20T01:41:51.164Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: avalanche, ethereum
- Contract surface: 2 unique implementations (3 raw deployments)
- DeFi Llama TVL: $30,203.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 94; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 58 inactive, 33 singleton, 0 uninitialized.
- Deployment units: 0/18 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 4; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/2 (50.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 3
- Audits discovered: 6
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Staleness: 0 fresh, 0 aging, 6 stale, 0 unknown
- Tier 1 coverage: 50.0% (Code4rena)
- Note: This protocol is classified as [sunsetting]. ASD of n/a represents exposure in a protocol with sunsetting activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 1 | 50.0% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ManagedIndex | unknown | avalanche | n/a | 2 deployments: ethereum `0x632806...cb8b48`; avalanche [`0x48f88a...48bef0`](./contracts/avalanche-43114/0x48f88a3fe843ccb0b5003e70b4192c1d7448bef0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OrderingExecutor | unknown | avalanche | n/a | [`0xe9b38d...dd5585`](./contracts/avalanche-43114/0xe9b38d900445685cb7232259c95a96150fdd5585/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/phuture) | CertiK | Audit | 2022-12 | stale | Direct | contract_name | 0 | n/a |
| [DL audit link](https://code4rena.com/reports/2022-04-phuture) | Code4rena | Contest | 2022-04 | stale | Direct | contract_name | 2 | high |
| [PeckShield-Audit-Report-Phuture-FRPVault-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Phuture-FRPVault-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [| <p><a href="https://renascence-labs.xyz/">Renascence Labs</a><br>Auditors:<br><a href="https://github.com/MiloTruck">Milotruck</a><br><a href="https://github.com/HollaDieWaldfee100">HollaDieWaldfee</a><br><a href="https://github.com/windhustler">Windhustler</a></p> | Phuture v2 core | [Link]() |](https://github.com/Renascence-Labs/portfolio/blob/main/reports/Phuture%20V2%20-%20Renascence%20Audit%20Report.pdf) | MiloTruck | Audit | 2024-04 | stale | Direct | contract_name | 0 | n/a |
| [Agent Exchange - Renascence Audit Report.pdf](https://github.com/Renascence-Labs/portfolio/blob/main/reports/Agent%20Exchange%20-%20Renascence%20Audit%20Report.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Phuture-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Phuture-v1.0.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0xe9b38d...dd5585`](./contracts/avalanche-43114/0xe9b38d900445685cb7232259c95a96150fdd5585/) | OrderingExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=26

Zero-match audit list:

- [13672] DL audit link
- [13675] PeckShield-Audit-Report-Phuture-FRPVault-v1.0.pdf
- [13676] | <p><a href="https://renascence-labs.xyz/">Renascence Labs</a><br>Auditors:<br><a href="https://github.com/MiloTruck">Milotruck</a><br><a href="https://github.com/HollaDieWaldfee100">HollaDieWaldfee</a><br><a href="https://github.com/windhustler">Windhustler</a></p> | Phuture v2 core | [Link]() |
- [13677] Agent Exchange - Renascence Audit Report.pdf
- [16096] PeckShield-Audit-Report-Phuture-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
