# Agentic Brief: Api3

## Project Overview

- **Project:** Api3 (api3)
- **Website:** api3.org
- **Category:** Risk Curators
- **Chains (topography):** 1
- **Chains (DeFiLlama):** 1
- **TVL:** $14,086,434 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** dead - latest deployment 2017-11-23
- **Audit history:** 6 audits; most recent 2026-05-01 (3 days ago)
- **Tier:** 4 - project_dead_or_rugged (Excluded)
- **Commercial fit:** mid_tvl_commercial_target

Api3 has 6 deployed contract rows in current topography. This brief renders the 6 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

**Lifecycle warning:** dead. Source: project_lifecycle_status_v1. Outreach not recommended without operator review.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 6 contracts across 1 chains. 3 have TP audit coverage (50.0%); 3 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Api3CirculatingSupply | core | core | unmatched | [0xcd34bc...d0a8](https://etherscan.io/address/0xcd34bc5b03c954268d27c9bc165a623c318bd0a8) |
| Api3Pool | vault_pool | vault_pool | audited (TP) | [0x6dd655...6d76](https://etherscan.io/address/0x6dd655f10d4b9e242ae186d9050b68f725c76d76) |
| Api3Token | token | token | audited (TP) | [0x0b3821...b88a](https://etherscan.io/address/0x0b38210ea11411557c13457d4da7dc6ea731b88a) |
| KittyCore | core | core | audited (TP) | [0x06012c...266d](https://etherscan.io/address/0x06012c8cf97bead5deae237070f9587f8e7a266d) |
| SafeProxy | proxy | proxy | unmatched | [0x5a9aa3...77c2](https://etherscan.io/address/0x5a9aa3219dd1cbef6a18fd221464e071df2677c2) |
| unnamed | unknown | unknown | unmatched | [0x9f0566...f75c](https://etherscan.io/address/0x9f0566f2e8ff51901dd0c0e7aad937a94931f75c) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 1 proxies on 1. 0 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 0 distinct deployer addresses: unknown. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 6 | 3 | 3 | 50.0% |
| **Total** | 6 | 3 | 3 | 50.0% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2022-09-05 | Hexens | API3 public | unspecified | direct | [report](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/API3_public.pdf) |
| 2022-03-30 | Trail of Bits | API3 Security Assessment | unspecified | direct | [report](https://github.com/trailofbits/publications/blob/master/reviews/API3.pdf) |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/api3dao/oev-litepaper/blob/main/oev-litepaper.pdf](https://github.com/api3dao/oev-litepaper/blob/main/oev-litepaper.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/API3.pdf](https://github.com/trailofbits/publications/blob/master/reviews/API3.pdf) - audit_report_link

### Audit Reports (full list)

- 2022-09-05 - Hexens - API3 public - https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/API3_public.pdf
- 2022-03-30 - Trail of Bits - API3 Security Assessment - https://github.com/trailofbits/publications/blob/master/reviews/API3.pdf

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/api3.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $23,283,943.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:40:08.415Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $23,283,943.
