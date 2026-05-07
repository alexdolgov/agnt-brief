# Agentic Brief: Wasabi Perps

## Project Overview

- **Project:** Wasabi Perps (wasabi)
- **Website:** wasabi.xyz
- **Category:** Derivatives
- **Chains (topography):** 1, 8453, 81457
- **Chains (DeFiLlama):** 1, 101, 8453, 80094, 81457
- **TVL:** $42,894,929 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 10 audits; most recent 2026-05-02 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Wasabi Perps has 14 deployed contract rows in current topography. This brief renders the 12 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-0dc929c6; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 12 contracts across 3 chains. 1 have TP audit coverage (8.3%); 11 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | unmatched | [0x0fdc7b...d8ff](https://etherscan.io/address/0x0fdc7b5ce282763d5372a44b01db65e14830d8ff) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x8e0edf...afc0](https://etherscan.io/address/0x8e0edfd6d15f858adbb41677b82ab64797d5afc0) |
| unnamed | unknown | unknown | unmatched | [0x1f392a...9c7e](https://etherscan.io/address/0x1f392a1f7c737aa4777ed3dc608ec153dfd39c7e) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | likely in scope | [0x0da575...b12b](https://basescan.org/address/0x0da575d3edd4e3ee1d904936f94ec043c06bb12b) |
| ERC1967Proxy | proxy | proxy | unmatched | [0xa456c7...a37c](https://basescan.org/address/0xa456c77d358c9c89f4dfb294fa2a47470b7da37c) |
| ERC1967Proxy | proxy | proxy | unmatched | [0xbdae5d...48aa](https://basescan.org/address/0xbdae5df498a45c5f058e3a09afe9ba4da7b248aa) |
| WasabiVault | vault_pool | vault_pool | audited (TP) | [0x72e81d...218a](https://basescan.org/address/0x72e81d1e5cd22b7d2407b31e8306859e02fa218a) |
| unnamed | unknown | unknown | unmatched | [0x3ee6c6...f1ee](https://basescan.org/address/0x3ee6c6cdaa0073de6da00091329de4390b0df1ee) |
| unnamed | unknown | unknown | unmatched | [0x6a3987...88a5](https://basescan.org/address/0x6a39877084a13d26d2210f9ef86c082fc55988a5) |
| unnamed | unknown | unknown | unmatched | [0xec2e15...47d7](https://basescan.org/address/0xec2e15d85d66f8174fa616042726ef6ebc3147d7) |

### blast (chain_id 81457)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | unmatched | [0x030107...0c3a](https://blastscan.io/address/0x0301079dabdc9a2c70b856b2c51aca02bac10c3a) |
| unnamed | unknown | unknown | unmatched | [0x046299...d355](https://blastscan.io/address/0x046299143a880c4d01a318bc6c9f2c0a5c1ed355) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 6 proxies on 1, 8453, 81457. 6 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0x5c629f...b0c8, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 12 | 1 | 11 | 8.3% |
| **Total** | 12 | 1 | 11 | 8.3% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | Zellic | Wasabi Perps Zellic Audit Report 2 | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://dkoda-public.s3.amazonaws.com/Narya.ai_Wasabi_Smart_Contract_Audit.pdf](https://dkoda-public.s3.amazonaws.com/Narya.ai_Wasabi_Smart_Contract_Audit.pdf) - audit_report_link
- [https://dkoda-public.s3.amazonaws.com/Zellic_Wasabi_Smart_Contract_Audit.pdf](https://dkoda-public.s3.amazonaws.com/Zellic_Wasabi_Smart_Contract_Audit.pdf) - audit_report_link
- [https://docs.wasabi.xyz/_/overview/technical-documentation/audits.md](https://docs.wasabi.xyz/_/overview/technical-documentation/audits.md) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.11.28%20-%20Final%20-%20Wasabi%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.11.28%20-%20Final%20-%20Wasabi%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Wasabi%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Wasabi%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Wasabi%20Perps%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Wasabi%20Perps%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://wasabi-public.s3.amazonaws.com/audits/v1/0xfoobar_Wasabi_Smart_Contract_Audit.pdf](https://wasabi-public.s3.amazonaws.com/audits/v1/0xfoobar_Wasabi_Smart_Contract_Audit.pdf) - audit_report_link
- [https://wasabi-public.s3.amazonaws.com/audits/v1/Wasabi+Perps+-+Zellic+Audit+Report.pdf](https://wasabi-public.s3.amazonaws.com/audits/v1/Wasabi+Perps+-+Zellic+Audit+Report.pdf) - audit_report_link
- [https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi_Perps_EVM_Audit_Sherlock.pdf](https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi_Perps_EVM_Audit_Sherlock.pdf) - audit_report_link
- [https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi_Perps_Solana_Audit_Sherlock.pdf](https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi_Perps_Solana_Audit_Sherlock.pdf) - audit_report_link
- [https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi+Perps+-+Zellic+Audit+Report+2.pdf](https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi+Perps+-+Zellic+Audit+Report+2.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - Zellic - Wasabi Perps Zellic Audit Report 2

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/wasabi.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $13,596.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:41:48.134Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-0dc929c6
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $13,596.
