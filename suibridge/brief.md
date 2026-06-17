# Agentic Audit Brief: SuiBridge

⚠️ Lifecycle status: DECLINING - TVL dropped 44.0% over 90 days

## Project Overview

- Project: SuiBridge (`suibridge`)
- Website: [https://bridge.sui.io](https://bridge.sui.io)
- Lifecycle: declining (Tier 0, 93.1% below peak)
- Generated: 2026-06-17T07:00:52.332Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $34,795,590.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

SuiBridge is the canonical/native bridge enabling asset transfers and cross-chain messaging between Ethereum and the Sui blockchain. On Ethereum, the live system includes several ERC1967 proxy deployments for components such as SuiBridge, BridgeCommittee, BridgeConfig, and BridgeLimiter, each pointing to separate implementation contracts, while BridgeVault and the implementation contracts themselves are non-proxy deployments. The bridge uses committee-based validation, configuration and rate-limiting controls, and an Ethereum vault that locks value for bridged assets.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 8 singleton, 0 uninitialized.
- Deployment units: 0/4 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

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
| BridgeVault | operational_periphery | ethereum | n/a | [`0x312e67...f80b53`](./contracts/ethereum-1/0x312e67b47a2a29ae200184949093d92369f80b53/) | ⚠️ Unaudited |

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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
