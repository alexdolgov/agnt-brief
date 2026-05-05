# Agentic Brief: KiloEx

## Project Overview

- **Project:** KiloEx (kiloex)
- **Website:** kiloex.io
- **Category:** Derivatives
- **Chains (topography):** 1, 56, 8453
- **Chains (DeFiLlama):** 56, 169, 204, 8453, 167000
- **TVL:** $17,434,501 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 6 audits; most recent 2026-05-02 (2 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** mid_tvl_commercial_target

KiloEx has 20 deployed contract rows in current topography. This brief renders the 20 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-dd325e11; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 20 contracts across 3 chains. 1 have TP audit coverage (5.0%); 19 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| unnamed | unknown | unknown | unmatched | [0x7746ef...5717](https://etherscan.io/address/0x7746ef546d562b443ae4b4145541a3b1a3d75717) |

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BeaconProxy | proxy | proxy | unmatched | [0x4aae82...bcf7](https://bscscan.com/address/0x4aae823a6a0b376de6a78e74ecc5b079d38cbcf7) |
| BEP20TokenImplementation | token | token | likely in scope | [0xba5fe2...0b5c](https://bscscan.com/address/0xba5fe23f8a3a24bed3236f05f2fcf35fd0bf0b5c) |
| BEP20UpgradeableProxy | proxy | proxy | likely in scope | [0xba2ae4...4c43](https://bscscan.com/address/0xba2ae424d960c26247dd6c32edc70b295c744c43) |
| DeBoxTokenOFT | token | token | likely in scope | [0x6386ad...42af](https://bscscan.com/address/0x6386adc4bc9c21984e34fd916bb349dd861742af) |
| KiloExToken | token | token | audited (TP) | [0x503fa2...df53](https://bscscan.com/address/0x503fa24b7972677f00c4618e5fbe237780c1df53) |
| LisUSD | core | core | unmatched | [0xf5bd9b...d7f8](https://bscscan.com/address/0xf5bd9b192092517d60e90c9af17b69b134c4d7f8) |
| REX | core | core | unmatched | [0x90869b...c0fe](https://bscscan.com/address/0x90869b3a42e399951bd5f5ff278b8cc5ee1dc0fe) |
| SLisBNB | core | core | unmatched | [0xd9edeb...34d0](https://bscscan.com/address/0xd9edeba7f3580f5e22821a52fc1ba8508f4e34d0) |
| SolvBTCV3 | core | core | unmatched | [0xa4b6cf...b38f](https://bscscan.com/address/0xa4b6cf2baaa235ab7fe10eadb84b82460165b38f) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x0782b6...41e5](https://bscscan.com/address/0x0782b6d8c4551b9760e74c0545a9bcd90bdc41e5) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xb0b84d...4a1b](https://bscscan.com/address/0xb0b84d294e0c75a6abe60171b70edeb2efd14a1b) |
| unnamed | unknown | unknown | unmatched | [0x2a3dc2...081a](https://bscscan.com/address/0x2a3dc2d5daf9c8c46c954b8669f4643c6b1c081a) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BeaconProxy | proxy | proxy | unmatched | [0x3b86ad...931f](https://basescan.org/address/0x3b86ad95859b6ab773f55f8d94b4b9d443ee931f) |
| IBTC | core | core | unmatched | [0x24b042...4a76](https://basescan.org/address/0x24b0420c82f1333596ad7bf9d892f2ff70ca4a76) |
| OBTC | core | core | unmatched | [0xe3c0ff...8b35](https://basescan.org/address/0xe3c0ff176ef92fc225096c6d1788ccb818808b35) |
| PumpTokenOFT | token | token | likely in scope | [0xf469fb...012e](https://basescan.org/address/0xf469fbd2abcd6b9de8e169d128226c0fc90a012e) |
| SolvBTCV3 | core | core | unmatched | [0xa4b6cf...b38f](https://basescan.org/address/0xa4b6cf2baaa235ab7fe10eadb84b82460165b38f) |
| StoneCross | core | core | unmatched | [0xd2012f...28c6](https://basescan.org/address/0xd2012fc1b913ce50732ebcaa7e601fe37ac728c6) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x124187...cf62](https://basescan.org/address/0x12418783e860997eb99e8acf682df952f721cf62) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 6 proxies on 56, 8453. 3 follow EIP-1967 / UUPS patterns; 2 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 0 distinct deployer addresses: unknown. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 20 | 1 | 19 | 5.0% |
| **Total** | 20 | 1 | 19 | 5.0% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | 20250321 XKilo Token Final Audit Report | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 2 days ago.

---

## Appendix

### Docs Pages Referenced

- [http://scalebit.xyz/reports/20250321-XKilo-Token-Final-Audit-Report.pdf](http://scalebit.xyz/reports/20250321-XKilo-Token-Final-Audit-Report.pdf) - audit_report_link
- [https://docs.kiloex.io/kiloex/about-kiloex/audit.md](https://docs.kiloex.io/kiloex/about-kiloex/audit.md) - audit_report_link
- [https://drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view?usp=sharing](https://drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view?usp=sharing](https://drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view?usp=sharing) - audit_report_link
- [https://github.com/KiloExPerp/kiloex-audit/blob/main/KiloEx%20-%20SlowMist%20Audit%20Report.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/KiloEx%20-%20SlowMist%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/KiloExPerp/kiloex-audit/blob/main/KiloEx%2520-%2520SlowMist%2520Audit%2520Report.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/KiloEx%2520-%2520SlowMist%2520Audit%2520Report.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/KiloEx%20Phase1%20-%20SlowMist%20Audit%20Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/KiloEx%20Phase1%20-%20SlowMist%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/KiloEx%2520Phase1%2520-%2520SlowMist%2520Audit%2520Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/KiloEx%2520Phase1%2520-%2520SlowMist%2520Audit%2520Report.pdf) - audit_report_link
- [https://scalebit.xyz/reports/20240802-HybridVault-Final-Audit-Report.pdf](https://scalebit.xyz/reports/20240802-HybridVault-Final-Audit-Report.pdf) - audit_report_link
- [https://scalebit.xyz/reports/Kilo---Vault2-Final-Audit-Report.pdf](https://scalebit.xyz/reports/Kilo---Vault2-Final-Audit-Report.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - 20250321 XKilo Token Final Audit Report

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/kiloex.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $434,580,876,347,572,100.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:43:48.565Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-dd325e11
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $434,580,876,347,572,100.
