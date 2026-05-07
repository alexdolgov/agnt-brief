# Agentic Brief: Equilibria

## Project Overview

- **Project:** Equilibria (equilibria)
- **Website:** equilibria.fi
- **Category:** Yield
- **Chains (topography):** 1, 10, 56, 146, 5000, 8453, 42161
- **Chains (DeFiLlama):** 1, 10, 56, 146, 5000, 8453, 42161, 80094
- **TVL:** $102,628,763 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 8 audits; most recent 2026-05-01 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Equilibria has 84 deployed contract rows in current topography. This brief renders the 77 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-ea32eab5; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 77 contracts across 7 chains. 9 have TP audit coverage (11.7%); 68 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| EqbExternalToken | token | token | audited (TP) | [0x71e0ce...1ebf](https://etherscan.io/address/0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf) |
| EqbMsgSendEndpoint | core | core | unmatched | [0x920873...a3b8](https://etherscan.io/address/0x920873e5b302a619c54c908adfb77a1c4256a3b8) |
| PENDLE | core | core | unmatched | [0x808507...a827](https://etherscan.io/address/0x808507121b80c02388fad14726482e061b8da827) |
| PendleBoosterMainchain | core | core | unmatched | [0x479603...218d](https://etherscan.io/address/0x479603de0a8b6d2f4d4eaa1058eea0d7ac9e218d) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x18c616...b356](https://etherscan.io/address/0x18c61629e6cbadb85c29ba7993f251b3ebe2b356) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x22fc5a...4455](https://etherscan.io/address/0x22fc5a29bd3d6cce19a06f844019fd506fce4455) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x357f55...e849](https://etherscan.io/address/0x357f55b46821a6c6e476cc32ebb2674cd125e849) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x4d32c8...26bf](https://etherscan.io/address/0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x646279...e6e3](https://etherscan.io/address/0x64627901dadb46ed7f275fd4fc87d086cff1e6e3) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xd8967b...ec27](https://etherscan.io/address/0xd8967b2b15b3cdf96039b7407813b4037f73ec27) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xfe80d6...0b2b](https://etherscan.io/address/0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b) |
| unnamed | unknown | unknown | unmatched | [0x6ee066...b923](https://etherscan.io/address/0x6ee066b813cd8c2586d86f79ed0025e81801b923) |
| unnamed | unknown | unknown | unmatched | [0x741620...fecc](https://etherscan.io/address/0x741620136cf08a782c1df1fc9e3caa760cc4fecc) |
| unnamed | unknown | unknown | unmatched | [0x9cacb5...8c6b](https://etherscan.io/address/0x9cacb579227d10a9fbe0951861b9fcb4847e8c6b) |
| unnamed | unknown | unknown | unmatched | [0xf1ef7d...a74b](https://etherscan.io/address/0xf1ef7d2d4c0c881cd634481e0586ed5d2871a74b) |

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BaseRewardPool | vault_pool | vault_pool | audited (TP) | [0x660e0d...9fa9](https://optimistic.etherscan.io/address/0x660e0d05bfbc46c6644af7e06de202762dcc9fa9) |
| EqbExternalToken | token | token | audited (TP) | [0x507fdb...6ced](https://optimistic.etherscan.io/address/0x507fdbebdb11c71e7c7565177d0942a6fd466ced) |
| OptimismMintableERC20 | token | token | unmatched | [0xaf3a6f...a2a0](https://optimistic.etherscan.io/address/0xaf3a6f67af1624d3878a8d30b09fae7915dca2a0) |
| OptimismMintableERC20 | token | token | unmatched | [0xbc7b1f...66e1](https://optimistic.etherscan.io/address/0xbc7b1ff1c6989f006a1185318ed4e7b5796e66e1) |
| PendleProxySidechain | proxy | proxy | unmatched | [0x694597...77df](https://optimistic.etherscan.io/address/0x694597491c7b1101b6e1b724183fbc9b5dab77df) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x18c616...b356](https://optimistic.etherscan.io/address/0x18c61629e6cbadb85c29ba7993f251b3ebe2b356) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x22fc5a...4455](https://optimistic.etherscan.io/address/0x22fc5a29bd3d6cce19a06f844019fd506fce4455) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x4d32c8...26bf](https://optimistic.etherscan.io/address/0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x86a201...18c5](https://optimistic.etherscan.io/address/0x86a20111feae36f3511a30c0640d2099b3a818c5) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x898ca9...02b3](https://optimistic.etherscan.io/address/0x898ca9b3ef8b6a30da5fc7202f70e7992b3602b3) |

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BaseRewardPool | vault_pool | vault_pool | audited (TP) | [0x09bae4...e94d](https://bscscan.com/address/0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d) |
| BridgeToken | token | token | likely in scope | [0x374ca3...8609](https://bscscan.com/address/0x374ca32fd7934c5d43240e1e73fa9b2283468609) |
| BridgeToken | token | token | likely in scope | [0xb3ed0a...d507](https://bscscan.com/address/0xb3ed0a426155b79b898849803e3b36552f7ed507) |
| EqbExternalToken | token | token | audited (TP) | [0x8a5a43...d36c](https://bscscan.com/address/0x8a5a4348f5cfe9da08b0f3d9ae76bef6e8bbd36c) |
| PendleBoosterSidechain | core | core | unmatched | [0xfb2b52...167f](https://bscscan.com/address/0xfb2b52ec8395d95321fce52aa6b02aa99719167f) |
| PendleProxySidechain | proxy | proxy | unmatched | [0x7ac9e2...dc48](https://bscscan.com/address/0x7ac9e2d9f8f767d6f7ed1721c83b944cde01dc48) |
| TokenImplementation | token | token | likely in scope | [0x7f8c5e...f22a](https://bscscan.com/address/0x7f8c5e730121657e17e452c5a1ba3fa1ef96f22a) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x0140de...d3bc](https://bscscan.com/address/0x0140de476f49b6b42f7b73612b6dc317ab91d3bc) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x4d32c8...26bf](https://bscscan.com/address/0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x646279...e6e3](https://bscscan.com/address/0x64627901dadb46ed7f275fd4fc87d086cff1e6e3) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x898ca9...02b3](https://bscscan.com/address/0x898ca9b3ef8b6a30da5fc7202f70e7992b3602b3) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xe2db20...dde7](https://bscscan.com/address/0xe2db20ce7d845f99338bba4bdff00e733801dde7) |
| VlEqb | core | core | unmatched | [0x660e0d...9fa9](https://bscscan.com/address/0x660e0d05bfbc46c6644af7e06de202762dcc9fa9) |

### sonic (chain_id 146)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BaseRewardPool | vault_pool | vault_pool | audited (TP) | [0x52f0bb...9ca5](https://sonicscan.org/address/0x52f0bbe0325097ac93e1ec85c32a950e47789ca5) |
| EqbMsgSendEndpoint | core | core | unmatched | [0x18c616...b356](https://sonicscan.org/address/0x18c61629e6cbadb85c29ba7993f251b3ebe2b356) |
| ERC1967Proxy | proxy | proxy | unmatched | [0xf1ef7d...a74b](https://sonicscan.org/address/0xf1ef7d2d4c0c881cd634481e0586ed5d2871a74b) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x479603...218d](https://sonicscan.org/address/0x479603de0a8b6d2f4d4eaa1058eea0d7ac9e218d) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x741620...fecc](https://sonicscan.org/address/0x741620136cf08a782c1df1fc9e3caa760cc4fecc) |
| unnamed | unknown | unknown | unmatched | [0x6ee066...b923](https://sonicscan.org/address/0x6ee066b813cd8c2586d86f79ed0025e81801b923) |
| unnamed | unknown | unknown | unmatched | [0x71e0ce...1ebf](https://sonicscan.org/address/0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf) |
| unnamed | unknown | unknown | unmatched | [0x920873...a3b8](https://sonicscan.org/address/0x920873e5b302a619c54c908adfb77a1c4256a3b8) |
| unnamed | unknown | unknown | unmatched | [0x9cacb5...8c6b](https://sonicscan.org/address/0x9cacb579227d10a9fbe0951861b9fcb4847e8c6b) |

### mantle (chain_id 5000)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| EqbExternalToken | token | token | audited (TP) | [0x5e73e7...4531](https://mantlescan.xyz/address/0x5e73e741b0b15e10789a30a91953794e44ea4531) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x6ee066...b923](https://mantlescan.xyz/address/0x6ee066b813cd8c2586d86f79ed0025e81801b923) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x920873...a3b8](https://mantlescan.xyz/address/0x920873e5b302a619c54c908adfb77a1c4256a3b8) |
| unnamed | unknown | unknown | unmatched | [0x3a4db3...d4b3](https://mantlescan.xyz/address/0x3a4db3d715aea70178077012864bcd16d110d4b3) |
| unnamed | unknown | unknown | unmatched | [0x3e7ef8...6747](https://mantlescan.xyz/address/0x3e7ef8f50246f725885102e8238cbba33f276747) |
| unnamed | unknown | unknown | unmatched | [0x479603...218d](https://mantlescan.xyz/address/0x479603de0a8b6d2f4d4eaa1058eea0d7ac9e218d) |
| unnamed | unknown | unknown | unmatched | [0x71e0ce...1ebf](https://mantlescan.xyz/address/0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf) |
| unnamed | unknown | unknown | unmatched | [0x741620...fecc](https://mantlescan.xyz/address/0x741620136cf08a782c1df1fc9e3caa760cc4fecc) |
| unnamed | unknown | unknown | unmatched | [0xd27b18...5729](https://mantlescan.xyz/address/0xd27b18915e7acc8fd6ac75db6766a80f8d2f5729) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BaseRewardPool | vault_pool | vault_pool | audited (TP) | [0x0140de...d3bc](https://basescan.org/address/0x0140de476f49b6b42f7b73612b6dc317ab91d3bc) |
| EqbExternalToken | token | token | audited (TP) | [0x7700eb...33b1](https://basescan.org/address/0x7700eb46bb40163985c5337de39704482aed33b1) |
| OptimismMintableERC20 | token | token | unmatched | [0x010cd9...a50a](https://basescan.org/address/0x010cd9b9be7e416e07793dc6ce2f45868a80a50a) |
| OptimismMintableERC20 | token | token | unmatched | [0xa99f6e...eb3e](https://basescan.org/address/0xa99f6e6785da0f5d6fb42495fe424bce029eeb3e) |
| PendleBoosterSidechain | core | core | unmatched | [0xcbad0c...4779](https://basescan.org/address/0xcbad0cade6069514e77369584bc15730662c4779) |
| PendleProxySidechain | proxy | proxy | unmatched | [0xbfd362...ad3d](https://basescan.org/address/0xbfd362acbd0f9e05c5556a2bae12d4573c8ead3d) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x2583a2...821d](https://basescan.org/address/0x2583a2538272f31e9a15dd12a432b8c96ab4821d) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x70f619...72b9](https://basescan.org/address/0x70f61901658aafb7ae57da0c30695ce4417e72b9) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x741620...fecc](https://basescan.org/address/0x741620136cf08a782c1df1fc9e3caa760cc4fecc) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x920873...a3b8](https://basescan.org/address/0x920873e5b302a619c54c908adfb77a1c4256a3b8) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xb2d167...64c8](https://basescan.org/address/0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8) |
| VlEqb | core | core | unmatched | [0x22fc5a...4455](https://basescan.org/address/0x22fc5a29bd3d6cce19a06f844019fd506fce4455) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ClonableBeaconProxy | proxy | proxy | unmatched | [0x0c880f...c9e8](https://arbiscan.io/address/0x0c880f6761f1af8d9aa9c466984b80dab9a8c9e8) |
| ClonableBeaconProxy | proxy | proxy | unmatched | [0xbfbcfe...ad9c](https://arbiscan.io/address/0xbfbcfe8873fe28dfa25f1099282b088d52bbad9c) |
| StandardArbERC20 | token | token | unmatched | [0x3f770a...ad46](https://arbiscan.io/address/0x3f770ac673856f105b586bb393d122721265ad46) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x3eabe1...4600](https://arbiscan.io/address/0x3eabe18eae267d1b57f917aba085bb5906114600) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x4d32c8...26bf](https://arbiscan.io/address/0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x646279...e6e3](https://arbiscan.io/address/0x64627901dadb46ed7f275fd4fc87d086cff1e6e3) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x70f619...72b9](https://arbiscan.io/address/0x70f61901658aafb7ae57da0c30695ce4417e72b9) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x9739d1...4d6f](https://arbiscan.io/address/0x9739d1e515c5291faa26d92a5d02761b6bbb4d6f) |
| VlEqb | core | core | unmatched | [0x22fc5a...4455](https://arbiscan.io/address/0x22fc5a29bd3d6cce19a06f844019fd506fce4455) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 29 proxies on 1, 10, 56, 146, 5000, 8453, 42161. 25 follow EIP-1967 / UUPS patterns; 2 are beacon proxies. 4 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 3 distinct deployer addresses: 0x80957d...8fa1, 0xb4b8b6...1ffd, 0xc493bd...d337, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 77 | 9 | 68 | 11.7% |
| **Total** | 77 | 9 | 68 | 11.7% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | WatchPug | spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2F5r1RtgYBP522L4FGQ3lx%2FEquilibria Audit Report by WatchPug | unspecified | direct | not available |
| unknown | PeckShield | spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FFHRXG7oZJB5z0Ir5Ybpa%2FPeckShield Audit Report Equilibria  | unspecified | direct | not available |
| unknown | WatchPug | spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FQKP8F3G6lbidKTu8nkEc%2FEquilibria Staked LP Audit Report b | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2F5r1RtgYBP522L4FGQ3lx%2FEquilibria_Audit_Report_by_WatchPug.pdf?alt=media&token=64ae2a4d-115e-44cc-9451-a59a33e9f9e8](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2F5r1RtgYBP522L4FGQ3lx%2FEquilibria_Audit_Report_by_WatchPug.pdf?alt=media&token=64ae2a4d-115e-44cc-9451-a59a33e9f9e8) - audit_report_link
- [https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2Fb8B3TscrPCJ1YmEeCb4Q%2FEquilibria_Continuous_Audit_May_21%2C_25_Audit_Report_by_WatchPug.pdf?alt=media&token=2fe4b5d5-9b94-4c01-a862-7bac36a8f74d](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2Fb8B3TscrPCJ1YmEeCb4Q%2FEquilibria_Continuous_Audit_May_21%2C_25_Audit_Report_by_WatchPug.pdf?alt=media&token=2fe4b5d5-9b94-4c01-a862-7bac36a8f74d) - audit_report_link
- [https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FFHRXG7oZJB5z0Ir5Ybpa%2FPeckShield-Audit-Report-Equilibria-v1.0.pdf?alt=media&token=d3d28a50-17f8-42fd-9739-edd416909e87](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FFHRXG7oZJB5z0Ir5Ybpa%2FPeckShield-Audit-Report-Equilibria-v1.0.pdf?alt=media&token=d3d28a50-17f8-42fd-9739-edd416909e87) - audit_report_link
- [https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FmmHtThc39pihExxQM3Jx%2FEquilibria_%232__Audit_Report_by_WatchPug.pdf?alt=media&token=30f4a88d-92b7-4740-8dad-e443d6a10a36](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FmmHtThc39pihExxQM3Jx%2FEquilibria_%232__Audit_Report_by_WatchPug.pdf?alt=media&token=30f4a88d-92b7-4740-8dad-e443d6a10a36) - audit_report_link
- [https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FQKP8F3G6lbidKTu8nkEc%2FEquilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf?alt=media&token=587a88f9-a3fa-4e13-8d2e-4d11396d727c](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FQKP8F3G6lbidKTu8nkEc%2FEquilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf?alt=media&token=587a88f9-a3fa-4e13-8d2e-4d11396d727c) - audit_report_link
- [https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FT7caQbKvLq6KPy2IRcuY%2FEquilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf?alt=media&token=85d9bd0b-a5e0-407a-a317-ffe2264f870b](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FT7caQbKvLq6KPy2IRcuY%2FEquilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf?alt=media&token=85d9bd0b-a5e0-407a-a317-ffe2264f870b) - audit_report_link
- [https://docs.equilibria.fi/security-and-risk/audit-report](https://docs.equilibria.fi/security-and-risk/audit-report) - audit_report_link
- [https://docs.equilibria.fi/security-and-risk/audits.md](https://docs.equilibria.fi/security-and-risk/audits.md) - audit_report_link
- [https://docs.equilibria.fi/security-and-risk/bug-bounty](https://docs.equilibria.fi/security-and-risk/bug-bounty) - audit_report_link
- [https://docs.equilibria.fi/security-and-risk/risk-mitigation](https://docs.equilibria.fi/security-and-risk/risk-mitigation) - audit_report_link
- [https://immunefi.com/bounty/equilibriafi](https://immunefi.com/bounty/equilibriafi) - audit_report_link

### Audit Reports (full list)

- unknown - WatchPug - spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2F5r1RtgYBP522L4FGQ3lx%2FEquilibria Audit Report by WatchPug
- unknown - PeckShield - spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FFHRXG7oZJB5z0Ir5Ybpa%2FPeckShield Audit Report Equilibria v1.0
- unknown - WatchPug - spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FQKP8F3G6lbidKTu8nkEc%2FEquilibria Staked LP Audit Report by WatchPug rev1

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/equilibria.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $4,758,128.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:40:28.304Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-ea32eab5
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $4,758,128.
