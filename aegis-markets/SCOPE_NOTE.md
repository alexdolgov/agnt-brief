# Agentic Brief: Aegis Markets

## Project Overview

- **Project:** Aegis Markets (aegis-markets)
- **Website:** aegis.markets
- **Category:** Liquidity Manager
- **Chains (topography):** 8453
- **Chains (DeFiLlama):** 8453
- **TVL:** $5,088,942 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** no prior audits found in audit corpus
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** mid_tvl_commercial_target

Aegis Markets has 10 deployed contract rows in current topography. This brief renders the 10 rows present in scope-match run recovery-bucket4-sourcify-v1-2026-05-05-b750682f; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 10 contracts across 1 chains. 2 have TP audit coverage (20.0%); 8 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| DynamicFeeManager | controller | controller | unmatched | [0xd7deab...8d98](https://basescan.org/address/0xd7deabab9ecd3bcb3b89ab0ce2c84c8565bb8d98) |
| FullRangeLiquidityManager | controller | controller | audited (TP) | [0xa7b3e2...52a3](https://basescan.org/address/0xa7b3e2306a0b46dbde3b533c4e2c3be6a24352a3) |
| PoolPolicyManager | vault_pool | vault_pool | audited (TP) | [0xe072d3...0ee7](https://basescan.org/address/0xe072d3c7567d4b326ddde0f77062e6758aec0ee7) |
| Spot | core | core | unmatched | [0x88c9ff...dacc](https://basescan.org/address/0x88c9ff9fc0b22cca42265d3f1d1c2c39e41cdacc) |
| TruncGeoOracleMulti | oracle | oracle | unmatched | [0xbe4f23...6abf](https://basescan.org/address/0xbe4f23b9488300c532a5d9d8d11b0b8163be6abf) |
| unnamed | unknown | unknown | unmatched | [0x22e086...acb5](https://basescan.org/address/0x22e086c085fbda3214db238f8a930d22228facb5) |
| unnamed | unknown | unknown | unmatched | [0xa0b0d2...10cc](https://basescan.org/address/0xa0b0d2d00fd544d8e0887f1a3cedd6e24baf10cc) |
| unnamed | unknown | unknown | unmatched | [0xa7ce35...8a2c](https://basescan.org/address/0xa7ce35e886e58926ad0c149f4cc558e27d458a2c) |
| unnamed | unknown | unknown | unmatched | [0xaaf29f...cdda](https://basescan.org/address/0xaaf29f2c9516062dc43c4465ef6d43ce8397cdda) |
| unnamed | unknown | unknown | unmatched | [0xe67686...a028](https://basescan.org/address/0xe6768629156d4b713e266b87502fbeccc218a028) |

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
| No provenance | 10 | 2 | 8 | 20.0% |
| **Total** | 10 | 2 | 8 | 20.0% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | Spearbit | spearbit cantina audit | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). No prior audits.

---

## Appendix

### Docs Pages Referenced

- [https://docs.aegis.markets/audits.md](https://docs.aegis.markets/audits.md) - audit_report_link
- [https://drive.google.com/file/d/1vUWENoQsiQxDuex0WU6mZtwJVmE50Ddc/view?usp=sharing](https://drive.google.com/file/d/1vUWENoQsiQxDuex0WU6mZtwJVmE50Ddc/view?usp=sharing) - audit_report_link
- [https://github.com/labs-solo/AEGIS_DFM/blob/main/audit/spearbit-cantina-audit.pdf](https://github.com/labs-solo/AEGIS_DFM/blob/main/audit/spearbit-cantina-audit.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.04.26%20-%20Final%20-%20Aegis%20Collaborative%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.04.26%20-%20Final%20-%20Aegis%20Collaborative%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.05.03%20-%20Final%20-%20Aegis.im%20YUSD%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.05.03%20-%20Final%20-%20Aegis.im%20YUSD%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2023-05-franklintempleton-moneymarket-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-05-franklintempleton-moneymarket-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2026-04-gensyn-delphidynamicparamutuelmarkets-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2026-04-gensyn-delphidynamicparamutuelmarkets-securityreview.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Ondo%20Global%20Markets%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Ondo%20Global%20Markets%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - Spearbit - spearbit cantina audit

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/aegis-markets.json
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

- **Generated at:** 2026-05-05T20:42:48.006Z
- **Scope-match run_id:** recovery-bucket4-sourcify-v1-2026-05-05-b750682f
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
