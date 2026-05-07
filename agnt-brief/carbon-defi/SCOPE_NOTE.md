# Agentic Brief: Carbon Defi

## Project Overview

- **Project:** Carbon Defi (carbon-defi)
- **Website:** carbondefi.xyz
- **Category:** Dexs
- **Chains (topography):** 1, 42220
- **Chains (DeFiLlama):** 1, 1329, 42220
- **TVL:** $7,474,416 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 5 audits; most recent 2026-05-03 (2 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** mid_tvl_commercial_target

Carbon Defi has 10 deployed contract rows in current topography. This brief renders the 9 rows present in scope-match run recovery-full-v6-post-filter-2026-05-05-303d7be6; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 9 contracts across 2 chains. 2 have TP audit coverage (22.2%); 7 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0xc537e8...45e1](https://etherscan.io/address/0xc537e898cd774e2dcba3b14ea6f34c93d5ea45e1) |
| unnamed | unknown | unknown | unmatched | [0x59f210...84ea](https://etherscan.io/address/0x59f21012b2e9ba67ce6a7605e74f945d0d4c84ea) |
| unnamed | unknown | unknown | unmatched | [0x661987...ed3a](https://etherscan.io/address/0x6619871118d144c1c28ec3b23036fc1f0829ed3a) |
| unnamed | unknown | unknown | unmatched | [0xa4682a...f8d5](https://etherscan.io/address/0xa4682a2a5fe02feff8bd200240a41ad0e6eaf8d5) |
| unnamed | unknown | unknown | unmatched | [0xe48166...1087](https://etherscan.io/address/0xe4816658ad10bf215053c533cceae3f59e1f1087) |

### celo (chain_id 42220)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| CarbonController | controller | controller | audited (TP) | [0x51aa24...6317](https://celoscan.io/address/0x51aa24a9230e62cfaf259c47de3133578ce36317) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | audited (TP) | [0x661987...ed3a](https://celoscan.io/address/0x6619871118d144c1c28ec3b23036fc1f0829ed3a) |
| ProxyAdmin | proxy | proxy | unmatched | [0x59f210...84ea](https://celoscan.io/address/0x59f21012b2e9ba67ce6a7605e74f945d0d4c84ea) |
| unnamed | unknown | unknown | unmatched | [0xa4682a...f8d5](https://celoscan.io/address/0xa4682a2a5fe02feff8bd200240a41ad0e6eaf8d5) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 2 proxies on 1, 42220. 2 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0x5beba4...fe22, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 9 | 2 | 7 | 22.2% |
| **Total** | 9 | 2 | 7 | 22.2% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | ChainSecurity | ChainSecurity Carbon Audit Report | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 2 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/ChainSecurity_Carbon_Audit_Report.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/ChainSecurity_Carbon_Audit_Report.pdf) - audit_report_link
- [https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf) - audit_report_link
- [https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf) - audit_report_link
- [https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Carbon-v1.0.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Carbon-v1.0.pdf) - audit_report_link
- [https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/bug-bounty.md](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/bug-bounty.md) - audit_report_link
- [https://github.com/bancorprotocol/carbon-contracts/blob/master/docs/audits/ChainSecurity_Carbon_Audit_Report.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/master/docs/audits/ChainSecurity_Carbon_Audit_Report.pdf) - audit_report_link
- [https://github.com/bancorprotocol/carbon-contracts/blob/master/docs/audits/PeckShield-Audit-Report-Carbon-v1.0.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/master/docs/audits/PeckShield-Audit-Report-Carbon-v1.0.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.06.06%20-%20Final%20-%20PoolTogether%3A%20The%20Prize%20Layer%20for%20DeFi%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.06.06%20-%20Final%20-%20PoolTogether%3A%20The%20Prize%20Layer%20for%20DeFi%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/content/slides/From%20Exploit%20to%20Recovery_%20Unraveling%20DeFi%20Incidents.pdf](https://github.com/spearbit/portfolio/blob/master/content/slides/From%20Exploit%20to%20Recovery_%20Unraveling%20DeFi%20Incidents.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/content/slides/Numerical%20Reasoning%20For%20DeFi%20Audits.pdf](https://github.com/spearbit/portfolio/blob/master/content/slides/Numerical%20Reasoning%20For%20DeFi%20Audits.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/presentations/Getting%20started%20with%20osquery/Carbon%20Black%20Customer%20Conference%20-%20Osquery.pdf](https://github.com/trailofbits/publications/blob/master/presentations/Getting%20started%20with%20osquery/Carbon%20Black%20Customer%20Conference%20-%20Osquery.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/presentations/How%20to%20Fuzz%20Like%20a%20Pro/Defi%20Security%20Summit%20%E2%80%93%20Fuzz%20Like%20a%20Pro.pdf](https://github.com/trailofbits/publications/blob/master/presentations/How%20to%20Fuzz%20Like%20a%20Pro/Defi%20Security%20Summit%20%E2%80%93%20Fuzz%20Like%20a%20Pro.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-12-arkis-defi-prime-brokerage-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-12-arkis-defi-prime-brokerage-securityreview.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Definitive%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Definitive%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Definitive%202024%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Definitive%202024%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Definitive%20LLSD%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Definitive%20LLSD%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://immunefi.com/bounty/carbonbancor](https://immunefi.com/bounty/carbonbancor) - audit_report_link

### Audit Reports (full list)

- unknown - ChainSecurity - ChainSecurity Carbon Audit Report

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/carbon-defi.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $272,842.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:44:48.450Z
- **Scope-match run_id:** recovery-full-v6-post-filter-2026-05-05-303d7be6
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $272,842.
