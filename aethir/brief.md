# Agentic Audit Brief: Aethir

## Project Overview

- Project: Aethir (`aethir`)
- Website: [https://aethir.com/](https://aethir.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:49.003Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $6,787,676.00
- On-chain TVL (included contracts): $257,030,903.70
- TVL by chain: Ethereum $257,030,903.70

## Project Description

Aethir is an on-demand distributed GPU compute and cloud infrastructure network. Its Ethereum contracts, including ATH token-related wrapper, staking or reward components, checker-node/reward infrastructure, and related Web3 mechanisms, support the tokenized and incentive layers of the broader GPU compute network rather than defining the entire project as only a token, wrapper, staking, or governance system.

### Architecture

The TransparentUpgradeableProxy serves as the upgradeable proxy for the AethirWrapper implementation, allowing the wrapper logic to be updated while preserving state. The AethirToken is the core asset that the wrapper likely interacts with.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 1 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $257,030,903.70
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AethirToken | token | ethereum | n/a | [`0xbe0ed4...c5226b`](./contracts/ethereum-1/0xbe0ed4138121ecfc5c0e56b40517da27e6c5226b/) | ⚠️ Unaudited |
| StAethir | unknown | ethereum | n/a | [`0xc96aa6...19e59c`](./contracts/ethereum-1/0xc96aa65f31e41b4ca6924b86d93e25686019e59c/) | ⚠️ Unaudited |
| VeAethir | unknown | ethereum | n/a | [`0x1b49f5...1b7490`](./contracts/ethereum-1/0x1b49f587feca530a7bf7cf2bd3fbda780e1b7490/) | ⚠️ Unaudited |
| VestingWallet | operational_periphery | ethereum | n/a | [`0xf9d9f4...6336b6`](./contracts/ethereum-1/0xf9d9f4ae37d09d50a279058c008a4fa98b6336b6/) | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | ethereum | n/a | [`0x6f5c81...0c6b31`](./contracts/ethereum-1/0x6f5c81fe067ae25afd52218f140a73d51f0c6b31/) | ⚠️ Unaudited |

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
| ethereum | [`0xbe0ed4...c5226b`](./contracts/ethereum-1/0xbe0ed4138121ecfc5c0e56b40517da27e6c5226b/) | AethirToken | token | $257,030,903.70 | Verified native implementation with $257,030,903.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc96aa6...19e59c`](./contracts/ethereum-1/0xc96aa65f31e41b4ca6924b86d93e25686019e59c/) | StAethir | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b49f5...1b7490`](./contracts/ethereum-1/0x1b49f587feca530a7bf7cf2bd3fbda780e1b7490/) | VeAethir | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf9d9f4...6336b6`](./contracts/ethereum-1/0xf9d9f4ae37d09d50a279058c008a4fa98b6336b6/) | VestingWallet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f5c81...0c6b31`](./contracts/ethereum-1/0x6f5c81fe067ae25afd52218f140a73d51f0c6b31/) | Voting Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
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
