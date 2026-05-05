# Agentic Brief: Balancer V3

## Project Overview

- **Project:** Balancer V3 (balancer)
- **Website:** balancer.fi
- **Category:** Dexs
- **Chains (topography):** 1, 100, 8453, 42161
- **Chains (DeFiLlama):** 1, 10, 100, 8453, 42161, 43114
- **TVL:** $461,407,971 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 33 audits; most recent 2026-04-30 (5 days ago)
- **Tier:** 0 - uncategorized (Uncategorized)
- **Commercial fit:** large_tvl_marketing_asset

Balancer V3 has 6 deployed contract rows in current topography. This brief renders the 6 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 6 contracts across 4 chains. 6 have TP audit coverage (100.0%); 0 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BCoWFactory | factory | factory | audited (TP) | [0x23fcc2...91b7](https://etherscan.io/address/0x23fcc2166f991b8946d195de53745e1b804c91b7) |
| BCoWFactory | factory | factory | audited (TP) | [0xf76c42...0462](https://etherscan.io/address/0xf76c421bab7df8548604e60deccce50477c10462) |

### gnosis (chain_id 100)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BCoWFactory | factory | factory | audited (TP) | [0x703bd8...7624](https://gnosisscan.io/address/0x703bd8115e6f21a37bb5df97f78614ca72ad7624) |
| BCoWFactory | factory | factory | audited (TP) | [0x7573b9...8304](https://gnosisscan.io/address/0x7573b99bc09c11dc0427fb9c6662bc603e008304) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BCoWFactory | factory | factory | audited (TP) | [0x03362f...588e](https://basescan.org/address/0x03362f847b4fabc12e1ce98b6b59f94401e4588e) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BCoWFactory | factory | factory | audited (TP) | [0xe0e2ba...7302](https://arbiscan.io/address/0xe0e2ba143ee5268da87d529949a2521115987302) |

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
| No provenance | 6 | 6 | 0 | 100.0% |
| **Total** | 6 | 6 | 0 | 100.0% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | Certora | Certora Report For Balancer v1 | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 5 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/abdk/2022-05-27.pdf](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/abdk/2022-05-27.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/certora/2021-04-22.pdf](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/certora/2021-04-22.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/certora/2022-09-23.pdf](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/certora/2022-09-23.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/certora/2023-05-08.pdf](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/certora/2023-05-08.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/openzeppelin/2021-03-15.pdf](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/openzeppelin/2021-03-15.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/openzeppelin/2021-10-09.pdf](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/openzeppelin/2021-10-09.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/test-report.md](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/test-report.md) - audit_report_link
- [https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/trail-of-bits/2021-04-02.pdf](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/trail-of-bits/2021-04-02.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/trail-of-bits/2021-10-08.pdf](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/trail-of-bits/2021-10-08.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/trail-of-bits/2022-05-27.pdf](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/trail-of-bits/2022-05-27.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/trail-of-bits/2022-09-02.pdf](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/trail-of-bits/2022-09-02.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/trail-of-bits/2022-10-25.pdf](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/trail-of-bits/2022-10-25.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/cantina/2024-12-17.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/cantina/2024-12-17.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/cantina/2024-12-31.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/cantina/2024-12-31.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2024-09-04.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2024-09-04.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2024-12-24.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2024-12-24.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-01-30.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-01-30.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-02-07.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-02-07.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-02-17.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-02-17.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-08-19.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-08-19.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-09-08.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-09-08.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-09-10.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-09-10.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2026-01-26.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2026-01-26.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/spearbit/2024-10-04.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/spearbit/2024-10-04.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/test-report.md](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/test-report.md) - audit_report_link
- [https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/trail-of-bits/2024-12-11.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/trail-of-bits/2024-12-11.pdf) - audit_report_link
- [https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/WONTFIX.md](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/WONTFIX.md) - audit_report_link
- [https://github.com/balancer/cow-amm/blob/main/audits/Certora_Report_For_Balancer_v1.pdf](https://github.com/balancer/cow-amm/blob/main/audits/Certora_Report_For_Balancer_v1.pdf) - audit_report_link
- [https://github.com/balancer/cow-amm/blob/main/audits/come-du-crest-audit.pdf](https://github.com/balancer/cow-amm/blob/main/audits/come-du-crest-audit.pdf) - audit_report_link
- [https://github.com/balancer/docs-v1/blob/master/core-concepts/security/audits.md](https://github.com/balancer/docs-v1/blob/master/core-concepts/security/audits.md) - audit_report_link
- [https://github.com/balancer/docs-v1/blob/master/core-concepts/security/bounty.md](https://github.com/balancer/docs-v1/blob/master/core-concepts/security/bounty.md) - audit_report_link
- [https://github.com/balancer/docs-v1/blob/master/protocol/security/audits.md](https://github.com/balancer/docs-v1/blob/master/protocol/security/audits.md) - audit_report_link
- [https://github.com/balancer/docs-v1/blob/master/protocol/security/bounty.md](https://github.com/balancer/docs-v1/blob/master/protocol/security/bounty.md) - audit_report_link
- [https://github.com/balancer/docs-v2-archive/blob/v2/concepts/security/audits.md](https://github.com/balancer/docs-v2-archive/blob/v2/concepts/security/audits.md) - audit_report_link
- [https://github.com/balancer/docs-v2-archive/blob/v2/concepts/security/bug-bounties.md](https://github.com/balancer/docs-v2-archive/blob/v2/concepts/security/bug-bounties.md) - audit_report_link
- [https://github.com/balancer/docs-v2-archive/blob/v2/concepts/security/emergency-pause.md](https://github.com/balancer/docs-v2-archive/blob/v2/concepts/security/emergency-pause.md) - audit_report_link
- [https://github.com/balancer/docs-v2-archive/blob/v2/core-concepts-1/security/audits.md](https://github.com/balancer/docs-v2-archive/blob/v2/core-concepts-1/security/audits.md) - audit_report_link
- [https://github.com/balancer/docs-v2-archive/blob/v2/core-concepts-1/security/bug-bounties.md](https://github.com/balancer/docs-v2-archive/blob/v2/core-concepts-1/security/bug-bounties.md) - audit_report_link
- [https://github.com/balancer/docs-v2-archive/blob/v2/security/audits.md](https://github.com/balancer/docs-v2-archive/blob/v2/security/audits.md) - audit_report_link
- [https://github.com/balancer/docs-v2-archive/blob/v2/security/balancer-x-certora-accelerator.md](https://github.com/balancer/docs-v2-archive/blob/v2/security/balancer-x-certora-accelerator.md) - audit_report_link
- [https://github.com/balancer/docs-v2-archive/blob/v2/security/bug-bounties.md](https://github.com/balancer/docs-v2-archive/blob/v2/security/bug-bounties.md) - audit_report_link
- [https://github.com/balancer/docs-v2-archive/blob/v2/security/emergency-pause.md](https://github.com/balancer/docs-v2-archive/blob/v2/security/emergency-pause.md) - audit_report_link
- [https://github.com/balancer/docs-v2-archive/blob/v2/security/token-compatibility.md](https://github.com/balancer/docs-v2-archive/blob/v2/security/token-compatibility.md) - audit_report_link
- [https://github.com/balancer/lz-v1-endpoint/blob/main/audit/Ackee_Audit_Solidty_Examples_Aug_8.pdf](https://github.com/balancer/lz-v1-endpoint/blob/main/audit/Ackee_Audit_Solidty_Examples_Aug_8.pdf) - audit_report_link
- [https://github.com/balancer/lz-v1-endpoint/blob/main/audit/Ackee_Audit_Solidty_Examples_July_27.pdf](https://github.com/balancer/lz-v1-endpoint/blob/main/audit/Ackee_Audit_Solidty_Examples_July_27.pdf) - audit_report_link
- [https://github.com/balancer/lz-v1-endpoint/blob/main/audit/Ackee_Audit_Solidty_Examples_May_3.pdf](https://github.com/balancer/lz-v1-endpoint/blob/main/audit/Ackee_Audit_Solidty_Examples_May_3.pdf) - audit_report_link
- [https://github.com/balancer/lz-v1-endpoint/blob/main/audit/Zellic_Audit_Solidity_Examples_May_21.pdf](https://github.com/balancer/lz-v1-endpoint/blob/main/audit/Zellic_Audit_Solidity_Examples_May_21.pdf) - audit_report_link
- [https://github.com/balancer/permit2/blob/main/audits/ABDKAudit.pdf](https://github.com/balancer/permit2/blob/main/audits/ABDKAudit.pdf) - audit_report_link
- [https://github.com/balancer/permit2/blob/main/audits/Chainsecurity%20Audit.pdf](https://github.com/balancer/permit2/blob/main/audits/Chainsecurity%20Audit.pdf) - audit_report_link
- [https://github.com/balancer/reclamm/blob/main/audits/certora/2025-04-15.pdf](https://github.com/balancer/reclamm/blob/main/audits/certora/2025-04-15.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - Certora - Certora Report For Balancer v1

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/balancer.json
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

- **Generated at:** 2026-05-05T20:35:53.763Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $0.
