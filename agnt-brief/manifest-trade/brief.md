# Agentic Brief: Manifest Trade

## Project Overview

- **Project:** Manifest Trade (manifest-trade)
- **Website:** manifest.trade
- **Category:** Dexs
- **Chains (topography):** 1
- **Chains (DeFiLlama):** 101
- **TVL:** $17,578,343 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 6 audits; most recent 2026-05-01 (4 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** mid_tvl_commercial_target

Manifest Trade has 17 deployed contract rows in current topography. This brief renders the 17 rows present in scope-match run recovery-full-v6-post-filter-2026-05-05-303d7be6; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 17 contracts across 1 chains. 2 have TP audit coverage (11.8%); 15 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| LiquidityModule | adapter | adapter | audited (TP) | [0xc2b2c6...028a](https://etherscan.io/address/0xc2b2c618652202963156b270be813d260000028a) |
| SafeProxy | proxy | proxy | unmatched | [0x2cbde1...dafa](https://etherscan.io/address/0x2cbde1f552cca63b3e61bd6cc7d7afae3cb0dafa) |
| SafeProxy | proxy | proxy | unmatched | [0x3cb22c...7e69](https://etherscan.io/address/0x3cb22cf3612381000d66a7a6ecad176c30987e69) |
| SafeProxy | proxy | proxy | unmatched | [0xa365e9...69c6](https://etherscan.io/address/0xa365e9e80e59dca1437c7182eca6eb5e400169c6) |
| SafeProxy | proxy | proxy | unmatched | [0xb38bd5...a7cf](https://etherscan.io/address/0xb38bd529b79ca8d483a8b9c3e89619a333aca7cf) |
| SafeProxy | proxy | proxy | unmatched | [0xc09e6c...37ac](https://etherscan.io/address/0xc09e6ca4cca5d3e56dea528bd966af48742437ac) |
| SafeProxy | proxy | proxy | unmatched | [0xe9f582...d3d5](https://etherscan.io/address/0xe9f5827e6bdce3a816b8e7a9ede33afb2456d3d5) |
| VaultComposerSync | vault_pool | vault_pool | audited (TP) | [0x34af8f...4b89](https://etherscan.io/address/0x34af8f6ebaac29db5dff923fe54493b5933e4b89) |
| unnamed | unknown | unknown | unmatched | [0x06595b...a34e](https://etherscan.io/address/0x06595b38d2dfa3bd1a712ff179f456018456a34e) |
| unnamed | unknown | unknown | unmatched | [0x06ca0c...6055](https://etherscan.io/address/0x06ca0c0b339214ce65245824ac2c88fef5756055) |
| unnamed | unknown | unknown | unmatched | [0x216ff5...975f](https://etherscan.io/address/0x216ff5d8e6980c774b2355416da7df36a986975f) |
| unnamed | unknown | unknown | unmatched | [0x47172c...f02c](https://etherscan.io/address/0x47172ca995e17d62a4bedfaedfd27c9873b6f02c) |
| unnamed | unknown | unknown | unmatched | [0x5c0866...7bcc](https://etherscan.io/address/0x5c086682f0bf1da4dff2e7ff99b6a34fd0e97bcc) |
| unnamed | unknown | unknown | unmatched | [0xa10870...abf1](https://etherscan.io/address/0xa10870ee1092f1e47a6241370feff868c8e3abf1) |
| unnamed | unknown | unknown | unmatched | [0xb000f5...f3c6](https://etherscan.io/address/0xb000f5139112883b20bd1fea425396cadc5ef3c6) |
| unnamed | unknown | unknown | unmatched | [0xc0137c...1e17](https://etherscan.io/address/0xc0137c16eca1abf82c680d464a14f9a3f69d1e17) |
| unnamed | unknown | unknown | unmatched | [0xd1332b...0180](https://etherscan.io/address/0xd1332b3eade3e350c1247581964641a5b8e20180) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 6 proxies on 1. 0 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 6 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 2 distinct deployer addresses: 0x9683fe...a886, 0xd3ef7b...8de7. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 17 | 2 | 15 | 11.8% |
| **Total** | 17 | 2 | 15 | 11.8% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | Sherlock | Sherlock Audit Report | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://cdn.manifest.finance/Guardian-Audit-Report.pdf](https://cdn.manifest.finance/Guardian-Audit-Report.pdf) - audit_report_link
- [https://cdn.manifest.finance/Kann-Audit-Report.pdf](https://cdn.manifest.finance/Kann-Audit-Report.pdf) - audit_report_link
- [https://cdn.manifest.finance/Sherlock-Audit-Report.pdf](https://cdn.manifest.finance/Sherlock-Audit-Report.pdf) - audit_report_link
- [https://docs.manifest.finance/reference/security-and-audits.md](https://docs.manifest.finance/reference/security-and-audits.md) - audit_report_link
- [https://github.com/Bonasa-Tech/manifest/blob/main/audits/certora.pdf](https://github.com/Bonasa-Tech/manifest/blob/main/audits/certora.pdf) - audit_report_link
- [https://github.com/Bonasa-Tech/manifest/blob/main/audits/updates.md](https://github.com/Bonasa-Tech/manifest/blob/main/audits/updates.md) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.11.28%20-%20Final%20-%20Rage%20Trade%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.11.28%20-%20Final%20-%20Rage%20Trade%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Rage%20Trade%20Coverage%20Agreement.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Rage%20Trade%20Coverage%20Agreement.pdf) - audit_report_link
- [https://manifest.trade/audit.pdf](https://manifest.trade/audit.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - Sherlock - Sherlock Audit Report

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/manifest-trade.json
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

- **Generated at:** 2026-05-05T20:39:28.435Z
- **Scope-match run_id:** recovery-full-v6-post-filter-2026-05-05-303d7be6
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
