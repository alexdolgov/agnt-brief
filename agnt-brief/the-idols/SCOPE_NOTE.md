# Agentic Brief: The Idols

## Project Overview

- **Project:** The Idols (the-idols)
- **Website:** theidols.io
- **Category:** Reserve Currency
- **Chains (topography):** 1
- **Chains (DeFiLlama):** 1
- **TVL:** $6,145,971 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 2 audits; most recent 2026-05-02 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** mid_tvl_commercial_target

The Idols has 3 deployed contract rows in current topography. This brief renders the 3 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-2b686225; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 3 contracts across 1 chains. 1 have TP audit coverage (33.3%); 2 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| RewardsCollector | rewards | rewards | likely in scope | [0x7d624c...256a](https://etherscan.io/address/0x7d624c34e475a2eca893d0c118527b6e2061256a) |
| VirtueEthRewards | rewards | rewards | likely in scope | [0xc73b93...7baf](https://etherscan.io/address/0xc73b93885f10c5eaf8cb126495bbd14d3b9b7baf) |
| VirtueToken | token | token | audited (TP) | [0x9416ba...b863](https://etherscan.io/address/0x9416ba76e88d873050a06e5956a3ebf10386b863) |

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
| unknown | Certik | spaces%2Fba7s5jnnrOzcoSBMQAGq%2Fuploads%2FJc6W2sm0sGnJihyrsnQ6%2FCertik%20 %20The%20Idols%20NFT | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://4130580353-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fba7s5jnnrOzcoSBMQAGq%2Fuploads%2FaHFdiiTIbOAfE09s9boc%2FThe%20Idols%20Audit%20(WhiteHatDAO).pdf?alt=media&token=b66b4b16-826d-476c-a2de-b11261585099](https://4130580353-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fba7s5jnnrOzcoSBMQAGq%2Fuploads%2FaHFdiiTIbOAfE09s9boc%2FThe%20Idols%20Audit%20(WhiteHatDAO).pdf?alt=media&token=b66b4b16-826d-476c-a2de-b11261585099) - audit_report_link
- [https://4130580353-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fba7s5jnnrOzcoSBMQAGq%2Fuploads%2FJc6W2sm0sGnJihyrsnQ6%2FCertik%20-%20The%20Idols%20NFT.pdf?alt=media&token=480f3473-8a2a-46e4-96b9-866709bd09fc](https://4130580353-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fba7s5jnnrOzcoSBMQAGq%2Fuploads%2FJc6W2sm0sGnJihyrsnQ6%2FCertik%20-%20The%20Idols%20NFT.pdf?alt=media&token=480f3473-8a2a-46e4-96b9-866709bd09fc) - audit_report_link
- [https://docs.theidols.io/files/VCpN2fdjYsg6MqroDJ9b](https://docs.theidols.io/files/VCpN2fdjYsg6MqroDJ9b) - audit_report_link
- [https://docs.theidols.io/files/ZR2TP1tMw3Gys0xAM3JL](https://docs.theidols.io/files/ZR2TP1tMw3Gys0xAM3JL) - audit_report_link
- [https://docs.theidols.io/resources/audit.md](https://docs.theidols.io/resources/audit.md) - audit_report_link

### Audit Reports (full list)

- unknown - Certik - spaces%2Fba7s5jnnrOzcoSBMQAGq%2Fuploads%2FJc6W2sm0sGnJihyrsnQ6%2FCertik%20 %20The%20Idols%20NFT

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/the-idols.json
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

- **Generated at:** 2026-05-05T20:42:21.171Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-2b686225
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
