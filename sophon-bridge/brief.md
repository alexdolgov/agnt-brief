# Agentic Audit Brief: Sophon Bridge

## Project Overview

- Project: Sophon Bridge (`sophon-bridge`)
- Website: [https://sophon.xyz/](https://sophon.xyz/)
- Lifecycle: active (Tier 0, 90.7% below peak)
- Generated: 2026-06-17T07:00:35.612Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 10 unique implementations (10 raw deployments)
- DeFi Llama TVL: $60,238,099.13
- On-chain TVL (included contracts): $39,125,626.09
- TVL by chain: Ethereum $39,125,626.09

## Project Description

Sophon Bridge is the Ethereum-side canonical bridge/asset-locking surface for Sophon, a ZK chain. The recorded surface includes L1USDCBridge plus associated token, wrapper, migration and reward contracts.

### Architecture

The L1USDCBridge and StakedZentry contracts are deployed behind TransparentUpgradeableProxy instances, indicating shared upgradeability infrastructure. The bridge and token contracts likely interact through the proxy layer to manage cross-chain asset locking and minting.

## Contract Surface Quality

- Indexed contracts: 43; live-surface contracts included: 10 (8 live, 2 unknown).
- Excluded by liveness: 21 inactive, 12 singleton, 0 uninitialized.
- Deployment units: 4/12 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 10; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/10 (0.0%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 10
- Audits discovered: 8
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $39,125,626.09
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 6 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| L1NativeTokenVault | core_logic | ethereum | unit-21385 | [`0xbed1eb...1111f6`](./contracts/ethereum-1/0xbed1eb542f9a5aa6419ff3deb921a372681111f6/) | ⚠️ Unaudited |
| Bridgehub | operational_periphery | ethereum | unit-21380 | [`0x303a46...eb5213`](./contracts/ethereum-1/0x303a465b659cbb0ab36ee643ea362c509eeb5213/) | ⚠️ Unaudited |
| ChainAdmin | unknown | ethereum | n/a | [`0xe1eea4...ac2ad3`](./contracts/ethereum-1/0xe1eea4d6443b19d373fe99de838b930ef0ac2ad3/) | ⚠️ Unaudited |
| ChainAssetHandler | unknown | ethereum | unit-21388 | [`0xdd5cb8...b61076`](./contracts/ethereum-1/0xdd5cb8b9037357b4cd37391a073798f8aab61076/) | ⚠️ Unaudited |
| DiamondProxy | unknown | ethereum | n/a | [`0x05ede6...7241e3`](./contracts/ethereum-1/0x05ede6ad1f39b7a16c949d5c33a0658c9c7241e3/) | ⚠️ Unaudited |
| L1Nullifier | unknown | ethereum | unit-21387 | [`0xd7f9f5...8cb2cb`](./contracts/ethereum-1/0xd7f9f54194c633f36ccd5f3da84ad4a1c38cb2cb/) | ⚠️ Unaudited |
| LensRewardV2 | periphery | ethereum | n/a | [`0xdf4aa3...8124ff`](./contracts/ethereum-1/0xdf4aa37a2927deb886f3dc3d070c55b5088124ff/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-21389 | [`0xe4644b...f052d1`](./contracts/ethereum-1/0xe4644b6d106a18062344c0a853666bc0b8f052d1/) | ⚠️ Unaudited |
| StAethir | unknown | ethereum | n/a | [`0xc96aa6...19e59c`](./contracts/ethereum-1/0xc96aa65f31e41b4ca6924b86d93e25686019e59c/) | ⚠️ Unaudited |
| VeAethir | unknown | ethereum | n/a | [`0x1b49f5...1b7490`](./contracts/ethereum-1/0x1b49f587feca530a7bf7cf2bd3fbda780e1b7490/) | ⚠️ Unaudited |

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
| needs_review | 10 |

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
