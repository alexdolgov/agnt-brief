# Agentic Audit Brief: Boba Bridge

⚠️ Lifecycle status: DECLINING - TVL changed 5.1% over 90 days

## Project Overview

- Project: Boba Bridge (`boba-bridge`)
- Website: [https://gateway.boba.network](https://gateway.boba.network)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:52.412Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $2,793,404.86
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Boba Bridge is the canonical bridge for the Boba Network, enabling users to transfer assets between Ethereum and Boba. It provides standard token bridging, fast exits, and liquidity pool-based swaps for efficient cross-chain movement.

### Architecture

The bridge family relies on shared infrastructure contracts like SystemConfig and ProtocolVersions for network configuration, while SuperchainConfig provides cross-chain security. The L1CrossDomainMessenger and EthBridge contracts handle message passing and asset transfers, with L2OutputOracle enabling state verification for withdrawals.

## Contract Surface Quality

- Indexed contracts: 109; live-surface contracts included: 7 (6 live, 1 unknown).
- Excluded by liveness: 88 inactive, 14 singleton, 0 uninitialized.
- Deployment units: 6/22 live.
- Detected codebases: none
- Unverified dependencies: 160/203.

## Audit Coverage Summary

- Verified implementations audited: 0/7 (0.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 7
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

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DelayedWETH | token | ethereum | unit-19850 | [`0x7e021d...6638a6`](./contracts/ethereum-1/0x7e021d19c9949109919dcb522df6baec1d6638a6/) | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | unit-19858 | [`0xf45a5f...6af852`](./contracts/ethereum-1/0xf45a5f1e36fcea3cc830a98c6c3c5cea7d6af852/) | ⚠️ Unaudited |
| EthBridge | operational_periphery | ethereum | unit-19840 | [`0x1a36e2...e03e55`](./contracts/ethereum-1/0x1a36e24d61bc1ada68c21c2da1ad53eab8e03e55/) | ⚠️ Unaudited |
| EthBridge | operational_periphery | ethereum | unit-19848 | [`0x6f5378...da2f41`](./contracts/ethereum-1/0x6f537839714761388b6d7ed61bc09579d5da2f41/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-19845 | [`0x56121a...5b9bc4`](./contracts/ethereum-1/0x56121a8612474c3eb65d69a3b871f284705b9bc4/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | unit-19857 | [`0xdc1664...2f1c00`](./contracts/ethereum-1/0xdc1664458d2f0b6090bea60a8793a4e66c2f1c00/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | unit-19849 | [`0x7b02d1...21ee7e`](./contracts/ethereum-1/0x7b02d13904d8e6e0f0efaf756ab14cb0ff21ee7e/) | ⚠️ Unaudited |

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
| ethereum | [`0x1a36e2...e03e55`](./contracts/ethereum-1/0x1a36e24d61bc1ada68c21c2da1ad53eab8e03e55/) | EthBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f5378...da2f41`](./contracts/ethereum-1/0x6f537839714761388b6d7ed61bc09579d5da2f41/) | EthBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
