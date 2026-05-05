# Agentic Brief: Moola Market

## Project Overview

- **Project:** Moola Market (moola-market)
- **Website:** moola.market
- **Category:** Lending
- **Chains (topography):** 42220
- **Chains (DeFiLlama):** 42220
- **TVL:** $1,158,814 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 1 audits; most recent 2026-05-03 (2 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** small_tvl_coverage_filler

Moola Market has 24 deployed contract rows in current topography. This brief renders the 24 rows present in scope-match run recovery-bucket4-sourcify-v1-2026-05-05-b750682f; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 24 contracts across 1 chains. 5 have TP audit coverage (20.8%); 19 do not.

Small-TVL coverage filler. Review only if the uncovered surface is technically interesting.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### celo (chain_id 42220)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AaveProtocolDataProvider | core | core | unmatched | [0x43d067...03a1](https://celoscan.io/address/0x43d067ed784d9dd2ffeda73775e2cc4c560103a1) |
| AToken | token | token | audited (TP) | [0xf44e15...7a2a](https://celoscan.io/address/0xf44e15badbc9a2c5d71a569d6dfb584a8cc97a2a) |
| ATokenV4 | token | token | audited (TP) | [0xa27269...01f0](https://celoscan.io/address/0xa2726942a99ca8ce9f212c97d8f1bd6378f501f0) |
| GoldToken | token | token | unmatched | [0xfea1b3...f7b1](https://celoscan.io/address/0xfea1b35f1d5f2a58532a70e7a32e6f2d3bc4f7b1) |
| GoldTokenProxy | proxy | proxy | unmatched | [0x471ece...a438](https://celoscan.io/address/0x471ece3750da237f93b8e339c536989b8978a438) |
| InitializableImmutableAdminUpgradeabilityProxy | proxy | proxy | audited (TP) | [0x7d00cd...387d](https://celoscan.io/address/0x7d00cd74ff385c955ea3d79e47bf06bd7386387d) |
| InitializableImmutableAdminUpgradeabilityProxy | proxy | proxy | audited (TP) | [0x918146...dbc3](https://celoscan.io/address/0x918146359264c492bd6934071c6bd31c854edbc3) |
| InitializableImmutableAdminUpgradeabilityProxy | proxy | proxy | audited (TP) | [0xe273ad...7568](https://celoscan.io/address/0xe273ad7ee11dcfaa87383ad5977ee1504ac07568) |
| LendingPoolAddressesProviderRegistry | vault_pool | vault_pool | likely in scope | [0xf03982...7491](https://celoscan.io/address/0xf03982910d17d11670dc3734dd73292cc4ab7491) |
| MooToken | token | token | unmatched | [0x177002...131e](https://celoscan.io/address/0x17700282592d6917f6a73d0bf8accf4d578c131e) |
| OwnedWallet | core | core | unmatched | [0x313bc8...3e5c](https://celoscan.io/address/0x313bc86d3d6e86ba164b2b451cb0d9cfa7943e5c) |
| StableTokenBRLProxy | proxy | proxy | unmatched | [0xe8537a...4787](https://celoscan.io/address/0xe8537a3d056da446677b9e9d6c5db704eaab4787) |
| StableTokenEURProxy | proxy | proxy | unmatched | [0xd8763c...ca73](https://celoscan.io/address/0xd8763cba276a3738e6de85b4b3bf5fded6d6ca73) |
| StableTokenProxy | proxy | proxy | unmatched | [0x765de8...282a](https://celoscan.io/address/0x765de816845861e75a25fca122bb6898b8b1282a) |
| StableTokenV2 | token | token | unmatched | [0x434563...850e](https://celoscan.io/address/0x434563b0604be100f04b7ae485bcafe3c9d8850e) |
| StableTokenV3 | token | token | unmatched | [0x815795...c318](https://celoscan.io/address/0x815795c30d0758a297b08cd4e0643620c974c318) |
| unnamed | unknown | unknown | unmatched | [0x643c57...2624](https://celoscan.io/address/0x643c574128c7c56a1835e021ad0ecc2592e72624) |
| unnamed | unknown | unknown | unmatched | [0x64defa...6b98](https://celoscan.io/address/0x64defa3544c695db8c535d289d843a189aa26b98) |
| unnamed | unknown | unknown | unmatched | [0x7037f7...c500](https://celoscan.io/address/0x7037f7296b2fc7908de7b57a89efaa8319f0c500) |
| unnamed | unknown | unknown | unmatched | [0x9802d8...1a55](https://celoscan.io/address/0x9802d866fde4563d088a6619f7cef82c0b991a55) |
| unnamed | unknown | unknown | unmatched | [0xa8d0e6...8ba7](https://celoscan.io/address/0xa8d0e6799ff3fd19c6459bf02689ae09c4d78ba7) |
| unnamed | unknown | unknown | unmatched | [0xaf106f...8f73](https://celoscan.io/address/0xaf106f8d4756490e7069027315f4886cc94a8f73) |
| unnamed | unknown | unknown | unmatched | [0xd7f771...25ed](https://celoscan.io/address/0xd7f77169d5e6a32c5044052f9a49eb94697b25ed) |
| unnamed | unknown | unknown | unmatched | [0xe4c183...ed62](https://celoscan.io/address/0xe4c183d99b463cc2190b737b51ae26cc6f17ed62) |

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
| No provenance | 24 | 5 | 19 | 20.8% |
| **Total** | 24 | 5 | 19 | 20.8% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | blog.openzeppelin.com/aave-protocol-audit | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 2 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://blog.openzeppelin.com/aave-protocol-audit](https://blog.openzeppelin.com/aave-protocol-audit) - audit_report_link
- [https://drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view](https://drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view) - audit_report_link
- [https://github.com/moolamarket/moola/blob/main/aave-protocol/docs/ToB_aave_protocol_final_report.pdf](https://github.com/moolamarket/moola/blob/main/aave-protocol/docs/ToB_aave_protocol_final_report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.10.07%20-%20Final%20-%20predict.fun%20lending%20market%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.10.07%20-%20Final%20-%20predict.fun%20lending%20market%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.30%20-%20Final%20-%20Ethos%20Reputation%20Market%20Fix%20Review%20Contest%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.30%20-%20Final%20-%20Ethos%20Reputation%20Market%20Fix%20Review%20Contest%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.03.14%20-%20Final%20-%20PinLink%3A%20RWA-Tokenized%20DePIN%20Marketplace%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.03.14%20-%20Final%20-%20PinLink%3A%20RWA-Tokenized%20DePIN%20Marketplace%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2023-05-franklintempleton-moneymarket-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-05-franklintempleton-moneymarket-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2026-04-gensyn-delphidynamicparamutuelmarkets-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2026-04-gensyn-delphidynamicparamutuelmarkets-securityreview.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Ondo%20Global%20Markets%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Ondo%20Global%20Markets%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://immunefi.com/bounty/moola](https://immunefi.com/bounty/moola) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - blog.openzeppelin.com/aave-protocol-audit

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/moola-market.json
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

- **Generated at:** 2026-05-05T20:46:20.072Z
- **Scope-match run_id:** recovery-bucket4-sourcify-v1-2026-05-05-b750682f
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
