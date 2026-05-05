# Agentic Brief: Odyssey Finance

## Project Overview

- **Project:** Odyssey Finance (odyssey-finance)
- **Website:** odyssey.finance
- **Category:** Yield Aggregator
- **Chains (topography):** 1, 10, 8453
- **Chains (DeFiLlama):** 1, 10, 8453
- **TVL:** $31,926,684 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 2 audits; most recent 2026-05-02 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Odyssey Finance has 54 deployed contract rows in current topography. This brief renders the 53 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-95e36788; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 53 contracts across 3 chains. 18 have TP audit coverage (34.0%); 35 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AaveV2FlashLoan | core | core | unmatched | [0x2d2985...c720](https://etherscan.io/address/0x2d2985ab02254bb26bfdaf8bd64c0d063ad9c720) |
| AaveV3 | core | core | likely in scope | [0x206eba...2821](https://etherscan.io/address/0x206eba040e4e86667b8ab4275bb75f220e9a2821) |
| AaveV3BorrowStrategy | strategy | strategy | audited (TP) | [0x3efcee...d79b](https://etherscan.io/address/0x3efcee552716472dd2b321326654e4097f58d79b) |
| AaveV3FlashLoan | core | core | unmatched | [0x743618...312b](https://etherscan.io/address/0x7436186d83d8f98e542a5bd37d18e91f265c312b) |
| CallOrderExecutor | core | core | audited (TP) | [0xf70aca...a5d9](https://etherscan.io/address/0xf70acacfb981c8be2ddc48093f4042b88f0da5d9) |
| CompoundV2BorrowStrategy | strategy | strategy | audited (TP) | [0x77fa78...bb3c](https://etherscan.io/address/0x77fa7880f6da8f6fc7dd21409e9e2b7cdb84bb3c) |
| CompoundV3 | core | core | audited (TP) | [0x13f9f7...6d40](https://etherscan.io/address/0x13f9f7e31a8a1cfb9dfd4a2961786d0cbbee6d40) |
| CompoundV3VesperStrategy | strategy | strategy | audited (TP) | [0xab890e...27c3](https://etherscan.io/address/0xab890edfc63959a2b3794800b4f68f608b0827c3) |
| ERC4626Strategy | strategy | strategy | unmatched | [0xf4868c...0543](https://etherscan.io/address/0xf4868cec8c7e13bba1e3ba65b029449c13ea0543) |
| LimitOrderExecutor | core | core | audited (TP) | [0x1807c6...4ef4](https://etherscan.io/address/0x1807c62f30269746672d0c0f24a645a573604ef4) |
| Morpho | core | core | unmatched | [0xf8dea5...6892](https://etherscan.io/address/0xf8dea58979a47f226ac46dfe204a7146a8e06892) |
| MorphoBorrowStrategy | strategy | strategy | unmatched | [0x87acd9...6910](https://etherscan.io/address/0x87acd9823c1269ec5a2233fc941b22d747366910) |
| MorphoFlashLoan | core | core | unmatched | [0x6aa69c...31b8](https://etherscan.io/address/0x6aa69c031170b04e2d6ec02520b6f49d649031b8) |
| ProtocolTieredFeePolicy | core | core | unmatched | [0xeb1df7...5684](https://etherscan.io/address/0xeb1df74c87875be3eef1a2407aa906665bfa5684) |
| ProxyAdmin | proxy | proxy | unmatched | [0x05495f...6589](https://etherscan.io/address/0x05495f13b69a0bcf5e623a6a5e3de31e58106589) |
| ProxyAdmin | proxy | proxy | unmatched | [0x78002d...3f3b](https://etherscan.io/address/0x78002d68a97990d42f42da5e4f6c57a2908e3f3b) |
| ProxyAdmin | proxy | proxy | unmatched | [0xc0bc99...370e](https://etherscan.io/address/0xc0bc99efeb9039493e888900a81ed30a3468370e) |
| ProxyAdmin | proxy | proxy | unmatched | [0xfca22b...baaa](https://etherscan.io/address/0xfca22bb50375f172692303deb373c21378ddbaaa) |
| SynthStrategy | strategy | strategy | audited (TP) | [0x19b72d...7c37](https://etherscan.io/address/0x19b72d6351f080d8a002bfde6595c09112867c37) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x1f2cb3...2ac5](https://etherscan.io/address/0x1f2cb3cbe35ebd871b61d7d406e23c76f17b2ac5) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xce5bc7...d206](https://etherscan.io/address/0xce5bc7ea716f258a8122e1fb254ca12b18b3d206) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xd7be1c...cd96](https://etherscan.io/address/0xd7be1c97c3652909da8f1d83f9444c3f9722cd96) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xe8c3cc...4ead](https://etherscan.io/address/0xe8c3cc9e444ebaaa6539272494b2da98775c4ead) |
| Vesper | core | core | audited (TP) | [0xccf1f2...9f3c](https://etherscan.io/address/0xccf1f2ad7137347daa5815048c99952fb9639f3c) |
| unnamed | unknown | unknown | unmatched | [0x0d0ac1...a4b7](https://etherscan.io/address/0x0d0ac1e287e21eb0014d39272d8a6d82a39aa4b7) |
| unnamed | unknown | unknown | unmatched | [0x186c91...a820](https://etherscan.io/address/0x186c9184364b00a9691ae0d7d4e736cfcb59a820) |
| unnamed | unknown | unknown | unmatched | [0x3b2cd4...41d5](https://etherscan.io/address/0x3b2cd4d53680ec024f558b3e6ba2c92bc02941d5) |
| unnamed | unknown | unknown | unmatched | [0x3f6da0...488d](https://etherscan.io/address/0x3f6da0a118b3a0ddfdbab4690cc96b2cf73b488d) |
| unnamed | unknown | unknown | unmatched | [0x6a7c1d...2ef4](https://etherscan.io/address/0x6a7c1d820d672c2d25d5c5d9ac5442d9243b2ef4) |
| unnamed | unknown | unknown | unmatched | [0x82e6b5...c3a2](https://etherscan.io/address/0x82e6b5675977f0650c88659716a2210f536ac3a2) |
| unnamed | unknown | unknown | unmatched | [0x98fba5...fad2](https://etherscan.io/address/0x98fba561678720180d51e3fc8e4151038433fad2) |
| unnamed | unknown | unknown | unmatched | [0xb5a44c...8445](https://etherscan.io/address/0xb5a44c7f34e93a72425efdd002b9754ac2b98445) |
| unnamed | unknown | unknown | unmatched | [0xc67abc...ed14](https://etherscan.io/address/0xc67abc3fba59860b2dbf77fd1cf59d5455d6ed14) |
| unnamed | unknown | unknown | unmatched | [0xcb6daf...ee0d](https://etherscan.io/address/0xcb6dafb36b40c9c7371108f66a5184ff3b01ee0d) |
| unnamed | unknown | unknown | unmatched | [0xce3267...780e](https://etherscan.io/address/0xce32679c865f37ae6513a366118aa783ae15780e) |
| unnamed | unknown | unknown | unmatched | [0xee156d...9534](https://etherscan.io/address/0xee156d8ea7b96a5524ccc3cf9283ab85e80e9534) |
| unnamed | unknown | unknown | unmatched | [0xfcb475...d0ed](https://etherscan.io/address/0xfcb475b05682f84b489083b131f62b77cef1d0ed) |

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AaveV3BorrowStrategy | strategy | strategy | audited (TP) | [0x8d4dfa...ee36](https://optimistic.etherscan.io/address/0x8d4dfad5ceaffe863fc9dcb5fcb4f183451aee36) |
| AaveV3FlashLoan | core | core | unmatched | [0x78d791...9762](https://optimistic.etherscan.io/address/0x78d791cd9506042715c1305c8ebbba95a1ad9762) |
| AjnaBorrowStrategy | strategy | strategy | audited (TP) | [0x0dba14...c890](https://optimistic.etherscan.io/address/0x0dba141eb855ea62a951066fb8c5fb1ebe7ec890) |
| ApyTieredFeePolicy | core | core | audited (TP) | [0x3d4ccd...2fc3](https://optimistic.etherscan.io/address/0x3d4ccdb04ea20681a1123a7127547edcfdf72fc3) |
| CompoundV3BorrowStrategy | strategy | strategy | audited (TP) | [0x4966d4...aa68](https://optimistic.etherscan.io/address/0x4966d4a8e6f3c463ac7d6374ab05b4555b0eaa68) |
| CompoundV3VesperStrategy | strategy | strategy | audited (TP) | [0x249a62...8bbb](https://optimistic.etherscan.io/address/0x249a626498281ee7f172c307d4b0db4de2a08bbb) |
| FlashLoanExecutor | core | core | audited (TP) | [0x4391ae...5978](https://optimistic.etherscan.io/address/0x4391ae1acc1c082bae3bb2badb29afb275d35978) |
| PerformanceFeePolicy | core | core | unmatched | [0xa6798b...ab14](https://optimistic.etherscan.io/address/0xa6798b67e38e180d86474330c0f49e7ef1adab14) |
| PositionRegistry | registry | registry | audited (TP) | [0xf67e65...c9ea](https://optimistic.etherscan.io/address/0xf67e6579a2b9a83c537353efb0fa5646ac1cc9ea) |
| ProtocolTieredFeePolicy | core | core | unmatched | [0xe0af15...3017](https://optimistic.etherscan.io/address/0xe0af15b4689cf81a9f1bfc6857d842f2813d3017) |
| SynthStrategy | strategy | strategy | audited (TP) | [0x5f0a84...1e8f](https://optimistic.etherscan.io/address/0x5f0a841ddb55b2a903bc3204e27e247a097a1e8f) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ApyTieredFeePolicy | core | core | audited (TP) | [0x5ef26d...6faa](https://basescan.org/address/0x5ef26de6aa5a944deac0e69115bdda3ba6016faa) |
| PerformanceFeePolicy | core | core | unmatched | [0x307874...4fcf](https://basescan.org/address/0x3078742bacdfecbe6f8d9e77f1aaa1000c074fcf) |
| PositionRegistry | registry | registry | audited (TP) | [0xa3ceec...4da2](https://basescan.org/address/0xa3ceec1740090b303a9682cd43f1f14d7bac4da2) |
| ProtocolTieredFeePolicy | core | core | unmatched | [0x2f14c8...0894](https://basescan.org/address/0x2f14c835a2e0db38b0db87920a12d3b371080894) |
| SwapAggregator | router | router | likely in scope | [0x7b9c45...0efa](https://basescan.org/address/0x7b9c45136fd16bb2accf566e74b6facc0d3b0efa) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 4 proxies on 1. 4 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 4 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0xf5f519...fac1, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 53 | 18 | 35 | 34.0% |
| **Total** | 53 | 18 | 35 | 34.0% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | spaces%2FqoKcdbT2jNpuAI4A3RLd%2Fuploads%2FfUYd8p9pJEcVmjIGTTJ6%2FAudit Report Odyssey REVIEW | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | spaces%2FqoKcdbT2jNpuAI4A3RLd%2Fuploads%2FWSqlBOwoHAfOb2almafO%2FAudit Report SWA REVIEW | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://3883616881-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqoKcdbT2jNpuAI4A3RLd%2Fuploads%2FfUYd8p9pJEcVmjIGTTJ6%2FAudit_Report_Odyssey_REVIEW.pdf?alt=media&token=4b5f5067-bd44-4903-b0ee-20050f3b0c66](https://3883616881-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqoKcdbT2jNpuAI4A3RLd%2Fuploads%2FfUYd8p9pJEcVmjIGTTJ6%2FAudit_Report_Odyssey_REVIEW.pdf?alt=media&token=4b5f5067-bd44-4903-b0ee-20050f3b0c66) - audit_report_link
- [https://3883616881-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqoKcdbT2jNpuAI4A3RLd%2Fuploads%2FWSqlBOwoHAfOb2almafO%2FAudit_Report-SWA_REVIEW.pdf?alt=media&token=875190d3-07b6-405a-bb5b-451472a89935](https://3883616881-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqoKcdbT2jNpuAI4A3RLd%2Fuploads%2FWSqlBOwoHAfOb2almafO%2FAudit_Report-SWA_REVIEW.pdf?alt=media&token=875190d3-07b6-405a-bb5b-451472a89935) - audit_report_link
- [https://docs.odyssey.finance/resources/audits.md](https://docs.odyssey.finance/resources/audits.md) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.12.08%20-%20Final%20-%20Buffer%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.12.08%20-%20Final%20-%20Buffer%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.03.21%20-%20Final%20-%20Union%20Finance%20Update%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.03.21%20-%20Final%20-%20Union%20Finance%20Update%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.02.08%20-%20Final%20-%20Rubicon%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.02.08%20-%20Final%20-%20Rubicon%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.06%20-%20Final%20-%20Smilee%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.06%20-%20Final%20-%20Smilee%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.21%20-%20Final%20-%20Copra%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.21%20-%20Final%20-%20Copra%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.25%20-%20Final%20-%20Seismic%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.25%20-%20Final%20-%20Seismic%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.30%20-%20Final%20-%20Axis%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.30%20-%20Final%20-%20Axis%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.04.29%20-%20Final%20-%20Teller%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.04.29%20-%20Final%20-%20Teller%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.07.13%20-%20Final%20-%20Union%20Finance%20Update%202%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.07.13%20-%20Final%20-%20Union%20Finance%20Update%202%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.11.25%20-%20Final%20-%20Debita%20Finance%20V3%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.11.25%20-%20Final%20-%20Debita%20Finance%20V3%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.01%20-%20Final%20-%20Extra%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.01%20-%20Final%20-%20Extra%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.21%20-%20Final%20-%20Idle%20Finance%20Credit%20Vaults%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.21%20-%20Final%20-%20Idle%20Finance%20Credit%20Vaults%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.21%20-%20Final%20-%20Mach%20Finance%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.21%20-%20Final%20-%20Mach%20Finance%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.12.09%20-%20Final%20-%20Prodigy%20Finance%20Collaborative%20Audit%20Report%201765292688.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.12.09%20-%20Final%20-%20Prodigy%20Finance%20Collaborative%20Audit%20Report%201765292688.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.02.10%20-%20Final%20-%20Tori%20Finance%20Collaborative%20Audit%20Report%201770734349.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.02.10%20-%20Final%20-%20Tori%20Finance%20Collaborative%20Audit%20Report%201770734349.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Arcadia%20Finance%20Coverage%20Agreement%202024.03.25.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Arcadia%20Finance%20Coverage%20Agreement%202024.03.25.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Buffer%20Finance%20Coverage%20Agreement.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Buffer%20Finance%20Coverage%20Agreement.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Union%20Finance%20Coverage%20Agreement%202023.04.26.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Union%20Finance%20Coverage%20Agreement%202023.04.26.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Union%20Finance%20Coverage%20Agreement%202023.06.23.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/deprecated/Union%20Finance%20Coverage%20Agreement%202023.06.23.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/Union%20Finance%20Coverage%20Agreement%202025.01.03.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/coverage-agreements/Union%20Finance%20Coverage%20Agreement%202025.01.03.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/near/Sigma_Prime_Burrow_Finance_Burrowland_Security_Assessment_Report_v2_0.pdf](https://github.com/sigp/public-audits/blob/master/reports/near/Sigma_Prime_Burrow_Finance_Burrowland_Security_Assessment_Report_v2_0.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/pdfs/CronFinance-Spearbit-Security-Review.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/CronFinance-Spearbit-Security-Review.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-03-maplefinance-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-03-maplefinance-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-09-maplefinance-mapleprotocolv2-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-09-maplefinance-mapleprotocolv2-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-10-fraxfinance-fraxlend-fraxferry-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-10-fraxfinance-fraxlend-fraxferry-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-11-folksfinance-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-11-folksfinance-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2023-02-nestedfinance-smartcontracts-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-02-nestedfinance-smartcontracts-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2023-06-nestedfinance-tetrishyvm-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-06-nestedfinance-tetrishyvm-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-03-pufferfinance-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-03-pufferfinance-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-09-treehouse-finance-teth-extension-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-09-treehouse-finance-teth-extension-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-08-evaafinance-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-08-evaafinance-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/FraxFinance.pdf](https://github.com/trailofbits/publications/blob/master/reviews/FraxFinance.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/MapleFinance.pdf](https://github.com/trailofbits/publications/blob/master/reviews/MapleFinance.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/ParallelFinance.pdf](https://github.com/trailofbits/publications/blob/master/reviews/ParallelFinance.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/ParallelFinance2.pdf](https://github.com/trailofbits/publications/blob/master/reviews/ParallelFinance2.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/ParallelFinance2FixReview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/ParallelFinance2FixReview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/ParallelFinance3.pdf](https://github.com/trailofbits/publications/blob/master/reviews/ParallelFinance3.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Anzen%20Finance%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Anzen%20Finance%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Aura%20Finance%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Aura%20Finance%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Falcon%20Finance%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Falcon%20Finance%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Falcon%20Finance%20FF%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Falcon%20Finance%20FF%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Magma%20Finance%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Magma%20Finance%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Origami%20Finance%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Origami%20Finance%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Palmy%20Finance%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Palmy%20Finance%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Prisma%20Finance%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Prisma%20Finance%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Revest%20Finance%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Revest%20Finance%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Vendor%20Finance%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Vendor%20Finance%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - spaces%2FqoKcdbT2jNpuAI4A3RLd%2Fuploads%2FfUYd8p9pJEcVmjIGTTJ6%2FAudit Report Odyssey REVIEW
- unknown - discovery-ingest-placeholder - spaces%2FqoKcdbT2jNpuAI4A3RLd%2Fuploads%2FWSqlBOwoHAfOb2almafO%2FAudit Report SWA REVIEW

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/odyssey-finance.json
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

- **Generated at:** 2026-05-05T20:41:21.262Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-95e36788
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
