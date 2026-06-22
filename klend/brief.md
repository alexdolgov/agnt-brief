# Agentic Audit Brief: KLend

⚠️ Lifecycle status: DECLINING - TVL changed 0.0% over 90 days

## Project Overview

- Project: KLend (`klend`)
- Lifecycle: declining (Tier 0, 99.9% below peak)
- Generated: 2026-06-19T20:03:04.638Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $5,802.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 60; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 52 inactive, 6 singleton, 0 uninitialized.
- Deployment units: 0/2 live.
- Detected codebases: compound-v2
- Unverified dependencies: 1/15.

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
- Latest audit: 2021-03 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: 100.0% (SlowMist)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 2 | 100.0% | 2021-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CEther | unknown | bsc | n/a | [`0x2c334c...7ff481`](./contracts/bsc-56/0x2c334c6cbc0547e759084bd8d469f933b17ff481/) | ✅ Audited |
| Comp | unknown | bsc | n/a | [`0xf95995...c6d0fb`](./contracts/bsc-56/0xf95995d642c652e9a7d124d546a7bdf297c6d0fb/) | ✅ Audited |

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
| [slowmist.pdf](https://github.com/klend-lab/klend-protocol/blob/main/slowmist.pdf) | SlowMist | Audit | 2021-03 | stale | Direct | contract_name | 2 | high |

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
- Match method counts: extraction_exact=39

Fork inheritance lineage and inherited audits are included when available.
