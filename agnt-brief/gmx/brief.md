# Agentic Brief: GMX V1 Perps

## Project Overview

- **Project:** GMX V1 Perps (gmx)
- **Website:** gmx.io
- **Category:** Derivatives
- **Chains (topography):** 42161, 43114
- **Chains (DeFiLlama):** 42161, 43114
- **TVL:** $6,592,642 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 36 audits; most recent 2026-05-02 (2 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** mid_tvl_commercial_target

GMX V1 Perps has 2 deployed contract rows in current topography. This brief renders the 2 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-dd325e11; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 2 contracts across 2 chains. 1 have TP audit coverage (50.0%); 1 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| unnamed | unknown | unknown | unmatched | [0xfd70de...92d8](https://arbiscan.io/address/0xfd70de6b91282d8017aa4e741e9ae325cab992d8) |

### avalanche (chain_id 43114)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ExchangeRouter | router | router | audited (TP) | [0x8f550e...63b2](https://snowtrace.io/address/0x8f550e53dfe96c055d5bdb267c21f268fcaf63b2) |

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
| No provenance | 2 | 1 | 1 | 50.0% |
| **Total** | 2 | 1 | 1 | 50.0% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2023-03-24 | Sherlock | 2023.03.24 - Final - GMX Audit Report | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 2 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/abdk/ABDK_GMX_Synthetics_Audit.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/abdk/ABDK_GMX_Synthetics_Audit.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/certora/2023-11-13_GMX_Report_by_Certora.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/certora/2023-11-13_GMX_Report_by_Certora.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/dedaub/GMX_Synthetics_DeDaub_Audit.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/dedaub/GMX_Synthetics_DeDaub_Audit.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2022-10-24_GMX_Synthetics.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2022-10-24_GMX_Synthetics.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-01-08_GMX_Synthetics.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-01-08_GMX_Synthetics.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-03-15_GMX_Synthetics.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-03-15_GMX_Synthetics.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-05-15_GMX_Synthetics.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-05-15_GMX_Synthetics.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-06-02_GMX_Synthetics.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-06-02_GMX_Synthetics.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-07-11_GMX_Synthetics.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-07-11_GMX_Synthetics.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-07-28_GMX_Synthetics.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-07-28_GMX_Synthetics.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-09-01_GMX_Oracle_Updates.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-09-01_GMX_Oracle_Updates.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-09-26_GMX_Synthetics_Updates.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-09-26_GMX_Synthetics_Updates.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-10-25_GMX_Migrator.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-10-25_GMX_Migrator.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-11-26_GMX_Subaccount.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-11-26_GMX_Subaccount.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-12-17_GMX_Governance_Updates.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-12-17_GMX_Governance_Updates.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-01-16_GMX_Config.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-01-16_GMX_Config.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-06-14_GMX_Updates_1.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-06-14_GMX_Updates_1.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-06-14_GMX_Updates_2.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-06-14_GMX_Updates_2.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-06-14_GMX_Updates_3.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-06-14_GMX_Updates_3.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-09-03_GMX_GLV.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-09-03_GMX_GLV.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-09-04_GMX_Config_Syncer.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-09-04_GMX_Config_Syncer.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-11-18_GMX_Buybacks_Report.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-11-18_GMX_Buybacks_Report.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-11-18_GMX_Pro_Tiers_Report.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-11-18_GMX_Pro_Tiers_Report.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-04-11_GMX_Gasless_Sponsored_Calls_1.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-04-11_GMX_Gasless_Sponsored_Calls_1.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-04-11_GMX_Gasless_Sponsored_Calls_2.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-04-11_GMX_Gasless_Sponsored_Calls_2.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_1_report.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_1_report.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_2_report.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_2_report.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_3_report.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_3_report.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_4_report.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_4_report.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_5_report.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_5_report.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_6_report.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_6_report.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_7_report.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_7_report.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-09-24_GMX_JIT_Review_report.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-09-24_GMX_JIT_Review_report.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-09-24_GMX_OFT_Review_report.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-09-24_GMX_OFT_Review_report.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-11-04_GMX_Fee_Automations_report.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-11-04_GMX_Fee_Automations_report.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/main/audits/sherlock/Sherlock_GMX_Update_Audit_Report.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/sherlock/Sherlock_GMX_Update_Audit_Report.pdf) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/updates/docs/arbitrum-deployments.md](https://github.com/gmx-io/gmx-synthetics/blob/updates/docs/arbitrum-deployments.md) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/updates/docs/arbitrumSepolia-deployments.md](https://github.com/gmx-io/gmx-synthetics/blob/updates/docs/arbitrumSepolia-deployments.md) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/updates/docs/avalanche-deployments.md](https://github.com/gmx-io/gmx-synthetics/blob/updates/docs/avalanche-deployments.md) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/updates/docs/avalancheFuji-deployments.md](https://github.com/gmx-io/gmx-synthetics/blob/updates/docs/avalancheFuji-deployments.md) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/updates/docs/botanix-deployments.md](https://github.com/gmx-io/gmx-synthetics/blob/updates/docs/botanix-deployments.md) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/updates/docs/megaEth-deployments.md](https://github.com/gmx-io/gmx-synthetics/blob/updates/docs/megaEth-deployments.md) - audit_report_link
- [https://github.com/gmx-io/gmx-synthetics/blob/updates/README.md](https://github.com/gmx-io/gmx-synthetics/blob/updates/README.md) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.03.24%20-%20Final%20-%20GMX%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.03.24%20-%20Final%20-%20GMX%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.06.04%20-%20Final%20-%20GMX%20Update%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.06.04%20-%20Final%20-%20GMX%20Update%20Audit%20Report.pdf) - audit_report_link
- [https://immunefi.com/bounty/gmx](https://immunefi.com/bounty/gmx) - audit_report_link

### Audit Reports (full list)

- 2023-03-24 - Sherlock - 2023.03.24 - Final - GMX Audit Report

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/gmx.json
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
- **Per-contract TVL:** not persisted; protocol-level TVL only.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:44:01.736Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-dd325e11
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
