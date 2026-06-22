# Agentic Audit Brief: Bondlink Finance

## Project Overview

- Project: Bondlink Finance (`bondlink-finance`)
- Website: [https://www.bondlink.finance](https://www.bondlink.finance)
- Lifecycle: active (Tier 0, 48% below peak)
- Generated: 2026-06-21T10:03:21.058Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $151,991.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bondlink Finance is a Real World Asset (RWA) protocol on Ethereum that tokenizes off-chain assets into on-chain tokens, enabling users to gain exposure to real-world yields. The protocol issues a stablecoin-like token (USDb) backed by these assets.

### Architecture

The protocol consists of a single product family with one core token contract (USDb). No supporting contracts or cross-family relationships are present in the current contract surface.

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Unverified dependencies: 1/6.

## Audit Coverage Summary

- Verified implementations audited: 2/3 (66.7%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 66.7% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| sUSDb | unknown | ethereum | n/a | [`0xb73383...3e85a6`](./contracts/ethereum-1/0xb73383430391f4fc9873c80be1f64a93273e85a6/) | ✅ Audited |
| USDb | unknown | ethereum | n/a | [`0x1623a5...90b5c5`](./contracts/ethereum-1/0x1623a55e0ba2384afd7511d6d7f77cf28790b5c5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RewardDistributor | operational_periphery | ethereum | n/a | [`0xdb81ef...8bf295`](./contracts/ethereum-1/0xdb81efd62ce14800852d24cc61e6bad44f8bf295/) | ⚠️ Unaudited |

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
| [DL audit link](https://beosin.com/audits/Bondlink_202412031841.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xdb81ef...8bf295`](./contracts/ethereum-1/0xdb81efd62ce14800852d24cc61e6bad44f8bf295/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=3

Fork inheritance lineage and inherited audits are included when available.
