# Agentic Brief: Fuel Bridge

## Project Overview

- **Project:** Fuel Bridge (fuel-bridge)
- **Website:** fuel.network
- **Category:** Bridge
- **Chains (topography):** 1
- **Chains (DeFiLlama):** 1
- **TVL:** $11,223,894 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 5 audits; most recent 2026-05-02 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** mid_tvl_commercial_target

Fuel Bridge has 4 deployed contract rows in current topography. This brief renders the 4 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-ea32eab5; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 4 contracts across 1 chains. 2 have TP audit coverage (50.0%); 2 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | likely in scope | [0xa4ca04...3f67](https://etherscan.io/address/0xa4ca04d02bfdc3a2df56b9b6994520e69df43f67) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0xaeb0c0...5ddf](https://etherscan.io/address/0xaeb0c00d0125a8a788956ade4f4f12ead9f65ddf) |
| FuelERC20GatewayV4 | token | token | audited (TP) | [0xde2d79...3fab](https://etherscan.io/address/0xde2d792ca3c4d02de3ce1cd1456d8d0990cc3fab) |
| FuelMessagePortalV3 | core | core | audited (TP) | [0x2c4df1...2e67](https://etherscan.io/address/0x2c4df10a82cf077122ed99573aca6dacd76f2e67) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 2 proxies on 1. 2 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0xe7dcfe...585e, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 4 | 2 | 2 | 50.0% |
| **Total** | 4 | 2 | 2 | 50.0% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2024-09-17 | Hexens | fuel-audit-september-2024(Diffs on the Bridge and State Contracts)(Public) | unspecified | direct | [report](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/fuel-audit-september-2024(Diffs%20on%20the%20Bridge%20and%20State%20Contracts)(Public).pdf) |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/FuelLabs/audits/blob/master/ChainSecurity_Fuel_Sway_Optimizations_audit.pdf](https://github.com/FuelLabs/audits/blob/master/ChainSecurity_Fuel_Sway_Optimizations_audit.pdf) - audit_report_link
- [https://github.com/FuelLabs/audits/blob/master/ChainSecurity_Fuel_Sway_Semantic_Analysis_audit.pdf](https://github.com/FuelLabs/audits/blob/master/ChainSecurity_Fuel_Sway_Semantic_Analysis_audit.pdf) - audit_report_link
- [https://github.com/FuelLabs/audits/blob/master/fuel_core_audit_report.pdf](https://github.com/FuelLabs/audits/blob/master/fuel_core_audit_report.pdf) - audit_report_link
- [https://github.com/FuelLabs/audits/blob/master/fuel_fast_bridge_audit_final.pdf](https://github.com/FuelLabs/audits/blob/master/fuel_fast_bridge_audit_final.pdf) - audit_report_link
- [https://github.com/FuelLabs/audits/blob/master/fuel_vm_audit_report.pdf](https://github.com/FuelLabs/audits/blob/master/fuel_vm_audit_report.pdf) - audit_report_link
- [https://github.com/FuelLabs/audits/blob/master/fuel-audit-september-2024(Connectors%20Predicates)(Public).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-audit-september-2024(Connectors%20Predicates)(Public).pdf) - audit_report_link
- [https://github.com/FuelLabs/audits/blob/master/fuel-audit-september-2024(Diffs%20on%20the%20Bridge%20and%20State%20Contracts)(Public).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-audit-september-2024(Diffs%20on%20the%20Bridge%20and%20State%20Contracts)(Public).pdf) - audit_report_link
- [https://github.com/FuelLabs/audits/blob/master/fuel-audit-september-2024(Points%20Migration%20Function)(Public).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-audit-september-2024(Points%20Migration%20Function)(Public).pdf) - audit_report_link
- [https://github.com/FuelLabs/audits/blob/master/Fuel-Bridge-apr24(Public)%20(including%20Diffs).pdf](https://github.com/FuelLabs/audits/blob/master/Fuel-Bridge-apr24(Public)%20(including%20Diffs).pdf) - audit_report_link
- [https://github.com/FuelLabs/audits/blob/master/fuel-sway-standard-audit-july24(Public)%20(3).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-sway-standard-audit-july24(Public)%20(3).pdf) - audit_report_link
- [https://github.com/FuelLabs/audits/blob/master/LICENSE](https://github.com/FuelLabs/audits/blob/master/LICENSE) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.09.25%20-%20Final%20-%20Thanos%20L2%20Native%20Token%20Bridge%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.09.25%20-%20Final%20-%20Thanos%20L2%20Native%20Token%20Bridge%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/omni-network/Sigma_Prime_Omni_Nomina_Bridge_Contracts_Security_Assessment_Report_v2_1.pdf](https://github.com/sigp/public-audits/blob/master/reports/omni-network/Sigma_Prime_Omni_Nomina_Bridge_Contracts_Security_Assessment_Report_v2_1.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/polygon/Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report_v2_1.pdf](https://github.com/sigp/public-audits/blob/master/reports/polygon/Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report_v2_1.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/content/bridges/BridgeSecurityChecklist.md](https://github.com/spearbit/portfolio/blob/master/content/bridges/BridgeSecurityChecklist.md) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/content/bridges/BridgeSecurityIntroduction.md](https://github.com/spearbit/portfolio/blob/master/content/bridges/BridgeSecurityIntroduction.md) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/pdfs/Satsbridge-frontend-Spearbit-Security-Review-January-2025.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Satsbridge-frontend-Spearbit-Security-Review-January-2025.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/pdfs/zkEVM-bridge-Spearbit-27-March.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/zkEVM-bridge-Spearbit-27-March.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2023-11-immutable-zkevmbridgecontracts-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-11-immutable-zkevmbridgecontracts-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2023-12-offchain-labs-arbitrum-token-bridge-creator-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-12-offchain-labs-arbitrum-token-bridge-creator-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-07-taraxa-bridge-smart-contracts-v2-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-07-taraxa-bridge-smart-contracts-v2-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-03-offchain-custom-fee-erc20-bridge-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-03-offchain-custom-fee-erc20-bridge-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2026-04-gensyn-bridged-gensyn-token-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2026-04-gensyn-bridged-gensyn-token-securityreview.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Astria%20Bridge%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Astria%20Bridge%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/eBridge%20AElf%20Bridge%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/eBridge%20AElf%20Bridge%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/eBridge%20Ethereum%20Bridge%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/eBridge%20Ethereum%20Bridge%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Facet%20Bridge%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Facet%20Bridge%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Fuelet%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Fuelet%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Mina%20Token%20Bridge%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Mina%20Token%20Bridge%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Mina%20Token%20Bridge%20EVM%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Mina%20Token%20Bridge%20EVM%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/N1%20Bridge%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/N1%20Bridge%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link

### Audit Reports (full list)

- 2024-09-17 - Hexens - fuel-audit-september-2024(Diffs on the Bridge and State Contracts)(Public) - https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/fuel-audit-september-2024(Diffs%20on%20the%20Bridge%20and%20State%20Contracts)(Public).pdf

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/fuel-bridge.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $11,834,552.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:41:07.799Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-ea32eab5
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $11,834,552.
