# Agentic Audit Brief: Injective Bridge

## Project Overview

- Project: Injective Bridge (`injective-bridge`)
- Website: [https://injective.com](https://injective.com)
- Lifecycle: active (Tier 0, 67.2% below peak)
- Generated: 2026-05-29T19:44:14.661Z
- Pipeline run: v2-pipeline-2026-05-29-691c43-e9c3
- Chains: ethereum
- Contract surface: 3 unique implementations (4 raw deployments)
- DeFi Llama TVL: $15,105,127.42
- On-chain TVL (included contracts): $2,617.33
- TVL by chain: Ethereum $2,617.33

## Project Description

The Injective Bridge enables cross-chain asset transfers between Ethereum and the Injective chain, allowing users to lock tokens on Ethereum and mint corresponding assets on Injective.

### Architecture

The TransparentUpgradeableProxy delegates to the Peggy implementation, which manages token locking and minting logic, while InjectiveToken represents the bridged asset on Ethereum.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 4
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,617.33
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| InjectiveToken | token | ethereum | [`0xe28b3b...ceca30`](./contracts/ethereum-1/0xe28b3b32b6c345a34ff64674606124dd5aceca30/) | ⚠️ Unaudited |
| Peggy | unknown | ethereum | 2 deployments: ethereum [`0x1d3544...524b7d`](./contracts/ethereum-1/0x1d3544443d743c050656b01bdce01e4702524b7d/); ethereum `0xf955c5...bad6f3` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0x19c003...eaeef7`](./contracts/ethereum-1/0x19c00323cafc23c4d72c1a25f0f78e769deaeef7/) | ⚠️ Unaudited |

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
| ethereum | [`0xe28b3b...ceca30`](./contracts/ethereum-1/0xe28b3b32b6c345a34ff64674606124dd5aceca30/) | InjectiveToken | token | $2,617.33 | Verified native implementation with $2,617.33 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d3544...524b7d`](./contracts/ethereum-1/0x1d3544443d743c050656b01bdce01e4702524b7d/) | Peggy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [6905] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [6906] 0002-metadata-manifest-and-pull-command.md
- [6907] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
