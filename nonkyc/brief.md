# Agentic Audit Brief: NonKYC

## Project Overview

- Project: NonKYC (`nonkyc`)
- Website: [https://nonkyc.io](https://nonkyc.io)
- Lifecycle: active (Tier 0, 72.7% below peak)
- Generated: 2026-05-29T11:25:27.402Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $5,725,456.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NonKYC is a centralized exchange (CEX) that allows users to trade digital assets without requiring identity verification. It operates across multiple chains including Ethereum, Optimism, Base, and Arbitrum One.

### Architecture

Only one product family is identified, with four unnamed contracts at the same address, likely representing a single exchange contract or a set of related functions. No shared infrastructure or inter-family relationships are evident.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 4
- Raw deployments: 4
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

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x5d738f...de76e7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x5d738f...de76e7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5d738f...de76e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5d738f...de76e7` | ❓ Unverified |

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
| native | 4 |
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

- [7680] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [7681] 0002-metadata-manifest-and-pull-command.md
- [7682] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
