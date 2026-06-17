# Agentic Audit Brief: Scroll Bridge

⚠️ Lifecycle status: DECLINING - TVL dropped 51.1% over 90 days

## Project Overview

- Project: Scroll Bridge (`scroll-bridge`)
- Website: [https://portal.scroll.io/bridge](https://portal.scroll.io/bridge)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:36.918Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $34,074,299.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Scroll Bridge is the canonical bridge for the Scroll zkEVM rollup, enabling users to deposit and withdraw assets between Ethereum L1 and Scroll L2. It supports ETH, ERC-20, ERC-721, ERC-1155, and specialized tokens like USDC and Lido stETH through a set of gateway contracts.

### Architecture

All gateway contracts rely on L1ScrollMessenger for cross-chain message passing and share infrastructure like L1GatewayRouter for routing, L1MessageQueue for message ordering, and ScrollChain for finalizing L2 state. PauseController and SystemConfig provide shared administrative and configuration capabilities across the bridge components.

## Contract Surface Quality

- Indexed contracts: 101; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 56 inactive, 42 singleton, 0 uninitialized.
- Deployment units: 1/22 live.
- Detected codebases: none
- Unverified dependencies: 5/5.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
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

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| L1LidoGateway | unknown | ethereum | unit-23541 | [`0x6625c6...a3f504`](./contracts/ethereum-1/0x6625c6332c9f91f2d27c304e729b86db87a3f504/) | ⚠️ Unaudited |
| L1USDCGateway | unknown | ethereum | n/a | [`0xea2e80...432ea3`](./contracts/ethereum-1/0xea2e804ff5291ca423dfeff486b9a91ae4432ea3/) | ⚠️ Unaudited |
| ZkEvmVerifierPostFeynman | periphery | ethereum | n/a | [`0xa8d470...21f485`](./contracts/ethereum-1/0xa8d4702aa5c09af5dd1323e1842a43789021f485/) | ⚠️ Unaudited |

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
| ethereum | [`0xea2e80...432ea3`](./contracts/ethereum-1/0xea2e804ff5291ca423dfeff486b9a91ae4432ea3/) | L1USDCGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8d470...21f485`](./contracts/ethereum-1/0xa8d4702aa5c09af5dd1323e1842a43789021f485/) | ZkEvmVerifierPostFeynman | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
