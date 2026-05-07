# Agentic Brief: DeltaPrime

## Project Overview

- **Project:** DeltaPrime (deltaprime)
- **Website:** deltaprime.io
- **Category:** Leveraged Farming
- **Chains (topography):** 42161, 43114
- **Chains (DeFiLlama):** 42161, 43114
- **TVL:** $8,816,502 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 9 audits; most recent 2026-05-02 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** mid_tvl_commercial_target

DeltaPrime has 118 deployed contract rows in current topography. This brief renders the 118 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-ea32eab5; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 118 contracts across 2 chains. 31 have TP audit coverage (26.3%); 87 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ArbBorrowIndexTUP | vault_pool | vault_pool | unmatched | [0xa508c3...fb74](https://arbiscan.io/address/0xa508c3cedb25af7fbc3b9c339fad6380470afb74) |
| ArbDepositIndexTUP | core | core | unmatched | [0xdeab10...0147](https://arbiscan.io/address/0xdeab10eb04525ad8eb466d7a3634a4fb27040147) |
| ArbPoolFactory | factory | factory | likely in scope | [0xd1f36c...9119](https://arbiscan.io/address/0xd1f36c815477fff312b8f5b25e1b284735819119) |
| ArbVariableUtilisationRatesCalculator | peripheral | peripheral | unmatched | [0x5d776f...b34f](https://arbiscan.io/address/0x5d776f18289c1cadbb11d77723c3d0605912b34f) |
| AssetsExposureController | controller | controller | unmatched | [0x565fd8...c00a](https://arbiscan.io/address/0x565fd824c52014b8fc48dd74508c256f4916c00a) |
| AssetsOperationsArbitrumFacet | core | core | unmatched | [0xfeff07...d1eb](https://arbiscan.io/address/0xfeff079984f30474cffe73e650e79074c239d1eb) |
| BeefyFinanceArbitrumFacet | core | core | audited (TP) | [0xa26467...26d6](https://arbiscan.io/address/0xa264670a3f118602acec40ec18228d50a4b026d6) |
| BtcBorrowIndex | vault_pool | vault_pool | unmatched | [0xf7844a...62cd](https://arbiscan.io/address/0xf7844aeb8c2e94684018892afb25087d2fe262cd) |
| ClonableBeaconProxy | proxy | proxy | unmatched | [0xfa7f89...f7f0](https://arbiscan.io/address/0xfa7f8980b0f1e64a2062791cc3b0871572f1f7f0) |
| DaiBorrowIndex | vault_pool | vault_pool | unmatched | [0xf8d1b3...dea4](https://arbiscan.io/address/0xf8d1b34651f2c9230beb9b83b2260529769fdea4) |
| DepositSwapArbitrum | router | router | audited (TP) | [0x0b420f...ccea](https://arbiscan.io/address/0x0b420f7002375543d04471bf84ead6fb0f0bccea) |
| DepositSwapArbitrum | router | router | audited (TP) | [0x280027...e90d](https://arbiscan.io/address/0x280027359db03b38a2c765a49457b5d02208e90d) |
| DepositSwapArbitrumTUP | router | router | likely in scope | [0x889cfe...52b9](https://arbiscan.io/address/0x889cfe41a376cfef8f28e48a848728d5377552b9) |
| DiamondCutFacet | core | core | audited (TP) | [0x44ac7f...cc77](https://arbiscan.io/address/0x44ac7fdf6726777fa23cd39ba26a69593803cc77) |
| DiamondInit | core | core | audited (TP) | [0x3e273b...7d04](https://arbiscan.io/address/0x3e273bcc448d22b9329a56da3a91ace1b57e7d04) |
| DiamondLoupeFacet | core | core | audited (TP) | [0x69bec7...b23f](https://arbiscan.io/address/0x69bec70a49728544fc402ebb631fb5b0b172b23f) |
| EthPool | vault_pool | vault_pool | likely in scope | [0x58ee09...b166](https://arbiscan.io/address/0x58ee09b419fb027315c7ca5390298a7355f4b166) |
| GLPFacetArbi | core | core | unmatched | [0xad7ef2...95d1](https://arbiscan.io/address/0xad7ef2225866c3e274c5d4cb5adef77e6a5295d1) |
| LevelFinanceFacet | core | core | unmatched | [0x17fa27...f66c](https://arbiscan.io/address/0x17fa27fd76c0c5d97d18b3e78885e0b32c92f66c) |
| OwnershipFacet | core | core | audited (TP) | [0x8f1374...70b2](https://arbiscan.io/address/0x8f1374641d3cd7896c29e905346a9630260770b2) |
| SmartLoanLiquidationFacet | core | core | audited (TP) | [0x686e83...93a0](https://arbiscan.io/address/0x686e838a3733a2400e94dc41338e55dec52893a0) |
| SmartLoansFactoryTUP | factory | factory | likely in scope | [0xff5e3d...5c20](https://arbiscan.io/address/0xff5e3ddaeff411a1dc6cce00014e4bca39265c20) |
| SmartLoanViewFacet | peripheral | peripheral | audited (TP) | [0xd9eb3d...4512](https://arbiscan.io/address/0xd9eb3d537517040b339e6bea8dfa8ede7f364512) |
| SmartLoanWrappedNativeTokenFacet | token | token | audited (TP) | [0x388f7c...2d54](https://arbiscan.io/address/0x388f7ca764a8ef001f3ae4d2d9e0acf57a492d54) |
| SolvencyFacetProd | core | core | unmatched | [0xe4f747...dbc8](https://arbiscan.io/address/0xe4f74717fba81709439493daf6dad9a355d9dbc8) |
| SolvencyFacetProdArbitrum | core | core | unmatched | [0xf102c7...7681](https://arbiscan.io/address/0xf102c7ebb6b3fbcf69ca180fb910d917fb427681) |
| StandardArbERC20 | token | token | unmatched | [0x3f770a...ad46](https://arbiscan.io/address/0x3f770ac673856f105b586bb393d122721265ad46) |
| SushiSwapDEXFacet | router | router | likely in scope | [0x952361...30b2](https://arbiscan.io/address/0x9523615c15d3743cb3198b4464048b064f1530b2) |
| SushiSwapIntermediary | router | router | likely in scope | [0xbadc83...52e1](https://arbiscan.io/address/0xbadc83c88d486fb919e5e4360f96954c1b4a52e1) |
| TraderJoeV2ArbitrumFacet | core | core | unmatched | [0xb4554d...751c](https://arbiscan.io/address/0xb4554d255682c78043e5e41cb7d0cc070065751c) |
| UsdcPool | vault_pool | vault_pool | likely in scope | [0x2a1384...1d51](https://arbiscan.io/address/0x2a1384b1bcad3a8ecf0d4e4b2a3f92250f7f1d51) |
| UsdcVariableUtilisationRatesCalculator | peripheral | peripheral | unmatched | [0x38c8a2...6133](https://arbiscan.io/address/0x38c8a29fe32c6d95e6622944a953aaa29a526133) |
| WethBorrowIndex | vault_pool | vault_pool | unmatched | [0xb83264...82af](https://arbiscan.io/address/0xb83264ff25f271b7ac8e422dbb4ce433723282af) |
| WethBorrowIndexTUP | vault_pool | vault_pool | unmatched | [0x9d0ac6...51c1](https://arbiscan.io/address/0x9d0ac60fdf8bf94eaff4489accfff4c8f5cd51c1) |
| WethDepositIndex | core | core | unmatched | [0xc4644c...4ae3](https://arbiscan.io/address/0xc4644cbcf08122a9b23853c9d57589c0339c4ae3) |
| WethDepositIndexTUP | core | core | unmatched | [0x5c671d...497c](https://arbiscan.io/address/0x5c671dae4c78f8beba83ae67cee0f00b783e497c) |
| WethPool | vault_pool | vault_pool | likely in scope | [0x483ea7...31bb](https://arbiscan.io/address/0x483ea73f891525a62bee36de6a2f25c425a331bb) |
| WethVariableUtilisationRatesCalculator | peripheral | peripheral | unmatched | [0x0d184a...5a72](https://arbiscan.io/address/0x0d184adf34065598311233a1d37765f76fbc5a72) |
| YieldYakFacetArbi | strategy | strategy | unmatched | [0xe71427...83a6](https://arbiscan.io/address/0xe714274dfdc4a2ac7c89c83ee5f2eb77dfd783a6) |
| YieldYakSwapArbitrumFacet | strategy | strategy | unmatched | [0x39c575...d44d](https://arbiscan.io/address/0x39c575a79506147379da7545814ebcf5f3fbd44d) |
| unnamed | unknown | unknown | unmatched | [0x00c0b3...b9ff](https://arbiscan.io/address/0x00c0b37923ee924afe61806bd4dc0345dc1cb9ff) |
| unnamed | unknown | unknown | unmatched | [0x0a0d95...e255](https://arbiscan.io/address/0x0a0d954d4b0f0b47a5990c0abd179a90ff74e255) |
| unnamed | unknown | unknown | unmatched | [0x16238e...c8f9](https://arbiscan.io/address/0x16238eae4155fe1eca0614cfc23f218771aac8f9) |
| unnamed | unknown | unknown | unmatched | [0x2af687...23d7](https://arbiscan.io/address/0x2af68733c1e2100d6620a2aa4d88d27c9d3523d7) |
| unnamed | unknown | unknown | unmatched | [0x2b8c61...d08a](https://arbiscan.io/address/0x2b8c610f3fc6f883817637d15514293565c3d08a) |
| unnamed | unknown | unknown | unmatched | [0x3b963b...6ac3](https://arbiscan.io/address/0x3b963b73561adec65b51e730a8bcb153bc066ac3) |
| unnamed | unknown | unknown | unmatched | [0x56f671...fd43](https://arbiscan.io/address/0x56f67141ba2197854d447128a8aad9b517b8fd43) |
| unnamed | unknown | unknown | unmatched | [0x8b5c03...b22d](https://arbiscan.io/address/0x8b5c0352dd98be579285da94e51ea9dc749eb22d) |
| unnamed | unknown | unknown | unmatched | [0x8fe384...1de0](https://arbiscan.io/address/0x8fe3842e0b7472a57f2a2d56cf6bce08517a1de0) |
| unnamed | unknown | unknown | unmatched | [0xa5984c...5b48](https://arbiscan.io/address/0xa5984caefafc5ea215147ab100268b37191a5b48) |
| unnamed | unknown | unknown | unmatched | [0xb13c47...8799](https://arbiscan.io/address/0xb13c4760cf2e9cd219ec86ebe3660e520fdb8799) |
| unnamed | unknown | unknown | unmatched | [0xb60935...d3c5](https://arbiscan.io/address/0xb6093532b771c993956287a56027da6764aad3c5) |

### avalanche (chain_id 43114)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AssetsExposureController | controller | controller | unmatched | [0x9f0798...fb95](https://snowtrace.io/address/0x9f0798af8edb4b91301e6716948ae813db31fb95) |
| AssetsOperationsFacet | core | core | audited (TP) | [0x5ddeb4...d064](https://snowtrace.io/address/0x5ddeb4acfc36dc92a581e4154ab97335fbd4d064) |
| BridgeToken | token | token | likely in scope | [0x49d5c2...0bab](https://snowtrace.io/address/0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab) |
| BtcBorrowIndex | vault_pool | vault_pool | unmatched | [0x05f08c...d5c7](https://snowtrace.io/address/0x05f08c14c430a1210678d322bf9b5deb5afad5c7) |
| BtcBorrowIndexTUP | vault_pool | vault_pool | unmatched | [0x8f0848...78fd](https://snowtrace.io/address/0x8f0848b329ad310abadd7f85c3c0cfeceb0a78fd) |
| BtcDepositIndex | core | core | unmatched | [0x52b74a...061c](https://snowtrace.io/address/0x52b74a59cc8e7d099f5b4134c2f37789dd07061c) |
| BtcDepositIndexTUP | core | core | unmatched | [0x637fdb...6a08](https://snowtrace.io/address/0x637fdb03d95b36bb25b6b44964b4725482546a08) |
| BtcPool | vault_pool | vault_pool | likely in scope | [0xc15d06...b599](https://snowtrace.io/address/0xc15d068997102d0b267324451b2b5e0762e0b599) |
| BtcPoolTUP | vault_pool | vault_pool | likely in scope | [0x475589...63d0](https://snowtrace.io/address/0x475589b0ed87591a893df42ec6076d2499bb63d0) |
| DiamondCutFacet | core | core | audited (TP) | [0x5efffd...3818](https://snowtrace.io/address/0x5efffded487b62ba912a9bde3536abab0c703818) |
| DiamondInit | core | core | audited (TP) | [0x6a47ec...6181](https://snowtrace.io/address/0x6a47ecd88bb0c7a0eccb3f22604a93c7fe086181) |
| DiamondLoupeFacet | core | core | audited (TP) | [0xb2c4b9...2cfc](https://snowtrace.io/address/0xb2c4b9206988e160b55eb9c9e29b7a9ab6a22cfc) |
| EthBorrowIndex | vault_pool | vault_pool | unmatched | [0x23c691...7b93](https://snowtrace.io/address/0x23c69155bd7cc8f63cac203b364edb0e96dd7b93) |
| EthBorrowIndexTUP | vault_pool | vault_pool | unmatched | [0x66b8ad...b2cb](https://snowtrace.io/address/0x66b8ad391b2d37e60b5b9ec7f96686e9efedb2cb) |
| EthDepositIndex | core | core | unmatched | [0xa09687...edf9](https://snowtrace.io/address/0xa0968752fc6c830fd75ee08b4ffbea496981edf9) |
| EthDepositIndexTUP | core | core | unmatched | [0x796dbe...132f](https://snowtrace.io/address/0x796dbe7adc72158f08b0b79e20caa4293d32132f) |
| EthPool | vault_pool | vault_pool | likely in scope | [0xfaf20e...7795](https://snowtrace.io/address/0xfaf20ee5d8e9e72fefa35e7566972e80118c7795) |
| EthPoolTUP | vault_pool | vault_pool | likely in scope | [0xd7feb2...9148](https://snowtrace.io/address/0xd7feb276ba254cd9b34804a986ce9a8c3e359148) |
| JoeToken | token | token | likely in scope | [0x6e84a6...0fdd](https://snowtrace.io/address/0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd) |
| LiquidationFlashloan | core | core | audited (TP) | [0x3a7de0...5b95](https://snowtrace.io/address/0x3a7de0b05a0a7ed9c692e3523ca82bf6db345b95) |
| OwnershipFacet | core | core | audited (TP) | [0x10cc67...a859](https://snowtrace.io/address/0x10cc67f62d7869ee3d48da50e0945e48ad68a859) |
| PangolinDEXFacet | core | core | audited (TP) | [0x61ff2a...680e](https://snowtrace.io/address/0x61ff2af3ff697d60817f9e5d76d8241ed174680e) |
| PangolinIntermediary | core | core | audited (TP) | [0x493d93...b81c](https://snowtrace.io/address/0x493d936e3aee38a93b4d83512f4a6993f579b81c) |
| PangolinIntermediaryTUP | core | core | audited (TP) | [0xdb5d94...f7fa](https://snowtrace.io/address/0xdb5d94b8ed491b058f3e74d029775a14477cf7fa) |
| Ptp | core | core | unmatched | [0x22d400...f9c8](https://snowtrace.io/address/0x22d4002028f537599be9f666d1c4fa138522f9c8) |
| Qi | core | core | unmatched | [0x872943...c0f5](https://snowtrace.io/address/0x8729438eb15e2c8b576fcc6aecda6a148776c0f5) |
| RewardTracker | rewards | rewards | unmatched | [0x9e295b...9660](https://snowtrace.io/address/0x9e295b5b976a184b14ad8cd72413ad846c299660) |
| SmartLoanDiamondBeacon | proxy | proxy | audited (TP) | [0x2916b3...e56d](https://snowtrace.io/address/0x2916b3bf7c35bd21e63d01c93c62fb0d4994e56d) |
| SmartLoanLiquidationFacet | core | core | audited (TP) | [0xbf98e0...e421](https://snowtrace.io/address/0xbf98e0bda81263ec6a4c2829e8c5d3ce665be421) |
| SmartLoansFactory | factory | factory | audited (TP) | [0x2db7c0...c2de](https://snowtrace.io/address/0x2db7c0cd218f5f313e74639f559b829d0cabc2de) |
| SmartLoansFactory | factory | factory | audited (TP) | [0x63d138...18e7](https://snowtrace.io/address/0x63d1381ee0e01c509a95e1ffa6786387efac18e7) |
| SmartLoansFactoryTUP | factory | factory | likely in scope | [0x3ea9d4...b03d](https://snowtrace.io/address/0x3ea9d480295a73fd2af95b4d96c2aff88b21b03d) |
| SmartLoanViewFacet | peripheral | peripheral | audited (TP) | [0x8e2bd8...f70a](https://snowtrace.io/address/0x8e2bd83111e72556942f9161ec8920e92bcef70a) |
| SmartLoanWrappedNativeTokenFacet | token | token | audited (TP) | [0x42f642...ba7a](https://snowtrace.io/address/0x42f6420beb11bc760761ba4263ee813dd61aba7a) |
| SolvencyFacetProd | core | core | unmatched | [0x05ff7c...a5dc](https://snowtrace.io/address/0x05ff7ca3ae0f6b8f110069ad31425e173df7a5dc) |
| StakedAvax | staking | staking | unmatched | [0xb791c7...fa53](https://snowtrace.io/address/0xb791c7a42fd0d10f90deaa906a8735f79719fa53) |
| TokenManager | token | token | audited (TP) | [0x938a0c...8518](https://snowtrace.io/address/0x938a0caa7a2bf44e4be060e83c5579dec0bc8518) |
| TokenManagerTUP | token | token | likely in scope | [0xf39782...d58e](https://snowtrace.io/address/0xf3978209b7cff2b90100c6f87cec77de928ed58e) |
| TraderJoeDEXFacet | core | core | audited (TP) | [0x46fad5...b60b](https://snowtrace.io/address/0x46fad5174c90367f1e2b1c5b9d18cf7b50dfb60b) |
| TraderJoeIntermediary | core | core | audited (TP) | [0x3de81c...d14e](https://snowtrace.io/address/0x3de81ce90f5a27c5e6a5adb04b54aba488a6d14e) |
| TraderJoeIntermediaryTUP | core | core | audited (TP) | [0x4eecb7...b1af](https://snowtrace.io/address/0x4eecb72b47a32786e08581d6226e95d9ae3bb1af) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x2b2c81...a4be](https://snowtrace.io/address/0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be) |
| UsdcBorrowIndex | vault_pool | vault_pool | unmatched | [0xc8e375...8711](https://snowtrace.io/address/0xc8e3750d97dea029ec0a790f7c8079d1b59c8711) |
| UsdcBorrowIndexTUP | vault_pool | vault_pool | unmatched | [0x93a0f1...0e80](https://snowtrace.io/address/0x93a0f1d983ae56ab19fe72961842e9e576830e80) |
| UsdcDepositIndex | core | core | unmatched | [0x58570d...971e](https://snowtrace.io/address/0x58570d85d9103b8793969cf9536f28db103b971e) |
| UsdcDepositIndexTUP | core | core | unmatched | [0x58da82...46a6](https://snowtrace.io/address/0x58da820738d3bc3583566ecfc5660b176ac446a6) |
| UsdcPool | vault_pool | vault_pool | likely in scope | [0x731a27...729a](https://snowtrace.io/address/0x731a272d0701326c971a03cd2d1eee718e37729a) |
| UsdcPoolTUP | vault_pool | vault_pool | likely in scope | [0x2323da...d12b](https://snowtrace.io/address/0x2323dac85c6ab9bd6a8b5fb75b0581e31232d12b) |
| UsdcVariableUtilisationRatesCalculator | peripheral | peripheral | unmatched | [0x451377...1bc5](https://snowtrace.io/address/0x4513778cc03f0c2f6c1901e60c9a584ff9341bc5) |
| UsdtBorrowIndex | vault_pool | vault_pool | unmatched | [0xc295bb...6c4a](https://snowtrace.io/address/0xc295bb613c2eed7954099610e6b30f92a22c6c4a) |
| UsdtBorrowIndexTUP | vault_pool | vault_pool | unmatched | [0x646afd...f9fe](https://snowtrace.io/address/0x646afd5fff39962672bbbfac80106f0f9d8ff9fe) |
| UsdtDepositIndex | core | core | unmatched | [0x02f802...7118](https://snowtrace.io/address/0x02f802e38d22405fa4e1993858e7bb5378777118) |
| UsdtDepositIndexTUP | core | core | unmatched | [0x5f6847...1e9f](https://snowtrace.io/address/0x5f6847cac849d67acfe2da9ccaff3df11f9e1e9f) |
| UsdtPool | vault_pool | vault_pool | likely in scope | [0xb02c43...2cf7](https://snowtrace.io/address/0xb02c43bfe00d03ecae72bbb6960b23fc0be22cf7) |
| UsdtPoolTUP | vault_pool | vault_pool | likely in scope | [0xd222e1...bca1](https://snowtrace.io/address/0xd222e10d7fe6b7f9608f14a8b5cf703c74efbca1) |
| VectorFinanceFacet | core | core | audited (TP) | [0xa22eba...db8e](https://snowtrace.io/address/0xa22ebacf90fcf5cd5c8d09daffb52d34f407db8e) |
| WavaxBorrowIndex | vault_pool | vault_pool | unmatched | [0x8cfb12...9815](https://snowtrace.io/address/0x8cfb12c33f159d12f9ca76dac6f819a7823e9815) |
| WavaxBorrowIndexTUP | vault_pool | vault_pool | unmatched | [0x7201e8...dbb1](https://snowtrace.io/address/0x7201e8cb96ff5bdfa69377f2f29a21027ff7dbb1) |
| WavaxDepositIndex | core | core | unmatched | [0xcd5779...420d](https://snowtrace.io/address/0xcd5779708841007cba891efdf5aa7b01e539420d) |
| WavaxDepositIndexTUP | core | core | unmatched | [0xab764b...2ad2](https://snowtrace.io/address/0xab764b1e960e346a7f5c8cc92d5750d0f0782ad2) |
| WavaxPoolTUP | vault_pool | vault_pool | likely in scope | [0xd26e50...42f5](https://snowtrace.io/address/0xd26e504fc642b96751fd55d3e68af295806542f5) |
| WavaxVariableUtilisationRatesCalculator | peripheral | peripheral | unmatched | [0x3f13aa...e303](https://snowtrace.io/address/0x3f13aa421fce99a68c9b9687156a2212d2d4e303) |
| YieldYakFacet | strategy | strategy | audited (TP) | [0xe06e2e...9f78](https://snowtrace.io/address/0xe06e2e12b352f93ba02faa23ffce8cebf6f89f78) |
| unnamed | unknown | unknown | unmatched | [0x569ab1...0993](https://snowtrace.io/address/0x569ab19c6db31b3eeacb83b88cacfce3c15c0993) |
| unnamed | unknown | unknown | unmatched | [0xbbfe1d...ccc3](https://snowtrace.io/address/0xbbfe1de572b1ea81d208df6c490327242e3accc3) |
| unnamed | unknown | unknown | unmatched | [0xd8659a...2072](https://snowtrace.io/address/0xd8659a6ef66a94c8d6fe469fd6f291e7c1c22072) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 28 proxies on 42161, 43114. 1 follow EIP-1967 / UUPS patterns; 2 are beacon proxies. 4 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 2 distinct deployer addresses: 0xa3a7b6...0eec, 0xbac446...f036, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 118 | 31 | 87 | 26.3% |
| **Total** | 118 | 31 | 87 | 26.3% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | AstraSec AuditReport DeltaPrime Final | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | blocksec deltaprime v1.0 signed | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | DeltaPrime Review Piotr Szlachciak | unspecified | direct | not available |
| unknown | PeckShield | PeckShield Audit Report DeltaPrime v1.0 | unspecified | direct | not available |
| unknown | PeckShield | PeckShield Audit Report DeltaPrime v2.1 | unspecified | direct | not available |
| unknown | Chainsulting | Smart Contract Audit DeltaPrime Protocol 04112022 | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://docs.deltaprime.io/files/13XzwExmmyJMwtXJHHnk](https://docs.deltaprime.io/files/13XzwExmmyJMwtXJHHnk) - audit_report_link
- [https://docs.deltaprime.io/files/5yI0skBcuue2VDRrSHe3](https://docs.deltaprime.io/files/5yI0skBcuue2VDRrSHe3) - audit_report_link
- [https://docs.deltaprime.io/files/bZaqM2l8IImsFcFZlt5C](https://docs.deltaprime.io/files/bZaqM2l8IImsFcFZlt5C) - audit_report_link
- [https://docs.deltaprime.io/files/c3sTl9tbJdlxmciC0uEF](https://docs.deltaprime.io/files/c3sTl9tbJdlxmciC0uEF) - audit_report_link
- [https://docs.deltaprime.io/files/GOHhM9GKf2yHMKbpSwWl](https://docs.deltaprime.io/files/GOHhM9GKf2yHMKbpSwWl) - audit_report_link
- [https://docs.deltaprime.io/files/h3lxTPcH9ZDRE5K6olXG](https://docs.deltaprime.io/files/h3lxTPcH9ZDRE5K6olXG) - audit_report_link
- [https://docs.deltaprime.io/files/IreclelaLKTPwyVJgvdt](https://docs.deltaprime.io/files/IreclelaLKTPwyVJgvdt) - audit_report_link
- [https://docs.deltaprime.io/files/IUek9AsEaOmN3l99q6Sm](https://docs.deltaprime.io/files/IUek9AsEaOmN3l99q6Sm) - audit_report_link
- [https://docs.deltaprime.io/files/lV7TmzeAjJP7FzcCFI5D](https://docs.deltaprime.io/files/lV7TmzeAjJP7FzcCFI5D) - audit_report_link
- [https://docs.deltaprime.io/files/mqtQ48KgXeZy45viMTmy](https://docs.deltaprime.io/files/mqtQ48KgXeZy45viMTmy) - audit_report_link
- [https://docs.deltaprime.io/files/MUo7Qp7zc53M7Fx66ga6](https://docs.deltaprime.io/files/MUo7Qp7zc53M7Fx66ga6) - audit_report_link
- [https://docs.deltaprime.io/protocol/security/audits](https://docs.deltaprime.io/protocol/security/audits) - audit_report_link
- [https://docs.deltaprime.io/protocol/security/audits.md](https://docs.deltaprime.io/protocol/security/audits.md) - audit_report_link
- [https://docs.deltaprime.io/protocol/security/bug-bounty](https://docs.deltaprime.io/protocol/security/bug-bounty) - audit_report_link
- [https://drive.google.com/drive/folders/1iYpGBpQ5KqQaBe4KIpWSOEkFZTIhiP_s?usp=sharing](https://drive.google.com/drive/folders/1iYpGBpQ5KqQaBe4KIpWSOEkFZTIhiP_s?usp=sharing) - audit_report_link
- [https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/AstraSec-AuditReport-DeltaPrime-Final.pdf](https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/AstraSec-AuditReport-DeltaPrime-Final.pdf) - audit_report_link
- [https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/blocksec_deltaprime_v1.0-preview.pdf](https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/blocksec_deltaprime_v1.0-preview.pdf) - audit_report_link
- [https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/blocksec_deltaprime_v1.0-signed.pdf](https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/blocksec_deltaprime_v1.0-signed.pdf) - audit_report_link
- [https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/DeltaPrime-Review-Piotr-Szlachciak.pdf](https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/DeltaPrime-Review-Piotr-Szlachciak.pdf) - audit_report_link
- [https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/PeckShield-Audit-Report-DeltaPrime-v1.0.pdf](https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/PeckShield-Audit-Report-DeltaPrime-v1.0.pdf) - audit_report_link
- [https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/PeckShield-Audit-Report-DeltaPrime-v2.0.pdf](https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/PeckShield-Audit-Report-DeltaPrime-v2.0.pdf) - audit_report_link
- [https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/PeckShield-Audit-Report-DeltaPrime-v2.1.pdf](https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/PeckShield-Audit-Report-DeltaPrime-v2.1.pdf) - audit_report_link
- [https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/PeckShield-Audit-Report-DeltaPrime.pdf](https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/PeckShield-Audit-Report-DeltaPrime.pdf) - audit_report_link
- [https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf](https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/blob/main/audits/Smart_Contract_Audit_DeltaPrime_Protocol_04112022.pdf) - audit_report_link
- [https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/tree/main/audits](https://github.com/DeltaPrimeLabs/deltaprime-contracts-v2/tree/main/audits) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - AstraSec AuditReport DeltaPrime Final
- unknown - discovery-ingest-placeholder - blocksec deltaprime v1.0 signed
- unknown - discovery-ingest-placeholder - DeltaPrime Review Piotr Szlachciak
- unknown - PeckShield - PeckShield Audit Report DeltaPrime v1.0
- unknown - PeckShield - PeckShield Audit Report DeltaPrime v2.1
- unknown - Chainsulting - Smart Contract Audit DeltaPrime Protocol 04112022

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/deltaprime.json
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

- **Generated at:** 2026-05-05T20:43:08.347Z
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
