# Agentic Brief: Predict Fun

## Project Overview

- **Project:** Predict Fun (predict-fun)
- **Website:** predict.fun
- **Category:** Prediction Market
- **Chains (topography):** 56, 81457
- **Chains (DeFiLlama):** 56, 81457
- **TVL:** $30,463,681 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** no prior audits found in audit corpus
- **Tier:** 3 - never_audited (Never audited, significant surface)
- **Commercial fit:** large_tvl_marketing_asset

Predict Fun has 8 deployed contract rows in current topography. This brief renders the 8 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-95e36788; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 8 contracts across 2 chains. 2 have TP audit coverage (25.0%); 6 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ConditionalTokens | token | token | likely in scope | [0x22da18...d244](https://bscscan.com/address/0x22da1810b194ca018378464a58f6ac2b10c9d244) |
| VBep20Delegate | core | core | unmatched | [0xb25b57...45e1](https://bscscan.com/address/0xb25b57599ba969c4829699f7e4fc4076d14745e1) |
| VBep20Delegator | core | core | unmatched | [0xfd5840...0255](https://bscscan.com/address/0xfd5840cd36d94d7229439859c0112a4185bc0255) |
| WrappedCollateral | core | core | unmatched | [0x66239b...39e7](https://bscscan.com/address/0x66239b70133773a72a0d589e5564e88a50cd39e7) |
| YieldBearingConditionalTokens | strategy | strategy | audited (TP) | [0x9400f8...1d9f](https://bscscan.com/address/0x9400f8ad57e9e0f352345935d6d3175975eb1d9f) |
| YieldBearingWrappedCollateral | strategy | strategy | audited (TP) | [0xcfb9be...34d9](https://bscscan.com/address/0xcfb9bef5f7b748ac72311f057f3a888bc73334d9) |

### blast (chain_id 81457)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BlastConditionalTokens | token | token | likely in scope | [0x8f9c9f...c285](https://blastscan.io/address/0x8f9c9f888a4268ab0e2dda03a291769479bac285) |
| BlastWrappedCollateral | core | core | unmatched | [0xe1a2e6...98f4](https://blastscan.io/address/0xe1a2e68c401378050fdba9704fa8bcb1f72b98f4) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 1 proxies on 56. 0 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 0 distinct deployer addresses: unknown. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 8 | 2 | 6 | 25.0% |
| **Total** | 8 | 2 | 6 | 25.0% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2026-02-18 | Cyfrin | Predict.fun Audit Report | unspecified | direct | [report](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2026-02-18-cyfrin-predict-fun-v2.0.pdf) |
| 2026-01-01 | Cyfrin | Formal Verification Report: predict.fun | unspecified | direct | [report](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2026-01-27-cyfrin-predict-dot-fun-FV-v2.0.pdf) |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). No prior audits.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.10.07%20-%20Final%20-%20predict.fun%20lending%20market%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.10.07%20-%20Final%20-%20predict.fun%20lending%20market%20Audit%20Report.pdf) - audit_report_link

### Audit Reports (full list)

- 2026-02-18 - Cyfrin - Predict.fun Audit Report - https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2026-02-18-cyfrin-predict-fun-v2.0.pdf
- 2026-01-01 - Cyfrin - Formal Verification Report: predict.fun - https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2026-01-27-cyfrin-predict-dot-fun-FV-v2.0.pdf

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/predict-fun.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $108,724,597.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:39:55.069Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-95e36788
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $108,724,597.
