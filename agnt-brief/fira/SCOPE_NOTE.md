# Agentic Brief: Fira

## Project Overview

- **Project:** Fira (fira)
- **Website:** fira.money
- **Category:** Lending
- **Chains (topography):** 1
- **Chains (DeFiLlama):** 1
- **TVL:** $11,068,451 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 8 audits; most recent 2026-05-02 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** mid_tvl_commercial_target

Fira has 37 deployed contract rows in current topography. This brief renders the 37 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-ea32eab5; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 37 contracts across 1 chains. 10 have TP audit coverage (27.0%); 27 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AaveToChainlinkAdapter | oracle | oracle | unmatched | [0x3d7346...3c91](https://etherscan.io/address/0x3d7346578be9b82e0227d027bd86f6de59ba3c91) |
| ActionAddRemoveLiqV3 | core | core | unmatched | [0x286bbc...4d30](https://etherscan.io/address/0x286bbc5519cd421011e7e1c092e1d6a72edb4d30) |
| ActionBorrow | vault_pool | vault_pool | likely in scope | [0x66f585...ef03](https://etherscan.io/address/0x66f5853cf6c36b97e754f074397d00b78253ef03) |
| ActionCallbackV3 | core | core | unmatched | [0x2dead5...78a5](https://etherscan.io/address/0x2dead5b19935d7299d7077c52f2e2860370278a5) |
| ActionStorageV4 | core | core | unmatched | [0x038668...a3c8](https://etherscan.io/address/0x0386685ea7d37c61ddb8f2e2e8c45f6a81d4a3c8) |
| ActionSwapBTV3 | router | router | likely in scope | [0xab2383...d2fe](https://etherscan.io/address/0xab2383692ed8e0836e25b71988c925dfd94ed2fe) |
| ActionSwapCTV3 | router | router | likely in scope | [0xdb7a72...656b](https://etherscan.io/address/0xdb7a722ae7baf83d3d8b9e812952916326d6656b) |
| AdaptiveCurveIrm | core | core | audited (TP) | [0x73c288...84cd](https://etherscan.io/address/0x73c288826347af3718e6f09c2a24aafda77684cd) |
| BCLpOracle | oracle | oracle | audited (TP) | [0xfeaaec...e921](https://etherscan.io/address/0xfeaaec9124fb007d7c44ed704a08d24b264de921) |
| ChainlinkOracleV2 | oracle | oracle | unmatched | [0x2ed527...be2e](https://etherscan.io/address/0x2ed527087b740530562754efcd608290eccdbe2e) |
| ChainlinkOracleV2 | oracle | oracle | unmatched | [0x698253...a82c](https://etherscan.io/address/0x698253a24cc4926090f841b38d31d6342a00a82c) |
| ChainlinkOracleV2 | oracle | oracle | unmatched | [0xd6f5d9...c8f8](https://etherscan.io/address/0xd6f5d9102007a737d9ede6543262516d5c2fc8f8) |
| ChainlinkOracleV2Factory | factory | factory | audited (TP) | [0x7783ff...d8dc](https://etherscan.io/address/0x7783ff7be856c7a82bc5497fb3cc8f7e8802d8dc) |
| CouponToken | token | token | likely in scope | [0x33b6bf...156f](https://etherscan.io/address/0x33b6bf0390a84fe0f27979f9b52d78bfe1c6156f) |
| CouponToken | token | token | likely in scope | [0x93635d...93cd](https://etherscan.io/address/0x93635d34fad5a9fa7065a645691100b2e23c93cd) |
| FiraMarket | vault_pool | vault_pool | audited (TP) | [0xde00b5...055d](https://etherscan.io/address/0xde00b5edb255078dd42ee94fd97f473d1c9c055d) |
| FiraMarketFactory | factory | factory | audited (TP) | [0xbf1efc...9744](https://etherscan.io/address/0xbf1efc2199ae9ee1b6f5060a45d4440157e49744) |
| FiraRouterV4 | router | router | audited (TP) | [0xff615e...d8a0](https://etherscan.io/address/0xff615e63aaf2d1b1ee4adfd34a5840747185d8a0) |
| FiraSolvencyOracle | oracle | oracle | audited (TP) | [0x5ccdbe...cea6](https://etherscan.io/address/0x5ccdbef28bc15d306ddb949f6b43bb0e3002cea6) |
| FiraSolvencyOracle | oracle | oracle | audited (TP) | [0xb9baa3...9abb](https://etherscan.io/address/0xb9baa3d58e1431776218f39919fd21aed3e69abb) |
| MetaOracleDeviationTimelock | oracle | oracle | likely in scope | [0xea268c...35e2](https://etherscan.io/address/0xea268c588072e2639448e3a9433ab92e871335e2) |
| MorphoChainlinkOracleV2 | oracle | oracle | likely in scope | [0x4dfcef...b685](https://etherscan.io/address/0x4dfcef82eaee9ea817beb1279336f7d0ebf2b685) |
| MorphoChainlinkOracleV2 | oracle | oracle | likely in scope | [0x8ec85c...a9fb](https://etherscan.io/address/0x8ec85c167a43ebe4eb183e8d9b876d1cdad9a9fb) |
| PendlePrincipalToken | token | token | likely in scope | [0x92a6a0...1dcb](https://etherscan.io/address/0x92a6a01b07984de46c24e8eba248449beb8b1dcb) |
| RehypothecationModule | adapter | adapter | audited (TP) | [0xad3325...7ac8](https://etherscan.io/address/0xad332515d9c82438bba0e9faa9486b52a33a7ac8) |
| SafeProxy | proxy | proxy | unmatched | [0x97fd56...82f1](https://etherscan.io/address/0x97fd565b913b439ff16774da152b1f71f05a82f1) |
| SisuVaultFactory | factory | factory | audited (TP) | [0xe77e0f...6981](https://etherscan.io/address/0xe77e0f97a864558e5513209323e4169fceac6981) |
| USDCFW | core | core | likely in scope | [0x62f536...17b3](https://etherscan.io/address/0x62f5366c9e21a95326c461a098a408e034e017b3) |
| unnamed | unknown | unknown | unmatched | [0x17ea07...580b](https://etherscan.io/address/0x17ea07eb87bf7b091070999a0d313556d4ac580b) |
| unnamed | unknown | unknown | likely in scope | [0x2104f6...4ce5](https://etherscan.io/address/0x2104f638a839ca7260180d9ee7f4865c92df4ce5) |
| unnamed | unknown | unknown | likely in scope | [0x280ddd...3a0e](https://etherscan.io/address/0x280ddd897f39c33fef1cbf863b386cb9a8e53a0e) |
| unnamed | unknown | unknown | likely in scope | [0x50791a...59ac](https://etherscan.io/address/0x50791a5ca041b9d6dd03e64e3fa0e34a376759ac) |
| unnamed | unknown | unknown | unmatched | [0x7083cf...8729](https://etherscan.io/address/0x7083cfc87e7f6ebb858cc39b72d9c7605d368729) |
| unnamed | unknown | unknown | unmatched | [0x90d0d6...ac6b](https://etherscan.io/address/0x90d0d6fdf9fe93777085e8b4baf3aab4285bac6b) |
| unnamed | unknown | unknown | unmatched | [0x967234...8874](https://etherscan.io/address/0x967234d7a4416380107da653e5d3afc9c7bf8874) |
| unnamed | unknown | unknown | unmatched | [0xc8db62...2e4d](https://etherscan.io/address/0xc8db629192a96d6840e88a8451f17655880a2e4d) |
| unnamed | unknown | unknown | unmatched | [0xeb30b3...30f3](https://etherscan.io/address/0xeb30b33a1ac175e0305853636d0ef3898eb530f3) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 2 proxies on 1. 0 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0xb00b3f...ccd7, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 37 | 10 | 27 | 27.0% |
| **Total** | 37 | 10 | 27 | 27.0% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | docs.fira.money/security-and-risk/bug-bounty | unspecified | direct | not available |
| unknown | Sherlock | spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit blob 0e54b2fd3302e5b39a812d04da8f38df2743ac0b%2FSherlo | unspecified | direct | not available |
| unknown | Hexens | spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit blob 6d09a49e52e729cafea883d9f8ea0b8c0536b0dc%2Fhexens | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://3843788673-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit-blob-0e54b2fd3302e5b39a812d04da8f38df2743ac0b%2FSherlock%20-%20Fira%20UZR%20Audit%20Nov25.pdf?alt=media](https://3843788673-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit-blob-0e54b2fd3302e5b39a812d04da8f38df2743ac0b%2FSherlock%20-%20Fira%20UZR%20Audit%20Nov25.pdf?alt=media) - audit_report_link
- [https://3843788673-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit-blob-2e55243e2c80f4574b96f599d6f58ea327cb2aa8%2FCantinacode%20-%20Fira%20UZR%20Audit%20Nov25.pdf?alt=media](https://3843788673-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit-blob-2e55243e2c80f4574b96f599d6f58ea327cb2aa8%2FCantinacode%20-%20Fira%20UZR%20Audit%20Nov25.pdf?alt=media) - audit_report_link
- [https://3843788673-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit-blob-49aa88712501071eb47f480f9b7812073e1e54e2%2FyAudit%20-%20Fira%20UZR%20Audit%20Dec%2025.pdf?alt=media](https://3843788673-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit-blob-49aa88712501071eb47f480f9b7812073e1e54e2%2FyAudit%20-%20Fira%20UZR%20Audit%20Dec%2025.pdf?alt=media) - audit_report_link
- [https://3843788673-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit-blob-6d09a49e52e729cafea883d9f8ea0b8c0536b0dc%2Fhexens-fira-feb-26.pdf?alt=media](https://3843788673-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit-blob-6d09a49e52e729cafea883d9f8ea0b8c0536b0dc%2Fhexens-fira-feb-26.pdf?alt=media) - audit_report_link
- [https://audits.sherlock.xyz/bug-bounties/227](https://audits.sherlock.xyz/bug-bounties/227) - audit_report_link
- [https://docs.fira.money/developers/security-and-audits](https://docs.fira.money/developers/security-and-audits) - audit_report_link
- [https://docs.fira.money/developers/security-and-audits/audits.md](https://docs.fira.money/developers/security-and-audits/audits.md) - audit_report_link
- [https://docs.fira.money/developers/security-and-audits/security-practices](https://docs.fira.money/developers/security-and-audits/security-practices) - audit_report_link
- [https://docs.fira.money/security-and-risk/audits.md](https://docs.fira.money/security-and-risk/audits.md) - audit_report_link
- [https://docs.fira.money/security-and-risk/bug-bounty](https://docs.fira.money/security-and-risk/bug-bounty) - audit_report_link
- [https://github.com/Pi-2lavega/fira-gitbook-sync-final/blob/main/developers/smart-contracts/overview/features/fixed-rate-lending.md](https://github.com/Pi-2lavega/fira-gitbook-sync-final/blob/main/developers/smart-contracts/overview/features/fixed-rate-lending.md) - audit_report_link
- [https://github.com/Pi-2lavega/fira-gitbook-sync-final/blob/main/developers/smart-contracts/overview/features/variable-rate-lending.md](https://github.com/Pi-2lavega/fira-gitbook-sync-final/blob/main/developers/smart-contracts/overview/features/variable-rate-lending.md) - audit_report_link
- [https://github.com/Pi-2lavega/fira-gitbook-sync-final/blob/main/developers/smart-contracts/protocol-contracts/contract-deployments.md](https://github.com/Pi-2lavega/fira-gitbook-sync-final/blob/main/developers/smart-contracts/protocol-contracts/contract-deployments.md) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - docs.fira.money/security-and-risk/bug-bounty
- unknown - Sherlock - spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit blob 0e54b2fd3302e5b39a812d04da8f38df2743ac0b%2FSherlock%20 %20Fira%20UZR%20Audit%20Nov25
- unknown - Hexens - spaces%2FyxyZTdJaHRBrumzCYheB%2Fuploads%2Fgit blob 6d09a49e52e729cafea883d9f8ea0b8c0536b0dc%2Fhexens fira feb 26

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/fira.json
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
- **Per-contract TVL:** not persisted; protocol-level TVL only.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:41:14.534Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-ea32eab5
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
