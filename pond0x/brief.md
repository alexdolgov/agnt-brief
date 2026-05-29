# Agentic Audit Brief: Pond0x

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Pond0x (`pond0x`)
- Website: [http://pond0x.com/](http://pond0x.com/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-29T12:34:58.417Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: ethereum
- Contract surface: 14 unique implementations (20 raw deployments)
- DeFi Llama TVL: $2,872,834.29
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Pond0x is a DEX aggregator that optimizes token swaps by routing trades across multiple liquidity sources. It features its own ecosystem tokens, PondCoin and PondWater, which may be used for governance or fee discounts.

### Architecture

The Pond0x family consists of two core token contracts, PondCoin and PondWater, which are likely integrated into the aggregator's fee or incentive mechanisms. All contracts are deployed from a single cluster, indicating a unified infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 14
- Raw deployments: 20
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MiningRigV3 | unknown | ethereum | 2 deployments: ethereum [`0x2d50ef...31c00a`](./contracts/ethereum-1/0x2d50efbc3690b6d0ea0b179c18f016ae9031c00a/); ethereum `0x6de46a...be628f` | ⚠️ Unaudited |
| MiningRigV4 | unknown | ethereum | [`0x86d27a...7e1edf`](./contracts/ethereum-1/0x86d27a2c844c1bc559599ce68aa15d54f57e1edf/) | ⚠️ Unaudited |
| PondClaims | unknown | ethereum | [`0xe7f012...423c28`](./contracts/ethereum-1/0xe7f01261ef9792095e22abbf7f6f7b881d423c28/) | ⚠️ Unaudited |
| PondCoin | unknown | ethereum | [`0x423f4e...631eea`](./contracts/ethereum-1/0x423f4e6138e475d85cf7ea071ac92097ed631eea/) | ⚠️ Unaudited |
| PondWater | unknown | ethereum | [`0xed96e6...a1b470`](./contracts/ethereum-1/0xed96e69d54609d9f2cff8aacd66ccf83c8a1b470/) | ⚠️ Unaudited |
| ProtoClaim | unknown | ethereum | 3 deployments: ethereum [`0x76cc94...8d803f`](./contracts/ethereum-1/0x76cc942ae5c68fba5dcbb67f07b77f35438d803f/); ethereum `0x8a3cfc...3fc3c6`; ethereum `0xc4258e...84e072` | ⚠️ Unaudited |
| SpawnManager | governance | ethereum | 2 deployments: ethereum [`0x06c795...8b19fe`](./contracts/ethereum-1/0x06c79523ad3b4e285b2c0572d230ab81428b19fe/); ethereum `0x4c0da5...4aec36` | ⚠️ Unaudited |
| SpawnManagerV2 | governance | ethereum | 3 deployments: ethereum [`0x08939a...3393ca`](./contracts/ethereum-1/0x08939a9a6aefbd4bf9c0e128ed027591913393ca/); ethereum `0xab7b98...5dd3c5`; ethereum `0xcc57c9...9e946c` | ⚠️ Unaudited |
| TadpoleClaimer | operational_periphery | ethereum | [`0x314a8e...ad3796`](./contracts/ethereum-1/0x314a8e2ea148c272ce379dee7580656159ad3796/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0bda79...30a72c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x38b10a...42d288` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e810a...a225f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x81ce23...b86437` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe9f234...93bf03` | ❓ Unverified |

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
| ethereum | [`0x2d50ef...31c00a`](./contracts/ethereum-1/0x2d50efbc3690b6d0ea0b179c18f016ae9031c00a/) | MiningRigV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86d27a...7e1edf`](./contracts/ethereum-1/0x86d27a2c844c1bc559599ce68aa15d54f57e1edf/) | MiningRigV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe7f012...423c28`](./contracts/ethereum-1/0xe7f01261ef9792095e22abbf7f6f7b881d423c28/) | PondClaims | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x423f4e...631eea`](./contracts/ethereum-1/0x423f4e6138e475d85cf7ea071ac92097ed631eea/) | PondCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed96e6...a1b470`](./contracts/ethereum-1/0xed96e69d54609d9f2cff8aacd66ccf83c8a1b470/) | PondWater | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76cc94...8d803f`](./contracts/ethereum-1/0x76cc942ae5c68fba5dcbb67f07b77f35438d803f/) | ProtoClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06c795...8b19fe`](./contracts/ethereum-1/0x06c79523ad3b4e285b2c0572d230ab81428b19fe/) | SpawnManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08939a...3393ca`](./contracts/ethereum-1/0x08939a9a6aefbd4bf9c0e128ed027591913393ca/) | SpawnManagerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x314a8e...ad3796`](./contracts/ethereum-1/0x314a8e2ea148c272ce379dee7580656159ad3796/) | TadpoleClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [8633] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [8634] 0002-metadata-manifest-and-pull-command.md
- [8635] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
