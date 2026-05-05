# Agentic Brief: Seamless V2

## Project Overview

- **Project:** Seamless V2 (seamless-protocol)
- **Website:** seamlessprotocol.com
- **Category:** Lending
- **Chains (topography):** 1, 8453
- **Chains (DeFiLlama):** 1, 8453
- **TVL:** $37,967,667 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 97 audits; most recent 2026-05-01 (4 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Seamless V2 has 5 deployed contract rows in current topography. This brief renders the 5 rows present in scope-match run recovery-full-v6-post-filter-2026-05-05-303d7be6; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 5 contracts across 2 chains. 2 have TP audit coverage (40.0%); 3 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | likely in scope | [0x5c37eb...e351](https://etherscan.io/address/0x5c37eb148d4a261acd101e2b997a0f163fb3e351) |
| LeverageManager | controller | controller | audited (TP) | [0x9d04f6...220e](https://etherscan.io/address/0x9d04f65b58ced1fddef50aec8b0b3d64fe64220e) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | likely in scope | [0x38ba21...c3a8](https://basescan.org/address/0x38ba21c6bf31df1b1798fced07b4e9b07c5ec3a8) |
| LeverageManager | controller | controller | audited (TP) | [0xfe9101...1856](https://basescan.org/address/0xfe9101349354e278970489f935a54905de2e1856) |
| unnamed | unknown | unknown | unmatched | [0xc3f468...b001](https://basescan.org/address/0xc3f4681fb2a57a13e121c6f24fe319c8572bb001) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 2 proxies on 1, 8453. 2 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0x3aa518...e05f, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

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
| unknown | Sherlock | 2025.05.19%20 %20Final%20 %20Seamless%20Protocol%20Collaborative%20Audit%20Report | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b](https://cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b) - audit_report_link
- [https://docs.seamlessprotocol.com/technical/audit-reports.md](https://docs.seamlessprotocol.com/technical/audit-reports.md) - audit_report_link
- [https://github.com/seamless-protocol/governance/blob/5a133e91e75759b79976607b14f845a7650291b8/spec.md](https://github.com/seamless-protocol/governance/blob/5a133e91e75759b79976607b14f845a7650291b8/spec.md) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/.gitkeep](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/.gitkeep) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.02.09%20-%20Final%20-%20Tempus%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.02.09%20-%20Final%20-%20Tempus%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.06.02%20-%20Preliminary%20-%20Perennial%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.06.02%20-%20Preliminary%20-%20Perennial%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.06.06%20-%20Final%20-%20Flux%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.06.06%20-%20Final%20-%20Flux%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.06.18%20-%20Final%20-%20Flux%20Follow-Up%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.06.18%20-%20Final%20-%20Flux%20Follow-Up%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.06.27%20-%20Final%20-%20Lyra%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.06.27%20-%20Final%20-%20Lyra%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.06.30%20-%20Final%20-%20Hook%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.06.30%20-%20Final%20-%20Hook%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.07.05%20-%20Final%20-%20Opyn%20Squeeth%20Crab%20V2%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.07.05%20-%20Final%20-%20Opyn%20Squeeth%20Crab%20V2%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.08.24%20-%20Final%20-%20LiquiFi%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.08.24%20-%20Final%20-%20LiquiFi%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.08.24%20-%20Final%20-%20Perennial%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.08.24%20-%20Final%20-%20Perennial%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.10.04%20-%20Final%20-%20Sherlock%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.10.04%20-%20Final%20-%20Sherlock%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.10.12%20-%20Final%20-%20Harpie%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.10.12%20-%20Final%20-%20Harpie%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.10.18%20-%20Final%20-%20Sentiment%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.10.18%20-%20Final%20-%20Sentiment%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.11.04%20-%20Final%20-%20Merit%20Circle%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.11.04%20-%20Final%20-%20Merit%20Circle%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.11.09%20-%20Final%20-%20FIAT%20I%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.11.09%20-%20Final%20-%20FIAT%20I%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.11.10%20-%20Final%20-%20Astaria%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.11.10%20-%20Final%20-%20Astaria%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.11.16%20-%20Final%20-%20NFTPort%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.11.16%20-%20Final%20-%20NFTPort%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.11.22%20-%20Final%20-%20Mover%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.11.22%20-%20Final%20-%20Mover%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.11.28%20-%20Final%20-%20Rage%20Trade%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.11.28%20-%20Final%20-%20Rage%20Trade%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.11.29%20-%20Final%20-%20Bond%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.11.29%20-%20Final%20-%20Bond%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.12.01%20-%20Final%20-%20Frankendao%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.12.01%20-%20Final%20-%20Frankendao%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.12.02%20-%20Final%20-%20Perennial%20November%20Update%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.12.02%20-%20Final%20-%20Perennial%20November%20Update%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.12.08%20-%20Final%20-%20Buffer%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.12.08%20-%20Final%20-%20Buffer%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.12.09%20-%20Final%20-%20Opyn%20Crab%20Netting%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.12.09%20-%20Final%20-%20Opyn%20Crab%20Netting%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.12.12%20-%20Final%20-%20BullvBear%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.12.12%20-%20Final%20-%20BullvBear%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.12.12%20-%20Final%20-%20DODO%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.12.12%20-%20Final%20-%20DODO%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.12.12%20-%20Final%20-%20Telcoin%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.12.12%20-%20Final%20-%20Telcoin%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.12.27%20-%20Final%20-%20Nouns%20DAO%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2022.12.27%20-%20Final%20-%20Nouns%20DAO%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.01.21%20-%20Final%20-%20Sentiment%20January%20Update%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.01.21%20-%20Final%20-%20Sentiment%20January%20Update%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.01.22%20-%20Final%20-%20Perennial%20December%20Update%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.01.22%20-%20Final%20-%20Perennial%20December%20Update%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.01.24%20-%20Final%20-%20Lyra%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.01.24%20-%20Final%20-%20Lyra%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.01.24%20-%20Final%20-%20Sentiment%20December%20Update%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.01.24%20-%20Final%20-%20Sentiment%20December%20Update%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.01.24%20-%20Final%20-%20Sentiment%20November%20Update%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.01.24%20-%20Final%20-%20Sentiment%20November%20Update%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.02.28%20-%20Final%20-%20Perennial%20February%20Update%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.02.28%20-%20Final%20-%20Perennial%20February%20Update%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.02%20-%20Final%20-%20Surge%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.02%20-%20Final%20-%20Surge%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.03%20-%20Final%20-%20Optimism%20Bedrock%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.03%20-%20Final%20-%20Optimism%20Bedrock%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.06%20-%20Final%20-%20Hats%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.06%20-%20Final%20-%20Hats%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.10%20-%20Final%20-%20Volta%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.10%20-%20Final%20-%20Volta%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.17%20-%20Final%20-%20UXD%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.17%20-%20Final%20-%20UXD%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.21%20-%20Final%20-%20Union%20Finance%20Update%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.21%20-%20Final%20-%20Union%20Finance%20Update%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.24%20-%20Final%20-%20GMX%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.24%20-%20Final%20-%20GMX%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.25%20-%20Final%20-%20Kairos%20Loan%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.25%20-%20Final%20-%20Kairos%20Loan%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.27%20-%20Final%20-%20OpenQ%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.27%20-%20Final%20-%20OpenQ%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.27%20-%20Final%20-%20Y2K%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.27%20-%20Final%20-%20Y2K%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.29%20-%20Final%20-%20Carapace%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.29%20-%20Final%20-%20Carapace%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.30%20-%20Final%20-%20Telcoin%20Update%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.03.30%20-%20Final%20-%20Telcoin%20Update%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.04.04%20-%20Final%20-%20Bond%20Protocol%20Update%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2023.04.04%20-%20Final%20-%20Bond%20Protocol%20Update%20Audit%20Report.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - Sherlock - 2025.05.19%20 %20Final%20 %20Seamless%20Protocol%20Collaborative%20Audit%20Report

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/seamless-protocol.json
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

- **Generated at:** 2026-05-05T20:39:21.681Z
- **Scope-match run_id:** recovery-full-v6-post-filter-2026-05-05-303d7be6
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $0.
