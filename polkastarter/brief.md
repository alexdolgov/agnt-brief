# Agentic Audit Brief: Polkastarter

## Project Overview

- Project: Polkastarter (`polkastarter`)
- Website: [https://polkastarter.com/#upcoming-projects](https://polkastarter.com/#upcoming-projects)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-14T08:10:42.832Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-403f
- Chains: bsc, ethereum
- Contract surface: 3 unique implementations (4 raw deployments)
- DeFi Llama TVL: $2,731,722.06
- On-chain TVL (included contracts): $9,606,725.61
- TVL by chain: Ethereum $9,606,725.61

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Polkastarter is a curated crypto launchpad and IDO platform that connects blockchain projects with early backers for token launches and fundraising. The POLS token is used for access, staking/POLS Power, and related launchpad participation.

## Audit Coverage Summary

- Verified implementations audited: 1/3 (33.3%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 4
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $9,606,725.61
- Latest audit: 2021-06 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 33.3% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PolsStake | unknown | ethereum | 2 deployments: ethereum [`0xc24a36...79d8d7`](./contracts/ethereum-1/0xc24a365a870821eb83fd216c9596edd89479d8d7/); bsc `0xd55867...63de3a` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PolkastarterToken | token | ethereum | [`0x83e6f1...c3d5aa`](./contracts/ethereum-1/0x83e6f1e41cdd28eaceb20cb649155049fac3d5aa/) | ⚠️ Unaudited |
| PolkastarterDistributionContract | unknown | ethereum | [`0xa8ff9e...165e04`](./contracts/ethereum-1/0xa8ff9e209e70ccbde820b75c51ece964ee165e04/) | ⚠️ Unaudited |

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
| [38f5ef00-1d8b-452f-bd87-317cedba47b3.pdf](https://github.com/polkastarter/staking-pols/blob/main/audit/38f5ef00-1d8b-452f-bd87-317cedba47b3.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 2 | high |
| [MythX_95814d21d1b04aad491b65fc.pdf](https://github.com/polkastarter/staking-pols/blob/main/audit/MythX_95814d21d1b04aad491b65fc.pdf) | unknown | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |
| [PolsStake_flat-MythX-standard_677a6fe7453e19b4b4fe976c.pdf](https://github.com/polkastarter/staking-pols/blob/main/audit/PolsStake_flat-MythX-standard_677a6fe7453e19b4b4fe976c.pdf) | unknown | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Zero-match audit list:

- [8151] MythX_95814d21d1b04aad491b65fc.pdf
- [8152] PolsStake_flat-MythX-standard_677a6fe7453e19b4b4fe976c.pdf

Fork inheritance lineage and inherited audits are included when available.
