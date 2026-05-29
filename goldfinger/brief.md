# Agentic Audit Brief: GoldFinger

## Project Overview

- Project: GoldFinger (`goldfinger`)
- Website: [https://goldfinger.finance/en](https://goldfinger.finance/en)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-29T18:36:05.647Z
- Pipeline run: v2-pipeline-2026-05-29-691c43-e9c3
- Chains: bsc
- Contract surface: 5 unique implementations (9 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

GoldFinger is a Real World Asset (RWA) protocol on BSC that tokenizes physical gold, allowing users to hold and transfer gold-backed tokens.

### Architecture

The protocol consists of a single product family centered around the ARTToken contract, with no additional infrastructure or inter-family relationships.

## Audit Coverage Summary

- Verified implementations audited: 4/4 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 5
- Raw deployments: 9
- Audits discovered: 6
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 5 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 100.0% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ARTToken | token | bsc | 2 deployments: bsc [`0x0b3f46...c67424`](./contracts/bsc-56/0x0b3f46fcc5f3ac3ac1b28bed8336060679c67424/); bsc `0xb8a1ed...feaae1` | ✅ Audited |
| GFDistributor | operational_periphery | bsc | 4 deployments: bsc [`0x92558b...154079`](./contracts/bsc-56/0x92558bda86a95cdbff7bdebfe5c2ba7723154079/); bsc `0xcee77c...d8572b`; bsc `0xeae164...18e32c`; bsc `0xf9e11e...efaa62` | ✅ Audited |
| GFPriceOracle | operational_periphery | bsc | [`0x2c1bd6...03b4f4`](./contracts/bsc-56/0x2c1bd629a23322bd54d403c9139743795903b4f4/) | ✅ Audited |
| GFRegistry | registry | bsc | [`0xd1ab3b...f17a9a`](./contracts/bsc-56/0xd1ab3ba1882e7f2a1de63849048ed20a97f17a9a/) | ✅ Audited |

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
| UnnamedContract | unknown | bsc | `0x2232a5...06859a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DeployContracts.md](https://github.com/GoldFingerRWA/token-contracts/blob/main/docs/DeployContracts.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 8 | medium |
| [SPECIFICATIONS.md](https://github.com/GoldFingerRWA/token-contracts/blob/main/docs/SPECIFICATIONS.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 8 | low |
| [goldfinger-zerodrift-report.pdf](https://github.com/GoldFingerRWA/token-contracts/blob/main/docs/goldfinger-zerodrift-report.pdf) | unknown | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: low=1, medium=1
- Match method counts: extraction_exact=16

Zero-match audit list:

- [9641] goldfinger-zerodrift-report.pdf
- [9642] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [9643] 0002-metadata-manifest-and-pull-command.md
- [9644] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
