# Agentic Audit Brief: SuiBridge

⚠️ Lifecycle status: DECLINING - TVL dropped 44.0% over 90 days

## Project Overview

- Project: SuiBridge (`suibridge`)
- Website: [https://bridge.sui.io](https://bridge.sui.io)
- Lifecycle: declining (Tier 0, 93.1% below peak)
- Generated: 2026-06-12T10:43:07.286Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-b7d4
- Chains: ethereum
- Contract surface: 5 unique implementations (9 raw deployments)
- DeFi Llama TVL: $34,795,590.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

SuiBridge is the canonical/native bridge enabling asset transfers and cross-chain messaging between Ethereum and the Sui blockchain. On Ethereum, the live system includes several ERC1967 proxy deployments for components such as SuiBridge, BridgeCommittee, BridgeConfig, and BridgeLimiter, each pointing to separate implementation contracts, while BridgeVault and the implementation contracts themselves are non-proxy deployments. The bridge uses committee-based validation, configuration and rate-limiting controls, and an Ethereum vault that locks value for bridged assets.

### Architecture

The SuiBridge contract coordinates with BridgeCommittee for validation, BridgeLimiter for rate limiting, and BridgeConfig for parameters, while the BridgeVault holds locked assets. All contracts are deployed by the same deployer and share upgradeable proxy patterns.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 9
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

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BridgeCommittee | operational_periphery | ethereum | 2 deployments: ethereum [`0xa470ca...23b63b`](./contracts/ethereum-1/0xa470ca92126bd6b6f6e98f3010c7e384f223b63b/); ethereum `0xee2d52...5b416f` | ⚠️ Unaudited |
| BridgeConfig | operational_periphery | ethereum | 2 deployments: ethereum [`0x72d34f...6a1540`](./contracts/ethereum-1/0x72d34fe82c71bf8120647518e5128e53106a1540/); ethereum `0xb083c4...fec50c` | ⚠️ Unaudited |
| BridgeLimiter | operational_periphery | ethereum | 2 deployments: ethereum [`0x12183b...736767`](./contracts/ethereum-1/0x12183b0796bbc4678999100e8c6c5715d5736767/); ethereum `0xd754e5...887340` | ⚠️ Unaudited |
| BridgeVault | operational_periphery | ethereum | [`0x312e67...f80b53`](./contracts/ethereum-1/0x312e67b47a2a29ae200184949093d92369f80b53/) | ⚠️ Unaudited |
| SuiBridge | operational_periphery | ethereum | 2 deployments: ethereum [`0xa60f29...bb036c`](./contracts/ethereum-1/0xa60f29201aeae592d9ab95747ae1cf425dbb036c/); ethereum `0xda3bd1...8a92fd` | ⚠️ Unaudited |

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
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
