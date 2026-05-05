# Agentic Brief: Smilee Finance gBERA

## Project Overview

- **Project:** Smilee Finance gBERA (smilee-finance)
- **Website:** smilee.finance
- **Category:** Liquid Staking
- **Chains (topography):** 42161
- **Chains (DeFiLlama):** 80094
- **TVL:** $1,788,678 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** no prior audits found in audit corpus
- **Tier:** 0 - uncategorized (Uncategorized)
- **Commercial fit:** small_tvl_coverage_filler

Smilee Finance gBERA has 1 deployed contract rows in current topography. This brief renders the 1 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-720c81c2; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 1 contracts across 1 chains. 1 have TP audit coverage (100.0%); 0 do not.

Small-TVL coverage filler. Review only if the uncovered surface is technically interesting.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AddressProvider | core | core | audited (TP) | [0x110a3b...2cf1](https://arbiscan.io/address/0x110a3b051397956d69733b6fe947648bb9062cf1) |

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
| No provenance | 1 | 1 | 0 | 100.0% |
| **Total** | 1 | 1 | 0 | 100.0% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2024-03-06 | Sherlock | 2024.03.06 - Final - Smilee Finance Audit Report | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). No prior audits.

---

## Appendix

### Docs Pages Referenced

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
- [https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/audits/2017-03.md](https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/audits/2017-03.md) - audit_report_link
- [https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/audits/2018-10.pdf](https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/audits/2018-10.pdf) - audit_report_link
- [https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/audits/2022-10-Checkpoints.pdf](https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/audits/2022-10-Checkpoints.pdf) - audit_report_link
- [https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/audits/2022-10-ERC4626.pdf](https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/audits/2022-10-ERC4626.pdf) - audit_report_link
- [https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/audits/2023-05-v4.9.pdf](https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/audits/2023-05-v4.9.pdf) - audit_report_link
- [https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/audits/2023-10-v5.0.pdf](https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/audits/2023-10-v5.0.pdf) - audit_report_link
- [https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/audits/2017-03.md](https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/audits/2017-03.md) - audit_report_link
- [https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/audits/2018-10.pdf](https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/audits/2018-10.pdf) - audit_report_link
- [https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/audits/2022-10-Checkpoints.pdf](https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/audits/2022-10-Checkpoints.pdf) - audit_report_link
- [https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/audits/2022-10-ERC4626.pdf](https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/audits/2022-10-ERC4626.pdf) - audit_report_link
- [https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/audits/2023-05-v4.9.pdf](https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/audits/2023-05-v4.9.pdf) - audit_report_link
- [https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/audits/2023-10-v5.0.pdf](https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/audits/2023-10-v5.0.pdf) - audit_report_link
- [https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts/audits/2017-03.md](https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts/audits/2017-03.md) - audit_report_link
- [https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts/audits/2018-10.pdf](https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts/audits/2018-10.pdf) - audit_report_link
- [https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts/audits/2022-10-Checkpoints.pdf](https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts/audits/2022-10-Checkpoints.pdf) - audit_report_link
- [https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts/audits/2022-10-ERC4626.pdf](https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts/audits/2022-10-ERC4626.pdf) - audit_report_link
- [https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts/audits/2023-05-v4.9.pdf](https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts/audits/2023-05-v4.9.pdf) - audit_report_link
- [https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts/audits/2023-10-v5.0.pdf](https://github.com/smilee-finance/gbera-contracts/blob/master/lib/openzeppelin-contracts/audits/2023-10-v5.0.pdf) - audit_report_link
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

### Audit Reports (full list)

- 2024-03-06 - Sherlock - 2024.03.06 - Final - Smilee Finance Audit Report

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/smilee-finance.json
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

- **Generated at:** 2026-05-05T20:45:46.934Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-720c81c2
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $0.
