# Agentic Brief: Venus

## Project Overview

- **Project:** Venus (venus)
- **Website:** venus.io
- **Category:** Lending
- **Chains (topography):** 1, 10, 56, 8453, 42161
- **Chains (DeFiLlama):** 1, 10, 56, 204, 324, 8453, 42161
- **TVL:** $8,500,063,977 (3 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 166 audits; most recent 2026-04-30 (4 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Venus has 64 deployed contract rows in current topography. This brief renders the 64 rows present in scope-match run recovery-full-v6-post-filter-2026-05-05-7ca9e728; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 64 contracts across 5 chains. 26 have TP audit coverage (40.6%); 38 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AccountantWithRateProviders | core | core | unmatched | [0x1b293d...c13f](https://etherscan.io/address/0x1b293dc39f94157fa0d1d36d7e0090c8b8b8c13f) |
| AccountantWithRateProviders | core | core | likely in scope | [0xbe1660...afbe](https://etherscan.io/address/0xbe16605b22a7facef247363312121670dfe5afbe) |
| ChainlinkOracle | oracle | oracle | unmatched | [0x36efe8...66a5](https://etherscan.io/address/0x36efe8716fa2ff9f59d528d154d89054581866a5) |
| ERC4626Oracle | oracle | oracle | audited (TP) | [0x49c685...7843](https://etherscan.io/address/0x49c6858b3ce4f3829b716fd3fafca6cb4ccb7843) |
| ERC4626Oracle | oracle | oracle | audited (TP) | [0x50f970...15aa](https://etherscan.io/address/0x50f97063b4097d4e81c4dd9c3278258a04df15aa) |
| ERC4626Oracle | oracle | oracle | audited (TP) | [0x641817...2e2b](https://etherscan.io/address/0x641817de6c0e4f763c393aad182e6c946e1a2e2b) |
| ERC4626Oracle | oracle | oracle | audited (TP) | [0xe113ae...3d0a](https://etherscan.io/address/0xe113ae8d80fb6dfb3221e0a396e297aa42813d0a) |
| ERC4626Oracle | oracle | oracle | audited (TP) | [0xec3865...1c50](https://etherscan.io/address/0xec3865a8a5dcb8c507781da17a38b754e3d01c50) |
| OneJumpOracle | oracle | oracle | audited (TP) | [0x54b033...d853](https://etherscan.io/address/0x54b033d102db7dd734e0ad649463e90ffa78d853) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0x0fc800...9c86](https://etherscan.io/address/0x0fc8001b2c9ec90352a46093130e284de5889c86) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0x94c3a2...a1f2](https://etherscan.io/address/0x94c3a2d6b7b2c051ada041282aec5b0752f8a1f2) |
| SFraxOracle | oracle | oracle | audited (TP) | [0x1adce7...3110](https://etherscan.io/address/0x1adce75bb3164bbf6060a4f44262df5414473110) |
| unnamed | unknown | unknown | unmatched | [0x04d609...d4ce](https://etherscan.io/address/0x04d6096a6f089047c7af6e4644d18fb766b8d4ce) |
| unnamed | unknown | unknown | unmatched | [0x22ce94...8692](https://etherscan.io/address/0x22ce94e302c8c80a6c2dcfa9da6c5286e9f28692) |
| unnamed | unknown | unknown | unmatched | [0x2daaeb...3198](https://etherscan.io/address/0x2daaeb94e19145ba7633cab2c38c76fd8c493198) |
| unnamed | unknown | unknown | unmatched | [0x3938d6...603d](https://etherscan.io/address/0x3938d6414c261c6f450f1bd059df9af2bbfb603d) |
| unnamed | unknown | unknown | unmatched | [0x4fc29e...66e5](https://etherscan.io/address/0x4fc29e1d3fffbdfbf822f09d20a5be97e59f66e5) |
| unnamed | unknown | unknown | unmatched | [0xa3b4a5...643c](https://etherscan.io/address/0xa3b4a56bf47a93459293cfa5e3d20c4f49c8643c) |
| unnamed | unknown | unknown | unmatched | [0xae847e...2b70](https://etherscan.io/address/0xae847e81ff6dd2bdfb1fd563ccb4f848c74d2b70) |
| unnamed | unknown | unknown | unmatched | [0xb09ec9...9588](https://etherscan.io/address/0xb09ec9b628d04e1287216aa3e2432291f50f9588) |
| unnamed | unknown | unknown | unmatched | [0xcd1d2c...033e](https://etherscan.io/address/0xcd1d2c99642165440c2cc023afa2092b487f033e) |
| unnamed | unknown | unknown | unmatched | [0xddd4f0...20c1](https://etherscan.io/address/0xddd4f0836c8016e11fc6741a4886e97b3c3d20c1) |
| unnamed | unknown | unknown | unmatched | [0xf9eca4...7e01](https://etherscan.io/address/0xf9eca470e2458fe2b6fcae660bed1e2c0fb87e01) |
| unnamed | unknown | unknown | unmatched | [0xfa1e65...8fda](https://etherscan.io/address/0xfa1e65e714cdfefdc9729130496ab5b5f3708fda) |

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0x1076e5...eb52](https://optimistic.etherscan.io/address/0x1076e5a60f1ac98e6f361813138275f1179beb52) |

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AsBNB | core | core | unmatched | [0x77734e...12b6](https://bscscan.com/address/0x77734e70b6e88b4d82fe632a168edf6e700912b6) |
| AsBnbMinter | core | core | unmatched | [0x7f5277...a6fc](https://bscscan.com/address/0x7f52773065fd350b5a935ce2b293fdb16551a6fc) |
| AsBNBOracle | oracle | oracle | audited (TP) | [0x652b90...dde5](https://bscscan.com/address/0x652b90d1d45a7cd5be82c5fb61a4a00ba126dde5) |
| BinanceOracle | oracle | oracle | audited (TP) | [0x201c72...6a1b](https://bscscan.com/address/0x201c72986d391a5a8e1713ac5a42ceaf90556a1b) |
| BnbX | core | core | unmatched | [0x7422bf...e43f](https://bscscan.com/address/0x7422bf8e583ebefbe05664d1eb75f06160d9e43f) |
| ChainlinkOracle | oracle | oracle | unmatched | [0x219cff...1c8b](https://bscscan.com/address/0x219cffefb1afa9f34695c7facd9b98d1b3291c8b) |
| ChainlinkOracle | oracle | oracle | unmatched | [0x452fec...c5bf](https://bscscan.com/address/0x452fecfa5dd59243eec214577345d21f7d8ac5bf) |
| ChainlinkOracle | oracle | oracle | unmatched | [0x62a9f1...e765](https://bscscan.com/address/0x62a9f11209c4016a946bcf3cfdc9ff85d348e765) |
| Comptroller | core | core | audited (TP) | [0x909dd1...ffa5](https://bscscan.com/address/0x909dd16b24cef96c7be13065a9a0eaf8a126ffa5) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x2f31ab...2fd8](https://bscscan.com/address/0x2f31ab8950c50080e77999fa456372f276952fd8) |
| FiatTokenProxy | proxy | proxy | audited (TP) | [0xa2e335...e2e1](https://bscscan.com/address/0xa2e3356610840701bdf5611a53974510ae27e2e1) |
| ListaStakeManager | controller | controller | unmatched | [0x89b2eb...486a](https://bscscan.com/address/0x89b2eb59c6b77c244407defa926a97c01fe9486a) |
| OneJumpOracle | oracle | oracle | audited (TP) | [0x2b2895...bedb](https://bscscan.com/address/0x2b2895104f958e1ec042e6ba5cbfecbad3c5bedb) |
| OneJumpOracle | oracle | oracle | audited (TP) | [0xa67f01...51a0](https://bscscan.com/address/0xa67f01322af8eba444d788ee398775b446de51a0) |
| OneJumpOracle | oracle | oracle | audited (TP) | [0xf5534f...b9d3](https://bscscan.com/address/0xf5534f78df9b610b19a63956d498d00cfad8b9d3) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | audited (TP) | [0x176ca4...14f4](https://bscscan.com/address/0x176ca46d7dcb4e001b8ee5f12d0fcd6d279214f4) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0x1b2103...921f](https://bscscan.com/address/0x1b2103441a0a108dad8848d8f5d790e4d402921f) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0x22dc2b...b6b8](https://bscscan.com/address/0x22dc2baea32e95ab07c2f5b8f63336cbf61ab6b8) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | audited (TP) | [0x594810...a820](https://bscscan.com/address/0x594810b741d136f1960141c0d8fb4a91be78a820) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0x8455ef...b70a](https://bscscan.com/address/0x8455efa4d7ff63b8bfd96add889483ea7d39b70a) |
| PendleOracle | oracle | oracle | audited (TP) | [0x0fffbb...1310](https://bscscan.com/address/0x0fffbb55d51cd46cd10c7dc865dc73bd76201310) |
| PendleOracle | oracle | oracle | audited (TP) | [0x863668...8783](https://bscscan.com/address/0x863668e695089200657a76025098c3efda548783) |
| SlisBNBOracle | oracle | oracle | audited (TP) | [0xdde644...f9c1](https://bscscan.com/address/0xdde6446e66c786aff4cd3d183a908bcda57df9c1) |
| StakedBNBToken | token | token | audited (TP) | [0xc2e9d0...fb16](https://bscscan.com/address/0xc2e9d07f66a89c44062459a47a0d2dc038e4fb16) |
| StakeManagerV2 | controller | controller | unmatched | [0x5f6d5b...9add](https://bscscan.com/address/0x5f6d5bec6211bfcfdb7dfe243990f1c3a5af9add) |
| StakePool | vault_pool | vault_pool | likely in scope | [0xc54a9c...0e38](https://bscscan.com/address/0xc54a9c4ac81f55eb62e8670e5b376a263e320e38) |
| TransparentUpgradeableProxy | proxy | proxy | audited (TP) | [0x1adb95...7fe6](https://bscscan.com/address/0x1adb950d8bb3da4be104211d5ab038628e477fe6) |
| TransparentUpgradeableProxy | proxy | proxy | audited (TP) | [0x1bdd3c...a275](https://bscscan.com/address/0x1bdd3cf7f79cfb8edbb955f20ad99211551ba275) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x3b961e...8d28](https://bscscan.com/address/0x3b961e83400d51e6e1af5c450d3c7d7b80588d28) |
| TransparentUpgradeableProxy | proxy | proxy | audited (TP) | [0xc228ce...a0d8](https://bscscan.com/address/0xc228cefdf841defdbd5b3a18dfd414cc0dbfa0d8) |
| VTreasury | treasury | treasury | audited (TP) | [0xf32294...35e9](https://bscscan.com/address/0xf322942f644a996a617bd29c16bd7d231d9f35e9) |
| WBETHOracle | oracle | oracle | audited (TP) | [0x49938f...b2ba](https://bscscan.com/address/0x49938fc72262c126eb5d4bdf6430c55189aeb2ba) |
| WrapTokenV2BSC | token | token | likely in scope | [0xfe928a...b42a](https://bscscan.com/address/0xfe928a7d8be9c8cece7e97f0ed5704f4fa2cb42a) |
| XVS | core | core | audited (TP) | [0xcf6bb5...6c63](https://bscscan.com/address/0xcf6bb5389c92bdda8a3747ddb454cb7a64626c63) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ChainlinkOracle | oracle | oracle | unmatched | [0xda0795...e507](https://basescan.org/address/0xda079597acd9eda0c7638534fdb43f06393fe507) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0x6f2ea7...5deb](https://basescan.org/address/0x6f2ea73597955db37d7c06e1319f0dc7c7455deb) |
| unnamed | unknown | unknown | likely in scope | [0x1e25cf...4359](https://basescan.org/address/0x1e25cf968f12850003db17e0dba32108509c4359) |
| unnamed | unknown | unknown | likely in scope | [0xfd36e2...8384](https://basescan.org/address/0xfd36e2c2a6789db23113685031d7f16329158384) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0x9cd9fc...f113](https://arbiscan.io/address/0x9cd9fcc7e3deda360de7c080590aad377ac9f113) |

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
| No provenance | 64 | 26 | 38 | 40.6% |
| **Total** | 64 | 26 | 38 | 40.6% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2021-06-03 | PeckShield | SMART CONTRACT AUDIT REPORT | unspecified | direct | [report](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Venus-v1.0.pdf) |
| unknown | Hacken | 016 oracles hacken 20230426 | unspecified | direct | not available |
| unknown | Certik | 038 vaults certik 20230604 | unspecified | direct | not available |
| unknown | Certik | 044 diamondComptroller certik 20230803 | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | 056 prime fairyproof 20230910 | unspecified | direct | not available |
| unknown | Certik | 083 multichain token bridge certik 20231226 | unspecified | direct | not available |
| unknown | Certik | 098 correlated token oracles certik 20240412 | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | 101 correlated token oracles fairyproof 20240328 | unspecified | direct | not available |
| unknown | Certik | 116 WeETHAccountantOracle certik 20240823 | unspecified | direct | not available |
| unknown | Certik | 123 erc4626Oracle certik 20250206 | unspecified | direct | not available |
| unknown | Certik | 128 AsBNBOracle certik 20250320 | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://cantina.xyz/competitions/ddf86a5c-6f63-430f-aadc-d8742b4b1bcf](https://cantina.xyz/competitions/ddf86a5c-6f63-430f-aadc-d8742b4b1bcf) - audit_report_link
- [https://code4rena.com/audits/2025-03-silo-finance/submissions/F-11](https://code4rena.com/audits/2025-03-silo-finance/submissions/F-11) - audit_report_link
- [https://code4rena.com/audits/2025-03-silo-finance/submissions/F-17](https://code4rena.com/audits/2025-03-silo-finance/submissions/F-17) - audit_report_link
- [https://code4rena.com/audits/2025-03-silo-finance/submissions/F-195](https://code4rena.com/audits/2025-03-silo-finance/submissions/F-195) - audit_report_link
- [https://code4rena.com/audits/2025-03-silo-finance/submissions/F-207](https://code4rena.com/audits/2025-03-silo-finance/submissions/F-207) - audit_report_link
- [https://code4rena.com/audits/2025-03-silo-finance/submissions/F-26](https://code4rena.com/audits/2025-03-silo-finance/submissions/F-26) - audit_report_link
- [https://code4rena.com/audits/2025-03-silo-finance/submissions/F-57](https://code4rena.com/audits/2025-03-silo-finance/submissions/F-57) - audit_report_link
- [https://code4rena.com/audits/2025-05-silo-finance-mitigation-review](https://code4rena.com/audits/2025-05-silo-finance-mitigation-review) - audit_report_link
- [https://code4rena.com/audits/2025-05-silo-finance-mitigation-review/dashboard](https://code4rena.com/audits/2025-05-silo-finance-mitigation-review/dashboard) - audit_report_link
- [https://code4rena.com/audits/2025-07-lido-finance](https://code4rena.com/audits/2025-07-lido-finance) - audit_report_link
- [https://code4rena.com/audits/2025-07-lido-finance/dashboard](https://code4rena.com/audits/2025-07-lido-finance/dashboard) - audit_report_link
- [https://code4rena.com/audits/2025-10-hybra-finance](https://code4rena.com/audits/2025-10-hybra-finance) - audit_report_link
- [https://code4rena.com/audits/2025-10-hybra-finance/dashboard](https://code4rena.com/audits/2025-10-hybra-finance/dashboard) - audit_report_link
- [https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-101](https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-101) - audit_report_link
- [https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-118](https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-118) - audit_report_link
- [https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-133](https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-133) - audit_report_link
- [https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-321](https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-321) - audit_report_link
- [https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-352](https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-352) - audit_report_link
- [https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-356](https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-356) - audit_report_link
- [https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-36](https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-36) - audit_report_link
- [https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-448](https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-448) - audit_report_link
- [https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-470](https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-470) - audit_report_link
- [https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-635](https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-635) - audit_report_link
- [https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-66](https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-66) - audit_report_link
- [https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-80](https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-80) - audit_report_link
- [https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-861](https://code4rena.com/audits/2025-10-hybra-finance/submissions/S-861) - audit_report_link
- [https://code4rena.com/audits/2025-11-hybra-finance-mitigation-review](https://code4rena.com/audits/2025-11-hybra-finance-mitigation-review) - audit_report_link
- [https://code4rena.com/audits/2025-11-hybra-finance-mitigation-review-round-2](https://code4rena.com/audits/2025-11-hybra-finance-mitigation-review-round-2) - audit_report_link
- [https://code4rena.com/audits/2025-11-hybra-finance-mitigation-review-round-2/dashboard](https://code4rena.com/audits/2025-11-hybra-finance-mitigation-review-round-2/dashboard) - audit_report_link
- [https://code4rena.com/audits/2025-11-hybra-finance-mitigation-review/dashboard](https://code4rena.com/audits/2025-11-hybra-finance-mitigation-review/dashboard) - audit_report_link
- [https://code4rena.com/audits/2025-11-hybra-finance-mitigation-review/submissions/S-15](https://code4rena.com/audits/2025-11-hybra-finance-mitigation-review/submissions/S-15) - audit_report_link
- [https://code4rena.com/audits/2025-11-hybra-finance-mitigation-review/submissions/S-34](https://code4rena.com/audits/2025-11-hybra-finance-mitigation-review/submissions/S-34) - audit_report_link
- [https://code4rena.com/contests/2023-05-venus-protocol-isolated-pools](https://code4rena.com/contests/2023-05-venus-protocol-isolated-pools) - audit_report_link
- [https://code4rena.com/contests/2023-09-venus-prime](https://code4rena.com/contests/2023-09-venus-prime) - audit_report_link
- [https://code4rena.com/reports/2023-05-venus](https://code4rena.com/reports/2023-05-venus) - audit_report_link
- [https://code4rena.com/reports/2025-07-lido-finance](https://code4rena.com/reports/2025-07-lido-finance) - audit_report_link
- [https://code4rena.com/reports/2025-10-hybra-finance](https://code4rena.com/reports/2025-10-hybra-finance) - audit_report_link
- [https://code4rena.notion.site/Guidelines-for-C4-mitigation-reviews-ed10fc5cfbf640bd8dcec66f38b343c4](https://code4rena.notion.site/Guidelines-for-C4-mitigation-reviews-ed10fc5cfbf640bd8dcec66f38b343c4) - audit_report_link
- [https://docs-v4.venus.io/links/security-and-audits](https://docs-v4.venus.io/links/security-and-audits) - audit_report_link
- [https://docs.venus.io/links/security-and-audits](https://docs.venus.io/links/security-and-audits) - audit_report_link
- [https://github.com/code-423n4/2025-10-hybra-finance/blob/main/audit/PeckShield-Audit-Report-Hybra-ve33-v1.0.pdf](https://github.com/code-423n4/2025-10-hybra-finance/blob/main/audit/PeckShield-Audit-Report-Hybra-ve33-v1.0.pdf) - audit_report_link
- [https://github.com/code-423n4/2025-10-hybra-finance/blob/main/cl/lib/openzeppelin-contracts/audit/2017-03.md](https://github.com/code-423n4/2025-10-hybra-finance/blob/main/cl/lib/openzeppelin-contracts/audit/2017-03.md) - audit_report_link
- [https://github.com/code-423n4/2025-10-hybra-finance/blob/main/cl/lib/openzeppelin-contracts/audit/2018-10.pdf](https://github.com/code-423n4/2025-10-hybra-finance/blob/main/cl/lib/openzeppelin-contracts/audit/2018-10.pdf) - audit_report_link
- [https://github.com/code-423n4/2025-10-hybra-finance/blob/main/ve33/lib/openzeppelin-contracts/audits/2017-03.md](https://github.com/code-423n4/2025-10-hybra-finance/blob/main/ve33/lib/openzeppelin-contracts/audits/2017-03.md) - audit_report_link
- [https://github.com/code-423n4/2025-10-hybra-finance/blob/main/ve33/lib/openzeppelin-contracts/audits/2018-10.pdf](https://github.com/code-423n4/2025-10-hybra-finance/blob/main/ve33/lib/openzeppelin-contracts/audits/2018-10.pdf) - audit_report_link
- [https://github.com/code-423n4/2025-10-hybra-finance/blob/main/ve33/lib/openzeppelin-contracts/audits/2022-10-Checkpoints.pdf](https://github.com/code-423n4/2025-10-hybra-finance/blob/main/ve33/lib/openzeppelin-contracts/audits/2022-10-Checkpoints.pdf) - audit_report_link
- [https://github.com/code-423n4/2025-10-hybra-finance/blob/main/ve33/lib/openzeppelin-contracts/audits/2022-10-ERC4626.pdf](https://github.com/code-423n4/2025-10-hybra-finance/blob/main/ve33/lib/openzeppelin-contracts/audits/2022-10-ERC4626.pdf) - audit_report_link
- [https://github.com/code-423n4/2025-10-hybra-finance/blob/main/ve33/lib/openzeppelin-contracts/audits/2023-05-v4.9.pdf](https://github.com/code-423n4/2025-10-hybra-finance/blob/main/ve33/lib/openzeppelin-contracts/audits/2023-05-v4.9.pdf) - audit_report_link
- [https://github.com/code-423n4/2025-10-hybra-finance/blob/main/ve33/lib/openzeppelin-contracts/audits/2023-10-v5.0.pdf](https://github.com/code-423n4/2025-10-hybra-finance/blob/main/ve33/lib/openzeppelin-contracts/audits/2023-10-v5.0.pdf) - audit_report_link
- [https://github.com/code-423n4/2025-10-hybra-finance/blob/main/ve33/lib/openzeppelin-contracts/audits/2024-10-v5.1.pdf](https://github.com/code-423n4/2025-10-hybra-finance/blob/main/ve33/lib/openzeppelin-contracts/audits/2024-10-v5.1.pdf) - audit_report_link

### Audit Reports (full list)

- 2021-06-03 - PeckShield - SMART CONTRACT AUDIT REPORT - https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Venus-v1.0.pdf
- unknown - Hacken - 016 oracles hacken 20230426
- unknown - Certik - 038 vaults certik 20230604
- unknown - Certik - 044 diamondComptroller certik 20230803
- unknown - discovery-ingest-placeholder - 056 prime fairyproof 20230910
- unknown - Certik - 083 multichain token bridge certik 20231226
- unknown - Certik - 098 correlated token oracles certik 20240412
- unknown - discovery-ingest-placeholder - 101 correlated token oracles fairyproof 20240328
- unknown - Certik - 116 WeETHAccountantOracle certik 20240823
- unknown - Certik - 123 erc4626Oracle certik 20250206
- unknown - Certik - 128 AsBNBOracle certik 20250320

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/venus.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $942.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:33:04.050Z
- **Scope-match run_id:** recovery-full-v6-post-filter-2026-05-05-7ca9e728
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $942.
