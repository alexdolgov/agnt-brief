# Agentic Brief: Blast Bridge

## Project Overview

- **Project:** Blast Bridge (blast-l2)
- **Website:** blast.io
- **Category:** Canonical Bridge
- **Chains (topography):** 1
- **Chains (DeFiLlama):** 1
- **TVL:** $72,731,347 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 7 audits; most recent 2026-04-30 (4 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Blast Bridge has 5 deployed contract rows in current topography. This brief renders the 5 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-bec82ebc; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 5 contracts across 1 chains. 2 have TP audit coverage (40.0%); 3 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | likely in scope | [0x5f6ae0...a47d](https://etherscan.io/address/0x5f6ae08b8aeb7078cf2f96afb089d7c9f51da47d) |
| ETHYieldManager | strategy | strategy | audited (TP) | [0xf2f614...9525](https://etherscan.io/address/0xf2f6148327b3020610fca26e094d9a5cc4689525) |
| L1ChugSplashProxy | proxy | proxy | audited (TP) | [0x98078d...c8fe](https://etherscan.io/address/0x98078db053902644191f93988341e31289e1c8fe) |
| L1ChugSplashProxy | proxy | proxy | unmatched | [0xa23028...8438](https://etherscan.io/address/0xa230285d5683c74935ad14c446e137c8c8828438) |
| LaunchBridge | bridge | bridge | likely in scope | [0x0bd88b...e561](https://etherscan.io/address/0x0bd88b59d580549285f0a207db5f06bf24a8e561) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 2 proxies on 1. 1 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0x52c31c...18b7, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 5 | 2 | 3 | 40.0% |
| **Total** | 5 | 2 | 3 | 40.0% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | Spearbit | report blast contracts review draft | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/blast-io/blast/blob/master/blast-geth/docs/audits/2017-04-25_Geth-audit_Truesec.pdf](https://github.com/blast-io/blast/blob/master/blast-geth/docs/audits/2017-04-25_Geth-audit_Truesec.pdf) - audit_report_link
- [https://github.com/blast-io/blast/blob/master/blast-geth/docs/audits/2018-09-14_Clef-audit_NCC.pdf](https://github.com/blast-io/blast/blob/master/blast-geth/docs/audits/2018-09-14_Clef-audit_NCC.pdf) - audit_report_link
- [https://github.com/blast-io/blast/blob/master/blast-geth/docs/audits/2019-10-15_Discv5_audit_LeastAuthority.pdf](https://github.com/blast-io/blast/blob/master/blast-geth/docs/audits/2019-10-15_Discv5_audit_LeastAuthority.pdf) - audit_report_link
- [https://github.com/blast-io/blast/blob/master/blast-geth/docs/audits/2020-01-24_DiscV5_audit_Cure53.pdf](https://github.com/blast-io/blast/blob/master/blast-geth/docs/audits/2020-01-24_DiscV5_audit_Cure53.pdf) - audit_report_link
- [https://github.com/blast-io/blast/blob/master/blast-optimism/packages/contracts-bedrock/lib/openzeppelin-contracts-upgradeable/audits/2017-03.md](https://github.com/blast-io/blast/blob/master/blast-optimism/packages/contracts-bedrock/lib/openzeppelin-contracts-upgradeable/audits/2017-03.md) - audit_report_link
- [https://github.com/blast-io/blast/blob/master/blast-optimism/packages/contracts-bedrock/lib/openzeppelin-contracts-upgradeable/audits/2018-10.pdf](https://github.com/blast-io/blast/blob/master/blast-optimism/packages/contracts-bedrock/lib/openzeppelin-contracts-upgradeable/audits/2018-10.pdf) - audit_report_link
- [https://github.com/blast-io/blast/blob/master/blast-optimism/packages/contracts-bedrock/lib/openzeppelin-contracts-upgradeable/audits/2022-10-Checkpoints.pdf](https://github.com/blast-io/blast/blob/master/blast-optimism/packages/contracts-bedrock/lib/openzeppelin-contracts-upgradeable/audits/2022-10-Checkpoints.pdf) - audit_report_link
- [https://github.com/blast-io/blast/blob/master/blast-optimism/packages/contracts-bedrock/lib/openzeppelin-contracts-upgradeable/audits/2022-10-ERC4626.pdf](https://github.com/blast-io/blast/blob/master/blast-optimism/packages/contracts-bedrock/lib/openzeppelin-contracts-upgradeable/audits/2022-10-ERC4626.pdf) - audit_report_link
- [https://github.com/blast-io/blast/blob/master/blast-optimism/packages/contracts-bedrock/lib/openzeppelin-contracts-upgradeable/audits/2023-05-v4.9.pdf](https://github.com/blast-io/blast/blob/master/blast-optimism/packages/contracts-bedrock/lib/openzeppelin-contracts-upgradeable/audits/2023-05-v4.9.pdf) - audit_report_link
- [https://github.com/blast-io/blast/blob/master/blast-optimism/packages/contracts-bedrock/lib/openzeppelin-contracts/audit/2017-03.md](https://github.com/blast-io/blast/blob/master/blast-optimism/packages/contracts-bedrock/lib/openzeppelin-contracts/audit/2017-03.md) - audit_report_link
- [https://github.com/blast-io/blast/blob/master/blast-optimism/packages/contracts-bedrock/lib/openzeppelin-contracts/audit/2018-10.pdf](https://github.com/blast-io/blast/blob/master/blast-optimism/packages/contracts-bedrock/lib/openzeppelin-contracts/audit/2018-10.pdf) - audit_report_link
- [https://github.com/blast-io/blast/blob/master/blast-optimism/packages/contracts-bedrock/lib/solmate/audits/v6-Fixed-Point-Solutions.pdf](https://github.com/blast-io/blast/blob/master/blast-optimism/packages/contracts-bedrock/lib/solmate/audits/v6-Fixed-Point-Solutions.pdf) - audit_report_link
- [https://github.com/ProjectOpenSea/seaport/blob/main/docs/Deployment.md](https://github.com/ProjectOpenSea/seaport/blob/main/docs/Deployment.md) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/pdfs/report-blast-contracts-review-draft.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/report-blast-contracts-review-draft.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/pdfs/report-blast-node-review-draft.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/report-blast-node-review-draft.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-01-metalayerblast-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-01-metalayerblast-securityreview.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - Spearbit - report blast contracts review draft

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/blast-l2.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $52,000,298.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:36:07.174Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-bec82ebc
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $52,000,298.
