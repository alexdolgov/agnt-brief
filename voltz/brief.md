# Agentic Audit Brief: Voltz

⚠️ Lifecycle status: SUNSETTING - TVL dropped 9.3% over 90 days

## Project Overview

- Project: Voltz (`voltz`)
- Website: [https://www.voltz.xyz](https://www.voltz.xyz)
- Lifecycle: sunsetting (Tier 1, sunsetting)
- Generated: 2026-06-21T10:19:31.359Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: avalanche
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $214,191.29
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 1 (0 live, 1 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/1 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [sunsetting]. ASD of n/a represents exposure in a protocol with sunsetting activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 1 | 100.0% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Factory | registry | avalanche | n/a | [`0xda66a7...7688c1`](./contracts/avalanche-43114/0xda66a7584da7210fd26726efb12585734f7688c1/) | ✅ Audited |

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
| [www.certik.com/projects/voltz](https://skynet.certik.com/projects/voltz) | CertiK | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [ABDK_Voltz_Project1_v_1_0.pdf](https://github.com/abdk-consulting/audits/blob/main/voltz/ABDK_Voltz_Project1_v_1_0.pdf) | ABDK | Audit | 2022-04 | stale | Direct | contract_name | 1 | high |

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
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=3

Zero-match audit list:

- [14117] www.certik.com/projects/voltz

Fork inheritance lineage and inherited audits are included when available.
