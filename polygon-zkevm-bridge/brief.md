# Agentic Audit Brief: Polygon zkEVM Bridge

## Project Overview

- Project: Polygon zkEVM Bridge (`polygon-zkevm-bridge`)
- Website: [https://portal.polygon.technology/bridge](https://portal.polygon.technology/bridge)
- Lifecycle: active (Tier 0, 82.6% below peak)
- Generated: 2026-05-29T12:33:04.984Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $77,973,709.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

The Polygon zkEVM Bridge is a canonical bridge that enables asset transfers between Ethereum and the Polygon zkEVM network. It uses a single proxy contract to manage cross-chain deposits and withdrawals.

### Architecture

The protocol consists of a single product family with one core proxy contract that delegates to an implementation contract, with no additional supporting contracts or shared infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AgglayerBridge | operational_periphery | ethereum | [`0x2a3dd3...ca2ede`](./contracts/ethereum-1/0x2a3dd3eb832af982ec71669e178424b10dca2ede/) | ⚠️ Unaudited |

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
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [5485] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [5486] 0002-metadata-manifest-and-pull-command.md
- [5487] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
