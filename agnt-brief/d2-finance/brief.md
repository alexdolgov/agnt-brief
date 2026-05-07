# Agentic Brief: D2 Finance

## Project Overview

- **Project:** D2 Finance (d2-finance)
- **Website:** d2.finance
- **Category:** Onchain Capital Allocator
- **Chains (topography):** 1, 8453, 42161
- **Chains (DeFiLlama):** 1, 8453, 42161, 80094
- **TVL:** $76,017,637 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 1 audits; most recent 2026-05-01 (4 days ago)
- **Tier:** 4 - coverage_unknown (Excluded)
- **Commercial fit:** large_tvl_marketing_asset

D2 Finance has 28 deployed contract rows in current topography. This brief renders the 28 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-bec82ebc; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 28 contracts across 3 chains. 0 have TP audit coverage (0.0%); 28 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| VaultV3 | vault_pool | vault_pool | likely in scope | [0x07dff4...daf4](https://etherscan.io/address/0x07dff4087b43c4a759f4fc69511c26d51929daf4) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| VaultV1Whitelisted | vault_pool | vault_pool | likely in scope | [0x6c05a7...8897](https://basescan.org/address/0x6c05a7d2c24b48fc3c615d294fec2eb068548897) |
| VaultV3 | vault_pool | vault_pool | likely in scope | [0x2406aa...6c7e](https://basescan.org/address/0x2406aacbdf8463176deb285adaa81768415b6c7e) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| VaultV0 | vault_pool | vault_pool | likely in scope | [0x1176c3...785e](https://arbiscan.io/address/0x1176c3760af6a1dbaa5bbd0cc6cda8a2ed6b785e) |
| VaultV0 | vault_pool | vault_pool | likely in scope | [0x183424...9109](https://arbiscan.io/address/0x183424d5ae5ec9fd486634bc566d0f75ad9c9109) |
| VaultV0 | vault_pool | vault_pool | likely in scope | [0x57f467...791b](https://arbiscan.io/address/0x57f467c9c4639b066f5a4d676cd8ed7d87c1791b) |
| VaultV0 | vault_pool | vault_pool | likely in scope | [0x5b49d7...9a0b](https://arbiscan.io/address/0x5b49d7fae00de64779ddcd6b067c8eb046bd9a0b) |
| VaultV0 | vault_pool | vault_pool | likely in scope | [0x91acd3...49c1](https://arbiscan.io/address/0x91acd32da9bea6da3751dc12ee0fbe47169349c1) |
| VaultV0 | vault_pool | vault_pool | likely in scope | [0xac75f0...ed56](https://arbiscan.io/address/0xac75f0c46723432a2303f2a7c7769535a179ed56) |
| VaultV1Whitelisted | vault_pool | vault_pool | likely in scope | [0x0215ed...9088](https://arbiscan.io/address/0x0215edeecdabe3dfc5ec8d59337ec9b26d359088) |
| VaultV1Whitelisted | vault_pool | vault_pool | likely in scope | [0x0f76de...07d4](https://arbiscan.io/address/0x0f76de33a3679a6065d14780618b54584a3907d4) |
| VaultV1Whitelisted | vault_pool | vault_pool | likely in scope | [0x195a9e...2890](https://arbiscan.io/address/0x195a9e0f29f96d4ab2139ee1272380a4aa352890) |
| VaultV1Whitelisted | vault_pool | vault_pool | likely in scope | [0x1c17a3...50da](https://arbiscan.io/address/0x1c17a39b156189bf40905425170a3ff62fb650da) |
| VaultV1Whitelisted | vault_pool | vault_pool | likely in scope | [0x27d22e...6a42](https://arbiscan.io/address/0x27d22eb71f00495eccc89bb02c2b68e6988c6a42) |
| VaultV1Whitelisted | vault_pool | vault_pool | likely in scope | [0x291344...2320](https://arbiscan.io/address/0x291344fbaac4fe14632061e4c336fe3b94c52320) |
| VaultV1Whitelisted | vault_pool | vault_pool | likely in scope | [0x34f0fd...760e](https://arbiscan.io/address/0x34f0fdd80a51dfd8ba42343c20f89217280d760e) |
| VaultV1Whitelisted | vault_pool | vault_pool | likely in scope | [0x36b193...f4d0](https://arbiscan.io/address/0x36b1939adf539a4ac94b57dbad32faecd5bcf4d0) |
| VaultV1Whitelisted | vault_pool | vault_pool | likely in scope | [0x5f44a7...aa43](https://arbiscan.io/address/0x5f44a7dd0a016a5ec9682df36899a781442caa43) |
| VaultV1Whitelisted | vault_pool | vault_pool | likely in scope | [0x734892...bb7b](https://arbiscan.io/address/0x7348925d3c63e4e61e9f5308eeec0f06eaa3bb7b) |
| VaultV1Whitelisted | vault_pool | vault_pool | likely in scope | [0x752882...5004](https://arbiscan.io/address/0x75288264fdfea8ce68e6d852696ab1ce2f3e5004) |
| VaultV1Whitelisted | vault_pool | vault_pool | likely in scope | [0xb0730a...5a0f](https://arbiscan.io/address/0xb0730aa7d6e880f901b5d71a971096db56895a0f) |
| VaultV1Whitelisted | vault_pool | vault_pool | likely in scope | [0xcfbbea...72b3](https://arbiscan.io/address/0xcfbbea43fd99126e4c0ef53e2344609d513f72b3) |
| VaultV3 | vault_pool | vault_pool | likely in scope | [0x0178b5...730f](https://arbiscan.io/address/0x0178b56fea3d7b5b9f9e0cdad486522de948730f) |
| VaultV3 | vault_pool | vault_pool | likely in scope | [0xc027ec...968c](https://arbiscan.io/address/0xc027ec28f76d92d4124fcbffcf6b25137a84968c) |
| unnamed | unknown | unknown | unmatched | [0x907a9f...52a9](https://arbiscan.io/address/0x907a9f69061736ad82811cccd6add9dc4a2352a9) |
| unnamed | unknown | unknown | unmatched | [0x999a57...14fc](https://arbiscan.io/address/0x999a57ae7694298126a5db2e44f778ca486b14fc) |
| unnamed | unknown | unknown | unmatched | [0xab2743...1374](https://arbiscan.io/address/0xab2743a3a2e06d457368e901f5f927f271fa1374) |
| unnamed | unknown | unknown | unmatched | [0xd1d64d...3a84](https://arbiscan.io/address/0xd1d64daeed7504ef3eb056aa2d973bd064843a84) |

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
| No provenance | 28 | 0 | 28 | 0.0% |
| **Total** | 28 | 0 | 28 | 0.0% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2025-02-24 | Cyfrin | D2 finance Audit Report | unspecified | direct | [report](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-02-24-cyfrin-d2-v2.1.pdf) |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://3494654297-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FVpmhbD0rf5WqB24Nlwwj%2Fuploads%2FRCyHpAyXN1yTu2suiGs3%2FPaladin%20D-Squared%20Audit%20Report.pdf?alt=media&token=e98885d7-5b02-4d56-99a8-a0cbe9003141](https://3494654297-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FVpmhbD0rf5WqB24Nlwwj%2Fuploads%2FRCyHpAyXN1yTu2suiGs3%2FPaladin%20D-Squared%20Audit%20Report.pdf?alt=media&token=e98885d7-5b02-4d56-99a8-a0cbe9003141) - audit_report_link
- [https://docs.d2.finance/docs/audits.md](https://docs.d2.finance/docs/audits.md) - audit_report_link
- [https://docs.d2.finance/docs/security.md](https://docs.d2.finance/docs/security.md) - audit_report_link
- [https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2024-04-06-cyfrin-beefy-finance-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2024-04-06-cyfrin-beefy-finance-v2.0.pdf) - audit_report_link
- [https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2024-04-18-cyfrin-ondo-finance-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2024-04-18-cyfrin-ondo-finance-v2.0.pdf) - audit_report_link
- [https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-02-24-cyfrin-d2-v2.1.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-02-24-cyfrin-d2-v2.1.pdf) - audit_report_link
- [https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-03-28-cyfrin-rocko-refinance-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-03-28-cyfrin-rocko-refinance-v2.0.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.12.08%20-%20Final%20-%20Buffer%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.12.08%20-%20Final%20-%20Buffer%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.03.21%20-%20Final%20-%20Union%20Finance%20Update%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.03.21%20-%20Final%20-%20Union%20Finance%20Update%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.02.08%20-%20Final%20-%20Rubicon%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.02.08%20-%20Final%20-%20Rubicon%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.06%20-%20Final%20-%20Smilee%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.06%20-%20Final%20-%20Smilee%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.21%20-%20Final%20-%20Copra%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.21%20-%20Final%20-%20Copra%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.25%20-%20Final%20-%20Seismic%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.25%20-%20Final%20-%20Seismic%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.30%20-%20Final%20-%20Axis%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.30%20-%20Final%20-%20Axis%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.04.29%20-%20Final%20-%20Teller%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.04.29%20-%20Final%20-%20Teller%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.07.13%20-%20Final%20-%20Union%20Finance%20Update%202%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.07.13%20-%20Final%20-%20Union%20Finance%20Update%202%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.11.25%20-%20Final%20-%20Debita%20Finance%20V3%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.11.25%20-%20Final%20-%20Debita%20Finance%20V3%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.01%20-%20Final%20-%20Extra%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.01%20-%20Final%20-%20Extra%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.21%20-%20Final%20-%20Idle%20Finance%20Credit%20Vaults%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.21%20-%20Final%20-%20Idle%20Finance%20Credit%20Vaults%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.21%20-%20Final%20-%20Mach%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.21%20-%20Final%20-%20Mach%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.12.09%20-%20Final%20-%20Prodigy%20Finance%20Collaborative%20Audit%20Report%201765292688.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.12.09%20-%20Final%20-%20Prodigy%20Finance%20Collaborative%20Audit%20Report%201765292688.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.02.10%20-%20Final%20-%20Tori%20Finance%20Collaborative%20Audit%20Report%201770734349.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.02.10%20-%20Final%20-%20Tori%20Finance%20Collaborative%20Audit%20Report%201770734349.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Arcadia%20Finance%20Coverage%20Agreement%202024.03.25.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Arcadia%20Finance%20Coverage%20Agreement%202024.03.25.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Buffer%20Finance%20Coverage%20Agreement.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Buffer%20Finance%20Coverage%20Agreement.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Union%20Finance%20Coverage%20Agreement%202023.04.26.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Union%20Finance%20Coverage%20Agreement%202023.04.26.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Union%20Finance%20Coverage%20Agreement%202023.06.23.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Union%20Finance%20Coverage%20Agreement%202023.06.23.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/Union%20Finance%20Coverage%20Agreement%202025.01.03.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/Union%20Finance%20Coverage%20Agreement%202025.01.03.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/near/Sigma_Prime_Burrow_Finance_Burrowland_Security_Assessment_Report_v2_0.pdf](https://github.com/sigp/public-audits/blob/master/reports/near/Sigma_Prime_Burrow_Finance_Burrowland_Security_Assessment_Report_v2_0.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/pdfs/CronFinance-Spearbit-Security-Review.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/CronFinance-Spearbit-Security-Review.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-03-maplefinance-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-03-maplefinance-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-09-maplefinance-mapleprotocolv2-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-09-maplefinance-mapleprotocolv2-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-10-fraxfinance-fraxlend-fraxferry-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-10-fraxfinance-fraxlend-fraxferry-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-11-folksfinance-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-11-folksfinance-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2023-02-nestedfinance-smartcontracts-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-02-nestedfinance-smartcontracts-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2023-06-nestedfinance-tetrishyvm-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-06-nestedfinance-tetrishyvm-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-03-pufferfinance-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-03-pufferfinance-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-09-treehouse-finance-teth-extension-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-09-treehouse-finance-teth-extension-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-08-evaafinance-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-08-evaafinance-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/FraxFinance.pdf](https://github.com/trailofbits/publications/blob/master/reviews/FraxFinance.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/MapleFinance.pdf](https://github.com/trailofbits/publications/blob/master/reviews/MapleFinance.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/ParallelFinance.pdf](https://github.com/trailofbits/publications/blob/master/reviews/ParallelFinance.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/ParallelFinance2.pdf](https://github.com/trailofbits/publications/blob/master/reviews/ParallelFinance2.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/ParallelFinance2FixReview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/ParallelFinance2FixReview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/ParallelFinance3.pdf](https://github.com/trailofbits/publications/blob/master/reviews/ParallelFinance3.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Anzen%20Finance%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Anzen%20Finance%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Aura%20Finance%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Aura%20Finance%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Falcon%20Finance%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Falcon%20Finance%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Falcon%20Finance%20FF%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Falcon%20Finance%20FF%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Magma%20Finance%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Magma%20Finance%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Origami%20Finance%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Origami%20Finance%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link

### Audit Reports (full list)

- 2025-02-24 - Cyfrin - D2 finance Audit Report - https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-02-24-cyfrin-d2-v2.1.pdf

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/d2-finance.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $3,423.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:39:15.097Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-bec82ebc
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $3,423.
