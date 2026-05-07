# Agentic Brief: Angstrom

## Project Overview

- **Project:** Angstrom (angstrom)
- **Website:** angstrom.xyz
- **Category:** Dexs
- **Chains (topography):** 1, 8453
- **Chains (DeFiLlama):** 1
- **TVL:** $10,491,250 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 3 audits; most recent 2026-05-02 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** mid_tvl_commercial_target

Angstrom has 8 deployed contract rows in current topography. This brief renders the 8 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 8 contracts across 2 chains. 1 have TP audit coverage (12.5%); 7 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Angstrom | core | core | audited (TP) | [0x000000...fad4](https://etherscan.io/address/0x0000000aa232009084bd71a5797d089aa4edfad4) |
| AngstromAdapter | adapter | adapter | unmatched | [0xb535ae...fbf8](https://etherscan.io/address/0xb535aeb27335b91e1b5bccbd64888ba7574efbf8) |
| AngstromInspector | core | core | unmatched | [0xd262c2...b6c3](https://etherscan.io/address/0xd262c224402e9a7f5e8ad1621be1bb1f3203b6c3) |
| ControllerV1 | controller | controller | unmatched | [0x174648...5fd4](https://etherscan.io/address/0x1746484ea5e11c75e009252c102c8c33e0315fd4) |
| TimelockController | governance | governance | unmatched | [0x60d41d...6c01](https://etherscan.io/address/0x60d41d9708bbefd29000d1486c6406ef23526c01) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AngstromL2 | bridge | bridge | unmatched | [0x7fa49d...e5cf](https://basescan.org/address/0x7fa49d29481b6d168505ccde26635e204c09e5cf) |
| AngstromL2 | bridge | bridge | unmatched | [0xcd256a...e5cf](https://basescan.org/address/0xcd256a2f4574cb6aca4837313ad225d2fe1de5cf) |
| AngstromL2Factory | factory | factory | unmatched | [0x000000...cd05](https://basescan.org/address/0x0000000000fd3b85c30f942e8d878e858e69cd05) |

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
| No provenance | 8 | 1 | 7 | 12.5% |
| **Total** | 8 | 1 | 7 | 12.5% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://app.angstrom.xyz/whitepaper-v1.pdf](https://app.angstrom.xyz/whitepaper-v1.pdf) - audit_report_link
- [https://cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940](https://cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940) - audit_report_link
- [https://cantina.xyz/portfolio/39f1c6a9-dbd5-4322-b6a3-84b794b97cb8](https://cantina.xyz/portfolio/39f1c6a9-dbd5-4322-b6a3-84b794b97cb8) - audit_report_link
- [https://cantina.xyz/portfolio/c2fe4e46-66a3-416e-ab26-40dd4b437ff6](https://cantina.xyz/portfolio/c2fe4e46-66a3-416e-ab26-40dd4b437ff6) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/angstrom.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $664,957.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:41:28.104Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $664,957.
