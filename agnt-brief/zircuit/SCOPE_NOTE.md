# Agentic Brief: Zircuit

## Project Overview

- **Project:** Zircuit (zircuit)
- **Website:** zircuit.com
- **Category:** Canonical Bridge
- **Chains (topography):** 1
- **Chains (DeFiLlama):** 1
- **TVL:** $5,409,407 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 6 audits; most recent 2026-05-02 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** mid_tvl_commercial_target

Zircuit has 4 deployed contract rows in current topography. This brief renders the 4 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-0dc929c6; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 4 contracts across 1 chains. 1 have TP audit coverage (25.0%); 3 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| RSETH | core | core | unmatched | [0x715910...7783](https://etherscan.io/address/0x7159107483e623707c18c6e06cbc095bd0717783) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xa1290d...e5a7](https://etherscan.io/address/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7) |
| ZtakingPool | vault_pool | vault_pool | audited (TP) | [0xf047ab...afa6](https://etherscan.io/address/0xf047ab4c75cebf0eb9ed34ae2c186f3611aeafa6) |
| unnamed | unknown | unknown | unmatched | [0x7d8311...24e0](https://etherscan.io/address/0x7d8311839eb44dd5194abd2dd3998722455a24e0) |

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
| No provenance | 4 | 1 | 3 | 25.0% |
| **Total** | 4 | 1 | 3 | 25.0% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | Dedaub | dedaub audit zkr staking ztakingpool | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://3252263143-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fp2pPzGBdConDaqw5tnHs%2Fuploads%2F3HGYEl2g48GgzIm810Nh%2FZircuit%20-%20Zenith%20Audit%20Report.pdf?alt=media&token=b7d92a33-5bf3-4e74-bf7e-2f7fd693ce63](https://3252263143-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fp2pPzGBdConDaqw5tnHs%2Fuploads%2F3HGYEl2g48GgzIm810Nh%2FZircuit%20-%20Zenith%20Audit%20Report.pdf?alt=media&token=b7d92a33-5bf3-4e74-bf7e-2f7fd693ce63) - audit_report_link
- [https://3252263143-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fp2pPzGBdConDaqw5tnHs%2Fuploads%2FtXfssxyeaLJfkYIgsnOO%2FSLS_Arxiv%20(10).pdf?alt=media&token=afb53c40-2af7-477a-9b91-39fd5ab73c4b](https://3252263143-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fp2pPzGBdConDaqw5tnHs%2Fuploads%2FtXfssxyeaLJfkYIgsnOO%2FSLS_Arxiv%20(10).pdf?alt=media&token=afb53c40-2af7-477a-9b91-39fd5ab73c4b) - audit_report_link
- [https://certificate.quantstamp.com/full/zircuit-l-2-upgradeable-contract/e765bc0e-0cbc-40f8-9a84-a7cfbd91cae0/index.html](https://certificate.quantstamp.com/full/zircuit-l-2-upgradeable-contract/e765bc0e-0cbc-40f8-9a84-a7cfbd91cae0/index.html) - audit_report_link
- [https://certificate.quantstamp.com/full/zircuit-lido-new-proposal/a8c75e25-29ae-4628-ab06-4c3a35123652/index.html](https://certificate.quantstamp.com/full/zircuit-lido-new-proposal/a8c75e25-29ae-4628-ab06-4c3a35123652/index.html) - audit_report_link
- [https://docs.zircuit.com/info/security/audit-reports.md](https://docs.zircuit.com/info/security/audit-reports.md) - audit_report_link
- [https://docs.zircuit.com/info/security/bug-bounty](https://docs.zircuit.com/info/security/bug-bounty) - audit_report_link
- [https://docs.zircuit.com/info/security/bug-bounty-zircuit-core](https://docs.zircuit.com/info/security/bug-bounty-zircuit-core) - audit_report_link
- [https://docs.zircuit.com/info/security/bug-bounty-zircuit-core.md](https://docs.zircuit.com/info/security/bug-bounty-zircuit-core.md) - audit_report_link
- [https://docs.zircuit.com/info/security/bug-bounty.md](https://docs.zircuit.com/info/security/bug-bounty.md) - audit_report_link
- [https://docs.zircuit.com/info/security/privileged-roles](https://docs.zircuit.com/info/security/privileged-roles) - audit_report_link
- [https://docs.zircuit.com/info/security/privileged-roles.md](https://docs.zircuit.com/info/security/privileged-roles.md) - audit_report_link
- [https://docs.zircuit.com/security/bug-bounty](https://docs.zircuit.com/security/bug-bounty) - audit_report_link
- [https://github.com/ethereum-optimism/optimism/blob/develop/specs/glossary.md](https://github.com/ethereum-optimism/optimism/blob/develop/specs/glossary.md) - audit_report_link
- [https://github.com/zircuit-labs/audit-report/blob/main/dedaub-audit-zkr-staking-ztakingpool.pdf](https://github.com/zircuit-labs/audit-report/blob/main/dedaub-audit-zkr-staking-ztakingpool.pdf) - audit_report_link
- [https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf) - audit_report_link
- [https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_OP_Bridge_July_24%252C_2024_Dedaub_Audit_Reports_gdoc.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_OP_Bridge_July_24%252C_2024_Dedaub_Audit_Reports_gdoc.pdf) - audit_report_link
- [https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_OP_Bridge_July_24%2C_2024_Dedaub_Audit_Reports_gdoc.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_OP_Bridge_July_24%2C_2024_Dedaub_Audit_Reports_gdoc.pdf) - audit_report_link
- [https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_zrc_token_Secure3_Audit_Report.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_zrc_token_Secure3_Audit_Report.pdf) - audit_report_link
- [https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf) - audit_report_link
- [https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf) - audit_report_link
- [https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-ZRC-Token-audit-report-2024-1.1.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-ZRC-Token-audit-report-2024-1.1.pdf) - audit_report_link
- [https://github.com/zircuit-labs/audit-report/blob/main/ZRC_OFT_final_report_Quantstamp.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ZRC_OFT_final_report_Quantstamp.pdf) - audit_report_link
- [https://github.com/zircuit-labs/audit-report/blob/main/ztakingpool_ottersec.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ztakingpool_ottersec.pdf) - audit_report_link
- [https://github.com/zircuit-labs/docs/blob/main/addresses/preinstalls/broken-reference/README.md%5D(https%3A/github.com/zircuit-labs/docs/blob/main/addresses/preinstalls/broken-reference/README.md](https://github.com/zircuit-labs/docs/blob/main/addresses/preinstalls/broken-reference/README.md%5D(https%3A/github.com/zircuit-labs/docs/blob/main/addresses/preinstalls/broken-reference/README.md) - audit_report_link
- [https://github.com/zircuit-labs/docs/blob/main/infra/bridges/canonical-bridges/broken-reference/README.md%5D(https%3A/github.com/zircuit-labs/docs/blob/main/infra/bridges/canonical-bridges/broken-reference/README.md](https://github.com/zircuit-labs/docs/blob/main/infra/bridges/canonical-bridges/broken-reference/README.md%5D(https%3A/github.com/zircuit-labs/docs/blob/main/infra/bridges/canonical-bridges/broken-reference/README.md) - audit_report_link

### Audit Reports (full list)

- unknown - Dedaub - dedaub audit zkr staking ztakingpool

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/zircuit.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $53,867,748.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:42:41.359Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-0dc929c6
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $53,867,748.
