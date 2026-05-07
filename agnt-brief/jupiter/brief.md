# Agentic Brief: Jupiter

## Project Overview

- **Project:** Jupiter (jupiter)
- **Website:** jup.ag
- **Category:** Basis Trading
- **Chains (topography):** 1
- **Chains (DeFiLlama):** 101
- **TVL:** $59,637,252 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** dead - latest deployment 2020-08-16
- **Audit history:** 4 audits; most recent 2026-04-30 (4 days ago)
- **Tier:** 4 - project_dead_or_rugged (Excluded)
- **Commercial fit:** large_tvl_marketing_asset

Jupiter has 3 deployed contract rows in current topography. This brief renders the 3 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-dd325e11; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

**Lifecycle warning:** dead. Source: project_lifecycle_status_v1. Outreach not recommended without operator review.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 3 contracts across 1 chains. 1 have TP audit coverage (33.3%); 2 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| IGNORE3 | core | core | unmatched | [0x5fa17b...ec00](https://etherscan.io/address/0x5fa17b14c0fe80bf10be4d36e086c550b195ec00) |
| IGNOREv2 | core | core | unmatched | [0x61927a...c1cc](https://etherscan.io/address/0x61927aa93a02e48c396ce392fbb5bb49120fc1cc) |
| Jupiter | core | core | audited (TP) | [0x4b1e80...2be8](https://etherscan.io/address/0x4b1e80cac91e2216eeb63e29b957eb91ae9c2be8) |

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
| No provenance | 3 | 1 | 2 | 33.3% |
| **Total** | 3 | 1 | 2 | 33.3% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2021-04-20 | Pessemistic | Jupiter Security Analysis by Pessimistic | unspecified | direct | [report](https://github.com/pessimistic-io/audits/blob/main/Jupiter%20Security%20Analysis%20by%20Pessimistic.pdf) |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://drive.google.com/file/d/1ayxMQVutULTxEQbRVzY-rVxO_t5-mP5W/view?usp=sharing](https://drive.google.com/file/d/1ayxMQVutULTxEQbRVzY-rVxO_t5-mP5W/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/d/1nKj2MLwG83YVQYs0GMiuSUorl-We7X_B/view?usp=sharing](https://drive.google.com/file/d/1nKj2MLwG83YVQYs0GMiuSUorl-We7X_B/view?usp=sharing) - audit_report_link
- [https://jupusd.money/homepage/audits/guardian.pdf](https://jupusd.money/homepage/audits/guardian.pdf) - audit_report_link
- [https://jupusd.money/homepage/audits/offsidelabs.pdf](https://jupusd.money/homepage/audits/offsidelabs.pdf) - audit_report_link
- [https://jupusd.money/homepage/audits/pashov.pdf](https://jupusd.money/homepage/audits/pashov.pdf) - audit_report_link
- [https://www.jupresear.ch/t/jup-community-audit-feb-2025/34764](https://www.jupresear.ch/t/jup-community-audit-feb-2025/34764) - audit_report_link
- [https://www.jupresear.ch/t/jup-community-audit-jul-2024/20810](https://www.jupresear.ch/t/jup-community-audit-jul-2024/20810) - audit_report_link

### Audit Reports (full list)

- 2021-04-20 - Pessemistic - Jupiter Security Analysis by Pessimistic - https://github.com/pessimistic-io/audits/blob/main/Jupiter%20Security%20Analysis%20by%20Pessimistic.pdf

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/jupiter.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $1,290.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:36:46.960Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-dd325e11
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $1,290.
