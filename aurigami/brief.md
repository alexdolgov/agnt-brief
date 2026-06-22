# Agentic Audit Brief: Aurigami

⚠️ Lifecycle status: DEAD - TVL changed 16.6% over 90 days

## Project Overview

- Project: Aurigami (`aurigami`)
- Website: [https://www.aurigami.finance](https://www.aurigami.finance)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T15:46:40.601Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $819,012.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 180; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 179 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: compound-v2
- Dependencies extracted: 17; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Ply | unknown | ethereum | n/a | [`0x1ab432...2ef90b`](./contracts/ethereum-1/0x1ab43204a195a0fd37edec621482afd3792ef90b/) | ⚠️ Unaudited |

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
| [Aurigami_Finance_Audit_Report_by_WatchPug.pdf](https://github.com/Aurigami-Finance/aurigami-smart-contracts/blob/main/docs/Aurigami_Finance_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2022-02 | stale | Direct | contract_name | 0 | n/a |
| [Watchpug](https://www.watchpug.org/) | WatchPug | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1ab432...2ef90b`](./contracts/ethereum-1/0x1ab43204a195a0fd37edec621482afd3792ef90b/) | Ply | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=16

Zero-match audit list:

- [12702] Aurigami_Finance_Audit_Report_by_WatchPug.pdf
- [12703] Watchpug

Fork inheritance lineage and inherited audits are included when available.
