# Agentic Audit Brief: HashKey Global

## Project Overview

- Project: HashKey Global (`hashkey-global`)
- Website: [https://www.hashkey.com](https://www.hashkey.com)
- Lifecycle: active (Tier 0, 85.6% below peak)
- Generated: 2026-05-29T08:25:09.319Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: scroll
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $15,094,354.09
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

HashKey Global is a centralized exchange (CEX) that provides trading and custody services for digital assets. The on-chain contracts on Scroll likely support deposit/withdrawal operations or token management for the exchange.

### Architecture

The two contracts likely form a deposit/withdrawal system where one handles user deposits and the other manages withdrawal requests or token custody, sharing the same operational context for the exchange.

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
| UnnamedContract | unknown | scroll | `0x08c974...6cab76` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xdd2613...479cdb` | ❓ Unverified |

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

- [6908] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [6909] 0002-metadata-manifest-and-pull-command.md
- [6910] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
