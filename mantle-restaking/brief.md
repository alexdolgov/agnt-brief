# Agentic Audit Brief: Mantle Restaking

⚠️ Lifecycle status: DECLINING - TVL dropped 62.0% over 90 days

## Project Overview

- Project: Mantle Restaking (`mantle-restaking`)
- Website: [https://www.methprotocol.xyz/](https://www.methprotocol.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:41.750Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 9 unique implementations (10 raw deployments)
- DeFi Llama TVL: $60,852,372.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Mantle Restaking is part of the mETH Protocol on Ethereum, centered on liquid staking and restaking products using mETH and cmETH. Users participate through Mantle's staking/restaking product surface while retaining liquid token exposure. Internal vault and position-management components such as BoringVault or PositionManager should be treated as implementation details only where their relationship to mETH/cmETH and the current deployed contract surface is independently verified.

### Architecture

The BoringVault holds user deposits and is managed by the PositionManagerNoVaultOwnable2StepWithShortcut, while multiple PositionManagerOwnable2StepWithShortcut contracts serve as governance modules. The DelayedWithdraw contract provides a secure withdrawal mechanism for the vault.

## Contract Surface Quality

- Indexed contracts: 33; live-surface contracts included: 10 (9 live, 1 unknown).
- Excluded by liveness: 21 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 5/10 live.
- Detected codebases: none
- Unverified dependencies: 10/43.

## Audit Coverage Summary

- Verified implementations audited: 5/9 (55.6%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 1
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 10
- Audits discovered: 13
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Staleness: 5 fresh, 2 aging, 5 stale, 1 unknown
- Tier 1 coverage: 22.2% (MixBytes)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hexens | Tier 2 | 5 | 55.6% | 2025-10 |
| MixBytes | Tier 1 | 2 | 22.2% | 2025-11 |
| Blocksec | Tier 2 | 1 | 11.1% | 2025-10 |
| Exvul | Tier 2 | 1 | 11.1% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DelayedWithdraw | operational_periphery | ethereum | n/a | [`0x12be34...66b113`](./contracts/ethereum-1/0x12be34be067ebd201f6eaf78a861d90b2a66b113/) | ✅ Audited |
| L1cmETHAdapter | adapter | ethereum | unit-25367 | [`0x4afa96...75e948`](./contracts/ethereum-1/0x4afa9620d0b79137383a7a9ab3477837d475e948/) | ✅ Audited |
| OracleQuorumManager | operational_periphery | ethereum | unit-25370 | [`0x92e56d...ea0d90`](./contracts/ethereum-1/0x92e56d2146d54d5aecb25ca36c89d027a6ea0d90/) | ✅ Audited |
| Staking | unknown | ethereum | unit-25371 | [`0xe3cbd0...489e8f`](./contracts/ethereum-1/0xe3cbd06d7dadb3f4e6557bab7edd924cd1489e8f/) | ✅ Audited |
| UnstakeRequestsManager | unknown | ethereum | unit-25365 | [`0x38fdf7...3fdcf9`](./contracts/ethereum-1/0x38fdf7b489316e03ed8754ad339cb5c4483fdcf9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DefaultCollateral | unknown | ethereum | n/a | [`0x475d3e...7c304a`](./contracts/ethereum-1/0x475d3eb031d250070b63fa145f0fcfc5d97c304a/) | ⚠️ Unaudited |
| ITBPositionDecoderAndSanitizer | unknown | ethereum | n/a | [`0xa72833...40d5eb`](./contracts/ethereum-1/0xa728337af7dd226b74b0b1546aa7dd54d340d5eb/) | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | ethereum | n/a | [`0xb6f7d3...1912b0`](./contracts/ethereum-1/0xb6f7d38e3eabb8f69210afc2212fe82e0f1912b0/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafe | governance | ethereum | unit-25368 | 2 deployments: ethereum [`0x4e59e7...aed40f`](./contracts/ethereum-1/0x4e59e778a0fb77fbb305637435c62faed9aed40f/); ethereum `0x849738...4c8203` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Mantle_SCs_Aug23(Public)(Liquid%20Staking%20Protocol).pdf) | Hexens | Audit | 2023-08 | stale | Direct | contract_name | 3 | high |
| [Mantle_Sep23(Public) (Oracle).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Mantle_Sep23(Public)%20(Oracle).pdf) | Hexens | Audit | 2023-10 | stale | Direct | contract_name | 0 | n/a |
| [mantle-cmeth-audit-aug-2024(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/mantle-cmeth-audit-aug-2024(Public).pdf) | Hexens | Audit | 2024-09 | aging | Direct | contract_name | 5 | high |
| [mETH-Protocol-oct-25(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/mETH-Protocol-oct-25(Final).pdf) | Hexens | Audit | 2025-10 | fresh | Direct | contract_name | 1 | high |
| [Blocksec-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/Blocksec-11-25.pdf) | Blocksec | Audit | 2025-10 | fresh | Direct | contract_name | 1 | high |
| [Exvul-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/Exvul-11-25.pdf) | Exvul | Audit | 2025-10 | fresh | Direct | contract_name | 1 | high |
| [Hexens-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/Hexens-11-25.pdf) | Hexens | Audit | 2025-10 | fresh | Direct | contract_name | 2 | high |
| [MixBytes-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/MixBytes-11-25.pdf) | MixBytes | Audit | 2025-11 | fresh | Direct | contract_name | 2 | high |
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
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=7
- Match method counts: extraction_exact=37

Zero-match audit list:

- [4626] Mantle_Sep23(Public) (Oracle).pdf
- [4633] blocksec.pdf
- [4635] Mantle_L2_ERC20_Token_Bridge_Report.pdf
- [4636] Mantle_LSP_L2_Report.pdf
- [4637] Mantle_MDI_Quests_Report.pdf
- [4638] Mantle_Staking_Hub_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
