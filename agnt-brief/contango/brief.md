# Agentic Brief: Contango V2

## Project Overview

- **Project:** Contango V2 (contango)
- **Website:** contango.xyz
- **Category:** Derivatives
- **Chains (topography):** 42161
- **Chains (DeFiLlama):** 1, 10, 56, 100, 137, 8453, 42161, 43114, 59144, 534352
- **TVL:** $158,485,774 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 6 audits; most recent 2026-05-01 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Contango V2 has 5 deployed contract rows in current topography. This brief renders the 5 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-bec82ebc; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 5 contracts across 1 chains. 2 have TP audit coverage (40.0%); 3 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ContangoPerpetualOption | core | core | audited (TP) | [0xc171c6...20a7](https://arbiscan.io/address/0xc171c681bfa3720306c1ba695a52b54f3f5d20a7) |
| ContangoToken | token | token | audited (TP) | [0xc760f9...9966](https://arbiscan.io/address/0xc760f9782f8cea5b06d862574464729537159966) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0x007606...756b](https://arbiscan.io/address/0x007606064f8a40745336f91a1e4345900143756b) |
| PositionNFT | token | token | unmatched | [0xc2462f...fd78](https://arbiscan.io/address/0xc2462f03920d47fc5b9e2c5f0ba5d2ded058fd78) |
| unnamed | unknown | unknown | unmatched | [0x96aa72...221a](https://arbiscan.io/address/0x96aa72542ce42f99f93de51e2f24cc2601c6221a) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 1 proxies on 42161. 1 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0x05950b...9c23. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 5 | 2 | 3 | 40.0% |
| **Total** | 5 | 2 | 3 | 40.0% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | Offbeat%20Security%20 %20Contango%20Perpetual%20Option%20Review%20 %20Oct%202024 | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://docs.contango.xyz/resources/contracts-and-audits](https://docs.contango.xyz/resources/contracts-and-audits) - audit_report_link
- [https://docs.contango.xyz/resources/contracts-and-audits.md](https://docs.contango.xyz/resources/contracts-and-audits.md) - audit_report_link
- [https://github.com/contango-xyz/core-v2/blob/main/audit/ABDK_Contango_CoreV2_PARTII_v_3_0.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/ABDK_Contango_CoreV2_PARTII_v_3_0.pdf) - audit_report_link
- [https://github.com/contango-xyz/core-v2/blob/main/audit/ABDK_Contango_CoreV2_v_2_0.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/ABDK_Contango_CoreV2_v_2_0.pdf) - audit_report_link
- [https://github.com/contango-xyz/core-v2/blob/main/audit/ABDK_Contango_CoreV2PartIII_v_2_0.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/ABDK_Contango_CoreV2PartIII_v_2_0.pdf) - audit_report_link
- [https://github.com/contango-xyz/core-v2/blob/main/audit/Compound%20-%20Contango%20Integration%20Audit.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/Compound%20-%20Contango%20Integration%20Audit.pdf) - audit_report_link
- [https://github.com/contango-xyz/core-v2/blob/main/audit/Offbeat%20Security%20-%20Contango%20Perpetual%20Option%20Review%20-%20Oct%202024.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/Offbeat%20Security%20-%20Contango%20Perpetual%20Option%20Review%20-%20Oct%202024.pdf) - audit_report_link
- [https://github.com/contango-xyz/core-v2/blob/main/audit/Offbeat%20Security%20-%20Dolomite%20Money%20Market%20Review%20-%20May%202024.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/Offbeat%20Security%20-%20Dolomite%20Money%20Market%20Review%20-%20May%202024.pdf) - audit_report_link
- [https://github.com/contango-xyz/core-v2/blob/main/audit/Offbeat%20Security%20-%20Euler%20Money%20Market%20Review%20-%20Sep%202024.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/Offbeat%20Security%20-%20Euler%20Money%20Market%20Review%20-%20Sep%202024.pdf) - audit_report_link
- [https://github.com/contango-xyz/core-v2/blob/main/audit/Offbeat%20Security%20-%20Strategy%20Builder%20Review%20-%20May%202024.pdf](https://github.com/contango-xyz/core-v2/blob/main/audit/Offbeat%20Security%20-%20Strategy%20Builder%20Review%20-%20May%202024.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - Offbeat%20Security%20 %20Contango%20Perpetual%20Option%20Review%20 %20Oct%202024

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/contango.json
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

- **Generated at:** 2026-05-05T20:39:41.842Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-bec82ebc
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
