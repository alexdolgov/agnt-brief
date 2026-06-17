# Agentic Audit Brief: deBridge

⚠️ Lifecycle status: DECLINING - TVL dropped 85.5% over 90 days

## Project Overview

- Project: deBridge (`debridge`)
- Website: [https://app.debridge.com](https://app.debridge.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:37.607Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, bsc, cronos, ethereum, hyperliquid, linea, optimism, polygon, sei
- Contract surface: 60 unique implementations (60 raw deployments)
- DeFi Llama TVL: $2,784,772.14
- On-chain TVL (included contracts): $263,879,740.52
- TVL by chain: Bsc $263,879,740.52

## Project Description

deBridge is a cross-chain interoperability protocol that enables users to transfer assets and arbitrary messages between multiple blockchains. It provides a decentralized bridge infrastructure with liquidity networks and validation mechanisms to facilitate secure and efficient cross-chain transactions.

### Architecture

The EVM Bridge Core provides foundational cross-chain messaging and token infrastructure, which the DLN Liquidity Network leverages for routing and executing user swaps. Both families share common proxy patterns and rely on SignatureVerifier for validation, while the Subscription module operates independently for recurring payments.

## Contract Surface Quality

- Indexed contracts: 435; live-surface contracts included: 60 (50 live, 10 unknown).
- Excluded by liveness: 259 inactive, 116 singleton, 0 uninitialized.
- Deployment units: 44/112 live.
- Detected codebases: none
- Unverified dependencies: 1/4.

## Audit Coverage Summary

- Verified implementations audited: 23/47 (48.9%)
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 60
- Raw deployments: 60
- Audits discovered: 32
- Scoreable audits (matched contracts): 13
- ASD (verified + unaudited TVL): $263,879,740.52
- Latest audit: 2024-11 (aging)
- Staleness: 0 fresh, 5 aging, 27 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $263,879,740.52 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 22 | 46.8% | 2024-11 |
| Halborn | Tier 2 | 8 | 17.0% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CrosschainForwarder | periphery | ethereum | unit-23717 | [`0xc31fc9...a23c47`](./contracts/ethereum-1/0xc31fc94f3fd088ee53ac915d6e8a14ff25a23c47/) | ✅ Audited |
| DeBridgeGate | operational_periphery | ethereum | unit-23708 | [`0x43de2d...8398aa`](./contracts/ethereum-1/0x43de2d77bf8027e25dbd179b491e8d64f38398aa/) | ✅ Audited |
| DeBridgeGate | operational_periphery | bsc | unit-23733 | [`0x43de2d...8398aa`](./contracts/bsc-56/0x43de2d77bf8027e25dbd179b491e8d64f38398aa/) | ✅ Audited |
| DeBridgeGate | operational_periphery | polygon | unit-23745 | [`0x43de2d...8398aa`](./contracts/polygon-137/0x43de2d77bf8027e25dbd179b491e8d64f38398aa/) | ✅ Audited |
| DeBridgeGate | operational_periphery | arbitrum | unit-23792 | [`0x43de2d...8398aa`](./contracts/arbitrum-42161/0x43de2d77bf8027e25dbd179b491e8d64f38398aa/) | ✅ Audited |
| DeBridgeGate | operational_periphery | avalanche | unit-23803 | [`0x43de2d...8398aa`](./contracts/avalanche-43114/0x43de2d77bf8027e25dbd179b491e8d64f38398aa/) | ✅ Audited |
| DeBridgeToken | operational_periphery | base | n/a | [`0x0e4add...d5504d`](./contracts/base-8453/0x0e4add4dc86ae1aa0fa43bd7e6a9fb8be2d5504d/) | ✅ Audited |
| DlnDestination | unknown | ethereum | unit-23718 | [`0xe7351f...d6dd7f`](./contracts/ethereum-1/0xe7351fd770a37282b91d153ee690b63579d6dd7f/) | ✅ Audited |
| DlnDestination | unknown | optimism | unit-23728 | [`0xe7351f...d6dd7f`](./contracts/optimism-10/0xe7351fd770a37282b91d153ee690b63579d6dd7f/) | ✅ Audited |
| DlnDestination | unknown | bsc | unit-23742 | [`0xe7351f...d6dd7f`](./contracts/bsc-56/0xe7351fd770a37282b91d153ee690b63579d6dd7f/) | ✅ Audited |
| DlnDestination | unknown | polygon | unit-23755 | [`0xe7351f...d6dd7f`](./contracts/polygon-137/0xe7351fd770a37282b91d153ee690b63579d6dd7f/) | ✅ Audited |
| DlnDestination | unknown | base | unit-23789 | [`0xe7351f...d6dd7f`](./contracts/base-8453/0xe7351fd770a37282b91d153ee690b63579d6dd7f/) | ✅ Audited |
| DlnDestination | unknown | arbitrum | unit-23801 | [`0xe7351f...d6dd7f`](./contracts/arbitrum-42161/0xe7351fd770a37282b91d153ee690b63579d6dd7f/) | ✅ Audited |
| DlnDestination | unknown | linea | unit-23816 | [`0xe7351f...d6dd7f`](./contracts/linea-59144/0xe7351fd770a37282b91d153ee690b63579d6dd7f/) | ✅ Audited |
| DlnSource | unknown | ethereum | unit-23719 | [`0xef4fb2...30eb66`](./contracts/ethereum-1/0xef4fb24ad0916217251f553c0596f8edc630eb66/) | ✅ Audited |
| DlnSource | unknown | optimism | unit-23729 | [`0xef4fb2...30eb66`](./contracts/optimism-10/0xef4fb24ad0916217251f553c0596f8edc630eb66/) | ✅ Audited |
| DlnSource | unknown | bsc | unit-23743 | [`0xef4fb2...30eb66`](./contracts/bsc-56/0xef4fb24ad0916217251f553c0596f8edc630eb66/) | ✅ Audited |
| DlnSource | unknown | polygon | unit-23756 | [`0xef4fb2...30eb66`](./contracts/polygon-137/0xef4fb24ad0916217251f553c0596f8edc630eb66/) | ✅ Audited |
| DlnSource | unknown | sei | n/a | [`0x2041cc...745973`](./contracts/sei-1329/0x2041cc32792884323ac519e3f9fd2802d6745973/) | ✅ Audited |
| DlnSource | unknown | base | unit-23790 | [`0xef4fb2...30eb66`](./contracts/base-8453/0xef4fb24ad0916217251f553c0596f8edc630eb66/) | ✅ Audited |
| DlnSource | unknown | arbitrum | unit-23802 | [`0xef4fb2...30eb66`](./contracts/arbitrum-42161/0xef4fb24ad0916217251f553c0596f8edc630eb66/) | ✅ Audited |
| DlnSource | unknown | linea | unit-23817 | [`0xef4fb2...30eb66`](./contracts/linea-59144/0xef4fb24ad0916217251f553c0596f8edc630eb66/) | ✅ Audited |
| SimpleFeeProxy | unknown | ethereum | unit-23716 | [`0xc2bac0...623636`](./contracts/ethereum-1/0xc2bac0db5b18b0c3225581ba14bd0b448c623636/) | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BEP20TokenImplementation | token | bsc | unit-23730 (12 proxies) | [`0xba2ae4...744c43`](./contracts/bsc-56/0xba2ae424d960c26247dd6c32edc70b295c744c43/) | ⚠️ Unaudited |
| CrosschainForwarderProxy | periphery | optimism | unit-23723 | [`0x663dc1...83c251`](./contracts/optimism-10/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | ⚠️ Unaudited |
| CrosschainForwarderProxy | periphery | linea | unit-23811 | [`0x663dc1...83c251`](./contracts/linea-59144/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | ⚠️ Unaudited |
| DeBridgeRouter | operational_periphery | ethereum | unit-23710 | [`0x663dc1...83c251`](./contracts/ethereum-1/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | ⚠️ Unaudited |
| DeBridgeRouter | operational_periphery | bsc | unit-23735 | [`0x663dc1...83c251`](./contracts/bsc-56/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | ⚠️ Unaudited |
| DeBridgeRouter | operational_periphery | base | unit-23783 | [`0x663dc1...83c251`](./contracts/base-8453/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | unit-23715 | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| ProxyAdmin | governance | base | n/a | [`0x43de2d...8398aa`](./contracts/base-8453/0x43de2d77bf8027e25dbd179b491e8d64f38398aa/) | ⚠️ Unaudited |
| Subscription | unknown | ethereum | unit-23706 | [`0x2328ee...0c91a7`](./contracts/ethereum-1/0x2328ee20fa271073328dc94e52dd5b61aa0c91a7/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | optimism | unit-23727 | [`0xc2bac0...623636`](./contracts/optimism-10/0xc2bac0db5b18b0c3225581ba14bd0b448c623636/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | unit-23734 | [`0x61ef2e...8f6cf9`](./contracts/bsc-56/0x61ef2e01e603aeb5cd96f9ec9ae76cc6a68f6cf9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | unit-23740 | [`0xc2bac0...623636`](./contracts/bsc-56/0xc2bac0db5b18b0c3225581ba14bd0b448c623636/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | unit-23747 | [`0x663dc1...83c251`](./contracts/polygon-137/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | unit-23752 | [`0xc2bac0...623636`](./contracts/polygon-137/0xc2bac0db5b18b0c3225581ba14bd0b448c623636/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | hyperliquid | unit-23758 | [`0x663dc1...83c251`](./contracts/hyperliquid-999/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | hyperliquid | unit-23763 | [`0xc2bac0...623636`](./contracts/hyperliquid-999/0xc2bac0db5b18b0c3225581ba14bd0b448c623636/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sei | unit-23770 | [`0x663dc1...83c251`](./contracts/sei-1329/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sei | unit-23775 | [`0xc2bac0...623636`](./contracts/sei-1329/0xc2bac0db5b18b0c3225581ba14bd0b448c623636/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | base | unit-23788 | [`0xc2bac0...623636`](./contracts/base-8453/0xc2bac0db5b18b0c3225581ba14bd0b448c623636/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-23794 | [`0x663dc1...83c251`](./contracts/arbitrum-42161/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-23799 | [`0xc2bac0...623636`](./contracts/arbitrum-42161/0xc2bac0db5b18b0c3225581ba14bd0b448c623636/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | unit-23807 | [`0xc2bac0...623636`](./contracts/avalanche-43114/0xc2bac0db5b18b0c3225581ba14bd0b448c623636/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | linea | unit-23815 | [`0xc2bac0...623636`](./contracts/linea-59144/0xc2bac0db5b18b0c3225581ba14bd0b448c623636/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xd8da6b...a96045` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x05bd82...10ebea` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x43de2d...8398aa` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x663dc1...83c251` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x8244d6...4ea464` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x8a0c79...28a824` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x949b3b...9c8a8c` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xc1656b...e5bcbf` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xe7351f...d6dd7f` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xe93356...cb624a` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xef4fb2...30eb66` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc1656b...e5bcbf` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x62a8c4...db27dc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CrosschainForwarder Allowances Audit.pdf](https://github.com/debridge-finance/debridge-security/blob/master/CrosschainForwarder%20Allowances%20Audit.pdf) | unknown | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |
| [DLN Solana Contracts _ SSC.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DLN%20Solana%20Contracts%20_%20SSC.pdf) | unknown | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [DLN Solana Release Assessment Report.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DLN%20Solana%20Release%20Assessment%20Report.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [DLN-EVM_Upgrades_SSC.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DLN-EVM_Upgrades_SSC.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | 15 | high |
| [DeBridgde_Solana_Events_Reader_Rust_Program_Security_Audit_Report.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridgde_Solana_Events_Reader_Rust_Program_Security_Audit_Report.pdf) | unknown | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [DeBridge_Airdrop_Contract _ SSC.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_Airdrop_Contract%20_%20SSC.pdf) | unknown | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2022-11 | stale | Direct | contract_name | 7 | high |
| [DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 15 | high |
| [DeBridge_DLN_EVM_Contracts_Smart_Contract_Security_Audit_Report.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_DLN_EVM_Contracts_Smart_Contract_Security_Audit_Report.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 15 | high |
| [DeBridge_DLN_External_Call_Smart_Contract_Security_Assessment_Report.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_DLN_External_Call_Smart_Contract_Security_Assessment_Report.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 15 | high |
| [DeBridge_DLN_Taker_Code_Security_Assessment_Report_Halborn_Final.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_DLN_Taker_Code_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [DeBridge_EVM_to_Solana_Serializer_Smart_Contract_Security_Assessment.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_EVM_to_Solana_Serializer_Smart_Contract_Security_Assessment.pdf) | unknown | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [DeBridge_Solana_Contracts_Solana_Program_Security_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_Solana_Contracts_Solana_Program_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-06 | stale | Direct | contract_name | 7 | high |
| [Debridge_DLN_Solana_Program_Security_Audit_Report_Halborn_Final.pdf](https://github.com/debridge-finance/debridge-security/blob/master/Debridge_DLN_Solana_Program_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [Debridge_Solana_Event_Reader_Whitebox_Pentest_Report_Halborn_Final.pdf](https://github.com/debridge-finance/debridge-security/blob/master/Debridge_Solana_Event_Reader_Whitebox_Pentest_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [Debridge_extcall_Solana_Program_Security_Assessment_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/Debridge_extcall_Solana_Program_Security_Assessment_Report_Halborn.pdf) | Halborn | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [Debridge_solana_tx_parser_Whitebox_Pentest_Report_Halborn_Final.pdf](https://github.com/debridge-finance/debridge-security/blob/master/Debridge_solana_tx_parser_Whitebox_Pentest_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [deBridge Core Protocol Solana Contracts _ SSC.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge%20Core%20Protocol%20Solana%20Contracts%20_%20SSC.pdf) | unknown | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [deBridge_Cloudflare_report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Cloudflare_report_Halborn.pdf) | Halborn | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [deBridge_Cross_Chain_Forwarder_Update_Smart_Contract_Security_Audit.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Cross_Chain_Forwarder_Update_Smart_Contract_Security_Audit.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | 1 | high |
| [deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2022-04 | stale | Direct | contract_name | 1 | high |
| [deBridge_FrontEnd_WebApp_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_FrontEnd_WebApp_Audit_Report_Halborn.pdf) | Halborn | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [deBridge_Main_Pre_Release_Smart_Contract_Security_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Main_Pre_Release_Smart_Contract_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2022-02 | stale | Direct | contract_name | 7 | high |
| [deBridge_Main_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Main_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf) | Halborn | Audit | 2021-09 | stale | Direct | contract_name | 6 | high |
| [deBridge_Main_Smart_Contract_Security_Audit_Report_ZOKYO.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Main_Smart_Contract_Security_Audit_Report_ZOKYO.pdf) | unknown | Audit | 2021-10 | stale | Direct | contract_name | 6 | high |
| [deBridge_Node_Security_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Node_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [deBridge_Solana_Multisig_Solana_Program_Security_Audit_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Solana_Multisig_Solana_Program_Security_Audit_Halborn.pdf) | Halborn | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [deBridge_Solana_Security_Audit_Ackee.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Solana_Security_Audit_Ackee.pdf) | Ackee Blockchain | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [deBridge_Solana_Security_Audit_Neodyme.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Solana_Security_Audit_Neodyme.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [debridge_backend_pentest_report_halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/debridge_backend_pentest_report_halborn.pdf) | Halborn | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [debridge_solidity_smart_contract_second_audit_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/debridge_solidity_smart_contract_second_audit_Halborn.pdf) | Halborn | Audit | 2022-04 | stale | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xba2ae4...744c43`](./contracts/bsc-56/0xba2ae424d960c26247dd6c32edc70b295c744c43/) | BEP20TokenImplementation | token | $263,879,740.52 | Verified native implementation with $263,879,740.52 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x663dc1...83c251`](./contracts/linea-59144/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | CrosschainForwarderProxy | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x663dc1...83c251`](./contracts/base-8453/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | DeBridgeRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2328ee...0c91a7`](./contracts/ethereum-1/0x2328ee20fa271073328dc94e52dd5b61aa0c91a7/) | Subscription | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 2 |
| standard_library | 29 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 19
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=13
- Match method counts: extraction_exact=940

Zero-match audit list:

- [9998] DLN Solana Contracts _ SSC.pdf
- [9999] DLN Solana Release Assessment Report.pdf
- [10001] DeBridgde_Solana_Events_Reader_Rust_Program_Security_Audit_Report.pdf
- [10002] DeBridge_Airdrop_Contract _ SSC.pdf
- [10007] DeBridge_DLN_Taker_Code_Security_Assessment_Report_Halborn_Final.pdf
- [10008] DeBridge_EVM_to_Solana_Serializer_Smart_Contract_Security_Assessment.pdf
- [10009] DeBridge_Solana_Contracts_Solana_Program_Security_Audit_Report_Halborn.pdf
- [10011] Debridge_DLN_Solana_Program_Security_Audit_Report_Halborn_Final.pdf
- [10012] Debridge_Solana_Event_Reader_Whitebox_Pentest_Report_Halborn_Final.pdf
- [10013] Debridge_extcall_Solana_Program_Security_Assessment_Report_Halborn.pdf
- [10014] Debridge_solana_tx_parser_Whitebox_Pentest_Report_Halborn_Final.pdf
- [10016] deBridge Core Protocol Solana Contracts _ SSC.pdf
- [10017] deBridge_Cloudflare_report_Halborn.pdf
- [10020] deBridge_FrontEnd_WebApp_Audit_Report_Halborn.pdf
- [10024] deBridge_Node_Security_Audit_Report_Halborn.pdf
- [10025] deBridge_Solana_Multisig_Solana_Program_Security_Audit_Halborn.pdf
- [10026] deBridge_Solana_Security_Audit_Ackee.pdf
- [10027] deBridge_Solana_Security_Audit_Neodyme.pdf
- [10028] debridge_backend_pentest_report_halborn.pdf

Fork inheritance lineage and inherited audits are included when available.
