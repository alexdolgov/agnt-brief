# Agentic Audit Brief: Swell Network

## Project Overview

- Project: Swell Network (`swell`)
- Generated: 2026-05-19T21:44:51.510Z
- Pipeline run: unknown
- Chains: ethereum
- Contract surface: 76 logical contracts (76 raw addresses)
- On-chain TVL (included contracts): n/a

## Audit Coverage Summary

- Audited logical contracts: 41/76 (53.9%)
- Raw deployed addresses: 76
- Unaudited contracts: 35
- Audits discovered: 18
- Scoreable audits (matched contracts): 11
- ASD (unaudited native TVL): n/a

## Contract Surface

### native (49)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| ethereum | `0x009c9f...629655` | NFTDescriptor | unknown | n/a | no | none |
| ethereum | `0x02454d...6c8f78` | swEXIT | unknown | n/a | yes | none |
| ethereum | `0x0a6e7b...b35676` | SwellToken | unknown | n/a | no | none |
| ethereum | `0x2a41d5...92ea28` | DepositManager | unknown | n/a | yes | none |
| ethereum | `0x2d3b4b...0211a7` | swETH | unknown | n/a | yes | none |
| ethereum | `0x3334c0...5a25f7` | RepricingOracle | unknown | n/a | yes | none |
| ethereum | `0x342f0d...739d75` | CumulativeMerkleDrop | unknown | n/a | no | none |
| ethereum | `0x351622...11a7f4` | RepricingOracle | unknown | n/a | yes | none |
| ethereum | `0x38956b...8d80a7` | DepositManager | unknown | n/a | yes | none |
| ethereum | `0x3b32e9...d15c5d` | EigenLayerManager | unknown | n/a | yes | none |
| ethereum | `0x411c78...df2755` | AccountantWithRateProviders | unknown | n/a | yes | none |
| ethereum | `0x4195ed...b6bc56` | AccessControlManager | unknown | n/a | yes | none |
| ethereum | `0x4796d9...4e2362` | RswETH | unknown | n/a | yes | none |
| ethereum | `0x527d6d...855d23` | AccessControlManager | unknown | n/a | yes | none |
| ethereum | `0x584cd3...e7dae2` | SwBtcOFTAdapter | unknown | n/a | no | none |
| ethereum | `0x677365...65e8af` | BlackPearl | unknown | n/a | no | none |
| ethereum | `0x685adb...160429` | TellerWithMultiAssetSupport | unknown | n/a | yes | none |
| ethereum | `0x69fc70...4f50c0` | ManagerWithMerkleVerification | unknown | n/a | yes | none |
| ethereum | `0x6d8cc0...e8f872` | VaultAdapter | unknown | n/a | no | none |
| ethereum | `0x728d1d...5d6977` | NodeOperatorRegistry | unknown | n/a | yes | none |
| ethereum | `0x85befd...25d47a` | RepricingOracle | unknown | n/a | yes | none |
| ethereum | `0x97d8dd...b5beaf` | NodeOperatorRegistry | unknown | n/a | yes | none |
| ethereum | `0x9b07fb...33f562` | SwETHOFTAdapter | unknown | n/a | no | none |
| ethereum | `0x9ed153...775f22` | BoringVault | unknown | n/a | yes | none |
| ethereum | `0xa35f12...240a14` | UnnamedContract | unknown | n/a | no | none |
| ethereum | `0xa3ff11...21a538` | Harvester | unknown | n/a | no | none |
| ethereum | `0xa41902...605981` | OracleAdapter | unknown | n/a | no | none |
| ethereum | `0xa5bd95...2aa3e2` | SwBtcOFTAdapter | unknown | n/a | no | none |
| ethereum | `0xa9bd69...0558d6` | RolesAuthority | unknown | n/a | no | none |
| ethereum | `0xaa68ca...1875e8` | SwETHSY | unknown | n/a | no | none |
| ethereum | `0xb68b12...df17a0` | StakerProxy | unknown | n/a | yes | none |
| ethereum | `0xb987fa...370df6` | DepositManager | unknown | n/a | yes | none |
| ethereum | `0xba8290...c3073b` | Timelock | unknown | n/a | no | none |
| ethereum | `0xbb7b99...593e64` | AccessControlManager | unknown | n/a | yes | none |
| ethereum | `0xbc011a...91cf18` | AccessControlManager | unknown | n/a | yes | none |
| ethereum | `0xbd6a5e...e06479` | RswEXIT | unknown | n/a | yes | none |
| ethereum | `0xbd9fc4...2ade0d` | Zap | unknown | n/a | yes | none |
| ethereum | `0xc2a558...9f182f` | Keeper | unknown | n/a | yes | none |
| ethereum | `0xc9f6d9...9caf9b` | SWNFTv3 | unknown | n/a | no | none |
| ethereum | `0xca2df2...deeed4` | Timelock | unknown | n/a | no | none |
| ethereum | `0xcd284a...38785c` | RswETH | unknown | n/a | yes | none |
| ethereum | `0xce95ba...affbfc` | swETH | unknown | n/a | yes | none |
| ethereum | `0xd98f5c...c27b5e` | SwETHOFTAdapter | unknown | n/a | no | none |
| ethereum | `0xdda46b...81a72f` | swETH | unknown | n/a | yes | none |
| ethereum | `0xe91302...f5f97e` | RepricingOracle | unknown | n/a | yes | none |
| ethereum | `0xea6c9a...e0e68a` | NodeOperatorRegistry | unknown | n/a | yes | none |
| ethereum | `0xeee620...f4524b` | DepositManager | unknown | n/a | yes | none |
| ethereum | `0xf00e70...c28977` | RepricingOracle | unknown | n/a | yes | none |
| ethereum | `0xf807bc...64e5a8` | NodeOperatorRegistry | unknown | n/a | yes | none |

### upstream (12)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| ethereum | `0x093410...9d85b7` | SwellOFTAdapter | unknown | n/a | no | none |
| ethereum | `0x2c1b34...6f94e2` | OFTAdapterSwETH | unknown | n/a | no | none |
| ethereum | `0x428cda...b2ac58` | RSwellOFTAdapter | unknown | n/a | no | none |
| ethereum | `0x5bd444...b6c4f6` | ReleaseRegistry | unknown | n/a | yes | none |
| ethereum | `0x5c6392...ed7b05` | SwETHProxyOFT | unknown | n/a | no | none |
| ethereum | `0x8db235...864dde` | Yearn V3 Vault | unknown | n/a | no | none |
| ethereum | `0x939f1c...73bf8c` | RegistryFactory | unknown | n/a | yes | none |
| ethereum | `0x981771...b17bb0` | Yearn Vault Factory | unknown | n/a | no | none |
| ethereum | `0xcb6ea7...27b96b` | AuraSwEthBbAWethSYV2 | unknown | n/a | no | none |
| ethereum | `0xd684c1...c41eda` | SymbioticAdapter | unknown | n/a | no | none |
| ethereum | `0xe5fcbd...2c5f91` | Registry | unknown | n/a | yes | none |
| ethereum | `0xecf337...d24121` | Proxy (impl: L1ERC20TokenBridge) | unknown | n/a | no | proxy only (impl: L1ERC20TokenBridge) |

### standard_library (10)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| ethereum | `0x1f5ddd...d3a016` | RolesAuthority | unknown | n/a | no | none |
| ethereum | `0x25eaf5...5b8846` | ProxyAdmin | unknown | n/a | no | none |
| ethereum | `0x2a6a2b...c0caf8` | Proxy (impl: SymbioticAdapter) | unknown | n/a | no | proxy only (impl: SymbioticAdapter) |
| ethereum | `0x38d43a...31d774` | SimpleStakingERC20 | unknown | n/a | yes | none |
| ethereum | `0x674822...0931a9` | ProxyAdmin | unknown | n/a | no | none |
| ethereum | `0x69dda9...41836a` | Proxy (impl: SymbioticAdapter) | unknown | n/a | no | proxy only (impl: SymbioticAdapter) |
| ethereum | `0x8d0b4d...ee7258` | Proxy (impl: EigenPod) | unknown | n/a | no | proxy only (impl: EigenPod) |
| ethereum | `0x95e8ba...151ef6` | ProxyAdmin | unknown | n/a | no | none |
| ethereum | `0x9e07af...3fdae7` | Proxy (impl: SymbioticAdapter) | unknown | n/a | no | proxy only (impl: SymbioticAdapter) |
| ethereum | `0xd750b8...9bfd14` | ProxyAdmin | unknown | n/a | no | none |

### needs_review (5)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| ethereum | `0x48dacb...fb3825` | Accountant | unknown | n/a | yes | none |
| ethereum | `0x4c86cb...493c22` | WithdrawLimitModule | unknown | n/a | yes | none |
| ethereum | `0x8041ba...e86ae3` | Proxy (impl: TokenizedStrategy) | unknown | n/a | yes | proxy only (impl: TokenizedStrategy) |
| ethereum | `0x805c6d...fa55b8` | DelayedWithdraw | unknown | n/a | yes | none |
| ethereum | `0x975304...5eaa50` | TokenizedStrategy | unknown | n/a | yes | none |

## Audit Inventory

| Audit | Auditor | Date | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---:|---|
| ChainSecurity_Swell_swBTC_audit.pdf | ChainSecurity | 2024-07 | MIXED | 9 | high |
| NM_0273_SWELL_BTC_LRT.pdf | unknown | 2024-08 | EXPLICIT | 2 | high |
| 0xmacro-boring-vault-arctic-0.pdf | 0xMacro | 2024-03 | MIXED | 4 | high |
| pashov-boring-vault.pdf | Pashov Audit Group | 2024-07 | MIXED | 1 | high |
| spearbit-boring-vault-arctic-0.pdf | Spearbit | 2024-04 | EXPLICIT | 4 | high |
| Audit Reports (GitHub directory) | unknown | n/a | NOT_AUDIT | 0 | low |
| Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report_v2_0.pdf | Sigma Prime | 2024-01 | REPO_REFERENCE | 0 | low |
| immunefi.com/bug-bounty/swell/information | Immunefi | n/a | NOT_AUDIT | 0 | low |
| 2024-02-23-cyfrin-swell-v2.0.pdf | Cyfrin | 2024-02 | EXPLICIT | 21 | high |
| Sigma_Prime_Swell_Barracuda_Upgrade_Security_Assessment_Report_v2.pdf | Sigma Prime | 2024-02 | MIXED | 17 | high |
| Swell-audit-jan-2024(Public).pdf | Unknown | 2024-01 | REPO_REFERENCE | 0 | low |
| NM0231_FINAL_SWELL.pdf | Barracude | 2024-06 | EXPLICIT | 8 | high |
| Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf | Sigma Prime | 2024-07 | MIXED | 18 | high |
| Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report.pdf | Sigma Prime | 2024-01 | REPO_REFERENCE | 0 | low |
| Sigma_Prime_Swell_Network_Security_Assessment_Report_v2_1.pdf | Sigma Prime | 2023-04 | REPO_REFERENCE | 0 | low |
| Swell Staking Security Audit Report.pdf | yAudit | 2024-04 | EXPLICIT | 2 | high |
| swell-l2-pre-deposit-audit-april-2024 (Public).pdf | unknown | 2024-04 | MIXED | 2 | high |
| swell-mar24(Public).pdf | unknown | 2024-03 | REPO_REFERENCE | 0 | low |

## Coverage Gaps

Unaudited native contracts ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x009c9f...629655` | NFTDescriptor | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x0a6e7b...b35676` | SwellToken | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x342f0d...739d75` | CumulativeMerkleDrop | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x584cd3...e7dae2` | SwBtcOFTAdapter | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x677365...65e8af` | BlackPearl | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x6d8cc0...e8f872` | VaultAdapter | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0x9b07fb...33f562` | SwETHOFTAdapter | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xa35f12...240a14` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xa3ff11...21a538` | Harvester | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xa41902...605981` | OracleAdapter | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xa5bd95...2aa3e2` | SwBtcOFTAdapter | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xa9bd69...0558d6` | RolesAuthority | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xaa68ca...1875e8` | SwETHSY | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xba8290...c3073b` | Timelock | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xc9f6d9...9caf9b` | SWNFTv3 | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xca2df2...deeed4` | Timelock | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |
| ethereum | `0xd98f5c...c27b5e` | SwETHOFTAdapter | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 12 |
| standard_library | 10 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 5
- Not-audit entries: 2
- Audits with zero matched contracts: 7
- Extraction confidence breakdown: high=11, low=7
- Match method counts: extraction_exact=88

Zero-match audit list:

- [153] Audit Reports (GitHub directory)
- [154] Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report_v2_0.pdf
- [155] immunefi.com/bug-bounty/swell/information
- [944] Swell-audit-jan-2024(Public).pdf
- [947] Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report.pdf
- [948] Sigma_Prime_Swell_Network_Security_Assessment_Report_v2_1.pdf
- [951] swell-mar24(Public).pdf

Repo-reference audit list:

- [154] Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report_v2_0.pdf (repo refs: 1)
- [944] Swell-audit-jan-2024(Public).pdf (repo refs: 2)
- [947] Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report.pdf (repo refs: 1)
- [948] Sigma_Prime_Swell_Network_Security_Assessment_Report_v2_1.pdf (repo refs: 7)
- [951] swell-mar24(Public).pdf (repo refs: 2)

Not-audit entry list:

- [153] Audit Reports (GitHub directory)
- [155] immunefi.com/bug-bounty/swell/information

Lifecycle/fork inheritance analysis is not included in this brief build.
