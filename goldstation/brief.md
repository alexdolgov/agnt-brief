# Agentic Audit Brief: GOLDSTATION

## Project Overview

- Project: GOLDSTATION (`goldstation`)
- Website: [https://goldstation.io](https://goldstation.io)
- Lifecycle: active (Tier 0, 63.1% below peak)
- Generated: 2026-05-24T13:16:54.415Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: avalanche, klaytn
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $2,259,142.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

GOLDSTATION is a decentralized exchange and real-world asset protocol that enables token swaps, liquidity provision, and staking. It also offers tokenized gold exposure through its RWA product.

### Architecture

The DEX likely provides liquidity for the RWA token, while the staking contract may distribute rewards from DEX fees or RWA yields. All families share the same deployer and operate on Klaytn and Avalanche.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 1 aging, 1 stale, 1 unknown
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

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | klaytn | `0x347e5c...62ae88` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x4836cc...0cd95e` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x4d55b0...dc8954` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x6569b1...47dc76` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1b27d7...64281d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SlowMist Audit Report - GoldCollateralManager.pdf](https://github.com/CrederLabs/audit/blob/main/GoldCollateralManager/SlowMist%20Audit%20Report%20-%20GoldCollateralManager.pdf) | SlowMist | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [Certik_Audit_Report_Goldstation_V3.pdf](https://github.com/CrederLabs/audit/blob/main/GoldstationV3/Certik_Audit_Report_Goldstation_V3.pdf) | CertiK | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [Certik_Audit_Report_STAN_Token.pdf](https://github.com/CrederLabs/audit/blob/main/StanToken/Certik_Audit_Report_STAN_Token.pdf) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2860] SlowMist Audit Report - GoldCollateralManager.pdf
- [2861] Certik_Audit_Report_Goldstation_V3.pdf
- [2862] Certik_Audit_Report_STAN_Token.pdf

Fork inheritance lineage and inherited audits are included when available.
