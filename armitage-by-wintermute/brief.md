# Agentic Audit Brief: Armitage by Wintermute

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Armitage by Wintermute (`armitage-by-wintermute`)
- Website: [https://armitage.wintermute.com](https://armitage.wintermute.com)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-28T15:37:04.299Z
- Pipeline run: v2-pipeline-2026-05-28-8b27fb-06de
- Chains: ethereum
- Contract surface: 1 unique implementations (2 raw deployments)
- DeFi Llama TVL: $51,051,101.46
- On-chain TVL (included contracts): $51,808,883.67
- TVL by chain: Ethereum $51,808,883.67

## Project Description

Armitage by Wintermute is a risk curation protocol that manages yield-bearing vaults, likely optimizing asset allocation and risk parameters for DeFi users.

### Architecture

The protocol consists of a single product family with two instances of the VaultV2 contract, likely representing separate vaults for different assets or strategies, sharing the same core logic.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 2
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $51,808,883.67
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $51,808,883.67 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| VaultV2 | core_logic | ethereum | 2 deployments: ethereum [`0x5dc53a...71ff2b`](./contracts/ethereum-1/0x5dc53a23adc9f2bed98de6f59f7f309a7c71ff2b/); ethereum `0xa2eaad...7d68cd` | ⚠️ Unaudited |

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
| ethereum | [`0x5dc53a...71ff2b`](./contracts/ethereum-1/0x5dc53a23adc9f2bed98de6f59f7f309a7c71ff2b/) | VaultV2 | core_logic | $51,808,883.67 | Verified native implementation with $51,808,883.67 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

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

- [5693] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [5694] 0002-metadata-manifest-and-pull-command.md
- [5695] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
