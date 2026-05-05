# Agentic Brief: Notional V2

## Project Overview

- **Project:** Notional V2 (notional)
- **Website:** notional.finance
- **Category:** Lending
- **Chains (topography):** 1, 42161
- **Chains (DeFiLlama):** 1
- **TVL:** $3,096,347 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** dead - latest deployment 2023-11-03
- **Audit history:** 20 audits; most recent 2026-05-02 (2 days ago)
- **Tier:** 4 - project_dead_or_rugged (Excluded)
- **Commercial fit:** mid_tvl_commercial_target

Notional V2 has 5 deployed contract rows in current topography. This brief renders the 4 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-95e36788; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

**Lifecycle warning:** dead. Source: project_lifecycle_status_v1. Outreach not recommended without operator review.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 4 contracts across 2 chains. 1 have TP audit coverage (25.0%); 3 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Vyper_contract | core | core | likely in scope | [0x0f3159...4d0f](https://etherscan.io/address/0x0f3159811670c117c372428d4e69ac32325e4d0f) |
| Vyper_contract | core | core | likely in scope | [0x4ca9b3...596f](https://etherscan.io/address/0x4ca9b3063ec5866a4b82e437059d2c43d1be596f) |
| Vyper_contract | core | core | likely in scope | [0xc5424b...4567](https://etherscan.io/address/0xc5424b857f758e906013f3555dad202e4bdb4567) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ComposableStablePool | vault_pool | vault_pool | audited (TP) | [0xade4a7...1e81](https://arbiscan.io/address/0xade4a71bb62bec25154cfc7e6ff49a513b491e81) |

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
| No provenance | 4 | 1 | 3 | 25.0% |
| **Total** | 4 | 1 | 3 | 25.0% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2023-11-25 | Sherlock | 2023.11.25 - Final - Notional Update 4 Audit Report | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 2 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://app.sherlock.xyz/audits/contests/2](https://app.sherlock.xyz/audits/contests/2) - audit_report_link
- [https://app.sherlock.xyz/audits/contests/31](https://app.sherlock.xyz/audits/contests/31) - audit_report_link
- [https://app.sherlock.xyz/audits/contests/52](https://app.sherlock.xyz/audits/contests/52) - audit_report_link
- [https://app.sherlock.xyz/audits/contests/59](https://app.sherlock.xyz/audits/contests/59) - audit_report_link
- [https://audits.sherlock.xyz/contests/119](https://audits.sherlock.xyz/contests/119) - audit_report_link
- [https://audits.sherlock.xyz/contests/142](https://audits.sherlock.xyz/contests/142) - audit_report_link
- [https://audits.sherlock.xyz/contests/446?filter=questions](https://audits.sherlock.xyz/contests/446?filter=questions) - audit_report_link
- [https://blog.openzeppelin.com/notional-audit](https://blog.openzeppelin.com/notional-audit) - audit_report_link
- [https://blog.openzeppelin.com/notional-v2-audit-governance-contracts](https://blog.openzeppelin.com/notional-v2-audit-governance-contracts) - audit_report_link
- [https://code4rena.com/reports/2021-08-notional](https://code4rena.com/reports/2021-08-notional) - audit_report_link
- [https://code4rena.com/reports/2022-01-notional](https://code4rena.com/reports/2022-01-notional) - audit_report_link
- [https://code4rena.com/reports/2022-06-notional-coop](https://code4rena.com/reports/2022-06-notional-coop) - audit_report_link
- [https://consensys.net/diligence/audits/2022/03/notional-protocol-v2.1](https://consensys.net/diligence/audits/2022/03/notional-protocol-v2.1) - audit_report_link
- [https://consensys.net/diligence/audits/2022/07/notional-finance](https://consensys.net/diligence/audits/2022/07/notional-finance) - audit_report_link
- [https://docs.notional.finance/notional-v3/smart-contracts/audits.md](https://docs.notional.finance/notional-v3/smart-contracts/audits.md) - audit_report_link
- [https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md) - audit_report_link
- [https://github.com/notional-finance/contracts-v2/blob/master/audits/ABDK%20-%20Notional%20V2%20Fixes%2C%20Nov%201%202021.pdf](https://github.com/notional-finance/contracts-v2/blob/master/audits/ABDK%20-%20Notional%20V2%20Fixes%2C%20Nov%201%202021.pdf) - audit_report_link
- [https://github.com/notional-finance/contracts-v2/blob/master/audits/ABDK%20-%20Notional%20V2%2C%20Sept%201%202021.pdf](https://github.com/notional-finance/contracts-v2/blob/master/audits/ABDK%20-%20Notional%20V2%2C%20Sept%201%202021.pdf) - audit_report_link
- [https://github.com/notional-finance/contracts-v2/blob/master/audits/ABDK%2520-%2520Notional%2520V2%2520Fixes%252C%2520Nov%25201%25202021.pdf](https://github.com/notional-finance/contracts-v2/blob/master/audits/ABDK%2520-%2520Notional%2520V2%2520Fixes%252C%2520Nov%25201%25202021.pdf) - audit_report_link
- [https://github.com/notional-finance/contracts-v2/blob/master/audits/ABDK%2520-%2520Notional%2520V2%252C%2520Sept%25201%25202021.pdf](https://github.com/notional-finance/contracts-v2/blob/master/audits/ABDK%2520-%2520Notional%2520V2%252C%2520Sept%25201%25202021.pdf) - audit_report_link
- [https://github.com/notional-finance/contracts-v2/blob/master/audits/Certora%20-%20Formal%20Verfication%20Report%2C%20Nov%201%202021.pdf](https://github.com/notional-finance/contracts-v2/blob/master/audits/Certora%20-%20Formal%20Verfication%20Report%2C%20Nov%201%202021.pdf) - audit_report_link
- [https://github.com/notional-finance/contracts-v2/blob/master/audits/Certora%2520-%2520Formal%2520Verfication%2520Report%252C%2520Nov%25201%25202021.pdf](https://github.com/notional-finance/contracts-v2/blob/master/audits/Certora%2520-%2520Formal%2520Verfication%2520Report%252C%2520Nov%25201%25202021.pdf) - audit_report_link
- [https://github.com/notional-finance/contracts-v2/blob/master/audits/README.md](https://github.com/notional-finance/contracts-v2/blob/master/audits/README.md) - audit_report_link
- [https://immunefi.com/bounty/notional](https://immunefi.com/bounty/notional) - audit_report_link

### Audit Reports (full list)

- 2023-11-25 - Sherlock - 2023.11.25 - Final - Notional Update 4 Audit Report

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/notional.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $725,984.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:44:15.381Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-95e36788
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $725,984.
