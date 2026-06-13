# Agentic Audit Brief: reddex

⚠️ Lifecycle status: DECLINING - TVL dropped 25.2% over 90 days

## Project Overview

- Project: reddex (`reddex`)
- Website: [https://reddex.io](https://reddex.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-13T04:54:18.715Z
- Pipeline run: v2-pipeline-2026-06-13-546062-8c0a
- Chains: bsc, ethereum
- Contract surface: 5 unique implementations (7 raw deployments)
- DeFi Llama TVL: $4,764,003.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Reddex is a Redbelly-network liquidity hub and decentralized exchange focused on swap, bridge, and staking/earn functionality, with residual multichain presence including Ethereum bridge-related deployments and reported BNB/Binance activity. It should not be characterized as an Ethereum-only AMM.

### Architecture

The protocol consists of a single product family centered around the LiquidXv2Factory registry, which manages all liquidity pools and serves as the entry point for pool creation and interaction.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 5
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

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LiquidXPreSale | unknown | ethereum | [`0xf82398...2f4652`](./contracts/ethereum-1/0xf82398d047eef02aad8bb7abcb0f5883212f4652/) | ⚠️ Unaudited |
| LiquidXv2Factory | registry | bsc | 2 deployments: ethereum `0xbc7d21...96bf59`; bsc [`0x6d6422...e49d8e`](./contracts/bsc-56/0x6d642253b6fd96d9d155279b57b8039675e49d8e/) | ⚠️ Unaudited |
| LiquidXv2Router01 | adapter | ethereum | 2 deployments: ethereum [`0x3b2223...4e5727`](./contracts/ethereum-1/0x3b22235010d3636c910f870b90b4f715694e5727/); ethereum `0xeba226...d74923` | ⚠️ Unaudited |
| LiquidXv2Zap | adapter | ethereum | [`0xb90e49...e2a13e`](./contracts/ethereum-1/0xb90e49b7ad733a61eff596e8dffd19aa52e2a13e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0xe4b983...71bbe2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xf82398...2f4652`](./contracts/ethereum-1/0xf82398d047eef02aad8bb7abcb0f5883212f4652/) | LiquidXPreSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6d6422...e49d8e`](./contracts/bsc-56/0x6d642253b6fd96d9d155279b57b8039675e49d8e/) | LiquidXv2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b2223...4e5727`](./contracts/ethereum-1/0x3b22235010d3636c910f870b90b4f715694e5727/) | LiquidXv2Router01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb90e49...e2a13e`](./contracts/ethereum-1/0xb90e49b7ad733a61eff596e8dffd19aa52e2a13e/) | LiquidXv2Zap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
