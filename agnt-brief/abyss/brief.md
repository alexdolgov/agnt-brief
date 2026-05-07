# Agentic Brief: Abyss

## Project Overview

- **Project:** Abyss (abyss)
- **Website:** abyssprotocol.xyz
- **Category:** Yield
- **Chains (topography):** 1
- **Chains (DeFiLlama):** none
- **TVL:** $2,224,614 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** sunsetting - latest deployment 2021-02-15
- **Audit history:** 1 audits; most recent 2021-02-24 (1896 days ago)
- **Tier:** 4 - project_sunsetting (Excluded)
- **Commercial fit:** small_tvl_coverage_filler

Abyss has 1 deployed contract rows in current topography. This brief renders the 1 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

**Lifecycle warning:** sunsetting. Source: project_lifecycle_status_v1. Outreach not recommended without operator review.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 1 contracts across 1 chains. 1 have TP audit coverage (100.0%); 0 do not.

Small-TVL coverage filler. Review only if the uncovered surface is technically interesting.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AbyssEth2Depositor | core | core | audited (TP) | [0xfa5f9e...5b18](https://etherscan.io/address/0xfa5f9eaa65ffb2a75de092eb7f3fc84fc86b5b18) |

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
| 2021-02-24 | MixBytes | AbyssEth2Depositor Security Audit Report | unspecified | direct | [report](https://github.com/mixbytes/audits_public/blob/master/Abyss%20Finance/Abyss%20Eth2%20Depositor/AbyssEth2Depositor%20Security%20Audit%20Report.pdf) |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 1896 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://d3cny4im7ppv5.cloudfront.net/Abyss.pdf](https://d3cny4im7ppv5.cloudfront.net/Abyss.pdf) - audit_report_link
- [https://docs.abyssprotocol.xyz/abyss-audit.md](https://docs.abyssprotocol.xyz/abyss-audit.md) - audit_report_link

### Audit Reports (full list)

- 2021-02-24 - MixBytes - AbyssEth2Depositor Security Audit Report - https://github.com/mixbytes/audits_public/blob/master/Abyss%20Finance/Abyss%20Eth2%20Depositor/AbyssEth2Depositor%20Security%20Audit%20Report.pdf

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/abyss.json
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

- **Generated at:** 2026-05-05T20:45:06.284Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $0.
