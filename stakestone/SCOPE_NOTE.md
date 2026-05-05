# Agentic Brief: stakestone

## Project Overview

- **Project:** stakestone (stakestone)
- **Website:** stakestone.io
- **Category:** Liquid Staking
- **Chains (topography):** 1
- **Chains (DeFiLlama):** 1, 56
- **TVL:** $54,021,522 (5 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment 2025-10-21
- **Audit history:** 25 audits; most recent 2026-05-01 (4 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

stakestone has 3 deployed contract rows in current topography. This brief renders the 3 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-2b686225; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment 2025-10-21 (195 days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 3 contracts across 1 chains. 1 have TP audit coverage (33.3%); 2 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

2 core-logic or audit-scope-extra contracts identified. Inclusion is provenance-mechanical per role_mapping_v1.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Token | token | token | likely in scope | [0x6a6e3a...721e](https://etherscan.io/address/0x6a6e3a4396993a4ec98a6f4a654cc0819538721e) |
| unnamed | unknown | unknown | unmatched | [0x095957...6d71](https://etherscan.io/address/0x095957ceb9f317ac1328f0ab3123622401766d71) |

---

## Scope - Operational Periphery

No operational periphery surface detected.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

No proxy or upgrade architecture detected.

---

## Scope - Integration Surface

1 integration-surface rows detected from third-party enrichment provenance.

| Integration Target | Our Contract | Chain | Trust Assumption |
|---|---|---|---|
| defillama_adapter | [AssetVault](https://etherscan.io/address/0x1fc603779dc6b4866769a58067777d2c52628226) | ethereum | integration target not characterized; investigate |

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| Integration surface | 1 | 1 | 0 | 100.0% |
| No provenance | 2 | 0 | 2 | 0.0% |
| **Total** | 3 | 1 | 2 | 33.3% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | Slowmist | spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2F1jDHW15wSaMaAYlhsgJd%2FSlowMist%20Audit%20Report%20 %20Sta | unspecified | direct | not available |
| unknown | Slowmist | STONE BTC Vault - SlowMist Audit Report.pdf | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

2 contracts deployed after the most recent audit. These are by definition not covered by any existing audit.

---

## Appendix

### Docs Pages Referenced

- [https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2F0Mb2Btl5gyYFsESugiux%2FStakeStone%20DAO%20-%20SlowMist%20Audit%20Report%20(4).pdf?alt=media&token=020ef168-a8c9-4d7e-ac33-517d134293c9](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2F0Mb2Btl5gyYFsESugiux%2FStakeStone%20DAO%20-%20SlowMist%20Audit%20Report%20(4).pdf?alt=media&token=020ef168-a8c9-4d7e-ac33-517d134293c9) - audit_report_link
- [https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2F1jDHW15wSaMaAYlhsgJd%2FSlowMist%20Audit%20Report%20-%20StakeStone.pdf?alt=media&token=48ee7e28-552a-42ad-8c24-339922de719a](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2F1jDHW15wSaMaAYlhsgJd%2FSlowMist%20Audit%20Report%20-%20StakeStone.pdf?alt=media&token=48ee7e28-552a-42ad-8c24-339922de719a) - audit_report_link
- [https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2F8Lx18BRXLLbxnX2zC78t%2FSTONE%20BTC%20Vault%20-%20SlowMist%20Audit%20Report.pdf?alt=media&token=2be27daa-91a4-4332-bec3-f56eb3a899a6](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2F8Lx18BRXLLbxnX2zC78t%2FSTONE%20BTC%20Vault%20-%20SlowMist%20Audit%20Report.pdf?alt=media&token=2be27daa-91a4-4332-bec3-f56eb3a899a6) - audit_report_link
- [https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FCYIX4PcaObV8cl40ejdE%2FSlowMist%20Audit%20Report%20-%20EigenLSTRestaking.pdf?alt=media&token=19cab3e8-3cde-4a5d-a761-4f6f031fc788](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FCYIX4PcaObV8cl40ejdE%2FSlowMist%20Audit%20Report%20-%20EigenLSTRestaking.pdf?alt=media&token=19cab3e8-3cde-4a5d-a761-4f6f031fc788) - audit_report_link
- [https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FF43Hk4K2PyIWiakMaSlw%2FSlowMist_Audit_Report_StakeStone_SymbioticDepositWBETHStrategy.pdf?alt=media&token=afef6386-9980-4c8e-bd74-017ab8bb1ee0](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FF43Hk4K2PyIWiakMaSlw%2FSlowMist_Audit_Report_StakeStone_SymbioticDepositWBETHStrategy.pdf?alt=media&token=afef6386-9980-4c8e-bd74-017ab8bb1ee0) - audit_report_link
- [https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FqBfJB4MR0ZwSpCdrto6b%2FSlowMist%20Audit%20Report%20-%20StakeStone%20-%20Restaking_en-us.pdf?alt=media&token=b3ddcb22-b527-4f92-971a-472ade6a584a](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FqBfJB4MR0ZwSpCdrto6b%2FSlowMist%20Audit%20Report%20-%20StakeStone%20-%20Restaking_en-us.pdf?alt=media&token=b3ddcb22-b527-4f92-971a-472ade6a584a) - audit_report_link
- [https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FRBZCoEprwlIAe7kN2nhn%2FStakestoneEigenlayerHelper_Secure3_Audit_Report.pdf?alt=media&token=df854464-a5b7-470e-8e90-d224da384e63](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FRBZCoEprwlIAe7kN2nhn%2FStakestoneEigenlayerHelper_Secure3_Audit_Report.pdf?alt=media&token=df854464-a5b7-470e-8e90-d224da384e63) - audit_report_link
- [https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FSgVpK5T5WWpoj9mwS3bm%2FSlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy%26Symbi%20(3).pdf?alt=media&token=a6765ea6-9b69-43e0-a749-57e9149d0c14](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FSgVpK5T5WWpoj9mwS3bm%2FSlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy%26Symbi%20(3).pdf?alt=media&token=a6765ea6-9b69-43e0-a749-57e9149d0c14) - audit_report_link
- [https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FVPMwYQsoShkgFtcw3SbM%2FStakeStone_final_Secure3_Audit_Report.pdf?alt=media&token=e9f986d7-36f3-466b-93f2-1577633ba201](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FVPMwYQsoShkgFtcw3SbM%2FStakeStone_final_Secure3_Audit_Report.pdf?alt=media&token=e9f986d7-36f3-466b-93f2-1577633ba201) - audit_report_link
- [https://certificate.quantstamp.com/full/stake-stone-stone-btc-and-vault/5fbbae75-0726-40d4-ad39-15491f27b400/index.html](https://certificate.quantstamp.com/full/stake-stone-stone-btc-and-vault/5fbbae75-0726-40d4-ad39-15491f27b400/index.html) - audit_report_link
- [https://certificate.quantstamp.com/full/stake-stone-stone-btc-and-vault/5fbbae75-0726-40d4-ad39-15491f27b400/index.html**](https://certificate.quantstamp.com/full/stake-stone-stone-btc-and-vault/5fbbae75-0726-40d4-ad39-15491f27b400/index.html](https://certificate.quantstamp.com/full/stake-stone-stone-btc-and-vault/5fbbae75-0726-40d4-ad39-15491f27b400/index.html**](https://certificate.quantstamp.com/full/stake-stone-stone-btc-and-vault/5fbbae75-0726-40d4-ad39-15491f27b400/index.html) - audit_report_link
- [https://certificate.quantstamp.com/full/stake-stone-tokenized-vault/aa7fd663-908f-49c5-bb62-eac2463f57f1/index.html](https://certificate.quantstamp.com/full/stake-stone-tokenized-vault/aa7fd663-908f-49c5-bb62-eac2463f57f1/index.html) - audit_report_link
- [https://certificate.quantstamp.com/full/stake-stone-tokenized-vault/aa7fd663-908f-49c5-bb62-eac2463f57f1/index.html**](https://certificate.quantstamp.com/full/stake-stone-tokenized-vault/aa7fd663-908f-49c5-bb62-eac2463f57f1/index.html](https://certificate.quantstamp.com/full/stake-stone-tokenized-vault/aa7fd663-908f-49c5-bb62-eac2463f57f1/index.html**](https://certificate.quantstamp.com/full/stake-stone-tokenized-vault/aa7fd663-908f-49c5-bb62-eac2463f57f1/index.html) - audit_report_link
- [https://certificate.quantstamp.com/full/stake-stone/4b7cbc5e-5595-4ac4-ac36-176f43ee9adf/index.html](https://certificate.quantstamp.com/full/stake-stone/4b7cbc5e-5595-4ac4-ac36-176f43ee9adf/index.html) - audit_report_link
- [https://certificate.quantstamp.com/full/stake-stone/4b7cbc5e-5595-4ac4-ac36-176f43ee9adf/index.html**](https://certificate.quantstamp.com/full/stake-stone/4b7cbc5e-5595-4ac4-ac36-176f43ee9adf/index.html](https://certificate.quantstamp.com/full/stake-stone/4b7cbc5e-5595-4ac4-ac36-176f43ee9adf/index.html**](https://certificate.quantstamp.com/full/stake-stone/4b7cbc5e-5595-4ac4-ac36-176f43ee9adf/index.html) - audit_report_link
- [https://docs.stakestone.io/%3Chttps://veridise.com/audits/&](https://docs.stakestone.io/%3Chttps://veridise.com/audits/&) - audit_report_link
- [https://docs.stakestone.io/stakestone/additionals/audits-and-security](https://docs.stakestone.io/stakestone/additionals/audits-and-security) - audit_report_link
- [https://docs.stakestone.io/stakestone/additionals/audits-and-security.md](https://docs.stakestone.io/stakestone/additionals/audits-and-security.md) - audit_report_link
- [https://docs.stakestone.io/stakestone/additionals/audits-and-security/bug-bounty-program](https://docs.stakestone.io/stakestone/additionals/audits-and-security/bug-bounty-program) - audit_report_link
- [https://docs.stakestone.io/stakestone/additionals/audits-and-security/bug-bounty-program.md](https://docs.stakestone.io/stakestone/additionals/audits-and-security/bug-bounty-program.md) - audit_report_link
- [https://docs.stakestone.io/stakestone/governance/sto/conversion](https://docs.stakestone.io/stakestone/governance/sto/conversion) - audit_report_link
- [https://docs.stakestone.io/stakestone/governance/sto/lock](https://docs.stakestone.io/stakestone/governance/sto/lock) - audit_report_link
- [https://docs.stakestone.io/stakestone/governance/sto/swap-and-burn](https://docs.stakestone.io/stakestone/governance/sto/swap-and-burn) - audit_report_link
- [https://docs.stakestone.io/stakestone/governance/sto/vote](https://docs.stakestone.io/stakestone/governance/sto/vote) - audit_report_link
- [https://github.com/Secure3Audit/Secure3Academy/blob/main/audit_reports/StakeStone/StakeStone_final_Secure3_Audit_Report.pdf](https://github.com/Secure3Audit/Secure3Academy/blob/main/audit_reports/StakeStone/StakeStone_final_Secure3_Audit_Report.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SBTC%20Bera%20Vault%20-%20SlowMist%20Audit%20Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SBTC%20Bera%20Vault%20-%20SlowMist%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SBTC%2520Bera%2520Vault%2520-%2520SlowMist%2520Audit%2520Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SBTC%2520Bera%2520Vault%2520-%2520SlowMist%2520Audit%2520Report.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy%2526Symbi_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy%2526Symbi_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy%26Symbi_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy%26Symbi_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist_Audit_Report_StakeStone_SymbioticDepositWBETHStrategy_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist_Audit_Report_StakeStone_SymbioticDepositWBETHStrategy_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20StakeStone%20-%20Restaking_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20StakeStone%20-%20Restaking_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%2520Audit%2520Report%2520-%2520StakeStone%2520-%2520Restaking_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%2520Audit%2520Report%2520-%2520StakeStone%2520-%2520Restaking_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Stone%20Bera%20Vault%20-%20SlowMist%20Audit%20Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Stone%20Bera%20Vault%20-%20SlowMist%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%20BTC%20-%20SlowMist%20Audit%20Report_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%20BTC%20-%20SlowMist%20Audit%20Report_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%20BTC%20Vault%20-%20SlowMist%20Audit%20Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%20BTC%20Vault%20-%20SlowMist%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%20BTC%20Vault%20-%20SlowMist%20Audit%20Report.pdf**](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%20BTC%20Vault%20-%20SlowMist%20Audit%20Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%20BTC%20Vault%20-%20SlowMist%20Audit%20Report.pdf**](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%20BTC%20Vault%20-%20SlowMist%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Stone%2520Bera%2520Vault%2520-%2520SlowMist%2520Audit%2520Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Stone%2520Bera%2520Vault%2520-%2520SlowMist%2520Audit%2520Report.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%2520BTC%2520-%2520SlowMist%2520Audit%2520Report_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%2520BTC%2520-%2520SlowMist%2520Audit%2520Report_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%2520BTC%2520Vault%2520-%2520SlowMist%2520Audit%2520Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%2520BTC%2520Vault%2520-%2520SlowMist%2520Audit%2520Report.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%2520BTC%2520Vault%2520-%2520SlowMist%2520Audit%2520Report.pdf**%5D(https%3A/github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%2520BTC%2520Vault%2520-%2520SlowMist%2520Audit%2520Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%2520BTC%2520Vault%2520-%2520SlowMist%2520Audit%2520Report.pdf**%5D(https%3A/github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%2520BTC%2520Vault%2520-%2520SlowMist%2520Audit%2520Report.pdf) - audit_report_link
- [https://immunefi.com/bug-bounty/stakestone/information](https://immunefi.com/bug-bounty/stakestone/information) - audit_report_link
- [https://veridise.com/audits/https://f8t2x8b2.rocketcdn.me/wp-content/uploads/2023/12/VAR-StakeStone-231208-2.pdf](https://veridise.com/audits/https://f8t2x8b2.rocketcdn.me/wp-content/uploads/2023/12/VAR-StakeStone-231208-2.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - Slowmist - spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2F1jDHW15wSaMaAYlhsgJd%2FSlowMist%20Audit%20Report%20 %20StakeStone
- unknown - Slowmist - STONE BTC Vault - SlowMist Audit Report.pdf

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/stakestone.json
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

- **Provenance classification:** available.
- **Multisig / timelock metadata:** not extracted by current pipeline.
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $782.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:38:41.809Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-2b686225
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Per-contract TVL snapshot available with total on-chain TVL $782.
