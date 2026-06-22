# Agentic Audit Brief: Qubit

⚠️ Lifecycle status: DEAD - TVL dropped 7.8% over 90 days

## Project Overview

- Project: Qubit (`qubit`)
- Website: [https://qbt.fi](https://qbt.fi)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T23:15:11.167Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $14,746.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 249; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 134 inactive, 114 singleton, 0 uninitialized.
- Deployment units: 0/42 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 1/49.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 4
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-12 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 0 unknown
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

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x59595e...93a480` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Qubit-v1.0.pdf (also discovered via alternate URL)](https://github.com/PancakeBunny-finance/qubit-finance/blob/master/audits/PeckShield-Audit-Report-Qubit-v1.0.pdf) | PeckShield | Audit | 2021-08 | stale | Direct | contract_name | 0 | n/a |
| [link](https://github.com/PancakeBunny-finance/qubit-finance/blob/master/audits/mound_qubit_audit_rev1.1.pdf) | yAudit | Audit | 2021-08 | stale | Direct | contract_name | 0 | n/a |
| [link](https://github.com/PancakeBunny-finance/qubit-finance/blob/master/audits/mound_qubit_xChain_audit_rev1.1.pdf) | yAudit | Audit | 2021-12 | stale | Direct | contract_name | 0 | n/a |
| [link](https://github.com/PancakeBunny-finance/qubit-finance/blob/master/audits/mound_qubit_xLP_audit_rev1.1.pdf) | yAudit | Audit | 2021-12 | stale | Direct | contract_name | 0 | n/a |

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
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=249

Zero-match audit list:

- [13720] PeckShield-Audit-Report-Qubit-v1.0.pdf
- [13722] link
- [13723] link
- [13724] link

Fork inheritance lineage and inherited audits are included when available.
