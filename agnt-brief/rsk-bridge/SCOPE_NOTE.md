# Agentic Brief: RSK Bridge

## Project Overview

- **Project:** RSK Bridge (rsk-bridge)
- **Website:** rootstock.io
- **Category:** Canonical Bridge
- **Chains (topography):** 1
- **Chains (DeFiLlama):** 1, 30
- **TVL:** $2,100,644 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 4 audits; most recent 2026-05-03 (1 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** small_tvl_coverage_filler

RSK Bridge has 19 deployed contract rows in current topography. This brief renders the 19 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-720c81c2; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 19 contracts across 1 chains. 2 have TP audit coverage (10.5%); 17 do not.

Small-TVL coverage filler. Review only if the uncovered surface is technically interesting.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AdminUpgradeabilityProxy | proxy | proxy | audited (TP) | [0x12ed69...7b5d](https://etherscan.io/address/0x12ed69359919fc775bc2674860e8fe2d2b6a7b5d) |
| Bridge | bridge | bridge | audited (TP) | [0x9f29f9...63d8](https://etherscan.io/address/0x9f29f9bda2052884d39f0f032b68aaa14fc363d8) |
| SideToken | token | token | unmatched | [0x73c084...498a](https://etherscan.io/address/0x73c08467e23f7dcb7ddbbc8d05041b74467a498a) |
| SideTokenFactory | factory | factory | unmatched | [0xb3d061...b0fa](https://etherscan.io/address/0xb3d06103af1a68026615e673d46047fab77db0fa) |
| unnamed | unknown | unknown | unmatched | [0x14adae...3827](https://etherscan.io/address/0x14adae34bef7ca957ce2dde5add97ea050123827) |
| unnamed | unknown | unknown | unmatched | [0x1bda44...a6c4](https://etherscan.io/address/0x1bda44fda023f2af8280a16fd1b01d1a493ba6c4) |
| unnamed | unknown | unknown | unmatched | [0x2acc95...c9d5](https://etherscan.io/address/0x2acc95758f8b5f583470ba265eb685a8f45fc9d5) |
| unnamed | unknown | unknown | unmatched | [0x44fcd0...ecd6](https://etherscan.io/address/0x44fcd0854d745efdef4cfe9868efe4d4eb51ecd6) |
| unnamed | unknown | unknown | unmatched | [0x499151...c95b](https://etherscan.io/address/0x4991516df6053121121274397a8c1dad608bc95b) |
| unnamed | unknown | unknown | unmatched | [0x6b1a73...d406](https://etherscan.io/address/0x6b1a73d547f4009a26b8485b63d7015d248ad406) |
| unnamed | unknown | unknown | unmatched | [0x70566d...4ba8](https://etherscan.io/address/0x70566d8541beabe984c8babf8a816ed908514ba8) |
| unnamed | unknown | unknown | unmatched | [0x75c6e1...b1da](https://etherscan.io/address/0x75c6e15702ebacd51177154ff383df9695e1b1da) |
| unnamed | unknown | unknown | unmatched | [0x83cf9a...de15](https://etherscan.io/address/0x83cf9a58d31d9014f02ebe282d10c25c28e7de15) |
| unnamed | unknown | unknown | unmatched | [0x9c3a5f...e307](https://etherscan.io/address/0x9c3a5f8d686fade293c0ce989a62a34408c4e307) |
| unnamed | unknown | unknown | unmatched | [0x9d1193...0e69](https://etherscan.io/address/0x9d11937e2179dc5270aa86a3f8143232d6da0e69) |
| unnamed | unknown | unknown | unmatched | [0xe0cff8...d8ff](https://etherscan.io/address/0xe0cff8a40f540657c62eb4cac34b915e5ed8d8ff) |
| unnamed | unknown | unknown | unmatched | [0xe506f6...5549](https://etherscan.io/address/0xe506f698b31a66049bd4653ed934e7a07cbc5549) |
| unnamed | unknown | unknown | unmatched | [0xe70069...d9db](https://etherscan.io/address/0xe700691da7b9851f2f35f8b8182c69c53ccad9db) |
| unnamed | unknown | unknown | unmatched | [0xff9ea3...403f](https://etherscan.io/address/0xff9ea341d9ea91cb7c54342354377f5104fd403f) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 1 proxies on 1. 0 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0x9c95b0...1585. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 19 | 2 | 17 | 10.5% |
| **Total** | 19 | 2 | 17 | 10.5% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | rskaudit ginger 120717 | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 1 days ago.

---

## Appendix

### Docs Pages Referenced

- [http://www0.cs.ucl.ac.uk/staff/P.McCorry/rskaudit_ginger_120717.pdf](http://www0.cs.ucl.ac.uk/staff/P.McCorry/rskaudit_ginger_120717.pdf) - audit_report_link
- [https://bitslog.com/2019/08/01/armadillo-more-consensus-security-for-rsk](https://bitslog.com/2019/08/01/armadillo-more-consensus-security-for-rsk) - audit_report_link
- [https://cs.umd.edu/~amiller/BTCRelayAudit.pdf](https://cs.umd.edu/~amiller/BTCRelayAudit.pdf) - audit_report_link
- [https://github.com/MuhammadNurYanhaona/checkpoint-paper/blob/master/checkpoint-paper-reviewed.pdf](https://github.com/MuhammadNurYanhaona/checkpoint-paper/blob/master/checkpoint-paper-reviewed.pdf) - audit_report_link
- [https://github.com/rsksmart/RSKIPs/blob/master/IPs/RSKIP110.md](https://github.com/rsksmart/RSKIPs/blob/master/IPs/RSKIP110.md) - audit_report_link
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
- [https://github.com/trailofbits/publications/blob/master/reviews/RSKj.pdf](https://github.com/trailofbits/publications/blob/master/reviews/RSKj.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Astria%20Bridge%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Astria%20Bridge%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/eBridge%20AElf%20Bridge%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/eBridge%20AElf%20Bridge%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/eBridge%20Ethereum%20Bridge%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/eBridge%20Ethereum%20Bridge%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Facet%20Bridge%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Facet%20Bridge%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Mina%20Token%20Bridge%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Mina%20Token%20Bridge%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Mina%20Token%20Bridge%20EVM%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Mina%20Token%20Bridge%20EVM%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/N1%20Bridge%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/N1%20Bridge%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://rootstock.io/static/163f032d63d561e4c2fd7befe01d3e4e/rsk_white_paper-original.pdf](https://rootstock.io/static/163f032d63d561e4c2fd7befe01d3e4e/rsk_white_paper-original.pdf) - audit_report_link
- [https://rootstock.io/static/a79b27d4889409602174df4710102056/RS-whitepaper.pdf](https://rootstock.io/static/a79b27d4889409602174df4710102056/RS-whitepaper.pdf) - audit_report_link
- [https://rootstock.io/static/add903ce229a6f45a606cd78b028cf9e/RIF-whitepaper-V2.pdf](https://rootstock.io/static/add903ce229a6f45a606cd78b028cf9e/RIF-whitepaper-V2.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - rskaudit ginger 120717

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/rsk-bridge.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $1,019,417.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:46:48.000Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-720c81c2
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $1,019,417.
