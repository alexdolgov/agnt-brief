# Agentic Brief: Pangolin V2

## Project Overview

- **Project:** Pangolin V2 (pangolin)
- **Website:** pangolin.exchange
- **Category:** Dexs
- **Chains (topography):** 43114
- **Chains (DeFiLlama):** 43114
- **TVL:** $1,910,298 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 16 audits; most recent 2026-05-03 (2 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** small_tvl_coverage_filler

Pangolin V2 has 9 deployed contract rows in current topography. This brief renders the 9 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-95e36788; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 9 contracts across 1 chains. 1 have TP audit coverage (11.1%); 8 do not.

Small-TVL coverage filler. Review only if the uncovered surface is technically interesting.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### avalanche (chain_id 43114)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| PangolinFactory | factory | factory | unmatched | [0xefa94d...fd88](https://snowtrace.io/address/0xefa94de7a4656d787667c749f7e1223d71e9fd88) |
| Png | core | core | unmatched | [0x60781c...a982](https://snowtrace.io/address/0x60781c2586d68229fde47564546784ab3faca982) |
| StakingRewards | rewards | rewards | audited (TP) | [0x88afda...135b](https://snowtrace.io/address/0x88afdae1a9f58da3e68584421937e5f564a0135b) |
| unnamed | unknown | unknown | unmatched | [0x7428a0...e777](https://snowtrace.io/address/0x7428a089a79b24400a620f1cbf8bd0526cfae777) |
| unnamed | unknown | unknown | unmatched | [0xb29877...5ff4](https://snowtrace.io/address/0xb2987753d1561570f726aa373f48e77e27aa5ff4) |
| unnamed | unknown | unknown | unmatched | [0xb66e62...29fb](https://snowtrace.io/address/0xb66e62b25c42d55655a82f8ebf699f2266f329fb) |
| unnamed | unknown | unknown | unmatched | [0xbfe137...d79a](https://snowtrace.io/address/0xbfe13753156b9c6b2818fb45ff3d2392ea43d79a) |
| unnamed | unknown | unknown | unmatched | [0xc60bcd...a203](https://snowtrace.io/address/0xc60bcdaa9cc7cc372e793101fdfcb1083e25a203) |
| unnamed | unknown | unknown | unmatched | [0xed87f6...0a10](https://snowtrace.io/address/0xed87f64065fdb4e4ee580de1f768e2f8bd240a10) |

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
| No provenance | 9 | 1 | 8 | 11.1% |
| **Total** | 9 | 1 | 8 | 11.1% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | Halborn | Pangolin Smart Contract Security Audit Report Halborn Final | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 2 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://docs.pangolin.exchange/developers/bug-bounty](https://docs.pangolin.exchange/developers/bug-bounty) - audit_report_link
- [https://docs.pangolin.exchange/pangolin-overview/audits.md](https://docs.pangolin.exchange/pangolin-overview/audits.md) - audit_report_link
- [https://docs.pangolin.exchange/pangolin-overview/audits/pangolin-v2](https://docs.pangolin.exchange/pangolin-overview/audits/pangolin-v2) - audit_report_link
- [https://docs.pangolin.exchange/pangolin-overview/audits/pangolin-v2.md](https://docs.pangolin.exchange/pangolin-overview/audits/pangolin-v2.md) - audit_report_link
- [https://docs.pangolin.exchange/pangolin-overview/audits/pangolin-v3](https://docs.pangolin.exchange/pangolin-overview/audits/pangolin-v3) - audit_report_link
- [https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) - audit_report_link
- [https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf) - audit_report_link
- [https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf) - audit_report_link
- [https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) - audit_report_link
- [https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Draft.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Draft.pdf) - audit_report_link
- [https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) - audit_report_link
- [https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_v2_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_v2_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) - audit_report_link
- [https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) - audit_report_link
- [https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_RewarderViaMultiplier_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_RewarderViaMultiplier_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) - audit_report_link
- [https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) - audit_report_link
- [https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf) - audit_report_link
- [https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf) - audit_report_link
- [https://www.halborn.com/about/who-trusts-us](https://www.halborn.com/about/who-trusts-us) - audit_report_link

### Audit Reports (full list)

- unknown - Halborn - Pangolin Smart Contract Security Audit Report Halborn Final

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/pangolin.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $433,890.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:45:40.233Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-95e36788
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $433,890.
