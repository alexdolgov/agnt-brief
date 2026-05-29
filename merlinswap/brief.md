# Agentic Audit Brief: MerlinSwap

⚠️ Lifecycle status: UNKNOWN - TVL dropped 41.9% over 90 days

## Project Overview

- Project: MerlinSwap (`merlinswap`)
- Website: [https://merlinswap.org](https://merlinswap.org)
- Lifecycle: unknown (Tier 0, 94.8% below peak)
- Generated: 2026-05-29T10:38:12.280Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: merlin
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $8,429,329.40
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

MerlinSwap is a decentralized exchange (DEX) protocol on the Merlin chain, enabling users to swap tokens and provide liquidity through automated market-making pools.

### Architecture

The two contracts likely represent the core AMM pool and a factory or router, sharing infrastructure for liquidity management and trade execution.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 2
- Raw deployments: 2
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

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | merlin | `0x261507...4c0467` | ❓ Unverified |
| UnnamedContract | unknown | merlin | `0xbd40c7...430bba` | ❓ Unverified |

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
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [7608] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [7609] 0002-metadata-manifest-and-pull-command.md
- [7610] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
