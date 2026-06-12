# Agentic Audit Brief: Sophon Bridge

## Project Overview

- Project: Sophon Bridge (`sophon-bridge`)
- Website: [https://sophon.xyz/](https://sophon.xyz/)
- Lifecycle: active (Tier 0, 88.9% below peak)
- Generated: 2026-06-12T07:39:22.665Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-d6af
- Chains: ethereum
- Contract surface: 25 unique implementations (43 raw deployments)
- DeFi Llama TVL: $60,238,099.13
- On-chain TVL (included contracts): $44,638,737.31
- TVL by chain: Ethereum $44,638,737.31

## Project Description

Sophon Bridge is the Ethereum-side canonical bridge/asset-locking surface for Sophon, a ZK chain. The recorded surface includes L1USDCBridge plus associated token, wrapper, migration and reward contracts.

### Architecture

The L1USDCBridge and StakedZentry contracts are deployed behind TransparentUpgradeableProxy instances, indicating shared upgradeability infrastructure. The bridge and token contracts likely interact through the proxy layer to manage cross-chain asset locking and minting.

## Audit Coverage Summary

- Verified implementations audited: 0/24 (0.0%)
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 25
- Raw deployments: 43
- Audits discovered: 8
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $44,638,737.31
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 6 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| L1NativeTokenVault | core_logic | ethereum | [`0xbed1eb...1111f6`](./contracts/ethereum-1/0xbed1eb542f9a5aa6419ff3deb921a372681111f6/) | ⚠️ Unaudited |
| StakedZentry | token | ethereum | 4 deployments: ethereum [`0x996d67...1fdb90`](./contracts/ethereum-1/0x996d67aa9b37df96428ad3608cb21352bf1fdb90/); ethereum `0x9e741f...b5d14e`; ethereum `0xa694c0...150b80`; ethereum `0xa7b9c8...a76c27` | ⚠️ Unaudited |
| AethirWrapper | unknown | ethereum | 2 deployments: ethereum [`0x1ecb43...33a13c`](./contracts/ethereum-1/0x1ecb43e02d6573119eaf0e6509a4725b8633a13c/); ethereum `0x3f69bb...3f7fee` | ⚠️ Unaudited |
| Bridgehub | operational_periphery | ethereum | [`0x303a46...eb5213`](./contracts/ethereum-1/0x303a465b659cbb0ab36ee643ea362c509eeb5213/) | ⚠️ Unaudited |
| ChainAdmin | unknown | ethereum | [`0xe1eea4...ac2ad3`](./contracts/ethereum-1/0xe1eea4d6443b19d373fe99de838b930ef0ac2ad3/) | ⚠️ Unaudited |
| ChainAssetHandler | unknown | ethereum | [`0xdd5cb8...b61076`](./contracts/ethereum-1/0xdd5cb8b9037357b4cd37391a073798f8aab61076/) | ⚠️ Unaudited |
| ChainTypeManager | unknown | ethereum | [`0xc2ee6b...0f5f5c`](./contracts/ethereum-1/0xc2ee6b6af7d616f6e27ce7f4a451aedc2b0f5f5c/) | ⚠️ Unaudited |
| DiamondProxy | unknown | ethereum | [`0x05ede6...7241e3`](./contracts/ethereum-1/0x05ede6ad1f39b7a16c949d5c33a0658c9c7241e3/) | ⚠️ Unaudited |
| GFFeeder01 | unknown | ethereum | 2 deployments: ethereum [`0x04136c...d2eae5`](./contracts/ethereum-1/0x04136ccfd17c2cece18a63a09aeadcfb4ad2eae5/); ethereum `0x300eda...824580` | ⚠️ Unaudited |
| GFFeeder02 | unknown | ethereum | [`0x7a0157...850de4`](./contracts/ethereum-1/0x7a0157879bea0c0bdc1c6b2e2401fc878a850de4/) | ⚠️ Unaudited |
| L1Nullifier | unknown | ethereum | [`0xd7f9f5...8cb2cb`](./contracts/ethereum-1/0xd7f9f54194c633f36ccd5f3da84ad4a1c38cb2cb/) | ⚠️ Unaudited |
| L1USDCBridge | operational_periphery | ethereum | 5 deployments: ethereum [`0x21b064...d4cae4`](./contracts/ethereum-1/0x21b0644fb63bd057042b6cd34753fc690ad4cae4/); ethereum `0x2ccd54...f66cbb`; ethereum `0x86df12...337715`; ethereum `0x9c26d9...cb357a`; ethereum `0xf553e6...a8f987` | ⚠️ Unaudited |
| LensRewardV2 | periphery | ethereum | [`0xdf4aa3...8124ff`](./contracts/ethereum-1/0xdf4aa37a2927deb886f3dc3d070c55b5088124ff/) | ⚠️ Unaudited |
| LpMigrator | periphery | ethereum | [`0xec10fa...21a736`](./contracts/ethereum-1/0xec10fa42c7d0c743b1ed015ae18711bb5921a736/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0xb35e62...c26268`](./contracts/ethereum-1/0xb35e62457b3fd40a43f24722538c98e265c26268/) | ⚠️ Unaudited |
| RewardManager | governance | ethereum | 5 deployments: ethereum [`0x0cca93...569aec`](./contracts/ethereum-1/0x0cca930828eabd65d1c044668d652e04d1569aec/); ethereum `0x58de2f...820d98`; ethereum `0x5b250f...85ee2b`; ethereum `0xb85166...f12bb2`; ethereum `0xbb9595...86a9b8` | ⚠️ Unaudited |
| Safe | unknown | ethereum | [`0xe4644b...f052d1`](./contracts/ethereum-1/0xe4644b6d106a18062344c0a853666bc0b8f052d1/) | ⚠️ Unaudited |
| SmartWalletChecker | unknown | ethereum | [`0xb91eb8...41bed4`](./contracts/ethereum-1/0xb91eb8907c34147b1ab58dc663a3594bb241bed4/) | ⚠️ Unaudited |
| SophonTransactionFilterer | unknown | ethereum | [`0x9d06b3...da3063`](./contracts/ethereum-1/0x9d06b34adc3026ef876e4dabb859c424dbda3063/) | ⚠️ Unaudited |
| StAethir | unknown | ethereum | [`0xc96aa6...19e59c`](./contracts/ethereum-1/0xc96aa65f31e41b4ca6924b86d93e25686019e59c/) | ⚠️ Unaudited |
| VeAethir | unknown | ethereum | [`0x1b49f5...1b7490`](./contracts/ethereum-1/0x1b49f587feca530a7bf7cf2bd3fbda780e1b7490/) | ⚠️ Unaudited |
| xGF | unknown | ethereum | 3 deployments: ethereum [`0x6539f0...212639`](./contracts/ethereum-1/0x6539f093873a0e9f058b64dd6473464685212639/); ethereum `0x7a728b...d75f38`; ethereum `0x7b6777...fca676` | ⚠️ Unaudited |
| xGFETHMigrator | periphery | ethereum | 3 deployments: ethereum [`0x50a7f0...9fb5b1`](./contracts/ethereum-1/0x50a7f0fd3f6a2e3238e105bc36cf7010c89fb5b1/); ethereum `0x5b589f...41c7f5`; ethereum `0xae6763...008275` | ⚠️ Unaudited |
| xGFMigrator | periphery | ethereum | 2 deployments: ethereum [`0xf5497d...77a84e`](./contracts/ethereum-1/0xf5497d363348bcbb2a04c091ed306d5bc777a84e/); ethereum `0xf7ab7d...944234` | ⚠️ Unaudited |

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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 25 |

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
