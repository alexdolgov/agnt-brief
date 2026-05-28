# Agentic Audit Brief: Feather

## Project Overview

- Project: Feather (`feather`)
- Website: [https://app.feather.zone/](https://app.feather.zone/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-28T16:42:28.600Z
- Pipeline run: v2-pipeline-2026-05-28-8b27fb-06de
- Chains: celo, klaytn, sei
- Contract surface: 3 unique implementations (8 raw deployments)
- DeFi Llama TVL: $16,535,444.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Feather is a risk curation protocol that deploys and manages MetaMorpho vaults, optimizing yield and risk parameters for users across multiple chains.

### Architecture

All MetaMorpho vaults are deployed by the same deployer cluster and likely share a common SafeProxy for administrative control, with the unnamed contract possibly serving as a registry or factory.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 8
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

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MetaMorphoV1_1 | unknown | sei | 6 deployments: sei [`0x015f10...03e41c`](./contracts/sei-1329/0x015f10a56e97e02437d294815d8e079e1903e41c/); sei `0x50715a...28bfe8`; sei `0x8e1812...0a7223`; sei `0x948fcc...2a4923`; sei `0x94e6a8...5eb79c`; sei `0xbd1836...963dc5` | ⚠️ Unaudited |
| SafeProxy | unknown | celo | [`0x81c76f...2f091f`](./contracts/celo-42220/0x81c76f62f7e05dec75800150ba5a23f62e2f091f/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | klaytn | `0x6ba8f7...5a133e` | ❓ Unverified |

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
| sei | [`0x015f10...03e41c`](./contracts/sei-1329/0x015f10a56e97e02437d294815d8e079e1903e41c/) | MetaMorphoV1_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [6650] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [6651] 0002-metadata-manifest-and-pull-command.md
- [6652] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
