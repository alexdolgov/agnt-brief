# Agentic Audit Brief: Swell

## Project Overview

- Project: Swell (`swell`)
- Generated: 2026-05-21T10:29:03.249Z
- Pipeline run: v2-pipeline-2026-05-21-b7e540-5727
- Chains: ethereum
- Contract surface: 96 logical contracts (112 raw addresses)
- On-chain TVL (included contracts): $83,067,918.26

## Audit Coverage Summary

- Audited logical contracts: 59/96 (61.5%)
- Raw deployed addresses: 112
- Unaudited contracts: 37
- Audits discovered: 16
- Scoreable audits (matched contracts): 16
- ASD (unaudited native TVL): $15,828,808.08

## Contract Surface

### native (73)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| ethereum | `0x009c9f...629655` | NFTDescriptor | token | n/a | no | none |
| ethereum | `0x02454d...6c8f78` | swEXIT | operational_periphery | n/a | yes | ethereum `0x48c11b...251663` |
| ethereum | `0x0a6e7b...b35676` | SwellToken | token | $14,939,176.98 | no | none |
| ethereum | `0x15a94d...8ba7b6` | Accountant | operational_periphery | n/a | yes | none |
| ethereum | `0x1bb44f...975bf3` | RoleManager | governance | n/a | yes | none |
| ethereum | `0x1da9ce...76ece1` | TellerWithMultiAssetSupport | core_logic | n/a | yes | none |
| ethereum | `0x2a41d5...92ea28` | DepositManager | core_logic | $0.00 | yes | ethereum `0x5e6342...9a4889`; ethereum `0xb3d9cf...5b8f39` |
| ethereum | `0x2d3b4b...0211a7` | swETH | token | $32,617,414.61 | yes | ethereum `0xf951e3...7ded78` |
| ethereum | `0x3334c0...5a25f7` | RepricingOracle | operational_periphery | n/a | yes | ethereum `0x289d60...2d2d71`; ethereum `0xd5a73c...d2e959` |
| ethereum | `0x342f0d...739d75` | CumulativeMerkleDrop | operational_periphery | n/a | yes | none |
| ethereum | `0x351622...11a7f4` | RepricingOracle | operational_periphery | n/a | yes | none |
| ethereum | `0x38956b...8d80a7` | DepositManager | core_logic | n/a | yes | none |
| ethereum | `0x3b32e9...d15c5d` | EigenLayerManager | governance | n/a | yes | ethereum `0xc94cff...6d0936` |
| ethereum | `0x411c78...df2755` | AccountantWithRateProviders | operational_periphery | n/a | yes | none |
| ethereum | `0x4195ed...b6bc56` | AccessControlManager | governance | n/a | yes | ethereum `0x52b5f5...8a7d11`; ethereum `0x625087...b95eac`; ethereum `0x796592...e3333f` |
| ethereum | `0x4796d9...4e2362` | RswETH | token | $33,142,108.85 | yes | ethereum `0xfae103...afa6c0` |
| ethereum | `0x48dacb...fb3825` | Accountant | operational_periphery | n/a | yes | none |
| ethereum | `0x4c86cb...493c22` | WithdrawLimitModule | operational_periphery | n/a | yes | none |
| ethereum | `0x527d6d...855d23` | AccessControlManager | governance | n/a | yes | none |
| ethereum | `0x584cd3...e7dae2` | SwBtcOFTAdapter | adapter | n/a | no | none |
| ethereum | `0x5bd444...b6c4f6` | ReleaseRegistry | registry | n/a | yes | none |
| ethereum | `0x5c6392...ed7b05` | SwETHProxyOFT | token | $159,021.97 | no | none |
| ethereum | `0x66e47e...4d831a` | BoringVault | core_logic | n/a | yes | none |
| ethereum | `0x677365...65e8af` | BlackPearl | unknown | n/a | no | none |
| ethereum | `0x685adb...160429` | TellerWithMultiAssetSupport | core_logic | n/a | yes | none |
| ethereum | `0x69fc70...4f50c0` | ManagerWithMerkleVerification | operational_periphery | n/a | yes | none |
| ethereum | `0x6bbf58...1b1a08` | AccountantWithRateProviders | operational_periphery | n/a | yes | none |
| ethereum | `0x6cea0a...e91e06` | ManagerWithMerkleVerification | operational_periphery | n/a | yes | none |
| ethereum | `0x6d8cc0...e8f872` | VaultAdapter | adapter | n/a | no | none |
| ethereum | `0x70f8ac...1da901` | ReleaseRegistry | registry | n/a | yes | none |
| ethereum | `0x728d1d...5d6977` | NodeOperatorRegistry | registry | n/a | yes | ethereum `0x46ddc3...1a1a1d`; ethereum `0xaae0b3...a1c524` |
| ethereum | `0x755a07...05cf85` | DelayedWithdraw | operational_periphery | n/a | yes | none |
| ethereum | `0x7e9793...5e65a2` | L1ERC20TokenBridge | operational_periphery | n/a | no | ethereum `0xecf337...d24121` |
| ethereum | `0x8041ba...e86ae3` | Proxy (impl: TokenizedStrategy) | core_logic | $470,047.39 | yes | proxy only (impl: TokenizedStrategy) |
| ethereum | `0x805c6d...fa55b8` | DelayedWithdraw | operational_periphery | n/a | yes | none |
| ethereum | `0x8413e6...f4d6af` | RoleManager | governance | n/a | yes | none |
| ethereum | `0x85befd...25d47a` | RepricingOracle | operational_periphery | n/a | yes | none |
| ethereum | `0x88b96f...88603a` | Registry | registry | n/a | yes | none |
| ethereum | `0x939f1c...73bf8c` | RegistryFactory | registry | n/a | yes | none |
| ethereum | `0x97d8dd...b5beaf` | NodeOperatorRegistry | registry | n/a | yes | none |
| ethereum | `0x9b07fb...33f562` | SwETHOFTAdapter | adapter | n/a | no | none |
| ethereum | `0x9d663f...68f377` | RolesAuthority | governance | n/a | no | none |
| ethereum | `0x9ed153...775f22` | BoringVault | core_logic | $30.99 | yes | none |
| ethereum | `0xa1a325...b4e7c1` | RoleManager | governance | n/a | yes | none |
| ethereum | `0xa2ed40...f17216` | WithdrawLimitModule | operational_periphery | n/a | yes | none |
| ethereum | `0xa3ff11...21a538` | Harvester | operational_periphery | n/a | yes | none |
| ethereum | `0xa41902...605981` | OracleAdapter | operational_periphery | n/a | no | none |
| ethereum | `0xa5bd95...2aa3e2` | SwBtcOFTAdapter | adapter | n/a | no | none |
| ethereum | `0xaa68ca...1875e8` | SwETHSY | token | $730,609.12 | no | none |
| ethereum | `0xb68b12...df17a0` | StakerProxy | core_logic | n/a | yes | ethereum `0xe19466...06e8ae` |
| ethereum | `0xb987fa...370df6` | DepositManager | core_logic | n/a | yes | none |
| ethereum | `0xba8290...c3073b` | Timelock | governance | n/a | no | none |
| ethereum | `0xbb7b99...593e64` | AccessControlManager | governance | n/a | yes | none |
| ethereum | `0xbc011a...91cf18` | AccessControlManager | governance | n/a | yes | none |
| ethereum | `0xbd6a5e...e06479` | RswEXIT | operational_periphery | n/a | yes | ethereum `0x58749c...56f064` |
| ethereum | `0xbd9fc4...2ade0d` | Zap | adapter | n/a | yes | none |
| ethereum | `0xc2a558...9f182f` | Keeper | operational_periphery | n/a | yes | none |
| ethereum | `0xc9f6d9...9caf9b` | SWNFTv3 | token | n/a | no | none |
| ethereum | `0xca2df2...deeed4` | Timelock | governance | n/a | no | none |
| ethereum | `0xcb6ea7...27b96b` | AuraSwEthBbAWethSYV2 | token | n/a | no | none |
| ethereum | `0xcd284a...38785c` | RswETH | token | n/a | yes | none |
| ethereum | `0xce95ba...affbfc` | swETH | token | n/a | yes | none |
| ethereum | `0xd90541...d5b4a1` | RoleManager | governance | n/a | yes | none |
| ethereum | `0xd98f5c...c27b5e` | SwETHOFTAdapter | adapter | n/a | no | none |
| ethereum | `0xdda46b...81a72f` | swETH | token | n/a | yes | none |
| ethereum | `0xe5fcbd...2c5f91` | Registry | registry | n/a | yes | none |
| ethereum | `0xe91302...f5f97e` | RepricingOracle | operational_periphery | n/a | yes | none |
| ethereum | `0xea6c9a...e0e68a` | NodeOperatorRegistry | registry | n/a | yes | none |
| ethereum | `0xec6de7...df773c` | DelayedWithdraw | operational_periphery | n/a | yes | none |
| ethereum | `0xeee620...f4524b` | DepositManager | core_logic | n/a | yes | none |
| ethereum | `0xf00e70...c28977` | RepricingOracle | operational_periphery | n/a | yes | none |
| ethereum | `0xf807bc...64e5a8` | NodeOperatorRegistry | registry | n/a | yes | none |
| ethereum | `0xff22ea...cfb077` | RegistryFactory | registry | n/a | yes | none |

### upstream (8)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| ethereum | `0x093410...9d85b7` | SwellOFTAdapter | adapter | n/a | no | none |
| ethereum | `0x2c1b34...6f94e2` | OFTAdapterSwETH | adapter | n/a | no | none |
| ethereum | `0x358d94...acb7b6` | Yearn V3 Vault | core_logic | $156,185.83 | no | none |
| ethereum | `0x428cda...b2ac58` | RSwellOFTAdapter | adapter | n/a | no | none |
| ethereum | `0x8db235...864dde` | Yearn V3 Vault | core_logic | $470,047.39 | no | none |
| ethereum | `0x975304...5eaa50` | TokenizedStrategy | core_logic | n/a | yes | none |
| ethereum | `0x981771...b17bb0` | Yearn Vault Factory | registry | n/a | no | none |
| ethereum | `0xd684c1...c41eda` | SymbioticAdapter | adapter | n/a | no | none |

### standard_library (12)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| ethereum | `0x05fae2...d1f219` | RolesAuthority | governance | n/a | no | none |
| ethereum | `0x1f5ddd...d3a016` | RolesAuthority | governance | n/a | no | none |
| ethereum | `0x25eaf5...5b8846` | ProxyAdmin | governance | n/a | no | none |
| ethereum | `0x2a6a2b...c0caf8` | Proxy (impl: SymbioticAdapter) | adapter | n/a | no | proxy only (impl: SymbioticAdapter) |
| ethereum | `0x38d43a...31d774` | SimpleStakingERC20 | token | $227,618.61 | yes | none |
| ethereum | `0x674822...0931a9` | ProxyAdmin | governance | n/a | no | none |
| ethereum | `0x69dda9...41836a` | Proxy (impl: SymbioticAdapter) | adapter | n/a | no | proxy only (impl: SymbioticAdapter) |
| ethereum | `0x8d0b4d...ee7258` | Proxy (impl: EigenPod) | core_logic | n/a | no | proxy only (impl: EigenPod) |
| ethereum | `0x95e8ba...151ef6` | ProxyAdmin | governance | n/a | no | none |
| ethereum | `0x9e07af...3fdae7` | Proxy (impl: SymbioticAdapter) | adapter | n/a | no | proxy only (impl: SymbioticAdapter) |
| ethereum | `0xa9bd69...0558d6` | RolesAuthority | governance | n/a | no | none |
| ethereum | `0xd750b8...9bfd14` | ProxyAdmin | governance | n/a | no | none |

### needs_review (3)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| ethereum | `0x2db758...efa4dd` | RolesAuthority | governance | n/a | no | none |
| ethereum | `0x473f0a...cf0e05` | Proxy (impl: TokenizedStrategy) | core_logic | $155,656.53 | yes | proxy only (impl: TokenizedStrategy) |
| ethereum | `0xa35f12...240a14` | UnnamedContract | unknown | n/a | no | none |

## Audit Inventory

| Audit | Auditor | Date | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---:|---|
| ChainSecurity_Swell_swBTC_audit.pdf (also discovered via alternate URL) | ChainSecurity | 2024-08 | Direct | UNKNOWN | 21 | high |
| NM_0273_SWELL_BTC_LRT.pdf (also discovered via alternate URL) | unknown | 2024-08 | Direct | UNKNOWN | 11 | high |
| 0xmacro-boring-vault-arctic-0.pdf | 0xMacro | 2024-03 | Direct | UNKNOWN | 8 | high |
| pashov-boring-vault.pdf | Pashov Audit Group | 2024-07 | Direct | UNKNOWN | 2 | high |
| spearbit-boring-vault-arctic-0.pdf | Spearbit | 2024-04 | Direct | UNKNOWN | 8 | high |
| here | Sigma Prime | 2024-01 | Direct | UNKNOWN | 29 | high |
| 2024-02-23-cyfrin-swell-v2.0.pdf | Cyfrin | 2024-02 | Direct | UNKNOWN | 32 | high |
| Sigma_Prime_Swell_Barracuda_Upgrade_Security_Assessment_Report_v2.pdf | Sigma Prime | 2024-02 | Direct | UNKNOWN | 26 | high |
| Swell-audit-jan-2024(Public).pdf | Unknown | 2024-02 | Direct | UNKNOWN | 32 | high |
| NM0231_FINAL_SWELL.pdf | Barracude | 2024-06 | Direct | UNKNOWN | 13 | high |
| Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf | Sigma Prime | 2024-07 | Direct | UNKNOWN | 28 | high |
| Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report.pdf | Sigma Prime | 2024-01 | Direct | UNKNOWN | 29 | high |
| Sigma_Prime_Swell_Network_Security_Assessment_Report_v2_1.pdf | Sigma Prime | 2023-04 | Direct | UNKNOWN | 24 | high |
| Swell Staking Security Audit Report.pdf | yAudit | 2024-04 | Direct | UNKNOWN | 2 | high |
| swell-l2-pre-deposit-audit-april-2024 (Public).pdf | unknown | 2024-04 | Direct | UNKNOWN | 2 | high |
| swell-mar24(Public).pdf | unknown | 2024-03 | Direct | UNKNOWN | 1 | high |

## Coverage Gaps

Unaudited native contracts ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x0a6e7b...b35676` | SwellToken | token | $14,939,176.98 | Native contract with $14,939,176.98 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaa68ca...1875e8` | SwETHSY | token | $730,609.12 | Native contract with $730,609.12 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5c6392...ed7b05` | SwETHProxyOFT | token | $159,021.97 | Native contract with $159,021.97 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x009c9f...629655` | NFTDescriptor | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x584cd3...e7dae2` | SwBtcOFTAdapter | adapter | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x677365...65e8af` | BlackPearl | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6d8cc0...e8f872` | VaultAdapter | adapter | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7e9793...5e65a2` | L1ERC20TokenBridge | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9b07fb...33f562` | SwETHOFTAdapter | adapter | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9d663f...68f377` | RolesAuthority | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa41902...605981` | OracleAdapter | operational_periphery | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa5bd95...2aa3e2` | SwBtcOFTAdapter | adapter | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xba8290...c3073b` | Timelock | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc9f6d9...9caf9b` | SWNFTv3 | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xca2df2...deeed4` | Timelock | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcb6ea7...27b96b` | AuraSwEthBbAWethSYV2 | token | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd98f5c...c27b5e` | SwETHOFTAdapter | adapter | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 73 |
| upstream | 8 |
| standard_library | 12 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=16
- Match method counts: extraction_exact=300

Fork inheritance lineage and inherited audits are included when available.
