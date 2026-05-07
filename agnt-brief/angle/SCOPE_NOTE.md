# Agentic Brief: Angle

## Project Overview

- **Project:** Angle (angle)
- **Website:** angle.money
- **Category:** CDP
- **Chains (topography):** 1, 10, 56, 100, 137, 1101, 5000, 8453, 42161, 42220, 43114, 59144
- **Chains (DeFiLlama):** 1, 10, 56, 100, 137, 42161, 42220, 43114
- **TVL:** $28,638,122 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** no prior audits found in audit corpus
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Angle has 109 deployed contract rows in current topography. This brief renders the 104 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 104 contracts across 12 chains. 1 have TP audit coverage (1.0%); 103 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AgEURNameable | core | core | unmatched | [0xc3ef7e...5c5c](https://etherscan.io/address/0xc3ef7ed4f97450ae8da2473068375788bdeb5c5c) |
| AgToken | token | token | audited (TP) | [0xa61beb...25b4](https://etherscan.io/address/0xa61beb4a3d02decb01039e378237032b351125b4) |
| AgTokenNameable | token | token | likely in scope | [0x028e1f...3b24](https://etherscan.io/address/0x028e1f0db25daf4ce8c895215deafbce7a873b24) |
| ANGLE | core | core | unmatched | [0x31429d...14c2](https://etherscan.io/address/0x31429d1856ad1377a8a0079410b297e1a9e214c2) |
| BackedTokenImplementation | token | token | likely in scope | [0x28a0b4...aeda](https://etherscan.io/address/0x28a0b491650fe761c8a66528422bc7ca24ecaeda) |
| BackedTokenProxy | proxy | proxy | unmatched | [0x2f123c...45e7](https://etherscan.io/address/0x2f123cf3f37ce3328cc9b5b8415f9ec5109b45e7) |
| BackedTokenProxy | proxy | proxy | likely in scope | [0x3f95aa...52c9](https://etherscan.io/address/0x3f95aa88ddbb7d9d484aa3d482bf0a80009c52c9) |
| BackedTokenProxy | proxy | proxy | unmatched | [0xca30c9...5fb5](https://etherscan.io/address/0xca30c93b02514f86d5c86a6e375e3a330b435fb5) |
| BaseRewardPool | vault_pool | vault_pool | likely in scope | [0xa91fcc...1a98](https://etherscan.io/address/0xa91fccc1ec9d4a2271b7a86a7509ca05057c1a98) |
| Comp | core | core | unmatched | [0xc00e94...6888](https://etherscan.io/address/0xc00e94cb662c3520282e6f5717214004a7f26888) |
| DiamondProxy | proxy | proxy | unmatched | [0x002535...efab](https://etherscan.io/address/0x00253582b2a3fe112feec532221d9708c64cefab) |
| FiatTokenProxy | proxy | proxy | unmatched | [0x1abaea...c33c](https://etherscan.io/address/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x0c2553...d430](https://etherscan.io/address/0x0c2553e4b9dfa9f83b1a6d3eab96c4baab42d430) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xdc4e6d...b1c8](https://etherscan.io/address/0xdc4e6dfe07efca50a197df15d9200883ef4eb1c8) |
| Idle | core | core | unmatched | [0x875773...d39e](https://etherscan.io/address/0x875773784af8135ea0ef43b5a374aad105c5d39e) |
| InitializableAdminUpgradeabilityProxy | proxy | proxy | unmatched | [0x4da27a...70f5](https://etherscan.io/address/0x4da27a545c0c5b758a6ba100e3a049001de870f5) |
| MetaMorpho | core | core | unmatched | [0xbeef01...64cb](https://etherscan.io/address/0xbeef01735c132ada46aa9aa4c54623caa92a64cb) |
| SavingsNameable | core | core | unmatched | [0x2c28bd...03fa](https://etherscan.io/address/0x2c28bd22ab59341892e85ad76d159d127c4b03fa) |
| sdCRV | core | core | unmatched | [0xd1b565...abb5](https://etherscan.io/address/0xd1b5651e55d4ceed36251c61c50c889b36f6abb5) |
| SDT | core | core | unmatched | [0x73968b...db2f](https://etherscan.io/address/0x73968b9a57c6e53d41345fd57a6e6ae27d6cdb2f) |
| sdToken | token | token | likely in scope | [0x402f87...ac36](https://etherscan.io/address/0x402f878bdd1f5c66fdaf0fababcf74741b68ac36) |
| StableMasterFront | core | core | unmatched | [0x282dff...50ab](https://etherscan.io/address/0x282dffb8d0215d7efb8d8c5ff90aed185d8850ab) |
| StableMasterFront | core | core | unmatched | [0xc16b81...3049](https://etherscan.io/address/0xc16b81af351ba9e64c1a069e3ab18c244a1e3049) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x000020...3274](https://etherscan.io/address/0x0000206329b97db379d5e1bf586bbdb969c63274) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x002222...5776](https://etherscan.io/address/0x0022228a2cc5e7ef0274a7baa600d44da5ab5776) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x0c462d...0dd5](https://etherscan.io/address/0x0c462dbb9ec8cd1630f1728b2cfd2769d09f0dd5) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x1a7e4e...bce8](https://etherscan.io/address/0x1a7e4e63778b4f12a199c062f3efdd288afcbce8) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x3f6686...30a2](https://etherscan.io/address/0x3f66867b4b6eceba0dbb6776be15619f73bc30a2) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x53b981...5f44](https://etherscan.io/address/0x53b981389cfc5dcda2dc2e903147b5dd0e985f44) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x5addc8...6a87](https://etherscan.io/address/0x5addc89785d75c86ab939e9e15bfbbb7fc086a87) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x6b4ee7...af48](https://etherscan.io/address/0x6b4ee7352406707003bc6f6b96595fd35925af48) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xc1e8db...a736](https://etherscan.io/address/0xc1e8dba1cbf29f1caa8343cae96d5adfd9bca736) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xc9daab...5915](https://etherscan.io/address/0xc9daabc677f3d1301006e723bd21c60be57a5915) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xe9f183...d8ed](https://etherscan.io/address/0xe9f183fc656656f1f17af1f2b0df79b8ff9ad8ed) |
| Vyper_contract | core | core | unmatched | [0x3175df...73cc](https://etherscan.io/address/0x3175df0976dfa876431c2e9ee6bc45b65d3473cc) |
| Vyper_contract | core | core | unmatched | [0x6c3f90...e490](https://etherscan.io/address/0x6c3f90f043a72fa612cbac8115ee7e52bde6e490) |
| Vyper_contract | core | core | unmatched | [0xba3436...cc73](https://etherscan.io/address/0xba3436fd341f2c8a928452db3c5a3670d1d5cc73) |
| unnamed | unknown | unknown | unmatched | [0x2ba5a5...bfe1](https://etherscan.io/address/0x2ba5a55dbdad03023e6872a8d57c458e9399bfe1) |
| unnamed | unknown | unknown | unmatched | [0x434153...86f5](https://etherscan.io/address/0x434153aa505959bcd5aaa7c17445eb8d835086f5) |
| unnamed | unknown | unknown | unmatched | [0x63f222...8ce7](https://etherscan.io/address/0x63f222079608eec2ddc7a9acdcd9344a21428ce7) |
| unnamed | unknown | unknown | unmatched | [0xcee383...9d1f](https://etherscan.io/address/0xcee383c5ad0cc99a9da2975c5bd572d0e7769d1f) |

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AgTokenSideChainMultiBridgeNameable | token | token | likely in scope | [0x67aa77...6444](https://optimistic.etherscan.io/address/0x67aa77342be08935380ebece796a0f4f19f16444) |
| GnosisSafeL2 | governance | governance | unmatched | [0xfb1bff...91ea](https://optimistic.etherscan.io/address/0xfb1bffc9d739b8d520daf37df666da4c687191ea) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x3245d3...08a6](https://optimistic.etherscan.io/address/0x3245d3204eeb67afba7b0ba9143e8081365e08a6) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xd24567...d080](https://optimistic.etherscan.io/address/0xd245678e417aee2d91763f6f4efe570ff52fd080) |
| SavingsNameable | core | core | unmatched | [0x2c28bd...03fa](https://optimistic.etherscan.io/address/0x2c28bd22ab59341892e85ad76d159d127c4b03fa) |
| Sonne | core | core | unmatched | [0x1db246...45f0](https://optimistic.etherscan.io/address/0x1db2466d9f5e10d7090e7152b68d62703a2245f0) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x000020...3274](https://optimistic.etherscan.io/address/0x0000206329b97db379d5e1bf586bbdb969c63274) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x002222...5776](https://optimistic.etherscan.io/address/0x0022228a2cc5e7ef0274a7baa600d44da5ab5776) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x9485ac...b1ed](https://optimistic.etherscan.io/address/0x9485aca5bbbe1667ad97c7fe7c4531a624c8b1ed) |
| Velo | core | core | unmatched | [0x3c8b65...1a05](https://optimistic.etherscan.io/address/0x3c8b650257cfb5f272f799f5e2b4e65093a11a05) |

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AgTokenSideChainMultiBridgeNameable | token | token | likely in scope | [0xe91698...c84c](https://bscscan.com/address/0xe9169817edbfe5fcf629ed8b3c2a34e2a50ec84c) |
| CakeToken | token | token | likely in scope | [0x0e09fa...ce82](https://bscscan.com/address/0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82) |
| GnosisSafeL2 | governance | governance | unmatched | [0x3e5c63...d36e](https://bscscan.com/address/0x3e5c63644e683549055b9be8653de26e0b4cd36e) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x0128ea...e6a4](https://bscscan.com/address/0x0128ea927198f39e4955ddb01fd62e8de6b3e6a4) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x371ac6...f548](https://bscscan.com/address/0x371ac6db8063e6076890ef032a4a3cfcf226f548) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x9c28a2...d57f](https://bscscan.com/address/0x9c28a2483901018216282216bc47cb699ca2d57f) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x000020...3274](https://bscscan.com/address/0x0000206329b97db379d5e1bf586bbdb969c63274) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x12f31b...5f89](https://bscscan.com/address/0x12f31b73d812c6bb0d735a218c086d44d5fe5f89) |

### gnosis (chain_id 100)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AgTokenSideChainMultiBridgeNameable | token | token | likely in scope | [0xa0e088...3de4](https://gnosisscan.io/address/0xa0e088fb02a8d5a71d337b88b7629b0413f53de4) |
| SavingsNameable | core | core | unmatched | [0x2c28bd...03fa](https://gnosisscan.io/address/0x2c28bd22ab59341892e85ad76d159d127c4b03fa) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x000020...3274](https://gnosisscan.io/address/0x0000206329b97db379d5e1bf586bbdb969c63274) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x002222...5776](https://gnosisscan.io/address/0x0022228a2cc5e7ef0274a7baa600d44da5ab5776) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x4b1e2c...5984](https://gnosisscan.io/address/0x4b1e2c2762667331bc91648052f646d1b0d35984) |
| unnamed | unknown | unknown | unmatched | [0x0f70ee...fd69](https://gnosisscan.io/address/0x0f70eed1bb51d5edb1a2e46142638df959bafd69) |
| unnamed | unknown | unknown | unmatched | [0xf0a31f...11f0](https://gnosisscan.io/address/0xf0a31faec2b4fc6396c65b1af1f6a71e653f11f0) |

### polygon (chain_id 137)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AgTokenSideChainMultiBridgeNameable | token | token | likely in scope | [0x04a7d1...c199](https://polygonscan.com/address/0x04a7d169c5b14d2e29a3ba8b5071dda5e365c199) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x3b9d32...6f8d](https://polygonscan.com/address/0x3b9d32d0822a6351f415beab05251c1457ff6f8d) |
| TokenPolygonUpgradeableNameable | proxy | proxy | unmatched | [0x09f143...aa79](https://polygonscan.com/address/0x09f143d3af1af9af6ab6bce1b53fc5a8dc1baa79) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x000020...3274](https://polygonscan.com/address/0x0000206329b97db379d5e1bf586bbdb969c63274) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xe0b52e...7db4](https://polygonscan.com/address/0xe0b52e49357fd4daf2c15e02058dce6bc0057db4) |
| unnamed | unknown | unknown | unmatched | [0xda2d2f...02ea](https://polygonscan.com/address/0xda2d2f638d6fcbe306236583845e5822554c02ea) |

### polygon-zkevm (chain_id 1101)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x000020...3274](https://zkevm.polygonscan.com/address/0x0000206329b97db379d5e1bf586bbdb969c63274) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xa61beb...25b4](https://zkevm.polygonscan.com/address/0xa61beb4a3d02decb01039e378237032b351125b4) |

### mantle (chain_id 5000)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| unnamed | unknown | unknown | unmatched | [0x000020...3274](https://mantlescan.xyz/address/0x0000206329b97db379d5e1bf586bbdb969c63274) |
| unnamed | unknown | unknown | unmatched | [0x5addc8...6a87](https://mantlescan.xyz/address/0x5addc89785d75c86ab939e9e15bfbbb7fc086a87) |
| unnamed | unknown | unknown | unmatched | [0xa61beb...25b4](https://mantlescan.xyz/address/0xa61beb4a3d02decb01039e378237032b351125b4) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AgTokenSideChainMultiBridgeNameable | token | token | likely in scope | [0xb5ecaa...06bf](https://basescan.org/address/0xb5ecaa1a867feccd6d87604bc16a2b6b53d706bf) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x000020...3274](https://basescan.org/address/0x0000206329b97db379d5e1bf586bbdb969c63274) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xa61beb...25b4](https://basescan.org/address/0xa61beb4a3d02decb01039e378237032b351125b4) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AgTokenSideChainMultiBridgeNameable | token | token | likely in scope | [0x1a23b2...1f19](https://arbiscan.io/address/0x1a23b27ac7775b6220dc4f816b5c6a629e371f19) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0xaa2dac...df0b](https://arbiscan.io/address/0xaa2daccab539649d1839772c625108674154df0b) |
| Lizard | core | core | unmatched | [0x463913...3b0e](https://arbiscan.io/address/0x463913d3a3d3d291667d53b8325c598eb88d3b0e) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x000020...3274](https://arbiscan.io/address/0x0000206329b97db379d5e1bf586bbdb969c63274) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x002222...5776](https://arbiscan.io/address/0x0022228a2cc5e7ef0274a7baa600d44da5ab5776) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xfa5ed5...28e7](https://arbiscan.io/address/0xfa5ed56a203466cbbc2430a43c66b9d8723528e7) |
| unnamed | unknown | unknown | unmatched | [0x55f01d...0a9c](https://arbiscan.io/address/0x55f01ddae74b60e3c255bd2f619febdfce560a9c) |
| unnamed | unknown | unknown | unmatched | [0xe4dddf...01cb](https://arbiscan.io/address/0xe4dddfe67e7164b0fe14e218d80dc4c08edc01cb) |

### celo (chain_id 42220)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AgTokenSideChainMultiBridgeNameable | token | token | likely in scope | [0xa0e088...3de4](https://celoscan.io/address/0xa0e088fb02a8d5a71d337b88b7629b0413f53de4) |
| GnosisSafeL2 | governance | governance | unmatched | [0xfb1bff...91ea](https://celoscan.io/address/0xfb1bffc9d739b8d520daf37df666da4c687191ea) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x2ba5a5...bfe1](https://celoscan.io/address/0x2ba5a55dbdad03023e6872a8d57c458e9399bfe1) |
| GnosisSafeProxy | proxy | proxy | unmatched | [0x434153...86f5](https://celoscan.io/address/0x434153aa505959bcd5aaa7c17445eb8d835086f5) |
| StableTokenEURProxy | proxy | proxy | unmatched | [0xd8763c...ca73](https://celoscan.io/address/0xd8763cba276a3738e6de85b4b3bf5fded6d6ca73) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x000020...3274](https://celoscan.io/address/0x0000206329b97db379d5e1bf586bbdb969c63274) |
| unnamed | unknown | unknown | unmatched | [0x002222...5776](https://celoscan.io/address/0x0022228a2cc5e7ef0274a7baa600d44da5ab5776) |
| unnamed | unknown | unknown | unmatched | [0xc16b81...3049](https://celoscan.io/address/0xc16b81af351ba9e64c1a069e3ab18c244a1e3049) |

### avalanche (chain_id 43114)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| GnosisSafeProxy | proxy | proxy | unmatched | [0xccd449...870d](https://snowtrace.io/address/0xccd44983f597ae4d4e2b70cf979597d63a10870d) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xaec831...6c57](https://snowtrace.io/address/0xaec8318a9a59baeb39861d10ff6c7f7bf1f96c57) |
| unnamed | unknown | unknown | unmatched | [0x000020...3274](https://snowtrace.io/address/0x0000206329b97db379d5e1bf586bbdb969c63274) |
| unnamed | unknown | unknown | unmatched | [0x43a794...1613](https://snowtrace.io/address/0x43a7947a1288e65faf30d8ddb3ca61eaabd41613) |
| unnamed | unknown | unknown | unmatched | [0xe91698...c84c](https://snowtrace.io/address/0xe9169817edbfe5fcf629ed8b3c2a34e2a50ec84c) |

### linea (chain_id 59144)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AgTokenSideChainMultiBridgeNameable | token | token | likely in scope | [0xc42b7a...29d5](https://lineascan.build/address/0xc42b7a34cb37ee450cc8059b10d839e4753229d5) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x000020...3274](https://lineascan.build/address/0x0000206329b97db379d5e1bf586bbdb969c63274) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x1a7e4e...bce8](https://lineascan.build/address/0x1a7e4e63778b4f12a199c062f3efdd288afcbce8) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 40 proxies on 1, 10, 56, 100, 137, 5000, 8453, 42161, 42220, 43114, 59144. 23 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 19 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 9 distinct deployer addresses: 0x48b30b...9cb4, 0x5f7a4c...a2ad, 0x871980...c8c6, 0x8f02b4...d002, 0x9b65fb...d29f. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 104 | 1 | 103 | 1.0% |
| **Total** | 104 | 1 | 103 | 1.0% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | Sigma Prime | review | unspecified | direct | [report](https://github.com/sigp/public-audits/blob/master/reports/angle/review.pdf) |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). No prior audits.

---

## Appendix

### Docs Pages Referenced

No docs extraction references recorded for this project.

### Audit Reports (full list)

- unknown - Sigma Prime - review - https://github.com/sigp/public-audits/blob/master/reports/angle/review.pdf

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/angle.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $197,103,305.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:43:35.339Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $197,103,305.
