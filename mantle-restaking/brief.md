# Agentic Audit Brief: Mantle Restaking

⚠️ Lifecycle status: DECLINING - TVL dropped 62.0% over 90 days

## Project Overview

- Project: Mantle Restaking (`mantle-restaking`)
- Website: [https://www.methprotocol.xyz/](https://www.methprotocol.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-12T16:12:22.836Z
- Pipeline run: v2-pipeline-2026-06-12-c7aee3-9d35
- Chains: ethereum, mantle
- Contract surface: 25 unique implementations (33 raw deployments)
- DeFi Llama TVL: $60,852,372.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Mantle Restaking is part of the mETH Protocol on Ethereum, centered on liquid staking and restaking products using mETH and cmETH. Users participate through Mantle's staking/restaking product surface while retaining liquid token exposure. Internal vault and position-management components such as BoringVault or PositionManager should be treated as implementation details only where their relationship to mETH/cmETH and the current deployed contract surface is independently verified.

### Architecture

The BoringVault holds user deposits and is managed by the PositionManagerNoVaultOwnable2StepWithShortcut, while multiple PositionManagerOwnable2StepWithShortcut contracts serve as governance modules. The DelayedWithdraw contract provides a secure withdrawal mechanism for the vault.

## Audit Coverage Summary

- Verified implementations audited: 13/22 (59.1%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 1
- Unverified implementations: 3
- Unique implementations: 25
- Raw deployments: 33
- Audits discovered: 13
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Staleness: 5 fresh, 2 aging, 5 stale, 1 unknown
- Tier 1 coverage: 18.2% (MixBytes)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hexens | Tier 2 | 13 | 59.1% | 2025-10 |
| MixBytes | Tier 1 | 4 | 18.2% | 2025-11 |
| Blocksec | Tier 2 | 3 | 13.6% | 2025-10 |
| Exvul | Tier 2 | 2 | 9.1% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AccountantWithRateProviders | unknown | ethereum | [`0x6049bd...10a2ec`](./contracts/ethereum-1/0x6049bd892f14669a4466e46981eced75d610a2ec/) | ✅ Audited |
| BoringVaultUpgradeable | unknown | ethereum | 2 deployments: ethereum [`0x191126...2c4407`](./contracts/ethereum-1/0x191126bbe4a09a9b21226386eace4e0b6e2c4407/); ethereum `0x33272d...5d4fe4` | ✅ Audited |
| DelayedWithdraw | operational_periphery | ethereum | [`0x12be34...66b113`](./contracts/ethereum-1/0x12be34be067ebd201f6eaf78a861d90b2a66b113/) | ✅ Audited |
| L1cmETHAdapter | adapter | ethereum | [`0x4afa96...75e948`](./contracts/ethereum-1/0x4afa9620d0b79137383a7a9ab3477837d475e948/) | ✅ Audited |
| L1MessagingStatus | unknown | ethereum | [`0x4733e6...3d30f5`](./contracts/ethereum-1/0x4733e66ebdee88711eb502580b4d03685d3d30f5/) | ✅ Audited |
| L2MessagingStatus | unknown | mantle | [`0x4733e6...3d30f5`](./contracts/mantle-5000/0x4733e66ebdee88711eb502580b4d03685d3d30f5/) | ✅ Audited |
| Oracle | unknown | ethereum | [`0x873504...408192`](./contracts/ethereum-1/0x8735049f496727f824cc0f2b174d826f5c408192/) | ✅ Audited |
| OracleQuorumManager | operational_periphery | ethereum | [`0x92e56d...ea0d90`](./contracts/ethereum-1/0x92e56d2146d54d5aecb25ca36c89d027a6ea0d90/) | ✅ Audited |
| Pauser | unknown | ethereum | [`0x589a72...40a95e`](./contracts/ethereum-1/0x589a7295b832e7e0f6ca0ba6499a943b6640a95e/) | ✅ Audited |
| PositionManager | governance | ethereum | 2 deployments: ethereum [`0x1c17ea...c21e56`](./contracts/ethereum-1/0x1c17eab0a50931850f1f23fdbacbd0197bc21e56/); ethereum `0xcd694b...f881d9` | ✅ Audited |
| ReturnsAggregator | unknown | ethereum | [`0x1766be...9d3b82`](./contracts/ethereum-1/0x1766be66fbb0a1883d41b4cfb0a533c5249d3b82/) | ✅ Audited |
| Staking | unknown | ethereum | [`0xe3cbd0...489e8f`](./contracts/ethereum-1/0xe3cbd06d7dadb3f4e6557bab7edd924cd1489e8f/) | ✅ Audited |
| UnstakeRequestsManager | unknown | ethereum | [`0x38fdf7...3fdcf9`](./contracts/ethereum-1/0x38fdf7b489316e03ed8754ad339cb5c4483fdcf9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DefaultCollateral | unknown | ethereum | [`0x475d3e...7c304a`](./contracts/ethereum-1/0x475d3eb031d250070b63fa145f0fcfc5d97c304a/) | ⚠️ Unaudited |
| ITBPositionDecoderAndSanitizer | unknown | ethereum | [`0xa72833...40d5eb`](./contracts/ethereum-1/0xa728337af7dd226b74b0b1546aa7dd54d340d5eb/) | ⚠️ Unaudited |
| ManagerWithMerkleVerification | operational_periphery | ethereum | [`0xaec024...878bce`](./contracts/ethereum-1/0xaec02407cbc7deb67ab1bbe4b0d49de764878bce/) | ⚠️ Unaudited |
| PositionManagerNoVaultOwnable2StepWithShortcut | core_logic | ethereum | [`0x919531...2c1d36`](./contracts/ethereum-1/0x919531146f9a25dfc161d5ab23b117feae2c1d36/) | ⚠️ Unaudited |
| PositionManagerOwnable2StepWithShortcut | governance | ethereum | 6 deployments: ethereum [`0x021180...06e2da`](./contracts/ethereum-1/0x021180a06aa65a7b5ff891b5c146fbdafc06e2da/); ethereum `0x0b5d15...46d93a`; ethereum `0x52ea8e...cc21a2`; ethereum `0x5bb8e5...89a135`; ethereum `0x6dfbe3...d93b25`; ethereum `0xcac150...ef849d` | ⚠️ Unaudited |
| RolesAuthority | governance | ethereum | [`0xbb51d9...289e8e`](./contracts/ethereum-1/0xbb51d90b3850a7bc1286f658a774deb119289e8e/) | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | ethereum | [`0xb6f7d3...1912b0`](./contracts/ethereum-1/0xb6f7d38e3eabb8f69210afc2212fe82e0f1912b0/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | [`0xc26016...c2ace2`](./contracts/ethereum-1/0xc26016f1166be7b6c5611aab104122e0f6c2ace2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| GnosisSafe | governance | ethereum | 2 deployments: ethereum [`0x4e59e7...aed40f`](./contracts/ethereum-1/0x4e59e778a0fb77fbb305637435c62faed9aed40f/); ethereum `0x849738...4c8203` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x08e608...69cdac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x65f4e6...ff564d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd7f940...3bdc17` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Mantle_SCs_Aug23(Public)(Liquid%20Staking%20Protocol).pdf) | Hexens | Audit | 2023-08 | stale | Direct | contract_name | 6 | high |
| [Mantle_Sep23(Public) (Oracle).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Mantle_Sep23(Public)%20(Oracle).pdf) | Hexens | Audit | 2023-10 | stale | Direct | contract_name | 1 | high |
| [mantle-cmeth-audit-aug-2024(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/mantle-cmeth-audit-aug-2024(Public).pdf) | Hexens | Audit | 2024-09 | aging | Direct | contract_name | 11 | high |
| [mETH-Protocol-oct-25(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/mETH-Protocol-oct-25(Final).pdf) | Hexens | Audit | 2025-10 | fresh | Direct | contract_name | 3 | high |
| [Blocksec-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/Blocksec-11-25.pdf) | Blocksec | Audit | 2025-10 | fresh | Direct | contract_name | 4 | high |
| [Exvul-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/Exvul-11-25.pdf) | Exvul | Audit | 2025-10 | fresh | Direct | contract_name | 3 | high |
| [Hexens-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/Hexens-11-25.pdf) | Hexens | Audit | 2025-10 | fresh | Direct | contract_name | 4 | high |
| [MixBytes-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/MixBytes-11-25.pdf) | MixBytes | Audit | 2025-11 | fresh | Direct | contract_name | 5 | high |
| [blocksec.pdf](https://github.com/mantle-lsp/audits/blob/main/fixed-yield-vault/blocksec.pdf) | BlockSec | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Mantle_L2_ERC20_Token_Bridge_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_L2_ERC20_Token_Bridge_Report.pdf) | unknown | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Mantle_LSP_L2_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_LSP_L2_Report.pdf) | unknown | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [Mantle_MDI_Quests_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_MDI_Quests_Report.pdf) | unknown | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [Mantle_Staking_Hub_Audit_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_Staking_Hub_Audit_Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=8
- Match method counts: extraction_exact=37

Zero-match audit list:

- [4633] blocksec.pdf
- [4635] Mantle_L2_ERC20_Token_Bridge_Report.pdf
- [4636] Mantle_LSP_L2_Report.pdf
- [4637] Mantle_MDI_Quests_Report.pdf
- [4638] Mantle_Staking_Hub_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
