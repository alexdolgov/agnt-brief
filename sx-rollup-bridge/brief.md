# Agentic Audit Brief: SX Rollup Bridge

⚠️ Lifecycle status: DECLINING - TVL changed 13.2% over 90 days

## Project Overview

- Project: SX Rollup Bridge (`sx-rollup-bridge`)
- Website: [https://sx.bet/wallet/bridge](https://sx.bet/wallet/bridge)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:46.234Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 17 unique implementations (17 raw deployments)
- DeFi Llama TVL: $7,267,642.62
- On-chain TVL (included contracts): $6,117,892.20
- TVL by chain: Ethereum $6,117,892.20

## Project Description

The SX Rollup Bridge is the canonical bridge between Ethereum and the SX Network rollup, enabling asset transfers through the bridge and gateway contracts required for cross-chain deposit and withdrawal flows. SportX/SX.bet application contracts and broader SX token or governance infrastructure should not be treated as bridge operational support unless explicitly tied to bridge operation.

### Architecture

The L1OrbitERC20Gateway manages token deposits and withdrawals, interacting with the ERC20Bridge to relay messages to the rollup. The SX token contract serves as the native asset, while SportX and SXNetwork provide peripheral operational support.

## Contract Surface Quality

- Indexed contracts: 155; live-surface contracts included: 17 (13 live, 4 unknown).
- Excluded by liveness: 136 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 9/13 live.
- Detected codebases: none
- Dependencies extracted: 4; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/16 (0.0%)
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 17
- Raw deployments: 17
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $6,117,892.20
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $6,117,892.20 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| L1OrbitERC20Gateway | token | ethereum | unit-27655 | [`0xb4968c...abaa91`](./contracts/ethereum-1/0xb4968c66becc8fb4f73b50354301c1adb2abaa91/) | ⚠️ Unaudited |
| ChallengeManager | unknown | ethereum | unit-27650 | [`0x73cfa0...34d882`](./contracts/ethereum-1/0x73cfa0f6ae141212115657ad91ad918e5d34d882/) | ⚠️ Unaudited |
| ERC20Bridge | operational_periphery | ethereum | unit-27652 | [`0xa104c0...c35f86`](./contracts/ethereum-1/0xa104c0426e95a5538e89131dbb4163d230c35f86/) | ⚠️ Unaudited |
| ERC20Inbox | unknown | ethereum | unit-27658 | [`0xea83e8...328631`](./contracts/ethereum-1/0xea83e8907c89bc0d9517632f0ba081972e328631/) | ⚠️ Unaudited |
| ERC20Outbox | unknown | ethereum | unit-27654 | [`0xb360b2...6f707d`](./contracts/ethereum-1/0xb360b2f57c645e847148d7c479b7468abf6f707d/) | ⚠️ Unaudited |
| ERC20RollupEventInbox | unknown | ethereum | unit-27651 | [`0x9f1045...7a81e3`](./contracts/ethereum-1/0x9f1045201f8b9d0b12f6d1e40e8b8e6c047a81e3/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-27657 | [`0xddb901...7c3dfa`](./contracts/ethereum-1/0xddb901e4e9a2e659aa1d6476d5d7a2833e7c3dfa/) | ⚠️ Unaudited |
| L1OrbitGatewayRouter | adapter | ethereum | unit-27649 | [`0x5f0044...06438a`](./contracts/ethereum-1/0x5f00446d785421d65b50c192d7129e3c3906438a/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | [`0xe8606a...f8f497`](./contracts/ethereum-1/0xe8606a55d105ef857f187c32ae0e9a168af8f497/) | ⚠️ Unaudited |
| RollupAdminLogic | unknown | ethereum | unit-27647 | [`0x36c6c6...e5e11f`](./contracts/ethereum-1/0x36c6c69a6186d4475fc5c21181cd980bd6e5e11f/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-27653 | [`0xa4c325...c8d24c`](./contracts/ethereum-1/0xa4c325e25215c1fb2405eb28d81d2dfdbfc8d24c/) | ⚠️ Unaudited |
| SequencerInbox | unknown | ethereum | unit-27656 | [`0xd80a80...18fc0c`](./contracts/ethereum-1/0xd80a805c86c14c879420ec6acb366d04d318fc0c/) | ⚠️ Unaudited |
| SportX | unknown | ethereum | n/a | [`0x99fe3b...f41452`](./contracts/ethereum-1/0x99fe3b1391503a1bc1788051347a1324bff41452/) | ⚠️ Unaudited |
| SXNetwork | unknown | ethereum | n/a | [`0xbe9f61...d96624`](./contracts/ethereum-1/0xbe9f61555f50dd6167f2772e9cf7519790d96624/) | ⚠️ Unaudited |
| SXNTokenClaim | token | ethereum | n/a | [`0xe8f92b...b57eb3`](./contracts/ethereum-1/0xe8f92b2aa53639319c67498ef955345fa1b57eb3/) | ⚠️ Unaudited |
| UpgradeExecutor | unknown | ethereum | unit-27648 | [`0x44ec40...ad2d3a`](./contracts/ethereum-1/0x44ec40d86b4643bd5110ed07be188f8473ad2d3a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x84f7bf...7a48e9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x36c6c6...e5e11f`](./contracts/ethereum-1/0x36c6c69a6186d4475fc5c21181cd980bd6e5e11f/) | RollupAdminLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe8f92b...b57eb3`](./contracts/ethereum-1/0xe8f92b2aa53639319c67498ef955345fa1b57eb3/) | SXNTokenClaim | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 2 |
| standard_library | 12 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
