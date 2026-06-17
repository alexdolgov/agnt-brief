# Agentic Audit Brief: SideShift

## Project Overview

- Project: SideShift (`sideshift`)
- Website: [https://sideshift.ai](https://sideshift.ai)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:56.191Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $12,702,890.56
- On-chain TVL (included contracts): $12,328,298.64
- TVL by chain: Ethereum $12,328,298.64

## Project Description

SideShift is a direct-to-wallet crypto swap/exchange service that lets users swap assets across networks. It is categorized by DefiLlama under Cross Chain Bridge, but vault-based lock-and-release bridge mechanics should not be claimed without verified contract source or documentation. XAI is SideShift's native ERC20 token and can be staked for a share of revenues; it should not be described as a governance or fee-utility token unless supported by current documentation.

### Architecture

The SideShiftVault contract handles the core bridging logic, while the XAI token likely serves as a governance or fee token within the ecosystem. Both contracts are deployed by the same deployer, indicating a unified infrastructure.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $12,328,298.64
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SideShiftVault | core_logic | ethereum | n/a | [`0x380870...66bd62`](./contracts/ethereum-1/0x3808708e761b988d23ae011ed0e12674fb66bd62/) | ⚠️ Unaudited |
| XAI | unknown | ethereum | n/a | [`0x35e78b...dbe232`](./contracts/ethereum-1/0x35e78b3982e87ecfd5b3f3265b601c046cdbe232/) | ⚠️ Unaudited |

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
