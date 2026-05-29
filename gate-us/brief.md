# Agentic Audit Brief: Gate US

## Project Overview

- Project: Gate US (`gate-us`)
- Website: [https://www.gate.com/en-us](https://www.gate.com/en-us)
- Lifecycle: active (Tier 0, 13.5% below peak)
- Generated: 2026-05-29T07:43:28.085Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: chain-200, cronos, klaytn, manta, metis, scroll, sei
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $56,450,216.06
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Gate US is a centralized exchange (CEX) that provides trading and custody services for digital assets across multiple blockchain networks.

### Architecture

All contracts belong to a single product family with no shared infrastructure or dependencies visible beyond the centralized exchange operations.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 9
- Raw deployments: 9
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

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | cronos | `0xfc89c0...0bdec3` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xfc89c0...0bdec3` | ❓ Unverified |
| UnnamedContract | unknown | chain-200 | `0x1699db...6affbd` | ❓ Unverified |
| UnnamedContract | unknown | chain-200 | `0x67c30f...086ccb` | ❓ Unverified |
| UnnamedContract | unknown | chain-200 | `0xe74ac0...a10230` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xfc89c0...0bdec3` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xfc89c0...0bdec3` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xfc89c0...0bdec3` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xfc89c0...0bdec3` | ❓ Unverified |

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
| native | 6 |
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

- [5662] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [5663] 0002-metadata-manifest-and-pull-command.md
- [5664] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
