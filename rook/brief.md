# Agentic Audit Brief: Rook

⚠️ Lifecycle status: DEAD - TVL changed 13.0% over 90 days

## Project Overview

- Project: Rook (`rook`)
- Lifecycle: dead (Tier 0, 99.8% below peak)
- Generated: 2026-06-17T07:00:45.541Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $1,449,666.24
- On-chain TVL (included contracts): $68,165.57
- TVL by chain: Ethereum $68,165.57

## Project Description

Rook, formerly KeeperDAO, is an open settlement protocol designed to coordinate MEV-aware order flow and liquidity between traders, keepers, and protocols. Rook should not be described as the issuer or bridge for renBTC, renBCH, or renZEC; any Ren assets should be treated only as external integrations unless Rook ownership or control is independently proven.

### Architecture

The Rook family shares a common token logic implementation (RenERC20LogicV1) for its bridged assets, and the Unitroller contract likely serves as a comptroller for the liquidity pools, managing risk and incentives. The HidingVaultNFTProxy interacts with the liquidity pools to manage user positions.

## Contract Surface Quality

- Indexed contracts: 172; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 137 inactive, 30 singleton, 0 uninitialized.
- Deployment units: 0/11 live.
- Detected codebases: none
- Unverified dependencies: 12/62.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $68,165.57
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $68,165.57 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RookToken | token | ethereum | n/a | [`0xfa5047...313d4a`](./contracts/ethereum-1/0xfa5047c9c78b8877af97bdcb85db743fd7313d4a/) | ⚠️ Unaudited |
| DEX | unknown | ethereum | n/a | [`0xf65d91...768594`](./contracts/ethereum-1/0xf65d91333b1d4d3887016b17741ad602d7768594/) | ⚠️ Unaudited |
| LiquidityPoolV2 | core_logic | ethereum | n/a | [`0x35ffd6...5e40e5`](./contracts/ethereum-1/0x35ffd6e268610e764ff6944d07760d0efe5e40e5/) | ⚠️ Unaudited |
| LiquidityPoolV4 | core_logic | ethereum | n/a | [`0x4f868c...6275e2`](./contracts/ethereum-1/0x4f868c1aa37fcf307ab38d215382e88fca6275e2/) | ⚠️ Unaudited |
| zBTC | unknown | ethereum | n/a | [`0x88c64a...78bb7d`](./contracts/ethereum-1/0x88c64a7d2ecc882d558dd16abc1537515a78bb7d/) | ⚠️ Unaudited |

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
| ethereum | [`0xfa5047...313d4a`](./contracts/ethereum-1/0xfa5047c9c78b8877af97bdcb85db743fd7313d4a/) | RookToken | token | $68,165.57 | Verified native implementation with $68,165.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf65d91...768594`](./contracts/ethereum-1/0xf65d91333b1d4d3887016b17741ad602d7768594/) | DEX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35ffd6...5e40e5`](./contracts/ethereum-1/0x35ffd6e268610e764ff6944d07760d0efe5e40e5/) | LiquidityPoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f868c...6275e2`](./contracts/ethereum-1/0x4f868c1aa37fcf307ab38d215382e88fca6275e2/) | LiquidityPoolV4 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
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
