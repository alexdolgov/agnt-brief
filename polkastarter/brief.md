# Agentic Audit Brief: Polkastarter

## Project Overview

- Project: Polkastarter (`polkastarter`)
- Website: [https://polkastarter.com/#upcoming-projects](https://polkastarter.com/#upcoming-projects)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-10T20:59:09.350Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $2,996,295.21
- On-chain TVL (included contracts): $9,606,725.61
- TVL by chain: Ethereum $9,606,725.61

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Polkastarter is a curated crypto launchpad and IDO platform that connects blockchain projects with early backers for token launches and fundraising. The POLS token is used for access, staking/POLS Power, and related launchpad participation.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $9,606,725.61
- Latest audit: 2021-06 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

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
| [38f5ef00-1d8b-452f-bd87-317cedba47b3.pdf](https://github.com/polkastarter/staking-pols/blob/main/audit/38f5ef00-1d8b-452f-bd87-317cedba47b3.pdf) | unknown | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |
| [MythX_95814d21d1b04aad491b65fc.pdf](https://github.com/polkastarter/staking-pols/blob/main/audit/MythX_95814d21d1b04aad491b65fc.pdf) | unknown | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |
| [PolsStake_flat-MythX-standard_677a6fe7453e19b4b4fe976c.pdf](https://github.com/polkastarter/staking-pols/blob/main/audit/PolsStake_flat-MythX-standard_677a6fe7453e19b4b4fe976c.pdf) | unknown | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x83e6f1...c3d5aa`](./contracts/ethereum-1/0x83e6f1e41cdd28eaceb20cb649155049fac3d5aa/) | PolkastarterToken | token | $9,606,725.61 | Verified native implementation with $9,606,725.61 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8ff9e...165e04`](./contracts/ethereum-1/0xa8ff9e209e70ccbde820b75c51ece964ee165e04/) | PolkastarterDistributionContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [8150] 38f5ef00-1d8b-452f-bd87-317cedba47b3.pdf
- [8151] MythX_95814d21d1b04aad491b65fc.pdf
- [8152] PolsStake_flat-MythX-standard_677a6fe7453e19b4b4fe976c.pdf

Fork inheritance lineage and inherited audits are included when available.
