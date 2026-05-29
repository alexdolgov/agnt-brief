# Agentic Audit Brief: Latch

⚠️ Lifecycle status: DECLINING - TVL dropped 89.2% over 90 days

## Project Overview

- Project: Latch (`latch`)
- Website: [https://savings.latch.io/](https://savings.latch.io/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-29T20:26:02.806Z
- Pipeline run: v2-pipeline-2026-05-29-691c43-e9c3
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $1,606,674.69
- On-chain TVL (included contracts): $189.85
- TVL by chain: Ethereum $189.85

## Project Description

Latch is a yield protocol on Ethereum that allows users to deposit assets into a pool to earn yield. The single DepositPool contract manages user deposits and yield generation.

### Architecture

The protocol consists of a single product family with one core contract, so there are no cross-family relationships or shared infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $189.85
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $189.85 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DepositPool | core_logic | ethereum | [`0x7cc08f...b8f90c`](./contracts/ethereum-1/0x7cc08f23a6e8222c86a62fce3d4d252dd1b8f90c/) | ⚠️ Unaudited |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x7cc08f...b8f90c`](./contracts/ethereum-1/0x7cc08f23a6e8222c86a62fce3d4d252dd1b8f90c/) | DepositPool | core_logic | $189.85 | Verified native implementation with $189.85 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

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

- [9371] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [9372] 0002-metadata-manifest-and-pull-command.md
- [9373] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
