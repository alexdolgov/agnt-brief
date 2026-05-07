# Agentic Brief: 1inch

## Project Overview

- **Project:** 1inch (1inch)
- **Website:** 1inch.com
- **Category:** DEX Aggregator
- **Chains (topography):** 1, 10, 56, 137, 250, 8453, 42161, 43114, 59144, 1313161554
- **Chains (DeFiLlama):** 1, 56
- **TVL:** $12,394,011 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment 2025-08-13
- **Audit history:** 190 audits; most recent 2026-05-02 (2 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** mid_tvl_commercial_target

1inch has 59 deployed contract rows in current topography. This brief renders the 57 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment 2025-08-13 (265 days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 34 contracts across 10 chains. 10 have TP audit coverage (29.4%); 24 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

1 core-logic or audit-scope-extra contracts identified. Inclusion is provenance-mechanical per role_mapping_v1.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BoredApeYachtClub | core | creator=0xaba7161a… (shares=2); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1] | unmatched | [0xbc4ca0...f13d](https://etherscan.io/address/0xbc4ca0eda7647a8ab7c2061c2e118a18a936f13d) |

---

## Scope - Operational Periphery

5 operational contracts identified via deployer-neighborhood, GitHub-declared, or related provenance. 0 appear in past audit scopes; 5 do not.

This is the commercial wedge: contracts that scope-limited manual audits typically exclude are surfaced here as first-class audit targets.

### ethereum (chain_id 1)

| Contract / Address | Likely Role | Provenance Evidence | Audit Coverage |
|---|---|---|---|
| [0x075c42...ea85](https://etherscan.io/address/0x075c42cd233a1c723c0f18f6dd575c8d679fea85) | unknown | deployer_neighborhood_docs_listed - creator=0x9ceef06f… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [0x129925...17ad](https://etherscan.io/address/0x129925f72641a84053c148d7efab590cb9d217ad) | unknown | deployer_neighborhood_docs_listed - creator=0x9ceef06f… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [0x58e156...3f1a](https://etherscan.io/address/0x58e1566053b7d3e2d0da64d615614d765f913f1a) | unknown | deployer_neighborhood_docs_listed - creator=0x9ceef06f… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [0x5acc37...3e77](https://etherscan.io/address/0x5acc37f1003f8dba4cfcd5ea7873fefb412c3e77) | unknown | deployer_neighborhood_docs_listed - creator=0x9ceef06f… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [0xa2e955...0261](https://etherscan.io/address/0xa2e9556885df5ed2b6eea6f7ad43076ba8b00261) | unknown | deployer_neighborhood_docs_listed - creator=0x9ceef06f… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

No proxy or upgrade architecture detected.

---

## Scope - Integration Surface

9 integration-surface rows detected from third-party enrichment provenance.

| Integration Target | Our Contract | Chain | Trust Assumption |
|---|---|---|---|
| defillama_adapter | [MooniswapFactory](https://etherscan.io/address/0xbaf9a5d4b0052359326a6cdab54babaa3a3a9643) | ethereum | integration target not characterized; investigate |
| defillama_adapter | [TORN](https://etherscan.io/address/0x77777feddddffc19ff86db637967013e6c6a116c) | ethereum | integration target not characterized; investigate |
| defillama_adapter | [0x58730a...20cb](https://etherscan.io/address/0x58730ae0faa10d73b0cddb5e7b87c3594f7a20cb) | ethereum | integration target not characterized; investigate |
| defillama_adapter | [MooniswapFactory](https://bscscan.com/address/0xd41b24bba51fac0e4827b6f94c0d6ddeb183cd64) | bsc | integration target not characterized; investigate |
| defillama_adapter | [0x1b4018...8421](https://bscscan.com/address/0x1b40183efb4dd766f11bda7a7c3ad8982e998421) | bsc | integration target not characterized; investigate |
| defillama_adapter | [0x220b71...cdc6](https://bscscan.com/address/0x220b71671b649c03714da9c621285943f3cbcdc6) | bsc | integration target not characterized; investigate |
| defillama_adapter | [0x875773...d39e](https://bscscan.com/address/0x875773784af8135ea0ef43b5a374aad105c5d39e) | bsc | integration target not characterized; investigate |
| defillama_adapter | [0xbaf9a5...9643](https://bscscan.com/address/0xbaf9a5d4b0052359326a6cdab54babaa3a3a9643) | bsc | integration target not characterized; investigate |
| defillama_adapter | [0xbaf9a5...9643](https://polygonscan.com/address/0xbaf9a5d4b0052359326a6cdab54babaa3a3a9643) | polygon | integration target not characterized; investigate |

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| Core logic | 1 | 0 | 1 | 0.0% |
| Integration surface | 9 | 2 | 7 | 22.2% |
| No provenance | 19 | 8 | 11 | 42.1% |
| Operational periphery | 5 | 0 | 5 | 0.0% |
| **Total** | 34 | 10 | 24 | 29.4% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2022-11-04 | Hexens | 1inch FusionMode Hexens.1 | unspecified | direct | [report](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/1inch_FusionMode_Hexens.1.pdf) |
| unknown | Chainsulting | 02 Smart Contract Audit 1inch Mooniswap and Token Updated | unspecified | direct | not available |
| unknown | Hexens | 1inch Nov23 (Public) | unspecified | direct | [report](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/1inch_Nov23_(Public).pdf) |
| unknown | Decurity | The audit scope included the contracts in the following repositories: https://github.com/1inch/limit | unspecified | direct | [report](https://github.com/decurity/audits/blob/master/1inch/1inch-fusion-mode-audit-report-2.1.pdf) |
| unknown | CoinFabrik | 1inch%20Aggregation%20Router%20v4%20Audit Coinfabrik | unspecified | direct | not available |
| unknown | MixBytes | MixBytes%20 %201inch%20Liquidity%20Protocol%20Report | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 1 contracts covered (0.0%). Operational periphery: 0 of 5 covered (0.0%). Last audit 2 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://1inch.com/assets/1inch_com_privacy_policy.pdf](https://1inch.com/assets/1inch_com_privacy_policy.pdf) - audit_report_link
- [https://1inch.com/assets/1inch_com_terms_of_use.pdf](https://1inch.com/assets/1inch_com_terms_of_use.pdf) - audit_report_link
- [https://1inch.io/assets/1inch-security-white-paper.pdf](https://1inch.io/assets/1inch-security-white-paper.pdf) - audit_report_link
- [https://blog.openzeppelin.com/1inch-exchange-audit](https://blog.openzeppelin.com/1inch-exchange-audit) - audit_report_link
- [https://consensys.io](https://consensys.io) - audit_report_link
- [https://consensys.net/diligence/audits/2020/12/1inch-liquidity-protocol](https://consensys.net/diligence/audits/2020/12/1inch-liquidity-protocol) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master](https://github.com/1inch/1inch-audits/blob/master) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/.gitignore](https://github.com/1inch/1inch-audits/blob/master/.gitignore) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_ABDK%20Consulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_ABDK%20Consulting.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_CoinFabrik.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Consensys.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_IgorGulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_IgorGulamov.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_MixBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_MixBytes.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_OpenZepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_OpenZepplin.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_PeckShield.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Pessimistic.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Statemind.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Statemind.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Zokyo.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Zokyo.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Consensys.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Decurity.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Hexens.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_OpenZeppelin.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_PeckShield.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Pessimistic.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_Decurity.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_Hexens.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_OpenZeppelin.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_PeckShield.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Decurity.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Hexens.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Pessimistic.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Limit%20Order%20Protocol%20v4_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Limit%20Order%20Protocol%20v4_OpenZeppelin.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Limit%20Order%20Protocol%20v4.1_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Limit%20Order%20Protocol%20v4.1_OpenZeppelin.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Certik%20-%201inch%20v2%20Audit%20Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Certik%20-%201inch%20v2%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Chainsulting%20-%201inch%20v2%20Audit%20Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Chainsulting%20-%201inch%20v2%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Coinfabrik%20-%201inch%20v2%20Audit%20Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Coinfabrik%20-%201inch%20v2%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Hacken%20-%201inch%20v2%20Audit%20Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Hacken%20-%201inch%20v2%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Haechi%20-%201inch%20v2%20Audit%20Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Haechi%20-%201inch%20v2%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/MixBytes%20-%201inch%20v2%20Audit%20Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/MixBytes%20-%201inch%20v2%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Scott%20Bigelow%20-%201inch%20v2%20Audit%20Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Scott%20Bigelow%20-%201inch%20v2%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Slowmist%20-%201inch%20v2%20Audit%20Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Slowmist%20-%201inch%20v2%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/Certik%20-%201inch%20v3%20Audit%20Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/Certik%20-%201inch%20v3%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/Gulamov%20-%201inch%20v3%20Audit%20Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/Gulamov%20-%201inch%20v3%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/MixBytes%20-%201inch%20v3%20Audit%20Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/MixBytes%20-%201inch%20v3%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_ABDK.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Chainsulting.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Coinfabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Coinfabrik.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Consensys.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Igor%20Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Igor%20Gulamov.pdf) - audit_report_link
- [https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1Inch%20Aggregation%20Router%20v4%20Audit_MixBites.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1Inch%20Aggregation%20Router%20v4%20Audit_MixBites.pdf) - audit_report_link

### Audit Reports (full list)

- 2022-11-04 - Hexens - 1inch FusionMode Hexens.1 - https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/1inch_FusionMode_Hexens.1.pdf
- unknown - Chainsulting - 02 Smart Contract Audit 1inch Mooniswap and Token Updated
- unknown - Hexens - 1inch Nov23 (Public) - https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/1inch_Nov23_(Public).pdf
- unknown - Decurity - The audit scope included the contracts in the following repositories: https://github.com/1inch/limit-order-settlement, https://github.com/1inch/erc20-pods/, https://github.com/1inch/delegating, https://github.com/1inch/farming - https://github.com/decurity/audits/blob/master/1inch/1inch-fusion-mode-audit-report-2.1.pdf
- unknown - CoinFabrik - 1inch%20Aggregation%20Router%20v4%20Audit Coinfabrik
- unknown - MixBytes - MixBytes%20 %201inch%20Liquidity%20Protocol%20Report

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/1inch.json
- **Source code:** not fetched in v1

### Excluded Contracts (summary counts)

| Exclusion Reason | Count | Notes |
|---|---:|---|
| infrastructure blocklist | 0 | Summary from p2 provenance classifications |
| shared deployer contamination | 0 | Summary from p2 provenance classifications |
| opaque enrichment only | 22 | Summary from p2 provenance classifications |
| deployer expansion untethered | 1 | Summary from p2 provenance classifications |
| factory rpc expansion untethered | 0 | Summary from p2 provenance classifications |
| considered but unpromoted docs only | 0 | Summary from p2 provenance classifications |
| never evaluated docs only | 0 | Summary from p2 provenance classifications |
| external placeholder docs only | 0 | Summary from p2 provenance classifications |

### Data Availability Notes

- **Provenance classification:** available.
- **Multisig / timelock metadata:** not extracted by current pipeline.
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $22,952,511.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:44:08.620Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Per-contract TVL snapshot available with total on-chain TVL $22,952,511.
