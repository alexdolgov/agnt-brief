# Agentic Brief: Stakingverse

## Project Overview

- **Project:** Stakingverse (stakingverse)
- **Website:** stakingverse.io
- **Category:** Liquid Staking
- **Chains (topography):** 1
- **Chains (DeFiLlama):** 1
- **TVL:** $4,312,960 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 9 audits; most recent 2026-05-02 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** mid_tvl_commercial_target

Stakingverse has 3 deployed contract rows in current topography. This brief renders the 3 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-2b686225; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

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
| ERC1967Proxy | proxy | proxy | likely in scope | [0x8a93a8...9f56](https://etherscan.io/address/0x8a93a876912c9f03f88bc9114847cf5b63c89f56) |
| EthVault | vault_pool | vault_pool | audited (TP) | [0x927a83...e2cc](https://etherscan.io/address/0x927a83c679a5e1a6435d6bfaef7f20d4db23e2cc) |
| unnamed | unknown | unknown | unmatched | [0x9f49a9...6f04](https://etherscan.io/address/0x9f49a95b0c3c9e2a6c77a16c177928294c0f6f04) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 1 proxies on 1. 1 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0x932810...8819. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

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
| unknown | Halborn | 2023 08 Halborn | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/stakewise/v3-core/blob/main/audits/2023-08-Halborn.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2023-08-Halborn.pdf) - audit_report_link
- [https://github.com/stakewise/v3-core/blob/main/audits/2024-03-Consensys-Diligence.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2024-03-Consensys-Diligence.pdf) - audit_report_link
- [https://github.com/stakewise/v3-core/blob/main/audits/2024-09-Sigma-Prime.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2024-09-Sigma-Prime.pdf) - audit_report_link
- [https://github.com/Stakingverse/pool-contracts/blob/main/audits/Liquid_Staking_Audit_Oct_2024.pdf](https://github.com/Stakingverse/pool-contracts/blob/main/audits/Liquid_Staking_Audit_Oct_2024.pdf) - audit_report_link
- [https://github.com/Stakingverse/pool-contracts/blob/main/audits/nethermind-ai-agent-audit-report-stakingverse-pool-contracts.pdf](https://github.com/Stakingverse/pool-contracts/blob/main/audits/nethermind-ai-agent-audit-report-stakingverse-pool-contracts.pdf) - audit_report_link
- [https://github.com/Stakingverse/pool-contracts/blob/main/audits/nethermind-findings.md](https://github.com/Stakingverse/pool-contracts/blob/main/audits/nethermind-findings.md) - audit_report_link
- [https://github.com/Stakingverse/pool-contracts/blob/main/audits/README.md](https://github.com/Stakingverse/pool-contracts/blob/main/audits/README.md) - audit_report_link
- [https://github.com/Stakingverse/pool-contracts/blob/main/audits/slither_report_SLYXToken.md](https://github.com/Stakingverse/pool-contracts/blob/main/audits/slither_report_SLYXToken.md) - audit_report_link
- [https://github.com/Stakingverse/pool-contracts/blob/main/audits/slither_report_StakingverseVault.md](https://github.com/Stakingverse/pool-contracts/blob/main/audits/slither_report_StakingverseVault.md) - audit_report_link
- [https://github.com/Stakingverse/pool-contracts/blob/main/audits/Stakingverse_Audit_MiloTruck.pdf](https://github.com/Stakingverse/pool-contracts/blob/main/audits/Stakingverse_Audit_MiloTruck.pdf) - audit_report_link
- [https://github.com/Stakingverse/pool-contracts/blob/main/audits/Stakingverse_LST_Audit.pdf](https://github.com/Stakingverse/pool-contracts/blob/main/audits/Stakingverse_LST_Audit.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - Halborn - 2023 08 Halborn

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/stakingverse.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $88,912.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:43:15.042Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-2b686225
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $88,912.
