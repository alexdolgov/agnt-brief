# Agentic Audit Brief: Pegasusdollar

⚠️ Lifecycle status: DEAD - TVL dropped 1.5% over 90 days

## Project Overview

- Project: Pegasusdollar (`pegasusdollar`)
- Lifecycle: dead (Tier 0, 99.9% below peak)
- Generated: 2026-06-19T22:57:27.620Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: cronos
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $14,042.24
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Pegasusdollar is an algorithmic stablecoin protocol on Cronos that maintains a dollar-pegged token through seigniorage and bonding mechanisms. It uses a multi-contract system to manage minting, redemption, and treasury operations.

### Architecture

All contracts belong to a single product family with no explicit sub-groupings; they likely share infrastructure for stablecoin operations such as minting, bonding, and treasury management, though exact roles are undetermined from available data.

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (0 live, 7 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

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

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | `0x43713f...a44f6b` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x7614a4...1e83cd` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x8efbaa...e2aa3b` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x97749c...ed7656` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xb8df27...9f4878` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xbbd465...2fe1c5` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xdd403d...6240c6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-PegasusDollar-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-PegasusDollar-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [SmartContract_Audit_Solidproof_PegasusDollar.pdf](https://github.com/solidproof/projects/blob/main/PegasusDollar/SmartContract_Audit_Solidproof_PegasusDollar.pdf) | Solidproof | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13662] PeckShield-Audit-Report-PegasusDollar-v1.0.pdf
- [15992] SmartContract_Audit_Solidproof_PegasusDollar.pdf

Fork inheritance lineage and inherited audits are included when available.
