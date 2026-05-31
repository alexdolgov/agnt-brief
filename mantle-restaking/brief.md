# Agentic Audit Brief: Mantle Restaking

## Project Overview

- Project: Mantle Restaking (`mantle-restaking`)
- Website: [https://www.methprotocol.xyz/](https://www.methprotocol.xyz/)
- Lifecycle: unknown
- Generated: 2026-05-31T14:54:04.080Z
- Pipeline run: v2-pipeline-2026-05-27-de70dc-1ce2
- Chains: ethereum
- Contract surface: 8 unique implementations (14 raw deployments)
- DeFi Llama TVL: $79,688,066.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Mantle Restaking is a liquid restaking protocol that allows users to deposit assets into a BoringVault and manage positions through PositionManager contracts, enabling yield generation while maintaining liquidity.

### Architecture

The BoringVault holds user deposits and is managed by the PositionManagerNoVaultOwnable2StepWithShortcut, while multiple PositionManagerOwnable2StepWithShortcut contracts serve as governance modules. The DelayedWithdraw contract provides a secure withdrawal mechanism for the vault.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 8
- Raw deployments: 14
- Audits discovered: 14
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Staleness: 2 fresh, 3 aging, 0 stale, 9 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BoringVaultUpgradeable | core_logic | ethereum | [`0x33272d...5d4fe4`](./contracts/ethereum-1/0x33272d40b247c4cd9c646582c9bbad44e85d4fe4/) | ⚠️ Unaudited |
| DelayedWithdraw | operational_periphery | ethereum | [`0x12be34...66b113`](./contracts/ethereum-1/0x12be34be067ebd201f6eaf78a861d90b2a66b113/) | ⚠️ Unaudited |
| PositionManager | governance | ethereum | 2 deployments: ethereum [`0x1c17ea...c21e56`](./contracts/ethereum-1/0x1c17eab0a50931850f1f23fdbacbd0197bc21e56/); ethereum `0xcd694b...f881d9` | ⚠️ Unaudited |
| PositionManagerNoVaultOwnable2StepWithShortcut | core_logic | ethereum | [`0x919531...2c1d36`](./contracts/ethereum-1/0x919531146f9a25dfc161d5ab23b117feae2c1d36/) | ⚠️ Unaudited |
| PositionManagerOwnable2StepWithShortcut | governance | ethereum | 6 deployments: ethereum [`0x021180...06e2da`](./contracts/ethereum-1/0x021180a06aa65a7b5ff891b5c146fbdafc06e2da/); ethereum `0x0b5d15...46d93a`; ethereum `0x52ea8e...cc21a2`; ethereum `0x5bb8e5...89a135`; ethereum `0x6dfbe3...d93b25`; ethereum `0xcac150...ef849d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

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
| [Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Mantle_SCs_Aug23(Public)(Liquid%20Staking%20Protocol).pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Mantle_Sep23(Public) (Oracle).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Mantle_Sep23(Public)%20(Oracle).pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [mantle-cmeth-audit-aug-2024(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/mantle-cmeth-audit-aug-2024(Public).pdf) | Hexens | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [mETH-Protocol-oct-25(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/mETH-Protocol-oct-25(Final).pdf) | Hexens | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Blocksec-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/Blocksec-11-25.pdf) | Blocksec | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Exvul-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/Exvul-11-25.pdf) | Exvul | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Hexens-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/Hexens-11-25.pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MixBytes-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/MixBytes-11-25.pdf) | MixBytes | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [blocksec.pdf](https://github.com/mantle-lsp/audits/blob/main/fixed-yield-vault/blocksec.pdf) | BlockSec | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [verilog.pdf](https://github.com/mantle-lsp/audits/blob/main/fixed-yield-vault/verilog.pdf) | Verilog | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Mantle_L2_ERC20_Token_Bridge_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_L2_ERC20_Token_Bridge_Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Mantle_LSP_L2_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_LSP_L2_Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Mantle_MDI_Quests_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_MDI_Quests_Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Mantle_Staking_Hub_Audit_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_Staking_Hub_Audit_Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x12be34...66b113`](./contracts/ethereum-1/0x12be34be067ebd201f6eaf78a861d90b2a66b113/) | DelayedWithdraw | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c17ea...c21e56`](./contracts/ethereum-1/0x1c17eab0a50931850f1f23fdbacbd0197bc21e56/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x919531...2c1d36`](./contracts/ethereum-1/0x919531146f9a25dfc161d5ab23b117feae2c1d36/) | PositionManagerNoVaultOwnable2StepWithShortcut | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x021180...06e2da`](./contracts/ethereum-1/0x021180a06aa65a7b5ff891b5c146fbdafc06e2da/) | PositionManagerOwnable2StepWithShortcut | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [4625] Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf
- [4626] Mantle_Sep23(Public) (Oracle).pdf
- [4627] mantle-cmeth-audit-aug-2024(Public).pdf
- [4628] mETH-Protocol-oct-25(Final).pdf
- [4629] Blocksec-11-25.pdf
- [4630] Exvul-11-25.pdf
- [4631] Hexens-11-25.pdf
- [4632] MixBytes-11-25.pdf
- [4633] blocksec.pdf
- [4634] verilog.pdf
- [4635] Mantle_L2_ERC20_Token_Bridge_Report.pdf
- [4636] Mantle_LSP_L2_Report.pdf
- [4637] Mantle_MDI_Quests_Report.pdf
- [4638] Mantle_Staking_Hub_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
