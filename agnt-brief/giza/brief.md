# Agentic Brief: Giza

## Project Overview

- **Project:** Giza (giza)
- **Website:** gizatech.xyz
- **Category:** AI Agents
- **Chains (topography):** 1, 42161
- **Chains (DeFiLlama):** 8453, 42161
- **TVL:** $12,103,328 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** dead - latest deployment 2025-02-18
- **Audit history:** 10 audits; most recent 2025-08-16 (262 days ago)
- **Tier:** 4 - project_dead_or_rugged (Excluded)
- **Commercial fit:** mid_tvl_commercial_target

Giza has 70 deployed contract rows in current topography. This brief renders the 10 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-dd325e11; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

**Lifecycle warning:** dead. Source: project_lifecycle_status_v1. Outreach not recommended without operator review.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 10 contracts across 2 chains. 1 have TP audit coverage (10.0%); 9 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| GizaOFTAdapter | adapter | adapter | unmatched | [0x0b0e00...97c3](https://etherscan.io/address/0x0b0e004b88a9c37453ad75c450f1147e9dec97c3) |
| SafeProxy | proxy | proxy | audited (TP) | [0xa87dd6...6ae0](https://etherscan.io/address/0xa87dd67893ab39ace5c55501f6f9c1b390f86ae0) |
| StargatePoolNative | vault_pool | vault_pool | likely in scope | [0x77b204...7931](https://etherscan.io/address/0x77b2043768d28e9c9ab44e1abfc95944bce57931) |
| unnamed | unknown | unknown | likely in scope | [0x123456...5678](https://etherscan.io/address/0x1234567890abcdef1234567890abcdef12345678) |
| unnamed | unknown | unknown | likely in scope | [0xabcdef...ef12](https://etherscan.io/address/0xabcdef1234567890abcdef1234567890abcdef12) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| PendlePrincipalToken | token | token | unmatched | [0x3362c1...fa8d](https://arbiscan.io/address/0x3362c1265a0522f321253708c9fb176f2274fa8d) |
| PendlePrincipalToken | token | token | unmatched | [0x71fbf4...ce9a](https://arbiscan.io/address/0x71fbf40651e9d4278a74586afc99f307f369ce9a) |
| PendlePrincipalToken | token | token | unmatched | [0xc9bfc3...12d0](https://arbiscan.io/address/0xc9bfc3afd592cc5a3305aec09aaaa6b9bb4c12d0) |
| unnamed | unknown | unknown | unmatched | [0xab7f38...4388](https://arbiscan.io/address/0xab7f3837e6e721abbc826927b655180af6a04388) |
| unnamed | unknown | unknown | unmatched | [0xd8d5fb...f1ec](https://arbiscan.io/address/0xd8d5fbbaad1e80aa0352b2029a594caeff6cf1ec) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 1 proxies on 1. 0 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0x3587bf...0bef. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 10 | 1 | 9 | 10.0% |
| **Total** | 10 | 1 | 9 | 10.0% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2025-08-16 | Team Omega | 202508-Giza-Pendle | unspecified | direct | [report](https://github.com/OmegaAudits/audits/blob/main/202508-Giza-Pendle.pdf) |
| 2025-02-10 | Team Omega | The solidity code in the src directory (excluding the “deprecated” directory), the deployment script | unspecified | direct | [report](https://github.com/OmegaAudits/audits/blob/main/202502-Giza-Token.pdf) |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 262 days ago.

---

## Appendix

### Docs Pages Referenced

No docs extraction references recorded for this project.

### Audit Reports (full list)

- 2025-08-16 - Team Omega - 202508-Giza-Pendle - https://github.com/OmegaAudits/audits/blob/main/202508-Giza-Pendle.pdf
- 2025-02-10 - Team Omega - The solidity code in the src directory (excluding the “deprecated” directory), the deployment scripts, the integration with layerzero - https://github.com/OmegaAudits/audits/blob/main/202502-Giza-Token.pdf

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/giza.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $41,926,176.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:42:27.738Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-dd325e11
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $41,926,176.
