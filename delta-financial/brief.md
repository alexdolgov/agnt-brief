# Agentic Audit Brief: Delta Financial

## Project Overview

- Project: Delta Financial (`delta-financial`)
- Website: [https://www.delta.finance](https://www.delta.finance)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:36.801Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $7,900,877.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Delta Financial is a DeFi options protocol that enables users to farm yield, provide liquidity, and trade options through deep farming vaults and rebasing liquidity tokens. It uses a system of core logic contracts, tokens, and transfer handlers to manage user positions and rewards.

### Architecture

The protocol consists of a single product family where the deep farming vaults interact with rebasing liquidity tokens to manage user deposits and rewards. The DELTAToken and OVLTransferHandler provide token transfer and access control infrastructure shared across the vaults and tokens.

## Contract Surface Quality

- Indexed contracts: 110; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 74 inactive, 29 singleton, 0 uninitialized.
- Deployment units: 3/23 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 3/20.

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

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CORE | unknown | ethereum | n/a | [`0x62359e...fa23d7`](./contracts/ethereum-1/0x62359ed7505efc61ff1d56fef82158ccaffa23d7/) | ⚠️ Unaudited |
| coreDAI | unknown | ethereum | unit-23274 | [`0x00a661...f37642`](./contracts/ethereum-1/0x00a66189143279b6db9b77294688f47959f37642/) | ⚠️ Unaudited |
| CoreDAO | unknown | ethereum | n/a | [`0xf66cd2...32dd58`](./contracts/ethereum-1/0xf66cd2f8755a21d3c8683a10269f795c0532dd58/) | ⚠️ Unaudited |
| DELTA_Deep_Vault_Withdrawal | operational_periphery | ethereum | n/a | [`0x251bbe...60a943`](./contracts/ethereum-1/0x251bbe8c7abc2a1ca8d0b25fc1149abe6160a943/) | ⚠️ Unaudited |
| DELTA_Distributor | operational_periphery | ethereum | n/a | [`0xf249c5...667461`](./contracts/ethereum-1/0xf249c5b422758d91d8f05e1cc5fc85cf4b667461/) | ⚠️ Unaudited |
| FannyVault | core_logic | ethereum | unit-23291 | [`0xbb791b...9d7816`](./contracts/ethereum-1/0xbb791bc6106e4d949863e2ab76fc01ac0a9d7816/) | ⚠️ Unaudited |
| wCORE | unknown | ethereum | unit-23277 | [`0x17b8c1...23b669`](./contracts/ethereum-1/0x17b8c1a92b66b1cf3092c5d223cb3a129023b669/) | ⚠️ Unaudited |

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
| ethereum | [`0x62359e...fa23d7`](./contracts/ethereum-1/0x62359ed7505efc61ff1d56fef82158ccaffa23d7/) | CORE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf66cd2...32dd58`](./contracts/ethereum-1/0xf66cd2f8755a21d3c8683a10269f795c0532dd58/) | CoreDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x251bbe...60a943`](./contracts/ethereum-1/0x251bbe8c7abc2a1ca8d0b25fc1149abe6160a943/) | DELTA_Deep_Vault_Withdrawal | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf249c5...667461`](./contracts/ethereum-1/0xf249c5b422758d91d8f05e1cc5fc85cf4b667461/) | DELTA_Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
