# Agentic Audit Brief: ProBit Global

## Project Overview

- Project: ProBit Global (`probit-global`)
- Website: [https://www.probit.com](https://www.probit.com)
- Lifecycle: active (Tier 0, 51.6% below peak)
- Generated: 2026-05-29T12:52:05.980Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: fantom
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $12,830,307.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

ProBit Global is a centralized exchange (CEX) that provides trading services for digital assets. The contracts listed are likely related to token custody, exchange operations, or liquidity management on the Fantom chain.

### Architecture

All contracts belong to a single product family with no explicit internal relationships or shared infrastructure identified from the available data.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 3
- Raw deployments: 3
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

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | fantom | `0x06ffd8...f9c35c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x813e71...3ca64f` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xc78600...054f86` | ❓ Unverified |

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
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [6942] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [6943] 0002-metadata-manifest-and-pull-command.md
- [6944] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
