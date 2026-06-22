# Agentic Audit Brief: GOGOcoin

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: GOGOcoin (`gogocoin`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T18:58:24.949Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: polygon
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $2,196.60
- On-chain TVL (included contracts): $14,106.00
- TVL by chain: Polygon $14,106.00

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 8; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/3 (33.3%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $14,106.00
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $14,106.00 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 33.3% | n/a |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakingRewardsLP | unknown | polygon | n/a | [`0x5dc4ff...d577bc`](./contracts/polygon-137/0x5dc4ffc0f9c2261dcaae7f69e1a8837afbd577bc/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GoGoToken | token | polygon | n/a | [`0xdd2af2...3313d6`](./contracts/polygon-137/0xdd2af2e723547088d3846841fbdcc6a8093313d6/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | n/a | [`0xe33dd0...9c169d`](./contracts/polygon-137/0xe33dd0c0534189b66b9872425189399e2b9c169d/) | ⚠️ Unaudited |

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
| [DL audit link](https://omniscia.io/reports/gogo-staking-rewards) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xdd2af2...3313d6`](./contracts/polygon-137/0xdd2af2e723547088d3846841fbdcc6a8093313d6/) | GoGoToken | token | $14,106.00 | Verified native implementation with $14,106.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
