# Agentic Audit Brief: SuiBridge

⚠️ Lifecycle status: UNKNOWN - TVL dropped 43.7% over 90 days

## Project Overview

- Project: SuiBridge (`suibridge`)
- Website: [https://bridge.sui.io](https://bridge.sui.io)
- Lifecycle: unknown (Tier 0, 93.2% below peak)
- Generated: 2026-05-29T14:50:24.226Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: ethereum
- Contract surface: 5 unique implementations (9 raw deployments)
- DeFi Llama TVL: $41,855,877.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

SuiBridge is a canonical bridge enabling asset transfers between Ethereum and the Sui blockchain. It uses a committee-based validation model to secure cross-chain messages and a vault to lock assets on Ethereum.

### Architecture

The SuiBridge contract coordinates with BridgeCommittee for validation, BridgeLimiter for rate limiting, and BridgeConfig for parameters, while the BridgeVault holds locked assets. All contracts are deployed by the same deployer and share upgradeable proxy patterns.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 9
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

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BridgeCommittee | operational_periphery | ethereum | 2 deployments: ethereum [`0xa470ca...23b63b`](./contracts/ethereum-1/0xa470ca92126bd6b6f6e98f3010c7e384f223b63b/); ethereum `0xee2d52...5b416f` | ⚠️ Unaudited |
| BridgeConfig | operational_periphery | ethereum | 2 deployments: ethereum [`0x72d34f...6a1540`](./contracts/ethereum-1/0x72d34fe82c71bf8120647518e5128e53106a1540/); ethereum `0xb083c4...fec50c` | ⚠️ Unaudited |
| BridgeLimiter | operational_periphery | ethereum | 2 deployments: ethereum [`0x12183b...736767`](./contracts/ethereum-1/0x12183b0796bbc4678999100e8c6c5715d5736767/); ethereum `0xd754e5...887340` | ⚠️ Unaudited |
| BridgeVault | operational_periphery | ethereum | [`0x312e67...f80b53`](./contracts/ethereum-1/0x312e67b47a2a29ae200184949093d92369f80b53/) | ⚠️ Unaudited |
| SuiBridge | operational_periphery | ethereum | 2 deployments: ethereum [`0xa60f29...bb036c`](./contracts/ethereum-1/0xa60f29201aeae592d9ab95747ae1cf425dbb036c/); ethereum `0xda3bd1...8a92fd` | ⚠️ Unaudited |

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
| ethereum | [`0xa470ca...23b63b`](./contracts/ethereum-1/0xa470ca92126bd6b6f6e98f3010c7e384f223b63b/) | BridgeCommittee | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x312e67...f80b53`](./contracts/ethereum-1/0x312e67b47a2a29ae200184949093d92369f80b53/) | BridgeVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa60f29...bb036c`](./contracts/ethereum-1/0xa60f29201aeae592d9ab95747ae1cf425dbb036c/) | SuiBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [5819] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [5820] 0002-metadata-manifest-and-pull-command.md
- [5821] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
