# Agentic Brief: Gearbox

## Project Overview

- **Project:** Gearbox (gearbox)
- **Website:** gearbox.finance
- **Category:** Lending
- **Chains (topography):** 1, 10, 146, 42161
- **Chains (DeFiLlama):** 1, 10, 56, 146, 42161
- **TVL:** $151,805,195 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 42 audits; most recent 2026-05-01 (4 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Gearbox has 13 deployed contract rows in current topography. This brief renders the 13 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-dd325e11; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 13 contracts across 4 chains. 4 have TP audit coverage (30.8%); 9 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AddressProviderV3 | core | core | audited (TP) | [0x9ea7b0...321d](https://etherscan.io/address/0x9ea7b04da02a5373317d745c1571c84aad03321d) |
| DefillamaCompressor | core | core | unmatched | [0x81cb9e...897a](https://etherscan.io/address/0x81cb9ea2d59414ab13ec0567efb09767ddbe897a) |
| MarketConfiguratorLegacy | vault_pool | vault_pool | unmatched | [0x354fe9...8a06](https://etherscan.io/address/0x354fe9f450f60b8547f88be042e4a45b46128a06) |
| MarketConfiguratorLegacy | vault_pool | vault_pool | unmatched | [0x4d427d...680a](https://etherscan.io/address/0x4d427d418342d8ce89a7634c3a402851978b680a) |
| unnamed | unknown | unknown | unmatched | [0x4b27b2...c41b](https://etherscan.io/address/0x4b27b296273b72d7c7bfee1ace93dc081467c41b) |
| unnamed | unknown | unknown | unmatched | [0x8ffdd1...d076](https://etherscan.io/address/0x8ffdd1f1433674516f83645a768e8900a2a5d076) |

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AddressProviderV3 | core | core | audited (TP) | [0x3761ca...6726](https://optimistic.etherscan.io/address/0x3761ca4bfacfcffc1b8034e69f19116dd6756726) |
| unnamed | unknown | unknown | unmatched | [0x2a1596...2de5](https://optimistic.etherscan.io/address/0x2a15969ce5320868eb609680751cf8896dd92de5) |

### sonic (chain_id 146)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AddressProviderV3 | core | core | audited (TP) | [0x4b27b2...c41b](https://sonicscan.org/address/0x4b27b296273b72d7c7bfee1ace93dc081467c41b) |
| DefillamaCompressor | core | core | unmatched | [0x81cb9e...897a](https://sonicscan.org/address/0x81cb9ea2d59414ab13ec0567efb09767ddbe897a) |
| unnamed | unknown | unknown | unmatched | [0x8ffdd1...d076](https://sonicscan.org/address/0x8ffdd1f1433674516f83645a768e8900a2a5d076) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AddressProviderV3 | core | core | audited (TP) | [0x7d04ec...f2af](https://arbiscan.io/address/0x7d04ecdb892ae074f03b5d0aba03796f90f3f2af) |
| unnamed | unknown | unknown | unmatched | [0x010238...fe7e](https://arbiscan.io/address/0x01023850b360b88de0d0f84015bbba1eba57fe7e) |

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
| No provenance | 13 | 4 | 9 | 30.8% |
| **Total** | 13 | 4 | 9 | 30.8% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | 2022%20Aug%20 %20SigmaPrime Gearbox Smart Contract Security Assessment Report v2 | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://assets.ctfassets.net/t3wqy70tc3bv/2tyR5x4zf9KL4fKXIEolh4/b5f8abaed3330897555a53904c865b82/CCProtocol-_Audit_Report.pdf](https://assets.ctfassets.net/t3wqy70tc3bv/2tyR5x4zf9KL4fKXIEolh4/b5f8abaed3330897555a53904c865b82/CCProtocol-_Audit_Report.pdf) - audit_report_link
- [https://assets.ctfassets.net/t3wqy70tc3bv/3AKcQn3fFAih0wIRLy8aTn/9823cf3d359b06ca4d1039270e3c1895/Layer3.xyz-_Audit_Report.pdf](https://assets.ctfassets.net/t3wqy70tc3bv/3AKcQn3fFAih0wIRLy8aTn/9823cf3d359b06ca4d1039270e3c1895/Layer3.xyz-_Audit_Report.pdf) - audit_report_link
- [https://assets.ctfassets.net/t3wqy70tc3bv/4EpPMbZkdqb9kf9g8Ru6A3/8ca3d0cb425da4c19f2d62ec4fa81335/Helios_Finance_-_Immunefi_Audit_Report.pdf](https://assets.ctfassets.net/t3wqy70tc3bv/4EpPMbZkdqb9kf9g8Ru6A3/8ca3d0cb425da4c19f2d62ec4fa81335/Helios_Finance_-_Immunefi_Audit_Report.pdf) - audit_report_link
- [https://assets.ctfassets.net/t3wqy70tc3bv/4toR7T1t8N33WkfVsCY21q/30280b9fd5451fee3026db8b63d083c7/Halogen_Audit_1-_Immunefi_Audit_Report.pdf](https://assets.ctfassets.net/t3wqy70tc3bv/4toR7T1t8N33WkfVsCY21q/30280b9fd5451fee3026db8b63d083c7/Halogen_Audit_1-_Immunefi_Audit_Report.pdf) - audit_report_link
- [https://assets.ctfassets.net/t3wqy70tc3bv/62rrT36yP4wJddWRtoIr91/d0635eb8e19f72c0c2ad7442c7eff348/Hoenn_-_Immunefi_Audit_Report.pdf](https://assets.ctfassets.net/t3wqy70tc3bv/62rrT36yP4wJddWRtoIr91/d0635eb8e19f72c0c2ad7442c7eff348/Hoenn_-_Immunefi_Audit_Report.pdf) - audit_report_link
- [https://assets.ctfassets.net/t3wqy70tc3bv/66zAnfsbE2s64LkOT7TXQl/7a70818409330611480ff1fd2ad9bdf9/Plume_-_Immunefi_Audit_Report.pdf](https://assets.ctfassets.net/t3wqy70tc3bv/66zAnfsbE2s64LkOT7TXQl/7a70818409330611480ff1fd2ad9bdf9/Plume_-_Immunefi_Audit_Report.pdf) - audit_report_link
- [https://assets.ctfassets.net/t3wqy70tc3bv/7rUSLDnjntD1s5u575GXh2/e091dd3a29a74e9337a69b5896b7a453/Oak_Network-_Audit_Report_-_PaymentTreasury.pdf](https://assets.ctfassets.net/t3wqy70tc3bv/7rUSLDnjntD1s5u575GXh2/e091dd3a29a74e9337a69b5896b7a453/Oak_Network-_Audit_Report_-_PaymentTreasury.pdf) - audit_report_link
- [https://assets.ctfassets.net/t3wqy70tc3bv/Di2bTLfPyec7kHGX3bV0i/0ff2640d6b40c1094d77d4ed7533a230/Plaza_Finance_-_Immunefi_Audit_Report.pdf](https://assets.ctfassets.net/t3wqy70tc3bv/Di2bTLfPyec7kHGX3bV0i/0ff2640d6b40c1094d77d4ed7533a230/Plaza_Finance_-_Immunefi_Audit_Report.pdf) - audit_report_link
- [https://bugs.immunefi.com/dashboard/new-submission](https://bugs.immunefi.com/dashboard/new-submission) - audit_report_link
- [https://bugs.immunefi.com/signup](https://bugs.immunefi.com/signup) - audit_report_link
- [https://d3i212mgfwnkvq6l.public.blob.vercel-storage.com/HalalFi%20Audit%20Report.pdf](https://d3i212mgfwnkvq6l.public.blob.vercel-storage.com/HalalFi%20Audit%20Report.pdf) - audit_report_link
- [https://docs.gearbox.finance](https://docs.gearbox.finance) - audit_report_link
- [https://docs.gearbox.finance/about-gearbox/economics-and-risk/audits-and-bug-bounty](https://docs.gearbox.finance/about-gearbox/economics-and-risk/audits-and-bug-bounty) - audit_report_link
- [https://docs.gearbox.finance/about-gearbox/economics-and-risk/audits-and-bug-bounty.md](https://docs.gearbox.finance/about-gearbox/economics-and-risk/audits-and-bug-bounty.md) - audit_report_link
- [https://docs.gearbox.finance/about-gearbox/governance-and-operations/protocol-audits](https://docs.gearbox.finance/about-gearbox/governance-and-operations/protocol-audits) - audit_report_link
- [https://docs.gearbox.finance/about-gearbox/governance-and-operations/protocol-audits.md](https://docs.gearbox.finance/about-gearbox/governance-and-operations/protocol-audits.md) - audit_report_link
- [https://docs.gearbox.finance/resources/audits-and-bug-bounty](https://docs.gearbox.finance/resources/audits-and-bug-bounty) - audit_report_link
- [https://docs.gearbox.finance/resources/audits-and-bug-bounty.md](https://docs.gearbox.finance/resources/audits-and-bug-bounty.md) - audit_report_link
- [https://docs.gearbox.finance/risk-and-security/audits-bug-bounty](https://docs.gearbox.finance/risk-and-security/audits-bug-bounty) - audit_report_link
- [https://drive.google.com/drive/folders/1vNJ75igTcw-4pWzGwjT36cCrthuHVSg3](https://drive.google.com/drive/folders/1vNJ75igTcw-4pWzGwjT36cCrthuHVSg3) - audit_report_link
- [https://github.com/de-snake/docs-knowledge/blob/new-docs-dev-1/concepts/README.md](https://github.com/de-snake/docs-knowledge/blob/new-docs-dev-1/concepts/README.md) - audit_report_link
- [https://github.com/de-snake/docs-knowledge/blob/new-docs-dev-1/new-docs-about/economics-and-risk/insurance-and-solvency-reserves.md](https://github.com/de-snake/docs-knowledge/blob/new-docs-dev-1/new-docs-about/economics-and-risk/insurance-and-solvency-reserves.md) - audit_report_link
- [https://github.com/de-snake/docs-knowledge/blob/new-docs-dev-1/new-docs-about/economics-and-risk/quota-controls.md](https://github.com/de-snake/docs-knowledge/blob/new-docs-dev-1/new-docs-about/economics-and-risk/quota-controls.md) - audit_report_link
- [https://github.com/Gearbox-protocol/permissionless/blob/master/specification.md](https://github.com/Gearbox-protocol/permissionless/blob/master/specification.md) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/.gitignore](https://github.com/Gearbox-protocol/security/blob/main/.gitignore) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2021%20Dec%20-%20ChainSecurity_Gearbox_audit.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2021%20Dec%20-%20ChainSecurity_Gearbox_audit.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2021%20Dec%20-%20ConsensysDiligence%20_Fuzzing_report.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2021%20Dec%20-%20ConsensysDiligence%20_Fuzzing_report.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2021%20Dec%20-%20MixBytes_security_audit_report.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2021%20Dec%20-%20MixBytes_security_audit_report.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2021%20May%20-%20Peckshield-03.05.2021.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2021%20May%20-%20Peckshield-03.05.2021.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2021%20Sep%20-%20Peckshield-10.08.2021.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2021%20Sep%20-%20Peckshield-10.08.2021.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2022%20Aug%20-%20SigmaPrime_Gearbox_Smart_Contract_Security_Assessment_Report_v2.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2022%20Aug%20-%20SigmaPrime_Gearbox_Smart_Contract_Security_Assessment_Report_v2.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2022%20Oct%20-%20ChainSecurity%20report.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2022%20Oct%20-%20ChainSecurity%20report.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2022%20Sep%20-%20Consensys%20Diligence.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2022%20Sep%20-%20Consensys%20Diligence.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Apr%20-%20ChainSecurity_Gearbox_V2.1.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Apr%20-%20ChainSecurity_Gearbox_V2.1.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Aug%20-%20ChainSecurity_Gearbox_V2.1.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Aug%20-%20ChainSecurity_Gearbox_V2.1.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Dec%20-%20ABDK_Gearbox_Core_V3.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Dec%20-%20ABDK_Gearbox_Core_V3.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Dec%20-%20ABDK_Gearbox_Oracles_V3.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Dec%20-%20ABDK_Gearbox_Oracles_V3.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Dec%20-%20ChainSecurity_Gearbox_Governance.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Dec%20-%20ChainSecurity_Gearbox_Governance.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Dec%20-%20ChainSecurity_Gearbox_Integrations_V3.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Dec%20-%20ChainSecurity_Gearbox_Integrations_V3.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Dec%20-%20Decurity_Gearbox_Governance.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Dec%20-%20Decurity_Gearbox_Governance.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Oct%20-%20ChainSecurity_Gearbox_Protocol_Partial_Migration_to_V3_audit.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Oct%20-%20ChainSecurity_Gearbox_Protocol_Partial_Migration_to_V3_audit.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Sep%20-%20ChainSecurity_Gearbox_V2.1.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2023%20Sep%20-%20ChainSecurity_Gearbox_V2.1.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2024-04-mixbytes-bots-integrations.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2024-04-mixbytes-bots-integrations.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2024-08-decurity-pendle-mellow.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2024-08-decurity-pendle-mellow.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2024-10-chainsecurity-integrations.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2024-10-chainsecurity-integrations.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2024-10-decurity-sky-pyth.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2024-10-decurity-sky-pyth.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2024%20Aug%20-%20ChainSecurity_Gearbox_Oracles_V3.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2024%20Aug%20-%20ChainSecurity_Gearbox_Oracles_V3.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2024%20Dec%20-%20Watchpug_Pendle_Oracle.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2024%20Dec%20-%20Watchpug_Pendle_Oracle.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2024%20Mar%20-%20ChainSecurity_Gearbox_Core_V3.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2024%20Mar%20-%20ChainSecurity_Gearbox_Core_V3.pdf) - audit_report_link
- [https://github.com/Gearbox-protocol/security/blob/main/audits/2025-02-decurity-balancer-v3.pdf](https://github.com/Gearbox-protocol/security/blob/main/audits/2025-02-decurity-balancer-v3.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - 2022%20Aug%20 %20SigmaPrime Gearbox Smart Contract Security Assessment Report v2

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/gearbox.json
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

- **Generated at:** 2026-05-05T20:37:53.943Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-dd325e11
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $0.
