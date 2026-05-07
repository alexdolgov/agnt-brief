# Agentic Brief: yieldnest

## Project Overview

- **Project:** yieldnest (yieldnest)
- **Website:** yieldnest.finance
- **Category:** Onchain Capital Allocator
- **Chains (topography):** 1, 56
- **Chains (DeFiLlama):** 1, 56
- **TVL:** $100,944,961 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment 2025-02-15
- **Audit history:** 22 audits; most recent 2026-05-01 (4 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

yieldnest has 30 deployed contract rows in current topography. This brief renders the 28 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-0dc929c6; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment 2025-02-15 (444 days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 28 contracts across 2 chains. 3 have TP audit coverage (10.7%); 25 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| TimelockController | governance | governance | unmatched | [0x1854b5...4169](https://etherscan.io/address/0x1854b5e23096740df9c89804f1b5a4e52cf34169) |
| TimelockController | governance | governance | unmatched | [0xa7f5c1...e96f](https://etherscan.io/address/0xa7f5c1f64c32db7edba80286a6c78977cab6e96f) |
| TimelockController | governance | governance | unmatched | [0xb5e2c3...0661](https://etherscan.io/address/0xb5e2c39299f76b15cfdcf4d7b41ac3a050680661) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x01ba69...15d8](https://etherscan.io/address/0x01ba69727e2860b37bc1a2bd56999c1afb4c15d8) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x09db87...3a48](https://etherscan.io/address/0x09db87a538bd693e9d08544577d5ccfaa6373a48) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x323c93...70fd](https://etherscan.io/address/0x323c933df2523d5b0c756210446eee0fb84270fd) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x3db228...cb4b](https://etherscan.io/address/0x3db228fe836d99ccb25ec4dfdc80ed6d2cddcb4b) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x657d9a...6dcb](https://etherscan.io/address/0x657d9aba1dbb59e53f9f3ecaa878447dcfc96dcb) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x7159cc...45ba](https://etherscan.io/address/0x7159cc276d7d17ab4b3beb19959e1f39368a45ba) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x927679...caac](https://etherscan.io/address/0x9276791d37f84de14bcf0cb92fd0d6795cdbcaac) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xa8c939...3ff8](https://etherscan.io/address/0xa8c9394b0a33257b6d5c94b6d6adc7cd10b23ff8) |
| YND | core | core | unmatched | [0x6770f0...7c74](https://etherscan.io/address/0x6770f0c1757ec7bb940b0e417ce16536fafe7c74) |
| YND | core | core | unmatched | [0x8532da...f2fe](https://etherscan.io/address/0x8532daf944002b92a717c5c49bd7651e44b0f2fe) |
| YND | core | core | unmatched | [0xa7d2f6...977e](https://etherscan.io/address/0xa7d2f644fcc76ccc3b97cced80238278082f977e) |
| YND | core | core | unmatched | [0xe746d2...2483](https://etherscan.io/address/0xe746d2a0c244212e716add637312c889ed282483) |
| ynETH | core | core | unmatched | [0x87e2a5...710a](https://etherscan.io/address/0x87e2a51d3b88fc2f5917a7ab793ea595b243710a) |

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| KernelStrategy | strategy | strategy | audited (TP) | [0x0e6464...acb3](https://bscscan.com/address/0x0e64643d8073b82ac6d6a9e7d1d6b6689a05acb3) |
| KernelStrategy | strategy | strategy | audited (TP) | [0x835349...8a76](https://bscscan.com/address/0x835349a99eec9b34434a33464be85f9b22c98a76) |
| KernelStrategy | strategy | strategy | audited (TP) | [0xa40870...782b](https://bscscan.com/address/0xa4087054f4858cb108091b2ca0e52b779430782b) |
| L2YnERC20Upgradeable | proxy | proxy | unmatched | [0x1091f2...044b](https://bscscan.com/address/0x1091f28febd7270c3537fe0a1fd1622912ab044b) |
| SingleVault | vault_pool | vault_pool | likely in scope | [0x80815e...15e2](https://bscscan.com/address/0x80815ee920bd9d856562633c36d3eb0e43cb15e2) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x132376...f547](https://bscscan.com/address/0x132376b153d3cff94615fe25712db12caaadf547) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x1b0157...4ab7](https://bscscan.com/address/0x1b015705214bdcaaf43e8edeca13023143224ab7) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x304b58...b509](https://bscscan.com/address/0x304b5845b9114182ecb4495be4c91a273b74b509) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x32c830...2c5f](https://bscscan.com/address/0x32c830f5c34122c6afb8ae87aba541b7900a2c5f) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x78839c...6a56](https://bscscan.com/address/0x78839ce14a8213779128ee4da6d75e1326606a56) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xdb8e54...0511](https://bscscan.com/address/0xdb8e54f39aff243b25a41e4747957ed517af0511) |
| Vault | vault_pool | vault_pool | likely in scope | [0xa94f95...108b](https://bscscan.com/address/0xa94f95ac2da2f94f25339b84ba6edb80e4f2108b) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 12 proxies on 1, 56. 12 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 3 distinct deployer addresses: 0x445b64...a847, 0x7ad92a...2aee, 0xa1e340...ba0d, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 28 | 3 | 25 | 10.7% |
| **Total** | 28 | 3 | 25 | 10.7% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FQIEAvIgUGH2x9u1PjE1C%2FRetest Report Security Review Yield | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | yieldnest max vault withdrawer audit report | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

10 contracts deployed after the most recent audit. These are by definition not covered by any existing audit.

---

## Appendix

### Docs Pages Referenced

- [https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2F2BnJ80svsmJo9OgB2aVE%2FYieldNest_Default_Asset_Index_Audit_Report_fixed.pdf?alt=media&token=24f07134-a113-4d28-9560-2b0c92705b9d](https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2F2BnJ80svsmJo9OgB2aVE%2FYieldNest_Default_Asset_Index_Audit_Report_fixed.pdf?alt=media&token=24f07134-a113-4d28-9560-2b0c92705b9d) - audit_report_link
- [https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2F4bl8rnjH6khwxagP3bSU%2FYieldnest_Zokyo_audit_report_Jan8th_2025.pdf?alt=media&token=2fe7c2de-7119-457d-b7ae-b5e20fde4e2f](https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2F4bl8rnjH6khwxagP3bSU%2FYieldnest_Zokyo_audit_report_Jan8th_2025.pdf?alt=media&token=2fe7c2de-7119-457d-b7ae-b5e20fde4e2f) - audit_report_link
- [https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2F7ANWejdJgOruBZoHqQr2%2FYieldnest_Zokyo_audit_report_Feb4th_2025.pdf?alt=media&token=ddd82799-9010-445f-b17b-5098be3807c0](https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2F7ANWejdJgOruBZoHqQr2%2FYieldnest_Zokyo_audit_report_Feb4th_2025.pdf?alt=media&token=ddd82799-9010-445f-b17b-5098be3807c0) - audit_report_link
- [https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FAg6Uk0Y5lkdkmY0tpgQS%2FYieldNest_Max_Vault_Withdrawer_Lib_Audit_Report_Fixed.pdf?alt=media&token=76235b03-bb85-4a94-93f7-ff6c202a59f0](https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FAg6Uk0Y5lkdkmY0tpgQS%2FYieldNest_Max_Vault_Withdrawer_Lib_Audit_Report_Fixed.pdf?alt=media&token=76235b03-bb85-4a94-93f7-ff6c202a59f0) - audit_report_link
- [https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2Fc30wzdpy871M9FqV9vt4%2FYN%20MetaHook%20Audit.pdf?alt=media&token=0f670044-706a-449c-a90e-641fa83782ab](https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2Fc30wzdpy871M9FqV9vt4%2FYN%20MetaHook%20Audit.pdf?alt=media&token=0f670044-706a-449c-a90e-641fa83782ab) - audit_report_link
- [https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2Feivzzj1ntiJOaqczV54V%2FNY_Hook_Audit_v2.pdf?alt=media&token=d99a211e-46c7-4158-a1f4-2e65ea32d2a6](https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2Feivzzj1ntiJOaqczV54V%2FNY_Hook_Audit_v2.pdf?alt=media&token=d99a211e-46c7-4158-a1f4-2e65ea32d2a6) - audit_report_link
- [https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FHr1KFb0S9DR25tyyFWig%2FYieldnest_Zokyo_%20ynETH_audit_report_April_2025.pdf?alt=media&token=52c414a3-8942-4a59-a338-b83a3958388d](https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FHr1KFb0S9DR25tyyFWig%2FYieldnest_Zokyo_%20ynETH_audit_report_April_2025.pdf?alt=media&token=52c414a3-8942-4a59-a338-b83a3958388d) - audit_report_link
- [https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2Fj34kRc4qbCgc5pjIAwaD%2FYieldnest_Zokyo_ynEigen_audit_report_April_2025.pdf?alt=media&token=b75e645a-9a0d-4359-ad48-c2097993d9b4](https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2Fj34kRc4qbCgc5pjIAwaD%2FYieldnest_Zokyo_ynEigen_audit_report_April_2025.pdf?alt=media&token=b75e645a-9a0d-4359-ad48-c2097993d9b4) - audit_report_link
- [https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FJX60WaDukKEWQ9HflOAl%2FYieldNest_Zokyo_audit_report_May7th_2024.pdf?alt=media&token=6807d402-c36b-4ab6-bae4-0dd1d25d6fdf](https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FJX60WaDukKEWQ9HflOAl%2FYieldNest_Zokyo_audit_report_May7th_2024.pdf?alt=media&token=6807d402-c36b-4ab6-bae4-0dd1d25d6fdf) - audit_report_link
- [https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FQIEAvIgUGH2x9u1PjE1C%2FRetest_Report_Security_Review_YieldNest_Integration_with_Kernel.pdf?alt=media&token=fbfe7165-5bef-4934-b058-a94e87275b3f](https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FQIEAvIgUGH2x9u1PjE1C%2FRetest_Report_Security_Review_YieldNest_Integration_with_Kernel.pdf?alt=media&token=fbfe7165-5bef-4934-b058-a94e87275b3f) - audit_report_link
- [https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FRmNM7yaNR55yu1XpB52H%2FYieldnest_Zokyo_audit_report_Dec12th_2024.pdf?alt=media&token=cc42657d-8061-4b8f-800c-47a00d9d5433](https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FRmNM7yaNR55yu1XpB52H%2FYieldnest_Zokyo_audit_report_Dec12th_2024.pdf?alt=media&token=cc42657d-8061-4b8f-800c-47a00d9d5433) - audit_report_link
- [https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FsewSrIoaN49gXQIWQGoC%2Fchainsecurity_yieldnest_protocol_audit_aug_2024.pdf?alt=media&token=c2a6c209-76c4-4b80-8325-d1c12d3a9b90](https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FsewSrIoaN49gXQIWQGoC%2Fchainsecurity_yieldnest_protocol_audit_aug_2024.pdf?alt=media&token=c2a6c209-76c4-4b80-8325-d1c12d3a9b90) - audit_report_link
- [https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FUo43eAttFeflSi74tWz8%2FYieldNest%20clisBNB%20Strategy%20Audit%20Report.pdf?alt=media&token=b523f0b9-03cb-40f9-9298-f541a5a9afff](https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FUo43eAttFeflSi74tWz8%2FYieldNest%20clisBNB%20Strategy%20Audit%20Report.pdf?alt=media&token=b523f0b9-03cb-40f9-9298-f541a5a9afff) - audit_report_link
- [https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FVZTf23oBTKRk295gjTpt%2FYN_Performance_fees_audit.pdf?alt=media&token=8b1050b7-c3e0-4840-80b8-159583669a3e](https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FVZTf23oBTKRk295gjTpt%2FYN_Performance_fees_audit.pdf?alt=media&token=8b1050b7-c3e0-4840-80b8-159583669a3e) - audit_report_link
- [https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FwX9OIQBRhg3tWvoUH5cX%2FYNFlexStrategyAuditReportFixed.pdf?alt=media&token=8098aea1-4e43-469c-976f-0cda35c94844](https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FwX9OIQBRhg3tWvoUH5cX%2FYNFlexStrategyAuditReportFixed.pdf?alt=media&token=8098aea1-4e43-469c-976f-0cda35c94844) - audit_report_link
- [https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FYvOhP0kHsODdKDAjvFUG%2FChainSecurity_YieldNest_YieldNest_Protocol_audit-.pdf?alt=media&token=7fda9726-64ef-4b89-80f7-43b60bf25139](https://2873068466-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FYvOhP0kHsODdKDAjvFUG%2FChainSecurity_YieldNest_YieldNest_Protocol_audit-.pdf?alt=media&token=7fda9726-64ef-4b89-80f7-43b60bf25139) - audit_report_link
- [https://composable-security.com/](https://composable-security.com/) - audit_report_link
- [https://docs.yieldnest.finance/security/audits](https://docs.yieldnest.finance/security/audits) - audit_report_link
- [https://docs.yieldnest.finance/security/audits-and-security-measures](https://docs.yieldnest.finance/security/audits-and-security-measures) - audit_report_link
- [https://docs.yieldnest.finance/security/audits-and-security-measures.md](https://docs.yieldnest.finance/security/audits-and-security-measures.md) - audit_report_link
- [https://docs.yieldnest.finance/security/audits-and-security-measures/bug-bounty](https://docs.yieldnest.finance/security/audits-and-security-measures/bug-bounty) - audit_report_link
- [https://docs.yieldnest.finance/security/audits-and-security-measures/bug-bounty.md](https://docs.yieldnest.finance/security/audits-and-security-measures/bug-bounty.md) - audit_report_link
- [https://docs.yieldnest.finance/untitled/security/audits-and-security-measures.md](https://docs.yieldnest.finance/untitled/security/audits-and-security-measures.md) - audit_report_link
- [https://docs.yieldnest.finance/untitled/security/audits-and-security-measures/bug-bounty.md](https://docs.yieldnest.finance/untitled/security/audits-and-security-measures/bug-bounty.md) - audit_report_link
- [https://drive.google.com/drive/folders/1Sy1dPJHk4_CchkJZGK5FMg5k3e2S0Ndr](https://drive.google.com/drive/folders/1Sy1dPJHk4_CchkJZGK5FMg5k3e2S0Ndr) - audit_report_link
- [https://github.com/orgs/yieldnest/repositories](https://github.com/orgs/yieldnest/repositories) - audit_report_link
- [https://github.com/yieldnest/Publications?tab=readme-ov-file#audits](https://github.com/yieldnest/Publications?tab=readme-ov-file#audits) - audit_report_link
- [https://github.com/yieldnest/Publications/blob/main/audits/chainsecurity_yieldnest_protocol_audit_aug_2024.pdf](https://github.com/yieldnest/Publications/blob/main/audits/chainsecurity_yieldnest_protocol_audit_aug_2024.pdf) - audit_report_link
- [https://github.com/yieldnest/Publications/blob/main/audits/chainsecurity_yieldnest_protocol_audit.pdf](https://github.com/yieldnest/Publications/blob/main/audits/chainsecurity_yieldnest_protocol_audit.pdf) - audit_report_link
- [https://github.com/yieldnest/Publications/blob/main/audits/composable_security_yieldnest_jan_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/composable_security_yieldnest_jan_2025.pdf) - audit_report_link
- [https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_clisbnb_strategy_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_clisbnb_strategy_audit_report.pdf) - audit_report_link
- [https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_default_asset_index_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_default_asset_index_audit_report.pdf) - audit_report_link
- [https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_max_vault_withdrawer_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_max_vault_withdrawer_audit_report.pdf) - audit_report_link
- [https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_dec12th_2024.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_dec12th_2024.pdf) - audit_report_link
- [https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_feb4th_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_feb4th_2025.pdf) - audit_report_link
- [https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_Jan8th_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_Jan8th_2025.pdf) - audit_report_link
- [https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_May7th_2024.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_May7th_2024.pdf) - audit_report_link
- [https://github.com/yieldnest/Publications/blob/main/audits/zokyo_yneigen_audit_yieldnest_april_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_yneigen_audit_yieldnest_april_2025.pdf) - audit_report_link
- [https://github.com/yieldnest/Publications/blob/main/audits/zokyo_yneth_audit_yieldnest_april_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_yneth_audit_yieldnest_april_2025.pdf) - audit_report_link
- [https://github.com/yieldnest/yieldnest-vault/blob/eth-max-vault/docs/vault.md](https://github.com/yieldnest/yieldnest-vault/blob/eth-max-vault/docs/vault.md) - audit_report_link
- [https://immunefi.com/bug-bounty/yieldnest](https://immunefi.com/bug-bounty/yieldnest) - audit_report_link
- [https://immunefi.com/bug-bounty/yieldnest](https://immunefi.com/bug-bounty/yieldnest](https://immunefi.com/bug-bounty/yieldnest](https://immunefi.com/bug-bounty/yieldnest) - audit_report_link
- [https://immunefi.com/bug-bounty/yieldnest/](https://immunefi.com/bug-bounty/yieldnest/) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - spaces%2FDyxbBTdzhJqQAdVgDB8k%2Fuploads%2FQIEAvIgUGH2x9u1PjE1C%2FRetest Report Security Review YieldNest Integration with Kernel
- unknown - discovery-ingest-placeholder - yieldnest max vault withdrawer audit report

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/yieldnest.json
- **Source code:** not fetched in v1

### Excluded Contracts (summary counts)

| Exclusion Reason | Count | Notes |
|---|---:|---|
| infrastructure blocklist | 0 | Summary from p2 provenance classifications |
| shared deployer contamination | 0 | Summary from p2 provenance classifications |
| opaque enrichment only | 0 | Summary from p2 provenance classifications |
| deployer expansion untethered | 0 | Summary from p2 provenance classifications |
| factory rpc expansion untethered | 0 | Summary from p2 provenance classifications |
| considered but unpromoted docs only | 0 | Summary from p2 provenance classifications |
| never evaluated docs only | 0 | Summary from p2 provenance classifications |
| external placeholder docs only | 0 | Summary from p2 provenance classifications |

### Data Availability Notes

- **Provenance classification:** not run for this project.
- **Multisig / timelock metadata:** not extracted by current pipeline.
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $101,654.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:38:21.205Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-0dc929c6
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $101,654.
