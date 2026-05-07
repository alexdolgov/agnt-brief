# Agentic Brief: stake.link liquid

## Project Overview

- **Project:** stake.link liquid (stake.link)
- **Website:** stake.link
- **Category:** Liquid Staking
- **Chains (topography):** 1
- **Chains (DeFiLlama):** 1
- **TVL:** $62,486,747 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 11 audits; most recent 2026-04-30 (4 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

stake.link liquid has 7 deployed contract rows in current topography. This brief renders the 7 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-720c81c2; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 7 contracts across 1 chains. 3 have TP audit coverage (42.9%); 4 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | likely in scope | [0xddc796...60ea](https://etherscan.io/address/0xddc796a66e8b83d0bccd97df33a6ccfba8fd60ea) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xdeda4c...d072](https://etherscan.io/address/0xdeda4c43136d4f40f75073b0d815c648330fd072) |
| OperatorStakingPool | vault_pool | vault_pool | audited (TP) | [0xa1d76a...fdc5](https://etherscan.io/address/0xa1d76a7ca72128541e9fcacafbda3a92ef94fdc5) |
| PriorityPool | vault_pool | vault_pool | audited (TP) | [0x6fb9cc...4d26](https://etherscan.io/address/0x6fb9cc7d10a5286a864e760c2756e7f6d44d4d26) |
| WrappedSDToken | token | token | audited (TP) | [0x911d86...03da](https://etherscan.io/address/0x911d86c72155c33993d594b0ec7e6206b4c803da) |
| unnamed | unknown | unknown | unmatched | [0x2091d8...55e6](https://etherscan.io/address/0x2091d83592d79b4de5fd2ce3d98679c32a9555e6) |
| unnamed | unknown | unknown | unmatched | [0xb351ec...493d](https://etherscan.io/address/0xb351ec0feaf4b99fdfd36b484d9ec90d0422493d) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 2 proxies on 1. 1 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 2 distinct deployer addresses: 0x23c460...d767, 0x31e16f...797b. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 7 | 3 | 4 | 42.9% |
| **Total** | 7 | 3 | 4 | 42.9% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2025-07-02 | Zellic | During our assessment on the scoped Polygon Staking contracts, we discovered 13 findings. No critica | unspecified | direct | [report](https://github.com/Zellic/publications/blob/master/Polygon%20Staking%20-%20Zellic%20Audit%20Report.pdf) |
| 2023-08-25 | Cyfrin | stake.link Audit Report | unspecified | direct | [report](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2023-08-25-cyfrin-stake-link.pdf) |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/stakedotlink/contracts/blob/main/audits//[2025-07-02]%20Zellic%20-%20Polygon%20Staking.pdf](https://github.com/stakedotlink/contracts/blob/main/audits//[2025-07-02]%20Zellic%20-%20Polygon%20Staking.pdf) - audit_report_link
- [https://github.com/stakedotlink/contracts/blob/main/audits/%5B2022-08-01%5D%20Sigma%20Prime%20-%20Core%20Staking%20Contracts%20Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2022-08-01%5D%20Sigma%20Prime%20-%20Core%20Staking%20Contracts%20Report.pdf) - audit_report_link
- [https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-01-01%5D%20Sigma%20Prime%20-%20Core%20%26%20LINK%20Staking%20Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-01-01%5D%20Sigma%20Prime%20-%20Core%20%26%20LINK%20Staking%20Report.pdf) - audit_report_link
- [https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-03-07%5D%20Cyfrin%20-%20LSD%20Index%20Pool%20Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-03-07%5D%20Cyfrin%20-%20LSD%20Index%20Pool%20Report.pdf) - audit_report_link
- [https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-08-06%5D%20Trust%20Security%20-%20SDLPool%20Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-08-06%5D%20Trust%20Security%20-%20SDLPool%20Report.pdf) - audit_report_link
- [https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-08-25%5D%20Cyfrin%20-%20Priority%20Pool%20Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-08-25%5D%20Cyfrin%20-%20Priority%20Pool%20Report.pdf) - audit_report_link
- [https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-10-01%5D%20Trust%20Security%20-%20Priority%20Pool%20%26%20LINK%20Staking%20v0.2%20Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-10-01%5D%20Trust%20Security%20-%20Priority%20Pool%20%26%20LINK%20Staking%20v0.2%20Report.pdf) - audit_report_link
- [https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-04-30%5D%20Trust%20Security%20-%20Insurance%20Pool%20Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-04-30%5D%20Trust%20Security%20-%20Insurance%20Pool%20Report.pdf) - audit_report_link
- [https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-04-30%5D%20Trust%20Security%20-%20Metis%20Staking%20Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-04-30%5D%20Trust%20Security%20-%20Metis%20Staking%20Report.pdf) - audit_report_link
- [https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-09-17%5D%20Cyfrin%20-%20LINK%20Staking%20Withdrawals.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-09-17%5D%20Cyfrin%20-%20LINK%20Staking%20Withdrawals.pdf) - audit_report_link
- [https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-11-27%5D%20Codehawks%20-%20LINK%20Staking%20Withdrawals.md](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-11-27%5D%20Codehawks%20-%20LINK%20Staking%20Withdrawals.md) - audit_report_link
- [https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-01-20%5D%20Cyfrin%20Staking%20Proxy.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-01-20%5D%20Cyfrin%20Staking%20Proxy.pdf) - audit_report_link
- [https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-02-04%5D%20Trust%20-%20LINK%20Staking%20Withdrawals.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-02-04%5D%20Trust%20-%20LINK%20Staking%20Withdrawals.pdf) - audit_report_link
- [https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-02-28%5D%20Cyfrin%20-%20CL%20Rewards%20Claiming.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-02-28%5D%20Cyfrin%20-%20CL%20Rewards%20Claiming.pdf) - audit_report_link
- [https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-05-19%5D%20Cyfrin%20-%20Polygon%20Staking.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-05-19%5D%20Cyfrin%20-%20Polygon%20Staking.pdf) - audit_report_link
- [https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-06-04%5D%20Cyfrin%20-%20LINK%20Migrator.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-06-04%5D%20Cyfrin%20-%20LINK%20Migrator.pdf) - audit_report_link
- [https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-07-02%5D%20Zellic%20-%20Polygon%20Staking.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-07-02%5D%20Zellic%20-%20Polygon%20Staking.pdf) - audit_report_link
- [https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-07-02%5D%2520Zellic%2520-%2520Polygon%2520Staking.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-07-02%5D%2520Zellic%2520-%2520Polygon%2520Staking.pdf) - audit_report_link
- [https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-08-02%5D%20Cyfrin%20-%20SDL%20Vesting.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-08-02%5D%20Cyfrin%20-%20SDL%20Vesting.pdf) - audit_report_link
- [https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-08-02%5D%20Cyfrin%20-%20Vesting.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-08-02%5D%20Cyfrin%20-%20Vesting.pdf) - audit_report_link
- [https://github.com/stakedotlink/contracts/blob/main/audits/%5B2026-02-04%5D%20Cyfrin%20-%20Espresso%20Staking.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2026-02-04%5D%20Cyfrin%20-%20Espresso%20Staking.pdf) - audit_report_link
- [https://github.com/stakedotlink/contracts/blob/main/audits/%5B2026-03-23%5D%20Cyfrin%20-%20Rebase%20Batching.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2026-03-23%5D%20Cyfrin%20-%20Rebase%20Batching.pdf) - audit_report_link
- [https://immunefi.com/bug-bounty/stakelink/information](https://immunefi.com/bug-bounty/stakelink/information) - audit_report_link

### Audit Reports (full list)

- 2025-07-02 - Zellic - During our assessment on the scoped Polygon Staking contracts, we discovered 13 findings. No critical issues were found. One finding was of high impact, one was of medium impact, four were of low impact, and the remaining findings were informational in nature. - https://github.com/Zellic/publications/blob/master/Polygon%20Staking%20-%20Zellic%20Audit%20Report.pdf
- 2023-08-25 - Cyfrin - stake.link Audit Report - https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2023-08-25-cyfrin-stake-link.pdf

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/stake.link.json
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

- **Generated at:** 2026-05-05T20:36:40.260Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-720c81c2
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
