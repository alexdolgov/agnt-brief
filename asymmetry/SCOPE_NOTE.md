# Agentic Brief: Asymmetry Finance

## Project Overview

- **Project:** Asymmetry Finance (asymmetry)
- **Website:** asymmetry.finance
- **Category:** Indexes
- **Chains (topography):** 1
- **Chains (DeFiLlama):** 1
- **TVL:** $2,957,850 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 6 audits; most recent 2026-05-02 (2 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** small_tvl_coverage_filler

Asymmetry Finance has 4 deployed contract rows in current topography. This brief renders the 4 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 4 contracts across 1 chains. 1 have TP audit coverage (25.0%); 3 do not.

Small-TVL coverage filler. Review only if the uncovered surface is technically interesting.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BoldToken | token | token | audited (TP) | [0x85e30b...79da](https://etherscan.io/address/0x85e30b8b263bc64d94b827ed450f2edfee8579da) |
| CryptoWithStablePriceWBTC | oracle | oracle | likely in scope | [0xbe83fd...8dcb](https://etherscan.io/address/0xbe83fd842db4937c0c3d15b2aba6af7e854f8dcb) |
| unnamed | unknown | unknown | unmatched | [0xbef434...4217](https://etherscan.io/address/0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217) |
| unnamed | unknown | unknown | unmatched | [0xcff0dc...d791](https://etherscan.io/address/0xcff0dcab01563e5324ef9d0adb0677d9c167d791) |

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
| unknown | discovery-ingest-placeholder | cantina.xyz/competitions/3765f098-ef5c-47be-beb9-3f4ce9dcb407 | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | cantina.xyz/competitions/d86632df-ab33-4448-8198-64955eae6712 | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 2 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://cantina.xyz/competitions/3765f098-ef5c-47be-beb9-3f4ce9dcb407](https://cantina.xyz/competitions/3765f098-ef5c-47be-beb9-3f4ce9dcb407) - audit_report_link
- [https://cantina.xyz/competitions/d86632df-ab33-4448-8198-64955eae6712](https://cantina.xyz/competitions/d86632df-ab33-4448-8198-64955eae6712) - audit_report_link
- [https://cdn.sanity.io/files/zmh9mnff/production/ca6a4815e62b05f33fb3ec56c5a4c42d6b7ddbec.pdf](https://cdn.sanity.io/files/zmh9mnff/production/ca6a4815e62b05f33fb3ec56c5a4c42d6b7ddbec.pdf) - audit_report_link
- [https://certora.cdn.prismic.io/certora/Z1tLJJbqstJ98b8J_LiquityVerificationReport.pdf](https://certora.cdn.prismic.io/certora/Z1tLJJbqstJ98b8J_LiquityVerificationReport.pdf) - audit_report_link
- [https://code4rena.com/audits/2023-03-asymmetry-contest](https://code4rena.com/audits/2023-03-asymmetry-contest) - audit_report_link
- [https://code4rena.com/audits/2023-05-asymmetry-mitigation-review-contest](https://code4rena.com/audits/2023-05-asymmetry-mitigation-review-contest) - audit_report_link
- [https://code4rena.com/reports/2023-09-asymmetry](https://code4rena.com/reports/2023-09-asymmetry) - audit_report_link
- [https://dedaub.com/audits/liquity/liquity-v2-aug-28-2024](https://dedaub.com/audits/liquity/liquity-v2-aug-28-2024) - audit_report_link
- [https://docs.asymmetry.finance](https://docs.asymmetry.finance) - audit_report_link
- [https://docs.asymmetry.finance/afcvx-asymmetry-finance-convex/afcvx-asymmetry-finance-convex](https://docs.asymmetry.finance/afcvx-asymmetry-finance-convex/afcvx-asymmetry-finance-convex) - audit_report_link
- [https://docs.asymmetry.finance/afcvx-asymmetry-finance-convex/afcvx-integrations](https://docs.asymmetry.finance/afcvx-asymmetry-finance-convex/afcvx-integrations) - audit_report_link
- [https://docs.asymmetry.finance/afcvx-asymmetry-finance-convex/staking-guide](https://docs.asymmetry.finance/afcvx-asymmetry-finance-convex/staking-guide) - audit_report_link
- [https://docs.asymmetry.finance/afcvx-asymmetry-finance-convex/the-afcvx-token](https://docs.asymmetry.finance/afcvx-asymmetry-finance-convex/the-afcvx-token) - audit_report_link
- [https://docs.asymmetry.finance/afcvx-asymmetry-finance-convex/yield-accrual-and-technical-breakdown](https://docs.asymmetry.finance/afcvx-asymmetry-finance-convex/yield-accrual-and-technical-breakdown) - audit_report_link
- [https://docs.asymmetry.finance/afeth-asymmetry-finance-eth/afeth-asymmetry-finance-ethereum](https://docs.asymmetry.finance/afeth-asymmetry-finance-eth/afeth-asymmetry-finance-ethereum) - audit_report_link
- [https://docs.asymmetry.finance/afeth-asymmetry-finance-eth/afeth-functionality](https://docs.asymmetry.finance/afeth-asymmetry-finance-eth/afeth-functionality) - audit_report_link
- [https://docs.asymmetry.finance/afeth-asymmetry-finance-eth/afeth-integrations](https://docs.asymmetry.finance/afeth-asymmetry-finance-eth/afeth-integrations) - audit_report_link
- [https://docs.asymmetry.finance/afeth-asymmetry-finance-eth/afeth-sfrxeth-+-vlcvx](https://docs.asymmetry.finance/afeth-asymmetry-finance-eth/afeth-sfrxeth-+-vlcvx) - audit_report_link
- [https://docs.asymmetry.finance/afeth-asymmetry-finance-eth/locking](https://docs.asymmetry.finance/afeth-asymmetry-finance-eth/locking) - audit_report_link
- [https://docs.asymmetry.finance/afeth-asymmetry-finance-eth/staking-guide](https://docs.asymmetry.finance/afeth-asymmetry-finance-eth/staking-guide) - audit_report_link
- [https://docs.asymmetry.finance/legal/privacy-policy](https://docs.asymmetry.finance/legal/privacy-policy) - audit_report_link
- [https://docs.asymmetry.finance/security/audits-bug-bounties](https://docs.asymmetry.finance/security/audits-bug-bounties) - audit_report_link
- [https://docs.asymmetry.finance/security/audits-bug-bounties.md](https://docs.asymmetry.finance/security/audits-bug-bounties.md) - audit_report_link
- [https://docs.asymmetry.finance/usdasf-asymmetry-finance-token/veasf-governance](https://docs.asymmetry.finance/usdasf-asymmetry-finance-token/veasf-governance) - audit_report_link
- [https://github.com/asymmetryfinance/afeth/blob/main/docs/AfEth.md](https://github.com/asymmetryfinance/afeth/blob/main/docs/AfEth.md) - audit_report_link
- [https://github.com/asymmetryfinance/afeth/blob/main/docs/Operating-Manual.md](https://github.com/asymmetryfinance/afeth/blob/main/docs/Operating-Manual.md) - audit_report_link
- [https://github.com/yAudit/reports/blob/main/06-2024-Asymmetry-veASF.pdf](https://github.com/yAudit/reports/blob/main/06-2024-Asymmetry-veASF.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/1916cd0f6ef5e1fda0e44628d5eed902fd797883/Asymmetry%20Finanace%20safETH%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/1916cd0f6ef5e1fda0e44628d5eed902fd797883/Asymmetry%20Finanace%20safETH%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/1916cd0f6ef5e1fda0e44628d5eed902fd797883/Asymmetry%2520Finanace%2520safETH%2520-%2520Zellic%2520Audit%2520Report.pdf](https://github.com/Zellic/publications/blob/1916cd0f6ef5e1fda0e44628d5eed902fd797883/Asymmetry%2520Finanace%2520safETH%2520-%2520Zellic%2520Audit%2520Report.pdf) - audit_report_link
- [https://www.chainsecurity.com/security-audit/liquity-bold-smart-contracts](https://www.chainsecurity.com/security-audit/liquity-bold-smart-contracts) - audit_report_link
- [https://www.coinspect.com/doc/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20-%20Bold%20-%20v241231.pdf](https://www.coinspect.com/doc/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20-%20Bold%20-%20v241231.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - cantina.xyz/competitions/3765f098-ef5c-47be-beb9-3f4ce9dcb407
- unknown - discovery-ingest-placeholder - cantina.xyz/competitions/d86632df-ab33-4448-8198-64955eae6712

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/asymmetry.json
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

- **Generated at:** 2026-05-05T20:44:28.544Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
