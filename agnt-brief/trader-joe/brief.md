# Agentic Brief: Joe V2.2

## Project Overview

- **Project:** Joe V2.2 (trader-joe)
- **Website:** lfj.gg
- **Category:** Dexs
- **Chains (topography):** 42161, 43114
- **Chains (DeFiLlama):** 42161, 43114
- **TVL:** $39,118,225 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 3 audits; most recent 2026-05-01 (4 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Joe V2.2 has 51 deployed contract rows in current topography. This brief renders the 51 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-2b686225; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 51 contracts across 2 chains. 5 have TP audit coverage (9.8%); 46 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| JoeRouter02 | router | router | unmatched | [0xbee5c1...3642](https://arbiscan.io/address/0xbee5c10cf6e4f68f831e11c1d9e59b43560b3642) |
| JoeTokenOFT | token | token | likely in scope | [0x371c7e...2f07](https://arbiscan.io/address/0x371c7ec6d8039ff7933a2aa28eb827ffe1f52f07) |
| LBFactory | factory | factory | likely in scope | [0xb43120...fe0c](https://arbiscan.io/address/0xb43120c4745967fa9b93e79c149e66b0f2d6fe0c) |
| LBRouter | router | router | unmatched | [0x18556d...220e](https://arbiscan.io/address/0x18556da13313f3532c54711497a8fedac273220e) |
| StableJoeStaking | staking | staking | audited (TP) | [0x21d932...7db1](https://arbiscan.io/address/0x21d9320b80a819c66f339929f84a85381a5c7db1) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x43646a...6960](https://arbiscan.io/address/0x43646a8e839b2f2766392c1bf8f60f6e587b6960) |
| unnamed | unknown | unknown | unmatched | [0x7bfd71...8d9b](https://arbiscan.io/address/0x7bfd7192e76d950832c77bb412aae841049d8d9b) |

### avalanche (chain_id 43114)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Cliff | core | core | unmatched | [0xaff905...4f34](https://snowtrace.io/address/0xaff90532e2937ff290009521e7e120ed062d4f34) |
| Cliff | core | core | unmatched | [0xc13b1c...6796](https://snowtrace.io/address/0xc13b1c927565c5af8fcaf9ef7387172c447f6796) |
| CustomMasterChefJoeV2Timelock | governance | governance | unmatched | [0xadaf18...e398](https://snowtrace.io/address/0xadaf18d79f316005542da4ecb1624b59c4e6e398) |
| GnosisSafeL2 | governance | governance | unmatched | [0xfb1bff...91ea](https://snowtrace.io/address/0xfb1bffc9d739b8d520daf37df666da4c687191ea) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x799d4c...f5cd](https://snowtrace.io/address/0x799d4c5e577cf80221a076064a2054430d2af5cd) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x8f3855...032d](https://snowtrace.io/address/0x8f38558188fae593e8e6347f124351cf4fdd032d) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xd858eb...10ee](https://snowtrace.io/address/0xd858ebaa943b4c2fb06ba0ba8920a132fd2410ee) |
| JCollateralCapErc20Delegate | token | token | unmatched | [0x108aa1...9e5f](https://snowtrace.io/address/0x108aa1c4264ec7b79fdb7ac637f8126c19d79e5f) |
| JCollateralCapErc20Delegate | token | token | unmatched | [0xe79b26...b2df](https://snowtrace.io/address/0xe79b26fa795426f659c2e7e7f932c84576dcb2df) |
| JCollateralCapErc20Delegator | token | token | unmatched | [0x29472d...8db2](https://snowtrace.io/address/0x29472d511808ce925f501d25f9ee9effd2328db2) |
| JCollateralCapErc20Delegator | token | token | unmatched | [0x3fe38b...eb1f](https://snowtrace.io/address/0x3fe38b7b610c0acd10296fef69d9b18eb7a9eb1f) |
| JCollateralCapErc20Delegator | token | token | unmatched | [0x585e7b...6c15](https://snowtrace.io/address/0x585e7bc75089ed111b656faa7aeb1104f5b96c15) |
| JCollateralCapErc20Delegator | token | token | unmatched | [0x8b650e...4448](https://snowtrace.io/address/0x8b650e26404ac6837539ca96812f0123601e4448) |
| JCollateralCapErc20Delegator | token | token | unmatched | [0x929f5c...33fa](https://snowtrace.io/address/0x929f5cab61dfec79a5431a7734a68d714c4633fa) |
| JCollateralCapErc20Delegator | token | token | unmatched | [0xc14678...a696](https://snowtrace.io/address/0xc146783a59807154f92084f9243eb139d58da696) |
| JCollateralCapErc20Delegator | token | token | unmatched | [0xc988c1...ca19](https://snowtrace.io/address/0xc988c170d0e38197dc634a45bf00169c7aa7ca19) |
| JCollateralCapErc20Delegator | token | token | unmatched | [0xce095a...75ea](https://snowtrace.io/address/0xce095a9657a02025081e0607c8d8b081c76a75ea) |
| JCollateralCapErc20Delegator | token | token | unmatched | [0xed6aaf...37ac](https://snowtrace.io/address/0xed6aaf91a2b084bd594dbd1245be3691f9f637ac) |
| JoeBar | core | core | unmatched | [0x57319d...4f33](https://snowtrace.io/address/0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33) |
| JoeHatToken | token | token | likely in scope | [0x82fe03...077c](https://snowtrace.io/address/0x82fe038ea4b50f9c957da326c412ebd73462077c) |
| JoeLens | registry | registry | unmatched | [0xfdf50f...47cc](https://snowtrace.io/address/0xfdf50fea3527fad31fa840b748fd3694ae8a47cc) |
| JoeRouter02 | router | router | unmatched | [0x60ae61...33d4](https://snowtrace.io/address/0x60ae616a2155ee3d9a68541ba4544862310933d4) |
| Joetroller | core | core | unmatched | [0xf3321a...7456](https://snowtrace.io/address/0xf3321aacd18fb8b78d94d3155ebd8b2b5f587456) |
| JWrappedNativeDelegate | core | core | unmatched | [0x7d16ba...b8ad](https://snowtrace.io/address/0x7d16ba9da3d37dde33d9b603e01d1e932caeb8ad) |
| JWrappedNativeDelegator | core | core | unmatched | [0xc22f01...c29e](https://snowtrace.io/address/0xc22f01ddc8010ee05574028528614634684ec29e) |
| LaunchEvent | core | core | audited (TP) | [0x8e8c6b...532e](https://snowtrace.io/address/0x8e8c6bd1ce1a77885325aa69f3736ed41d66532e) |
| LaunchEventLens | registry | registry | unmatched | [0x039aa5...3d68](https://snowtrace.io/address/0x039aa5d3fc07f6f265656793a8c437055b653d68) |
| MasterChefJoeV2 | core | core | audited (TP) | [0xd6a4f1...3052](https://snowtrace.io/address/0xd6a4f121ca35509af06a0be99093d08462f53052) |
| MasterChefJoeV3 | core | core | audited (TP) | [0x188bed...8f00](https://snowtrace.io/address/0x188bed1968b795d5c9022f6a0bb5931ac4c18f00) |
| Maximillion | core | core | unmatched | [0xe5cdda...b7e7](https://snowtrace.io/address/0xe5cddafd0f7af3deaf4bd213bbaee7a5927ab7e7) |
| PriceOracleProxyUSD | proxy | proxy | unmatched | [0xd7ae65...bc2e](https://snowtrace.io/address/0xd7ae651985a871c1bc254748c40ecc733110bc2e) |
| RewardDistributor | rewards | rewards | unmatched | [0x45b2c4...0324](https://snowtrace.io/address/0x45b2c4139d96f44667577c0d7f7a7d170b420324) |
| RocketJoeFactory | factory | factory | unmatched | [0xe825e6...52d5](https://snowtrace.io/address/0xe825e620d676c6aa0613207ceebbc3a8fa2352d5) |
| RocketJoeToken | token | token | unmatched | [0x5483ce...bd08](https://snowtrace.io/address/0x5483ce08659fabf0277f9314868cc4f78687bd08) |
| StableJoeStaking | staking | staking | audited (TP) | [0x8e3cd8...eea0](https://snowtrace.io/address/0x8e3cd85b0ac8352e04a07928d7881c516841eea0) |
| Timelock | governance | governance | unmatched | [0x243cc1...bf33](https://snowtrace.io/address/0x243cc1760f0b96c533c11656491e7ebb9663bf33) |
| TokenVesting | token | token | likely in scope | [0xfea787...2bea](https://snowtrace.io/address/0xfea7879bf27b4461de9a9b8a03dbcc7f49c52bea) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x102d19...4d81](https://snowtrace.io/address/0x102d195c3ee8bf8a9a89d63fb3659432d3174d81) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x1a731b...cb51](https://snowtrace.io/address/0x1a731b2299e22fbac282e7094eda41046343cb51) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x37551b...247e](https://snowtrace.io/address/0x37551bc793175da03012bfd10b285a033b62247e) |
| TripleSlopeRateModel | core | core | unmatched | [0x3c5486...3682](https://snowtrace.io/address/0x3c5486b85faae29b071f2a616a59ca7bf8f73682) |
| TripleSlopeRateModel | core | core | unmatched | [0x82ea6f...038e](https://snowtrace.io/address/0x82ea6f7bf853a199ab921137b119b6d41f08038e) |
| TripleSlopeRateModel | core | core | unmatched | [0xe6ffd9...ba6e](https://snowtrace.io/address/0xe6ffd92b9f77fbf5bfec0f3d9c9d027c4cf3ba6e) |
| Unitroller | core | core | unmatched | [0xdc1368...edac](https://snowtrace.io/address/0xdc13687554205e5b89ac783db14bb5bba4a1edac) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 18 proxies on 42161, 43114. 4 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 12 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0x3b0abc...e179, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 51 | 5 | 46 | 9.8% |
| **Total** | 51 | 5 | 46 | 9.8% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2022-03-18 | Ackee Blockchain | Security review of the new BoostedMasterChefJoe contract | unspecified | direct | [report](https://764859236-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MYTkRFOHO4K48zVLh8x-2910905616%2Fuploads%2F6p48zyJjNOyRuXVS6ul3%2Fbmcj_audit.pdf?alt=media&amp%3Btoken=474640a7-8025-46ac-b33d-26a51305281a) |
| 2022-03-09 | Ackee Blockchain | unspecified | unspecified | direct | [report](https://764859236-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MYTkRFOHO4K48zVLh8x-2910905616%2Fuploads%2FZPtC0xhgnsXE8pxHSvL0%2Ftokenomicsv2_audit.pdf?alt=media&amp%3Btoken=cea969cb-ddbf-4bde-ac59-bc6526877224) |
| unknown | discovery-ingest-placeholder | cmichel audit | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 4 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://code4rena.com/contests/2022-01-trader-joe-contest](https://code4rena.com/contests/2022-01-trader-joe-contest) - audit_report_link
- [https://docs.lfj.gg/additional-information/platform-and-developer-documents/audits_6881007.md](https://docs.lfj.gg/additional-information/platform-and-developer-documents/audits_6881007.md) - audit_report_link
- [https://docs.lfj.gg/token-mill/audits.md](https://docs.lfj.gg/token-mill/audits.md) - audit_report_link
- [https://github.com/traderjoe-xyz/LB-Whitepaper/blob/main/Joe%2520v2%2520Liquidity%2520Book%2520Whitepaper.pdf](https://github.com/traderjoe-xyz/LB-Whitepaper/blob/main/Joe%2520v2%2520Liquidity%2520Book%2520Whitepaper.pdf) - audit_report_link
- [https://github.com/traderjoe-xyz/rocket-joe/blob/main/audit/audit_certora.pdf](https://github.com/traderjoe-xyz/rocket-joe/blob/main/audit/audit_certora.pdf) - audit_report_link
- [https://github.com/traderjoe-xyz/rocket-joe/blob/main/audit/cmichel_audit.pdf](https://github.com/traderjoe-xyz/rocket-joe/blob/main/audit/cmichel_audit.pdf) - audit_report_link
- [https://github.com/traderjoe-xyz/rocket-joe/blob/main/audit/paladin_audit.pdf](https://github.com/traderjoe-xyz/rocket-joe/blob/main/audit/paladin_audit.pdf) - audit_report_link

### Audit Reports (full list)

- 2022-03-18 - Ackee Blockchain - Security review of the new BoostedMasterChefJoe contract - https://764859236-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MYTkRFOHO4K48zVLh8x-2910905616%2Fuploads%2F6p48zyJjNOyRuXVS6ul3%2Fbmcj_audit.pdf?alt=media&amp%3Btoken=474640a7-8025-46ac-b33d-26a51305281a
- 2022-03-09 - Ackee Blockchain - unspecified - https://764859236-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MYTkRFOHO4K48zVLh8x-2910905616%2Fuploads%2FZPtC0xhgnsXE8pxHSvL0%2Ftokenomicsv2_audit.pdf?alt=media&amp%3Btoken=cea969cb-ddbf-4bde-ac59-bc6526877224
- unknown - discovery-ingest-placeholder - cmichel audit

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/trader-joe.json
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

- **Generated at:** 2026-05-05T20:39:08.594Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-2b686225
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
