# Agentic Audit Brief: TxFlow

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: TxFlow (`txflow`)
- Website: [https://txflow.com/](https://txflow.com/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-29T16:45:32.936Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: arbitrum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $3,758,764.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

TxFlow is a multi-chain DeFi protocol offering a cross-chain bridge for asset transfers and a perpetuals trading platform for leveraged derivatives.

### Architecture

TxFlow Bridge and TxFlow Perps share cross-chain infrastructure, with tokens like L2TBTC and MantaMintableERC20 bridging assets into perpetual pools. Governance and staking contracts (e.g., FarmV2Controller, ArcProxy) are used across the perps ecosystem to manage rewards and protocol parameters.

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
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Bridge2 | operational_periphery | arbitrum | [`0xcde3f9...c24565`](./contracts/arbitrum-42161/0xcde3f99bcb4c91e19124e41730489eaefec24565/) | ⚠️ Unaudited |

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
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [8011] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [8012] 0002-metadata-manifest-and-pull-command.md
- [8013] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
