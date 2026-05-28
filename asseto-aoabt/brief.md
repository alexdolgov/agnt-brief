# Agentic Audit Brief: Asseto AoABT

## Project Overview

- Project: Asseto AoABT (`asseto-aoabt`)
- Website: [https://asseto.finance/product](https://asseto.finance/product)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-28T15:37:05.446Z
- Pipeline run: v2-pipeline-2026-05-28-8b27fb-06de
- Chains: avalanche
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $22,280,390.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Asseto AoABT is a protocol for tokenizing real-world assets (RWA) on Avalanche, enabling on-chain representation and management of off-chain assets.

### Architecture

The protocol consists of a single product family with one proxy contract, indicating a monolithic architecture without shared infrastructure across multiple families.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
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

### ⚠️ Verified + Unaudited (0)

- None

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
| Proxy (impl: 0xee23c70af1a8d1a27dbb478d5c861e3da8b704bd) | proxy | avalanche | `0xb2ea3e...5834e2` | ❓ Unverified |

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
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [6088] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [6089] 0002-metadata-manifest-and-pull-command.md
- [6090] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
