# Agentic Brief: StandX Bridge

## Project Overview

- **Project:** StandX Bridge (standx)
- **Website:** standx.com
- **Category:** Canonical Bridge
- **Chains (topography):** 56
- **Chains (DeFiLlama):** 56, 101
- **TVL:** $106,471,602 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 6 audits; most recent 2026-05-01 (4 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

StandX Bridge has 12 deployed contract rows in current topography. This brief renders the 12 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-2b686225; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 12 contracts across 1 chains. 2 have TP audit coverage (16.7%); 10 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | unmatched | [0x00b4f9...088e](https://bscscan.com/address/0x00b4f9b510893505acefb10ec91cbc972185088e) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0x2c02f5...065a](https://bscscan.com/address/0x2c02f575cdd0cc87de89ae6a493b05a5ed95065a) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x90bb5b...ab84](https://bscscan.com/address/0x90bb5bdc6acd166237640c8707a694f1fc3aab84) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0xaf44a1...8122](https://bscscan.com/address/0xaf44a1e76f56ee12adbb7ba8acd3cbd474888122) |
| PancakePair | core | core | unmatched | [0x2ad9c1...b9c5](https://bscscan.com/address/0x2ad9c1ad5b06f953b69d39d6685d725cd330b9c5) |
| PancakeV3Pool | vault_pool | vault_pool | unmatched | [0xb67e5e...eb0f](https://bscscan.com/address/0xb67e5eaf770a384ab28029d08b9bc5ebe32beb0f) |
| SafeL2 | governance | governance | unmatched | [0x29fcb4...c762](https://bscscan.com/address/0x29fcb43b46531bca003ddc8fcb67ffe91900c762) |
| SafeProxy | proxy | proxy | unmatched | [0x11b660...e433](https://bscscan.com/address/0x11b660397382ae3a83c4ad80e2f791189b39e433) |
| Settler | core | core | audited (TP) | [0x23fd9d...04ed](https://bscscan.com/address/0x23fd9dfb3f5772034ed677aeb15f048da53a04ed) |
| StandDUSD | core | core | audited (TP) | [0x2e8749...fdb2](https://bscscan.com/address/0x2e8749ea4b3324376fa740f63abba2993d1ffdb2) |
| unnamed | unknown | unknown | unmatched | [0xb69f4f...dc3b](https://bscscan.com/address/0xb69f4f80ec472ff9fe86933ac739329f8f72dc3b) |
| unnamed | unknown | unknown | unmatched | [0xe202fb...4f1c](https://bscscan.com/address/0xe202fb00309c7e2322ca4cde977bc56f51a14f1c) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 5 proxies on 56. 4 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 0 distinct deployer addresses: unknown. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 12 | 2 | 10 | 16.7% |
| **Total** | 12 | 2 | 10 | 16.7% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | RigSec StandX DUSD EVM Audit | unspecified | direct | not available |
| unknown | WatchPug | WatchPug StandX DUSD EVM Audit | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/standx-labs/stand_audit/blob/main/RigSec_StandX_DUSD_EVM_Audit.pdf](https://github.com/standx-labs/stand_audit/blob/main/RigSec_StandX_DUSD_EVM_Audit.pdf) - audit_report_link
- [https://github.com/standx-labs/stand_audit/blob/main/RigSec_StandX_DUSD_Solana_Audit.pdf](https://github.com/standx-labs/stand_audit/blob/main/RigSec_StandX_DUSD_Solana_Audit.pdf) - audit_report_link
- [https://github.com/standx-labs/stand_audit/blob/main/WatchPug_StandX_DUSD_EVM_Audit.pdf](https://github.com/standx-labs/stand_audit/blob/main/WatchPug_StandX_DUSD_EVM_Audit.pdf) - audit_report_link
- [https://github.com/standx-labs/stand_audit/blob/main/WatchPug_StandX_DUSD_Solana_Audit.pdf](https://github.com/standx-labs/stand_audit/blob/main/WatchPug_StandX_DUSD_Solana_Audit.pdf) - audit_report_link
- [https://github.com/standx-labs/stand_audit/blob/main/WatchPug_StandX_Highway_EVM_Audit.pdf](https://github.com/standx-labs/stand_audit/blob/main/WatchPug_StandX_Highway_EVM_Audit.pdf) - audit_report_link
- [https://github.com/standx-labs/stand_audit/blob/main/WatchPug_StandX_Highway_SVM_Audit.pdf](https://github.com/standx-labs/stand_audit/blob/main/WatchPug_StandX_Highway_SVM_Audit.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - RigSec StandX DUSD EVM Audit
- unknown - WatchPug - WatchPug StandX DUSD EVM Audit

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/standx.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $49,025,946.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:37:07.171Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-2b686225
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $49,025,946.
