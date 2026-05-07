# Agentic Brief: Wombat Exchange

## Project Overview

- **Project:** Wombat Exchange (wombat-exchange)
- **Website:** wombat.exchange
- **Category:** Dexs
- **Chains (topography):** 1, 10, 56, 137, 8453, 42161, 43114, 534352
- **Chains (DeFiLlama):** 1, 10, 56, 137, 8453, 42161, 43114, 534352
- **TVL:** $32,212,377 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 7 audits; most recent 2026-05-02 (3 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Wombat Exchange has 150 deployed contract rows in current topography. This brief renders the 150 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-0dc929c6; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 150 contracts across 8 chains. 8 have TP audit coverage (5.3%); 142 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BridgeToken | token | token | likely in scope | [0xc0b314...0cfb](https://etherscan.io/address/0xc0b314a8c08637685fc3dafc477b92028c540cfb) |
| DynamicPoolV2 | vault_pool | vault_pool | likely in scope | [0x5fabce...6454](https://etherscan.io/address/0x5fabce763446344a912d5cbf84b0e6541a376454) |
| HighCovRatioFeePoolV2 | vault_pool | vault_pool | likely in scope | [0x4705b4...6134](https://etherscan.io/address/0x4705b477d35112f7b7ca2bc5059ed9b78bb46134) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x0020a8...0db6](https://etherscan.io/address/0x0020a8890e723cd94660a5404c4bccbb91680db6) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x05a33c...4d32](https://etherscan.io/address/0x05a33c0eaf81367ce953d2dcd4ea1be8758f4d32) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x3161f4...e854](https://etherscan.io/address/0x3161f40ea6c0c4cc8b2433d6d530ef255816e854) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x647cc8...ac81](https://etherscan.io/address/0x647cc8816c2d60a5ff4d1ffef27a5b3637d5ac81) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0x89b88a...af95](https://etherscan.io/address/0x89b88a45e23978b38a14695b63f475d4e4ccaf95) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x9c02ea...25cc](https://etherscan.io/address/0x9c02eaf31efe3fee36ebe5aebca12ca979df25cc) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0xa45c0a...3800](https://etherscan.io/address/0xa45c0abeef67c363364e0e73832df9986aba3800) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xcf2e56...0536](https://etherscan.io/address/0xcf2e56e086fcd21eab3614a5a78c8ae27c2f0536) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0xe43c16...3c21](https://etherscan.io/address/0xe43c1695df76cca4d6079061924d7150fd553c21) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0xef0b4d...af94](https://etherscan.io/address/0xef0b4d9dba6ea82b59437fe5e37b16a2896aaf94) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0xf8e32c...0734](https://etherscan.io/address/0xf8e32ca46ac28799c8fb7dce1ac11a4541160734) |
| TokenImplementation | token | token | likely in scope | [0x0fd04a...4ee6](https://etherscan.io/address/0x0fd04a68d3c3a692d6fa30384d1a87ef93554ee6) |
| unnamed | unknown | unknown | unmatched | [0x93d911...6dea](https://etherscan.io/address/0x93d91122be71becb6df68652b869b0641fce6dea) |

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BridgeToken | token | token | likely in scope | [0xd2612b...a668](https://optimistic.etherscan.io/address/0xd2612b256f6f76fea8c6fbca0bf3166d0d13a668) |
| CrossChainPool | vault_pool | vault_pool | audited (TP) | [0xa1acc6...2acf](https://optimistic.etherscan.io/address/0xa1acc689a29ad9d0f703afcb7d858c4a8ffa2acf) |
| DynamicPoolV2 | vault_pool | vault_pool | likely in scope | [0x0700ad...b4a4](https://optimistic.etherscan.io/address/0x0700ad3fded9eb2714e0ed4a1408a2a8344eb4a4) |
| HighCovRatioFeePoolV2 | vault_pool | vault_pool | likely in scope | [0x983ce4...1372](https://optimistic.etherscan.io/address/0x983ce4371ba7eb5cfbb2e52527e47941341b1372) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x1a0231...6fbd](https://optimistic.etherscan.io/address/0x1a023186ef2994249120cc7faedbea07f40c6fbd) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x489818...3d01](https://optimistic.etherscan.io/address/0x489818f2eeaef737105887710f7c5b9323ad3d01) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | audited (TP) | [0x50a39b...bd10](https://optimistic.etherscan.io/address/0x50a39b94b1dc8472faa08c36a3ef5b0a01c5bd10) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x6bb82a...f919](https://optimistic.etherscan.io/address/0x6bb82a9b0b9b9716b885baeefdbe47b685a0f919) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x7b1f9c...9623](https://optimistic.etherscan.io/address/0x7b1f9c537efca25501d15a77bdc1d23287839623) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xb86ba6...cafa](https://optimistic.etherscan.io/address/0xb86ba65b75d34402bf377cf83b184554a18fcafa) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0xe91cfd...a279](https://optimistic.etherscan.io/address/0xe91cfd7f8e5a5a1ea4803fcf781e1c8d6ffca279) |
| TokenImplementation | token | token | likely in scope | [0xb91e36...3808](https://optimistic.etherscan.io/address/0xb91e3638f82a1facb28690b37e3aae45d2c33808) |
| unnamed | unknown | unknown | unmatched | [0x51e073...9606](https://optimistic.etherscan.io/address/0x51e073d92b0c226f7b0065909440b18a85769606) |

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| CrossChainPool | vault_pool | vault_pool | audited (TP) | [0x35560d...0482](https://bscscan.com/address/0x35560d75047589885f718a80ad9918b5fcd60482) |
| DynamicPoolV2 | vault_pool | vault_pool | likely in scope | [0x024d75...f29b](https://bscscan.com/address/0x024d75ea2bb81210a9218619ea7df35239b1f29b) |
| DynamicPoolV2 | vault_pool | vault_pool | likely in scope | [0x108c99...3c02](https://bscscan.com/address/0x108c990c93fa8e3cd88ddb13594d39f09d9b3c02) |
| DynamicPoolV2 | vault_pool | vault_pool | likely in scope | [0x866f96...1a18](https://bscscan.com/address/0x866f9612003ff73df948d6d043dfe0b4927e1a18) |
| DynamicPoolV2 | vault_pool | vault_pool | likely in scope | [0xa3f645...4f6c](https://bscscan.com/address/0xa3f6455cad5b5c12a9f1682f75631c6d06c14f6c) |
| DynamicPoolV2 | vault_pool | vault_pool | likely in scope | [0xa874c8...c7f5](https://bscscan.com/address/0xa874c8ca588287de77d73365d366ec8958c7c7f5) |
| DynamicPoolV2 | vault_pool | vault_pool | likely in scope | [0xb7df4a...b80f](https://bscscan.com/address/0xb7df4a2000a116ac18f10da9a2e418cda22db80f) |
| DynamicPoolV2 | vault_pool | vault_pool | likely in scope | [0xf2fd53...6b68](https://bscscan.com/address/0xf2fd53151444348c9734b2e19488651f38b36b68) |
| HighCovRatioFeePool | vault_pool | vault_pool | likely in scope | [0x90aea5...898d](https://bscscan.com/address/0x90aea561c8ad5daa5a3ff0b9364382d5f4f7898d) |
| HighCovRatioFeePool | vault_pool | vault_pool | likely in scope | [0x9a5d0d...10e0](https://bscscan.com/address/0x9a5d0de1eee1fd5a1a507df677c7f26acaa510e0) |
| HighCovRatioFeePool | vault_pool | vault_pool | likely in scope | [0x9ea89d...cd36](https://bscscan.com/address/0x9ea89d71636ec3d2cb539e0452b411f03d35cd36) |
| HighCovRatioFeePoolV2 | vault_pool | vault_pool | likely in scope | [0x141298...1e98](https://bscscan.com/address/0x141298e32a058c82bb73a0b57e85450365561e98) |
| HighCovRatioFeePoolV2 | vault_pool | vault_pool | likely in scope | [0x1ff949...9503](https://bscscan.com/address/0x1ff949797c78777fd9e66bff22fdf78759179503) |
| HighCovRatioFeePoolV2 | vault_pool | vault_pool | likely in scope | [0x2120c8...36b4](https://bscscan.com/address/0x2120c8631bf156ef0f5302dc0b20ce4fa19436b4) |
| HighCovRatioFeePoolV2 | vault_pool | vault_pool | likely in scope | [0x342126...175b](https://bscscan.com/address/0x342126f63e73f95ba5ed66dd162564ed881f175b) |
| HighCovRatioFeePoolV2 | vault_pool | vault_pool | likely in scope | [0x804585...58f1](https://bscscan.com/address/0x804585c7eba7062277603fc13efaa87b4ab658f1) |
| HighCovRatioFeePoolV2 | vault_pool | vault_pool | likely in scope | [0xa8202e...b947](https://bscscan.com/address/0xa8202e16c901a3b2361fd746facc6318a94db947) |
| HighCovRatioFeePoolV2 | vault_pool | vault_pool | likely in scope | [0xb0d508...1043](https://bscscan.com/address/0xb0d5083a95dedab87a25db7bca6a6d3b04801043) |
| HighCovRatioFeePoolV2 | vault_pool | vault_pool | likely in scope | [0xcd3227...da5c](https://bscscan.com/address/0xcd32277631da27b4cc4a229b2dcf1e8ece3cda5c) |
| HighCovRatioFeePoolV2 | vault_pool | vault_pool | likely in scope | [0xde509f...6dae](https://bscscan.com/address/0xde509fe1555ab907e5c29f987ba0be1ac0626dae) |
| HighCovRatioFeePoolV2 | vault_pool | vault_pool | likely in scope | [0xf84c59...c9de](https://bscscan.com/address/0xf84c5999cd8667fa54006aca7fef6c31f75cc9de) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x0029b7...4183](https://bscscan.com/address/0x0029b7e8e9ed8001c868aa09c74a1ac6269d4183) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x052045...74b2](https://bscscan.com/address/0x0520451b19ad0bb00ed35ef391086a692cfc74b2) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x059208...c348](https://bscscan.com/address/0x0592083b285aa75b9c8bad2485c6cccf93ccc348) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x05f727...d09a](https://bscscan.com/address/0x05f727876d7c123b9bb41507251e2afd81ead09a) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x083640...9f55](https://bscscan.com/address/0x083640c5dbd5a8ddc30100fb09b45901e12f9f55) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x0c735f...41de](https://bscscan.com/address/0x0c735f84bd7eda8f8176236091af8068bb6c41de) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x1b507b...6d35](https://bscscan.com/address/0x1b507b97c89ede3e40d1b2ed92972197c6276d35) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | audited (TP) | [0x1ee156...4bef](https://bscscan.com/address/0x1ee15673e07105bcf360139fa8cafebdd7754bef) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x277e77...c903](https://bscscan.com/address/0x277e777f7687239b092c8845d4d2cd083a33c903) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x2c5464...7955](https://bscscan.com/address/0x2c5464b9052319e3d76f8279031f04e4b7fd7955) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x2ea772...5da4](https://bscscan.com/address/0x2ea772346486972e7690219c190dadda40ac5da4) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x312bc7...5fb0](https://bscscan.com/address/0x312bc7eaaf93f1c60dc5afc115fccde161055fb0) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0x3da628...b0cc](https://bscscan.com/address/0x3da62816dd31c56d9cdf22c6771ddb892cb5b0cc) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x48f6a8...2a14](https://bscscan.com/address/0x48f6a8a0158031baf8ce3e45344518f1e69f2a14) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x4dfa92...7e12](https://bscscan.com/address/0x4dfa92842d05a790252a7f374323b9c86d7b7e12) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | audited (TP) | [0x5b573f...1b6f](https://bscscan.com/address/0x5b573f2e034e37cc883f2a614bddc77b07081b6f) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x6569dd...40f3](https://bscscan.com/address/0x6569ddc1cc2648c89bc8025046a7dd65eb8940f3) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x6f1c68...5bfa](https://bscscan.com/address/0x6f1c689235580341562cdc3304e923cc8fad5bfa) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x84a14a...3d7a](https://bscscan.com/address/0x84a14a10e7258c68413168c98e905483f9183d7a) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x8ad47d...9da2](https://bscscan.com/address/0x8ad47d7ab304272322513ee63665906b64a49da2) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x8b892b...e060](https://bscscan.com/address/0x8b892b6ea1d0e5b29b719d6bd6eb9354f1cde060) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x8df112...dbae](https://bscscan.com/address/0x8df1126de13bcfef999556899f469d64021adbae) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x949856...201c](https://bscscan.com/address/0x9498563e47d7cfdfa22b818bb8112781036c201c) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x9a39f4...3d28](https://bscscan.com/address/0x9a39f4ab3f52026432835dee6d3db721d95f3d28) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xa61dcc...8c27](https://bscscan.com/address/0xa61dccc6c6e34c8fbf14527386ca35589e9b8c27) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xaded24...efdc](https://bscscan.com/address/0xaded24b510a137b05a8ed958a029dacd6a59efdc) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xb0219a...edb0](https://bscscan.com/address/0xb0219a90ef6a24a237bc038f7b7a6eac5e01edb0) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xb8b1b7...f684](https://bscscan.com/address/0xb8b1b72a9b9ba90e2539348fec1ad6b265f9f684) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xbed9b7...7b80](https://bscscan.com/address/0xbed9b758a681d73a95ab4c01309c63aa16297b80) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xc26b7c...5a2c](https://bscscan.com/address/0xc26b7cbe7e695a0d11a8cb96140d1cd502945a2c) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xc897a2...4a9f](https://bscscan.com/address/0xc897a2ae2e45f0d7ba8cbe397208c3e9f8914a9f) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xea6cdd...7892](https://bscscan.com/address/0xea6cdd9e8819bbf7f8791e7d084d9f0a6afa7892) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xeeb5a7...ce2e](https://bscscan.com/address/0xeeb5a751e0f5231fc21c7415c4a4c6764f67ce2e) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xf1e604...3fef](https://bscscan.com/address/0xf1e604e9a31c3b575f91cf008445b7ce06bf3fef) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xfcd11c...8d46](https://bscscan.com/address/0xfcd11c01c14e4c12c3f9835cd5192fe774038d46) |
| VeWom | core | core | unmatched | [0xa31ed0...6f02](https://bscscan.com/address/0xa31ed01973affd700fdb9bb26b736a9046396f02) |
| VolatilePoolV2 | vault_pool | vault_pool | audited (TP) | [0x8cf241...4073](https://bscscan.com/address/0x8cf241ae9df7977202c37ffc8b890761705b4073) |
| WombatERC20 | token | token | unmatched | [0xad6742...4fb1](https://bscscan.com/address/0xad6742a35fb341a9cc6ad674738dd8da98b94fb1) |

### polygon (chain_id 137)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0x4705b4...6134](https://polygonscan.com/address/0x4705b477d35112f7b7ca2bc5059ed9b78bb46134) |
| unnamed | unknown | unknown | unmatched | [0x25faa3...82a4](https://polygonscan.com/address/0x25faa3176efa09658e65853f077810bb2cca82a4) |
| unnamed | unknown | unknown | unmatched | [0xef420c...e07a](https://polygonscan.com/address/0xef420c965d80fb24a211155a6b489c0d62b7e07a) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BridgeToken | token | token | likely in scope | [0xd9541b...5d64](https://basescan.org/address/0xd9541b08b375d58ae104ec247d7443d2d7235d64) |
| HighCovRatioFeePoolV2 | vault_pool | vault_pool | likely in scope | [0x9a59f5...3ba6](https://basescan.org/address/0x9a59f56f96a780f74167ec911ca59699bfc73ba6) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x20d7b9...ecd1](https://basescan.org/address/0x20d7b9ed2c4e2dcc55f9b463975b21bbf2a6ecd1) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0xc9bfc3...5d1a](https://basescan.org/address/0xc9bfc3efefe4cf96877009f75a61f5c1937e5d1a) |
| TokenImplementation | token | token | likely in scope | [0x553785...d904](https://basescan.org/address/0x5537857664b0f9efe38c9f320f75fef23234d904) |
| unnamed | unknown | unknown | unmatched | [0x34e2f9...f873](https://basescan.org/address/0x34e2f923bba206358ece221af73e8d121837f873) |
| unnamed | unknown | unknown | unmatched | [0xe85f62...0c73](https://basescan.org/address/0xe85f625404eef8a55d9a8b385777d7c8e45e0c73) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BridgeToken | token | token | likely in scope | [0x7b5eb3...df96](https://arbiscan.io/address/0x7b5eb3940021ec0e8e463d5dbb4b7b09a89ddf96) |
| DynamicPoolV2 | vault_pool | vault_pool | likely in scope | [0x3dbf3e...10fb](https://arbiscan.io/address/0x3dbf3e359a570d46cf5a663ac92dc7cae77110fb) |
| DynamicPoolV2 | vault_pool | vault_pool | likely in scope | [0x4d1cc8...7053](https://arbiscan.io/address/0x4d1cc84a33462c35ad3dd68756d330cbba087053) |
| HighCovRatioFeePoolV2 | vault_pool | vault_pool | likely in scope | [0x38d225...d5ad](https://arbiscan.io/address/0x38d2259fdeedc94eaf915a872139c985ce36d5ad) |
| HighCovRatioFeePoolV2 | vault_pool | vault_pool | likely in scope | [0x44a0e2...a642](https://arbiscan.io/address/0x44a0e2ac2c99d5cb2910ec1784dd158b7fa3a642) |
| HighCovRatioFeePoolV2 | vault_pool | vault_pool | likely in scope | [0x6a4b59...f5e1](https://arbiscan.io/address/0x6a4b5988692f8c47ea3bccfb8a127288db61f5e1) |
| HighCovRatioFeePoolV2 | vault_pool | vault_pool | likely in scope | [0x82e62f...1518](https://arbiscan.io/address/0x82e62f4e174e3c5e1641df670c91ac6ab8541518) |
| HighCovRatioFeePoolV2 | vault_pool | vault_pool | likely in scope | [0x9cbee5...5dee](https://arbiscan.io/address/0x9cbee53a48390a3205b14f6b8e48ca81fe105dee) |
| HighCovRatioFeePoolV2 | vault_pool | vault_pool | likely in scope | [0xbed050...927d](https://arbiscan.io/address/0xbed0509801634ccc29fa9f2fad764bf194c7927d) |
| HighCovRatioFeePoolV2 | vault_pool | vault_pool | likely in scope | [0xc096ff...a9fa](https://arbiscan.io/address/0xc096ff2606152ed2a06dd12f15a3c0466aa5a9fa) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x12fa5a...f978](https://arbiscan.io/address/0x12fa5ab079cff564d599466d39715d35d90af978) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x20d7ee...02f1](https://arbiscan.io/address/0x20d7ee728900848752fa280fad51af40c47302f1) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0x29eeb2...ec91](https://arbiscan.io/address/0x29eeb257a2a6ecde2984acedf80a1b687f18ec91) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0x3257ea...a3b1](https://arbiscan.io/address/0x3257eaa9c919fe01ef628fe9031ba2cd8927a3b1) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | audited (TP) | [0x39a2f5...0b1e](https://arbiscan.io/address/0x39a2f59875bc636b7efecac30b6e97066a850b1e) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0x3cc8c8...4d4b](https://arbiscan.io/address/0x3cc8c886575968642cab9f430261c81c5b044d4b) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0x488b34...3efc](https://arbiscan.io/address/0x488b34f704a601daeef14135146a3da79f2d3efc) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x4a8686...96e0](https://arbiscan.io/address/0x4a8686df475d4c44324210ffa3fc1dea705296e0) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x90ecdd...38b6](https://arbiscan.io/address/0x90ecddec4e4116e30769a4e1ea52c319aca338b6) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0x917caf...4c1a](https://arbiscan.io/address/0x917caf2b4d6040a9d67a5f8cefc4f89d1b214c1a) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0x956454...0401](https://arbiscan.io/address/0x956454c7be9318863297309183c79b793d370401) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xa6ef6c...03e5](https://arbiscan.io/address/0xa6ef6c45ebfdbc13f6d032fbdfec9b389c1603e5) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0xabf19e...c8bb](https://arbiscan.io/address/0xabf19eadb08693278fdbad35cb4e3c1d6484c8bb) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xb9bdfe...b77b](https://arbiscan.io/address/0xb9bdfe449da096256fe7954ef61a18ee195db77b) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xc6bc78...6cd1](https://arbiscan.io/address/0xc6bc781e20f9323012f6e422bdf552ff06ba6cd1) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0xc7a6ba...1974](https://arbiscan.io/address/0xc7a6ba5f28993badb566007bd2e0cb253c431974) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xcf20fd...4849](https://arbiscan.io/address/0xcf20fda54e37f3fb456930f02fb07fccf49e4849) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0xd64816...05f3](https://arbiscan.io/address/0xd64816fbdf50a1c4aea456a4006ad21a928305f3) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xe14302...58d9](https://arbiscan.io/address/0xe14302040c0a1eb6fb5a4a79efa46d60029358d9) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xe7159f...6f48](https://arbiscan.io/address/0xe7159f15e7b1d6045506b228a1ed2136dcc56f48) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0xe78876...1145](https://arbiscan.io/address/0xe78876c360716f2225f55a6726b32324fe1b1145) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xee9b42...50cd](https://arbiscan.io/address/0xee9b42b40852a53c7361f527e638b485d49750cd) |
| VolatilePoolV2 | vault_pool | vault_pool | audited (TP) | [0x616264...1d06](https://arbiscan.io/address/0x616264fbd5732aa679921c0130a4ae605d981d06) |
| unnamed | unknown | unknown | unmatched | [0x71cea3...4cbc](https://arbiscan.io/address/0x71cea3372c1874207dbe54edc38d5659dce34cbc) |

### avalanche (chain_id 43114)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BridgeToken | token | token | likely in scope | [0xa15e45...3382](https://snowtrace.io/address/0xa15e4544d141aa98c4581a1ea10eb9048c3b3382) |
| DynamicPoolV2 | vault_pool | vault_pool | likely in scope | [0x640e7e...8f47](https://snowtrace.io/address/0x640e7ecd9346aa7190efeb47be24742086f78f47) |
| HighCovRatioFeePoolV2 | vault_pool | vault_pool | likely in scope | [0xe5232c...2e43](https://snowtrace.io/address/0xe5232c2837204ee66952f365f104c09140fb2e43) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0x34e2f9...f873](https://snowtrace.io/address/0x34e2f923bba206358ece221af73e8d121837f873) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x74163b...39e9](https://snowtrace.io/address/0x74163b79733aea2d9c4ced777dc49d591db739e9) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0x89b88a...af95](https://snowtrace.io/address/0x89b88a45e23978b38a14695b63f475d4e4ccaf95) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0x911a98...223b](https://snowtrace.io/address/0x911a98f54da5355eaba1c8d57933ae5493c4223b) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xbba437...eb77](https://snowtrace.io/address/0xbba43749efc1bc29ea434d88ebaf8a97dc7aeb77) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xc12c0c...62d0](https://snowtrace.io/address/0xc12c0ced34b115655234e8a4db87ebc8f6f362d0) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | unmatched | [0xc9bfc3...5d1a](https://snowtrace.io/address/0xc9bfc3efefe4cf96877009f75a61f5c1937e5d1a) |
| OptimizedTransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xe3abc2...9d87](https://snowtrace.io/address/0xe3abc29b035874a9f6dcdb06f8f20d9975069d87) |
| TokenBridge | token | token | likely in scope | [0x0e082f...8052](https://snowtrace.io/address/0x0e082f06ff657d94310cb8ce8b0d9a04541d8052) |
| unnamed | unknown | unknown | unmatched | [0x108c99...3c02](https://snowtrace.io/address/0x108c990c93fa8e3cd88ddb13594d39f09d9b3c02) |
| unnamed | unknown | unknown | unmatched | [0xd0599d...3786](https://snowtrace.io/address/0xd0599db1edb0ce601afcc59779fa21fefac83786) |
| unnamed | unknown | unknown | unmatched | [0xe85f62...0c73](https://snowtrace.io/address/0xe85f625404eef8a55d9a8b385777d7c8e45e0c73) |
| unnamed | unknown | unknown | unmatched | [0xefec1c...69c7](https://snowtrace.io/address/0xefec1c8a0aceb38f6c24327c709acb24047169c7) |

### scroll (chain_id 534352)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| unnamed | unknown | unknown | unmatched | [0x15dcc2...a17f](https://scrollscan.com/address/0x15dcc2da1a73194c9c5bb83ecda86251f0b1a17f) |
| unnamed | unknown | unknown | unmatched | [0x80f088...37ce](https://scrollscan.com/address/0x80f088ae72db6d1ac337340cd6aa0eb1f67337ce) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 76 proxies on 1, 10, 56, 8453, 42161, 43114. 72 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 33 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 3 distinct deployer addresses: 0x9e0310...feea, 0xcb3bb7...d045, 0xe16522...b915, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 150 | 8 | 142 | 5.3% |
| **Total** | 150 | 8 | 142 | 5.3% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | 2023 Jun Wombat Exchange Zokyo audit report a68b1ad465 | unspecified | direct | not available |
| unknown | discovery-ingest-placeholder | docs.wombat.exchange/developers/bug-bounty | unspecified | direct | not available |
| unknown | PeckShield | PeckShield Audit Report Wombat v1.0 | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 3 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://docs.wombat.exchange/developers/bug-bounty](https://docs.wombat.exchange/developers/bug-bounty) - audit_report_link
- [https://docs.wombat.exchange/resources/security-audits.md](https://docs.wombat.exchange/resources/security-audits.md) - audit_report_link
- [https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Wombat-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Wombat-v1.0.pdf) - audit_report_link
- [https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV2-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV2-v1.0.pdf) - audit_report_link
- [https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV3-v1.1.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV3-v1.1.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.05.10%20-%20Final%20-%20JOJO%20Exchange%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.05.10%20-%20Final%20-%20JOJO%20Exchange%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.07.03%20-%20Final%20-%20Hubble%20Exchange%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.07.03%20-%20Final%20-%20Hubble%20Exchange%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.01.18%20-%20Final%20-%20JOJO%20Exchange%20Update%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.01.18%20-%20Final%20-%20JOJO%20Exchange%20Update%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20WombatExchange_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20WombatExchange_en-us.pdf) - audit_report_link
- [https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%2520Audit%2520Report%2520-%2520WombatExchange_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%2520Audit%2520Report%2520-%2520WombatExchange_en-us.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-03-offchain-custom-fee-token-exchange-rate-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-03-offchain-custom-fee-token-exchange-rate-securityreview.pdf) - audit_report_link
- [https://github.com/wombat-exchange/v1-core/blob/master/audits/zokyo/2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf](https://github.com/wombat-exchange/v1-core/blob/master/audits/zokyo/2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf) - audit_report_link
- [https://github.com/wombat-exchange/v1-core/blob/master/audits/zokyo/2023-Sep-Wombat_audit_report.pdf](https://github.com/wombat-exchange/v1-core/blob/master/audits/zokyo/2023-Sep-Wombat_audit_report.pdf) - audit_report_link
- [https://github.com/wombat-exchange/v1-core/blob/master/audits/zokyo/zokyo_wombat_audit_report.pdf](https://github.com/wombat-exchange/v1-core/blob/master/audits/zokyo/zokyo_wombat_audit_report.pdf) - audit_report_link
- [https://immunefi.com/bounty/wombatexchange](https://immunefi.com/bounty/wombatexchange) - audit_report_link
- [https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-1](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-1) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - 2023 Jun Wombat Exchange Zokyo audit report a68b1ad465
- unknown - discovery-ingest-placeholder - docs.wombat.exchange/developers/bug-bounty
- unknown - PeckShield - PeckShield Audit Report Wombat v1.0

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/wombat-exchange.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $406,881.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:43:21.839Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-0dc929c6
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $406,881.
