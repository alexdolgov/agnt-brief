# Agentic Brief: avantis

## Project Overview

- **Project:** avantis (avantis)
- **Website:** avantisfi.com
- **Category:** Derivatives
- **Chains (topography):** 8453
- **Chains (DeFiLlama):** 8453
- **TVL:** $100,849,277 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 3 audits; most recent 2023-12-01 (886 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

avantis has 7 deployed contract rows in current topography. This brief renders the 7 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

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

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Token | token | token | unmatched | [0x696f94...f4f1](https://basescan.org/address/0x696f9436b67233384889472cd7cd58a6fb5df4f1) |
| Tranche | core | core | audited (TP) | [0x5d023a...7c8f](https://basescan.org/address/0x5d023a1a4fad735ad78a3f9012701b1223637c8f) |
| Tranche | core | core | audited (TP) | [0xc3769e...a26d](https://basescan.org/address/0xc3769e440e3515ba374372837f76aafdc4fba26d) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x83084c...66f7](https://basescan.org/address/0x83084cb182162473d6feffcd3aa48ba55a7b66f7) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x944766...e7f9](https://basescan.org/address/0x944766f715b51967e56afde5f0aa76ceacc9e7f9) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xe9fb8c...48dd](https://basescan.org/address/0xe9fb8c70af1b99f2baaa07aa926fcf3d237348dd) |
| VaultManager | vault_pool | vault_pool | audited (TP) | [0xf34e3a...127f](https://basescan.org/address/0xf34e3a38280a7e600cb4aa6d8c2a160d8e16127f) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 3 proxies on 8453. 3 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 0 distinct deployer addresses: unknown. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

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
| unknown | Zellic | spaces%2F76vAZHPcNKY10NzuKsC4%2Fuploads%2FNJ5XV09sg4mskC12Z0uq%2FAvantis%20 %20Zellic%20Audit%20Repo | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 886 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://1312337203-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F76vAZHPcNKY10NzuKsC4%2Fuploads%2F7wBgRID4Op6TuWhWgxxn%2FAvantis%20v1.5%20Cross%20Asset%20Leverage%20Audit%20Report.pdf?alt=media&token=76b98c66-22b8-478b-b03c-2073ad6e21a5](https://1312337203-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F76vAZHPcNKY10NzuKsC4%2Fuploads%2F7wBgRID4Op6TuWhWgxxn%2FAvantis%20v1.5%20Cross%20Asset%20Leverage%20Audit%20Report.pdf?alt=media&token=76b98c66-22b8-478b-b03c-2073ad6e21a5) - audit_report_link
- [https://1312337203-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F76vAZHPcNKY10NzuKsC4%2Fuploads%2Fap10BwpWhzNMappneMgr%2FAvantis%20audit%20report.pdf?alt=media&token=cf670d4b-e0ff-48b0-be2c-42a415c74e61](https://1312337203-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F76vAZHPcNKY10NzuKsC4%2Fuploads%2Fap10BwpWhzNMappneMgr%2FAvantis%20audit%20report.pdf?alt=media&token=cf670d4b-e0ff-48b0-be2c-42a415c74e61) - audit_report_link
- [https://1312337203-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F76vAZHPcNKY10NzuKsC4%2Fuploads%2FNJ5XV09sg4mskC12Z0uq%2FAvantis%20-%20Zellic%20Audit%20Report.pdf?alt=media&token=244ea393-4b7c-48eb-a237-b5ca41014a18](https://1312337203-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F76vAZHPcNKY10NzuKsC4%2Fuploads%2FNJ5XV09sg4mskC12Z0uq%2FAvantis%20-%20Zellic%20Audit%20Report.pdf?alt=media&token=244ea393-4b7c-48eb-a237-b5ca41014a18) - audit_report_link
- [https://1312337203-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F76vAZHPcNKY10NzuKsC4%2Fuploads%2FQugrQyVYa7gCMa8FUQdy%2FAvantis_-_Zellic_Audit_Report.pdf?alt=media&token=6c659734-a0f8-4190-b020-bf0c9ce2d9ab](https://1312337203-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F76vAZHPcNKY10NzuKsC4%2Fuploads%2FQugrQyVYa7gCMa8FUQdy%2FAvantis_-_Zellic_Audit_Report.pdf?alt=media&token=6c659734-a0f8-4190-b020-bf0c9ce2d9ab) - audit_report_link
- [https://docs.avantisfi.com/avnt-token/staking-security-module](https://docs.avantisfi.com/avnt-token/staking-security-module) - audit_report_link
- [https://docs.avantisfi.com/liquidity-providers/avantis-lp-vault-avusdc](https://docs.avantisfi.com/liquidity-providers/avantis-lp-vault-avusdc) - audit_report_link
- [https://docs.avantisfi.com/liquidity-providers/risk-management](https://docs.avantisfi.com/liquidity-providers/risk-management) - audit_report_link
- [https://docs.avantisfi.com/liquidity-providers/risk-management-tranches](https://docs.avantisfi.com/liquidity-providers/risk-management-tranches) - audit_report_link
- [https://docs.avantisfi.com/llms-full.txt](https://docs.avantisfi.com/llms-full.txt) - audit_report_link
- [https://docs.avantisfi.com/rewards/avantis-xp/broken-reference](https://docs.avantisfi.com/rewards/avantis-xp/broken-reference) - audit_report_link
- [https://docs.avantisfi.com/rewards/loss-rebates](https://docs.avantisfi.com/rewards/loss-rebates) - audit_report_link
- [https://docs.avantisfi.com/rewards/referrals](https://docs.avantisfi.com/rewards/referrals) - audit_report_link
- [https://docs.avantisfi.com/security/audits](https://docs.avantisfi.com/security/audits) - audit_report_link
- [https://docs.avantisfi.com/security/audits.md](https://docs.avantisfi.com/security/audits.md) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.11.01%20-%20Final%20-%20Avantis%20v1.5%3A%20Cross-Asset%20Leverage%20%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.11.01%20-%20Final%20-%20Avantis%20v1.5%3A%20Cross-Asset%20Leverage%20%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Avantis%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Avantis%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - Zellic - spaces%2F76vAZHPcNKY10NzuKsC4%2Fuploads%2FNJ5XV09sg4mskC12Z0uq%2FAvantis%20 %20Zellic%20Audit%20Report

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/avantis.json
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

- **Generated at:** 2026-05-05T20:37:13.800Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $0.
