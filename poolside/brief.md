# Agentic Audit Brief: Poolside

⚠️ Lifecycle status: DECLINING - TVL dropped 19.8% over 90 days

## Project Overview

- Project: Poolside (`poolside`)
- Website: [https://www.poolside.party](https://www.poolside.party)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-20T01:44:00.725Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: base
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $30,606.06
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 104; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 103 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 13; unverified dependencies: 0.

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
- Latest audit: 2023-08 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GenericButtonswapRouter | adapter | base | n/a | [`0xa6c9d0...ed2e2f`](./contracts/base-8453/0xa6c9d0cb8fff7a47db726ab8b31206dd69ed2e2f/) | ⚠️ Unaudited |

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
| [statemind_2023-08-11.pdf](https://github.com/buttonwood-protocol/buttonswap-core/blob/main/notes/statemind_2023-08-11.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 0 | n/a |
| [🔎 Security Audit Completed](https://2693699415-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F1OyEScoUCIfVRkK0pfQm%2Fuploads%2FRAecNiY4W8m84dbjdayw%2Fbuttonswap.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xa6c9d0...ed2e2f`](./contracts/base-8453/0xa6c9d0cb8fff7a47db726ab8b31206dd69ed2e2f/) | GenericButtonswapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Match method counts: extraction_exact=5

Zero-match audit list:

- [13692] statemind_2023-08-11.pdf
- [13693] 🔎 Security Audit Completed

Fork inheritance lineage and inherited audits are included when available.
