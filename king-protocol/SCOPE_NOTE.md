# Agentic Brief: King Protocol

## Project Overview

- **Project:** King Protocol (king-protocol)
- **Website:** kingprotocol.org
- **Category:** Liquid Restaking
- **Chains (topography):** 1, 5000, 8453, 42161
- **Chains (DeFiLlama):** 1
- **TVL:** $1,347,789 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 6 audits; most recent 2026-05-03 (2 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** small_tvl_coverage_filler

King Protocol has 14 deployed contract rows in current topography. This brief renders the 13 rows present in scope-match run recovery-full-v6-post-filter-2026-05-05-303d7be6; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 13 contracts across 4 chains. 1 have TP audit coverage (7.7%); 12 do not.

Small-TVL coverage filler. Review only if the uncovered surface is technically interesting.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Swapper1InchV6 | router | router | audited (TP) | [0x747cac...232e](https://etherscan.io/address/0x747cac75776b3a0bba3de3e61ec12a6a7f52232e) |
| UniswapV3Pool | vault_pool | vault_pool | likely in scope | [0x29567a...1d66](https://etherscan.io/address/0x29567ae23d65225870c5bd738a6debe7ac5a1d66) |
| UUPSProxy | proxy | proxy | likely in scope | [0x8f08b7...6040](https://etherscan.io/address/0x8f08b70456eb22f6109f57b8fafe862ed28e6040) |

### mantle (chain_id 5000)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | unmatched | [0x548c41...98ed](https://mantlescan.xyz/address/0x548c4116a97e0138f78000088ea3f155717b98ed) |
| KingOFTL2 | bridge | bridge | unmatched | [0x5a57eb...7ab0](https://mantlescan.xyz/address/0x5a57ebb2c25eb64f05ebb4e07d9de8b3b67a7ab0) |
| unnamed | unknown | unknown | unmatched | [0xe63ba6...e318](https://mantlescan.xyz/address/0xe63ba626494f88d5a269b435213f2e8803cce318) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| CurveTwocryptoOptimized | core | core | unmatched | [0x3253c8...0886](https://basescan.org/address/0x3253c8105e8e70ae6abaf2fd21c703d8729e0886) |
| KingOFTL2 | bridge | bridge | unmatched | [0x4d6a22...beab](https://basescan.org/address/0x4d6a22986acca58aa890fbb233f3b4563251beab) |
| Pool | vault_pool | vault_pool | likely in scope | [0xdc5f7c...15ac](https://basescan.org/address/0xdc5f7c7916c7792603fdc17f05f7929b423015ac) |
| UUPS | core | core | unmatched | [0xe22c24...bac0](https://basescan.org/address/0xe22c243c7559c667a1eb94b593369d192c5fbac0) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| KingOFTL2 | bridge | bridge | unmatched | [0xb57d20...127f](https://arbiscan.io/address/0xb57d208661adfa911a40ee5a0de6ee0f056d127f) |
| RamsesBeaconProxy | proxy | proxy | unmatched | [0x93e6e5...c942](https://arbiscan.io/address/0x93e6e571d04848de3ba31525fca36f1e4f7bc942) |
| UUPS | core | core | unmatched | [0x2e4124...e275](https://arbiscan.io/address/0x2e412435928efe43b156caa8f4b1068729fee275) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 4 proxies on 1, 5000, 8453, 42161. 4 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 2 distinct deployer addresses: 0x1841e5...903a, 0xf8a86e...421e, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 13 | 1 | 12 | 7.7% |
| **Total** | 13 | 1 | 12 | 7.7% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | NM 0314 EtherFi LRT 2 | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | NM 0390 LRT Square Strategies DRAFT | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 2 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/LRT2-protocol/lrt-square-sc/blob/master/audits/Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf](https://github.com/LRT2-protocol/lrt-square-sc/blob/master/audits/Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf) - audit_report_link
- [https://github.com/LRT2-protocol/lrt-square-sc/blob/master/audits/NM_0314_EtherFi_LRT_2.pdf](https://github.com/LRT2-protocol/lrt-square-sc/blob/master/audits/NM_0314_EtherFi_LRT_2.pdf) - audit_report_link
- [https://github.com/LRT2-protocol/lrt-square-sc/blob/master/audits/NM_0390_LRT_Square_Strategies_DRAFT.pdf](https://github.com/LRT2-protocol/lrt-square-sc/blob/master/audits/NM_0390_LRT_Square_Strategies_DRAFT.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.11.29%20-%20Final%20-%20Bond%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.11.29%20-%20Final%20-%20Bond%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.04.04%20-%20Final%20-%20Bond%20Protocol%20Update%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.04.04%20-%20Final%20-%20Bond%20Protocol%20Update%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.05.25%20-%20Final%20-%20Eco%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.05.25%20-%20Final%20-%20Eco%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.06.12%20-%20Final%20-%20Unitas%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.06.12%20-%20Final%20-%20Unitas%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.20%20-%20Final%20-%20Zap%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.20%20-%20Final%20-%20Zap%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.28%20-%20Final%20-%20vVv%20Vesting%20%26%20Staking%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.28%20-%20Final%20-%20vVv%20Vesting%20%26%20Staking%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.04.26%20-%20Final%20-%20TITLES%20Publishing%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.04.26%20-%20Final%20-%20TITLES%20Publishing%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.05.04%20-%20Final%20-%20Exactly%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.05.04%20-%20Final%20-%20Exactly%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.05.20%20-%20Final%20-%20Gamma%20-%20Locked%20Staking%20Contract%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.05.20%20-%20Final%20-%20Gamma%20-%20Locked%20Staking%20Contract%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.06.23%20-%20Final%20-%20Andromeda%20%E2%80%93%20Validator%20Staking%20ADO%20and%20Vesting%20ADO%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.06.23%20-%20Final%20-%20Andromeda%20%E2%80%93%20Validator%20Staking%20ADO%20and%20Vesting%20ADO%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.07.25%20-%20Final%20-%20Exactly%20Protocol%20Update%20-%20Staking%20Contract%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.07.25%20-%20Final%20-%20Exactly%20Protocol%20Update%20-%20Staking%20Contract%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.08.03%20-%20Final%20-%20Kwenta%20Staking%20Rewards%20Upgrade%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.08.03%20-%20Final%20-%20Kwenta%20Staking%20Rewards%20Upgrade%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.08.29%20-%20Final%20-%20Rumpel%20Point%20Tokenization%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.08.29%20-%20Final%20-%20Rumpel%20Point%20Tokenization%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.09.20%20-%20Final%20-%20Boost%20Core%20Incentive%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.09.20%20-%20Final%20-%20Boost%20Core%20Incentive%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.03.10%20-%20Final%20-%20Symmio%2C%20Staking%20and%20Vesting%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.03.10%20-%20Final%20-%20Symmio%2C%20Staking%20and%20Vesting%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.06.05%20-%20Final%20-%20Seamless%20Protocol%20Collaborative%20Audit%20Report%201749131188.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.06.05%20-%20Final%20-%20Seamless%20Protocol%20Collaborative%20Audit%20Report%201749131188.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.08.24%20-%20Final%20-%20Neutrl%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.08.24%20-%20Final%20-%20Neutrl%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Hook%20Protocol%20Coverage%20Agreement.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Hook%20Protocol%20Coverage%20Agreement.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/origin/Sigma_Prime_Origin_Protocol_Validator_Consolidations_Security_Assessment_Report_v2_0.pdf](https://github.com/sigp/public-audits/blob/master/reports/origin/Sigma_Prime_Origin_Protocol_Validator_Consolidations_Security_Assessment_Report_v2_0.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/protocol-guild/Sigma_Prime_Protocol_Guild_Agora_Token_Security_Assessment_Report_v2_1.pdf](https://github.com/sigp/public-audits/blob/master/reports/protocol-guild/Sigma_Prime_Protocol_Guild_Agora_Token_Security_Assessment_Report_v2_1.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/recall/Sigma_Prime_Recall_Staking_Security_Assessment_Report_v2_0.pdf](https://github.com/sigp/public-audits/blob/master/reports/recall/Sigma_Prime_Recall_Staking_Security_Assessment_Report_v2_0.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/content/slides/Thinking_Through_Economic_Security.pdf](https://github.com/spearbit/portfolio/blob/master/content/slides/Thinking_Through_Economic_Security.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/pdfs/Beethoven-Sonic-Staking-Spearbit-Security-Review-December-2024.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Beethoven-Sonic-Staking-Spearbit-Security-Review-December-2024.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/pdfs/Overprotocol-Spearbit-Security-Review-June-2024.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Overprotocol-Spearbit-Security-Review-June-2024.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/pdfs/Overprotocol-Spearbit-vCISO-May-2024.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Overprotocol-Spearbit-vCISO-May-2024.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/presentations/Cyber%20Grand%20Challenge/cgcempirehacking_wide.pdf](https://github.com/trailofbits/publications/blob/master/presentations/Cyber%20Grand%20Challenge/cgcempirehacking_wide.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/presentations/Repeatable%20Benchmarking%3A%20An%20Exploration%20of%20OpenSearch%20vs%20Elasticsearch/Repeatable%20Benchmarking%3A%20An%20Exploration%20of%20OpenSearch%20vs%20Elasticsearch.pdf](https://github.com/trailofbits/publications/blob/master/presentations/Repeatable%20Benchmarking%3A%20An%20Exploration%20of%20OpenSearch%20vs%20Elasticsearch/Repeatable%20Benchmarking%3A%20An%20Exploration%20of%20OpenSearch%20vs%20Elasticsearch.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/presentations/Slither's%20Model%20Context%20Protocol%3A%20Giving%20LLMs%20Ground%20Truth%20from%20Static%20Analysis/Slither's%20Model%20Context%20Protocol%3A%20Giving%20LLMs%20Ground%20Truth%20from%20Static%20Analysis.pdf](https://github.com/trailofbits/publications/blob/master/presentations/Slither's%20Model%20Context%20Protocol%3A%20Giving%20LLMs%20Ground%20Truth%20from%20Static%20Analysis/Slither's%20Model%20Context%20Protocol%3A%20Giving%20LLMs%20Ground%20Truth%20from%20Static%20Analysis.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/presentations/The%20Treachery%20of%20Files/The%20Treachery%20of%20Files%20Empire%20Hacking%202019.pdf](https://github.com/trailofbits/publications/blob/master/presentations/The%20Treachery%20of%20Files/The%20Treachery%20of%20Files%20Empire%20Hacking%202019.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/presentations/Write%20Better%20Smart%20Contracts%20By%20Checking%20Them%20With%20Slither's%20Python%20API/Write%20Better%20Smart%20Contracts%20By%20Checking%20Them%20With%20Slither's%20Python%20API.pdf](https://github.com/trailofbits/publications/blob/master/presentations/Write%20Better%20Smart%20Contracts%20By%20Checking%20Them%20With%20Slither's%20Python%20API/Write%20Better%20Smart%20Contracts%20By%20Checking%20Them%20With%20Slither's%20Python%20API.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reports/OpenSearch-Benchmarking.pdf](https://github.com/trailofbits/publications/blob/master/reports/OpenSearch-Benchmarking.pdf) - audit_report_link
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
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-01-beethovenx-sonicstaking-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-01-beethovenx-sonicstaking-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-01-parabollabs-protocolcontractsupdates-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-01-parabollabs-protocolcontractsupdates-securityreview.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - NM 0314 EtherFi LRT 2
- unknown - discovery-ingest-placeholder - NM 0390 LRT Square Strategies DRAFT

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/king-protocol.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $380,662.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:46:13.480Z
- **Scope-match run_id:** recovery-full-v6-post-filter-2026-05-05-303d7be6
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $380,662.
