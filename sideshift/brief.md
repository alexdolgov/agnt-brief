# Agentic Audit Brief: SideShift

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: SideShift (`sideshift`)
- Website: [https://sideshift.ai](https://sideshift.ai)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-22T20:36:00.692Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 2 unique implementations (3 raw deployments)
- DeFi Llama TVL: $15,055,679.01
- On-chain TVL (included contracts): $12,328,298.64
- TVL by chain: Ethereum $12,328,298.64

## Project Description

SideShift is a cross-chain bridge that enables users to shift tokens between different blockchains. It uses a vault contract to manage deposits and withdrawals, and an XAI token for governance or utility.

### Architecture

The SideShiftVault contract handles the core bridging logic, while the XAI token likely serves as a governance or fee token within the ecosystem. Both contracts are deployed by the same deployer, indicating a unified infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 3
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $12,328,298.64
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $12,328,298.64 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SideShiftVault | core_logic | ethereum | 2 deployments: ethereum [`0x380870...66bd62`](./contracts/ethereum-1/0x3808708e761b988d23ae011ed0e12674fb66bd62/); ethereum `0x74f06d...2561b9` | ⚠️ Unaudited |
| XAI | unknown | ethereum | [`0x35e78b...dbe232`](./contracts/ethereum-1/0x35e78b3982e87ecfd5b3f3265b601c046cdbe232/) | ⚠️ Unaudited |

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
| ethereum | [`0x380870...66bd62`](./contracts/ethereum-1/0x3808708e761b988d23ae011ed0e12674fb66bd62/) | SideShiftVault | core_logic | $12,328,298.64 | Verified native implementation with $12,328,298.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35e78b...dbe232`](./contracts/ethereum-1/0x35e78b3982e87ecfd5b3f3265b601c046cdbe232/) | XAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
