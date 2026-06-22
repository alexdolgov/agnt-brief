# Agentic Audit Brief: NumisMe

⚠️ Lifecycle status: DEAD - TVL dropped 8.4% over 90 days

## Project Overview

- Project: NumisMe (`numisme`)
- Lifecycle: dead (Tier 0, 99.8% below peak)
- Generated: 2026-06-19T13:33:47.071Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $309.08
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 42; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 41 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 13; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/1 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 100.0% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NumisMe | unknown | ethereum | n/a | [`0x34769d...68f1c3`](./contracts/ethereum-1/0x34769d3e122c93547836addd3eb298035d68f1c3/) | ✅ Audited |

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
| [Haechi-V3.pdf](https://github.com/NumisMe/Frontend/blob/main/Haechi-V3.pdf) | unknown | Audit | 2021-10 | stale | Direct | contract_name | 0 | n/a |
| [code423n4.com/reports/2021-09-yaxis](https://code4rena.com/reports/2021-09-yaxis) | Code4rena | Contest | 2021-09 | stale | Direct | contract_name | 0 | n/a |
| [www.certik.com/projects/numisme](https://skynet.certik.com/projects/numisme) | CertiK | Audit | 2022-02 | stale | Direct | contract_name | 1 | high |

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
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=25

Zero-match audit list:

- [13579] Haechi-V3.pdf
- [13580] code423n4.com/reports/2021-09-yaxis

Fork inheritance lineage and inherited audits are included when available.
