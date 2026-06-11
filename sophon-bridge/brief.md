# Agentic Audit Brief: Sophon Bridge

## Project Overview

- Project: Sophon Bridge (`sophon-bridge`)
- Website: [https://sophon.xyz/](https://sophon.xyz/)
- Lifecycle: active (Tier 0, 88.9% below peak)
- Generated: 2026-06-11T02:51:24.601Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-79ef
- Chains: ethereum
- Contract surface: 10 unique implementations (21 raw deployments)
- DeFi Llama TVL: $83,963,216.16
- On-chain TVL (included contracts): $5,513,111.22
- TVL by chain: Ethereum $5,513,111.22

## Project Description

Sophon Bridge is the Ethereum-side canonical bridge/asset-locking surface for Sophon, a ZK chain. The recorded surface includes L1USDCBridge plus associated token, wrapper, migration and reward contracts.

### Architecture

The L1USDCBridge and StakedZentry contracts are deployed behind TransparentUpgradeableProxy instances, indicating shared upgradeability infrastructure. The bridge and token contracts likely interact through the proxy layer to manage cross-chain asset locking and minting.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 10
- Raw deployments: 21
- Audits discovered: 8
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $5,513,111.22
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 6 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StakedZentry | token | ethereum | 4 deployments: ethereum [`0x996d67...1fdb90`](./contracts/ethereum-1/0x996d67aa9b37df96428ad3608cb21352bf1fdb90/); ethereum `0x9e741f...b5d14e`; ethereum `0xa694c0...150b80`; ethereum `0xa7b9c8...a76c27` | ⚠️ Unaudited |
| AethirWrapper | unknown | ethereum | [`0x3f69bb...3f7fee`](./contracts/ethereum-1/0x3f69bb14860f7f3348ac8a5f0d445322143f7fee/) | ⚠️ Unaudited |
| L1USDCBridge | operational_periphery | ethereum | 5 deployments: ethereum [`0x21b064...d4cae4`](./contracts/ethereum-1/0x21b0644fb63bd057042b6cd34753fc690ad4cae4/); ethereum `0x2ccd54...f66cbb`; ethereum `0x86df12...337715`; ethereum `0x9c26d9...cb357a`; ethereum `0xf553e6...a8f987` | ⚠️ Unaudited |
| LpMigrator | periphery | ethereum | [`0xec10fa...21a736`](./contracts/ethereum-1/0xec10fa42c7d0c743b1ed015ae18711bb5921a736/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0xb35e62...c26268`](./contracts/ethereum-1/0xb35e62457b3fd40a43f24722538c98e265c26268/) | ⚠️ Unaudited |
| RewardManager | governance | ethereum | 5 deployments: ethereum [`0x0cca93...569aec`](./contracts/ethereum-1/0x0cca930828eabd65d1c044668d652e04d1569aec/); ethereum `0x58de2f...820d98`; ethereum `0x5b250f...85ee2b`; ethereum `0xb85166...f12bb2`; ethereum `0xbb9595...86a9b8` | ⚠️ Unaudited |
| StAethir | unknown | ethereum | [`0xc96aa6...19e59c`](./contracts/ethereum-1/0xc96aa65f31e41b4ca6924b86d93e25686019e59c/) | ⚠️ Unaudited |
| xGFETHMigrator | periphery | ethereum | [`0xae6763...008275`](./contracts/ethereum-1/0xae6763befecc374e49422fc14a96d62d88008275/) | ⚠️ Unaudited |
| xGFMigrator | periphery | ethereum | [`0xf5497d...77a84e`](./contracts/ethereum-1/0xf5497d363348bcbb2a04c091ed306d5bc777a84e/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | `0x8e8128...f3dbd7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Quantstamp Audit Report for Farming on Ethereum](https://github.com/sophon-org/audits/blob/main/Quantstamp%20-%20Sophon%20Farming%20Final%20Report.pdf) | Quantstamp | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [Sherlock Audit Report for Farming on Ethereum](https://github.com/sophon-org/audits/blob/main/Sherlock%20-%20sophon-farming-contracts-audit-report-1718619027.pdf) | Sherlock | Contest | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [Omniscia Audit Report for Custom USDC Bridge](https://github.com/sophon-org/audits/blob/main/Omniscia%20-%20Security%20Review%20-%2011_20_2024.pdf) | Omniscia | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Omniscia Audit Report for Guardian NFT, L1 Paymaster, and SOPH Token](https://github.com/sophon-org/audits/blob/main/Omniscia%20-%20Security%20Review%20-%2011_01_2024.pdf) | Guardian | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Omniscia Audit Report for Farming on layer-2 oracle based allocation reward system](https://github.com/sophon-org/audits/blob/main/Omniscia%20-%20Security%20Review%20-%20Farming%20-%2001_08_2025.pdf) | Omniscia | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Omniscia Audit Report for Tokens and BridgeHubWrapper](https://github.com/sophon-org/audits/blob/main/Quantstamp%20-%20Sophon%20tokens%20%26%20BridgeHubWrappe.pdf) | Quantstamp | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Nethermind - NM0482_FINAL_SOPHON.pdf](https://github.com/sophon-org/audits/blob/main/Nethermind%20-%20NM0482_FINAL_SOPHON.pdf) | Nethermind | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Omniscia - 04_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf](https://github.com/sophon-org/audits/blob/main/Omniscia%20-%2004_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf) | yAudit | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x21b064...d4cae4`](./contracts/ethereum-1/0x21b0644fb63bd057042b6cd34753fc690ad4cae4/) | L1USDCBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xec10fa...21a736`](./contracts/ethereum-1/0xec10fa42c7d0c743b1ed015ae18711bb5921a736/) | LpMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cca93...569aec`](./contracts/ethereum-1/0x0cca930828eabd65d1c044668d652e04d1569aec/) | RewardManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc96aa6...19e59c`](./contracts/ethereum-1/0xc96aa65f31e41b4ca6924b86d93e25686019e59c/) | StAethir | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [4608] Quantstamp Audit Report for Farming on Ethereum
- [4609] Sherlock Audit Report for Farming on Ethereum
- [4610] Omniscia Audit Report for Custom USDC Bridge
- [4611] Omniscia Audit Report for Guardian NFT, L1 Paymaster, and SOPH Token
- [4612] Omniscia Audit Report for Farming on layer-2 oracle based allocation reward system
- [4613] Omniscia Audit Report for Tokens and BridgeHubWrapper
- [4614] Nethermind - NM0482_FINAL_SOPHON.pdf
- [4615] Omniscia - 04_28_2025_SophonNetwork_StakingMerkleContracts_SecurityAudit.pdf

Fork inheritance lineage and inherited audits are included when available.
