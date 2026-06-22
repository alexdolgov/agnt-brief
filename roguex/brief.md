# Agentic Audit Brief: Roguex

⚠️ Lifecycle status: DECLINING - TVL dropped 18.0% over 90 days

## Project Overview

- Project: Roguex (`roguex`)
- Website: [https://roguex.ai/](https://roguex.ai/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-20T01:36:36.811Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: blast
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $29,916.42
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Roguex is a decentralized exchange (DEX) protocol on the Blast chain, enabling users to swap tokens and provide liquidity through automated market-making pools. It uses a factory contract to create and manage liquidity pools, facilitating permissionless token trading.

### Architecture

The RoguexFactory contract is the central infrastructure, deploying and registering all liquidity pools. All user interactions flow through the pools created by this factory, with no additional supporting contracts identified.

## Contract Surface Quality

- Indexed contracts: 118; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 114 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v3
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
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
| FixSupplyToken | token | blast | n/a | [`0x01593b...a48c5f`](./contracts/blast-81457/0x01593b8aaadc5238f2f5c8597bc1402eb7a48c5f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | blast | n/a | `0x662267...8a819b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x946d5d...6598e3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc8cbb7...37ebfc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [RogueX Smart Contract Security Audit Report.pdf](https://github.com/LunaraySec/Report/blob/7a858deb336dccb7af7258f26dd8416fce5e6fc1/RogueX%20Smart%20Contract%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2023-12 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0x01593b...a48c5f`](./contracts/blast-81457/0x01593b8aaadc5238f2f5c8597bc1402eb7a48c5f/) | FixSupplyToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=2

Zero-match audit list:

- [13763] RogueX Smart Contract Security Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
