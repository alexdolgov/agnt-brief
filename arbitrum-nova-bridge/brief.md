# Agentic Audit Brief: Arbitrum Nova Bridge

## Project Overview

- Project: Arbitrum Nova Bridge (`arbitrum-nova-bridge`)
- Website: [https://portal.arbitrum.io/bridge?l2ChainId=42170](https://portal.arbitrum.io/bridge?l2ChainId=42170)
- Lifecycle: active (Tier 0, 91.4% below peak)
- Generated: 2026-06-17T07:00:33.193Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 11 unique implementations (12 raw deployments)
- DeFi Llama TVL: $14,738,179.71
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

The Arbitrum Nova Bridge enables asset transfers between Ethereum and Arbitrum Nova, a low-cost L2 chain, using canonical bridge and gateway contracts. The contract surface should distinguish Ethereum-side bridge contracts from Arbitrum Nova chain_id 42170 bridge-side contracts; Arbitrum One chain_id 42161 token contracts should not be treated as Nova bridge-side contracts unless separately verified.

### Architecture

The L1GatewayRouter directs token transfers to the appropriate gateway (L1ERC20Gateway or L1CustomGateway), which lock tokens in the L1Escrow and trigger minting on L2 via the Bridge contract. L1WethGateway handles ETH wrapping/unwrapping, while L2ArbitrumToken represents the bridged asset on Arbitrum Nova.

## Contract Surface Quality

- Indexed contracts: 188; live-surface contracts included: 12 (12 live, 0 unknown).
- Excluded by liveness: 164 inactive, 12 singleton, 0 uninitialized.
- Deployment units: 5/12 live.
- Detected codebases: none
- Unverified dependencies: 8/76.

## Audit Coverage Summary

- Verified implementations audited: 0/11 (0.0%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 12
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bridge | operational_periphery | ethereum | unit-18885 | [`0xc1ebd0...e276bd`](./contracts/ethereum-1/0xc1ebd02f738644983b6c4b2d440b8e77dde276bd/) | ⚠️ Unaudited |
| BridgeCreator | operational_periphery | ethereum | n/a | [`0xe38f02...bfa04a`](./contracts/ethereum-1/0xe38f0215b96ef5bd6450d5d0a3464f0432bfa04a/) | ⚠️ Unaudited |
| Inbox | unknown | ethereum | unit-18886 | [`0xc4448b...153949`](./contracts/ethereum-1/0xc4448b71118c9071bcb9734a0eac55d18a153949/) | ⚠️ Unaudited |
| L1DAITokenBridge | operational_periphery | ethereum | n/a | [`0x10e659...a55f2f`](./contracts/ethereum-1/0x10e6593cdda8c58a1d0f14c5164b376352a55f2f/) | ⚠️ Unaudited |
| L1Escrow | operational_periphery | ethereum | n/a | [`0xa10c7c...539400`](./contracts/ethereum-1/0xa10c7ce4b876998858b1a9e12b10092229539400/) | ⚠️ Unaudited |
| L1Token | token | ethereum | n/a | [`0xe3dbc4...6688ab`](./contracts/ethereum-1/0xe3dbc4f88eaa632ddf9708732e2832eeaa6688ab/) | ⚠️ Unaudited |
| OldOutbox | unknown | ethereum | unit-18882 | [`0x667e23...63337a`](./contracts/ethereum-1/0x667e23abd27e623c11d4cc00ca3ec4d0bd63337a/) | ⚠️ Unaudited |
| Outbox | unknown | ethereum | unit-18888 | [`0xd4b80c...95cc58`](./contracts/ethereum-1/0xd4b80c3d7240325d18e645b49e6535a3bf95cc58/) | ⚠️ Unaudited |
| RollupCreator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x436980...d0ab44`](./contracts/ethereum-1/0x43698080f40db54dee6871540037b8ab8fd0ab44/); ethereum `0x8c8843...a2f3e1` | ⚠️ Unaudited |
| SequencerInbox | unknown | ethereum | unit-18880 | [`0x211e1c...f6c21b`](./contracts/ethereum-1/0x211e1c4c7f1bf5351ac850ed10fd68cffcf6c21b/) | ⚠️ Unaudited |
| ValidatorWalletCreator | unknown | ethereum | n/a | [`0x225ea7...5463ca`](./contracts/ethereum-1/0x225ea72daf733b0335bff86f7b077385395463ca/) | ⚠️ Unaudited |

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
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
