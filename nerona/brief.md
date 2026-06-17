# Agentic Audit Brief: Nerona

⚠️ Lifecycle status: DECLINING - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Nerona (`nerona`)
- Lifecycle: declining (Tier 0, 77.5% below peak)
- Generated: 2026-06-17T07:00:52.209Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $5,391,878.69
- On-chain TVL (included contracts): $326,950,304.58
- TVL by chain: Ethereum $326,950,304.58

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Nerona is a yield aggregator. Current metadata describes the protocol as active on Fluent, with no separate homepage content available from the provided evidence.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 1 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $326,950,304.58
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $326,950,304.58 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MToken | token | ethereum | n/a | [`0x866a2b...36be1b`](./contracts/ethereum-1/0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b/) | ⚠️ Unaudited |
| SwapFacility | unknown | ethereum | unit-31457 | [`0xb68071...6f6278`](./contracts/ethereum-1/0xb6807116b3b1b321a390594e31ecd6e0076f6278/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0xd48e56...ef28f9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x866a2b...36be1b`](./contracts/ethereum-1/0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b/) | MToken | token | $326,950,304.58 | Verified native implementation with $326,950,304.58 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
