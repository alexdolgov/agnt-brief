# Agentic Audit Brief: CORE Bridge

## Project Overview

- Project: CORE Bridge (`core-bridge`)
- Website: [https://bridge.coredao.org/bridge](https://bridge.coredao.org/bridge)
- Lifecycle: active (Tier 0, 76.5% below peak)
- Generated: 2026-06-10T20:59:01.510Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: avalanche, base
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $4,024,033.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CORE Bridge is a cross-chain bridge for the Core DAO ecosystem, with observed bridge TVL across Ethereum, BNB Chain, Polygon, Arbitrum, Optimism, Avalanche, and Base. The listed Avalanche/Base contracts should be treated as a partial contract inventory only, and LayerZero contracts should be treated as third-party messaging dependencies rather than CORE-owned core bridge contracts unless independently verified.

### Architecture

The OriginalTokenBridge relies on the UltraLightNodeV2 for cross-chain message verification and delivery. Both contracts are deployed by the same deployer, indicating a shared infrastructure for the bridge functionality.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 6
- Raw deployments: 6
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

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| OriginalTokenBridge | operational_periphery | base | [`0x84fb20...507879`](./contracts/base-8453/0x84fb2086fed7b3c9b3a4bc559f60ffaa91507879/) | ⚠️ Unaudited |
| TreasuryV2 | operational_periphery | avalanche | [`0x3773e1...6ce34d`](./contracts/avalanche-43114/0x3773e1e9deb273fcdf9f80bc88bb387b1e6ce34d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | `0x1eb362...57832e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x29d096...04031a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2c5790...87ec29` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x48c28a...d9ad17` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x84fb20...507879`](./contracts/base-8453/0x84fb2086fed7b3c9b3a4bc559f60ffaa91507879/) | OriginalTokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3773e1...6ce34d`](./contracts/avalanche-43114/0x3773e1e9deb273fcdf9f80bc88bb387b1e6ce34d/) | TreasuryV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
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
