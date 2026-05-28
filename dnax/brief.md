# Agentic Audit Brief: Dnax

## Project Overview

- Project: Dnax (`dnax`)
- Website: [https://dnax.us/](https://dnax.us/)
- Lifecycle: active (Tier 0, 39.5% below peak)
- Generated: 2026-05-28T16:33:43.508Z
- Pipeline run: v2-pipeline-2026-05-28-8b27fb-06de
- Chains: bsc
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $3,536,397.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dnax is a decentralized exchange (DEX) protocol on BSC that facilitates token swaps and liquidity provision. It uses a single upgradeable CarbonController contract to manage its core trading and liquidity logic.

### Architecture

The protocol consists of a single product family where the OptimizedTransparentUpgradeableProxy serves as the governance-controlled entry point, delegating all logic to the CarbonController implementation.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 16
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 16 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CarbonController | governance | bsc | [`0xafc43f...a9a1b9`](./contracts/bsc-56/0xafc43fae32302d725fc4d448525c44c522a9a1b9/) | ⚠️ Unaudited |

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
| [activity.md](https://github.com/CarbonDeploy/carbon-app/blob/main/docs/activity.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [overlapping.md](https://github.com/CarbonDeploy/carbon-app/blob/main/docs/overlapping.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [commands.md](https://github.com/CarbonDeploy/toncli/blob/master/docs/advanced/commands.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [func_tests_new.md](https://github.com/CarbonDeploy/toncli/blob/master/docs/advanced/func_tests_new.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [get_methods.md](https://github.com/CarbonDeploy/toncli/blob/master/docs/advanced/get_methods.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [intresting_features.md](https://github.com/CarbonDeploy/toncli/blob/master/docs/advanced/intresting_features.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [libs_configuration.md](https://github.com/CarbonDeploy/toncli/blob/master/docs/advanced/libs_configuration.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [multiple_contracts.md](https://github.com/CarbonDeploy/toncli/blob/master/docs/advanced/multiple_contracts.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [project_structure.md](https://github.com/CarbonDeploy/toncli/blob/master/docs/advanced/project_structure.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [send_boc_with_fift.md](https://github.com/CarbonDeploy/toncli/blob/master/docs/advanced/send_boc_with_fift.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [send_fift_internal.md](https://github.com/CarbonDeploy/toncli/blob/master/docs/advanced/send_fift_internal.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [transaction_debug.md](https://github.com/CarbonDeploy/toncli/blob/master/docs/advanced/transaction_debug.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [quick_start_guide.md](https://github.com/CarbonDeploy/toncli/blob/master/docs/quick_start_guide.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xafc43f...a9a1b9`](./contracts/bsc-56/0xafc43fae32302d725fc4d448525c44c522a9a1b9/) | CarbonController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 16
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [8083] activity.md
- [8084] overlapping.md
- [8085] commands.md
- [8086] func_tests_new.md
- [8087] get_methods.md
- [8088] intresting_features.md
- [8089] libs_configuration.md
- [8090] multiple_contracts.md
- [8091] project_structure.md
- [8092] send_boc_with_fift.md
- [8093] send_fift_internal.md
- [8094] transaction_debug.md
- [8095] quick_start_guide.md
- [8096] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [8097] 0002-metadata-manifest-and-pull-command.md
- [8098] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
