# Agentic Brief: WAGMI

## Project Overview

- **Project:** WAGMI (wagmi)
- **Website:** wagmi.com
- **Category:** Dexs
- **Chains (topography):** 1, 10, 56, 137, 8453, 43114
- **Chains (DeFiLlama):** 1, 146, 250, 324, 1088, 2222, 8453
- **TVL:** $10,595,962 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 6 audits; most recent 2026-05-03 (2 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** mid_tvl_commercial_target

WAGMI has 81 deployed contract rows in current topography. This brief renders the 81 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-0dc929c6; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 81 contracts across 6 chains. 2 have TP audit coverage (2.5%); 79 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Multicall2 | bridge | bridge | unmatched | [0x8b741b...f015](https://etherscan.io/address/0x8b741b0d79be80e135c880f7583d427b4d41f015) |
| NonfungibleTokenPositionDescriptor | token | token | unmatched | [0xab719a...bb51](https://etherscan.io/address/0xab719a8703352a1f05aa9c39afa01a66d7f1bb51) |
| ProxyAdmin | proxy | proxy | unmatched | [0xb5fa77...cd0e](https://etherscan.io/address/0xb5fa77e3929fe198a86aa40fd6c77886785bcd0e) |
| Quoter | core | core | unmatched | [0xe88b19...b6e2](https://etherscan.io/address/0xe88b19885935b4be8dcf38e2c96b8c73cfc9b6e2) |
| UniswapInterfaceMulticall | router | router | likely in scope | [0x4389ee...955b](https://etherscan.io/address/0x4389eed07a48656f2e36aafe7703ab3e78e4955b) |
| V3Migrator | migration | migration | unmatched | [0x6e892a...ab29](https://etherscan.io/address/0x6e892a58997feaa7fb411274011978edff30ab29) |
| unnamed | unknown | unknown | unmatched | [0x08d6e1...9ce8](https://etherscan.io/address/0x08d6e1ae0f91423ddbd16f083ca39ccdd1d79ce8) |
| unnamed | unknown | unknown | unmatched | [0x16b413...18fd](https://etherscan.io/address/0x16b413526d062142eb9eda9d75312ca9f2e418fd) |
| unnamed | unknown | unknown | unmatched | [0x4b5d9d...28aa](https://etherscan.io/address/0x4b5d9db7910448e2f236509d9ee242673afa28aa) |
| unnamed | unknown | unknown | unmatched | [0x730135...ca48](https://etherscan.io/address/0x7301350cc76d669ea384e77af38a70c61661ca48) |
| unnamed | unknown | unknown | unmatched | [0xb1f795...8297](https://etherscan.io/address/0xb1f795776cb9ddac6e7e162f31c7419dd3d48297) |
| unnamed | unknown | unknown | unmatched | [0xb9a14e...de24](https://etherscan.io/address/0xb9a14ee1cd3417f3acc988f61650895151abde24) |
| unnamed | unknown | unknown | unmatched | [0xd8ac77...5293](https://etherscan.io/address/0xd8ac778db70221ab635921460c6bf70cc6d65293) |

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| unnamed | unknown | unknown | unmatched | [0x11b621...4412](https://optimistic.etherscan.io/address/0x11b6215e7b69f2b6aab98c0cfd9f204462314412) |
| unnamed | unknown | unknown | unmatched | [0x127d30...07a9](https://optimistic.etherscan.io/address/0x127d30002c2aedc64a5e0c4ee2043105f58107a9) |
| unnamed | unknown | unknown | unmatched | [0x141cb6...ef87](https://optimistic.etherscan.io/address/0x141cb6458c8090b23539083c6545070d2ce4ef87) |
| unnamed | unknown | unknown | unmatched | [0x195b6e...bb9d](https://optimistic.etherscan.io/address/0x195b6eae168d2862874026f2829109a6ffe0bb9d) |
| unnamed | unknown | unknown | unmatched | [0x259308...6442](https://optimistic.etherscan.io/address/0x259308e7d8557e4ba192de1ab8cf7e0e21896442) |
| unnamed | unknown | unknown | unmatched | [0x496604...b519](https://optimistic.etherscan.io/address/0x49660491c29344c3c8e463ed1867a68fb69bb519) |
| unnamed | unknown | unknown | unmatched | [0x69dad4...b705](https://optimistic.etherscan.io/address/0x69dad44b15d484bdbb5a3f217605ff037c26b705) |
| unnamed | unknown | unknown | unmatched | [0x7228b8...46a8](https://optimistic.etherscan.io/address/0x7228b8110d9a85bd6740be03677eb6dede0546a8) |
| unnamed | unknown | unknown | unmatched | [0x765c28...cd12](https://optimistic.etherscan.io/address/0x765c286762cc4b9da61b5515ecc026421819cd12) |
| unnamed | unknown | unknown | unmatched | [0x78b796...d5d9](https://optimistic.etherscan.io/address/0x78b7964a499b6aee02a4a3d628f3e47f7605d5d9) |
| unnamed | unknown | unknown | unmatched | [0x7dd9b4...9c40](https://optimistic.etherscan.io/address/0x7dd9b456ef365d1e33b4733f9e796a1f5bb79c40) |
| unnamed | unknown | unknown | unmatched | [0xc49c17...1ec3](https://optimistic.etherscan.io/address/0xc49c177736107fd8351ed6564136b9adbe5b1ec3) |
| unnamed | unknown | unknown | unmatched | [0xca420d...d8eb](https://optimistic.etherscan.io/address/0xca420d5ee2ec23d4b46e15f9134a389d2b29d8eb) |
| unnamed | unknown | unknown | unmatched | [0xe16096...886d](https://optimistic.etherscan.io/address/0xe1609682d9fa627301125c402078a8074151886d) |
| unnamed | unknown | unknown | unmatched | [0xe1f435...b1d5](https://optimistic.etherscan.io/address/0xe1f435dfcd6969ae22e96aab56d5ba1bc837b1d5) |
| unnamed | unknown | unknown | unmatched | [0xe4d69a...949c](https://optimistic.etherscan.io/address/0xe4d69a93e8cb390b4fc04dc7836a8206f074949c) |

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| InterfaceMulticallV2 | core | core | unmatched | [0xee69c5...33cf](https://bscscan.com/address/0xee69c554367c01073fdb823b8a48edff6af133cf) |
| Multicall2 | bridge | bridge | unmatched | [0xd7d753...2d16](https://bscscan.com/address/0xd7d75323d971de91295616494f21f13d71eb2d16) |
| Multicall3 | core | core | unmatched | [0xd8759f...66e6](https://bscscan.com/address/0xd8759fb05c69b940a8c7da8836d167e659a566e6) |
| NFTDescriptor | token | token | unmatched | [0x95976e...f5cb](https://bscscan.com/address/0x95976eb23e0955e00aa1e33e346358869ffaf5cb) |
| NonfungiblePositionManager | controller | controller | audited (TP) | [0xa98109...75b2](https://bscscan.com/address/0xa981091c6e7ebc456317a795e63d482f474b75b2) |
| NonfungibleTokenPositionDescriptor | token | token | unmatched | [0x6eebcd...e7a7](https://bscscan.com/address/0x6eebcdeecd09951a93519f70e1abe489b5c1e7a7) |
| Permit2 | core | core | unmatched | [0x678f6b...a650](https://bscscan.com/address/0x678f6b93fb0670be8a6610795ca4896dc217a650) |
| ProxyAdmin | proxy | proxy | unmatched | [0xc5eda8...35af](https://bscscan.com/address/0xc5eda8eb3c42d96085b56abcacdfa50f260335af) |
| Quoter | core | core | unmatched | [0x7fc284...050e](https://bscscan.com/address/0x7fc2848d490b68ff2ed114085999f1c76792050e) |
| QuoterV2 | core | core | unmatched | [0x367af5...62ff](https://bscscan.com/address/0x367af54525c40337578a0f306c200ba3912462ff) |
| SwapRouter | router | router | likely in scope | [0x7b2f96...fb44](https://bscscan.com/address/0x7b2f96919cff07110feb0ec06130b33d70f8fb44) |
| SwapRouter02 | router | router | likely in scope | [0x83a98d...b8a9](https://bscscan.com/address/0x83a98d089d0cb37bb82aa5ae16033c93f474b8a9) |
| TickLens | registry | registry | unmatched | [0x67241f...298f](https://bscscan.com/address/0x67241f1a9471b366039bdbbc1810061a7312298f) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x3d079b...7484](https://bscscan.com/address/0x3d079b0b85e06df10bb168c3ebfa8dc444007484) |
| UniswapInterfaceMulticall | router | router | likely in scope | [0x5497b7...58fd](https://bscscan.com/address/0x5497b7a9cb049869e320b23620cf6c0478ce58fd) |
| UniswapV3Factory | factory | factory | unmatched | [0xe3dc1a...bd0e](https://bscscan.com/address/0xe3dc1a5a7ab81f1cc1895fa55034725c24a5bd0e) |
| UniversalRouter | router | router | likely in scope | [0x1ca13e...314a](https://bscscan.com/address/0x1ca13e2f086a2f664cd1ff8753110d760411314a) |
| UnsupportedProtocol | core | core | unmatched | [0xcd2774...c355](https://bscscan.com/address/0xcd277438fed68de69329eecc0be412e4d24fc355) |
| V3Migrator | migration | migration | unmatched | [0xc3af02...6b15](https://bscscan.com/address/0xc3af02ed403b3d7ba2afea7a8e099cca922a6b15) |

### polygon (chain_id 137)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| InterfaceMulticallV2 | core | core | unmatched | [0x9ab6e6...c6d7](https://polygonscan.com/address/0x9ab6e62123464d6f7a21457840daf34754c9c6d7) |
| Multicall3 | core | core | unmatched | [0xfe9409...bc52](https://polygonscan.com/address/0xfe9409e7d74d4512a8bb5576937d990fcd8abc52) |
| NFTDescriptor | token | token | unmatched | [0x806408...eaf9](https://polygonscan.com/address/0x806408b24a1e2b5f5c6ccd93b6884f95bedeeaf9) |
| Permit2 | core | core | unmatched | [0x5c811c...9495](https://polygonscan.com/address/0x5c811ce03c3c56790c1cf2f3068713b80ab59495) |
| Quoter | core | core | unmatched | [0x78e7c9...f78f](https://polygonscan.com/address/0x78e7c98e9b91b1760974aef424d5274b5d3af78f) |
| QuoterV2 | core | core | unmatched | [0x86fd61...38fa](https://polygonscan.com/address/0x86fd613d79cea7ce51defd31bfcf68adbf4038fa) |
| SwapRouter | router | router | likely in scope | [0x4acc23...f6c9](https://polygonscan.com/address/0x4acc2327a0d00c3b298a1a252f45bd9de7d2f6c9) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x11cd3b...e66c](https://polygonscan.com/address/0x11cd3b62608b7f355aa1951b57f15917518ce66c) |
| UniversalRouter | router | router | likely in scope | [0xca6564...8f64](https://polygonscan.com/address/0xca65646301803f2be98951f3369808adba588f64) |
| UnsupportedProtocol | core | core | unmatched | [0x30623f...2d9c](https://polygonscan.com/address/0x30623f4764c1dda20abe4df0ff59f95967032d9c) |
| V3Migrator | migration | migration | unmatched | [0x5ff8cc...befa](https://polygonscan.com/address/0x5ff8cc5e26d63f4aa2787291f7f3f7cc8ffebefa) |
| unnamed | unknown | unknown | unmatched | [0x381289...2f0f](https://polygonscan.com/address/0x381289fb79eb371f9b52f62a9f907f9381762f0f) |
| unnamed | unknown | unknown | unmatched | [0x67b319...d6bd](https://polygonscan.com/address/0x67b3194163bd625769b985e44d1f8b3fc67fd6bd) |
| unnamed | unknown | unknown | unmatched | [0xdf351e...afe5](https://polygonscan.com/address/0xdf351ec893b8c018fa12c1f7013c67bd31d1afe5) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Multicall2 | bridge | bridge | unmatched | [0xf914e1...f966](https://basescan.org/address/0xf914e1329e4588783ee68f06b2b900addc97f966) |
| NonfungiblePositionManager | controller | controller | audited (TP) | [0x818780...1f72](https://basescan.org/address/0x8187808b163e7cbaccc4d0a9b138ae6196ac1f72) |
| NonfungibleTokenPositionDescriptor | token | token | unmatched | [0xa9af50...d12c](https://basescan.org/address/0xa9af508a15fc3b75763a9e536505ffe1f884d12c) |
| ProxyAdmin | proxy | proxy | unmatched | [0x428065...d649](https://basescan.org/address/0x428065998a96f82bf66a0a427a157429a6fdd649) |
| Quoter | core | core | unmatched | [0x8fb7a8...fedc](https://basescan.org/address/0x8fb7a8cb6c4dcf820762397adf80a27a777cfedc) |
| SwapRouter | router | router | likely in scope | [0x6372f4...8dd8](https://basescan.org/address/0x6372f4acf0a1e54fb5c3f48137e970a3df2d8dd8) |
| TickLens | registry | registry | unmatched | [0x2dc123...0cea](https://basescan.org/address/0x2dc123ff6757fcea46c025758e93bd8b98710cea) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xa7e119...1b02](https://basescan.org/address/0xa7e119cf6c8f5be29ca82611752463f0ffcb1b02) |
| UniswapV3Factory | factory | factory | unmatched | [0x576a13...8fd4](https://basescan.org/address/0x576a1301b42942537d38fb147895fe83fb418fd4) |

### avalanche (chain_id 43114)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| unnamed | unknown | unknown | unmatched | [0x037f7b...e473](https://snowtrace.io/address/0x037f7b8de425afc8a544920bfb0786c1fd74e473) |
| unnamed | unknown | unknown | unmatched | [0x089e07...bf6c](https://snowtrace.io/address/0x089e07bb8dd33cb1610f75b5755f85cdeadebf6c) |
| unnamed | unknown | unknown | unmatched | [0x491d19...ab51](https://snowtrace.io/address/0x491d195b05df4e9fd6aba8c00e6f6d3459a1ab51) |
| unnamed | unknown | unknown | unmatched | [0x721655...5c3c](https://snowtrace.io/address/0x721655cccd531dd6a2d87f72a31e2e927b965c3c) |
| unnamed | unknown | unknown | unmatched | [0x7f4f24...3986](https://snowtrace.io/address/0x7f4f242a57f8b385514aad8f4c27f1a307e53986) |
| unnamed | unknown | unknown | unmatched | [0x834ddb...0b87](https://snowtrace.io/address/0x834ddb3d0e54c6d14204c6ec91992acd66570b87) |
| unnamed | unknown | unknown | unmatched | [0x8bb1be...2bac](https://snowtrace.io/address/0x8bb1be7acd806bf6c9766486dc4c21284a472bac) |
| unnamed | unknown | unknown | unmatched | [0xa6d200...fc0d](https://snowtrace.io/address/0xa6d200ed01389b49e21d8a0018d5b81528bcfc0d) |
| unnamed | unknown | unknown | unmatched | [0xd5b59c...6544](https://snowtrace.io/address/0xd5b59c29efc50348241e815d1afc37d1a7b26544) |
| unnamed | unknown | unknown | unmatched | [0xd6ea74...dc55](https://snowtrace.io/address/0xd6ea74e1b6149195999c820706ee249e7028dc55) |

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
| No provenance | 81 | 2 | 79 | 2.5% |
| **Total** | 81 | 2 | 79 | 2.5% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | Sherlock | Wagmi%20Leverage%20V1.0%20Sherlock | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | Wagmi%20Leverage%20V2.0%20Pashov | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 2 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://docs.wagmi.com/wagmi/audits.md](https://docs.wagmi.com/wagmi/audits.md) - audit_report_link
- [https://github.com/pashov/audits/blob/master/team/pdf/Wagmi-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Wagmi-security-review.pdf) - audit_report_link
- [https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.0%200-V2.0%20AstraSec.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.0%200-V2.0%20AstraSec.pdf) - audit_report_link
- [https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.0%20Sherlock.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.0%20Sherlock.pdf) - audit_report_link
- [https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.1%20Hacken.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.1%20Hacken.pdf) - audit_report_link
- [https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.5%20Sherlock.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.5%20Sherlock.pdf) - audit_report_link
- [https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V2.0%20Pashov.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V2.0%20Pashov.pdf) - audit_report_link
- [https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V2.0%20Sherlock.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V2.0%20Sherlock.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.10.23%20-%20Final%20-%20Real%20Wagmi%202%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.10.23%20-%20Final%20-%20Real%20Wagmi%202%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.25.06%20-%20Final%20-%20Real%20Wagmi%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.25.06%20-%20Final%20-%20Real%20Wagmi%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.02.27%20-%20Final%20-%20Real%20Wagmi%202%20Update%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.02.27%20-%20Final%20-%20Real%20Wagmi%202%20Update%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.23%20-%20Final%20-%20WagmiLeverage%20V2%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.23%20-%20Final%20-%20WagmiLeverage%20V2%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.23%2520-%2520Final%2520-%2520WagmiLeverage%2520V2%2520Audit%2520Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.23%2520-%2520Final%2520-%2520WagmiLeverage%2520V2%2520Audit%2520Report.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - Sherlock - Wagmi%20Leverage%20V1.0%20Sherlock
- unknown - discovery-ingest-placeholder - Wagmi%20Leverage%20V2.0%20Pashov

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/wagmi.json
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

- **Generated at:** 2026-05-05T20:46:06.907Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-0dc929c6
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
