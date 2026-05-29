# Agentic Audit Brief: Wrapped

## Project Overview

- Project: Wrapped (`wrapped`)
- Website: [https://wrapped.com](https://wrapped.com)
- Lifecycle: active (Tier 0, 61.9% below peak)
- Generated: 2026-05-29T17:36:59.261Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: celo
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $23,875,180.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Wrapped is a cross-chain bridge protocol that enables users to lock assets on one chain and mint wrapped representations on another, facilitating asset transfers between Ethereum and Celo. It also includes staking and liquidity pool mechanisms to incentivize participation and provide yield.

### Architecture

The Wrapped family shares a common bridging architecture where bVault contracts lock native assets and mint wrapped tokens like ArcxTokenV2 and ERC20Peg. Liquidity pools (BAC pools) and staking contracts (BlackPoolToken, StakedBPT) are supported by MasterChef for reward distribution, while external integrations like UniswapV2Pair and AutoFarmV2_CrossChain provide additional liquidity and yield aggregation.

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
| AutoFarmV2_CrossChain | unknown | celo | [`0xdd11b6...12303f`](./contracts/celo-42220/0xdd11b66b90402f294a017c4688509c364312303f/) | ⚠️ Unaudited |

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
| upstream | 1 |
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

- [5995] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [5996] 0002-metadata-manifest-and-pull-command.md
- [5997] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
