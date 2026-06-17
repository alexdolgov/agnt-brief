# Agentic Audit Brief: Sorare Bridge

⚠️ Lifecycle status: DECLINING - TVL dropped 21.8% over 90 days

## Project Overview

- Project: Sorare Bridge (`sorare-bridge`)
- Website: [https://sorare.com/](https://sorare.com/)
- Lifecycle: declining (Tier 0, 84.7% below peak)
- Generated: 2026-06-17T07:00:52.328Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 8 unique implementations (11 raw deployments)
- DeFi Llama TVL: $3,019,998.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Sorare Bridge is a bridge between Ethereum and Sorare, supporting asset transfers related to Sorare's fantasy sports and digital player card product. It should not be described as a general Starknet bridge, Starknet exchange, or perpetual trading protocol unless supported by Sorare documentation.

### Architecture

The bridge contracts (StarknetTokenBridge, StarknetEthBridge, StarknetERC20Bridge) handle asset transfers to Starknet, while StarkExchange and StarkPerpetual provide trading functionality on Starknet. CallProxy contracts serve as infrastructure for cross-chain calls, and StarkExchangeMigrationV2 supports upgrades.

## Contract Surface Quality

- Indexed contracts: 201; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 180 inactive, 10 singleton, 0 uninitialized.
- Deployment units: 6/10 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/8 (0.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 11
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

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CallProxy | unknown | ethereum | unit-31749 | [`0x473124...5bdb60`](./contracts/ethereum-1/0x47312450b3ac8b5b8e247a6bb6d523e7605bdb60/) | ⚠️ Unaudited |
| Committee | unknown | ethereum | n/a | 3 deployments: ethereum [`0x16ba0f...0aa295`](./contracts/ethereum-1/0x16ba0f221664a5189cf2c1a7af0d3abfc70aa295/); ethereum `0x1e6014...6169cb`; ethereum `0x879cd5...bbbe32` | ⚠️ Unaudited |
| FinalizableCommittee | unknown | ethereum | n/a | [`0x4f8b2d...bc4446`](./contracts/ethereum-1/0x4f8b2dd49d958b6ac3e5f4705bf1a9ada5bc4446/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-31754 | [`0xcc9289...f9fd2b`](./contracts/ethereum-1/0xcc928977e4a75d25099e7da7b6fd79dac2f9fd2b/) | ⚠️ Unaudited |
| StarkExchangeMigrationV2 | operational_periphery | ethereum | unit-31750 | [`0x5fdcca...8e27e9`](./contracts/ethereum-1/0x5fdcca53617f4d2b9134b29090c87d01058e27e9/) | ⚠️ Unaudited |
| StarknetERC20Bridge | operational_periphery | ethereum | unit-31752 (2 proxies) | 2 deployments: ethereum [`0xbb3400...747605`](./contracts/ethereum-1/0xbb3400f107804dfb482565ff1ec8d8ae66747605/); ethereum `0xf6080d...f92816` | ⚠️ Unaudited |
| StarknetEthBridge | operational_periphery | ethereum | unit-31751 | [`0xae0ee0...48d419`](./contracts/ethereum-1/0xae0ee0a63a2ce6baeeffe56e7714fb4efe48d419/) | ⚠️ Unaudited |
| StarknetTokenBridge | operational_periphery | ethereum | unit-31747 | [`0x283751...d9b5b4`](./contracts/ethereum-1/0x283751a21eafbfcd52297820d27c1f1963d9b5b4/) | ⚠️ Unaudited |

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
| ethereum | [`0x5fdcca...8e27e9`](./contracts/ethereum-1/0x5fdcca53617f4d2b9134b29090c87d01058e27e9/) | StarkExchangeMigrationV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae0ee0...48d419`](./contracts/ethereum-1/0xae0ee0a63a2ce6baeeffe56e7714fb4efe48d419/) | StarknetEthBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 3 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
