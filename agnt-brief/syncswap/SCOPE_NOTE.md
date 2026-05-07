# Agentic Brief: syncswap

## Project Overview

- **Project:** syncswap (syncswap)
- **Website:** syncswap.xyz
- **Category:** Dexs
- **Chains (topography):** 59144, 534352
- **Chains (DeFiLlama):** 324, 59144, 534352
- **TVL:** $75,118,664 (2 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment 2024-05-28
- **Audit history:** 7 audits; most recent 2024-01-26 (830 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

syncswap has 18 deployed contract rows in current topography. This brief renders the 18 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-2b686225; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment 2024-05-28 (707 days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 18 contracts across 2 chains. 2 have TP audit coverage (11.1%); 16 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### linea (chain_id 59144)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| SyncSwapClassicPoolDelegatedFactory | factory | factory | unmatched | [0x957399...baa2](https://lineascan.build/address/0x9573994ae6c9b35627976d26fa89e507e71fbaa2) |
| SyncSwapClassicPoolDelegatedFactory | factory | factory | unmatched | [0xb8abae...e32b](https://lineascan.build/address/0xb8abaea25e42da5ac6897c9dab0a8157885fe32b) |
| SyncSwapClassicPoolFactory | factory | factory | audited (TP) | [0x37bac7...ac2d](https://lineascan.build/address/0x37bac764494c8db4e54bde72f6965bea9fa0ac2d) |
| SyncSwapCryptoPoolDelegatedFactory | factory | factory | unmatched | [0x1080ee...d1ea](https://lineascan.build/address/0x1080ee857d165186af7f8d63e8ec510c28a6d1ea) |
| SyncSwapRangePoolFactory | factory | factory | unmatched | [0xc5916f...6690](https://lineascan.build/address/0xc5916f6cf441c72daa2e2c48afc7ce642eee6690) |
| SyncSwapStablePoolDelegatedFactory | factory | factory | unmatched | [0x024a09...ad86](https://lineascan.build/address/0x024a096bab43587d24004c95c3e20fcb7518ad86) |
| SyncSwapStablePoolDelegatedFactory | factory | factory | unmatched | [0x61abf7...9101](https://lineascan.build/address/0x61abf754fc031c544236053495a193f3518e9101) |
| unnamed | unknown | unknown | unmatched | [0x7a3106...4fb0](https://lineascan.build/address/0x7a31060d8524c21496a352be65549eef1e864fb0) |
| unnamed | unknown | unknown | unmatched | [0xe4cf80...3727](https://lineascan.build/address/0xe4cf807e351b56720b17a59094179e7ed9dd3727) |

### scroll (chain_id 534352)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| SyncSwapClassicPoolDelegatedFactory | factory | factory | unmatched | [0x76f549...b54c](https://scrollscan.com/address/0x76f549af692efa64952d02c075226df9878fb54c) |
| SyncSwapClassicPoolFactory | factory | factory | audited (TP) | [0x37bac7...ac2d](https://scrollscan.com/address/0x37bac764494c8db4e54bde72f6965bea9fa0ac2d) |
| SyncSwapCryptoPoolDelegatedFactory | factory | factory | unmatched | [0x87aeb5...7018](https://scrollscan.com/address/0x87aeb51d606056f48d241c4072f55acd9d937018) |
| SyncSwapRangePoolFactory | factory | factory | unmatched | [0xb11042...1838](https://scrollscan.com/address/0xb11042007e78be92dc1c79da1e7ef499b4b31838) |
| SyncSwapStablePoolDelegatedFactory | factory | factory | unmatched | [0xa2aca6...8d00](https://scrollscan.com/address/0xa2aca673c00495a184f88de533bba8e1b7f38d00) |
| unnamed | unknown | unknown | unmatched | [0x5bebda...7a9e](https://scrollscan.com/address/0x5bebda7e264b03bb963cb2418f40c5ffcefb7a9e) |
| unnamed | unknown | unknown | unmatched | [0xa033ea...ce2d](https://scrollscan.com/address/0xa033eabccfd9b71543e34dec43935467a230ce2d) |
| unnamed | unknown | unknown | unmatched | [0xdaedec...4f69](https://scrollscan.com/address/0xdaedecf3f1caf8d9050a0c973b77e40ba8024f69) |
| unnamed | unknown | unknown | unmatched | [0xe4cf80...3727](https://scrollscan.com/address/0xe4cf807e351b56720b17a59094179e7ed9dd3727) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

No proxy or upgrade architecture detected.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 18 | 2 | 16 | 11.1% |
| **Total** | 18 | 2 | 16 | 11.1% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2023-05-04 | Zellic | SyncSwap - Zellic Audit Report | unspecified | direct | [report](https://github.com/Zellic/publications/blob/master/SyncSwap%20-%20Zellic%20Audit%20Report.pdf) |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 830 days ago.

7 contracts deployed after the most recent audit. These are by definition not covered by any existing audit.

---

## Appendix

### Docs Pages Referenced

- [https://2866248431-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fa1srPi3SG0RLa68aU4tX%2Fuploads%2FC51Z3Fzejz7kEaPKvl0B%2F202304231022.pdf?alt=media&token=d3da166c-3cc9-4851-b25f-fe539e67dae4](https://2866248431-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fa1srPi3SG0RLa68aU4tX%2Fuploads%2FC51Z3Fzejz7kEaPKvl0B%2F202304231022.pdf?alt=media&token=d3da166c-3cc9-4851-b25f-fe539e67dae4) - audit_report_link
- [https://2866248431-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fa1srPi3SG0RLa68aU4tX%2Fuploads%2Fmp0eR6C7YdBPhLc5L4DQ%2FSyncSwap%20-%20Zellic%20Audit%20Report.pdf?alt=media&token=76cc7b57-33f2-4054-8854-360e15ba5b14](https://2866248431-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fa1srPi3SG0RLa68aU4tX%2Fuploads%2Fmp0eR6C7YdBPhLc5L4DQ%2FSyncSwap%20-%20Zellic%20Audit%20Report.pdf?alt=media&token=76cc7b57-33f2-4054-8854-360e15ba5b14) - audit_report_link
- [https://2866248431-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fa1srPi3SG0RLa68aU4tX%2Fuploads%2FPceHKhDjsVITMvDuxxOf%2FSyncSwap_Final_Report_202306071831.pdf?alt=media&token=05b1bdba-e14e-41ed-8799-9fa844ff39da](https://2866248431-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fa1srPi3SG0RLa68aU4tX%2Fuploads%2FPceHKhDjsVITMvDuxxOf%2FSyncSwap_Final_Report_202306071831.pdf?alt=media&token=05b1bdba-e14e-41ed-8799-9fa844ff39da) - audit_report_link
- [https://2866248431-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fa1srPi3SG0RLa68aU4tX%2Fuploads%2FR0iSy5WvuVRe3xEwLqwQ%2FSyncSwap_Pool_Halborn_Final.pdf?alt=media&token=274a480a-f81e-43ca-ba39-00e0733b69c0](https://2866248431-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fa1srPi3SG0RLa68aU4tX%2Fuploads%2FR0iSy5WvuVRe3xEwLqwQ%2FSyncSwap_Pool_Halborn_Final.pdf?alt=media&token=274a480a-f81e-43ca-ba39-00e0733b69c0) - audit_report_link
- [https://2866248431-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fa1srPi3SG0RLa68aU4tX%2Fuploads%2FRIJLw3cG80Xoif8kjoqA%2FAqua%20Pool%20-%20Zellic%20Audit%20Report.pdf?alt=media&token=cdb52cfa-79b2-4a6a-b781-f05182c1d012](https://2866248431-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fa1srPi3SG0RLa68aU4tX%2Fuploads%2FRIJLw3cG80Xoif8kjoqA%2FAqua%20Pool%20-%20Zellic%20Audit%20Report.pdf?alt=media&token=cdb52cfa-79b2-4a6a-b781-f05182c1d012) - audit_report_link
- [https://2866248431-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fa1srPi3SG0RLa68aU4tX%2Fuploads%2FRvWvICUUFQOGhS061IcD%2FPeckShield-Audit-Report-SyncSwap-v1.0.pdf?alt=media&token=4ccb1be0-ae32-49a7-9749-3cae1e4581ec](https://2866248431-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fa1srPi3SG0RLa68aU4tX%2Fuploads%2FRvWvICUUFQOGhS061IcD%2FPeckShield-Audit-Report-SyncSwap-v1.0.pdf?alt=media&token=4ccb1be0-ae32-49a7-9749-3cae1e4581ec) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.11.29%20-%20Final%20-%20Bond%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.11.29%20-%20Final%20-%20Bond%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.04.04%20-%20Final%20-%20Bond%20Protocol%20Update%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.04.04%20-%20Final%20-%20Bond%20Protocol%20Update%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.05.25%20-%20Final%20-%20Eco%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.05.25%20-%20Final%20-%20Eco%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.06.12%20-%20Final%20-%20Unitas%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.06.12%20-%20Final%20-%20Unitas%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.20%20-%20Final%20-%20Zap%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.20%20-%20Final%20-%20Zap%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.04.26%20-%20Final%20-%20TITLES%20Publishing%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.04.26%20-%20Final%20-%20TITLES%20Publishing%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.05.04%20-%20Final%20-%20Exactly%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.05.04%20-%20Final%20-%20Exactly%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.07.25%20-%20Final%20-%20Exactly%20Protocol%20Update%20-%20Staking%20Contract%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.07.25%20-%20Final%20-%20Exactly%20Protocol%20Update%20-%20Staking%20Contract%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.08.29%20-%20Final%20-%20Rumpel%20Point%20Tokenization%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.08.29%20-%20Final%20-%20Rumpel%20Point%20Tokenization%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.09.20%20-%20Final%20-%20Boost%20Core%20Incentive%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.09.20%20-%20Final%20-%20Boost%20Core%20Incentive%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.06.05%20-%20Final%20-%20Seamless%20Protocol%20Collaborative%20Audit%20Report%201749131188.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.06.05%20-%20Final%20-%20Seamless%20Protocol%20Collaborative%20Audit%20Report%201749131188.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.08.24%20-%20Final%20-%20Neutrl%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.08.24%20-%20Final%20-%20Neutrl%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Hook%20Protocol%20Coverage%20Agreement.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Hook%20Protocol%20Coverage%20Agreement.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/origin/Sigma_Prime_Origin_Protocol_Validator_Consolidations_Security_Assessment_Report_v2_0.pdf](https://github.com/sigp/public-audits/blob/master/reports/origin/Sigma_Prime_Origin_Protocol_Validator_Consolidations_Security_Assessment_Report_v2_0.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/protocol-guild/Sigma_Prime_Protocol_Guild_Agora_Token_Security_Assessment_Report_v2_1.pdf](https://github.com/sigp/public-audits/blob/master/reports/protocol-guild/Sigma_Prime_Protocol_Guild_Agora_Token_Security_Assessment_Report_v2_1.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/pdfs/Overprotocol-Spearbit-Security-Review-June-2024.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Overprotocol-Spearbit-Security-Review-June-2024.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/pdfs/Overprotocol-Spearbit-vCISO-May-2024.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Overprotocol-Spearbit-vCISO-May-2024.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/presentations/Slither's%20Model%20Context%20Protocol%3A%20Giving%20LLMs%20Ground%20Truth%20from%20Static%20Analysis/Slither's%20Model%20Context%20Protocol%3A%20Giving%20LLMs%20Ground%20Truth%20from%20Static%20Analysis.pdf](https://github.com/trailofbits/publications/blob/master/presentations/Slither's%20Model%20Context%20Protocol%3A%20Giving%20LLMs%20Ground%20Truth%20from%20Static%20Analysis/Slither's%20Model%20Context%20Protocol%3A%20Giving%20LLMs%20Ground%20Truth%20from%20Static%20Analysis.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/0x-protocol.pdf](https://github.com/trailofbits/publications/blob/master/reviews/0x-protocol.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-08-reserve-protocol-fixreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-08-reserve-protocol-fixreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-08-reserve-protocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-08-reserve-protocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-09-incrementprotocol-fixreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-09-incrementprotocol-fixreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-09-incrementprotocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-09-incrementprotocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-09-maplefinance-mapleprotocolv2-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-09-maplefinance-mapleprotocolv2-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-12-driftlabs-driftprotocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-12-driftlabs-driftprotocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2023-8-offchain-challenge-protocol-V2-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-8-offchain-challenge-protocol-V2-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-03-aladdinfxprotocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-03-aladdinfxprotocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-05-parabollabs-protocolcontracts-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-05-parabollabs-protocolcontracts-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-06-lit-protocol-cait-sith-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-06-lit-protocol-cait-sith-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-08-discord-dave-protocol-designreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-08-discord-dave-protocol-designreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-08-elixir-technologies-ltd-elixir-protocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-08-elixir-technologies-ltd-elixir-protocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-09-discord-dave-protocol-codereview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-09-discord-dave-protocol-codereview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-01-parabollabs-protocolcontractsupdates-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-01-parabollabs-protocolcontractsupdates-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-05-caplabs-coveredagentprotocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-05-caplabs-coveredagentprotocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-05-fabriclabs-zipperprotocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-05-fabriclabs-zipperprotocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-05-FIVA-yieldtokenizationprotocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-05-FIVA-yieldtokenizationprotocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-06-reserveprotocol-solidity400-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-06-reserveprotocol-solidity400-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-1-everstake-ethereum-staking-protocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-1-everstake-ethereum-staking-protocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/aaveprotocol.pdf](https://github.com/trailofbits/publications/blob/master/reviews/aaveprotocol.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/AnteProtocol.pdf](https://github.com/trailofbits/publications/blob/master/reviews/AnteProtocol.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/AnteProtocolFixReview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/AnteProtocolFixReview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/CasperLabsHighwayProtocol.pdf](https://github.com/trailofbits/publications/blob/master/reviews/CasperLabsHighwayProtocol.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/FujiProtocol.pdf](https://github.com/trailofbits/publications/blob/master/reviews/FujiProtocol.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/LiquityProtocolandStabilityPoolFinalReport.pdf](https://github.com/trailofbits/publications/blob/master/reviews/LiquityProtocolandStabilityPoolFinalReport.pdf) - audit_report_link

### Audit Reports (full list)

- 2023-05-04 - Zellic - SyncSwap - Zellic Audit Report - https://github.com/Zellic/publications/blob/master/SyncSwap%20-%20Zellic%20Audit%20Report.pdf

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/syncswap.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $0.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:40:41.482Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-2b686225
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $0.
