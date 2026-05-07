# Agentic Brief: symmio

## Project Overview

- **Project:** symmio (symmio)
- **Website:** symm.io
- **Category:** Derivatives
- **Chains (topography):** 137
- **Chains (DeFiLlama):** 56, 146, 5000, 8453, 34443, 42161, 80094
- **TVL:** $25,203,677 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 34 audits; most recent 2026-05-02 (2 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

symmio has 7 deployed contract rows in current topography. This brief renders the 7 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-2b686225; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 7 contracts across 1 chains. 1 have TP audit coverage (14.3%); 6 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### polygon (chain_id 137)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| MultiAccount | core | core | audited (TP) | [0x950bae...ca4b](https://polygonscan.com/address/0x950baef761a17cd0f77d6db8008ebebd011fca4b) |
| ProxyAdmin | proxy | proxy | unmatched | [0xb3a34b...78d2](https://polygonscan.com/address/0xb3a34b46a9103fb157b5b1af4655ec703b1578d2) |
| ProxyAdmin | proxy | proxy | unmatched | [0xc0788b...306c](https://polygonscan.com/address/0xc0788bb9293e53703a4e3921409849fae006306c) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x78174a...474d](https://polygonscan.com/address/0x78174a787914ae4eb8c1eac87fea19c547fd474d) |
| unnamed | unknown | unknown | unmatched | [0x3b5ac6...4570](https://polygonscan.com/address/0x3b5ac601c7bb74999ab3135fa43cbdbc6ab74570) |
| unnamed | unknown | unknown | unmatched | [0x608034...0160](https://polygonscan.com/address/0x60803461016157601f610e2d3881900391820160) |
| unnamed | unknown | unknown | unmatched | [0x976c87...537b](https://polygonscan.com/address/0x976c87cd3eb2de462db249cca711e4c89154537b) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 1 proxies on 137. 1 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 0 distinct deployer addresses: unknown. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 7 | 1 | 6 | 14.3% |
| **Total** | 7 | 1 | 6 | 14.3% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2024-06-22 | Sherlock | 2024.06.22 - Final - SYMMIO v0.83 Update Contest Audit Report | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 2 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://audits.sherlock.xyz/bug-bounties/5?t=details](https://audits.sherlock.xyz/bug-bounties/5?t=details) - audit_report_link
- [https://audits.sherlock.xyz/contests/108](https://audits.sherlock.xyz/contests/108) - audit_report_link
- [https://audits.sherlock.xyz/contests/144](https://audits.sherlock.xyz/contests/144) - audit_report_link
- [https://audits.sherlock.xyz/contests/427](https://audits.sherlock.xyz/contests/427) - audit_report_link
- [https://audits.sherlock.xyz/contests/577?filter=questions](https://audits.sherlock.xyz/contests/577?filter=questions) - audit_report_link
- [https://audits.sherlock.xyz/contests/838](https://audits.sherlock.xyz/contests/838) - audit_report_link
- [https://audits.sherlock.xyz/contests/85](https://audits.sherlock.xyz/contests/85) - audit_report_link
- [https://docs.symm.io/security-and-architecture/audit-reports](https://docs.symm.io/security-and-architecture/audit-reports) - audit_report_link
- [https://docs.symm.io/security-and-architecture/audit-reports/staking-and-vesting](https://docs.symm.io/security-and-architecture/audit-reports/staking-and-vesting) - audit_report_link
- [https://docs.symm.io/security-and-architecture/audit-reports/staking-and-vesting/sherlock-audit-mar-7-2025](https://docs.symm.io/security-and-architecture/audit-reports/staking-and-vesting/sherlock-audit-mar-7-2025) - audit_report_link
- [https://docs.symm.io/security-and-architecture/audit-reports/staking-and-vesting/sherlock-audit-mar-7-2025.md](https://docs.symm.io/security-and-architecture/audit-reports/staking-and-vesting/sherlock-audit-mar-7-2025.md) - audit_report_link
- [https://docs.symm.io/security-and-architecture/audit-reports/symm-0.82](https://docs.symm.io/security-and-architecture/audit-reports/symm-0.82) - audit_report_link
- [https://docs.symm.io/security-and-architecture/audit-reports/symm-0.82/sherlock-audit-aug-30-2023](https://docs.symm.io/security-and-architecture/audit-reports/symm-0.82/sherlock-audit-aug-30-2023) - audit_report_link
- [https://docs.symm.io/security-and-architecture/audit-reports/symm-0.82/sherlock-audit-aug-30-2023.md](https://docs.symm.io/security-and-architecture/audit-reports/symm-0.82/sherlock-audit-aug-30-2023.md) - audit_report_link
- [https://docs.symm.io/security-and-architecture/audit-reports/symm-0.83](https://docs.symm.io/security-and-architecture/audit-reports/symm-0.83) - audit_report_link
- [https://docs.symm.io/security-and-architecture/audit-reports/symm-0.83/sherlock-audit-jun-17-2024](https://docs.symm.io/security-and-architecture/audit-reports/symm-0.83/sherlock-audit-jun-17-2024) - audit_report_link
- [https://docs.symm.io/security-and-architecture/audit-reports/symm-0.83/sherlock-audit-jun-17-2024.md](https://docs.symm.io/security-and-architecture/audit-reports/symm-0.83/sherlock-audit-jun-17-2024.md) - audit_report_link
- [https://docs.symm.io/security-and-architecture/audit-reports/symm-0.84](https://docs.symm.io/security-and-architecture/audit-reports/symm-0.84) - audit_report_link
- [https://docs.symm.io/security-and-architecture/audit-reports/symm-0.84/sherlock-audit-oct-3-2024](https://docs.symm.io/security-and-architecture/audit-reports/symm-0.84/sherlock-audit-oct-3-2024) - audit_report_link
- [https://docs.symm.io/security-and-architecture/audit-reports/symm-0.84/sherlock-audit-oct-3-2024.md](https://docs.symm.io/security-and-architecture/audit-reports/symm-0.84/sherlock-audit-oct-3-2024.md) - audit_report_link
- [https://docs.symm.io/security-and-architecture/audit-reports/symm-v0.8-0.81](https://docs.symm.io/security-and-architecture/audit-reports/symm-v0.8-0.81) - audit_report_link
- [https://docs.symm.io/security-and-architecture/audit-reports/symm-v0.8-0.81/sherlock-audit-jun-15-2023](https://docs.symm.io/security-and-architecture/audit-reports/symm-v0.8-0.81/sherlock-audit-jun-15-2023) - audit_report_link
- [https://docs.symm.io/security-and-architecture/audit-reports/symm-v0.8-0.81/sherlock-audit-jun-15-2023.md](https://docs.symm.io/security-and-architecture/audit-reports/symm-v0.8-0.81/sherlock-audit-jun-15-2023.md) - audit_report_link
- [https://docs.symm.io/security-and-architecture/audit-reports/symm-v0.8-0.81/smart-state-jul-2-2023](https://docs.symm.io/security-and-architecture/audit-reports/symm-v0.8-0.81/smart-state-jul-2-2023) - audit_report_link
- [https://docs.symm.io/security-and-architecture/audit-reports/symm-v0.8-0.81/smart-state-jul-2-2023.md](https://docs.symm.io/security-and-architecture/audit-reports/symm-v0.8-0.81/smart-state-jul-2-2023.md) - audit_report_link
- [https://docs.symm.io/security-and-architecture/audit-reports/vaults](https://docs.symm.io/security-and-architecture/audit-reports/vaults) - audit_report_link
- [https://docs.symm.io/security-and-architecture/audit-reports/vaults/sherlock-audit-jan-2-2024](https://docs.symm.io/security-and-architecture/audit-reports/vaults/sherlock-audit-jan-2-2024) - audit_report_link
- [https://docs.symm.io/security-and-architecture/audit-reports/vaults/sherlock-audit-jan-2-2024.md](https://docs.symm.io/security-and-architecture/audit-reports/vaults/sherlock-audit-jan-2-2024.md) - audit_report_link
- [https://docs.symm.io/security-and-architecture/bug-bounty-program-coverage](https://docs.symm.io/security-and-architecture/bug-bounty-program-coverage) - audit_report_link
- [https://github.com/sherlock-audit/2023-06-symmetrical-judging/blob/main/README.md](https://github.com/sherlock-audit/2023-06-symmetrical-judging/blob/main/README.md) - audit_report_link
- [https://github.com/sherlock-audit/2023-08-symmetrical-judging/blob/main/Audit_Report.pdf](https://github.com/sherlock-audit/2023-08-symmetrical-judging/blob/main/Audit_Report.pdf) - audit_report_link
- [https://github.com/sherlock-audit/2023-12-symm-io-judging/blob/main/Audit_Report.pdf](https://github.com/sherlock-audit/2023-12-symm-io-judging/blob/main/Audit_Report.pdf) - audit_report_link
- [https://github.com/sherlock-audit/2024-06-symmetrical-update-2-judging/blob/main/Audit_Report.pdf](https://github.com/sherlock-audit/2024-06-symmetrical-update-2-judging/blob/main/Audit_Report.pdf) - audit_report_link
- [https://github.com/sherlock-audit/2024-09-symmio-v0-8-4-update-contest-judging/blob/main/Audit_Report.pdf](https://github.com/sherlock-audit/2024-09-symmio-v0-8-4-update-contest-judging/blob/main/Audit_Report.pdf) - audit_report_link
- [https://github.com/sherlock-audit/2025-03-symm-io-stacking-judging/blob/main/Audit_Report.pdf](https://github.com/sherlock-audit/2025-03-symm-io-stacking-judging/blob/main/Audit_Report.pdf) - audit_report_link
- [https://github.com/SYMM-IO/audits/blob/main/26092306_Symmio_report.pdf](https://github.com/SYMM-IO/audits/blob/main/26092306_Symmio_report.pdf) - audit_report_link
- [https://github.com/SYMM-IO/docs/blob/main/Whitepaper/SYMMIO_paper_0_8.pdf](https://github.com/SYMM-IO/docs/blob/main/Whitepaper/SYMMIO_paper_0_8.pdf) - audit_report_link

### Audit Reports (full list)

- 2024-06-22 - Sherlock - 2024.06.22 - Final - SYMMIO v0.83 Update Contest Audit Report

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/symmio.json
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

- **Generated at:** 2026-05-05T20:43:28.551Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-2b686225
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
