# Agentic Audit Brief: Nerona

⚠️ Lifecycle status: DECLINING - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Nerona (`nerona`)
- Lifecycle: declining (Tier 0, 77.5% below peak)
- Generated: 2026-06-13T04:03:22.461Z
- Pipeline run: v2-pipeline-2026-06-13-546062-8c0a
- Chains: ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $5,391,878.69
- On-chain TVL (included contracts): $326,950,304.58
- TVL by chain: Ethereum $326,950,304.58

## Project Description

Nerona is a yield aggregator that allows users to deposit assets into vaults to earn optimized yield. It operates on Ethereum and uses a transparent upgradeable proxy for its core swap facility.

### Architecture

The SwapFacility contract, deployed behind a transparent upgradeable proxy, serves as the core operational hub, while MToken acts as the receipt token for user deposits. Both contracts are part of the single Nerona family and share the same upgradeable infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 4
- Raw deployments: 4
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

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MToken | token | ethereum | [`0x866a2b...36be1b`](./contracts/ethereum-1/0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b/) | ⚠️ Unaudited |
| JMIExtension | unknown | ethereum | [`0x1028a0...d22ae0`](./contracts/ethereum-1/0x1028a0e146d2915c509c8e019e0e5c66d3d22ae0/) | ⚠️ Unaudited |
| SwapFacility | unknown | ethereum | [`0xb68071...6f6278`](./contracts/ethereum-1/0xb6807116b3b1b321a390594e31ecd6e0076f6278/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0xd48e56...ef28f9` | ❓ Unverified |

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
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
