# Agentic Audit Brief: pNetwork

⚠️ Lifecycle status: DECLINING - TVL changed 0.0% over 90 days

## Project Overview

- Project: pNetwork (`pnetwork`)
- Website: [https://p.network](https://p.network)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:45.419Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: polygon
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $13,099,805.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

pNetwork is primarily a cross-chain interoperability and bridge protocol, governed by the pNetwork DAO, for moving assets and messages across blockchains. Farming, staking, or reward contracts should be treated only as ancillary or legacy components where current pNetwork ownership and operation are independently verified, not as a core current product line.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 14 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
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
| AutoFarmV2_CrossChain | unknown | polygon | n/a | [`0x89d065...eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x89d065...eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | AutoFarmV2_CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
