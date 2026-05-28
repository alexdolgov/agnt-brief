# Agentic Audit Brief: Flex

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Flex (`flex`)
- Website: [https://flexmeow.com/](https://flexmeow.com/)
- Lifecycle: unknown (Tier 0, 11.3% below peak)
- Generated: 2026-05-28T16:54:26.245Z
- Pipeline run: v2-pipeline-2026-05-28-8b27fb-06de
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $611,657.73
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Flex is a lending protocol on Ethereum that allows users to deposit and borrow assets through a registry-based system.

### Architecture

The protocol consists of a single product family with one core registry contract that orchestrates all lending operations.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 6
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Staleness: 2 fresh, 0 aging, 0 stale, 4 unknown
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
| Registry | registry | ethereum | [`0x911744...7c77c8`](./contracts/ethereum-1/0x9117440a7d03238905d1c8908157bd7a547c77c8/) | ⚠️ Unaudited |

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
| [FLEX-Audit-28-February-2026.md](https://github.com/flexmeow/flex-contracts/blob/master/audits/FLEX-Audit-28-February-2026.md) | unknown | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [Flex-May-07-2026-Dedaub.pdf](https://github.com/flexmeow/flex-contracts/blob/master/audits/Flex-May-07-2026-Dedaub.pdf) | Dedaub | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [flex-audit-27-april.md](https://github.com/flexmeow/flex-contracts/blob/master/audits/flex-audit-27-april.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x911744...7c77c8`](./contracts/ethereum-1/0x9117440a7d03238905d1c8908157bd7a547c77c8/) | Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [9630] FLEX-Audit-28-February-2026.md
- [9631] Flex-May-07-2026-Dedaub.pdf
- [9632] flex-audit-27-april.md
- [9633] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [9634] 0002-metadata-manifest-and-pull-command.md
- [9635] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
