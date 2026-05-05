# Agentic Brief: iAero Protocol

## Project Overview

- **Project:** iAero Protocol (iaero-protocol)
- **Website:** iaero.finance
- **Category:** Liquid Staking
- **Chains (topography):** 8453
- **Chains (DeFiLlama):** 8453
- **TVL:** $2,016,137 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 6 audits; most recent 2026-05-03 (2 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** small_tvl_coverage_filler

iAero Protocol has 6 deployed contract rows in current topography. This brief renders the 6 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-dd325e11; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 6 contracts across 1 chains. 2 have TP audit coverage (33.3%); 4 do not.

Small-TVL coverage filler. Review only if the uncovered surface is technically interesting.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Aero | core | core | unmatched | [0x940181...8631](https://basescan.org/address/0x940181a94a35a4569e4529a3cdfb74e38fd98631) |
| iAEROToken | token | token | audited (TP) | [0x81034f...a1dc](https://basescan.org/address/0x81034fb34009115f215f5d5f564aac9ffa46a1dc) |
| PermalockVault_V5 | vault_pool | vault_pool | audited (TP) | [0x180dab...7909](https://basescan.org/address/0x180dab53968e599dd43cf431e27cb01aa5c37909) |
| Pool | vault_pool | vault_pool | likely in scope | [0x08d49d...affd](https://basescan.org/address/0x08d49da370ecffbc4c6fdd2ae82b2d6ae238affd) |
| VotingEscrow | governance | governance | likely in scope | [0xebf418...e6b4](https://basescan.org/address/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4) |
| unnamed | unknown | unknown | unmatched | [0x796152...cdbd](https://basescan.org/address/0x7961523a81cc89beb33f2f140255213a6433cdbd) |

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
| No provenance | 6 | 2 | 4 | 33.3% |
| **Total** | 6 | 2 | 4 | 33.3% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | docs.iaero.finance/technical-documentation/audit-iaero-and-liq | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | docs.iaero.finance/technical-documentation/audit-permalockvault_v5 | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 2 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://docs.iaero.finance/technical-documentation/audit-epochstakingdistributor-stiaero](https://docs.iaero.finance/technical-documentation/audit-epochstakingdistributor-stiaero) - audit_report_link
- [https://docs.iaero.finance/technical-documentation/audit-epochstakingdistributor-stiaero.md](https://docs.iaero.finance/technical-documentation/audit-epochstakingdistributor-stiaero.md) - audit_report_link
- [https://docs.iaero.finance/technical-documentation/audit-iaero-and-liq](https://docs.iaero.finance/technical-documentation/audit-iaero-and-liq) - audit_report_link
- [https://docs.iaero.finance/technical-documentation/audit-iaero-and-liq.md](https://docs.iaero.finance/technical-documentation/audit-iaero-and-liq.md) - audit_report_link
- [https://docs.iaero.finance/technical-documentation/audit-liqstakingdistributor](https://docs.iaero.finance/technical-documentation/audit-liqstakingdistributor) - audit_report_link
- [https://docs.iaero.finance/technical-documentation/audit-liqstakingdistributor.md](https://docs.iaero.finance/technical-documentation/audit-liqstakingdistributor.md) - audit_report_link
- [https://docs.iaero.finance/technical-documentation/audit-permalockvault_v5](https://docs.iaero.finance/technical-documentation/audit-permalockvault_v5) - audit_report_link
- [https://docs.iaero.finance/technical-documentation/audit-permalockvault_v5.md](https://docs.iaero.finance/technical-documentation/audit-permalockvault_v5.md) - audit_report_link
- [https://docs.iaero.finance/technical-documentation/audit-rewardsharvester](https://docs.iaero.finance/technical-documentation/audit-rewardsharvester) - audit_report_link
- [https://docs.iaero.finance/technical-documentation/audit-rewardsharvester.md](https://docs.iaero.finance/technical-documentation/audit-rewardsharvester.md) - audit_report_link
- [https://docs.iaero.finance/technical-documentation/audit-votingmanageroptimised](https://docs.iaero.finance/technical-documentation/audit-votingmanageroptimised) - audit_report_link
- [https://docs.iaero.finance/technical-documentation/audit-votingmanageroptimised.md](https://docs.iaero.finance/technical-documentation/audit-votingmanageroptimised.md) - audit_report_link
- [https://github.com/iaeroProtocol/iaero/blob/main/getting-started/how-it-works.md](https://github.com/iaeroProtocol/iaero/blob/main/getting-started/how-it-works.md) - audit_report_link
- [https://github.com/iaeroProtocol/iaero/blob/main/getting-started/tokenomics/liq-token.md](https://github.com/iaeroProtocol/iaero/blob/main/getting-started/tokenomics/liq-token.md) - audit_report_link
- [https://github.com/iaeroProtocol/iaero/blob/main/technical/contracts.md](https://github.com/iaeroProtocol/iaero/blob/main/technical/contracts.md) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.11.29%20-%20Final%20-%20Bond%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.11.29%20-%20Final%20-%20Bond%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.04.04%20-%20Final%20-%20Bond%20Protocol%20Update%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.04.04%20-%20Final%20-%20Bond%20Protocol%20Update%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.05.25%20-%20Final%20-%20Eco%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.05.25%20-%20Final%20-%20Eco%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.06.12%20-%20Final%20-%20Unitas%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.06.12%20-%20Final%20-%20Unitas%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.20%20-%20Final%20-%20Zap%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.20%20-%20Final%20-%20Zap%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.04.26%20-%20Final%20-%20TITLES%20Publishing%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.04.26%20-%20Final%20-%20TITLES%20Publishing%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.05.04%20-%20Final%20-%20Exactly%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.05.04%20-%20Final%20-%20Exactly%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.07.25%20-%20Final%20-%20Exactly%20Protocol%20Update%20-%20Staking%20Contract%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.07.25%20-%20Final%20-%20Exactly%20Protocol%20Update%20-%20Staking%20Contract%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.08.29%20-%20Final%20-%20Rumpel%20Point%20Tokenization%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.08.29%20-%20Final%20-%20Rumpel%20Point%20Tokenization%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.09.20%20-%20Final%20-%20Boost%20Core%20Incentive%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.09.20%20-%20Final%20-%20Boost%20Core%20Incentive%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.06.05%20-%20Final%20-%20Seamless%20Protocol%20Collaborative%20Audit%20Report%201749131188.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.06.05%20-%20Final%20-%20Seamless%20Protocol%20Collaborative%20Audit%20Report%201749131188.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.08.24%20-%20Final%20-%20Neutrl%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.08.24%20-%20Final%20-%20Neutrl%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Hook%20Protocol%20Coverage%20Agreement.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Hook%20Protocol%20Coverage%20Agreement.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/origin/Sigma_Prime_Origin_Protocol_Validator_Consolidations_Security_Assessment_Report_v2_0.pdf](https://github.com/sigp/public-audits/blob/master/reports/origin/Sigma_Prime_Origin_Protocol_Validator_Consolidations_Security_Assessment_Report_v2_0.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/protocol-guild/Sigma_Prime_Protocol_Guild_Agora_Token_Security_Assessment_Report_v2_1.pdf](https://github.com/sigp/public-audits/blob/master/reports/protocol-guild/Sigma_Prime_Protocol_Guild_Agora_Token_Security_Assessment_Report_v2_1.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/pdfs/Overprotocol-Spearbit-Security-Review-June-2024.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Overprotocol-Spearbit-Security-Review-June-2024.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/pdfs/Overprotocol-Spearbit-vCISO-May-2024.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Overprotocol-Spearbit-vCISO-May-2024.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/presentations/Slither's%20Model%20Context%20Protocol%3A%20Giving%20LLMs%20Ground%20Truth%20from%20Static%20Analysis/Slither's%20Model%20Context%20Protocol%3A%20Giving%20LLMs%20Ground%20Truth%20from%20Static%20Analysis.pdf](https://github.com/trailofbits/publications/blob/master/presentations/Slither's%20Model%20Context%20Protocol%3A%20Giving%20LLMs%20Ground%20Truth%20from%20Static%20Analysis/Slither's%20Model%20Context%20Protocol%3A%20Giving%20LLMs%20Ground%20Truth%20from%20Static%20Analysis.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/0x-protocol.pdf](https://github.com/trailofbits/publications/blob/master/reviews/0x-protocol.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-08-reserve-protocol-fixreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-08-reserve-protocol-fixreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-08-reserve-protocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-08-reserve-protocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-09-incrementprotocol-fixreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-09-incrementprotocol-fixreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-09-incrementprotocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-09-incrementprotocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-09-maplefinance-mapleprotocolv2-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-09-maplefinance-mapleprotocolv2-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-12-driftlabs-driftprotocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-12-driftlabs-driftprotocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2023-8-offchain-challenge-protocol-V2-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-8-offchain-challenge-protocol-V2-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-03-aladdinfxprotocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-03-aladdinfxprotocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-05-parabollabs-protocolcontracts-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-05-parabollabs-protocolcontracts-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-06-lit-protocol-cait-sith-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-06-lit-protocol-cait-sith-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-08-discord-dave-protocol-designreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-08-discord-dave-protocol-designreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-08-elixir-technologies-ltd-elixir-protocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-08-elixir-technologies-ltd-elixir-protocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-09-discord-dave-protocol-codereview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-09-discord-dave-protocol-codereview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-01-parabollabs-protocolcontractsupdates-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-01-parabollabs-protocolcontractsupdates-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-05-caplabs-coveredagentprotocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-05-caplabs-coveredagentprotocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-05-fabriclabs-zipperprotocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-05-fabriclabs-zipperprotocol-securityreview.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - docs.iaero.finance/technical-documentation/audit-iaero-and-liq
- unknown - discovery-ingest-placeholder - docs.iaero.finance/technical-documentation/audit-permalockvault_v5

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/iaero-protocol.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $25,751.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:45:26.813Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-dd325e11
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $25,751.
