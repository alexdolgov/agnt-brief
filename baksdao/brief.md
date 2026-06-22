# Agentic Audit Brief: BaksDAO

⚠️ Lifecycle status: DEAD - TVL changed 0.0% over 90 days

## Project Overview

- Project: BaksDAO (`baksdao`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T17:46:06.437Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $181.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 14 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/2 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 100.0% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Baks | unknown | bsc | n/a | [`0x8bd22c...d91596`](./contracts/bsc-56/0x8bd22c61b409587d24d87fb56e88bd84e5d91596/) | ✅ Audited |
| Voice | unknown | bsc | n/a | [`0x3a0c66...f999c5`](./contracts/bsc-56/0x3a0c66ff229b4ff924cba7bfb32ec860c0f999c5/) | ✅ Audited |

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
| [SmartContract_Audit_Solidproof_BaksDao.pdf](https://github.com/solidproof/smart-contract-audits/blob/main/SmartContract_Audit_Solidproof_BaksDao.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

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
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=14

Fork inheritance lineage and inherited audits are included when available.
