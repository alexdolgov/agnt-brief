# Agentic Brief: bancor

## Project Overview

- **Project:** bancor (bancor)
- **Website:** bancor.network
- **Category:** Dexs
- **Chains (topography):** 1
- **Chains (DeFiLlama):** 1
- **TVL:** $49,087,807 (2 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 8 audits; most recent 2026-05-01 (4 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

bancor has 7 deployed contract rows in current topography. This brief renders the 6 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 6 contracts across 1 chains. 2 have TP audit coverage (33.3%); 4 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BancorConverterRegistry | registry | registry | unmatched | [0xf6e2d7...c518](https://etherscan.io/address/0xf6e2d7f616b67e46d708e4410746e9aab3a4c518) |
| ContractRegistry | registry | registry | unmatched | [0x52ae12...add4](https://etherscan.io/address/0x52ae12abe5d8bd778bd5397f99ca900624cfadd4) |
| SmartToken | token | token | likely in scope | [0x1f573d...ff1c](https://etherscan.io/address/0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c) |
| TransparentUpgradeableProxyImmutable | proxy | proxy | audited (TP) | [0x649765...c373](https://etherscan.io/address/0x649765821d9f64198c905ec0b2b037a4a52bc373) |
| TransparentUpgradeableProxyImmutable | proxy | proxy | audited (TP) | [0xeef417...d4fb](https://etherscan.io/address/0xeef417e1d5cc832e619ae18d2f140de2999dd4fb) |
| unnamed | unknown | unknown | unmatched | [0x42616e...6973](https://etherscan.io/address/0x42616e636f72436f6e7665727465725265676973) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 1 proxies on 1. 1 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 0 distinct deployer addresses: unknown. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 6 | 2 | 4 | 33.3% |
| **Total** | 6 | 2 | 4 | 33.3% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | OpenZeppelin | OpenZeppelin AutoCompoundingRewards Audit Report | unspecified | direct | not available |
| unknown | OpenZeppelin | OpenZeppelin V3 Audit Report | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://docs.bancor.network/about-bancor-network/security-and-audits](https://docs.bancor.network/about-bancor-network/security-and-audits) - audit_report_link
- [https://docs.bancor.network/about-bancor-network/security-and-audits/dao-msig-intervention-policy](https://docs.bancor.network/about-bancor-network/security-and-audits/dao-msig-intervention-policy) - audit_report_link
- [https://docs.bancor.network/about-bancor-network/security-and-audits/multisig-rights](https://docs.bancor.network/about-bancor-network/security-and-audits/multisig-rights) - audit_report_link
- [https://docs.bancor.network/about-bancor-network/security-and-audits/oracles](https://docs.bancor.network/about-bancor-network/security-and-audits/oracles) - audit_report_link
- [https://drive.google.com/drive/folders/1TUNF7gOFitTkl52-PGqS4m28edp-eyst](https://drive.google.com/drive/folders/1TUNF7gOFitTkl52-PGqS4m28edp-eyst) - audit_report_link
- [https://drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view?usp=sharing](https://drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/d/1en044m2wchn85aQBcoVx2elmxEYd5kEA/view](https://drive.google.com/file/d/1en044m2wchn85aQBcoVx2elmxEYd5kEA/view) - audit_report_link
- [https://drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view?usp=sharing](https://drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view?usp=sharing](https://drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view?usp=sharing](https://drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view?usp=sharing) - audit_report_link
- [https://drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view?usp=sharing](https://drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view?usp=sharing) - audit_report_link
- [https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/ChainSecurity-V3-Audit-Report.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/ChainSecurity-V3-Audit-Report.pdf) - audit_report_link
- [https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf) - audit_report_link
- [https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/OpenZeppelin-V3-Audit-Report.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/OpenZeppelin-V3-Audit-Report.pdf) - audit_report_link
- [https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/PeckShield-Audit-Report-BancorV3-v1.0.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/PeckShield-Audit-Report-BancorV3-v1.0.pdf) - audit_report_link
- [https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/bug-bounty.md](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/bug-bounty.md) - audit_report_link
- [https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Bancor_smartcontract_halborn_report_V1.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Bancor_smartcontract_halborn_report_V1.pdf) - audit_report_link
- [https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%2520Smart%2520Contract%2520Audits/Bancor_smartcontract_halborn_report_V1.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%2520Smart%2520Contract%2520Audits/Bancor_smartcontract_halborn_report_V1.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - OpenZeppelin - OpenZeppelin AutoCompoundingRewards Audit Report
- unknown - OpenZeppelin - OpenZeppelin V3 Audit Report

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/bancor.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $16,549,219.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:39:02.005Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $16,549,219.
