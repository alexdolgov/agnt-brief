# Agentic Audit Brief: CORE Bridge

## Project Overview

- Project: CORE Bridge (`core-bridge`)
- Website: [https://bridge.coredao.org/bridge](https://bridge.coredao.org/bridge)
- Lifecycle: active (Tier 0, 76.5% below peak)
- Generated: 2026-05-28T16:04:55.378Z
- Pipeline run: v2-pipeline-2026-05-28-8b27fb-06de
- Chains: avalanche, base
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $4,024,033.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CORE Bridge is a canonical cross-chain bridge enabling asset transfers between Avalanche and Base. It uses a lightweight node architecture to relay messages and facilitate token bridging.

### Architecture

The OriginalTokenBridge relies on the UltraLightNodeV2 for cross-chain message verification and delivery. Both contracts are deployed by the same deployer, indicating a shared infrastructure for the bridge functionality.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 4
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

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MPTValidator01 | unknown | avalanche | [`0x462f7e...49b859`](./contracts/avalanche-43114/0x462f7ec57c6492b983a8c8322b4369a7f149b859/) | ⚠️ Unaudited |
| NonceContract | unknown | avalanche | [`0x5b905f...f76068`](./contracts/avalanche-43114/0x5b905fe05f81f3a8ad8b28c6e17779cfabf76068/) | ⚠️ Unaudited |
| OriginalTokenBridge | operational_periphery | base | [`0x84fb20...507879`](./contracts/base-8453/0x84fb2086fed7b3c9b3a4bc559f60ffaa91507879/) | ⚠️ Unaudited |
| TreasuryV2 | operational_periphery | avalanche | [`0x3773e1...6ce34d`](./contracts/avalanche-43114/0x3773e1e9deb273fcdf9f80bc88bb387b1e6ce34d/) | ⚠️ Unaudited |
| UltraLightNodeV2 | unknown | avalanche | [`0x4d73ad...a178e2`](./contracts/avalanche-43114/0x4d73adb72bc3dd368966edd0f0b2148401a178e2/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | avalanche | `0x1eb362...57832e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x29d096...04031a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2c5790...87ec29` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x48c28a...d9ad17` | ❓ Unverified |

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
| base | [`0x84fb20...507879`](./contracts/base-8453/0x84fb2086fed7b3c9b3a4bc559f60ffaa91507879/) | OriginalTokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3773e1...6ce34d`](./contracts/avalanche-43114/0x3773e1e9deb273fcdf9f80bc88bb387b1e6ce34d/) | TreasuryV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [7895] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [7896] 0002-metadata-manifest-and-pull-command.md
- [7897] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
