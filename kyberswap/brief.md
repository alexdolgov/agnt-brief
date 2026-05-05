# Agentic Brief: KyberSwap Classic

## Project Overview

- **Project:** KyberSwap Classic (kyberswap)
- **Website:** kyberswap.com
- **Category:** Dexs
- **Chains (topography):** 1, 10, 56, 137, 146, 250, 1101, 8453, 42161, 43114, 59144, 534352
- **Chains (DeFiLlama):** 1, 10, 25, 56, 137, 250, 324, 42161, 43114, 59144, 534352, 1313161554
- **TVL:** $12,788,634 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment 2026-01-06
- **Audit history:** 5 audits; most recent 2026-01-16 (109 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** mid_tvl_commercial_target

KyberSwap Classic has 2561 deployed contract rows in current topography. This brief renders the 1902 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-c067f024; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment 2026-01-06 (119 days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 1902 contracts across 12 chains. 54 have TP audit coverage (2.8%); 1848 do not.

Mid-TVL commercial target. Coverage gaps can be scoped into a focused agentic review.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AdminUpgradeabilityProxy | proxy | proxy | unmatched | [0xdefa4e...7202](https://etherscan.io/address/0xdefa4e8a7bcba345f687a2f1456f5edd9ce97202) |
| AntiSnipAttackPositionManager | controller | controller | audited (TP) | [0xe222fb...a480](https://etherscan.io/address/0xe222fbe074a436145b255442d919e4e3a6c6a480) |
| CurvestETHyVaultV2 | vault_pool | vault_pool | likely in scope | [0x2c44ec...73f9](https://etherscan.io/address/0x2c44ec1b4fc45a7c6434c8fbc81b6f35ed0a73f9) |
| DefaultExecutor | core | core | unmatched | [0x41f5d7...b3b5](https://etherscan.io/address/0x41f5d722e6471c338392884088bd03340f50b3b5) |
| DefaultExecutor | core | core | unmatched | [0x6758a6...afd0](https://etherscan.io/address/0x6758a66cd25fef7767a44895041678fc4ae9afd0) |
| DMMFactory | factory | factory | unmatched | [0x833e40...86de](https://etherscan.io/address/0x833e4083b7ae46cea85695c4f7ed25cdad8886de) |
| DMMRouter02 | router | router | likely in scope | [0x1c8725...dbe6](https://etherscan.io/address/0x1c87257f5e8609940bc751a07bb085bb7f8cdbe6) |
| DSLOProtocol | core | core | unmatched | [0xcab2fa...4f6c](https://etherscan.io/address/0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c) |
| EditableERC20 | token | token | unmatched | [0x8d6ceb...fad6](https://etherscan.io/address/0x8d6cebd76f18e1558d4db88138e2defb3909fad6) |
| EIP1967Proxy | proxy | proxy | unmatched | [0xb0b195...1b0b](https://etherscan.io/address/0xb0b195aefa3650a6908f15cdac7d92f8a5791b0b) |
| EpochVotingPowerStrategy | strategy | strategy | unmatched | [0xfbd735...9f8b](https://etherscan.io/address/0xfbd73581af42b26295cf4b88b74a5af71f209f8b) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x2f577a...655d](https://etherscan.io/address/0x2f577a41bec1be1152aeea12e73b7391d15f655d) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0x58f1d0...3f3e](https://etherscan.io/address/0x58f1d0f9bff9d695010c92fb93d100cef5113f3e) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0xd8ac7f...cdb4](https://etherscan.io/address/0xd8ac7f696ae99cd7b689726cf03c5711dd8dcdb4) |
| Factory | factory | factory | unmatched | [0xc7a590...8c4a](https://etherscan.io/address/0xc7a590291e07b9fe9e64b86c58fd8fc764308c4a) |
| KatanaFeeHandler | core | core | unmatched | [0x9fb131...01ca](https://etherscan.io/address/0x9fb131efbac23b735d7764ab12f9e52cc68401ca) |
| KSDistributor | rewards | rewards | unmatched | [0xeae300...6f9c](https://etherscan.io/address/0xeae300ac9409b2072697ca1d5fd137f8bb286f9c) |
| KSElasticLMHelper | peripheral | peripheral | unmatched | [0x35be3f...0870](https://etherscan.io/address/0x35be3f4fd8239a35a7f120756d4d69e5c5e10870) |
| KSElasticLMHelper | peripheral | peripheral | unmatched | [0x6afeb9...05c8](https://etherscan.io/address/0x6afeb9edd6cf44fa8e89b1eee28284e6dd7705c8) |
| KSElasticLMV2 | core | core | unmatched | [0x3d6afe...7a43](https://etherscan.io/address/0x3d6afe2fb73ffed2e3dd00c501a174554e147a43) |
| KSElasticLMV2 | core | core | unmatched | [0xa70a1a...0e0e](https://etherscan.io/address/0xa70a1ad0f91c52c79e177c5a18a7c9e1c4360e0e) |
| KSElasticLMV2 | core | core | unmatched | [0xf2bcdf...6dbd](https://etherscan.io/address/0xf2bcdf38baa52f6b0c1db5b025dfff01ae1d6dbd) |
| KSFactory | factory | factory | unmatched | [0x1c758a...9be5](https://etherscan.io/address/0x1c758af0688502e49140230f6b0ebd376d429be5) |
| KSZapRouterPosition | router | router | likely in scope | [0x0e97c8...9e05](https://etherscan.io/address/0x0e97c887b61ccd952a53578b04763e7134429e05) |
| KSZapRouterPositionPermit | router | router | likely in scope | [0x638d93...cabb](https://etherscan.io/address/0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb) |
| KSZapValidator | core | core | unmatched | [0x291436...a25b](https://etherscan.io/address/0x291436c3d3fee056c95e5f3dcb55a694437da25b) |
| KSZapValidator | core | core | unmatched | [0x2f804f...802c](https://etherscan.io/address/0x2f804fb5f14a35cca829bd19fb2f254be000802c) |
| KSZapValidatorV2Part1 | core | core | unmatched | [0xa16f32...863e](https://etherscan.io/address/0xa16f32442209c6b978431818aa535bcc9ad2863e) |
| KyberGovernance | core | core | unmatched | [0x7ec8fc...a7fe](https://etherscan.io/address/0x7ec8fcc26be7e9e85b57e73083e5fe0550d8a7fe) |
| KyberNetworkCrystal | core | core | unmatched | [0xdd974d...d200](https://etherscan.io/address/0xdd974d5c2e2928dea5f71b9825b8b646686bd200) |
| KyberNetworkTokenV2 | token | token | unmatched | [0xe5e8e8...e4ce](https://etherscan.io/address/0xe5e8e834086f1a964f9a089eb6ae11796862e4ce) |
| KyberStaking | staking | staking | unmatched | [0xeadb96...b3bd](https://etherscan.io/address/0xeadb96f1623176144eba2b24e35325220972b3bd) |
| KyberSwapElasticLM | router | router | likely in scope | [0x7d5ba5...e676](https://etherscan.io/address/0x7d5ba536ab244aaa1ea42ab88428847f25e3e676) |
| LimitOrderProtocol | core | core | unmatched | [0x227b0c...e936](https://etherscan.io/address/0x227b0c196ea8db17a665ea6824d972a64202e936) |
| LiquidityMigrator2 | migration | migration | unmatched | [0x6a65e0...deec](https://etherscan.io/address/0x6a65e062ce8290007301296f3c6ae446af7bdeec) |
| MagicInternetMoneyV1 | core | core | unmatched | [0x99d8a9...17f3](https://etherscan.io/address/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3) |
| MetaAggregationRouterV2 | router | router | likely in scope | [0x6131b5...37b5](https://etherscan.io/address/0x6131b5fae19ea4f9d964eac0408e4408b66337b5) |
| MultiSigWalletWithDailyLimit | governance | governance | unmatched | [0x1b0868...3357](https://etherscan.io/address/0x1b0868fd8a174e979135812db866e5eaed4b3357) |
| MultiSigWalletWithDailyLimit | governance | governance | unmatched | [0x247503...3546](https://etherscan.io/address/0x2475039bf2ecdce2ee4c82954e64be9674f43546) |
| MultiSigWalletWithDailyLimit | governance | governance | unmatched | [0x3eb01b...f650](https://etherscan.io/address/0x3eb01b3391ea15ce752d01cf3d3f09dec596f650) |
| MultiSigWalletWithDailyLimit | governance | governance | unmatched | [0x91c9d4...6f5b](https://etherscan.io/address/0x91c9d4373b077ef8082f468c7c97f2c499e36f5b) |
| MultiSigWalletWithDailyLimit | governance | governance | unmatched | [0xd3ba83...929f](https://etherscan.io/address/0xd3ba835a695aa27268c5062077baef74320e929f) |
| MultiSigWalletWithDailyLimit | governance | governance | unmatched | [0xd706b7...3291](https://etherscan.io/address/0xd706b7f9b446c6524dc16db41176b860118a3291) |
| NoSwappingLiquidationStrategy | strategy | strategy | unmatched | [0x869410...31d7](https://etherscan.io/address/0x8694103ed4927d389f63213619708e550e9631d7) |
| PoolOracle | vault_pool | vault_pool | audited (TP) | [0x049bef...7b09](https://etherscan.io/address/0x049beffdb026d6d1d64cfc8fe29bd12142967b09) |
| QuoterV2 | core | core | audited (TP) | [0x4d47fd...7856](https://etherscan.io/address/0x4d47fd5a29904dae0ef51b1c450c9750f15d7856) |
| RewardPool | vault_pool | vault_pool | likely in scope | [0xd2d0a0...a2e2](https://etherscan.io/address/0xd2d0a0557e5b78e29542d440ec968f9253daa2e2) |
| RewardsDistributor | rewards | rewards | unmatched | [0x5ec0dc...d3b2](https://etherscan.io/address/0x5ec0dcf4f6f55f28550c70b854082993fdc0d3b2) |
| Router | router | router | likely in scope | [0xf9c2b5...eab4](https://etherscan.io/address/0xf9c2b5746c946ef883ab2660bbbb1f10a5bdeab4) |
| TicksFeesReader | peripheral | peripheral | audited (TP) | [0x8fd8cb...dbb3](https://etherscan.io/address/0x8fd8cb948965d9305999d767a02bf79833eadbb3) |
| TokenPositionDescriptor | token | token | audited (TP) | [0x98565f...0bd6](https://etherscan.io/address/0x98565fcad2080c5c19c3136fa367ce371cd40bd6) |
| TreasuryPool | vault_pool | vault_pool | likely in scope | [0x0e590b...0bda](https://etherscan.io/address/0x0e590bb5f02a0c38888bffb45dee050b8fb60bda) |
| UniswapV4KEMHook | router | router | likely in scope | [0x444085...c0c4](https://etherscan.io/address/0x4440854b2d02c57a0dc5c58b7a884562d875c0c4) |
| WethUnwrapper | core | core | unmatched | [0x37334c...5b94](https://etherscan.io/address/0x37334cd06dfecd2e9b3937a6da17853d637a5b94) |
| WhitelistedCollector | treasury | treasury | unmatched | [0x9ed9af...f6b9](https://etherscan.io/address/0x9ed9afb6b4cafbdfb2d833b0e70845997300f6b9) |
| unnamed | unknown | unknown | unmatched | [0x062297...8795](https://etherscan.io/address/0x0622973c3a8893838a3bc0c5309a8c6897148795) |
| unnamed | unknown | unknown | unmatched | [0x1141c1...5016](https://etherscan.io/address/0x1141c1d9dbee4382d00be87137d3d630e4055016) |
| unnamed | unknown | unknown | unmatched | [0x2abe87...3e0d](https://etherscan.io/address/0x2abe8750e4a65584d7452316356128c936273e0d) |
| unnamed | unknown | unknown | unmatched | [0x39a880...b910](https://etherscan.io/address/0x39a8809fbbf22ccaeac450eaf559c076843eb910) |
| unnamed | unknown | unknown | unmatched | [0x444139...80c4](https://etherscan.io/address/0x444139d6b32c1ad0b00f24a616072f74b2f880c4) |
| unnamed | unknown | unknown | unmatched | [0x444552...80c4](https://etherscan.io/address/0x4445520306c9c70952bdfec28f3989f53d9f80c4) |
| unnamed | unknown | unknown | unmatched | [0x4d7a13...c941](https://etherscan.io/address/0x4d7a137a08413a6559419fd7a583473e1684c941) |
| unnamed | unknown | unknown | unmatched | [0x5649b4...23d0](https://etherscan.io/address/0x5649b4dd00780e99bab7abb4a3d581ea1aeb23d0) |
| unnamed | unknown | unknown | unmatched | [0x5c7f8a...ae23](https://etherscan.io/address/0x5c7f8a570d578ed84e63fdfa7b1ee72deae1ae23) |
| unnamed | unknown | unknown | unmatched | [0x63abb9...1e6d](https://etherscan.io/address/0x63abb9973506189dc3741f61d25d4ed508151e6d) |
| unnamed | unknown | unknown | unmatched | [0x6a80a4...79ba](https://etherscan.io/address/0x6a80a465409ce8d36c513129c0feea61bed579ba) |
| unnamed | unknown | unknown | unmatched | [0x6b57a4...b72d](https://etherscan.io/address/0x6b57a40427a8d2353eefb5e30eff5c5eb4c4b72d) |
| unnamed | unknown | unknown | unmatched | [0x7f5c76...1607](https://etherscan.io/address/0x7f5c764cbc14f9669b88837ca1490cca17c31607) |
| unnamed | unknown | unknown | unmatched | [0x83d490...1c31](https://etherscan.io/address/0x83d4908c1b4f9ca423bee264163bc1d50f251c31) |
| unnamed | unknown | unknown | unmatched | [0x94b008...8e58](https://etherscan.io/address/0x94b008aa00579c1307b0ef2c499ad98a8ce58e58) |
| unnamed | unknown | unknown | unmatched | [0xa6aba5...c3b8](https://etherscan.io/address/0xa6aba54b0aee04c05951221b5d210622b64cc3b8) |
| unnamed | unknown | unknown | unmatched | [0xb00c0f...5014](https://etherscan.io/address/0xb00c0f4faa6cc4d0dfe28aec05a899ba443e5014) |
| unnamed | unknown | unknown | unmatched | [0xbf69a5...1e54](https://etherscan.io/address/0xbf69a56d35b8d6f5a8e0e96b245a72f735751e54) |
| unnamed | unknown | unknown | unmatched | [0xc9bdee...3feb](https://etherscan.io/address/0xc9bdeed33cd01541e1eed10f90519d2c06fe3feb) |
| unnamed | unknown | unknown | unmatched | [0xcb6e44...f94f](https://etherscan.io/address/0xcb6e444688a0dd40ebf632279574ad8e5414f94f) |
| unnamed | unknown | unknown | unmatched | [0xd1f345...c903](https://etherscan.io/address/0xd1f345593cb69fa546852b2deb90f373f8adc903) |
| unnamed | unknown | unknown | unmatched | [0xd9bfe9...6974](https://etherscan.io/address/0xd9bfe9979e9ca4b2fe84ba5d4cf963bbcb376974) |
| unnamed | unknown | unknown | unmatched | [0xda1000...0da1](https://etherscan.io/address/0xda10009cbd5d07dd0cecc66161fc93d7c9000da1) |
| unnamed | unknown | unknown | unmatched | [0xdfa464...4b02](https://etherscan.io/address/0xdfa46478f9e5ea86d57387849598dbfb2e964b02) |
| unnamed | unknown | unknown | unmatched | [0xe467f7...cb97](https://etherscan.io/address/0xe467f79e9869757dd818dfb8535068120f6bcb97) |
| unnamed | unknown | unknown | unmatched | [0xeae47c...fd55](https://etherscan.io/address/0xeae47c5d99f7b31165a7f0c5f7e0d6afa25cfd55) |
| unnamed | unknown | unknown | unmatched | [0xf268cd...7a60](https://etherscan.io/address/0xf268cd33c76e3ba6963cd080dce74c7c71d57a60) |

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AntiSnipAttackPositionManager | controller | controller | audited (TP) | [0xe222fb...a480](https://optimistic.etherscan.io/address/0xe222fbe074a436145b255442d919e4e3a6c6a480) |
| AnyswapV6ERC20 | router | router | likely in scope | [0x451823...3263](https://optimistic.etherscan.io/address/0x4518231a8fdf6ac553b9bbd51bbb86825b583263) |
| BurnableMintableCappedERC20 | token | token | unmatched | [0xb448ec...81df](https://optimistic.etherscan.io/address/0xb448ec505c924944ca8b2c55ef05c299ee0781df) |
| DSLOProtocol | core | core | unmatched | [0xcab2fa...4f6c](https://optimistic.etherscan.io/address/0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x2f577a...655d](https://optimistic.etherscan.io/address/0x2f577a41bec1be1152aeea12e73b7391d15f655d) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0x58f1d0...3f3e](https://optimistic.etherscan.io/address/0x58f1d0f9bff9d695010c92fb93d100cef5113f3e) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0xd8ac7f...cdb4](https://optimistic.etherscan.io/address/0xd8ac7f696ae99cd7b689726cf03c5711dd8dcdb4) |
| Factory | factory | factory | unmatched | [0xc7a590...8c4a](https://optimistic.etherscan.io/address/0xc7a590291e07b9fe9e64b86c58fd8fc764308c4a) |
| KSElasticLMHelper | peripheral | peripheral | unmatched | [0x35be3f...0870](https://optimistic.etherscan.io/address/0x35be3f4fd8239a35a7f120756d4d69e5c5e10870) |
| KSElasticLMHelper | peripheral | peripheral | unmatched | [0x6afeb9...05c8](https://optimistic.etherscan.io/address/0x6afeb9edd6cf44fa8e89b1eee28284e6dd7705c8) |
| KSElasticLMV2 | core | core | unmatched | [0x3d6afe...7a43](https://optimistic.etherscan.io/address/0x3d6afe2fb73ffed2e3dd00c501a174554e147a43) |
| KSElasticLMV2 | core | core | unmatched | [0xa70a1a...0e0e](https://optimistic.etherscan.io/address/0xa70a1ad0f91c52c79e177c5a18a7c9e1c4360e0e) |
| KSElasticLMV2 | core | core | unmatched | [0xf2bcdf...6dbd](https://optimistic.etherscan.io/address/0xf2bcdf38baa52f6b0c1db5b025dfff01ae1d6dbd) |
| KSFactory | factory | factory | unmatched | [0x1c758a...9be5](https://optimistic.etherscan.io/address/0x1c758af0688502e49140230f6b0ebd376d429be5) |
| KSRouter02 | router | router | likely in scope | [0x5649b4...23d0](https://optimistic.etherscan.io/address/0x5649b4dd00780e99bab7abb4a3d581ea1aeb23d0) |
| KSZapRouter | router | router | likely in scope | [0x30c532...b79e](https://optimistic.etherscan.io/address/0x30c5322e4e08ad500c348007f92f120ab4e2b79e) |
| KSZapRouterPosition | router | router | likely in scope | [0x0e97c8...9e05](https://optimistic.etherscan.io/address/0x0e97c887b61ccd952a53578b04763e7134429e05) |
| KSZapRouterPositionPermit | router | router | likely in scope | [0x638d93...cabb](https://optimistic.etherscan.io/address/0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb) |
| KSZapValidator | core | core | unmatched | [0xf0096e...1172](https://optimistic.etherscan.io/address/0xf0096e5b4aafeea1df557264091569ba125c1172) |
| KSZapValidatorV2Part1 | core | core | unmatched | [0xa16f32...863e](https://optimistic.etherscan.io/address/0xa16f32442209c6b978431818aa535bcc9ad2863e) |
| KyberSwapElasticLM | router | router | likely in scope | [0x7d5ba5...e676](https://optimistic.etherscan.io/address/0x7d5ba536ab244aaa1ea42ab88428847f25e3e676) |
| L2StandardERC20 | token | token | unmatched | [0xa00e3a...3819](https://optimistic.etherscan.io/address/0xa00e3a3511aac35ca78530c85007afcd31753819) |
| LimitOrderProtocol | core | core | unmatched | [0x227b0c...e936](https://optimistic.etherscan.io/address/0x227b0c196ea8db17a665ea6824d972a64202e936) |
| MetaAggregationRouterV2 | router | router | likely in scope | [0x6131b5...37b5](https://optimistic.etherscan.io/address/0x6131b5fae19ea4f9d964eac0408e4408b66337b5) |
| MultiSigWalletWithDailyLimit | governance | governance | unmatched | [0x247503...3546](https://optimistic.etherscan.io/address/0x2475039bf2ecdce2ee4c82954e64be9674f43546) |
| MultiSigWalletWithDailyLimit | governance | governance | unmatched | [0x91c9d4...6f5b](https://optimistic.etherscan.io/address/0x91c9d4373b077ef8082f468c7c97f2c499e36f5b) |
| PoolOracle | vault_pool | vault_pool | audited (TP) | [0x049bef...7b09](https://optimistic.etherscan.io/address/0x049beffdb026d6d1d64cfc8fe29bd12142967b09) |
| QuoterV2 | core | core | audited (TP) | [0x4d47fd...7856](https://optimistic.etherscan.io/address/0x4d47fd5a29904dae0ef51b1c450c9750f15d7856) |
| Router | router | router | likely in scope | [0xf9c2b5...eab4](https://optimistic.etherscan.io/address/0xf9c2b5746c946ef883ab2660bbbb1f10a5bdeab4) |
| TicksFeesReader | peripheral | peripheral | audited (TP) | [0x8fd8cb...dbb3](https://optimistic.etherscan.io/address/0x8fd8cb948965d9305999d767a02bf79833eadbb3) |
| TokenPositionDescriptor | token | token | audited (TP) | [0x98565f...0bd6](https://optimistic.etherscan.io/address/0x98565fcad2080c5c19c3136fa367ce371cd40bd6) |
| WethUnwrapper | core | core | unmatched | [0x37334c...5b94](https://optimistic.etherscan.io/address/0x37334cd06dfecd2e9b3937a6da17853d637a5b94) |
| unnamed | unknown | unknown | unmatched | [0x2abe87...3e0d](https://optimistic.etherscan.io/address/0x2abe8750e4a65584d7452316356128c936273e0d) |
| unnamed | unknown | unknown | unmatched | [0xd9bfe9...6974](https://optimistic.etherscan.io/address/0xd9bfe9979e9ca4b2fe84ba5d4cf963bbcb376974) |

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AntiSnipAttackPositionManager | controller | controller | audited (TP) | [0xe222fb...a480](https://bscscan.com/address/0xe222fbe074a436145b255442d919e4e3a6c6a480) |
| AnyswapV5ERC20 | router | router | likely in scope | [0x301af3...7fcc](https://bscscan.com/address/0x301af3eff0c904dc5ddd06faa808f653474f7fcc) |
| AnyswapV5ERC20 | router | router | likely in scope | [0xfe19f0...33ba](https://bscscan.com/address/0xfe19f0b51438fd612f6fd59c1dbb3ea319f433ba) |
| BEP20DAI | core | core | unmatched | [0x1af3f3...dbc3](https://bscscan.com/address/0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3) |
| BEP20TokenImplementation | token | token | unmatched | [0xba5fe2...0b5c](https://bscscan.com/address/0xba5fe23f8a3a24bed3236f05f2fcf35fd0bf0b5c) |
| BEP20UpgradeableProxy | proxy | proxy | unmatched | [0xfe56d5...308b](https://bscscan.com/address/0xfe56d5892bdffc7bf58f2e84be1b2c32d21c308b) |
| BobToken | token | token | unmatched | [0xe9082b...5695](https://bscscan.com/address/0xe9082b12bb1ff20e8749cd5ef9bd2b29c5ef5695) |
| DMMFactory | factory | factory | unmatched | [0x878dfe...934c](https://bscscan.com/address/0x878dfe971d44e9122048308301f540910bbd934c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x0071dc...17a3](https://bscscan.com/address/0x0071dc7b0849e4181022717b4311f7a9c54617a3) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x00fe5f...c93d](https://bscscan.com/address/0x00fe5f91ffd214881288eb996f432d471530c93d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x0d26ac...b264](https://bscscan.com/address/0x0d26acd6d6b393bc565cb1499dbf3bdc985eb264) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x0d8246...0976](https://bscscan.com/address/0x0d8246764552267d0c65edc1cb96120ec43e0976) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x0dfc64...cc8e](https://bscscan.com/address/0x0dfc649f0d5d052cb0fdacb57ef5afdecf51cc8e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x0e6470...ab3f](https://bscscan.com/address/0x0e6470670f67397271bbdcd4fda7a173efb4ab3f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x0ffe65...1424](https://bscscan.com/address/0x0ffe65f7c135f6ea06efaf9b0ef7525972f81424) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x13545c...3258](https://bscscan.com/address/0x13545cc3f8b01a5f891aa95ae6885f7c0f0e3258) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x141452...58a5](https://bscscan.com/address/0x141452de1f505f119c94782cfbd053419cd758a5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x17f5eb...e9d4](https://bscscan.com/address/0x17f5eb601f72796ed55dbe7bf61090cc9c7ee9d4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x1896a9...be62](https://bscscan.com/address/0x1896a9aa998732dcaf47df6eb94ca2aad9b6be62) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x1a88f9...6ca5](https://bscscan.com/address/0x1a88f9144d2f1fb701a9ac2f29d83c847f7d6ca5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x1c937a...3ba7](https://bscscan.com/address/0x1c937a37048b519b47f9aad25fc71fe5f2973ba7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x1f340a...c439](https://bscscan.com/address/0x1f340a906c7fff15239e7bc2eadc646c5184c439) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2732d1...20f4](https://bscscan.com/address/0x2732d16a9e106d28266c3f5966590c0f3b1a20f4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2872c6...69c0](https://bscscan.com/address/0x2872c6fe2d45b302ef97aa9cd62a196153a669c0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x29bec2...8c67](https://bscscan.com/address/0x29bec2b2412a22af8aa6b40059308e1e35f68c67) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2b7820...0e4c](https://bscscan.com/address/0x2b7820cfa03293fa051709ec1fe9aee50c9c0e4c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2d49f1...97c8](https://bscscan.com/address/0x2d49f16c9ad4f1145bb27c9af71474f468a697c8) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x34e5bf...57bf](https://bscscan.com/address/0x34e5bf452e74bf38fa4d807ff2df9d1b998b57bf) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x39ddfa...d35b](https://bscscan.com/address/0x39ddfa39a08765a1b58ab2d196d2fd26e88fd35b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3a8532...3c94](https://bscscan.com/address/0x3a853210ef83a75ef4a7c406f22b9f861cdf3c94) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3b7d93...3e21](https://bscscan.com/address/0x3b7d934c37370c44da0543949d8e54e6dd723e21) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3b9975...2391](https://bscscan.com/address/0x3b997507a1d4d238c52fcf13efe7ee25c8612391) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3d5f1d...1edc](https://bscscan.com/address/0x3d5f1d13e5dbe6fee1a43ab1601fbb59a6381edc) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3e95e0...7c57](https://bscscan.com/address/0x3e95e07550e9798272130ab65b58f2f17b3f7c57) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x40dc05...9c74](https://bscscan.com/address/0x40dc0500d279e58ad8029dc5efd76ed7c6f19c74) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4322d1...ed15](https://bscscan.com/address/0x4322d10a24c0bb207ed48ee09349047c76aeed15) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x43357a...a783](https://bscscan.com/address/0x43357a80c127f6ce9343a83967050a2ee29ea783) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x447718...552c](https://bscscan.com/address/0x44771824b4a8c5785f8ccabfa779d2202664552c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x46ed24...6305](https://bscscan.com/address/0x46ed242c9b160a9f005da11fa2989bb089346305) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x47c6d3...29fc](https://bscscan.com/address/0x47c6d3397ae2977b0504afec13c09efc592029fc) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x491389...1a19](https://bscscan.com/address/0x49138956f908346eabd4a84a849e2462a9561a19) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4b7bed...1032](https://bscscan.com/address/0x4b7bedeb55e63e06a38b3d1e9daabc362d451032) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4d5157...2648](https://bscscan.com/address/0x4d51576e89e4c85aa476e5df2b143705674c2648) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4e934d...778b](https://bscscan.com/address/0x4e934d430c6597404f08cb7231e5241b4f81778b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5047a5...7fcd](https://bscscan.com/address/0x5047a5ce1e5f8d8a3555345f212d9461831c7fcd) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x506c96...dde1](https://bscscan.com/address/0x506c96435ad266a4b01c767126b6023a6a9bdde1) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5208b0...81c4](https://bscscan.com/address/0x5208b0f9de20b9f88ffdb74dad689a2f7e2481c4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5383d8...eb40](https://bscscan.com/address/0x5383d85ec308564973702121c64190c4ef14eb40) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x542717...ea72](https://bscscan.com/address/0x542717158a059bd23832c3fde7d90b86ea3bea72) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x544dae...e22c](https://bscscan.com/address/0x544dae9c3b691ed97182e192eb075ea2911de22c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x595879...589e](https://bscscan.com/address/0x595879c58d736ee400a8bf09f8aeefae5b1a589e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5eef9a...4df4](https://bscscan.com/address/0x5eef9a05ca115903041d6ac667a3ce9239b14df4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5ef544...99f2](https://bscscan.com/address/0x5ef54437427493667cdc444ab08b1d1a06f999f2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5efba1...fa1b](https://bscscan.com/address/0x5efba137bd7c9ca9cdc7947ba6318718487dfa1b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x6170b6...73bb](https://bscscan.com/address/0x6170b6d96167346896169b35e1e9585feab873bb) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x62fe4f...8dfd](https://bscscan.com/address/0x62fe4f6fc3cf2b76a160232bfc3955916f768dfd) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x631ca4...65c2](https://bscscan.com/address/0x631ca4f565b3171d5b90cc70aaa9d2116e1565c2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x6484c9...181a](https://bscscan.com/address/0x6484c9252930ffd08fc8a3794bf5e5ad326a181a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x65bcdb...ccc5](https://bscscan.com/address/0x65bcdbaec11ff86d3da8849af781ca267442ccc5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x676863...6b0e](https://bscscan.com/address/0x6768634adda2a8d50f4f8a86010787b3c5296b0e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x6b20aa...f6e5](https://bscscan.com/address/0x6b20aabbd1f5c4b437ff99604cda4e751f19f6e5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x6bb491...f4e3](https://bscscan.com/address/0x6bb4917c4ee4637bc210530f497333894c74f4e3) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x72a02d...a6f8](https://bscscan.com/address/0x72a02dfec2f52fb7d4f523de5e0d8ac745dea6f8) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x73cc1a...bec6](https://bscscan.com/address/0x73cc1afe9c2299a34fba5b0206923be3af6ebec6) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x76a0a5...cc88](https://bscscan.com/address/0x76a0a551613c5e1755c07cbd22e6ccaac09bcc88) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7846b8...058c](https://bscscan.com/address/0x7846b8923f72d7ab57451135d53de582925b058c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7c5561...2b5f](https://bscscan.com/address/0x7c5561939178b7dc9e1e89b9e5d2b207b9af2b5f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7cd243...3915](https://bscscan.com/address/0x7cd2433e6f1a236a1035444dc851807dc1543915) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x8218a4...433b](https://bscscan.com/address/0x8218a42ea94c5861500aa7731326029f4700433b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x827447...91de](https://bscscan.com/address/0x8274473ef825fc5bb8e54a8d36f2614fff8591de) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x835474...54dd](https://bscscan.com/address/0x835474b0738706ba93cb28c624f15648726854dd) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x872f13...b0ec](https://bscscan.com/address/0x872f13f22115615b111d0504b78dfd538649b0ec) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x8a1d9c...476c](https://bscscan.com/address/0x8a1d9c6b97e0ef5d78e1f54356b2e8a19feb476c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x8a8c70...33ee](https://bscscan.com/address/0x8a8c709a9d3c9b37abaabbf4d6e9bb6ebc3233ee) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x8dd1d9...9cd3](https://bscscan.com/address/0x8dd1d941b9b42c23283fbf6a06fcfab34d339cd3) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x8e8dd9...8ced](https://bscscan.com/address/0x8e8dd9e9e0b9a045bb4a32521f4c8ad450238ced) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x8efedc...5e43](https://bscscan.com/address/0x8efedc15477482320ad2b727d8bfd3bf75a75e43) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x90effe...825d](https://bscscan.com/address/0x90effe11a7037dbb82f4c52ec20a492205ce825d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x937e8b...e08f](https://bscscan.com/address/0x937e8b5d1232e0d76aa712306a33ee7f186de08f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x974a06...c520](https://bscscan.com/address/0x974a0632e1a4954e3ec02f93d32ff3c5e9ecc520) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x97b70a...08a3](https://bscscan.com/address/0x97b70afef0cac0247fdfe321c5f0100083e408a3) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x97da97...af4f](https://bscscan.com/address/0x97da970f841e94ea5469338207dd5e08fb18af4f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x97dbaf...067a](https://bscscan.com/address/0x97dbaf4ad688aed04817121301a005b710e6067a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x98cdbd...df66](https://bscscan.com/address/0x98cdbd304835cd0321ad7b718a0c2f61fd58df66) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x99bf5e...151b](https://bscscan.com/address/0x99bf5e39d089c77b0ee92315fec1bb1662e3151b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x9d89f6...db35](https://bscscan.com/address/0x9d89f698b1266bb0638401d7a915cc3a005edb35) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x9fb1aa...7a09](https://bscscan.com/address/0x9fb1aa740983d48fa0f25af983fb4ce1f3c67a09) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa0722c...a198](https://bscscan.com/address/0xa0722ca84c1f609b15a461157ecae2ca77e0a198) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa091aa...e6a7](https://bscscan.com/address/0xa091aadaa3d5fdf622fc9123b2ccb07621abe6a7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa23b26...557a](https://bscscan.com/address/0xa23b26fb74b1d11bf1112bc46607d6ffc6e6557a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa26cdf...efc2](https://bscscan.com/address/0xa26cdf8a55505d3356451727f25fd3929e7defc2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa643f3...8c6a](https://bscscan.com/address/0xa643f32e77e70e4a1c3b9d73124e7bb7bb348c6a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa9081f...03f6](https://bscscan.com/address/0xa9081f5d94841e7f96be0658a926def8d50203f6) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xaa1fac...0dfc](https://bscscan.com/address/0xaa1fac11f0df01754b185b703f7f54af8fb10dfc) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xaa51d3...dbe8](https://bscscan.com/address/0xaa51d36e97f20f1bfb7b7a34a649570ed117dbe8) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xad72e6...d9c1](https://bscscan.com/address/0xad72e6e4f2d69963a73fe8c3959813a82960d9c1) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xaf91b6...b404](https://bscscan.com/address/0xaf91b6c1811eee1bf52bcd38f6c1095e7f71b404) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb1b35c...99fb](https://bscscan.com/address/0xb1b35cfae422ab2319fe595186f8ee8c706899fb) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb22544...d4d5](https://bscscan.com/address/0xb22544ec60439678c953a663933a5526c527d4d5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb2f12f...c175](https://bscscan.com/address/0xb2f12f48a2193d61e76a8e799cafdc16ea2dc175) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb34af0...8c2d](https://bscscan.com/address/0xb34af08a0eb11a987bd78c79a3d35349766e8c2d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb6da83...aabd](https://bscscan.com/address/0xb6da83f222c68c5bc91e210b231c532931e3aabd) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb83ce7...75e0](https://bscscan.com/address/0xb83ce73e3cd022c16cd417fdd8ed3b0bfc6f75e0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb9c644...211d](https://bscscan.com/address/0xb9c644eac39d6b85346a830b5bcad3ed3c53211d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xbbfba2...c659](https://bscscan.com/address/0xbbfba203696ea1cd21674d9f5e9fd33ce053c659) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xbea50f...1ecc](https://bscscan.com/address/0xbea50fc19ef3a7701d0407d4af95855fa3611ecc) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xbf8ffc...8d12](https://bscscan.com/address/0xbf8ffcfde0792c9f720cdbfbf2ad1be6e08e8d12) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc0600c...bbac](https://bscscan.com/address/0xc0600c41273e71dc8736c5e2128c7979ce3bbbac) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc3dac2...3b55](https://bscscan.com/address/0xc3dac2049616326e7d596ce52062789d96373b55) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc45765...37ea](https://bscscan.com/address/0xc457654416c5396bf571605d7f12d05c224337ea) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc803a9...3803](https://bscscan.com/address/0xc803a915a29b4e5e091ac945cbbcce38c5903803) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xca49fb...3927](https://bscscan.com/address/0xca49fbaf4e810c8f2b98bfa3052c9feb9b6e3927) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xcb071f...f825](https://bscscan.com/address/0xcb071f9caf4519eae603fea91919228384f0f825) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xccf0bd...89c7](https://bscscan.com/address/0xccf0bd9ac7fc7a7a8154f931d5b8392297b089c7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd1489c...27e8](https://bscscan.com/address/0xd1489cfbcce2db1a7f2cb293e2d378870e9f27e8) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd26fa4...b7ad](https://bscscan.com/address/0xd26fa4d47ab61c03259f0cbc9054890df5c3b7ad) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd3ea16...868c](https://bscscan.com/address/0xd3ea16b59c6b47a8ddeb012e4381cc4cfbd1868c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd444fd...6c28](https://bscscan.com/address/0xd444fdc02f9b5981eb502b3fcadaa7d57aec6c28) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd5e823...eb7a](https://bscscan.com/address/0xd5e82309b53a2f39e784f70053c60e8fd029eb7a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd5f693...5225](https://bscscan.com/address/0xd5f6932348d8195f03ca83ab2f5bc6a63b985225) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd754bd...0096](https://bscscan.com/address/0xd754bd4dd62d6bb937848cbaa7ca4fe8b9be0096) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xdffbdf...5bb9](https://bscscan.com/address/0xdffbdf812e4495a9a65adac0439afe1884c75bb9) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe2bd6e...664d](https://bscscan.com/address/0xe2bd6efb72ae2829024baed6499b2ae2e01e664d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe30cec...33b7](https://bscscan.com/address/0xe30cec019a8cad32ef88ce06b4357a59205233b7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe3de88...1fca](https://bscscan.com/address/0xe3de88fb99d72389f06a2d1950dfc00f297b1fca) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe64b34...1404](https://bscscan.com/address/0xe64b34764e0457c174be68ce03e0d2d5c7571404) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe84ec9...296c](https://bscscan.com/address/0xe84ec9cde7f8e45c68668437634c1c0b2de3296c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe8ea55...99ab](https://bscscan.com/address/0xe8ea559ed6ee372837f3cfed76410f71ed9599ab) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe955e3...6699](https://bscscan.com/address/0xe955e3a92f3286b83db658ae2e17520d5d316699) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe9acc0...0a19](https://bscscan.com/address/0xe9acc04eddd630622c6c21e9565f7c9848e50a19) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xeaba35...90a4](https://bscscan.com/address/0xeaba35afc9c1629fd515ac61fa6a2d4f544e90a4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xec303c...6381](https://bscscan.com/address/0xec303ce1edbebf7e71fc7b350341bb6a6a7a6381) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xecd958...f168](https://bscscan.com/address/0xecd958c56a9dae870aafb46eb8431790d252f168) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xed23a3...b914](https://bscscan.com/address/0xed23a304e7c92efef1049600223fb7057c61b914) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xef0584...9b53](https://bscscan.com/address/0xef0584c0d6f4422dbe1d941f9abb07a808e59b53) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf7e917...2dfa](https://bscscan.com/address/0xf7e91742b2a3cf5f679e521c552b8d1a56e42dfa) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf81e10...cf34](https://bscscan.com/address/0xf81e106c5b44ba9a993fc1f456a4c8e54c47cf34) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf82921...748c](https://bscscan.com/address/0xf82921cae61b099e80a1ad42042a43ac0500748c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf8e61e...9b31](https://bscscan.com/address/0xf8e61e301a44df4e2dbaba570d2cb09039289b31) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf95001...e654](https://bscscan.com/address/0xf95001208626bf9ad2f8ff3fd9e35b741e9de654) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xfe0e05...5e46](https://bscscan.com/address/0xfe0e054921fec0d4cf1e8498c9f0ea3838705e46) |
| DMMRouter02 | router | router | likely in scope | [0x78df70...6409](https://bscscan.com/address/0x78df70615ffc8066cc0887917f2cd72092c86409) |
| DSLOProtocol | core | core | unmatched | [0xcab2fa...4f6c](https://bscscan.com/address/0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c) |
| EditableERC20 | token | token | unmatched | [0x3f56e0...ea0d](https://bscscan.com/address/0x3f56e0c36d275367b8c502090edf38289b3dea0d) |
| EIP1967Proxy | proxy | proxy | unmatched | [0xb0b195...1b0b](https://bscscan.com/address/0xb0b195aefa3650a6908f15cdac7d92f8a5791b0b) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x2f577a...655d](https://bscscan.com/address/0x2f577a41bec1be1152aeea12e73b7391d15f655d) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0x58f1d0...3f3e](https://bscscan.com/address/0x58f1d0f9bff9d695010c92fb93d100cef5113f3e) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0xd8ac7f...cdb4](https://bscscan.com/address/0xd8ac7f696ae99cd7b689726cf03c5711dd8dcdb4) |
| Factory | factory | factory | unmatched | [0xc7a590...8c4a](https://bscscan.com/address/0xc7a590291e07b9fe9e64b86c58fd8fc764308c4a) |
| KSDistributor | rewards | rewards | unmatched | [0xeae300...6f9c](https://bscscan.com/address/0xeae300ac9409b2072697ca1d5fd137f8bb286f9c) |
| KSElasticLMHelper | peripheral | peripheral | unmatched | [0x35be3f...0870](https://bscscan.com/address/0x35be3f4fd8239a35a7f120756d4d69e5c5e10870) |
| KSElasticLMHelper | peripheral | peripheral | unmatched | [0x6afeb9...05c8](https://bscscan.com/address/0x6afeb9edd6cf44fa8e89b1eee28284e6dd7705c8) |
| KSElasticLMV2 | core | core | unmatched | [0xe44ec6...0e4b](https://bscscan.com/address/0xe44ec65521b85612fa7bc45d842645fb4b690e4b) |
| KSFactory | factory | factory | unmatched | [0x1c758a...9be5](https://bscscan.com/address/0x1c758af0688502e49140230f6b0ebd376d429be5) |
| KSRemoveLiquidityPancakeV4CLHook | adapter | adapter | audited (TP) | [0xf67476...0eec](https://bscscan.com/address/0xf67476e5d3fa43e0470f8f1d3c43bf202dc50eec) |
| KSRemoveLiquidityUniswapV3Hook | router | router | audited (TP) | [0x72473d...1851](https://bscscan.com/address/0x72473de0b52d079ca21709ea67085757c3bb1851) |
| KSRemoveLiquidityUniswapV4Hook | router | router | audited (TP) | [0x635dff...7841](https://bscscan.com/address/0x635dffee858a9f941d058401b393fcfab41d7841) |
| KSRouter02 | router | router | likely in scope | [0x5649b4...23d0](https://bscscan.com/address/0x5649b4dd00780e99bab7abb4a3d581ea1aeb23d0) |
| KSSmartIntentRouter | router | router | audited (TP) | [0xaee04d...9974](https://bscscan.com/address/0xaee04d31696d14bce773db6d1acec3398ee09974) |
| KSZap | core | core | unmatched | [0x2abe87...3e0d](https://bscscan.com/address/0x2abe8750e4a65584d7452316356128c936273e0d) |
| KSZapRouterPosition | router | router | likely in scope | [0x0e97c8...9e05](https://bscscan.com/address/0x0e97c887b61ccd952a53578b04763e7134429e05) |
| KSZapRouterPositionPermit | router | router | likely in scope | [0x638d93...cabb](https://bscscan.com/address/0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb) |
| KSZapValidatorV2Part1 | core | core | unmatched | [0xa16f32...863e](https://bscscan.com/address/0xa16f32442209c6b978431818aa535bcc9ad2863e) |
| KyberRewardLockerV2 | rewards | rewards | unmatched | [0xd93f7a...0652](https://bscscan.com/address/0xd93f7a2cbf4912158d6ccda585c9d234a0d70652) |
| KyberSwapElasticLM | router | router | likely in scope | [0x7d5ba5...e676](https://bscscan.com/address/0x7d5ba536ab244aaa1ea42ab88428847f25e3e676) |
| LimitOrderProtocol | core | core | unmatched | [0x227b0c...e936](https://bscscan.com/address/0x227b0c196ea8db17a665ea6824d972a64202e936) |
| MetaAggregationRouterV2 | router | router | likely in scope | [0x6131b5...37b5](https://bscscan.com/address/0x6131b5fae19ea4f9d964eac0408e4408b66337b5) |
| Multicall | core | core | likely in scope | [0xcf591c...74ec](https://bscscan.com/address/0xcf591ce5574258ac4550d96c545e4f3fd49a74ec) |
| Multicall2 | bridge | bridge | unmatched | [0xed386f...c5a4](https://bscscan.com/address/0xed386fe855c1eff2f843b910923dd8846e45c5a4) |
| MultiSigWalletWithDailyLimit | governance | governance | unmatched | [0x247503...3546](https://bscscan.com/address/0x2475039bf2ecdce2ee4c82954e64be9674f43546) |
| MultiSigWalletWithDailyLimit | governance | governance | unmatched | [0x91c9d4...6f5b](https://bscscan.com/address/0x91c9d4373b077ef8082f468c7c97f2c499e36f5b) |
| PancakeSwapInfinityKEMHook | router | router | likely in scope | [0x44428c...dfd2](https://bscscan.com/address/0x44428c6ce391915d51f963c0dd395cd0f95fdfd2) |
| PoolOracle | vault_pool | vault_pool | audited (TP) | [0x049bef...7b09](https://bscscan.com/address/0x049beffdb026d6d1d64cfc8fe29bd12142967b09) |
| QuoterV2 | core | core | audited (TP) | [0x4d47fd...7856](https://bscscan.com/address/0x4d47fd5a29904dae0ef51b1c450c9750f15d7856) |
| Router | router | router | likely in scope | [0xf9c2b5...eab4](https://bscscan.com/address/0xf9c2b5746c946ef883ab2660bbbb1f10a5bdeab4) |
| TicksFeesReader | peripheral | peripheral | audited (TP) | [0x8fd8cb...dbb3](https://bscscan.com/address/0x8fd8cb948965d9305999d767a02bf79833eadbb3) |
| TokenPositionDescriptor | token | token | audited (TP) | [0x98565f...0bd6](https://bscscan.com/address/0x98565fcad2080c5c19c3136fa367ce371cd40bd6) |
| UniswapV4KEMHook | router | router | likely in scope | [0x444085...c0c4](https://bscscan.com/address/0x4440854b2d02c57a0dc5c58b7a884562d875c0c4) |
| WethUnwrapper | core | core | unmatched | [0x37334c...5b94](https://bscscan.com/address/0x37334cd06dfecd2e9b3937a6da17853d637a5b94) |
| WhitelistedCollector | treasury | treasury | unmatched | [0x9ed9af...f6b9](https://bscscan.com/address/0x9ed9afb6b4cafbdfb2d833b0e70845997300f6b9) |
| ZapIn | core | core | unmatched | [0x83d490...1c31](https://bscscan.com/address/0x83d4908c1b4f9ca423bee264163bc1d50f251c31) |
| unnamed | unknown | unknown | unmatched | [0x010897...eda4](https://bscscan.com/address/0x0108976584aae0e1099c52868f2f7d810899eda4) |
| unnamed | unknown | unknown | unmatched | [0x023333...f4c8](https://bscscan.com/address/0x023333a48d103d387459a10c3f9acc996750f4c8) |
| unnamed | unknown | unknown | unmatched | [0x023c27...a02e](https://bscscan.com/address/0x023c2773aa71b4b1ca7d30dd11748fe32a4fa02e) |
| unnamed | unknown | unknown | unmatched | [0x061be7...b690](https://bscscan.com/address/0x061be7b24fd7b7913014d7c2f78373a01a0eb690) |
| unnamed | unknown | unknown | unmatched | [0x0e4be9...5ab3](https://bscscan.com/address/0x0e4be974a05f2cb0add1c7c3f9f425438e905ab3) |
| unnamed | unknown | unknown | unmatched | [0x122831...1a27](https://bscscan.com/address/0x1228316297149e8a2cff6faba72aa9adc2a01a27) |
| unnamed | unknown | unknown | unmatched | [0x18fa72...443e](https://bscscan.com/address/0x18fa72e0ee4c580a129b0ce5bd0694d716c7443e) |
| unnamed | unknown | unknown | unmatched | [0x2473fa...ba1d](https://bscscan.com/address/0x2473fa1aed20591431755d4944bb3e35584aba1d) |
| unnamed | unknown | unknown | unmatched | [0x27620c...936b](https://bscscan.com/address/0x27620c354e0b3132ff19bd507d391076b234936b) |
| unnamed | unknown | unknown | unmatched | [0x2aaf08...9a45](https://bscscan.com/address/0x2aaf08590c5ef5fb6fe19438028cc900fa219a45) |
| unnamed | unknown | unknown | unmatched | [0x2b7eda...9a62](https://bscscan.com/address/0x2b7eda3ab728af3825687f246053009eba009a62) |
| unnamed | unknown | unknown | unmatched | [0x2fe45c...cd84](https://bscscan.com/address/0x2fe45cb22f9bb58844bb6815f195a23d2c91cd84) |
| unnamed | unknown | unknown | unmatched | [0x314c45...4619](https://bscscan.com/address/0x314c450550c8fd5d4cb8bec80ce48a79f74f4619) |
| unnamed | unknown | unknown | unmatched | [0x32036f...76a5](https://bscscan.com/address/0x32036f85646e53f1957ec9c493f2c2dd53cd76a5) |
| unnamed | unknown | unknown | unmatched | [0x37c19a...f64c](https://bscscan.com/address/0x37c19a27ef95de204fff3ae15edd3d8d8869f64c) |
| unnamed | unknown | unknown | unmatched | [0x38bdc8...9ae6](https://bscscan.com/address/0x38bdc8c37f2f710c7035ca1b24be226676c79ae6) |
| unnamed | unknown | unknown | unmatched | [0x3b0376...8449](https://bscscan.com/address/0x3b0376f1cc5e1db17bd2bfc647a196e225578449) |
| unnamed | unknown | unknown | unmatched | [0x3fa7ab...c86e](https://bscscan.com/address/0x3fa7ab8df2c98c065a9f0c5dcfb4a83f9395c86e) |
| unnamed | unknown | unknown | unmatched | [0x437a03...8113](https://bscscan.com/address/0x437a03536411081e7f9c9ad5a94e1c8001488113) |
| unnamed | unknown | unknown | unmatched | [0x4829d6...e7cc](https://bscscan.com/address/0x4829d6bddb4102567dc9a52b1b641f0bb831e7cc) |
| unnamed | unknown | unknown | unmatched | [0x52a371...e13b](https://bscscan.com/address/0x52a371c20863dc7e3866e065cf172a59eb49e13b) |
| unnamed | unknown | unknown | unmatched | [0x53ce99...807f](https://bscscan.com/address/0x53ce996453fb2bcf8b17f96ab37cf1b5b67d807f) |
| unnamed | unknown | unknown | unmatched | [0x59ed1d...81e6](https://bscscan.com/address/0x59ed1d2cc7fee26316f1a42ccc6f6ece33b881e6) |
| unnamed | unknown | unknown | unmatched | [0x5be5cf...0a5d](https://bscscan.com/address/0x5be5cf556aa0665ca72aae10aa9a2a204c150a5d) |
| unnamed | unknown | unknown | unmatched | [0x5c8737...371a](https://bscscan.com/address/0x5c8737ad101a3ce8dd1899bc666342a6bd7f371a) |
| unnamed | unknown | unknown | unmatched | [0x5cd7c1...6349](https://bscscan.com/address/0x5cd7c1efec89f0a6bcec73ec72b69e7376ed6349) |
| unnamed | unknown | unknown | unmatched | [0x638b2b...09d7](https://bscscan.com/address/0x638b2b67658063e7492e155a4154c86464ed09d7) |
| unnamed | unknown | unknown | unmatched | [0x687e22...4906](https://bscscan.com/address/0x687e224f7318b444542f8a7d20c1f89c978a4906) |
| unnamed | unknown | unknown | unmatched | [0x69325d...332f](https://bscscan.com/address/0x69325ddca2c72051d6c4657a47211efa662e332f) |
| unnamed | unknown | unknown | unmatched | [0x698631...590c](https://bscscan.com/address/0x6986319c50e0c9244798dccbb3bc8b1681c7590c) |
| unnamed | unknown | unknown | unmatched | [0x6a4d5f...1cba](https://bscscan.com/address/0x6a4d5f8385ff6e7fc4ebf6f726e12a958daa1cba) |
| unnamed | unknown | unknown | unmatched | [0x6b46d7...af13](https://bscscan.com/address/0x6b46d76ae1f1b647dc09f3b1e09caf843386af13) |
| unnamed | unknown | unknown | unmatched | [0x6b593b...a8b3](https://bscscan.com/address/0x6b593b2c38938a6f62145eac063dcde0c74ba8b3) |
| unnamed | unknown | unknown | unmatched | [0x6f44ad...e392](https://bscscan.com/address/0x6f44ad6630e332fd3f560566740647915dede392) |
| unnamed | unknown | unknown | unmatched | [0x737007...609a](https://bscscan.com/address/0x737007de5f5fe5185d6bf43501da356f4133609a) |
| unnamed | unknown | unknown | unmatched | [0x786ea0...6099](https://bscscan.com/address/0x786ea0c5e3b5539847c10e436285a420a5c76099) |
| unnamed | unknown | unknown | unmatched | [0x78d92b...6a3a](https://bscscan.com/address/0x78d92bd98160cb6f9cf7cefe0ac2512129466a3a) |
| unnamed | unknown | unknown | unmatched | [0x7b0896...adb5](https://bscscan.com/address/0x7b08961d8431a59bff687e792705fdd952b1adb5) |
| unnamed | unknown | unknown | unmatched | [0x7e308c...ccd7](https://bscscan.com/address/0x7e308cacc4069fb903d35631a6e0c24e86a4ccd7) |
| unnamed | unknown | unknown | unmatched | [0x7e8434...d3a7](https://bscscan.com/address/0x7e843450bf4f0be50b177ae1598b271b8210d3a7) |
| unnamed | unknown | unknown | unmatched | [0x93669c...b72b](https://bscscan.com/address/0x93669cfce302c9971169f8106c850181a217b72b) |
| unnamed | unknown | unknown | unmatched | [0x990078...6f1f](https://bscscan.com/address/0x990078d800c22f738a238c4e07a1b2c05d236f1f) |
| unnamed | unknown | unknown | unmatched | [0xa0c1c7...267f](https://bscscan.com/address/0xa0c1c70591b18f89d50a041056839001dbf0267f) |
| unnamed | unknown | unknown | unmatched | [0xa264b2...2ae4](https://bscscan.com/address/0xa264b252d388e44fd2db1ddbe9cbafbc1cb72ae4) |
| unnamed | unknown | unknown | unmatched | [0xa29a18...b53f](https://bscscan.com/address/0xa29a1879cc195e4831b512b4a108dafa832ab53f) |
| unnamed | unknown | unknown | unmatched | [0xa9b28f...a1b0](https://bscscan.com/address/0xa9b28fd199f17ee1be536074c68668769fd4a1b0) |
| unnamed | unknown | unknown | unmatched | [0xb15b10...9431](https://bscscan.com/address/0xb15b10c9642ff9c22fc5c108429752c83ee39431) |
| unnamed | unknown | unknown | unmatched | [0xb17e75...e6ec](https://bscscan.com/address/0xb17e75031a5e89dee4f597399cedd53d2e78e6ec) |
| unnamed | unknown | unknown | unmatched | [0xb30816...b137](https://bscscan.com/address/0xb3081636d9ccce1cd19fd404f4ff30776b7cb137) |
| unnamed | unknown | unknown | unmatched | [0xc2995a...c12d](https://bscscan.com/address/0xc2995a065106b5c5c738b2320387460ebd12c12d) |
| unnamed | unknown | unknown | unmatched | [0xc50c4e...c387](https://bscscan.com/address/0xc50c4ef018b24ff72e69fd5cc6c410ee241bc387) |
| unnamed | unknown | unknown | unmatched | [0xc57f9f...cd9f](https://bscscan.com/address/0xc57f9f1dc02b6c333464acdc8699e5a37c9dcd9f) |
| unnamed | unknown | unknown | unmatched | [0xd59dfe...7954](https://bscscan.com/address/0xd59dfe87fec00af755e242e53542cc2146c67954) |
| unnamed | unknown | unknown | unmatched | [0xd66008...a1b0](https://bscscan.com/address/0xd66008012f3480fa12e0ad8769eb9c1e8201a1b0) |
| unnamed | unknown | unknown | unmatched | [0xdca2e9...dea9](https://bscscan.com/address/0xdca2e92bd33b983b8de897143653dc46ff89dea9) |
| unnamed | unknown | unknown | unmatched | [0xe00c93...bb0c](https://bscscan.com/address/0xe00c937db977c04e3f9a688bf2b1a687b2adbb0c) |
| unnamed | unknown | unknown | unmatched | [0xe8ff2c...29e4](https://bscscan.com/address/0xe8ff2ccd237d4895854316d69c10a79c233629e4) |
| unnamed | unknown | unknown | unmatched | [0xeadae4...40d7](https://bscscan.com/address/0xeadae4274ac57078235f3bca61fee9c5698240d7) |
| unnamed | unknown | unknown | unmatched | [0xef5449...292a](https://bscscan.com/address/0xef5449b3ade7193a1cadf37b003cca590d9c292a) |
| unnamed | unknown | unknown | unmatched | [0xf6f499...f3bf](https://bscscan.com/address/0xf6f49932ecfc01dd69d404a8628f59acc5bff3bf) |
| unnamed | unknown | unknown | unmatched | [0xf97a12...e6e8](https://bscscan.com/address/0xf97a128b8d696059b691fabc7aeb410dbb60e6e8) |
| unnamed | unknown | unknown | unmatched | [0xfd3b73...00ac](https://bscscan.com/address/0xfd3b7305693956994fc0cc973f4dd046fc3500ac) |
| unnamed | unknown | unknown | unmatched | [0xfdc61c...2898](https://bscscan.com/address/0xfdc61c16673889e88126cb24645e17c8b4892898) |

### polygon (chain_id 137)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| Alerto | core | core | unmatched | [0x7d645c...f8cf](https://polygonscan.com/address/0x7d645cbbcade2a130bf1bf0528b8541d32d3f8cf) |
| AntiSnipAttackPositionManager | controller | controller | audited (TP) | [0xe222fb...a480](https://polygonscan.com/address/0xe222fbe074a436145b255442d919e4e3a6c6a480) |
| AnyswapV4ERC20 | router | router | likely in scope | [0x130966...c18d](https://polygonscan.com/address/0x130966628846bfd36ff31a822705796e8cb8c18d) |
| AnyswapV5ERC20 | router | router | likely in scope | [0x073f50...4928](https://polygonscan.com/address/0x073f50bcc53e8c2372bc82128233fa1ed6e54928) |
| AnyswapV5ERC20 | router | router | likely in scope | [0x1e1085...7c3f](https://polygonscan.com/address/0x1e1085efaa63edfe74aad7c05a28eae4ef917c3f) |
| AnyswapV5ERC20 | router | router | likely in scope | [0x316772...ff12](https://polygonscan.com/address/0x316772cfec9a3e976fde42c3ba21f5a13aaaff12) |
| AnyswapV5ERC20 | router | router | likely in scope | [0x39fc9e...0f5f](https://polygonscan.com/address/0x39fc9e94caeacb435842fadedecb783589f50f5f) |
| AnyswapV5ERC20 | router | router | likely in scope | [0x49a040...7242](https://polygonscan.com/address/0x49a0400587a7f65072c87c4910449fdcc5c47242) |
| BurnableMintableCappedERC20 | token | token | unmatched | [0x46371c...707a](https://polygonscan.com/address/0x46371c90fcce4d7367a61cb43ea7922406bc707a) |
| DMMFactory | factory | factory | unmatched | [0x5f1fe6...095c](https://polygonscan.com/address/0x5f1fe642060b5b9658c15721ea22e982643c095c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x003d18...ddd8](https://polygonscan.com/address/0x003d187b429657b2cc5ad0a7047243158aadddd8) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x0071a5...1f3d](https://polygonscan.com/address/0x0071a51d33b7ca302136b33672ff9dacdac21f3d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x00f902...5a58](https://polygonscan.com/address/0x00f902778a80edb8a15aaa85012c5fbe9c2b5a58) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x015ff2...1004](https://polygonscan.com/address/0x015ff23ebf25ea7d488a669a22c806f934f31004) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x018090...ad75](https://polygonscan.com/address/0x018090fb361e0fba6ec3e393198a55c67fd4ad75) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x01ab8c...9626](https://polygonscan.com/address/0x01ab8c5d2876f2908cddc1d36042cd433bc29626) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x02217d...b6e0](https://polygonscan.com/address/0x02217de630611a2b12e01655a8ca890b8cfab6e0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x023617...6c2b](https://polygonscan.com/address/0x02361703bde18b22005b439bb18af0400ec56c2b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x02f796...bdf0](https://polygonscan.com/address/0x02f7963114025f6024b5e032419e4ec853bcbdf0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x0373b3...6827](https://polygonscan.com/address/0x0373b34ea514b36f15a1ba75701fcb52ef976827) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x03770e...632f](https://polygonscan.com/address/0x03770ef7096854302f000de633e8bd356742632f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x037e43...02ef](https://polygonscan.com/address/0x037e437672fdf68293d9af2ff180cea56fc902ef) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x038f72...41a0](https://polygonscan.com/address/0x038f72184c2eff16de5da383c8de125d9eaf41a0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x04bcba...4a1a](https://polygonscan.com/address/0x04bcba42c11fd3cb9de830371e071c384a3c4a1a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x04eb7e...df04](https://polygonscan.com/address/0x04eb7e2be2561c0bf686739e3121acb7de9edf04) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x054d39...d04d](https://polygonscan.com/address/0x054d397e382dbdb8414fb9afdcfc7974dfb6d04d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x0550f8...071f](https://polygonscan.com/address/0x0550f81dd51770f1a2ff4d5bce054d03727c071f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x057763...7911](https://polygonscan.com/address/0x057763b32271c194c5d2b867045a6ef9c2537911) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x05980c...7465](https://polygonscan.com/address/0x05980c885ae5b004e8057164ece9c5e4e37d7465) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x05acc1...17ec](https://polygonscan.com/address/0x05acc1e3d9871f2a1c8059e8a8110bf111df17ec) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x062fc5...91ff](https://polygonscan.com/address/0x062fc593c65e8599345e22e22020c3011d5491ff) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x06cc70...8da3](https://polygonscan.com/address/0x06cc70c299e087cddb7f9608fe1c1e3764688da3) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x078fa8...63b7](https://polygonscan.com/address/0x078fa8c6a0d2fbb5f2ae95ae6893acd5767163b7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x087882...13be](https://polygonscan.com/address/0x087882bc1bb8f47c2daeefecc51f2d98fd4813be) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x08cb78...b6c4](https://polygonscan.com/address/0x08cb78d00949de6ce12a85666d6580e2eba9b6c4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x091863...7bd6](https://polygonscan.com/address/0x09186326bf944b5eaa22546f957c8460e7927bd6) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x098c8a...3555](https://polygonscan.com/address/0x098c8a97cf6ac52d554af38e110c38b799db3555) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x09bffb...5e6c](https://polygonscan.com/address/0x09bffb65bf0a90e835b071de29ca035b527e5e6c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x0a3b3b...f3c9](https://polygonscan.com/address/0x0a3b3b68383d139e86245dc2c464a4346e10f3c9) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x0b8112...52da](https://polygonscan.com/address/0x0b81127d245f4b905bffa26a99ce3074850352da) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x0c1cd8...63dd](https://polygonscan.com/address/0x0c1cd8769b150e23e6dbc0d843a4efb9572963dd) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x0e547e...1a54](https://polygonscan.com/address/0x0e547e1efcc740711b636d13bcabe9283af41a54) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x0e5679...f711](https://polygonscan.com/address/0x0e5679b96a82c681d3223ab5a9f788dcedb9f711) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x0e867e...cc07](https://polygonscan.com/address/0x0e867ed95d23f8e11afa31b8d7cdc0907037cc07) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x0ec959...1878](https://polygonscan.com/address/0x0ec959e0ac5ed42f2fc9a2f84a2b4ee5f5691878) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x0ed780...9ab6](https://polygonscan.com/address/0x0ed78096f22478e545feb46799377426f82e9ab6) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x0f98d7...c136](https://polygonscan.com/address/0x0f98d78d3d6d4c97f0300759362044e9b79dc136) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x11184f...43a0](https://polygonscan.com/address/0x11184f35ea3cbd39e1200aa02c6c09e282fa43a0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x11309b...94bf](https://polygonscan.com/address/0x11309b19817929a4926339179080b2b0012294bf) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x116dc5...de78](https://polygonscan.com/address/0x116dc56a656d79e4b9224e343b8ffac19a72de78) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x11f22a...5127](https://polygonscan.com/address/0x11f22ac1767e9b64e15244fb123bbd6058445127) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x123fa4...8568](https://polygonscan.com/address/0x123fa446be6117d2afcddfdfb146c721454c8568) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x127bb7...21e4](https://polygonscan.com/address/0x127bb7129f98eeeca9e20fb101c10ab5833121e4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x128cd8...b51c](https://polygonscan.com/address/0x128cd8823463042a202a3f01e260092736dfb51c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x1296a1...94e7](https://polygonscan.com/address/0x1296a129d0453ec87d25e4de6deb618e645194e7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x12dc17...e757](https://polygonscan.com/address/0x12dc17266470fb96efc735db74a668179628e757) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x13aa37...e90b](https://polygonscan.com/address/0x13aa37a33b84122ee36b86a9e263a2689d0fe90b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x143614...a3b5](https://polygonscan.com/address/0x143614e99be3568e67f07c770c8199421c04a3b5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x147664...01ce](https://polygonscan.com/address/0x147664cb69c66dfae52df9e9e43e5bffb32301ce) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x1576a3...2433](https://polygonscan.com/address/0x1576a3433d34cf7278eb90fe093ab45beeaf2433) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x1587fb...443b](https://polygonscan.com/address/0x1587fbfaee984e16512374d867ef42aaf03c443b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x15fce7...e908](https://polygonscan.com/address/0x15fce7468bedb4e1d531f33bdf2861ae8299e908) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x17676e...4e68](https://polygonscan.com/address/0x17676e555606912bac4ddd8fb86e908cd4014e68) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x17f9a3...77d5](https://polygonscan.com/address/0x17f9a37af30193267c9054e94b75e595d7b077d5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x18d858...a2de](https://polygonscan.com/address/0x18d85835c6189ab91d53c5cf5a9410c610fea2de) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x191893...7ac3](https://polygonscan.com/address/0x1918934dafdda3c7e7c2e026e1f9a60b9d9c7ac3) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x195a8e...0129](https://polygonscan.com/address/0x195a8e4b250dd6f1bb249422fdfd8c4051180129) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x19637f...34cb](https://polygonscan.com/address/0x19637fea467995f80747c84e43d5ea12aa9f34cb) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x197864...1bb1](https://polygonscan.com/address/0x19786480f998f02919b1d6060d6c9d203cb81bb1) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x19a18e...00c8](https://polygonscan.com/address/0x19a18eb4cb8c94c5cb2e396e5173d642c33f00c8) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x1a8bee...ed8a](https://polygonscan.com/address/0x1a8beed6a0c7705bb7f91c5e2511462ac5d3ed8a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x1b407c...d5e8](https://polygonscan.com/address/0x1b407cc02d7cde648024c740ca83c0860419d5e8) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x1bcb41...146f](https://polygonscan.com/address/0x1bcb41ef822d6c67696edc7ee1d4b8f10161146f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x1c3b42...7580](https://polygonscan.com/address/0x1c3b42c78f90dfb86af1b410149244369b487580) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x1c6e5c...8346](https://polygonscan.com/address/0x1c6e5c5a805671f2e921cfdb49df896bf4028346) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x1c8ed3...1fe5](https://polygonscan.com/address/0x1c8ed3e27fc77ff058e1c11319ae36260dab1fe5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x1cb663...f6b5](https://polygonscan.com/address/0x1cb663511c052ecc256032ae94805f907423f6b5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x1ddba7...36c5](https://polygonscan.com/address/0x1ddba7fe852ba28c2ceae976eeb7281109b436c5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x1e8333...e76c](https://polygonscan.com/address/0x1e8333f3d3da6ecf2cb5a15960a0340b2d29e76c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x1ea327...82da](https://polygonscan.com/address/0x1ea32794dd640c1e401263d0e3b66c8e6d8f82da) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x1f00c7...fe37](https://polygonscan.com/address/0x1f00c76793169b08dcee11e8b835badb685cfe37) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x1f78a4...3d5e](https://polygonscan.com/address/0x1f78a4469010905ab792f74e3ddf7f4a30133d5e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x1ff003...c852](https://polygonscan.com/address/0x1ff003e86bfb0cccdd932b0c397f41538f80c852) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x200c08...d643](https://polygonscan.com/address/0x200c0898eb26598791de8c3c72f85db8eb1fd643) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x203750...d220](https://polygonscan.com/address/0x2037508fd8dcdddc07fda74e624703058f36d220) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x20502e...70f2](https://polygonscan.com/address/0x20502eee89fca3e067a9bfacc8866bef45bb70f2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x209fbf...2c11](https://polygonscan.com/address/0x209fbf1f387e96751c28dfc3f9b784294d412c11) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x20eb32...d537](https://polygonscan.com/address/0x20eb328914bf270544594c04ccc6120c67ccd537) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x20ef88...31f0](https://polygonscan.com/address/0x20ef8850871c97cdc57b85b7de6dbbf9d0e531f0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x20f369...364c](https://polygonscan.com/address/0x20f36928134a19aa14676211b9f1c33eddef364c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x213270...ba56](https://polygonscan.com/address/0x213270795ccf577700cb93d6e69fa52885a5ba56) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x21e55b...6981](https://polygonscan.com/address/0x21e55b38f496a900252ea1a866b482cd37256981) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x225206...4136](https://polygonscan.com/address/0x22520620c91038d5e0be1af6ea383bf49f474136) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x228f77...673e](https://polygonscan.com/address/0x228f77326875c4f0049f3c17510fad59a572673e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x22c002...c501](https://polygonscan.com/address/0x22c00229d74f0a309efe4af1e1b6c848ec28c501) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x22e5b9...064d](https://polygonscan.com/address/0x22e5b999c9c7839fc6e7bc9cdf1c35ca5360064d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2300d6...17b7](https://polygonscan.com/address/0x2300d61cdde06b2acb638db56d5ce33db8d917b7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2325e9...558f](https://polygonscan.com/address/0x2325e981362e0692c9e3193afd3bdd9b2eb1558f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x24691e...46e6](https://polygonscan.com/address/0x24691e46a1af9d8bb39bd3e7a8e5a5c0aa7e46e6) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x248ff5...c166](https://polygonscan.com/address/0x248ff5725c65a88cf2d8c04304826242a09cc166) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x24d68d...bc0c](https://polygonscan.com/address/0x24d68de9c9ab15e1228a5dacc042a821d486bc0c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x24fe73...d057](https://polygonscan.com/address/0x24fe7359cde6153ca6ba69a2ae508cb55d8bd057) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x25226a...0e64](https://polygonscan.com/address/0x25226ad372c4ccda35072ef0b2a9eeb2fcf50e64) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x253615...aa4f](https://polygonscan.com/address/0x2536158c73eb74063d36fc2738ac3fc6e78daa4f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x25891e...d357](https://polygonscan.com/address/0x25891e8904e8850f6ff2f0a6a2fec35a4ba9d357) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2616f7...a204](https://polygonscan.com/address/0x2616f7285bdcb9c3d0422745b1c8a5751e0ea204) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x262271...0fad](https://polygonscan.com/address/0x2622714f19f682c204cd49af7f4bd9f970b40fad) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x27078b...8601](https://polygonscan.com/address/0x27078bbf84a3c1a69017f7c4d3b2f9cbdfb38601) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2767c5...3169](https://polygonscan.com/address/0x2767c58d348b744aea96564e8da64bc9735e3169) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x27d6f8...0bcc](https://polygonscan.com/address/0x27d6f8457da3489a2f5a1f82d0606443c8180bcc) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x27e365...062f](https://polygonscan.com/address/0x27e365cde808bc2f3686e829a041113805a4062f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x282c96...960e](https://polygonscan.com/address/0x282c96ecb5ae106f5186fe87320e481b373b960e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2845f9...c630](https://polygonscan.com/address/0x2845f9aa39439728b6366b9ce46702a56f16c630) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2849ff...af70](https://polygonscan.com/address/0x2849ffacde629456b9a6ef6597dae29a8d8caf70) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x28ef8b...0014](https://polygonscan.com/address/0x28ef8b7f9459fb136b2d82a75704d660046a0014) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x29052d...33d2](https://polygonscan.com/address/0x29052d854a9e544bc093bb666342a43cdc2033d2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x293c1e...94ae](https://polygonscan.com/address/0x293c1e87b90089d3cc1864c62899a2ef012794ae) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2a3115...7e65](https://polygonscan.com/address/0x2a3115ca8543894b25afe598e1640821bd0f7e65) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2acd07...5267](https://polygonscan.com/address/0x2acd0708f54d9216297c39ecf48f7e4fbb2b5267) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2b68bd...c621](https://polygonscan.com/address/0x2b68bd68f551ce4fdbc81d0ed841b7d0b1fdc621) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2bb3f6...dfb2](https://polygonscan.com/address/0x2bb3f618866e1aec6a20b223e647ba722441dfb2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2c4216...a8c6](https://polygonscan.com/address/0x2c4216f88e515f585d6f3534a8856f25bda1a8c6) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2ca645...6bd5](https://polygonscan.com/address/0x2ca64500ff7d5714c58c8912adade64c5aa56bd5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2cd58a...1605](https://polygonscan.com/address/0x2cd58aa14692a3e7ad54b39aaf21409889311605) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2d1a4f...5604](https://polygonscan.com/address/0x2d1a4f6c0bf519f1008eb7515104da0849315604) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2e88a9...9af1](https://polygonscan.com/address/0x2e88a95d360c960622bee94089a2d49f19329af1) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2e88de...fe49](https://polygonscan.com/address/0x2e88dec25f53bcd75c0ac5254d783a5bf946fe49) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2ef006...2155](https://polygonscan.com/address/0x2ef00630fc2abfb4151eb60c41304a3dc41a2155) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2f2a2f...7fd0](https://polygonscan.com/address/0x2f2a2ff450e7cab64420cc959bfbe30b78657fd0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2f95a9...d003](https://polygonscan.com/address/0x2f95a99782b4c9689fd87fe3a27a667b3527d003) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2faa2a...a1e6](https://polygonscan.com/address/0x2faa2aaa8e685bd8d3375e8d958896df46a9a1e6) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x2fd8e3...f75f](https://polygonscan.com/address/0x2fd8e390e20628bab966dc7aeccb74bb474df75f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x30d50b...7f7f](https://polygonscan.com/address/0x30d50b36be1fe4bd1d78553f77937caabad37f7f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x317153...5131](https://polygonscan.com/address/0x317153852769d2cfda01d003ba8dd173e0855131) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x31dfaa...0b1d](https://polygonscan.com/address/0x31dfaac0b635740e7a8b7067ceac703de15b0b1d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x31f6d0...92e5](https://polygonscan.com/address/0x31f6d087341a6678c0ed1dda89a52463264892e5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x321da7...4f88](https://polygonscan.com/address/0x321da7e307120459443f0879a1841afcbe654f88) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x32bde5...ba92](https://polygonscan.com/address/0x32bde5f02f3a82e9abb447535284bc42b6b4ba92) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x330988...7250](https://polygonscan.com/address/0x3309885d06876b1d7f5c91391ff045306f9c7250) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x332e24...646d](https://polygonscan.com/address/0x332e248c367f95b31b966b39f8ac69ad5e9a646d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3336a8...dd5f](https://polygonscan.com/address/0x3336a8289e47d0389b7fba7a68fe1b45214edd5f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3386d2...f74c](https://polygonscan.com/address/0x3386d2db37c02871e51b6dc84da65d2b46d8f74c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x33f528...d3f6](https://polygonscan.com/address/0x33f528901bba063b544c1b4cef8c60dfaf6ed3f6) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x33f9a0...7aa7](https://polygonscan.com/address/0x33f9a0ece351619d096e0b822d707e723bbb7aa7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x342b77...51af](https://polygonscan.com/address/0x342b7721f03935467d034453f96681639b2351af) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x343deb...a7dc](https://polygonscan.com/address/0x343deb540fcec3e1d453534febbb1a34525da7dc) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x344b19...e00e](https://polygonscan.com/address/0x344b19a3d2415835a77af831a4e5c44f03a3e00e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3489cd...0f35](https://polygonscan.com/address/0x3489cd1f1993ba122f5359e4ed5c4f45aa8a0f35) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x34a6db...f3c7](https://polygonscan.com/address/0x34a6db1408bfb8ba75fdd3a62e36d601141df3c7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x34b89e...da72](https://polygonscan.com/address/0x34b89ebfcad66768e3acb7c14338af54bffbda72) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x34ddb7...eed2](https://polygonscan.com/address/0x34ddb7ae0206a9f79ee3277d3bd8437434c2eed2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3609ec...e19e](https://polygonscan.com/address/0x3609ec256eeca73fc412eea81660b0b11599e19e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x370493...7db2](https://polygonscan.com/address/0x3704931d57f4540a6f67a81188c1aa57a4d97db2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x377e33...7327](https://polygonscan.com/address/0x377e33b08a85e270f070338ce0a23c5a55d37327) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x37934c...906c](https://polygonscan.com/address/0x37934c87926962f2ab9d295eebf5ffd7e49c906c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x37b7a1...c018](https://polygonscan.com/address/0x37b7a17554d57bc0be78b207094f02ae85d5c018) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x37e130...1eef](https://polygonscan.com/address/0x37e130266cf12c1f02cc22f0407392de33101eef) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x37e644...c65d](https://polygonscan.com/address/0x37e6449b0e99befd2a708ea048d970f4ff4dc65d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x37f8a6...0f0f](https://polygonscan.com/address/0x37f8a6844593e57971451b0e8b6346c262520f0f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x387668...0ab8](https://polygonscan.com/address/0x38766867c0ee0bd530777f5f19b0d0d28d270ab8) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3904ac...1b1b](https://polygonscan.com/address/0x3904ac366d348636694cb6720aa1540e76441b1b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x397beb...3ed4](https://polygonscan.com/address/0x397bebba8b0badd57952895abd3cc14214413ed4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x39ab25...26b9](https://polygonscan.com/address/0x39ab25f30b7d6a6202b9883c492d656cecf026b9) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3a5890...2cf0](https://polygonscan.com/address/0x3a5890bcb65fd193e7b6da1872b6381bc7d02cf0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3aa426...ca35](https://polygonscan.com/address/0x3aa426b601d687de59388a47f5f280d1621bca35) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3ac318...f51f](https://polygonscan.com/address/0x3ac31829bdf44f899fd564859465fb7e60d0f51f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3c403f...6961](https://polygonscan.com/address/0x3c403f43a2ece56f4fe915f7963db581385c6961) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3c569d...c9fd](https://polygonscan.com/address/0x3c569d3f7250332428550d0abd13fadb6e6ac9fd) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3c6900...6cb3](https://polygonscan.com/address/0x3c6900834be0910dabb10eb4db812f567f136cb3) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3dfb9f...63b5](https://polygonscan.com/address/0x3dfb9f626e92f2e1b276fcafe26d010e350563b5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3e0c57...446d](https://polygonscan.com/address/0x3e0c57fb910adbb0c4fa5a9d68a3086908bd446d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3e186d...5109](https://polygonscan.com/address/0x3e186df7aa2cf860361490b192058cfb33385109) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3e859a...b75e](https://polygonscan.com/address/0x3e859a6742ced336169d8cc27a23ec662d3db75e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3f1f39...fae6](https://polygonscan.com/address/0x3f1f398887525d2d9acd154ec5e4a3979adffae6) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3f538e...71d9](https://polygonscan.com/address/0x3f538e8a7ff13cb3c52e1740583f97801d0e71d9) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x3f66ed...4771](https://polygonscan.com/address/0x3f66ed6508982d992d577bb00e380c09394f4771) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4044e8...2312](https://polygonscan.com/address/0x4044e80a477856d26d245f43e419f82791df2312) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x404532...494f](https://polygonscan.com/address/0x404532e1a6da25dcb482d3bd884fa4b9b810494f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x406ea8...690d](https://polygonscan.com/address/0x406ea81551db71af6c3103ebba82a1d2003d690d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x40a2aa...68e2](https://polygonscan.com/address/0x40a2aa17a77893629d65ec31920d892baf2c68e2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x41130f...6a13](https://polygonscan.com/address/0x41130fd7cdc634cac1c4fc9b51596a2ab0486a13) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x414c3c...99b6](https://polygonscan.com/address/0x414c3c0512372b2f10fd5e4dcfbd951785b499b6) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x418e54...d443](https://polygonscan.com/address/0x418e54c543272237a4d640c30d2c26da1ccdd443) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x42a8b2...3918](https://polygonscan.com/address/0x42a8b2168c02c9d41ce59c6651ec72e910753918) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x434d72...9655](https://polygonscan.com/address/0x434d72456408ff6dc6372f415aacdf6ed8939655) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4473d6...a8d2](https://polygonscan.com/address/0x4473d67a232ed6d2146f8f74e0650e02f40ca8d2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x44cb00...6ab0](https://polygonscan.com/address/0x44cb00608337f0c0b5ebbf512ff043636d0d6ab0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x44d02b...b3f6](https://polygonscan.com/address/0x44d02b50791965f1362f1e30dac618d48fadb3f6) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x457cc5...ed02](https://polygonscan.com/address/0x457cc5d1abeb364e85ddf094ce780dc435a9ed02) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x45963d...c665](https://polygonscan.com/address/0x45963db838a070cf7be8e7046fd63e23d376c665) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x45c903...5755](https://polygonscan.com/address/0x45c9035f70cab239220563ded72e2f3b697c5755) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x45f865...a9b8](https://polygonscan.com/address/0x45f8654620a1173397ad62ba59e2e0cea5e5a9b8) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x470dbf...e04a](https://polygonscan.com/address/0x470dbfe1b809a381f28b9315f2d12fbc13c7e04a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x474b69...80cd](https://polygonscan.com/address/0x474b691fc6f8c202338499eca978cb36537280cd) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x47576c...ffa1](https://polygonscan.com/address/0x47576c419b9ef7f6eaeb5a6593ae3b3e1eeaffa1) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x47750e...b7aa](https://polygonscan.com/address/0x47750e7c336f20a36f699dd820406e5e67ceb7aa) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x479fba...602c](https://polygonscan.com/address/0x479fba09b926b26cefe08ab0f6271b1a80b4602c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x48303c...54cf](https://polygonscan.com/address/0x48303c1dad2c65f39a87b4d9dc68f6957f9754cf) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x48b526...65b4](https://polygonscan.com/address/0x48b52698b4d9b02ad39590253f674d0277ec65b4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x48fd24...4e6e](https://polygonscan.com/address/0x48fd24c8e7f23013175db2db947fecd308604e6e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4915c2...f059](https://polygonscan.com/address/0x4915c2014d723d41ef52c20c85220ca502aaf059) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4924b6...3dff](https://polygonscan.com/address/0x4924b6e1207efb244433294619a5add08acb3dff) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4934f4...fd89](https://polygonscan.com/address/0x4934f41d4ec82256c847cd6c0b203f445bacfd89) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x497934...52e2](https://polygonscan.com/address/0x497934fee794f39f0d00c3571200a68d53b452e2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x49e2a0...2b96](https://polygonscan.com/address/0x49e2a072648fbb4afe062d6c72a84a16055b2b96) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4a0729...305c](https://polygonscan.com/address/0x4a07297303445ed732294b9adbba110757a0305c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4a176c...a2c2](https://polygonscan.com/address/0x4a176c12a8ecc0e727ecb9d99996f6b2c256a2c2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4a642f...b75e](https://polygonscan.com/address/0x4a642f8f499126890fcd3b557a93071bf578b75e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4a7196...8e2a](https://polygonscan.com/address/0x4a7196e92d61bbbafa9a07f190b718e1e26b8e2a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4a8ad3...6084](https://polygonscan.com/address/0x4a8ad3fe0ebd63d8f61aa8d68e46db5fa6bd6084) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4abd67...cfa5](https://polygonscan.com/address/0x4abd67805393605dd63d328cadbbbcc15e6dcfa5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4adde6...533d](https://polygonscan.com/address/0x4adde69c71471310a1416e736ff0522c6917533d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4b417d...2a5e](https://polygonscan.com/address/0x4b417de1a08ca9ef2203db611064ba5a81c22a5e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4b7670...e72c](https://polygonscan.com/address/0x4b767043edf3ccaaf3198d875d30129c78d2e72c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4bce7e...45fd](https://polygonscan.com/address/0x4bce7eb21453dfd857ae0340351cf7fa7e2745fd) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4bfd0a...7896](https://polygonscan.com/address/0x4bfd0ad12619f5a67fe0382e526638512c267896) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4c2f07...7d81](https://polygonscan.com/address/0x4c2f07b2c991595eee40b7343b224f12f2b57d81) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4c5791...f647](https://polygonscan.com/address/0x4c579198830632d3a2eddf14fb80e8ba5779f647) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4c57cb...bd58](https://polygonscan.com/address/0x4c57cb4f307874bd466ec02cc999bd0dbba9bd58) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4c68fe...23a8](https://polygonscan.com/address/0x4c68fe67e900e02528b7eafa1833f519a23223a8) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4da4d9...37e7](https://polygonscan.com/address/0x4da4d94dc3e48252839513d041f7031248fe37e7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4dd33d...29db](https://polygonscan.com/address/0x4dd33dba5afef846904f7f0162290552547129db) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4e084d...7b52](https://polygonscan.com/address/0x4e084dccf22f194e954c0bfbd52482a6ce937b52) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4e0e99...b76a](https://polygonscan.com/address/0x4e0e99402dbd0466835d9c42bfcb6b250422b76a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4e16ea...50ca](https://polygonscan.com/address/0x4e16eaf3f4ebd13688f5a646ad67c696a38a50ca) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4ec034...4300](https://polygonscan.com/address/0x4ec034a6782a56e06a74e7ed70a77e8939dd4300) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4f6957...538f](https://polygonscan.com/address/0x4f6957186577ea8b487cf9b32200df81ff37538f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4f9722...342e](https://polygonscan.com/address/0x4f97227802efe85ba213d2edac174feb23e8342e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x4fb879...9ad2](https://polygonscan.com/address/0x4fb8790bddc83fa40b90b36d9dde5252106e9ad2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5014c7...165e](https://polygonscan.com/address/0x5014c7f1a85873358a3701ac89bc8a50e830165e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x50587c...0395](https://polygonscan.com/address/0x50587c4c64be80c2bebaa0e03fba8998d7540395) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x50ebc1...5353](https://polygonscan.com/address/0x50ebc1852aceb39306dd988e5291720452e35353) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x515a2a...ff98](https://polygonscan.com/address/0x515a2a2c133d735fd2d35c8e1f375e1300c7ff98) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x51ce9b...77be](https://polygonscan.com/address/0x51ce9bcba101ed839be6c87c89b30b196e3477be) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x52fe3c...a353](https://polygonscan.com/address/0x52fe3cbb7e3b667c8c4f8492a254788f736aa353) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x53eedd...c129](https://polygonscan.com/address/0x53eeddb0b58ca5b1b7bbbd787973216331c8c129) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x540e78...feed](https://polygonscan.com/address/0x540e7844a971c78afbf6a5f68725b2380255feed) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x546921...b215](https://polygonscan.com/address/0x546921015d0b41c0184b1cc41c61f3c4a1c3b215) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x547dc5...17e1](https://polygonscan.com/address/0x547dc5024fe6feacb368df895255ddea771017e1) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x54cf6e...d0fd](https://polygonscan.com/address/0x54cf6e3de3e055976db670c481abf67b84c2d0fd) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x552dc4...fd1e](https://polygonscan.com/address/0x552dc4c4b6aa036d3f850677c327e0076833fd1e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x55605f...fa62](https://polygonscan.com/address/0x55605f5ecb51cd22c39944a3e86c3f49c0fdfa62) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x55ff67...3368](https://polygonscan.com/address/0x55ff67c0eb37c257d5e2b994ceebc127ac7a3368) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x562431...49fe](https://polygonscan.com/address/0x5624311598a92eedb832acc15c7e3936f45d49fe) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x570e15...6330](https://polygonscan.com/address/0x570e1541a82901b083eb58d2483e87b3af4b6330) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x57a96d...3eb1](https://polygonscan.com/address/0x57a96d3cd380e9960c988ff805740aa56f763eb1) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x59bed6...7645](https://polygonscan.com/address/0x59bed6882b6b6c3681b684da121856d9d1117645) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x59cc00...1e1f](https://polygonscan.com/address/0x59cc00f2dbe388992f80a99640d3df1f436d1e1f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5a061d...e5fc](https://polygonscan.com/address/0x5a061dd9805cf1ef40ad132e7a9cb163503ee5fc) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5a4c88...08f4](https://polygonscan.com/address/0x5a4c889a70051d91a3f65d7e248f503a243108f4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5a5fb8...6ac0](https://polygonscan.com/address/0x5a5fb848efde848de1ef3f0ce4b91c7b488e6ac0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5b82f7...be70](https://polygonscan.com/address/0x5b82f7cd7eb418b6e224cb2d3dcbfe7e8823be70) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5c2b9d...d393](https://polygonscan.com/address/0x5c2b9d3f381ad43189ba074001ce352b674dd393) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5c2fc9...b679](https://polygonscan.com/address/0x5c2fc922c11b01990f6712a4a299b331a1e0b679) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5c858e...9726](https://polygonscan.com/address/0x5c858e41d9a41de356211b6a1ea0d5079a819726) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5d4c6f...33c3](https://polygonscan.com/address/0x5d4c6f0cc5ce18a747d7024f3a16aae7031b33c3) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5db727...ed12](https://polygonscan.com/address/0x5db727524f83b103db0f53dae6e6191a702ded12) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5de610...954f](https://polygonscan.com/address/0x5de610c605f2b6ae2cd89d374f2c02e571d3954f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5e6bdb...9c2a](https://polygonscan.com/address/0x5e6bdba32153e124598b80479fc4075acebf9c2a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5e72ac...ee53](https://polygonscan.com/address/0x5e72acf063ca0b3e710838208a189d30eee4ee53) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5e9bd3...fc50](https://polygonscan.com/address/0x5e9bd3744dfa441549c37c6c05963e7830e6fc50) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5ef258...d362](https://polygonscan.com/address/0x5ef2587f7d1deb36976e94391e66cfc5c4a5d362) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x5f87fd...c2aa](https://polygonscan.com/address/0x5f87fd157c149035b95a8d0d76f06a9eb336c2aa) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x606435...7ad2](https://polygonscan.com/address/0x606435c41fcd05a7d02126c3e3971efd5a697ad2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x60a878...58aa](https://polygonscan.com/address/0x60a8787c32d1abb065e5fe5cf4ee6d54f12758aa) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x611329...223d](https://polygonscan.com/address/0x61132979d7d427f28e95a5d9b32fd2589ed2223d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x622292...940c](https://polygonscan.com/address/0x622292555a6c8eda91c6a07050697deda4de940c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x624b29...c1a8](https://polygonscan.com/address/0x624b29d666604d4a171c370b317e1f329199c1a8) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x625a03...3750](https://polygonscan.com/address/0x625a0367e78b66a9de2595b0a36be699b16d3750) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x626172...439c](https://polygonscan.com/address/0x626172dd79f9c757c2afa56e108b685ceef2439c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x6300ed...1ac2](https://polygonscan.com/address/0x6300ed968cd4003098474053714e4f3dcf1b1ac2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x631b70...3df4](https://polygonscan.com/address/0x631b7049c45d404b733571fb784a0b35f44e3df4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x633fdd...7831](https://polygonscan.com/address/0x633fddd6df3ce30290e194324e6beb4e88667831) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x634db8...7317](https://polygonscan.com/address/0x634db8f63199469dc23dd39f5f6a4640a4767317) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x635212...dd3a](https://polygonscan.com/address/0x63521299ac1cdbc378f5cab110a4d4888d65dd3a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x638639...d03e](https://polygonscan.com/address/0x6386397f6af1c1ac76d5fd3fba41197784ddd03e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x63eebe...a6df](https://polygonscan.com/address/0x63eebef87e2dd8245b158df590c9c4fc6cbaa6df) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x64bfdf...eb75](https://polygonscan.com/address/0x64bfdf2287578806f11f9eca167b00c1adedeb75) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x64d1df...0722](https://polygonscan.com/address/0x64d1df4c05dbf3fb09390a841c11261226c80722) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x64fcfb...69b1](https://polygonscan.com/address/0x64fcfb2e04e37de68c991872378964d7b92369b1) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x6522f5...927a](https://polygonscan.com/address/0x6522f5643811810c605b17e45ff0e19f37ba927a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x658866...6c72](https://polygonscan.com/address/0x658866c4577d74e42650cdd31353827983376c72) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x65e249...7945](https://polygonscan.com/address/0x65e249ddc09e8ba97ac2381204153b3fb0ab7945) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x66c3c2...ae8b](https://polygonscan.com/address/0x66c3c28c9fabb3d4f77772c63a015f20baeeae8b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x67192b...9735](https://polygonscan.com/address/0x67192bf30de54f0174fedf046b2d95bb43169735) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x672017...7b46](https://polygonscan.com/address/0x6720172dedb9bac66a66fa2e8f62de3e66077b46) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x678d25...fb16](https://polygonscan.com/address/0x678d25be14757c1b16cfa6ec2bd14d3aa69efb16) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x67c497...72f6](https://polygonscan.com/address/0x67c497d68618349ece9f6868056ad6cb23af72f6) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x67f79d...ffa1](https://polygonscan.com/address/0x67f79dedbc4fe836191f0d7829c2aa115c07ffa1) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x68b2f4...d574](https://polygonscan.com/address/0x68b2f4e94c6ca8bb5bebeb485e48027b49bbd574) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x697935...f14c](https://polygonscan.com/address/0x697935dc8391984068273b989752bc82a2cdf14c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x69cd0a...4cd3](https://polygonscan.com/address/0x69cd0a906f6f95b01b2a09137f5f8ccd77234cd3) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x6af03c...98b7](https://polygonscan.com/address/0x6af03cc66f3654b3419ca9f55e4bb7f55b9e98b7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x6b8297...5492](https://polygonscan.com/address/0x6b8297259dd561969dec32558cd5450d32525492) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x6b9bb1...6034](https://polygonscan.com/address/0x6b9bb1b20ddcd22c0c82afc53d1ff4c66a6c6034) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x6bd0c7...13a7](https://polygonscan.com/address/0x6bd0c7a0184a1d4c95bb93011813a8023b0013a7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x6befc7...c7f1](https://polygonscan.com/address/0x6befc74f1ebfcc10444cc7427836ecc13ea8c7f1) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x6c20bb...2b72](https://polygonscan.com/address/0x6c20bbd18c0d14ca2cba9468c41d4daee3942b72) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x6c41b8...d8cd](https://polygonscan.com/address/0x6c41b8cf51914c9bb993ad85b12d28470d62d8cd) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x6c6f11...fcef](https://polygonscan.com/address/0x6c6f1124a68032f18c14f32a51d5b6043fbbfcef) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x6c97b4...f21a](https://polygonscan.com/address/0x6c97b41ce87edf14d9e2e3d6a8b6fb24168ef21a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x6cb8d3...3e41](https://polygonscan.com/address/0x6cb8d3c9e5a3d5d5ba529cbe64024ebcb75c3e41) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x6d82c9...a9a0](https://polygonscan.com/address/0x6d82c9daf917c045d7c41b936e62329d4c8ca9a0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x6dd606...ffe9](https://polygonscan.com/address/0x6dd6066177f1cd070da5a403e0d29a9c3969ffe9) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x6e9809...c063](https://polygonscan.com/address/0x6e98091d6768affbbe0c7b0e1e10b1532cd2c063) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x6fd623...6cf2](https://polygonscan.com/address/0x6fd62393d4057bc4876c2da0c0e9aed034a66cf2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7018c0...d255](https://polygonscan.com/address/0x7018c0bd73255c8966d0b26634e0bc0c7595d255) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x72682f...ba36](https://polygonscan.com/address/0x72682f0f3407a18bfae6cab60bb6afebba61ba36) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x726f7e...808f](https://polygonscan.com/address/0x726f7edf8decdbb854a4a3d111d02d712992808f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x72c2ba...62c2](https://polygonscan.com/address/0x72c2ba15c20072a85784541222448cfe249e62c2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x73d1f6...d534](https://polygonscan.com/address/0x73d1f69029734ef8ca85e000f8d5dd49e17cd534) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x73d717...e6ad](https://polygonscan.com/address/0x73d7173e287ff6431c310eb3e9e8b0ac0a7be6ad) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x742a6c...8639](https://polygonscan.com/address/0x742a6c927ce1bddc104ef4c7b765d56dcdd28639) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7432fd...8ecd](https://polygonscan.com/address/0x7432fde7aefc64f42c87e1be943024368cf68ecd) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x750ea6...8d53](https://polygonscan.com/address/0x750ea656cc9c149abab18e6d8b88817e0f1a8d53) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7552e6...15e9](https://polygonscan.com/address/0x7552e6c79d4a1b3cc70ec1c40d3f3561f75715e9) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x75682f...2615](https://polygonscan.com/address/0x75682f76c9056dca273176bad1cad24a2bbd2615) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x757b33...a165](https://polygonscan.com/address/0x757b339166a1c87535f445b9fdfa0e74784ca165) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x75b644...4fa9](https://polygonscan.com/address/0x75b64428086fd78f480b1e05a8ccfd8071994fa9) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x75ca66...d5d4](https://polygonscan.com/address/0x75ca667035cc8b52ce3971535d198921359dd5d4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x75fcc1...36b9](https://polygonscan.com/address/0x75fcc1ee6a2bad26dcaed5797ffe33304b4036b9) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7652cb...9751](https://polygonscan.com/address/0x7652cb895db3dbe15c226207172ebd145a929751) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x76ac82...b853](https://polygonscan.com/address/0x76ac82eefc5399098e769f65281d2f7cbabfb853) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x76fb30...9c9b](https://polygonscan.com/address/0x76fb307b1b8aca6924ac81ee946078e6f0919c9b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x770e92...3e0b](https://polygonscan.com/address/0x770e926edae915dd6741fa42cedea9db569f3e0b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x77558d...b57d](https://polygonscan.com/address/0x77558d11ca08865c7310fd30fb19629b1c54b57d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x776c94...aa8b](https://polygonscan.com/address/0x776c940149cde7722890667de01b8d3893fbaa8b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x77701c...8dc5](https://polygonscan.com/address/0x77701cafe03a807ff05bffc5ce03015e87338dc5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x77a42a...c5e7](https://polygonscan.com/address/0x77a42a36a4e226ff8df065c820565a92fb54c5e7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x77dbaf...00d1](https://polygonscan.com/address/0x77dbaf1f149230f4fc1e48d4d65db85b77f200d1) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x780092...c5c4](https://polygonscan.com/address/0x7800922c80ecc828bc640f21676bdd2a1849c5c4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x780584...b49a](https://polygonscan.com/address/0x7805840f6e642ab72b54e79ad55efb9f5e84b49a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x781f36...79ec](https://polygonscan.com/address/0x781f36f4706cbebae5cdf9d8a500efa3cda279ec) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x785a4a...c2dc](https://polygonscan.com/address/0x785a4af522a6420ecbe37017857268dfb9cfc2dc) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x789039...dd14](https://polygonscan.com/address/0x7890396e069e9951170f7b8ad376f0a9dfd0dd14) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x79c441...4005](https://polygonscan.com/address/0x79c44190add4250b9fa8493b9fff2797582e4005) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x79d6ee...5501](https://polygonscan.com/address/0x79d6ee36f9f6d7cda34e3bfa39b05e1fbc595501) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7a0977...dda8](https://polygonscan.com/address/0x7a0977b32205adc4b69206937a18e05454efdda8) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7a4508...4e26](https://polygonscan.com/address/0x7a4508269b8db7930189379ce8d556b50a0d4e26) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7b0b28...6f14](https://polygonscan.com/address/0x7b0b2800cc780651aefce69306a75cf31e096f14) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7bdd3b...13ac](https://polygonscan.com/address/0x7bdd3b7339435b88069b6da9a8ed04892bca13ac) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7c3d12...a41e](https://polygonscan.com/address/0x7c3d12d7abf3af32065d89dc1da3b92a8ce8a41e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7cf198...b4c2](https://polygonscan.com/address/0x7cf1988f100a2df22263df666a1f1862e98bb4c2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7d0d2a...bd0e](https://polygonscan.com/address/0x7d0d2a8a265dca399a7d789a953009c9da58bd0e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7dbc1b...7fa0](https://polygonscan.com/address/0x7dbc1bdd71e796b5566cad9deeb4f8aa6ac57fa0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7dc3bb...aec9](https://polygonscan.com/address/0x7dc3bb1a83caf9f0ef4008ac275a01e73b11aec9) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7dcacd...bf74](https://polygonscan.com/address/0x7dcacd8e8206b7082ecb60ebaec6bacc49f0bf74) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7e1ed3...856a](https://polygonscan.com/address/0x7e1ed3e02079da2508546690064dec634899856a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7e233b...58d3](https://polygonscan.com/address/0x7e233b773202f554f9054c3c8198a38fc7a858d3) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7e2638...93d1](https://polygonscan.com/address/0x7e2638d514ad7c464abc2569105c6e5b766793d1) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7e7d02...eef9](https://polygonscan.com/address/0x7e7d02a8bd4ba5028cd167de8b280ae9bae9eef9) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7e85da...e2ae](https://polygonscan.com/address/0x7e85dac03416053a41a7f6e26d035f702da9e2ae) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x7e8a30...e8c8](https://polygonscan.com/address/0x7e8a303cfbcff738fefb640190b1bbaff17be8c8) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x8005c4...2080](https://polygonscan.com/address/0x8005c4f306b71b3512c1e38825f3c048f6e12080) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x805aab...7a82](https://polygonscan.com/address/0x805aabdf4ee6c5503d87dcfbdf234493a4097a82) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x81d998...a685](https://polygonscan.com/address/0x81d99845ab2ffa9186b30387ef6c923518f8a685) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x81ef0d...8992](https://polygonscan.com/address/0x81ef0d23eb834bce21fd8e332e2ad0419bea8992) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x8235a1...2e71](https://polygonscan.com/address/0x8235a13872cd101a6340e1f01682397659832e71) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x835f0f...2422](https://polygonscan.com/address/0x835f0f437f21c05a50c6a20b446e3b9119852422) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x837ad2...0367](https://polygonscan.com/address/0x837ad2e2d0772b808ed92463752e78393ae50367) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x837d12...d220](https://polygonscan.com/address/0x837d1254679d3bfa7ff445dd9df314594261d220) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x838a3f...d506](https://polygonscan.com/address/0x838a3ff5fdde129f1d28ccf7a13af04a4768d506) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x84685c...81d7](https://polygonscan.com/address/0x84685c60a5e23aaa25cb47e9ca200e93f8d681d7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x84b961...2d92](https://polygonscan.com/address/0x84b96129607e65debd696d374b302b7864a92d92) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x84bcd2...7f8d](https://polygonscan.com/address/0x84bcd28406b38c480ed07b72fbe10d3f90877f8d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x8588f0...230e](https://polygonscan.com/address/0x8588f0f43415f523c153ab2fc097ed49098e230e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x866431...f710](https://polygonscan.com/address/0x866431f898700bdfee2528c007ba3cc262abf710) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x8729bf...5133](https://polygonscan.com/address/0x8729bf696da6005b137fbec1e52a3ae1ebeb5133) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x87f9d8...bfb6](https://polygonscan.com/address/0x87f9d86a0df20a97f894dac3b2524a18f10dbfb6) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x888cfe...9ed9](https://polygonscan.com/address/0x888cfe3fa69fd4dcf8431def6cd93e0bcea89ed9) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x888fde...2492](https://polygonscan.com/address/0x888fdeaa839b1d6ab95697cde0d05379bfea2492) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x88914b...8ba7](https://polygonscan.com/address/0x88914b415901c9a9412af2d9815d3a901ce98ba7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x88b95b...d60a](https://polygonscan.com/address/0x88b95bd282d49f871d803bc49668af7ad628d60a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x899be9...b915](https://polygonscan.com/address/0x899be9a05c964a3ef8f9fb3262f9092d0422b915) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x89a356...921b](https://polygonscan.com/address/0x89a35628c24a7ea48fff1d5c153af329b4e7921b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x8ae403...9c79](https://polygonscan.com/address/0x8ae4030ac4195f7e2e817df7a42e67c061409c79) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x8b9465...409a](https://polygonscan.com/address/0x8b9465963fa5f93c250f4946a6e388384661409a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x8cbd8f...34cd](https://polygonscan.com/address/0x8cbd8f5a6301f66e17742a51a9707a705b6534cd) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x8cee4b...422c](https://polygonscan.com/address/0x8cee4b53e1e3c6ac589681789a215ae8a38e422c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x8d1347...e230](https://polygonscan.com/address/0x8d13474f61ec93db60a9f9b1e17a6a82b5aee230) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x8dcf8a...cb96](https://polygonscan.com/address/0x8dcf8a6014df14254ef8ff09fc4e34477bd4cb96) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x8df02d...cfb1](https://polygonscan.com/address/0x8df02d91d6728fb9eec549454d4b76f37210cfb1) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x8ecff5...72f1](https://polygonscan.com/address/0x8ecff5531cc2d03b9430e70eed3f1e6b316172f1) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x8fdb6c...399d](https://polygonscan.com/address/0x8fdb6cfbd3a68071cdc530d5f4984381f349399d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x90066e...f011](https://polygonscan.com/address/0x90066ea226837dca62a15d35d002d17931aef011) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x907345...2c18](https://polygonscan.com/address/0x907345c9d552456fa596b876712a521221762c18) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x9104ba...b66e](https://polygonscan.com/address/0x9104baeac7061e221d5fa3f6d6fba0470722b66e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x915db0...ef6d](https://polygonscan.com/address/0x915db03831be00aee3d8fc3008a372e21928ef6d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x91bb8e...cfd5](https://polygonscan.com/address/0x91bb8e07d2b2199a2048e3de11cd9fc86e78cfd5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x9237e9...3233](https://polygonscan.com/address/0x9237e9da4e81a32cd813f720a93f968f25643233) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x92e77c...7184](https://polygonscan.com/address/0x92e77c81b63b26893aea4888b0a33c9e93747184) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x9320ae...90b2](https://polygonscan.com/address/0x9320ae494438d5431919c80c1d8fa1508abd90b2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x933d73...0f6e](https://polygonscan.com/address/0x933d730c1a1da54975ea91f01ecb9b28a4380f6e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x9343b2...6d8d](https://polygonscan.com/address/0x9343b26ff846361f2a4c0eaf6ac1240fc2bf6d8d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x945dbe...91a0](https://polygonscan.com/address/0x945dbeb5906ab3edb106534c5b141546a87d91a0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x94aac8...cfa0](https://polygonscan.com/address/0x94aac89380918e6ff9cae9b5a54464415e7bcfa0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x94b392...8cdb](https://polygonscan.com/address/0x94b39206759ef66e950204bafe8e37bc01338cdb) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x94d9bc...3daf](https://polygonscan.com/address/0x94d9bc47de80af04cf2b8864f4e3df9f8b483daf) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x954aa2...01c4](https://polygonscan.com/address/0x954aa294b78f53faa9803439be8805c8217201c4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x95542b...463f](https://polygonscan.com/address/0x95542bba034f9aa1aac6ae38e57e5233d01e463f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x955d91...e3af](https://polygonscan.com/address/0x955d91fa6110df7b9f508c718ea080b8b95ae3af) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x955ded...7da2](https://polygonscan.com/address/0x955dedebb6ffe8c10c183e03c9075c92794f7da2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x95d708...9d68](https://polygonscan.com/address/0x95d708e9ee04b0136b98579141624d19c89b9d68) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x95dabd...df98](https://polygonscan.com/address/0x95dabd6821335806f142ef05d9a1da755f30df98) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x96a4c9...323a](https://polygonscan.com/address/0x96a4c938a8a7531bbb26b9871c1782ab5a33323a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x96d964...6ba4](https://polygonscan.com/address/0x96d9648166056c96c6b7465185741e955d136ba4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x970293...c26a](https://polygonscan.com/address/0x970293657ae6b1150e6c3e7847fcf1559ccac26a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x9734f7...0165](https://polygonscan.com/address/0x9734f793dddc2cec70af973e2e77447cf3bb0165) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x97a565...b8f7](https://polygonscan.com/address/0x97a565e55f8a8071b390202ba01db88b17d4b8f7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x98bd57...e0ee](https://polygonscan.com/address/0x98bd57c13edc5f4d7c29707d96d00a5f6c02e0ee) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x99b0aa...b840](https://polygonscan.com/address/0x99b0aa097ce99de9de7a6196d3152d74b3f2b840) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x99b266...65d5](https://polygonscan.com/address/0x99b2664d34fc1137c6f09a3e3496a72c1f3e65d5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x9a1ddc...a3aa](https://polygonscan.com/address/0x9a1ddc073f8dde5ae666c6896ff1bf4f5664a3aa) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x9a65ef...cba5](https://polygonscan.com/address/0x9a65eff1ca218cc45dd54b23db3885e39632cba5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x9c7cee...a790](https://polygonscan.com/address/0x9c7cee7be557fec83af5d60852585545282ba790) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x9ca583...793b](https://polygonscan.com/address/0x9ca5837c621f163fca078caccd0d8c304889793b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x9d7c34...2118](https://polygonscan.com/address/0x9d7c3432cb529810ed5a6e945f3b1c25bb442118) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x9de31a...b69e](https://polygonscan.com/address/0x9de31acb2fa7971dc4252a3a11d3867ab6e5b69e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x9e3a99...191e](https://polygonscan.com/address/0x9e3a99a3919ea34f1a10652aeee8db6aee51191e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x9ef494...29a9](https://polygonscan.com/address/0x9ef49461df90a1160928a3f5a3e43875791129a9) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x9f206c...d54d](https://polygonscan.com/address/0x9f206c00b982710914a607ba949e0b69344cd54d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x9f63ef...c038](https://polygonscan.com/address/0x9f63efec1ca58be6096d7f26b3c99b1888afc038) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0x9fc3b5...3724](https://polygonscan.com/address/0x9fc3b5dc70f8be3b9e9cd4cc18a39d940cdd3724) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa0e605...0d6b](https://polygonscan.com/address/0xa0e605ee8ba7cc1682aaeaf62e439fb4f2c80d6b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa0f03c...6379](https://polygonscan.com/address/0xa0f03c665dea85a8dad5de298ac3a2f1923d6379) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa0fb44...5340](https://polygonscan.com/address/0xa0fb4487c0935f01cbf9f0274fe3cdb21a965340) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa15fe3...d6a4](https://polygonscan.com/address/0xa15fe3a45b0c7017ac1191bd556e3133a7c4d6a4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa183cb...4744](https://polygonscan.com/address/0xa183cbb7f299c1853b64e5906fd29a18d40f4744) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa1b07b...3bed](https://polygonscan.com/address/0xa1b07b426f748e66649b49cae64980cee5063bed) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa1f689...5299](https://polygonscan.com/address/0xa1f68994d0f977ffcb39b69c969632afa6525299) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa215d5...ab2d](https://polygonscan.com/address/0xa215d5f7c70a11d6bf20b0ed51bc8fa0bcf3ab2d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa24722...bbb6](https://polygonscan.com/address/0xa24722806b5a6f2580f6d6d24d395cb21bf0bbb6) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa25d20...8340](https://polygonscan.com/address/0xa25d20fee9badb427b10683d94331940a4808340) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa30105...2e0b](https://polygonscan.com/address/0xa30105d42e0e00f05aa97ca1fbe92a9915232e0b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa35bc5...e93f](https://polygonscan.com/address/0xa35bc5d5b40b17812e7eba685cec5d273722e93f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa38b71...3200](https://polygonscan.com/address/0xa38b715e50663dad62b3a30d04e7142d0f9e3200) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa45d06...bd28](https://polygonscan.com/address/0xa45d06a64f01e946f28cf15dae4869bd58eebd28) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa4653d...6e8c](https://polygonscan.com/address/0xa4653d9614057daa5b3ec04a7289337e56746e8c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa50a78...b043](https://polygonscan.com/address/0xa50a7862a42779cdc9e9b52797093ffb70c2b043) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa5210a...58c1](https://polygonscan.com/address/0xa5210a2fcee4b9114caf4a2cf1e519f7a10658c1) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa623aa...5cf7](https://polygonscan.com/address/0xa623aacf9eb4fc0a29515f08bdabb0d8ce385cf7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa63622...c9a4](https://polygonscan.com/address/0xa63622e67b4aa5809726331ed6fc637082e2c9a4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa68039...61e2](https://polygonscan.com/address/0xa680399a30891a6335ebb189f5ca47c043b161e2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa6da2d...c531](https://polygonscan.com/address/0xa6da2de841d18578743dce9ef6fcf4f2c388c531) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa6edb4...fbe8](https://polygonscan.com/address/0xa6edb4bdc384fa68850ac9983a00dee81414fbe8) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa75e1f...7250](https://polygonscan.com/address/0xa75e1fea2897e5cf9f744fb64083a67d120c7250) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa76d1c...ea54](https://polygonscan.com/address/0xa76d1cbc0bc31c5a7f13d69f7dff92b79ce7ea54) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa7d632...0578](https://polygonscan.com/address/0xa7d632f2fa5572c429591ea3d79b023680c20578) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa81134...0aad](https://polygonscan.com/address/0xa81134d3e442d21d3d67cdba6ddf67ecec310aad) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa8e12e...e103](https://polygonscan.com/address/0xa8e12e115a9a08dbff348838b0863335b6bfe103) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa9759f...c7aa](https://polygonscan.com/address/0xa9759ffc8cecc5ed9945ced4919b3c46e9d5c7aa) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xa9bcbb...78da](https://polygonscan.com/address/0xa9bcbb496b86a9078b02168a6ae1f789e06578da) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xaa5ee7...2f2b](https://polygonscan.com/address/0xaa5ee78cf79c0ed939fcaaf7edf94ced176a2f2b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xaa6e66...796a](https://polygonscan.com/address/0xaa6e6616b47caea2b1e12fadadac60c77932796a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xaaae5a...c592](https://polygonscan.com/address/0xaaae5aabdb7db627c58dfeeba27ba2933a39c592) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xab08b0...9977](https://polygonscan.com/address/0xab08b0c9dadc343d3795dae5973925c3b6e39977) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xab782e...e2ab](https://polygonscan.com/address/0xab782edf7ecf6ba7793f88c6a1ee2ecd7742e2ab) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xaba362...4e6a](https://polygonscan.com/address/0xaba3622cebfef0f6e73001a26a41b0a70a1f4e6a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xac4565...1364](https://polygonscan.com/address/0xac4565468a3ff987ab2ed0e3164b8aec20ca1364) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xac6620...8fe2](https://polygonscan.com/address/0xac6620e65443d15039781cd22148427fb8ca8fe2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xac7534...8770](https://polygonscan.com/address/0xac7534feb9a73c409bd64f76b3467d9aa3428770) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xaca93d...c4d0](https://polygonscan.com/address/0xaca93d621c3928a78e0fc4eb173c988740aec4d0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xace32c...8cc7](https://polygonscan.com/address/0xace32c2f0fb239c5fddfc3b49dc812baa56d8cc7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xad14d2...998c](https://polygonscan.com/address/0xad14d2e0f31431646a2469b8f3cd3e6e2c21998c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xad7d94...45c0](https://polygonscan.com/address/0xad7d948f3b864dbeb0a00010051692ebf9cc45c0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xadd428...80d4](https://polygonscan.com/address/0xadd42840ca17de830f9aa63eb50515d410d980d4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xae4e7b...dd0b](https://polygonscan.com/address/0xae4e7b829a1dc6d5894987ba53d10cf7a50bdd0b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xaebc20...7bfb](https://polygonscan.com/address/0xaebc206718eda20d567b476a0421974b223b7bfb) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xaf5323...2765](https://polygonscan.com/address/0xaf5323aebec6a31a3816026b495df8d72b102765) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xafa915...875b](https://polygonscan.com/address/0xafa915a2b2898d64437629f95d0696120e6b875b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb0bb95...d9ec](https://polygonscan.com/address/0xb0bb95952e7841efafdb859bd9a1b1e0b574d9ec) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb0ee2c...70fd](https://polygonscan.com/address/0xb0ee2c95bca32f6dfbc72ec87bea7ee2e19970fd) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb2b60a...b2a7](https://polygonscan.com/address/0xb2b60aa18c91943ea07dfd76b0a7e5ed4f5bb2a7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb332b6...b28e](https://polygonscan.com/address/0xb332b69e1d11e00b0e9db5fd6bd0c03db4e0b28e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb33705...f5ea](https://polygonscan.com/address/0xb337055642388a6294cba64660567f244697f5ea) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb34bcc...5eb8](https://polygonscan.com/address/0xb34bcc67992b478430fafa4a2146e665a5485eb8) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb4eb83...8fbe](https://polygonscan.com/address/0xb4eb83e9d64d697253d5ec7094dbf360d6fa8fbe) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb543d2...5fbd](https://polygonscan.com/address/0xb543d23c8e45e807fddf7e8b7897e535d2e65fbd) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb5aa51...ba06](https://polygonscan.com/address/0xb5aa51d4eb5d3842fb6001abecba5bd8dc38ba06) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb5b891...4b58](https://polygonscan.com/address/0xb5b89185919df3c5cbfab098c81f7d7757234b58) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb6fc8a...8824](https://polygonscan.com/address/0xb6fc8acbbc89e6f9fab9bdab7563cbcdf94e8824) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb6fe16...2887](https://polygonscan.com/address/0xb6fe16f2a2236315eefec68169bdad823af82887) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb7538d...f6f9](https://polygonscan.com/address/0xb7538d5b0d2b98bd259b88ae80d9f45c0dc1f6f9) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb76084...1fe0](https://polygonscan.com/address/0xb7608425e2aba3c8c59db5f6e32c950c169a1fe0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb7a033...1ef8](https://polygonscan.com/address/0xb7a0335169fcc7d5badfea73f9e6095df3801ef8) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb7ea84...eb3b](https://polygonscan.com/address/0xb7ea8492cd98d32ff2e7450ee18e536e973feb3b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb81af5...824b](https://polygonscan.com/address/0xb81af58ad8b5dac67694ffe574266498af14824b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb85dda...4900](https://polygonscan.com/address/0xb85ddaaf7190f16845273313f1bb31514fb34900) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb89965...cd8e](https://polygonscan.com/address/0xb89965c0c674b5b8257451c03093aba764f0cd8e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb8e168...33e5](https://polygonscan.com/address/0xb8e168a7779f56284747ec4054eaf969320b33e5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb8e2ae...20d0](https://polygonscan.com/address/0xb8e2ae1e06c050e192325b10e4385c06174b20d0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb91f29...c8a8](https://polygonscan.com/address/0xb91f29b52a0b21e2c4de5bad792edf7bbc74c8a8) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb96011...9cb6](https://polygonscan.com/address/0xb96011247c62b1a1eea65ee0bd323853d8649cb6) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb9ad84...9560](https://polygonscan.com/address/0xb9ad84192fda4bdeaeb67416c6120b1ec4309560) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb9e0dc...3cbc](https://polygonscan.com/address/0xb9e0dcc0fe962466e321eceb16fc748581253cbc) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xb9f975...8ddb](https://polygonscan.com/address/0xb9f9755357a062c3d1f4f03a9486bf61fd238ddb) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xba6181...34f1](https://polygonscan.com/address/0xba6181bc45071be46e3e0c625728c3985b1134f1) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xba66cd...63d4](https://polygonscan.com/address/0xba66cdc867f9b33109652bab5ba1a5f27ab963d4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xbaacd2...bf4d](https://polygonscan.com/address/0xbaacd26f2161a06a2021d6879b45f75f7227bf4d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xbb4e13...1103](https://polygonscan.com/address/0xbb4e13deaa77d4973149ec3482b6dd06b8951103) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xbb95a6...360c](https://polygonscan.com/address/0xbb95a65f4e2748e0930b548e396810034487360c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xbbfede...ee15](https://polygonscan.com/address/0xbbfedee8ec268dba503e729ed3657b62ca00ee15) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xbc0fed...8228](https://polygonscan.com/address/0xbc0fed02ef7135d46cbb11b8e30811fb31138228) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xbc799b...6ed7](https://polygonscan.com/address/0xbc799b30c440e3ff7173823fce090712bfcb6ed7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xbcb5a9...8cac](https://polygonscan.com/address/0xbcb5a9c4baba5bee700a1f8cffcde7674ada8cac) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xbd5bef...223b](https://polygonscan.com/address/0xbd5bef84e96391e00eb1903f37023c46e01d223b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xbdac5f...9b40](https://polygonscan.com/address/0xbdac5f436ed0dd9fd494bd4ea155d74da6ab9b40) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xbe3f55...0f59](https://polygonscan.com/address/0xbe3f55b8e940af48e2650b5eccb7c277d2650f59) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xbe60a7...521a](https://polygonscan.com/address/0xbe60a7f5fd27674cbf4f15114a469ddbfe46521a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xbe9aa8...b28c](https://polygonscan.com/address/0xbe9aa82517dbedf2c1c1ae73a48b151593f8b28c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xbf9682...4235](https://polygonscan.com/address/0xbf9682d40a3d9a85a5759dfdeb92ad67750f4235) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xbfa04c...3d43](https://polygonscan.com/address/0xbfa04c81524bac84ed8f8c7bb4c99af397df3d43) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xbfa9ec...de92](https://polygonscan.com/address/0xbfa9ecdc50dac567a7d4b434fab58f675a86de92) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc02bed...f382](https://polygonscan.com/address/0xc02bedc4af242219f1e3a9b3041559427376f382) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc0b5ce...1a70](https://polygonscan.com/address/0xc0b5ce05fa6cfc3bceca36867a24ede23e0d1a70) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc1064d...c4ab](https://polygonscan.com/address/0xc1064df4e060c000174315f36820a47bf62ac4ab) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc194d4...95cc](https://polygonscan.com/address/0xc194d4f3d61ad50f8c1497534f6912ee6b3795cc) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc1c520...97ca](https://polygonscan.com/address/0xc1c520c7435dc0556a5f84826a0fe19f816a97ca) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc1feb5...d4e0](https://polygonscan.com/address/0xc1feb51e43f84cd1028a51daa1e6ef5de23dd4e0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc25541...f2e0](https://polygonscan.com/address/0xc25541bd496214bd81d542d9902cd566a047f2e0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc25f5d...3334](https://polygonscan.com/address/0xc25f5de2f7005e90fbfaa6edb0a6b0ab93733334) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc2752c...c910](https://polygonscan.com/address/0xc2752c779ab47620d87bf5c18e3c949ee394c910) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc28147...5873](https://polygonscan.com/address/0xc28147d54aabda30270f5ee767d2e694c4625873) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc2cef5...526a](https://polygonscan.com/address/0xc2cef5ab1f3a9239ea4fe8dce91468934a67526a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc2eafd...c686](https://polygonscan.com/address/0xc2eafdd8c2e5064e96d98a4f2aa85b45989ec686) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc2f83e...6984](https://polygonscan.com/address/0xc2f83e600ad5883619c9d4219559d1e2f6106984) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc34f55...1411](https://polygonscan.com/address/0xc34f55b2257f4c8c99e17938dc7b95aaeb5e1411) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc54e80...562d](https://polygonscan.com/address/0xc54e806eaae9c61024cb7534d5adacb970f2562d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc54f69...9a41](https://polygonscan.com/address/0xc54f6974f6023e5d0a0ec45bb5fd0644f37d9a41) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc5bac5...7a00](https://polygonscan.com/address/0xc5bac5f18b38f5a8dfadbdedb5a3318194a87a00) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc5d860...66a0](https://polygonscan.com/address/0xc5d86097fafbc87d7cacca877c2599cd900066a0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc62407...5194](https://polygonscan.com/address/0xc6240794a7bd219ceb09f8a6a509831d844a5194) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc64e03...a5a0](https://polygonscan.com/address/0xc64e03012fc63b13e16d51037b2d6c00045fa5a0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc67f4c...d6c4](https://polygonscan.com/address/0xc67f4c4cd72415a3c5521af34783d7207233d6c4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc6e504...5ce1](https://polygonscan.com/address/0xc6e504617efdaada1655a52460b3cb5360625ce1) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc78e55...0215](https://polygonscan.com/address/0xc78e552c429ae9702b7f0bb6f821d45c934c0215) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc7da04...a47b](https://polygonscan.com/address/0xc7da04813d3e748ff399abfd0287df6b3730a47b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc86da0...b4ec](https://polygonscan.com/address/0xc86da0e0ab32df1427bd9d3fbab16b91cb1ab4ec) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc8a4aa...e94a](https://polygonscan.com/address/0xc8a4aa3c20c02d058be212a5d078b3d6bffbe94a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc90609...5abf](https://polygonscan.com/address/0xc906090783b8734707d395fdafad185650565abf) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc91aed...8612](https://polygonscan.com/address/0xc91aed5ecfdd25ee5fcd88f6ebfeaa2599ca8612) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc9c079...5482](https://polygonscan.com/address/0xc9c0790249c7ee93868238a658d15990a3335482) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xc9c453...5fd1](https://polygonscan.com/address/0xc9c45308e4ba010a758c8f293d041c2443685fd1) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xca305e...3570](https://polygonscan.com/address/0xca305eececbb8fdf48c933639d99082a7b243570) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xca3266...928a](https://polygonscan.com/address/0xca3266a84132be60237fdd792d7c0fe5c8af928a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xca78d6...487e](https://polygonscan.com/address/0xca78d69f735ed75d91223c8d512da4a5d856487e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xcad951...94ac](https://polygonscan.com/address/0xcad951cdae2af106e06f3570ee6ee9df509394ac) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xcae07f...638b](https://polygonscan.com/address/0xcae07f1e059de9f00891b3cd32ce4c4885b7638b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xcae3c1...ca20](https://polygonscan.com/address/0xcae3c167d3b0736163a92636de608441716fca20) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xcc8865...efe4](https://polygonscan.com/address/0xcc88655947951771a3194e97d894e7266d17efe4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xcc8bd8...4436](https://polygonscan.com/address/0xcc8bd8e8a436bc429f451e74c006e8f3d48a4436) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xcd12f7...6c6b](https://polygonscan.com/address/0xcd12f78ecf9cfb64c7fdb7b048ead5ba16ae6c6b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xce6372...cfe2](https://polygonscan.com/address/0xce6372ec3b086250cff3a4c92b27b8bf94b9cfe2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xcea404...26d1](https://polygonscan.com/address/0xcea404b92980094f2c15db45c900124e73fd26d1) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xcea95d...7e76](https://polygonscan.com/address/0xcea95dab4f92254921924e9cc76b841111ac7e76) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xcebce3...ca18](https://polygonscan.com/address/0xcebce318aa46ccd88d5b0f3f120dcca7776bca18) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xcef974...5506](https://polygonscan.com/address/0xcef974258aa5d359a8897254ab98db15d6045506) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xcfb065...c13c](https://polygonscan.com/address/0xcfb065bf7f785acd0623db0f76a6d7719bd0c13c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xcfe888...aa06](https://polygonscan.com/address/0xcfe88814f8ef4bcefeb4483046b7229511e8aa06) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd052d6...74a0](https://polygonscan.com/address/0xd052d678a0923d877468d07675e915529c8774a0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd087fe...b8cc](https://polygonscan.com/address/0xd087fe6b447892dcb8c2a5a397196a8c948bb8cc) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd0f8be...7838](https://polygonscan.com/address/0xd0f8be854321cb4e14bf74e556286d91e1237838) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd188d4...7253](https://polygonscan.com/address/0xd188d4bd9c06dd67d2f1b06f83b061d448647253) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd2158b...e15d](https://polygonscan.com/address/0xd2158b04ec21f9ea137d896267101558d576e15d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd2c587...aa42](https://polygonscan.com/address/0xd2c587cd5d0940d80100757aff51c29906b0aa42) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd2d020...828a](https://polygonscan.com/address/0xd2d0205a6a276fcc7388f022ea2b4d9448b7828a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd2f187...c4a1](https://polygonscan.com/address/0xd2f1876a91c13e7b07773f18cafe00472c3cc4a1) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd3105e...a74a](https://polygonscan.com/address/0xd3105ef854007fb2f9f7278fa4fe72d3c097a74a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd39b4f...7c28](https://polygonscan.com/address/0xd39b4fba802b96788cb611bd428ce8a3ae8e7c28) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd3c454...c2b4](https://polygonscan.com/address/0xd3c45430dcdf9320a614defbba9d9ee32a37c2b4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd3dc0b...6b0b](https://polygonscan.com/address/0xd3dc0b0fef5c1219dd5defb266d95cff84316b0b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd40919...7756](https://polygonscan.com/address/0xd4091995c00afe95a4b0b279ad3fc696c4e87756) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd43c64...c628](https://polygonscan.com/address/0xd43c64629a76b5ce64b51663483ecdff36dac628) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd4a604...97e8](https://polygonscan.com/address/0xd4a6044e77813c719dcb23e87f7fa53b94fc97e8) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd4af3d...3991](https://polygonscan.com/address/0xd4af3dba477a23e2724e5bc549db7a2b28d33991) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd4f27f...0c84](https://polygonscan.com/address/0xd4f27f7303b0b0bd91642aacd5c21cb5301f0c84) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd4f564...b5e4](https://polygonscan.com/address/0xd4f564e4ffad525e4b5000e7a2a0e723823db5e4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd4f9fc...7521](https://polygonscan.com/address/0xd4f9fccfe4523a1ad78440aad1494fcc0fa67521) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd5d5cd...8728](https://polygonscan.com/address/0xd5d5cd933e50ae19a7a06cd6d5b4dbebde2f8728) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd5ecdf...3e49](https://polygonscan.com/address/0xd5ecdfa690bcdc08bbd9613ced2b27449a963e49) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd7a170...d4eb](https://polygonscan.com/address/0xd7a170bd84aa4ff763056fb2543ef4508a62d4eb) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd7d850...9ff3](https://polygonscan.com/address/0xd7d850c7c94184f05939f0da20fb218a6b539ff3) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd80da3...a873](https://polygonscan.com/address/0xd80da347d204f229345047b94ccc09a88e6ba873) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd83823...f964](https://polygonscan.com/address/0xd8382316c6f784a2c49ecdffdc9a4d051f49f964) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd85b8e...ba73](https://polygonscan.com/address/0xd85b8e6fb72633b7f4e995ae232373e60188ba73) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd86a87...6966](https://polygonscan.com/address/0xd86a87ddf6c1fbc43c1fe67e8b661c0341b96966) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd8b9e9...a86a](https://polygonscan.com/address/0xd8b9e9444fcbf26bea4badd6142dd6a962bca86a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd8dfd2...dab6](https://polygonscan.com/address/0xd8dfd289ed047ba37e87a80d617666545831dab6) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd90cf1...fd78](https://polygonscan.com/address/0xd90cf1597980745798fd5bb62978746c5f9afd78) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd93a60...b38e](https://polygonscan.com/address/0xd93a608fed8df5a88f8d6058c2969f339b5eb38e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd9872d...0791](https://polygonscan.com/address/0xd9872d7cb045886c2a0b01886b8a47c821180791) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xd9c770...1d2d](https://polygonscan.com/address/0xd9c77004cd3fc5a864136b3377d6c194ae0f1d2d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xda8921...d71a](https://polygonscan.com/address/0xda89211d3b9e18448f2ba5a2d34270e4d6e7d71a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xdab0ff...9e1c](https://polygonscan.com/address/0xdab0ff0fa6d154192ba2d3b74c502b56bcba9e1c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xdae576...6e0f](https://polygonscan.com/address/0xdae576ea8b1f68f9ee89b88d9391e2b277ad6e0f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xdb86d6...7df7](https://polygonscan.com/address/0xdb86d6195d516141303fff248f288ad5bc247df7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xdbda2c...676d](https://polygonscan.com/address/0xdbda2c5360d7ea5e102c10c5aaa0517c9ee0676d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xdbf078...50fa](https://polygonscan.com/address/0xdbf0783395cdd2e1185d20897ddc298b88db50fa) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xdc997b...9d3a](https://polygonscan.com/address/0xdc997b2eaf47f95a73f3fcc5f569240eb5b89d3a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xdce3c8...73e0](https://polygonscan.com/address/0xdce3c84fc592f08055d01477ca91f3cf9f9673e0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xdd1a9a...717c](https://polygonscan.com/address/0xdd1a9a21462ca0a333a68749974ce88f18c9717c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xdd5277...cace](https://polygonscan.com/address/0xdd52778c99e54d5a17f07ef9dccc2175ea44cace) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xdd84eb...ab7f](https://polygonscan.com/address/0xdd84ebe1990272b47c99b48d7e391aa385cdab7f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xdd8b95...edb5](https://polygonscan.com/address/0xdd8b951521b7394356e97b78ce67b230c400edb5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xdd96c7...49f6](https://polygonscan.com/address/0xdd96c7620ff73c3ed9123e0a55c310e19d1c49f6) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xddd442...4103](https://polygonscan.com/address/0xddd4421f4975a007dbc579e0fdce2f5bc5204103) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xdde5b6...3dce](https://polygonscan.com/address/0xdde5b6de853e1c3b42cd580506888ecdc5f63dce) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xdfa353...d91b](https://polygonscan.com/address/0xdfa353df72cfe2b0fa8172c5d7a9f197bbf8d91b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xdfa4f7...d852](https://polygonscan.com/address/0xdfa4f787d295f33be3fb25388e3b1df3554fd852) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe07671...dcaf](https://polygonscan.com/address/0xe076718144fb7ae997504f5dbf880d78d7ffdcaf) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe0867e...2a66](https://polygonscan.com/address/0xe0867edabe7a6cc3752ec3681e74fcb46e7c2a66) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe0eae3...eb16](https://polygonscan.com/address/0xe0eae335116f5a2f141e9c65729930a4a9eeeb16) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe1642f...e20e](https://polygonscan.com/address/0xe1642fd46638630daa47075fc75dd9ce2a83e20e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe16b02...5284](https://polygonscan.com/address/0xe16b0244877e42cf861b680c9f07d87ffa225284) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe19e30...6494](https://polygonscan.com/address/0xe19e308864e6d0882cf7b68a60c0ef25e8706494) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe1a4a1...bc55](https://polygonscan.com/address/0xe1a4a1d05e455dc258c58cc8fdf1700e8f0dbc55) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe20f6a...a902](https://polygonscan.com/address/0xe20f6abbd829f709736f1282f3a9195dd073a902) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe2a45f...199a](https://polygonscan.com/address/0xe2a45f1a8dae0cfca16451814203e1c1ae71199a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe2befb...b3b5](https://polygonscan.com/address/0xe2befb706583d260129c736e4d15e21f5fbab3b5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe32030...f8ad](https://polygonscan.com/address/0xe32030c55091044956beba12e7ce55cf844ef8ad) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe324ae...7196](https://polygonscan.com/address/0xe324ae054161c331169aabfd9d748ea5da157196) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe358af...07e6](https://polygonscan.com/address/0xe358afd82bdebc79ce4b18c3ebc5752382f807e6) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe3b00a...7363](https://polygonscan.com/address/0xe3b00a5fa1fc6c2bbc262bfe7ee0a24e88af7363) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe3c317...d070](https://polygonscan.com/address/0xe3c3179b800dd505bb2ada741a2702634a0ed070) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe3f636...1b69](https://polygonscan.com/address/0xe3f6366373a4eb583b8ec31609ec721b93461b69) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe40e04...2c6e](https://polygonscan.com/address/0xe40e04c1765f2c6668b947816c2a5e2d72222c6e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe46a2e...d56c](https://polygonscan.com/address/0xe46a2ecdb5f64d9e938c3307a77addda92afd56c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe4f568...5054](https://polygonscan.com/address/0xe4f568e88b4e6688016696671070be8efde75054) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe54993...6d3b](https://polygonscan.com/address/0xe5499376e3e7965d6e6f416042c1d9046d5e6d3b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe54f5d...39b9](https://polygonscan.com/address/0xe54f5d4ba8e490c568d96df27300e50cb8a539b9) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe55f08...9362](https://polygonscan.com/address/0xe55f08576054922b38ad7fda6929cecbdb0e9362) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe56597...6a3d](https://polygonscan.com/address/0xe56597ae6c3483365cb35dc846789c36e10d6a3d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe5d146...aeed](https://polygonscan.com/address/0xe5d1466602290747f94ab255dbfc6341ede3aeed) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe5d806...9598](https://polygonscan.com/address/0xe5d806c3aa660b2b1d7b1f3b266f903d6d629598) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe6b9fc...dcfd](https://polygonscan.com/address/0xe6b9fc56a4ee630189034fe38fe79788af4fdcfd) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe6bcf1...3454](https://polygonscan.com/address/0xe6bcf18b0c3e01f27528b56fbdfcb2b042653454) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe6d0c4...59ce](https://polygonscan.com/address/0xe6d0c46272a213586d35cd18121ee1ae392e59ce) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe8378d...5454](https://polygonscan.com/address/0xe8378d85d40546d1d8dd572f975425e547815454) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe874e8...1bae](https://polygonscan.com/address/0xe874e8c11140dd320c092676389a3271c1f91bae) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe899ea...cba3](https://polygonscan.com/address/0xe899eaf3c4be79bc4e8e9cd6e7c10ab5b30dcba3) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe8b1ab...9aa3](https://polygonscan.com/address/0xe8b1ab6344f6d97281c35e57f4338d1d3bb09aa3) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe8e7b8...137b](https://polygonscan.com/address/0xe8e7b8ad722187db5bbe3ed2d47abd87e684137b) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe90291...d95c](https://polygonscan.com/address/0xe902914fa6f597840916afbf1a2b3181ea95d95c) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe91994...d6e6](https://polygonscan.com/address/0xe91994719609feb5ba9f434dbe3171d3c724d6e6) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe92f17...3be5](https://polygonscan.com/address/0xe92f17120caa25defa73114f794a8c8fe64e3be5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe95571...54d2](https://polygonscan.com/address/0xe95571ddc550144420f5590e7a50fe1e230554d2) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xe98dd9...c196](https://polygonscan.com/address/0xe98dd90b2e7aa71f14d8621fe6dc486a3bd2c196) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xeab57b...ce8e](https://polygonscan.com/address/0xeab57ba78923720a5dafcedcd80d9f6df53cce8e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xeb5ba0...a7c8](https://polygonscan.com/address/0xeb5ba03044aefe72b7d3c6e8f345c5004521a7c8) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xeb6572...979d](https://polygonscan.com/address/0xeb657251d1bb12cc492fc14e5343ff9e84b2979d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xeb6a0c...3e82](https://polygonscan.com/address/0xeb6a0c74653974593a39b48c15d03bb72cd83e82) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xebe14a...c696](https://polygonscan.com/address/0xebe14a4ef6969eb1c6d61e30ef15786d8be2c696) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xebfca2...cda4](https://polygonscan.com/address/0xebfca21a608e6d3ce43d59aa8891100ac754cda4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xec2ceb...0e87](https://polygonscan.com/address/0xec2cebbdccdf59c531f4ef07900ae392668e0e87) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xec6f6f...5d92](https://polygonscan.com/address/0xec6f6f5befc171d875a65063cfdb8eeffa215d92) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xecb29e...cd1d](https://polygonscan.com/address/0xecb29e628239f14ed69cb8fa7e071401b6b3cd1d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xecdda8...6efb](https://polygonscan.com/address/0xecdda8ecbfa2ddbf3837e0c7833c11059c8b6efb) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xecf185...3a05](https://polygonscan.com/address/0xecf185d8114664e42dae0701eaff1a50a3613a05) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xecf3c8...f542](https://polygonscan.com/address/0xecf3c8535ac651a3335b6853c9f6b98e2c9cf542) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xecfa95...0761](https://polygonscan.com/address/0xecfa958ce2e8748db35e5d375bd9205b6e140761) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xed1eee...fae9](https://polygonscan.com/address/0xed1eee21da1dc2e25106ecd596df30fd72ecfae9) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xeda636...b0da](https://polygonscan.com/address/0xeda636bc2de66cfbb24a7380645063582cd6b0da) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xee0108...2747](https://polygonscan.com/address/0xee01085cefe7ca70f3a123c98e67a1c09b132747) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xee0d7c...3828](https://polygonscan.com/address/0xee0d7cca14c0dd27f5cb8bf4c3207bde94b53828) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xee5426...f254](https://polygonscan.com/address/0xee5426fb0a07352f1da92b7069f8e61e9144f254) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xee8436...03d5](https://polygonscan.com/address/0xee8436114bbfd0ff5f4a1b587517234eb99a03d5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xee9956...0a32](https://polygonscan.com/address/0xee9956cd23e36f543e24ab5d3b90c49ba8d90a32) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xeeb56d...b2b9](https://polygonscan.com/address/0xeeb56d892f4daf9dba287326f29f612e5559b2b9) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xef257c...51b0](https://polygonscan.com/address/0xef257c8ec41b1602b97f689ce1517114288251b0) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xef64ce...a7e9](https://polygonscan.com/address/0xef64cef2ecee1c6cf3f7a90dce452ea69b30a7e9) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xefe500...5bda](https://polygonscan.com/address/0xefe5009de4d1cd4902c04ae1d2121104d0d85bda) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf0132a...9f30](https://polygonscan.com/address/0xf0132adf25b118ed6740f2ee4716bcd548a19f30) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf04958...0143](https://polygonscan.com/address/0xf04958f6bfc42cfb287dae80391a992adf910143) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf04eef...ef7e](https://polygonscan.com/address/0xf04eefd301a16896d118c4f2159f690cdf00ef7e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf09ee8...c6c9](https://polygonscan.com/address/0xf09ee8fb8017b026d65f87324da0d4237dc9c6c9) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf0a823...50f5](https://polygonscan.com/address/0xf0a823f2573ef8ea734a0eef143557ca0e3e50f5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf0fec8...b5ad](https://polygonscan.com/address/0xf0fec84b115f46b985b1b78c1402f2c6dd0cb5ad) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf12e1b...0c0d](https://polygonscan.com/address/0xf12e1b0fdb4a434c9fa532e8d6c04d958c4a0c0d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf25672...67de](https://polygonscan.com/address/0xf25672d4a17a610ac9f9411dece8102587d767de) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf361d5...da5d](https://polygonscan.com/address/0xf361d5b5ff702c96a761d23288ca0c1eed35da5d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf3bf24...d5e6](https://polygonscan.com/address/0xf3bf24ddd4eb66640d5013211764524802abd5e6) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf3c824...d1ae](https://polygonscan.com/address/0xf3c8245cf58f64f0fc912f8f3364f67682c2d1ae) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf451c0...53a4](https://polygonscan.com/address/0xf451c0edb50a57480cfd9f793c1678abf64b53a4) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf755d6...a2f6](https://polygonscan.com/address/0xf755d65b0825a327e98249452a9f79ce47efa2f6) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf7c531...6e3a](https://polygonscan.com/address/0xf7c53132f8a0c16c34ff8cbe1a910887780c6e3a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf8a604...8c49](https://polygonscan.com/address/0xf8a604b47b3a75ac57641bc0d26f9100f8df8c49) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf8c5ac...154f](https://polygonscan.com/address/0xf8c5ac4c2ed9915c1cf25ce54c80785ece65154f) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xf9e51b...fff7](https://polygonscan.com/address/0xf9e51bd82142144a8a9497f306ebc62ca191fff7) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xfa146e...125d](https://polygonscan.com/address/0xfa146e4c8bb19f4bde299613d45d4d152ab0125d) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xfa6b66...d038](https://polygonscan.com/address/0xfa6b66878ff3af3468f289dc175aa3e681a0d038) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xfc31f5...aeb5](https://polygonscan.com/address/0xfc31f52013c68a13f2ccce804146f1c502d1aeb5) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xfc5da9...7d9a](https://polygonscan.com/address/0xfc5da92d0745f55f1c9230ee12a564542d6e7d9a) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xfe52e9...bb61](https://polygonscan.com/address/0xfe52e9436af77e725e6ec5d3ae2ab19e82e2bb61) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xff7145...f70e](https://polygonscan.com/address/0xff71459258f9c071d9187aa9591ce9947ef6f70e) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xffac8d...0532](https://polygonscan.com/address/0xffac8dfd381c61e7b832485c715917d5baff0532) |
| DMMPool | vault_pool | vault_pool | likely in scope | [0xffe595...e226](https://polygonscan.com/address/0xffe595814e4ecfb1b9eefbbe86a045b888dae226) |
| DMMRouter02 | router | router | likely in scope | [0x546c79...4dd1](https://polygonscan.com/address/0x546c79662e028b661dfb4767664d0273184e4dd1) |
| DSLOProtocol | core | core | unmatched | [0xcab2fa...4f6c](https://polygonscan.com/address/0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c) |
| EIP1967Proxy | proxy | proxy | unmatched | [0xb0b195...1b0b](https://polygonscan.com/address/0xb0b195aefa3650a6908f15cdac7d92f8a5791b0b) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x2f577a...655d](https://polygonscan.com/address/0x2f577a41bec1be1152aeea12e73b7391d15f655d) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0x58f1d0...3f3e](https://polygonscan.com/address/0x58f1d0f9bff9d695010c92fb93d100cef5113f3e) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0xd8ac7f...cdb4](https://polygonscan.com/address/0xd8ac7f696ae99cd7b689726cf03c5711dd8dcdb4) |
| ERC20TOKEN | token | token | unmatched | [0x632e36...f104](https://polygonscan.com/address/0x632e36fa21e918e991a9e782ecde9ff0cf7cf104) |
| ERC20TOKEN | token | token | unmatched | [0xae7afe...8333](https://polygonscan.com/address/0xae7afe18707b5970bd27ecbf5730d9779f978333) |
| ERC20TOKEN | token | token | unmatched | [0xb8f743...d4be](https://polygonscan.com/address/0xb8f743cf4e92da4d7cc181ef7de3a5b83277d4be) |
| Factory | factory | factory | unmatched | [0xc7a590...8c4a](https://polygonscan.com/address/0xc7a590291e07b9fe9e64b86c58fd8fc764308c4a) |
| KSElasticLMHelper | peripheral | peripheral | unmatched | [0x35be3f...0870](https://polygonscan.com/address/0x35be3f4fd8239a35a7f120756d4d69e5c5e10870) |
| KSElasticLMHelper | peripheral | peripheral | unmatched | [0x6afeb9...05c8](https://polygonscan.com/address/0x6afeb9edd6cf44fa8e89b1eee28284e6dd7705c8) |
| KSElasticLMV2 | core | core | unmatched | [0x3d6afe...7a43](https://polygonscan.com/address/0x3d6afe2fb73ffed2e3dd00c501a174554e147a43) |
| KSElasticLMV2 | core | core | unmatched | [0xa70a1a...0e0e](https://polygonscan.com/address/0xa70a1ad0f91c52c79e177c5a18a7c9e1c4360e0e) |
| KSElasticLMV2 | core | core | unmatched | [0xf2bcdf...6dbd](https://polygonscan.com/address/0xf2bcdf38baa52f6b0c1db5b025dfff01ae1d6dbd) |
| KSFactory | factory | factory | unmatched | [0x1c758a...9be5](https://polygonscan.com/address/0x1c758af0688502e49140230f6b0ebd376d429be5) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x005dbe...e4b8](https://polygonscan.com/address/0x005dbec2d6dfba90d3193063b82fb8d8f0b4e4b8) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x00da65...aecb](https://polygonscan.com/address/0x00da652cc13357dd622af5161c97aab66d05aecb) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x017ee4...1494](https://polygonscan.com/address/0x017ee44be4cf28c3548150300815e3eeebc91494) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x023333...f4c8](https://polygonscan.com/address/0x023333a48d103d387459a10c3f9acc996750f4c8) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x023c27...a02e](https://polygonscan.com/address/0x023c2773aa71b4b1ca7d30dd11748fe32a4fa02e) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x0264bc...5ed6](https://polygonscan.com/address/0x0264bc7413d8daa06502e4421a130dade2385ed6) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x02c992...141c](https://polygonscan.com/address/0x02c992561ccebf8ccaa9f0f25dfb1a16b03f141c) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x02d736...56b0](https://polygonscan.com/address/0x02d73618aa94d0ea8c1592fbcb61f2e88ab256b0) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x0323f3...4a47](https://polygonscan.com/address/0x0323f337dbf4c63d7c34b96116c9339d96e74a47) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x03d8fb...1d70](https://polygonscan.com/address/0x03d8fbba7c7522c54149047dfa4d3fde11491d70) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x05ffdb...3a76](https://polygonscan.com/address/0x05ffdb3d0566d0942324fda4da214d4c15ba3a76) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x061be7...b690](https://polygonscan.com/address/0x061be7b24fd7b7913014d7c2f78373a01a0eb690) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x0b7a89...35ba](https://polygonscan.com/address/0x0b7a895c8ec5727faf61ef46b7d39c721c1135ba) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x0b92f4...51af](https://polygonscan.com/address/0x0b92f40168f52200c52d4891c8d0f1d8e60551af) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x0ddd51...46c4](https://polygonscan.com/address/0x0ddd518f837ddf6e8ad443196e72dc1629fc46c4) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x0e4be9...5ab3](https://polygonscan.com/address/0x0e4be974a05f2cb0add1c7c3f9f425438e905ab3) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x0e4d23...3f04](https://polygonscan.com/address/0x0e4d23a6e547f90a542653bcb1c9b76893323f04) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x104bc9...721c](https://polygonscan.com/address/0x104bc969c48af9e2d298da1b587973f175c1721c) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x10a1e4...c45d](https://polygonscan.com/address/0x10a1e48f317062614ac2c2f9b7b45f8ea62dc45d) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x120247...f4f0](https://polygonscan.com/address/0x12024725cf3286e51b03889b47823e7b41edf4f0) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x122831...1a27](https://polygonscan.com/address/0x1228316297149e8a2cff6faba72aa9adc2a01a27) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x15b33b...ee73](https://polygonscan.com/address/0x15b33b0efca374ceb1fcafc46908e3f0e8d2ee73) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x1e921b...0679](https://polygonscan.com/address/0x1e921bb270d010a80e0c15c5792d3b8db7ba0679) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x1f6531...27b8](https://polygonscan.com/address/0x1f653109cc593f8492584fbe309b415fe24b27b8) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x20ec62...9207](https://polygonscan.com/address/0x20ec623bc17c2f52ed05dd25d5b14233e0849207) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x2121fb...19f7](https://polygonscan.com/address/0x2121fbdfcdc6383db0341846a3536492ab5d19f7) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x2473fa...ba1d](https://polygonscan.com/address/0x2473fa1aed20591431755d4944bb3e35584aba1d) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x2520d6...68af](https://polygonscan.com/address/0x2520d6757d5654b025da8873139acded7c0468af) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x2523c5...3430](https://polygonscan.com/address/0x2523c547721076a2c54657a33bc8faffbf873430) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x258dd4...d637](https://polygonscan.com/address/0x258dd4f652270258517a19d002c5559e9c69d637) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x25e251...2f90](https://polygonscan.com/address/0x25e25146ca4ee948d7383281202644db60042f90) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x27620c...936b](https://polygonscan.com/address/0x27620c354e0b3132ff19bd507d391076b234936b) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x29c1e7...277b](https://polygonscan.com/address/0x29c1e72a5d11e5b8b28282764d17598970f3277b) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x2aa5b6...a1f9](https://polygonscan.com/address/0x2aa5b61d9fddea5d7df8e71379892d7b99cba1f9) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x2aaf08...9a45](https://polygonscan.com/address/0x2aaf08590c5ef5fb6fe19438028cc900fa219a45) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x2b7eda...9a62](https://polygonscan.com/address/0x2b7eda3ab728af3825687f246053009eba009a62) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x2db328...814b](https://polygonscan.com/address/0x2db328c7ce5b17fb614627ced5384271b3bd814b) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x2e82fa...68c9](https://polygonscan.com/address/0x2e82fa7fbc2ada7dd5e6e6326f41f55b82a068c9) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x2fe45c...cd84](https://polygonscan.com/address/0x2fe45cb22f9bb58844bb6815f195a23d2c91cd84) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x311160...d2ef](https://polygonscan.com/address/0x3111605eaea3b998714fa592cb47bd5bbd4cd2ef) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x314c45...4619](https://polygonscan.com/address/0x314c450550c8fd5d4cb8bec80ce48a79f74f4619) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x32036f...76a5](https://polygonscan.com/address/0x32036f85646e53f1957ec9c493f2c2dd53cd76a5) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x32dc69...9927](https://polygonscan.com/address/0x32dc69db86ebd6784fe827466421f4aa83a19927) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x3359c5...ded0](https://polygonscan.com/address/0x3359c505ac888c7dbd9c9739917c57121b2bded0) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x36f974...82b2](https://polygonscan.com/address/0x36f974c2f62cfc20e4e93f4b6825f2b8d75a82b2) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x36fe28...2dd4](https://polygonscan.com/address/0x36fe286cffb10ed7fa7ea65d52ed2402e7c82dd4) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x37c19a...f64c](https://polygonscan.com/address/0x37c19a27ef95de204fff3ae15edd3d8d8869f64c) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x38bdc8...9ae6](https://polygonscan.com/address/0x38bdc8c37f2f710c7035ca1b24be226676c79ae6) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x3a2118...168f](https://polygonscan.com/address/0x3a211888452e63dd19e8337737044ce19070168f) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x3b0376...8449](https://polygonscan.com/address/0x3b0376f1cc5e1db17bd2bfc647a196e225578449) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x3b6d9f...abbf](https://polygonscan.com/address/0x3b6d9f02c20dcef5a745b9e96737c65fa22fabbf) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x3ed254...f3f9](https://polygonscan.com/address/0x3ed2549a88b72536a352318abe6d7a227117f3f9) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x3f527f...3e9d](https://polygonscan.com/address/0x3f527f465784470c0974193b2ceb29f831923e9d) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x3fa7ab...c86e](https://polygonscan.com/address/0x3fa7ab8df2c98c065a9f0c5dcfb4a83f9395c86e) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x409382...21d4](https://polygonscan.com/address/0x409382311095f187e4d1d162f76458c80c5421d4) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x41224d...9285](https://polygonscan.com/address/0x41224d49e51508b9005f901880adfa4d8f969285) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x437a03...8113](https://polygonscan.com/address/0x437a03536411081e7f9c9ad5a94e1c8001488113) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x44a7ac...fee0](https://polygonscan.com/address/0x44a7ac9ba935798bfc2677f942a859c458a0fee0) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x45223b...60a7](https://polygonscan.com/address/0x45223bf575f51856f23d8ea2a7d2ef2298c560a7) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x4618e5...8ccc](https://polygonscan.com/address/0x4618e51f036143203f420b8a1563094e3b3e8ccc) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x463eea...6430](https://polygonscan.com/address/0x463eeab6b57c83fffc0de830d910823d149d6430) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x46ef54...2040](https://polygonscan.com/address/0x46ef54e39552f00f8b87a350fb5e5389cd772040) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x47b0b7...8fb6](https://polygonscan.com/address/0x47b0b7beeda9f74e32fc2f6e1b8c60eaf29d8fb6) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x4829d6...e7cc](https://polygonscan.com/address/0x4829d6bddb4102567dc9a52b1b641f0bb831e7cc) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x48383c...60b8](https://polygonscan.com/address/0x48383c0f412c024baed647df75fb5a88648d60b8) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x4dcec3...8d18](https://polygonscan.com/address/0x4dcec34b7326ad82747b8ee246ded154276b8d18) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x516aa6...e00d](https://polygonscan.com/address/0x516aa60f914592f9a1747ccdc874ee8b0724e00d) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x518106...59fe](https://polygonscan.com/address/0x5181067fd5a685aa7b8bb7cda0d889eb44c859fe) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x52a371...e13b](https://polygonscan.com/address/0x52a371c20863dc7e3866e065cf172a59eb49e13b) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x52a65c...0891](https://polygonscan.com/address/0x52a65ce04c492237f1abaf17d32fd55538b90891) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x539127...819d](https://polygonscan.com/address/0x539127c953e431027926e586d84a1c7c6430819d) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x53ce99...807f](https://polygonscan.com/address/0x53ce996453fb2bcf8b17f96ab37cf1b5b67d807f) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x57351a...93a3](https://polygonscan.com/address/0x57351adff2facc711a5c6158fe385e285bdb93a3) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x590aea...81bf](https://polygonscan.com/address/0x590aea51807f9f6eb8ba6ea090b545781c7481bf) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x5958a0...993e](https://polygonscan.com/address/0x5958a06d8d8b4ac16903b80d89352c8e547d993e) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x5be5cf...0a5d](https://polygonscan.com/address/0x5be5cf556aa0665ca72aae10aa9a2a204c150a5d) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x5c4cd4...bba7](https://polygonscan.com/address/0x5c4cd47fd8de379f52cafc5b6d82bf8102fbbba7) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x5c8737...371a](https://polygonscan.com/address/0x5c8737ad101a3ce8dd1899bc666342a6bd7f371a) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x5cd7c1...6349](https://polygonscan.com/address/0x5cd7c1efec89f0a6bcec73ec72b69e7376ed6349) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x5f304a...7988](https://polygonscan.com/address/0x5f304a40be2479ea8fa68fde889ae486f7d97988) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x5f6dcf...9887](https://polygonscan.com/address/0x5f6dcfd24e6bc918a8e974135051ab15a4619887) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x638b2b...09d7](https://polygonscan.com/address/0x638b2b67658063e7492e155a4154c86464ed09d7) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x65c528...8e47](https://polygonscan.com/address/0x65c528c25955c8b2ccaff3381972ee65227e8e47) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x683ec4...937c](https://polygonscan.com/address/0x683ec44555ddb9b01129e67445301d6729e4937c) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x687e22...4906](https://polygonscan.com/address/0x687e224f7318b444542f8a7d20c1f89c978a4906) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x690be8...632d](https://polygonscan.com/address/0x690be8a0be50038b7b338b05072a01362c83632d) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x69325d...332f](https://polygonscan.com/address/0x69325ddca2c72051d6c4657a47211efa662e332f) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x698631...590c](https://polygonscan.com/address/0x6986319c50e0c9244798dccbb3bc8b1681c7590c) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x69a48a...6c55](https://polygonscan.com/address/0x69a48ac11b33d1d5a767c648f23b2556af806c55) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x6a4d5f...1cba](https://polygonscan.com/address/0x6a4d5f8385ff6e7fc4ebf6f726e12a958daa1cba) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x6b46d7...af13](https://polygonscan.com/address/0x6b46d76ae1f1b647dc09f3b1e09caf843386af13) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x6b593b...a8b3](https://polygonscan.com/address/0x6b593b2c38938a6f62145eac063dcde0c74ba8b3) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x6bf89f...3d9c](https://polygonscan.com/address/0x6bf89fa49cb0184ddffb957c199335348edb3d9c) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x6c82a4...58d1](https://polygonscan.com/address/0x6c82a46fc989f2da51f42dc1894a293713e558d1) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x6ce58b...0956](https://polygonscan.com/address/0x6ce58b9ea0e0a1081e623d3ecb987d6c76e70956) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x6d60ea...14dd](https://polygonscan.com/address/0x6d60eab79598bdaa96553de73c517a48f99214dd) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x6f44ad...e392](https://polygonscan.com/address/0x6f44ad6630e332fd3f560566740647915dede392) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x70c22e...933f](https://polygonscan.com/address/0x70c22e0fd765276fcfc21082f8dcb3dbd132933f) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x7231ab...b4df](https://polygonscan.com/address/0x7231ab409524fe65edbc87fbdfc229a9410ab4df) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x727996...7717](https://polygonscan.com/address/0x727996d593ef320ab1947703ec056854a61e7717) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x737007...609a](https://polygonscan.com/address/0x737007de5f5fe5185d6bf43501da356f4133609a) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x750250...5959](https://polygonscan.com/address/0x750250209a7171a197cf77893301be6b23165959) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x7607b1...3ef7](https://polygonscan.com/address/0x7607b17f7012b6e5cbdd353aa8d4aae5578f3ef7) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x7730a2...d8b7](https://polygonscan.com/address/0x7730a2fa610acc5e0d9c86f6fbb20d492659d8b7) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x7758ef...7dd4](https://polygonscan.com/address/0x7758ef1d56fd1e30a9b091598c07326293477dd4) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x78103b...a187](https://polygonscan.com/address/0x78103b3985472c071d2c325ee7cda5606c62a187) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x786ea0...6099](https://polygonscan.com/address/0x786ea0c5e3b5539847c10e436285a420a5c76099) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x78d92b...6a3a](https://polygonscan.com/address/0x78d92bd98160cb6f9cf7cefe0ac2512129466a3a) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x79e4e6...a06e](https://polygonscan.com/address/0x79e4e6c70d1b19bc9a820c240fb65e4e6757a06e) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x7a9ffb...7fe3](https://polygonscan.com/address/0x7a9ffb202ceae14b03e8529faad7d631898e7fe3) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x7b0896...adb5](https://polygonscan.com/address/0x7b08961d8431a59bff687e792705fdd952b1adb5) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x7b42ef...f455](https://polygonscan.com/address/0x7b42ef9059e6f6cf7d7dbdb1bcb69c136504f455) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x7b5342...2d11](https://polygonscan.com/address/0x7b5342fb0ab84a9c68bbe391fe640b8d053e2d11) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x7e308c...ccd7](https://polygonscan.com/address/0x7e308cacc4069fb903d35631a6e0c24e86a4ccd7) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x7e8434...d3a7](https://polygonscan.com/address/0x7e843450bf4f0be50b177ae1598b271b8210d3a7) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x7e971d...5559](https://polygonscan.com/address/0x7e971d9df18686a3dd41e72530348fa083625559) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x7f33ec...9639](https://polygonscan.com/address/0x7f33ec336c317fc625c46b60f4a76d2923c49639) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x7f673c...c6e1](https://polygonscan.com/address/0x7f673cfc36a2bc51f4d0848a81b55d1122fcc6e1) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x7f856d...d686](https://polygonscan.com/address/0x7f856d15ad63fa007f06d8ad0788dfa1365ad686) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x7ffb39...a7f2](https://polygonscan.com/address/0x7ffb39fb4652658733ef51d829dbe57dcb92a7f2) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x87b765...1ee5](https://polygonscan.com/address/0x87b765e1303d4461f85e0f9376bb377e7adc1ee5) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x8917d3...4a71](https://polygonscan.com/address/0x8917d35789aa40f0629dac1a167af3437a584a71) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x8a1d9b...e5df](https://polygonscan.com/address/0x8a1d9b9ca2f6295268027670f74114a5a6c8e5df) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x8abffc...c579](https://polygonscan.com/address/0x8abffcc0df4d801fcea70de20e4bd3fbe528c579) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x8dcb8b...8bce](https://polygonscan.com/address/0x8dcb8b9b284fb2624971d3ebbe567677d5ab8bce) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x8eed28...dced](https://polygonscan.com/address/0x8eed28c5353987b9e679899c2a047434e600dced) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x8ffe16...2680](https://polygonscan.com/address/0x8ffe16538a87d31ee5c09ae5c434dd106a592680) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x93669c...b72b](https://polygonscan.com/address/0x93669cfce302c9971169f8106c850181a217b72b) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x990078...6f1f](https://polygonscan.com/address/0x990078d800c22f738a238c4e07a1b2c05d236f1f) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x9a83b9...2e72](https://polygonscan.com/address/0x9a83b968b7469afc181998b7e6ac059f3a292e72) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x9b5ca4...cdd4](https://polygonscan.com/address/0x9b5ca45571ae997c2cffcad5ed7bcc6f22a8cdd4) |
| KSPool | vault_pool | vault_pool | likely in scope | [0x9e366a...061f](https://polygonscan.com/address/0x9e366a1f8f36b4801d9eba996f64034024b3061f) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xa0c1c7...267f](https://polygonscan.com/address/0xa0c1c70591b18f89d50a041056839001dbf0267f) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xa1f5de...f4aa](https://polygonscan.com/address/0xa1f5dee2cf5bd31006fdc61846aed500df69f4aa) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xa264b2...2ae4](https://polygonscan.com/address/0xa264b252d388e44fd2db1ddbe9cbafbc1cb72ae4) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xa29a18...b53f](https://polygonscan.com/address/0xa29a1879cc195e4831b512b4a108dafa832ab53f) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xa483c6...5276](https://polygonscan.com/address/0xa483c678a0b95a8168833b562ae6b71360c55276) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xa5ff2a...5f98](https://polygonscan.com/address/0xa5ff2aa2efed45f967d1deff34058b69e17d5f98) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xa7ff86...2028](https://polygonscan.com/address/0xa7ff86802f46b64765b743842690dc455cc52028) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xa9b28f...a1b0](https://polygonscan.com/address/0xa9b28fd199f17ee1be536074c68668769fd4a1b0) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xaa91dd...ed1d](https://polygonscan.com/address/0xaa91dd0860c5622f13f908cdafc756f3f9ebed1d) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xaba201...1cc9](https://polygonscan.com/address/0xaba20125ab22a4427b7df69cdbe706f8623a1cc9) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xaba56c...dcb5](https://polygonscan.com/address/0xaba56c4daf8d51383aa841312181aafc97b1dcb5) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xae5832...8a5c](https://polygonscan.com/address/0xae58326403939db05b27db9b6111bbd5f6d88a5c) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xaf9fd9...02ef](https://polygonscan.com/address/0xaf9fd9806a21aa1e2bd28905bc4f32b05cfb02ef) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xb15b10...9431](https://polygonscan.com/address/0xb15b10c9642ff9c22fc5c108429752c83ee39431) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xb21325...7c87](https://polygonscan.com/address/0xb21325d552a5f815597c861c15459b9696617c87) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xb21de8...7e78](https://polygonscan.com/address/0xb21de8b371c01f274c135c4b131f035ff0ff7e78) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xb227de...98be](https://polygonscan.com/address/0xb227de44cdfb07fa986c41951a0a516b88d598be) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xb30816...b137](https://polygonscan.com/address/0xb3081636d9ccce1cd19fd404f4ff30776b7cb137) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xb38446...9ba3](https://polygonscan.com/address/0xb38446522845c1286a6a0a8bd7cc832664699ba3) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xb3f440...ab82](https://polygonscan.com/address/0xb3f4401f4f7d96531734e275ce5c2277109aab82) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xb3fceb...4447](https://polygonscan.com/address/0xb3fcebd2c3b8517d0fc577145ba98a9892d14447) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xb509d4...8345](https://polygonscan.com/address/0xb509d430656576bf9913fb1109c8571ea4dc8345) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xb8ac5f...2639](https://polygonscan.com/address/0xb8ac5fffb6820ea9e7aaba5999bdfacb44382639) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xb97d1b...a63c](https://polygonscan.com/address/0xb97d1b1147ae58500a63a3b4bae1d6b7bbdda63c) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xbadd66...1014](https://polygonscan.com/address/0xbadd6608afa0958d0ac5b0bd90f674902f791014) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xbbf0e3...f3a6](https://polygonscan.com/address/0xbbf0e303df99a89576646208a7acf4ddcff1f3a6) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xbf2bc7...b00e](https://polygonscan.com/address/0xbf2bc7eb407ed00937e5bc72501993ac372cb00e) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xbf5d54...5fe4](https://polygonscan.com/address/0xbf5d54e8b3eadb60972a472c180474f28fc25fe4) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xc2995a...c12d](https://polygonscan.com/address/0xc2995a065106b5c5c738b2320387460ebd12c12d) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xc2a41f...6944](https://polygonscan.com/address/0xc2a41f8744fb5c92ff66fc2d7c25aeba68536944) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xc2c0fd...260f](https://polygonscan.com/address/0xc2c0fd360c66db3f1e2e7888a3c6933ada6c260f) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xc3b98d...6659](https://polygonscan.com/address/0xc3b98d24c563f7fbfe824c286e399613e9636659) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xc50c4e...c387](https://polygonscan.com/address/0xc50c4ef018b24ff72e69fd5cc6c410ee241bc387) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xc53ce1...82b6](https://polygonscan.com/address/0xc53ce11956b823f87d59e21ec8468f15f18482b6) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xc57f9f...cd9f](https://polygonscan.com/address/0xc57f9f1dc02b6c333464acdc8699e5a37c9dcd9f) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xc833e3...b00a](https://polygonscan.com/address/0xc833e3d96677b846a34f70d2843a525c1354b00a) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xca80bb...1378](https://polygonscan.com/address/0xca80bbb8b0d66005a18601efbc3c2ba03a3c1378) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xcb7d96...dc71](https://polygonscan.com/address/0xcb7d96c88bb71524143c1c70893e3522b4c6dc71) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xceff5b...92c2](https://polygonscan.com/address/0xceff5bbc23846bfccfa0a5357fcfcfcdfc4a92c2) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xcf3b9d...ad28](https://polygonscan.com/address/0xcf3b9d09d79ce66ae6fc5fb327356e38142aad28) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xcf638d...d642](https://polygonscan.com/address/0xcf638ddeb418c14a5f38ffeda045803fc785d642) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xcfded3...26af](https://polygonscan.com/address/0xcfded33f23b69cd56223b0d097f66cf4261726af) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xd1a7b9...6db3](https://polygonscan.com/address/0xd1a7b9e5dd132bcb4543c109fdc721f208116db3) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xd32d33...ed5e](https://polygonscan.com/address/0xd32d33997792a5db319db64835a3273524f0ed5e) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xd3c806...934a](https://polygonscan.com/address/0xd3c806f17e34f12c6c714a78c0f7f4725bff934a) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xd59dfe...7954](https://polygonscan.com/address/0xd59dfe87fec00af755e242e53542cc2146c67954) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xd612ce...ff9a](https://polygonscan.com/address/0xd612ce9e87dab1073b4dfd8dc92e3d539465ff9a) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xd6828c...d026](https://polygonscan.com/address/0xd6828c2bf0ba6b2a583c1f31b4cf54d82f92d026) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xd7d8c3...dee6](https://polygonscan.com/address/0xd7d8c33c678d9c4dbd1567f10ba48379dfeddee6) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xd970aa...5cb4](https://polygonscan.com/address/0xd970aae48dd09a39a7624a2818bc00c33a0e5cb4) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xdb68e7...d5bd](https://polygonscan.com/address/0xdb68e7006ccd6f8d5754a2cf0820469dbe7ed5bd) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xdbacd0...4d9a](https://polygonscan.com/address/0xdbacd060f23858f289111e85674472d9e7d94d9a) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xdca2e9...dea9](https://polygonscan.com/address/0xdca2e92bd33b983b8de897143653dc46ff89dea9) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xdcf70a...42c9](https://polygonscan.com/address/0xdcf70ac7c038b0a8cb7f8296d764b5cf778f42c9) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xe00c93...bb0c](https://polygonscan.com/address/0xe00c937db977c04e3f9a688bf2b1a687b2adbb0c) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xe0673b...31f0](https://polygonscan.com/address/0xe0673b007011b2e49428f872d6bf35b45e4831f0) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xe4ece5...52f4](https://polygonscan.com/address/0xe4ece58e8086e77072f8ee6d69238837bb1052f4) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xe581db...7779](https://polygonscan.com/address/0xe581db5e77ac4024cdb3f2a73ff9739c8e6c7779) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xe80031...8b00](https://polygonscan.com/address/0xe800315c149a752ae236b9bd85c83b97fd948b00) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xe8ff2c...29e4](https://polygonscan.com/address/0xe8ff2ccd237d4895854316d69c10a79c233629e4) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xe908e6...13d0](https://polygonscan.com/address/0xe908e6b17e160c728f69053ba7efec3c94ff13d0) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xeadae4...40d7](https://polygonscan.com/address/0xeadae4274ac57078235f3bca61fee9c5698240d7) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xed798f...c297](https://polygonscan.com/address/0xed798ff12208896b2b86f8d4f50056595651c297) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xedabf1...736d](https://polygonscan.com/address/0xedabf1c585dd3e5f185ad85e79b84fbda989736d) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xef3b40...65f6](https://polygonscan.com/address/0xef3b403695559e02a098b983b7d019bf0ebc65f6) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xef5449...292a](https://polygonscan.com/address/0xef5449b3ade7193a1cadf37b003cca590d9c292a) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xef5ca8...59f8](https://polygonscan.com/address/0xef5ca8d63e146043b64d6bfa162aeaecb3c859f8) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xf00d2c...b224](https://polygonscan.com/address/0xf00d2c1979857aafd783bd91cd4f9fbc3169b224) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xf01e71...0260](https://polygonscan.com/address/0xf01e710c6f7dcc80374ccebe9bc7cf5a99870260) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xf04a1c...c661](https://polygonscan.com/address/0xf04a1c69b522b6a845b17f3fae82dabb4cc7c661) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xf437b8...dad2](https://polygonscan.com/address/0xf437b84bb76e71261e530e0e9a137c723719dad2) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xf4a917...0e17](https://polygonscan.com/address/0xf4a917745509124ff85d6d58000ae34f48030e17) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xf5ffad...8400](https://polygonscan.com/address/0xf5ffad6101d964d3891c1a7e0bb18744ca3d8400) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xf6f499...f3bf](https://polygonscan.com/address/0xf6f49932ecfc01dd69d404a8628f59acc5bff3bf) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xf78c86...9597](https://polygonscan.com/address/0xf78c8614b2cf2946e6b9338cd9e5932aab6a9597) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xf86a94...fc99](https://polygonscan.com/address/0xf86a9481884d725800ba7195c45755b59ea8fc99) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xf97a12...e6e8](https://polygonscan.com/address/0xf97a128b8d696059b691fabc7aeb410dbb60e6e8) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xfaf134...f4ce](https://polygonscan.com/address/0xfaf134af11991cd11754e8c31ef6bacca70ef4ce) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xfd3b73...00ac](https://polygonscan.com/address/0xfd3b7305693956994fc0cc973f4dd046fc3500ac) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xfdc61c...2898](https://polygonscan.com/address/0xfdc61c16673889e88126cb24645e17c8b4892898) |
| KSPool | vault_pool | vault_pool | likely in scope | [0xfeeb0c...69f9](https://polygonscan.com/address/0xfeeb0cb08d3f441d5acd18f935bc142416f569f9) |
| KSRouter02 | router | router | likely in scope | [0x5649b4...23d0](https://polygonscan.com/address/0x5649b4dd00780e99bab7abb4a3d581ea1aeb23d0) |
| KSZapRouter | router | router | likely in scope | [0x30c532...b79e](https://polygonscan.com/address/0x30c5322e4e08ad500c348007f92f120ab4e2b79e) |
| KSZapRouterPosition | router | router | likely in scope | [0x0e97c8...9e05](https://polygonscan.com/address/0x0e97c887b61ccd952a53578b04763e7134429e05) |
| KSZapRouterPositionPermit | router | router | likely in scope | [0x638d93...cabb](https://polygonscan.com/address/0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb) |
| KSZapValidator | core | core | unmatched | [0xf0096e...1172](https://polygonscan.com/address/0xf0096e5b4aafeea1df557264091569ba125c1172) |
| KSZapValidatorV2Part1 | core | core | unmatched | [0xa16f32...863e](https://polygonscan.com/address/0xa16f32442209c6b978431818aa535bcc9ad2863e) |
| KyberSwapElasticLM | router | router | likely in scope | [0x7d5ba5...e676](https://polygonscan.com/address/0x7d5ba536ab244aaa1ea42ab88428847f25e3e676) |
| LimitOrderProtocol | core | core | unmatched | [0x227b0c...e936](https://polygonscan.com/address/0x227b0c196ea8db17a665ea6824d972a64202e936) |
| MetaAggregationRouterV2 | router | router | likely in scope | [0x6131b5...37b5](https://polygonscan.com/address/0x6131b5fae19ea4f9d964eac0408e4408b66337b5) |
| Multicall | core | core | likely in scope | [0x878dfe...934c](https://polygonscan.com/address/0x878dfe971d44e9122048308301f540910bbd934c) |
| Multicall2 | bridge | bridge | unmatched | [0xed386f...c5a4](https://polygonscan.com/address/0xed386fe855c1eff2f843b910923dd8846e45c5a4) |
| MultiSigWalletWithDailyLimit | governance | governance | unmatched | [0x1b0868...3357](https://polygonscan.com/address/0x1b0868fd8a174e979135812db866e5eaed4b3357) |
| MultiSigWalletWithDailyLimit | governance | governance | unmatched | [0x247503...3546](https://polygonscan.com/address/0x2475039bf2ecdce2ee4c82954e64be9674f43546) |
| MultiSigWalletWithDailyLimit | governance | governance | unmatched | [0x91c9d4...6f5b](https://polygonscan.com/address/0x91c9d4373b077ef8082f468c7c97f2c499e36f5b) |
| Pool | vault_pool | vault_pool | likely in scope | [0x02a3e4...3dfa](https://polygonscan.com/address/0x02a3e4184b145ee64a6df3c561a3c0c6e2f23dfa) |
| Pool | vault_pool | vault_pool | likely in scope | [0x02c02e...786c](https://polygonscan.com/address/0x02c02ef3fa7578386b3fe317d49873b47976786c) |
| Pool | vault_pool | vault_pool | likely in scope | [0x03cd75...0435](https://polygonscan.com/address/0x03cd750f16dc8051b8f355d351438e6b18890435) |
| Pool | vault_pool | vault_pool | likely in scope | [0x049807...4f2f](https://polygonscan.com/address/0x0498072d44deac6b8812caaf8d2e4ae02e8d4f2f) |
| Pool | vault_pool | vault_pool | likely in scope | [0x052ea9...b153](https://polygonscan.com/address/0x052ea9594608b92efe0669d3286ec17b748eb153) |
| Pool | vault_pool | vault_pool | likely in scope | [0x05675c...6eca](https://polygonscan.com/address/0x05675cc56588876471076494eb6b34a2be4a6eca) |
| Pool | vault_pool | vault_pool | likely in scope | [0x05f2f6...8baf](https://polygonscan.com/address/0x05f2f6bf6a7242f045cb7a66f6bf3bb8b5c48baf) |
| Pool | vault_pool | vault_pool | likely in scope | [0x08a9c4...c05c](https://polygonscan.com/address/0x08a9c4d3613b058f7c548afcaca06d677ad7c05c) |
| Pool | vault_pool | vault_pool | likely in scope | [0x093699...0074](https://polygonscan.com/address/0x093699291c7001e70888b7e014592fc70c9c0074) |
| Pool | vault_pool | vault_pool | likely in scope | [0x0b1100...ff61](https://polygonscan.com/address/0x0b1100d58ac414858dbff66e5b9b331fc35aff61) |
| Pool | vault_pool | vault_pool | likely in scope | [0x0bd7c3...93e1](https://polygonscan.com/address/0x0bd7c3bf4c0cbbbee1f7cdaaadac408a428893e1) |
| Pool | vault_pool | vault_pool | likely in scope | [0x0cf400...cd24](https://polygonscan.com/address/0x0cf400916308048557e0165a06b48ce5c80fcd24) |
| Pool | vault_pool | vault_pool | likely in scope | [0x0cfb29...7cc2](https://polygonscan.com/address/0x0cfb295296c7869e5df0e8a4187b554167287cc2) |
| Pool | vault_pool | vault_pool | likely in scope | [0x0d0770...6ef4](https://polygonscan.com/address/0x0d07706e14f424fdec17cd7676ecee9b3b8f6ef4) |
| Pool | vault_pool | vault_pool | likely in scope | [0x0d4900...da82](https://polygonscan.com/address/0x0d4900c5e44b2d8fc55eeb21731d357ed257da82) |
| Pool | vault_pool | vault_pool | likely in scope | [0x0dafa0...59bd](https://polygonscan.com/address/0x0dafa0becc432534248ea503e674f6d243d259bd) |
| Pool | vault_pool | vault_pool | likely in scope | [0x0f201f...936d](https://polygonscan.com/address/0x0f201f0309a285534441d223f8bb1847ecbd936d) |
| Pool | vault_pool | vault_pool | likely in scope | [0x10493e...e676](https://polygonscan.com/address/0x10493edcfa693c9c034055ad5c90cc0377d9e676) |
| Pool | vault_pool | vault_pool | likely in scope | [0x105a37...9f71](https://polygonscan.com/address/0x105a3761f4f8061b76138623c32e1dad109a9f71) |
| Pool | vault_pool | vault_pool | likely in scope | [0x105ac4...91e5](https://polygonscan.com/address/0x105ac4b3c5856aa1c4ffe1580903ec4ce87c91e5) |
| Pool | vault_pool | vault_pool | likely in scope | [0x10ef30...cf77](https://polygonscan.com/address/0x10ef3036a76c65e45e2bbecac7b8be4bfad3cf77) |
| Pool | vault_pool | vault_pool | likely in scope | [0x11a32b...d92d](https://polygonscan.com/address/0x11a32b3eab6a90823f069d155b0fab16b4c8d92d) |
| Pool | vault_pool | vault_pool | likely in scope | [0x125150...cb2e](https://polygonscan.com/address/0x125150eeadb67ddc8b59eed3fc8e67db919ccb2e) |
| Pool | vault_pool | vault_pool | likely in scope | [0x125b52...6205](https://polygonscan.com/address/0x125b526012f547c1c6756d4f2c1eef624ebf6205) |
| Pool | vault_pool | vault_pool | likely in scope | [0x1305b8...8bae](https://polygonscan.com/address/0x1305b877e526a2539fb2a10a0336a728ab948bae) |
| Pool | vault_pool | vault_pool | likely in scope | [0x1317fe...d199](https://polygonscan.com/address/0x1317fe389b7992571bc84ff4d9d248225e96d199) |
| Pool | vault_pool | vault_pool | likely in scope | [0x135065...2f38](https://polygonscan.com/address/0x1350659c15522506bc0f5f41ab9ccbf6af3c2f38) |
| Pool | vault_pool | vault_pool | likely in scope | [0x13577f...75fe](https://polygonscan.com/address/0x13577f240123debde1ae94ae68eaacc387f475fe) |
| Pool | vault_pool | vault_pool | likely in scope | [0x138f65...7eed](https://polygonscan.com/address/0x138f658ff32529cd98d786b922ef970917f77eed) |
| Pool | vault_pool | vault_pool | likely in scope | [0x13f9b1...561e](https://polygonscan.com/address/0x13f9b12f18303ee1b76270a03368a2661590561e) |
| Pool | vault_pool | vault_pool | likely in scope | [0x15349c...1ccf](https://polygonscan.com/address/0x15349cf3cba7b7091b0566bae6494c7cd3611ccf) |
| Pool | vault_pool | vault_pool | likely in scope | [0x15614a...3ba4](https://polygonscan.com/address/0x15614a91c593caec70ac9b41ed19dc6c569a3ba4) |
| Pool | vault_pool | vault_pool | likely in scope | [0x17517d...91a9](https://polygonscan.com/address/0x17517d02675a272f0c38a605a4e36912babd91a9) |
| Pool | vault_pool | vault_pool | likely in scope | [0x177a76...a090](https://polygonscan.com/address/0x177a7602e1ad66549dd0db88224a7c53834ca090) |
| Pool | vault_pool | vault_pool | likely in scope | [0x181f71...2640](https://polygonscan.com/address/0x181f71cb062b07d7a35d4f7553cf3c325aaa2640) |
| Pool | vault_pool | vault_pool | likely in scope | [0x19e224...cf03](https://polygonscan.com/address/0x19e22488a97b5cb7c635b8bd20331df269aacf03) |
| Pool | vault_pool | vault_pool | likely in scope | [0x1ac33a...8b49](https://polygonscan.com/address/0x1ac33a1f9578b6fee56db9699ceb4b2ca15a8b49) |
| Pool | vault_pool | vault_pool | likely in scope | [0x1dc4c0...019e](https://polygonscan.com/address/0x1dc4c0c1eb0d576e84ad05c6a3d6dc394c90019e) |
| Pool | vault_pool | vault_pool | likely in scope | [0x1e0557...47df](https://polygonscan.com/address/0x1e05572ae7b7d72bc99292f8f2c7c38f946447df) |
| Pool | vault_pool | vault_pool | likely in scope | [0x1f0899...6acd](https://polygonscan.com/address/0x1f0899f8d41d2b236443a2bba851808eec476acd) |
| Pool | vault_pool | vault_pool | likely in scope | [0x20178a...812e](https://polygonscan.com/address/0x20178a633f454d3891e3b6d21cf3817cf453812e) |
| Pool | vault_pool | vault_pool | likely in scope | [0x22a545...a556](https://polygonscan.com/address/0x22a545626226b24dd64dfbcff4d76a500a9fa556) |
| Pool | vault_pool | vault_pool | likely in scope | [0x23f1a1...0304](https://polygonscan.com/address/0x23f1a17379e7d4a8478c87092ce2cf9d48c10304) |
| Pool | vault_pool | vault_pool | likely in scope | [0x242031...1d38](https://polygonscan.com/address/0x2420315dada4d3f41b2aa1949424381084371d38) |
| Pool | vault_pool | vault_pool | likely in scope | [0x251837...64e4](https://polygonscan.com/address/0x2518377fa28119940511404ac514339a4d9764e4) |
| Pool | vault_pool | vault_pool | likely in scope | [0x26fd1d...1631](https://polygonscan.com/address/0x26fd1d8e4ccf80df5f047f2310d2e85e47811631) |
| Pool | vault_pool | vault_pool | likely in scope | [0x28224d...ab70](https://polygonscan.com/address/0x28224dac2732f928b8b02ccf00fcb5c37ad1ab70) |
| Pool | vault_pool | vault_pool | likely in scope | [0x298668...fe95](https://polygonscan.com/address/0x298668c5d03bc055eaf87b8613049a238b8ffe95) |
| Pool | vault_pool | vault_pool | likely in scope | [0x299200...f4c7](https://polygonscan.com/address/0x29920010de717c9c49d8d109e535bd989125f4c7) |
| Pool | vault_pool | vault_pool | likely in scope | [0x2ae832...00c3](https://polygonscan.com/address/0x2ae832201283190d4b74637cd50559319cb300c3) |
| Pool | vault_pool | vault_pool | likely in scope | [0x2ce2fb...ff54](https://polygonscan.com/address/0x2ce2fb2f9a0820ac4fd7089abfde3df9946bff54) |
| Pool | vault_pool | vault_pool | likely in scope | [0x2f5ffb...2232](https://polygonscan.com/address/0x2f5ffbf82882f2a8366ac1c5cdba710062d22232) |
| Pool | vault_pool | vault_pool | likely in scope | [0x2fe738...d6e4](https://polygonscan.com/address/0x2fe73834ab236233ae5fe967da0b70633fc5d6e4) |
| Pool | vault_pool | vault_pool | likely in scope | [0x3098ba...b5d1](https://polygonscan.com/address/0x3098baae9cc813a8bb322c12840cc878b08bb5d1) |
| Pool | vault_pool | vault_pool | likely in scope | [0x30e79b...d8b5](https://polygonscan.com/address/0x30e79b98b466fc60c0ad16a96e5520192215d8b5) |
| Pool | vault_pool | vault_pool | likely in scope | [0x30ec37...b5b4](https://polygonscan.com/address/0x30ec378b28b600a1bad3cda393633d86ca17b5b4) |
| Pool | vault_pool | vault_pool | likely in scope | [0x32eae7...ba03](https://polygonscan.com/address/0x32eae711d9b84b371925afa268b1cb6cd40cba03) |
| Pool | vault_pool | vault_pool | likely in scope | [0x3303ba...d900](https://polygonscan.com/address/0x3303ba1a00b3bf62c38683f54633e9ef2a3cd900) |
| Pool | vault_pool | vault_pool | likely in scope | [0x33176f...b1ba](https://polygonscan.com/address/0x33176fbc885eb586e1235f837a0a0b9ad138b1ba) |
| Pool | vault_pool | vault_pool | likely in scope | [0x34f9d1...b469](https://polygonscan.com/address/0x34f9d1dd4680d1258c77a179cd06e0f9b25ab469) |
| Pool | vault_pool | vault_pool | likely in scope | [0x353288...e305](https://polygonscan.com/address/0x353288b2db543cb320472c740513341172b9e305) |
| Pool | vault_pool | vault_pool | likely in scope | [0x376ab5...d4e4](https://polygonscan.com/address/0x376ab5adeaab943c41e0d0cf1a622f643761d4e4) |
| Pool | vault_pool | vault_pool | likely in scope | [0x37e33f...9169](https://polygonscan.com/address/0x37e33f8b991b7dbdea5248fb71fdd50e271d9169) |
| Pool | vault_pool | vault_pool | likely in scope | [0x37ff3d...2573](https://polygonscan.com/address/0x37ff3d193b5781a3e0bc5a591f03ab3439d92573) |
| Pool | vault_pool | vault_pool | likely in scope | [0x38e1ea...5273](https://polygonscan.com/address/0x38e1ea40be3434cc9fd852617f17fcb15daa5273) |
| Pool | vault_pool | vault_pool | likely in scope | [0x390baf...6ac6](https://polygonscan.com/address/0x390baf764ed16b9aaa8054a5274b68912a356ac6) |
| Pool | vault_pool | vault_pool | likely in scope | [0x3948f9...feae](https://polygonscan.com/address/0x3948f98cfe6448f4956137027695abe9e1dafeae) |
| Pool | vault_pool | vault_pool | likely in scope | [0x39d632...4a26](https://polygonscan.com/address/0x39d63288c454c3b332c030e7c4fab16df0794a26) |
| Pool | vault_pool | vault_pool | likely in scope | [0x39ee23...5fe0](https://polygonscan.com/address/0x39ee23b64483258b7e4ebc839f0ac3ad48fd5fe0) |
| Pool | vault_pool | vault_pool | likely in scope | [0x3acc2a...6ddf](https://polygonscan.com/address/0x3acc2abeaac8c34987074d1b83fc03a8c4e76ddf) |
| Pool | vault_pool | vault_pool | likely in scope | [0x3b0095...eb4b](https://polygonscan.com/address/0x3b0095328fd135b6a2c2e56becb7eeae2adeeb4b) |
| Pool | vault_pool | vault_pool | likely in scope | [0x3ca647...9d13](https://polygonscan.com/address/0x3ca6478e4ecb47986651460104af5fed463f9d13) |
| Pool | vault_pool | vault_pool | likely in scope | [0x3d392f...6cf2](https://polygonscan.com/address/0x3d392f01fe6cc9e5b9e1afaca49a8d0bd7c66cf2) |
| Pool | vault_pool | vault_pool | likely in scope | [0x3e1af1...d4e6](https://polygonscan.com/address/0x3e1af110d4ce58cd322fdeaf42b87fe7aaaed4e6) |
| Pool | vault_pool | vault_pool | likely in scope | [0x3ebbae...9f22](https://polygonscan.com/address/0x3ebbae7268810b530ba9e681e0f0181ca2d29f22) |
| Pool | vault_pool | vault_pool | likely in scope | [0x3f9766...8d33](https://polygonscan.com/address/0x3f9766df46360e460b16b9def3e2045d35588d33) |
| Pool | vault_pool | vault_pool | likely in scope | [0x3fae7a...4d20](https://polygonscan.com/address/0x3fae7af88a4a5df9aec7665679d0b642e1574d20) |
| Pool | vault_pool | vault_pool | likely in scope | [0x41a322...1643](https://polygonscan.com/address/0x41a3220e746f60813f3ecdde116b56fd59aa1643) |
| Pool | vault_pool | vault_pool | likely in scope | [0x422edc...cce7](https://polygonscan.com/address/0x422edc1745a54a34aaff78451327c1b882c6cce7) |
| Pool | vault_pool | vault_pool | likely in scope | [0x42ba08...e415](https://polygonscan.com/address/0x42ba087475e22e8852b70fb1b452f7c84750e415) |
| Pool | vault_pool | vault_pool | likely in scope | [0x42f179...af0b](https://polygonscan.com/address/0x42f179077bab533e436613756316abaa6dc8af0b) |
| Pool | vault_pool | vault_pool | likely in scope | [0x43d571...9518](https://polygonscan.com/address/0x43d571c1ccc1403756554d1c1399e89f355c9518) |
| Pool | vault_pool | vault_pool | likely in scope | [0x461006...913b](https://polygonscan.com/address/0x461006633fed1c0b73adb647aa444c4237a2913b) |
| Pool | vault_pool | vault_pool | likely in scope | [0x468156...d8a0](https://polygonscan.com/address/0x4681564d925246253cb9f2c6b58e662237a6d8a0) |
| Pool | vault_pool | vault_pool | likely in scope | [0x46d89f...74a0](https://polygonscan.com/address/0x46d89fe1ee5fbcc91f354b44460aa313b15174a0) |
| Pool | vault_pool | vault_pool | likely in scope | [0x46d90a...be7c](https://polygonscan.com/address/0x46d90a00dbad3961657c0328a9d1a7850523be7c) |
| Pool | vault_pool | vault_pool | likely in scope | [0x470e1d...413f](https://polygonscan.com/address/0x470e1dd33a84f732a2bc4bbe59c304002a34413f) |
| Pool | vault_pool | vault_pool | likely in scope | [0x47991e...0d14](https://polygonscan.com/address/0x47991e6f7690197c78ff45fbe649da1b8f0d0d14) |
| Pool | vault_pool | vault_pool | likely in scope | [0x47b92c...ed8d](https://polygonscan.com/address/0x47b92cbb27423885bf8d96aeac66bcd0c279ed8d) |
| Pool | vault_pool | vault_pool | likely in scope | [0x47d545...2dd0](https://polygonscan.com/address/0x47d545c911bbcde3f76a408ab037779a2cf92dd0) |
| Pool | vault_pool | vault_pool | likely in scope | [0x48c91e...141f](https://polygonscan.com/address/0x48c91e293fa31a1327ca107dbf9a4f509158141f) |
| Pool | vault_pool | vault_pool | likely in scope | [0x490b5e...67cf](https://polygonscan.com/address/0x490b5eef19094822fdcdbc98d1aac20dc05367cf) |
| Pool | vault_pool | vault_pool | likely in scope | [0x496cd1...586e](https://polygonscan.com/address/0x496cd143589508cd8b28312bc88881db7dbd586e) |
| Pool | vault_pool | vault_pool | likely in scope | [0x4a7b62...54f2](https://polygonscan.com/address/0x4a7b62135dba4e7a1cb87995557b3035239554f2) |
| Pool | vault_pool | vault_pool | likely in scope | [0x4b429d...964a](https://polygonscan.com/address/0x4b429d400aef209cff3de5cb69ce97a38799964a) |
| Pool | vault_pool | vault_pool | likely in scope | [0x4b440a...34fa](https://polygonscan.com/address/0x4b440a7de0ab7041934d0c171849a76cc33234fa) |
| Pool | vault_pool | vault_pool | likely in scope | [0x4baec5...4c32](https://polygonscan.com/address/0x4baec5f607d94c5a3aed6a2f7474993c09364c32) |
| Pool | vault_pool | vault_pool | likely in scope | [0x4c0299...32fd](https://polygonscan.com/address/0x4c0299eae511c014dfe4963204034f0e8fc032fd) |
| Pool | vault_pool | vault_pool | likely in scope | [0x4c4a5b...68d8](https://polygonscan.com/address/0x4c4a5b008fdce03fb1c90942407acd997fb868d8) |
| Pool | vault_pool | vault_pool | likely in scope | [0x4d73b0...b89c](https://polygonscan.com/address/0x4d73b064ad611fcb43d882bceb8fe4a22be5b89c) |
| Pool | vault_pool | vault_pool | likely in scope | [0x4ebc4d...6b5f](https://polygonscan.com/address/0x4ebc4d2763e951197f07b6b8b3c2bdfbff7d6b5f) |
| Pool | vault_pool | vault_pool | likely in scope | [0x506763...af9a](https://polygonscan.com/address/0x506763aeb6010d035dfb5e61c4b889392b61af9a) |
| Pool | vault_pool | vault_pool | likely in scope | [0x51d802...1e87](https://polygonscan.com/address/0x51d802e18369b0c07865cb6782da1d41a49d1e87) |
| Pool | vault_pool | vault_pool | likely in scope | [0x521628...5d56](https://polygonscan.com/address/0x52162860848027ee1ca40da888676233dbd55d56) |
| Pool | vault_pool | vault_pool | likely in scope | [0x54fab8...939f](https://polygonscan.com/address/0x54fab85a89faf097b9af870ba5f86824526e939f) |
| Pool | vault_pool | vault_pool | likely in scope | [0x552f40...3a3b](https://polygonscan.com/address/0x552f4016e3c0571a179aa8e2146972da83c03a3b) |
| Pool | vault_pool | vault_pool | likely in scope | [0x58ff16...b23f](https://polygonscan.com/address/0x58ff1614f9d34ff93743221d5fdc1eb523a3b23f) |
| Pool | vault_pool | vault_pool | likely in scope | [0x593f77...9fa3](https://polygonscan.com/address/0x593f77f3c26da9470ba3e9a4c153ebee25269fa3) |
| Pool | vault_pool | vault_pool | likely in scope | [0x5b1f45...6c8c](https://polygonscan.com/address/0x5b1f4565799897e1f792404f5fff15c1126d6c8c) |
| Pool | vault_pool | vault_pool | likely in scope | [0x5b3ee1...05d8](https://polygonscan.com/address/0x5b3ee1ebd25044751da1505abf6b0e809c8d05d8) |
| Pool | vault_pool | vault_pool | likely in scope | [0x5b8d7e...f5bd](https://polygonscan.com/address/0x5b8d7e4c270b8251e5ff687da620dfe77918f5bd) |
| Pool | vault_pool | vault_pool | likely in scope | [0x5d3974...7ae9](https://polygonscan.com/address/0x5d3974415f9ab08b94d58939ea625a1167d47ae9) |
| Pool | vault_pool | vault_pool | likely in scope | [0x5da952...89df](https://polygonscan.com/address/0x5da952c1127944a48ecc8f4a05bc6c68ae6b89df) |
| Pool | vault_pool | vault_pool | likely in scope | [0x5f802b...06a9](https://polygonscan.com/address/0x5f802bf23ba6aed935113dc1388c686140cc06a9) |
| Pool | vault_pool | vault_pool | likely in scope | [0x603f80...3c4a](https://polygonscan.com/address/0x603f80dc858f740bb46c2350943126621cd53c4a) |
| Pool | vault_pool | vault_pool | likely in scope | [0x616808...e6bb](https://polygonscan.com/address/0x61680811d35b7b9aa481f51f88a7882d77fbe6bb) |
| Pool | vault_pool | vault_pool | likely in scope | [0x619f56...bb4f](https://polygonscan.com/address/0x619f563f05a57393991cdea38bf456f064b4bb4f) |
| Pool | vault_pool | vault_pool | likely in scope | [0x61c936...d58d](https://polygonscan.com/address/0x61c93621cc0bc8e038d4c8f49e987981cc9ad58d) |
| Pool | vault_pool | vault_pool | likely in scope | [0x61e2cb...d513](https://polygonscan.com/address/0x61e2cbdd96256e9bb7ed5dc2aed55c348670d513) |
| Pool | vault_pool | vault_pool | likely in scope | [0x64c0f2...b390](https://polygonscan.com/address/0x64c0f2bf4e046faa34c60bdf64fda0b3e0ddb390) |
| Pool | vault_pool | vault_pool | likely in scope | [0x65675b...9098](https://polygonscan.com/address/0x65675b65e01989036cce1944e5436bc71ffb9098) |
| Pool | vault_pool | vault_pool | likely in scope | [0x656a54...019a](https://polygonscan.com/address/0x656a5421912afb93e68ac3e1361db1252d6a019a) |
| Pool | vault_pool | vault_pool | likely in scope | [0x660430...8470](https://polygonscan.com/address/0x66043087ad170834f2e12cd942965be2bfef8470) |
| Pool | vault_pool | vault_pool | likely in scope | [0x68734b...e848](https://polygonscan.com/address/0x68734b6d836ca0eb9ec8a8babe52c92ffe98e848) |
| Pool | vault_pool | vault_pool | likely in scope | [0x689c9a...c7f5](https://polygonscan.com/address/0x689c9aca1267890c318f7f4754faa93001b7c7f5) |
| Pool | vault_pool | vault_pool | likely in scope | [0x692ef6...13b4](https://polygonscan.com/address/0x692ef60ed4675f3e29f5f7b4cc26c5a7945a13b4) |
| Pool | vault_pool | vault_pool | likely in scope | [0x6938c6...d39f](https://polygonscan.com/address/0x6938c625323ea091405ab1fa8c8cb502b132d39f) |
| Pool | vault_pool | vault_pool | likely in scope | [0x6b56de...26c5](https://polygonscan.com/address/0x6b56de3fe4419d3a81ebfae3a0334255958026c5) |
| Pool | vault_pool | vault_pool | likely in scope | [0x6c9c18...0e3d](https://polygonscan.com/address/0x6c9c188c677bdbb5803faa39a2c73de637220e3d) |
| Pool | vault_pool | vault_pool | likely in scope | [0x6cb611...ec07](https://polygonscan.com/address/0x6cb61124e06099813aa342a09498daf64642ec07) |
| Pool | vault_pool | vault_pool | likely in scope | [0x6d03a9...7229](https://polygonscan.com/address/0x6d03a92c05014e5c97ffd20f804238cfb35a7229) |
| Pool | vault_pool | vault_pool | likely in scope | [0x6dc0b3...acda](https://polygonscan.com/address/0x6dc0b378ce77309b1546b8a2514fdbfcdde5acda) |
| Pool | vault_pool | vault_pool | likely in scope | [0x6e2bf3...3620](https://polygonscan.com/address/0x6e2bf3d9cca184b43d2afbf244bb0b8b157c3620) |
| Pool | vault_pool | vault_pool | likely in scope | [0x6eb39c...40f6](https://polygonscan.com/address/0x6eb39cc5529d23a6e25b159e66e4546aeebe40f6) |
| Pool | vault_pool | vault_pool | likely in scope | [0x6f3d1e...a4c2](https://polygonscan.com/address/0x6f3d1e9ded3a240d1d2a2ed11e060b8d2b56a4c2) |
| Pool | vault_pool | vault_pool | likely in scope | [0x70a072...a147](https://polygonscan.com/address/0x70a07239e981a0c3770db6f7b75d6cf48442a147) |
| Pool | vault_pool | vault_pool | likely in scope | [0x7146d0...f912](https://polygonscan.com/address/0x7146d06c280cd21f577a58405de1092e2f89f912) |
| Pool | vault_pool | vault_pool | likely in scope | [0x71bdcc...b010](https://polygonscan.com/address/0x71bdccef37621893f642b03fc5e8d91ed33bb010) |
| Pool | vault_pool | vault_pool | likely in scope | [0x71bf04...64c8](https://polygonscan.com/address/0x71bf04aea473f240a3abb76ac9efe3d3bfe064c8) |
| Pool | vault_pool | vault_pool | likely in scope | [0x737267...3fa0](https://polygonscan.com/address/0x73726747bc115d461040d0be397d700be6543fa0) |
| Pool | vault_pool | vault_pool | likely in scope | [0x73e15c...0ea4](https://polygonscan.com/address/0x73e15c123ec2d5ddf6079e819cf6abe57dc50ea4) |
| Pool | vault_pool | vault_pool | likely in scope | [0x73fa19...1bf8](https://polygonscan.com/address/0x73fa19402b33f387f697e4f7887186c2a53f1bf8) |
| Pool | vault_pool | vault_pool | likely in scope | [0x7437f3...bd75](https://polygonscan.com/address/0x7437f3d239af7891080ad19c5a4208ee3413bd75) |
| Pool | vault_pool | vault_pool | likely in scope | [0x784a79...fe83](https://polygonscan.com/address/0x784a79794fe1ef8c78c33b7cb058015be54efe83) |
| Pool | vault_pool | vault_pool | likely in scope | [0x788137...0bf3](https://polygonscan.com/address/0x788137485c63c6bef870d2b3fc06eb0715860bf3) |
| Pool | vault_pool | vault_pool | likely in scope | [0x794e19...83cc](https://polygonscan.com/address/0x794e19990f2e810409e09c6572d14b7267d283cc) |
| Pool | vault_pool | vault_pool | likely in scope | [0x7a263f...3321](https://polygonscan.com/address/0x7a263f3cc6d6668992d0e2310c9ae339363b3321) |
| Pool | vault_pool | vault_pool | likely in scope | [0x7a822d...e3d4](https://polygonscan.com/address/0x7a822d44e6ed7811d0bbd541f98ceed22abae3d4) |
| Pool | vault_pool | vault_pool | likely in scope | [0x7af627...a378](https://polygonscan.com/address/0x7af62711a251664fefc733e257088f12401da378) |
| Pool | vault_pool | vault_pool | likely in scope | [0x7b844b...b87e](https://polygonscan.com/address/0x7b844bc0ca372d2397f897ac5295372ace00b87e) |
| Pool | vault_pool | vault_pool | likely in scope | [0x7bcd6f...8cfd](https://polygonscan.com/address/0x7bcd6fc2ae994bb8e0eb46a9015ca9d123328cfd) |
| Pool | vault_pool | vault_pool | likely in scope | [0x7becbf...1a40](https://polygonscan.com/address/0x7becbf8d3484fa942a23179d8fb7b63cb2501a40) |
| Pool | vault_pool | vault_pool | likely in scope | [0x7e0d24...6f06](https://polygonscan.com/address/0x7e0d2428449dd09bc7250df4122b09998eec6f06) |
| Pool | vault_pool | vault_pool | likely in scope | [0x7e1464...2a9c](https://polygonscan.com/address/0x7e146466e6b2d59a48e70b07a04a75f6a9642a9c) |
| Pool | vault_pool | vault_pool | likely in scope | [0x7f73a3...c8e3](https://polygonscan.com/address/0x7f73a30ccffd90192428d0f1f4b786e801ffc8e3) |
| Pool | vault_pool | vault_pool | likely in scope | [0x7fa8e0...1f29](https://polygonscan.com/address/0x7fa8e099f553ac1173cdd7b084a74cf121831f29) |
| Pool | vault_pool | vault_pool | likely in scope | [0x7fd2bf...544f](https://polygonscan.com/address/0x7fd2bfb87b61f9f9dc72cab52a8a5a913d8c544f) |
| Pool | vault_pool | vault_pool | likely in scope | [0x7ff4b4...70ca](https://polygonscan.com/address/0x7ff4b40ba0ab9d7e3bb1bdacd9c4122767cd70ca) |
| Pool | vault_pool | vault_pool | likely in scope | [0x800532...c82c](https://polygonscan.com/address/0x800532af09260c5404ca4925ab97143daa45c82c) |
| Pool | vault_pool | vault_pool | likely in scope | [0x854403...8273](https://polygonscan.com/address/0x8544036d14e871e8e5fa6bf720a373093e198273) |
| Pool | vault_pool | vault_pool | likely in scope | [0x879664...df00](https://polygonscan.com/address/0x879664ce5a919727b3ed4035cf12f7f740e8df00) |
| Pool | vault_pool | vault_pool | likely in scope | [0x882f83...d76e](https://polygonscan.com/address/0x882f83877206626ca74482155e153f103466d76e) |
| Pool | vault_pool | vault_pool | likely in scope | [0x8b9075...757d](https://polygonscan.com/address/0x8b90754d581fbc99ed815522f109ad373b62757d) |
| Pool | vault_pool | vault_pool | likely in scope | [0x8bc990...14d6](https://polygonscan.com/address/0x8bc990f14e0f0c2f3be63b818a4f83636ea714d6) |
| Pool | vault_pool | vault_pool | likely in scope | [0x8cf86b...9f7b](https://polygonscan.com/address/0x8cf86becc59dfaac2cd60d4c664b5013db119f7b) |
| Pool | vault_pool | vault_pool | likely in scope | [0x8d1218...f47c](https://polygonscan.com/address/0x8d1218686ec13a486bd40f4ffe581122a9b9f47c) |
| Pool | vault_pool | vault_pool | likely in scope | [0x8d280e...a4e1](https://polygonscan.com/address/0x8d280ee01f6e0ccf192818be769b8172b2a9a4e1) |
| Pool | vault_pool | vault_pool | likely in scope | [0x8e7f00...c4ae](https://polygonscan.com/address/0x8e7f002a042b2693523fd46675287dfb586ec4ae) |
| Pool | vault_pool | vault_pool | likely in scope | [0x901758...5c74](https://polygonscan.com/address/0x901758609c78cf31da44015b164fde9911005c74) |
| Pool | vault_pool | vault_pool | likely in scope | [0x92b7fd...a112](https://polygonscan.com/address/0x92b7fd62238f2f20a393f0f78130377db028a112) |
| Pool | vault_pool | vault_pool | likely in scope | [0x92e872...caf5](https://polygonscan.com/address/0x92e872810e3023d67e8479c030f6cf7caf75caf5) |
| Pool | vault_pool | vault_pool | likely in scope | [0x95fd02...b7fe](https://polygonscan.com/address/0x95fd0243afb0359d07bf05dbb9e906357f0fb7fe) |
| Pool | vault_pool | vault_pool | likely in scope | [0x964176...1ee1](https://polygonscan.com/address/0x96417631153876992a016c0331f143221e551ee1) |
| Pool | vault_pool | vault_pool | likely in scope | [0x9740c9...b15a](https://polygonscan.com/address/0x9740c949973a83c7e1f2b1448fc6df8239ddb15a) |
| Pool | vault_pool | vault_pool | likely in scope | [0x97a2b6...5025](https://polygonscan.com/address/0x97a2b618b99a64021ca54fe989a11296a21e5025) |
| Pool | vault_pool | vault_pool | likely in scope | [0x97e22d...11d5](https://polygonscan.com/address/0x97e22d370cbec657f2edba3bcf2edee5db6011d5) |
| Pool | vault_pool | vault_pool | likely in scope | [0x9897e2...782a](https://polygonscan.com/address/0x9897e253d1b26444508238c4d212647c2ae7782a) |
| Pool | vault_pool | vault_pool | likely in scope | [0x989b17...199f](https://polygonscan.com/address/0x989b17513f7eb4538fc228328bdae49f2af2199f) |
| Pool | vault_pool | vault_pool | likely in scope | [0x9926ce...ce86](https://polygonscan.com/address/0x9926ceee4ea3a5f44c98e4dfbe63d926306bce86) |
| Pool | vault_pool | vault_pool | likely in scope | [0x9af350...1de9](https://polygonscan.com/address/0x9af350aca2e6043a567b68456e7d6f532a301de9) |
| Pool | vault_pool | vault_pool | likely in scope | [0x9c0e20...b6ee](https://polygonscan.com/address/0x9c0e20f214a4164ad5738537edbab1800875b6ee) |
| Pool | vault_pool | vault_pool | likely in scope | [0x9c7778...0c1e](https://polygonscan.com/address/0x9c777839adc4ac86f2a360a525017ccabbcb0c1e) |
| Pool | vault_pool | vault_pool | likely in scope | [0xa0da91...0a14](https://polygonscan.com/address/0xa0da91b956e70b03dc8edab0b944bbf8d2f90a14) |
| Pool | vault_pool | vault_pool | likely in scope | [0xa1218b...5ff8](https://polygonscan.com/address/0xa1218bb427ccdfe8a471ce8928a81cb9b9395ff8) |
| Pool | vault_pool | vault_pool | likely in scope | [0xa18949...a63d](https://polygonscan.com/address/0xa18949ee073edaa79c5200b13938d8ad8887a63d) |
| Pool | vault_pool | vault_pool | likely in scope | [0xa258ed...c7d5](https://polygonscan.com/address/0xa258ed2e923b1a0ae81c75d9e082535873a2c7d5) |
| Pool | vault_pool | vault_pool | likely in scope | [0xa393b5...8831](https://polygonscan.com/address/0xa393b589c1160b954a460d93228ca8373e6c8831) |
| Pool | vault_pool | vault_pool | likely in scope | [0xa40b33...7ef4](https://polygonscan.com/address/0xa40b33bac24e158b2762ce4f6e47c7719ece7ef4) |
| Pool | vault_pool | vault_pool | likely in scope | [0xa43fdc...b5dc](https://polygonscan.com/address/0xa43fdc2363cbd9d5a651b561bd369066efa6b5dc) |
| Pool | vault_pool | vault_pool | likely in scope | [0xa45ab4...e2ed](https://polygonscan.com/address/0xa45ab4daeff3c0ce9721bc0c6b6874d8c683e2ed) |
| Pool | vault_pool | vault_pool | likely in scope | [0xa52781...a9ed](https://polygonscan.com/address/0xa5278115b3194f630bd4e99203c304de1612a9ed) |
| Pool | vault_pool | vault_pool | likely in scope | [0xa5ebdd...8504](https://polygonscan.com/address/0xa5ebdde0f2e657d77bebeda085dd49f6decf8504) |
| Pool | vault_pool | vault_pool | likely in scope | [0xa60f7e...5223](https://polygonscan.com/address/0xa60f7e95b14545de83ff13b421a2629211365223) |
| Pool | vault_pool | vault_pool | likely in scope | [0xa70dfb...595d](https://polygonscan.com/address/0xa70dfb3f3b36d69ba3f6efa8949126999906595d) |
| Pool | vault_pool | vault_pool | likely in scope | [0xa81b27...dfb1](https://polygonscan.com/address/0xa81b27863062c16288055be1098c7358ecdcdfb1) |
| Pool | vault_pool | vault_pool | likely in scope | [0xa852dd...c54a](https://polygonscan.com/address/0xa852ddd69c13d42669840a692f6bbf94245ac54a) |
| Pool | vault_pool | vault_pool | likely in scope | [0xa85456...25c1](https://polygonscan.com/address/0xa85456781f164e6523f52ff4284b086c402725c1) |
| Pool | vault_pool | vault_pool | likely in scope | [0xa8ac32...3027](https://polygonscan.com/address/0xa8ac324b56efb016b3334604e3144b7d425b3027) |
| Pool | vault_pool | vault_pool | likely in scope | [0xac1d96...c7d0](https://polygonscan.com/address/0xac1d962a38e8c541eb6a0d1105fe2000d9d9c7d0) |
| Pool | vault_pool | vault_pool | likely in scope | [0xace617...5df4](https://polygonscan.com/address/0xace617c514396b963ceabb72b50745ffdee15df4) |
| Pool | vault_pool | vault_pool | likely in scope | [0xb0e1c1...dcd9](https://polygonscan.com/address/0xb0e1c1ad49b8c0de1b542bd5116e10a97861dcd9) |
| Pool | vault_pool | vault_pool | likely in scope | [0xb22f7e...353b](https://polygonscan.com/address/0xb22f7e88700176443ef74ec5f53419b3bbd0353b) |
| Pool | vault_pool | vault_pool | likely in scope | [0xb283e6...ed28](https://polygonscan.com/address/0xb283e6f596c9a462986ae99c8d4847d06d1ced28) |
| Pool | vault_pool | vault_pool | likely in scope | [0xb29adc...e653](https://polygonscan.com/address/0xb29adcce020d51d3b8cfc66ef6ad570a88bee653) |
| Pool | vault_pool | vault_pool | likely in scope | [0xb2d60f...005c](https://polygonscan.com/address/0xb2d60f1bb101f9b92b26ee0399f2c93a7056005c) |
| Pool | vault_pool | vault_pool | likely in scope | [0xb35c81...7c7b](https://polygonscan.com/address/0xb35c81dd5b567ea44cdf0b53bb31fb66f4517c7b) |
| Pool | vault_pool | vault_pool | likely in scope | [0xb5991a...d94f](https://polygonscan.com/address/0xb5991af040cd17c6e90b4bf59284c176bd93d94f) |
| Pool | vault_pool | vault_pool | likely in scope | [0xb71129...373f](https://polygonscan.com/address/0xb711297ebf302614c677d575a7df0e8e5752373f) |
| Pool | vault_pool | vault_pool | likely in scope | [0xb7a63d...91da](https://polygonscan.com/address/0xb7a63d8ebf10ba6290c6ec4b44ac5176a62091da) |
| Pool | vault_pool | vault_pool | likely in scope | [0xb7ce2c...364e](https://polygonscan.com/address/0xb7ce2c41d3584a1071cb52c1a55bd0d2a075364e) |
| Pool | vault_pool | vault_pool | likely in scope | [0xb8815b...5377](https://polygonscan.com/address/0xb8815bb531ccc5bbc2462be2eef25a792c095377) |
| Pool | vault_pool | vault_pool | likely in scope | [0xb91006...f88a](https://polygonscan.com/address/0xb910068b39412ab60aa0ec24636b1dc4bf61f88a) |
| Pool | vault_pool | vault_pool | likely in scope | [0xba1222...675b](https://polygonscan.com/address/0xba12229072b5c36f3a28b8e34c8af913b2a3675b) |
| Pool | vault_pool | vault_pool | likely in scope | [0xba59e9...c605](https://polygonscan.com/address/0xba59e9089ddd51e6050261e815c5347f46d4c605) |
| Pool | vault_pool | vault_pool | likely in scope | [0xbac6d9...aca9](https://polygonscan.com/address/0xbac6d9ce40a5128f592c80a9767f97eaeeefaca9) |
| Pool | vault_pool | vault_pool | likely in scope | [0xbb6608...1a7f](https://polygonscan.com/address/0xbb66082062e79e19bd3e973c80937b3dae8f1a7f) |
| Pool | vault_pool | vault_pool | likely in scope | [0xbd4f85...cced](https://polygonscan.com/address/0xbd4f85df9dec005800c5af0281e70c70ba62cced) |
| Pool | vault_pool | vault_pool | likely in scope | [0xbf0af5...8919](https://polygonscan.com/address/0xbf0af53c4b590f5a6231b2750c41ee53a83d8919) |
| Pool | vault_pool | vault_pool | likely in scope | [0xc0aaf2...ae46](https://polygonscan.com/address/0xc0aaf2992b04d3424768d7ba3f1f1979dc14ae46) |
| Pool | vault_pool | vault_pool | likely in scope | [0xc0c837...3855](https://polygonscan.com/address/0xc0c837c229b0bb27347d733336f09172b9403855) |
| Pool | vault_pool | vault_pool | likely in scope | [0xc1e799...5add](https://polygonscan.com/address/0xc1e799ebb24ee61d57fc6907bdd225ff12b25add) |
| Pool | vault_pool | vault_pool | likely in scope | [0xc270e8...25f0](https://polygonscan.com/address/0xc270e8bfddd1baecb63f1f168cf16a5af43f25f0) |
| Pool | vault_pool | vault_pool | likely in scope | [0xc28208...33d5](https://polygonscan.com/address/0xc28208707ef6dbe33d614c895c6c4548b6e833d5) |
| Pool | vault_pool | vault_pool | likely in scope | [0xc4e537...36e3](https://polygonscan.com/address/0xc4e537f9f5be4160cce771fa825bc39d411a36e3) |
| Pool | vault_pool | vault_pool | likely in scope | [0xc4ec69...1c59](https://polygonscan.com/address/0xc4ec699134e409246c65d1814f2326a3a0a31c59) |
| Pool | vault_pool | vault_pool | likely in scope | [0xc4ff1f...70de](https://polygonscan.com/address/0xc4ff1f9a921755a85f9bca7fa392d65d5c4670de) |
| Pool | vault_pool | vault_pool | likely in scope | [0xc5d1d2...b06f](https://polygonscan.com/address/0xc5d1d25f53780cabed8c436377d462707d17b06f) |
| Pool | vault_pool | vault_pool | likely in scope | [0xc6057b...c056](https://polygonscan.com/address/0xc6057b30068d1d94cad765f7f80918a34e2fc056) |
| Pool | vault_pool | vault_pool | likely in scope | [0xc91a67...7db9](https://polygonscan.com/address/0xc91a6739f40a84eb4d7fbfc550e554d27e717db9) |
| Pool | vault_pool | vault_pool | likely in scope | [0xc98f39...f4f0](https://polygonscan.com/address/0xc98f3914d377cd24683a3adcacf90ff97010f4f0) |
| Pool | vault_pool | vault_pool | likely in scope | [0xcb3824...87cd](https://polygonscan.com/address/0xcb3824aab28057e55ff0cc30d97d7f3f537f87cd) |
| Pool | vault_pool | vault_pool | likely in scope | [0xcb77b0...6ea3](https://polygonscan.com/address/0xcb77b0496f5352bad0ead647e01c284747a46ea3) |
| Pool | vault_pool | vault_pool | likely in scope | [0xcc6ff9...ad97](https://polygonscan.com/address/0xcc6ff98bf84c0f4f4c0ed74d6d76b815cf27ad97) |
| Pool | vault_pool | vault_pool | likely in scope | [0xccf2b5...f019](https://polygonscan.com/address/0xccf2b5c75ffc1936ecae081955e66c2975bbf019) |
| Pool | vault_pool | vault_pool | likely in scope | [0xcdbfb4...7b99](https://polygonscan.com/address/0xcdbfb49c6984abe7807d4dec49451632517d7b99) |
| Pool | vault_pool | vault_pool | likely in scope | [0xcdf347...ecf5](https://polygonscan.com/address/0xcdf3472889e6b0274ae8e8e4912ac2818aa8ecf5) |
| Pool | vault_pool | vault_pool | likely in scope | [0xd313dc...8452](https://polygonscan.com/address/0xd313dc0facede9d3a5631936b2823adea9728452) |
| Pool | vault_pool | vault_pool | likely in scope | [0xd35b51...d9fe](https://polygonscan.com/address/0xd35b51b9f0774c9840f18cadd93f61968333d9fe) |
| Pool | vault_pool | vault_pool | likely in scope | [0xd391c6...55d8](https://polygonscan.com/address/0xd391c6a5da099c0f25b6182b8d2e09855c3255d8) |
| Pool | vault_pool | vault_pool | likely in scope | [0xd40af8...4de9](https://polygonscan.com/address/0xd40af855d2f64a5e82d30505e8f5ca7ae9204de9) |
| Pool | vault_pool | vault_pool | likely in scope | [0xd68e38...b203](https://polygonscan.com/address/0xd68e389884a54c81b7a5bd718573093425d5b203) |
| Pool | vault_pool | vault_pool | likely in scope | [0xd7400d...880e](https://polygonscan.com/address/0xd7400de10b736bc3dc33c30b318c447a7d99880e) |
| Pool | vault_pool | vault_pool | likely in scope | [0xd83566...ba72](https://polygonscan.com/address/0xd8356674e35e21b4bfc6ad78bc9f703f474eba72) |
| Pool | vault_pool | vault_pool | likely in scope | [0xdb7c83...dfd7](https://polygonscan.com/address/0xdb7c83ba9e86704c97c159b67153824a3ae1dfd7) |
| Pool | vault_pool | vault_pool | likely in scope | [0xdcd0ca...8291](https://polygonscan.com/address/0xdcd0ca835b366be13facd594eb425d72be4d8291) |
| Pool | vault_pool | vault_pool | likely in scope | [0xe06fda...cd0c](https://polygonscan.com/address/0xe06fdaac5335eb1437700117753b274cd40fcd0c) |
| Pool | vault_pool | vault_pool | likely in scope | [0xe2b5d9...7b33](https://polygonscan.com/address/0xe2b5d9b3f8961aa83466d19c2069c58118ec7b33) |
| Pool | vault_pool | vault_pool | likely in scope | [0xe3d2e9...107f](https://polygonscan.com/address/0xe3d2e91e48abedbbea118f27e5df9a25c07c107f) |
| Pool | vault_pool | vault_pool | likely in scope | [0xe408f8...a115](https://polygonscan.com/address/0xe408f8ab611cd2688657fadae6dd81da4ce2a115) |
| Pool | vault_pool | vault_pool | likely in scope | [0xe56a52...a680](https://polygonscan.com/address/0xe56a52d074c740beb4123518566787595e40a680) |
| Pool | vault_pool | vault_pool | likely in scope | [0xe6785e...668e](https://polygonscan.com/address/0xe6785e75a9a3c3fd02080b23cfaf8aca1d31668e) |
| Pool | vault_pool | vault_pool | likely in scope | [0xe7129c...af45](https://polygonscan.com/address/0xe7129c006353ceda8f229240282c48a54402af45) |
| Pool | vault_pool | vault_pool | likely in scope | [0xe88efd...ba42](https://polygonscan.com/address/0xe88efdf1a6cbd3d6c78a11741a618a116816ba42) |
| Pool | vault_pool | vault_pool | likely in scope | [0xea42eb...deca](https://polygonscan.com/address/0xea42eb8531f23c1c816fe6fa3247ed45ed12deca) |
| Pool | vault_pool | vault_pool | likely in scope | [0xeaba3d...e8e8](https://polygonscan.com/address/0xeaba3d3f578ceac3f5f5f0f9d65dc5fa8320e8e8) |
| Pool | vault_pool | vault_pool | likely in scope | [0xebbc37...f3aa](https://polygonscan.com/address/0xebbc37cc939fe2e72b1b20061f9bf754b16df3aa) |
| Pool | vault_pool | vault_pool | likely in scope | [0xed764d...b283](https://polygonscan.com/address/0xed764df3da7870b9d7550bac2ed6ecb9a5e0b283) |
| Pool | vault_pool | vault_pool | likely in scope | [0xedb04e...0c6f](https://polygonscan.com/address/0xedb04e5c0f9659d5965c2d02ead1e0399c6e0c6f) |
| Pool | vault_pool | vault_pool | likely in scope | [0xee25a1...0abe](https://polygonscan.com/address/0xee25a1c02c679f2d96b79a0c7e713f27dbfb0abe) |
| Pool | vault_pool | vault_pool | likely in scope | [0xf12a4b...fab7](https://polygonscan.com/address/0xf12a4b5b76b441f26f0336430eb33b8719a1fab7) |
| Pool | vault_pool | vault_pool | likely in scope | [0xf17be7...ddd8](https://polygonscan.com/address/0xf17be7d0f1e0e2eb930f13fffc3e0b0eedb9ddd8) |
| Pool | vault_pool | vault_pool | likely in scope | [0xf35c38...23f2](https://polygonscan.com/address/0xf35c389357188e4deb495c58511fe123677d23f2) |
| Pool | vault_pool | vault_pool | likely in scope | [0xf5391f...a675](https://polygonscan.com/address/0xf5391f3132abb2aa0cbe0fb5f9f924497aa5a675) |
| Pool | vault_pool | vault_pool | likely in scope | [0xf5c2dc...a932](https://polygonscan.com/address/0xf5c2dc1468888dcf8ab30db0f706db472352a932) |
| Pool | vault_pool | vault_pool | likely in scope | [0xf65c1d...ea9b](https://polygonscan.com/address/0xf65c1dc44e85f91af4b75a4c30734a2f5724ea9b) |
| Pool | vault_pool | vault_pool | likely in scope | [0xf8a7c3...e635](https://polygonscan.com/address/0xf8a7c3f6475fdf5a16aed3f0148ce0218d38e635) |
| Pool | vault_pool | vault_pool | likely in scope | [0xfa04f8...68dc](https://polygonscan.com/address/0xfa04f8baa3505824bc3e7d54b3a4ef6538fe68dc) |
| Pool | vault_pool | vault_pool | likely in scope | [0xfa0aec...f3d9](https://polygonscan.com/address/0xfa0aece331595f52ae17e265df301562afa3f3d9) |
| Pool | vault_pool | vault_pool | likely in scope | [0xfa4259...4015](https://polygonscan.com/address/0xfa42594c1ec2e3278cf636e72db4b9e73bec4015) |
| Pool | vault_pool | vault_pool | likely in scope | [0xfc8998...e681](https://polygonscan.com/address/0xfc8998897d9f1fdd2a44db5cf17f0c5953b1e681) |
| Pool | vault_pool | vault_pool | likely in scope | [0xfddfed...ab4e](https://polygonscan.com/address/0xfddfed5926e3a619ea01c1cd37ca782a76ffab4e) |
| Pool | vault_pool | vault_pool | likely in scope | [0xfeb1e7...873b](https://polygonscan.com/address/0xfeb1e7185bf7b2adb5d35835074937c3eaec873b) |
| Pool | vault_pool | vault_pool | likely in scope | [0xffb961...99f5](https://polygonscan.com/address/0xffb961a194e75491581875e4614ea326b9f799f5) |
| PoolOracle | vault_pool | vault_pool | audited (TP) | [0x049bef...7b09](https://polygonscan.com/address/0x049beffdb026d6d1d64cfc8fe29bd12142967b09) |
| QiStablecoin | core | core | unmatched | [0xa3fa99...97f1](https://polygonscan.com/address/0xa3fa99a148fa48d14ed51d610c367c61876997f1) |
| QuoterV2 | core | core | audited (TP) | [0x4d47fd...7856](https://polygonscan.com/address/0x4d47fd5a29904dae0ef51b1c450c9750f15d7856) |
| Router | router | router | likely in scope | [0xf9c2b5...eab4](https://polygonscan.com/address/0xf9c2b5746c946ef883ab2660bbbb1f10a5bdeab4) |
| StandardERC20 | token | token | unmatched | [0x16bfc3...8881](https://polygonscan.com/address/0x16bfc34a257c8798d5a30ee751aa56576cc88881) |
| StandardERC20 | token | token | unmatched | [0x3727fc...5781](https://polygonscan.com/address/0x3727fc92aa008c1c0924cacaa51d0d59a5dc5781) |
| StandardERC20 | token | token | unmatched | [0x5f9263...77a5](https://polygonscan.com/address/0x5f92637cb7a7ea8bf2c6d64e12e288a64b7b77a5) |
| StandardERC20 | token | token | unmatched | [0x76d705...ba43](https://polygonscan.com/address/0x76d705d27021ea6e8b42f57100cd5e3ddf9fba43) |
| StandardERC20 | token | token | unmatched | [0x9fa48c...170b](https://polygonscan.com/address/0x9fa48c00da20fe0cff3f34a55f2ad80acf70170b) |
| StandardERC20 | token | token | unmatched | [0xb7b9f6...007a](https://polygonscan.com/address/0xb7b9f660bdf8951871f7aca1beb2b07cbf71007a) |
| StandardERC20 | token | token | unmatched | [0xe35480...c4fa](https://polygonscan.com/address/0xe3548088cd39b99b38be5cb0bf34667f6c70c4fa) |
| StandardERC20 | token | token | unmatched | [0xea3139...e9f2](https://polygonscan.com/address/0xea3139cc70660d3bace894ae8e5486d3d61ee9f2) |
| StandardERC20 | token | token | unmatched | [0xeb4d85...ba0f](https://polygonscan.com/address/0xeb4d85b15bc1c751d7293fa9840c030031e8ba0f) |
| TicksFeesReader | peripheral | peripheral | audited (TP) | [0x8fd8cb...dbb3](https://polygonscan.com/address/0x8fd8cb948965d9305999d767a02bf79833eadbb3) |
| TokenPositionDescriptor | token | token | audited (TP) | [0x98565f...0bd6](https://polygonscan.com/address/0x98565fcad2080c5c19c3136fa367ce371cd40bd6) |
| UChildERC20Proxy | proxy | proxy | unmatched | [0x1c954e...948c](https://polygonscan.com/address/0x1c954e8fe737f99f68fa1ccda3e51ebdb291948c) |
| WethUnwrapper | core | core | unmatched | [0x37334c...5b94](https://polygonscan.com/address/0x37334cd06dfecd2e9b3937a6da17853d637a5b94) |
| unnamed | unknown | unknown | unmatched | [0x2abe87...3e0d](https://polygonscan.com/address/0x2abe8750e4a65584d7452316356128c936273e0d) |
| unnamed | unknown | unknown | unmatched | [0x326e06...4290](https://polygonscan.com/address/0x326e06cdeb2f649b107e32d087287846070f4290) |
| unnamed | unknown | unknown | unmatched | [0x83d490...1c31](https://polygonscan.com/address/0x83d4908c1b4f9ca423bee264163bc1d50f251c31) |

### sonic (chain_id 146)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| DSLOProtocol | core | core | unmatched | [0xcab2fa...4f6c](https://sonicscan.org/address/0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c) |
| KSZapRouterPosition | router | router | likely in scope | [0x0e97c8...9e05](https://sonicscan.org/address/0x0e97c887b61ccd952a53578b04763e7134429e05) |
| KSZapRouterPosition | router | router | likely in scope | [0xe70f23...eb21](https://sonicscan.org/address/0xe70f237ed0f57eac041a5d407b98bf287277eb21) |
| KSZapValidatorV2Part1 | core | core | unmatched | [0xa16f32...863e](https://sonicscan.org/address/0xa16f32442209c6b978431818aa535bcc9ad2863e) |
| MetaAggregationRouterV2 | router | router | likely in scope | [0x6131b5...37b5](https://sonicscan.org/address/0x6131b5fae19ea4f9d964eac0408e4408b66337b5) |
| WethUnwrapper | core | core | unmatched | [0x37334c...5b94](https://sonicscan.org/address/0x37334cd06dfecd2e9b3937a6da17853d637a5b94) |
| unnamed | unknown | unknown | unmatched | [0x040940...0604](https://sonicscan.org/address/0x040940632ee530f4d9ad3494988cb66958340604) |
| unnamed | unknown | unknown | unmatched | [0x10f119...e691](https://sonicscan.org/address/0x10f1194c3858c864de23d18af0bada35144ce691) |
| unnamed | unknown | unknown | unmatched | [0x11b4af...32b2](https://sonicscan.org/address/0x11b4aff6410ec62c5f50eb47c45cc5d6298832b2) |
| unnamed | unknown | unknown | unmatched | [0x2f577a...655d](https://sonicscan.org/address/0x2f577a41bec1be1152aeea12e73b7391d15f655d) |
| unnamed | unknown | unknown | unmatched | [0x2f804f...802c](https://sonicscan.org/address/0x2f804fb5f14a35cca829bd19fb2f254be000802c) |
| unnamed | unknown | unknown | unmatched | [0x302e2f...2d13](https://sonicscan.org/address/0x302e2f14d95e44ae0baf02c1013caee92f852d13) |
| unnamed | unknown | unknown | unmatched | [0x304719...d811](https://sonicscan.org/address/0x30471962a12fc68662e1b5aa5f9cb5378a55d811) |
| unnamed | unknown | unknown | unmatched | [0x3732fb...75b0](https://sonicscan.org/address/0x3732fb6e7656f92069d0922c9ff8f34eb67575b0) |
| unnamed | unknown | unknown | unmatched | [0x38cb5f...9282](https://sonicscan.org/address/0x38cb5f51fd1e092ca9e81d4ee8f09b4794b19282) |
| unnamed | unknown | unknown | unmatched | [0x5301b6...b374](https://sonicscan.org/address/0x5301b677678e0408872cc7eb3fb8406dc669b374) |
| unnamed | unknown | unknown | unmatched | [0x5370d7...7224](https://sonicscan.org/address/0x5370d78091b00dc9d32f205a3d08449b85207224) |
| unnamed | unknown | unknown | unmatched | [0x669ecc...5cd8](https://sonicscan.org/address/0x669eccc38618cd6d19250f72bf82fad6780d5cd8) |
| unnamed | unknown | unknown | unmatched | [0x675950...2c7b](https://sonicscan.org/address/0x6759500c7e6a1009a863cabe66d04e7fbabd2c7b) |
| unnamed | unknown | unknown | unmatched | [0x6b57a4...b72d](https://sonicscan.org/address/0x6b57a40427a8d2353eefb5e30eff5c5eb4c4b72d) |
| unnamed | unknown | unknown | unmatched | [0x70fa51...599a](https://sonicscan.org/address/0x70fa515cb4e48754e59caec207adfa134b57599a) |
| unnamed | unknown | unknown | unmatched | [0x789157...aa25](https://sonicscan.org/address/0x7891576cf2dd67f242912883e06b2b852936aa25) |
| unnamed | unknown | unknown | unmatched | [0x7ae68a...0fbe](https://sonicscan.org/address/0x7ae68a7e956d4ce3d0e522e141d97c0a20a30fbe) |
| unnamed | unknown | unknown | unmatched | [0x88627a...8cd2](https://sonicscan.org/address/0x88627abe0f69c5b570b8c5e7b6da4aff29578cd2) |
| unnamed | unknown | unknown | unmatched | [0x89958f...b903](https://sonicscan.org/address/0x89958f21706473b292fb09a26b5d195a9f90b903) |
| unnamed | unknown | unknown | unmatched | [0x936363...ef96](https://sonicscan.org/address/0x93636330286dce8ffca3e5e5de9aa4bb6590ef96) |
| unnamed | unknown | unknown | unmatched | [0x942412...1f26](https://sonicscan.org/address/0x942412fe06290651ed1438b0cf454339cb4f1f26) |
| unnamed | unknown | unknown | unmatched | [0x9476aa...ce90](https://sonicscan.org/address/0x9476aa4f9bf915fe2512fd7235182d56c0d9ce90) |
| unnamed | unknown | unknown | unmatched | [0xa0d27a...7290](https://sonicscan.org/address/0xa0d27aac297fe41a0b7fd4de50001fab74467290) |
| unnamed | unknown | unknown | unmatched | [0xa33146...29d5](https://sonicscan.org/address/0xa33146b5dab361c1231822ef3e8c04e95b8029d5) |
| unnamed | unknown | unknown | unmatched | [0xa6aba5...c3b8](https://sonicscan.org/address/0xa6aba54b0aee04c05951221b5d210622b64cc3b8) |
| unnamed | unknown | unknown | unmatched | [0xabe2c8...2dec](https://sonicscan.org/address/0xabe2c87683cbb593f506eca206e9f601037a2dec) |
| unnamed | unknown | unknown | unmatched | [0xafff41...9a53](https://sonicscan.org/address/0xafff41751147197b137e921c9f6eebd7beef9a53) |
| unnamed | unknown | unknown | unmatched | [0xb00c0f...5014](https://sonicscan.org/address/0xb00c0f4faa6cc4d0dfe28aec05a899ba443e5014) |
| unnamed | unknown | unknown | unmatched | [0xc0dc32...3395](https://sonicscan.org/address/0xc0dc32e424026547b15f1b4cd142f3106b0f3395) |
| unnamed | unknown | unknown | unmatched | [0xc5ec1e...1b3c](https://sonicscan.org/address/0xc5ec1e72bf654315ebc2244647f33c57fda11b3c) |
| unnamed | unknown | unknown | unmatched | [0xdaa210...4458](https://sonicscan.org/address/0xdaa210258d04a841b3d54eb29f31bac83e0d4458) |
| unnamed | unknown | unknown | unmatched | [0xdd37e8...4e76](https://sonicscan.org/address/0xdd37e84326214cf6207dcba403d63d572b724e76) |
| unnamed | unknown | unknown | unmatched | [0xf5cc44...dda5](https://sonicscan.org/address/0xf5cc449dca953a6de02678c6756cf2e4103cdda5) |

### fantom (chain_id 250)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AntiSnipAttackPositionManager | controller | controller | audited (TP) | [0xe222fb...a480](https://ftmscan.com/address/0xe222fbe074a436145b255442d919e4e3a6c6a480) |
| Factory | factory | factory | unmatched | [0xc7a590...8c4a](https://ftmscan.com/address/0xc7a590291e07b9fe9e64b86c58fd8fc764308c4a) |
| KSFactory | factory | factory | unmatched | [0x1c758a...9be5](https://ftmscan.com/address/0x1c758af0688502e49140230f6b0ebd376d429be5) |
| PoolOracle | vault_pool | vault_pool | audited (TP) | [0x049bef...7b09](https://ftmscan.com/address/0x049beffdb026d6d1d64cfc8fe29bd12142967b09) |
| QuoterV2 | core | core | audited (TP) | [0x4d47fd...7856](https://ftmscan.com/address/0x4d47fd5a29904dae0ef51b1c450c9750f15d7856) |
| Router | router | router | likely in scope | [0xf9c2b5...eab4](https://ftmscan.com/address/0xf9c2b5746c946ef883ab2660bbbb1f10a5bdeab4) |
| TicksFeesReader | peripheral | peripheral | audited (TP) | [0x8fd8cb...dbb3](https://ftmscan.com/address/0x8fd8cb948965d9305999d767a02bf79833eadbb3) |
| TokenPositionDescriptor | token | token | audited (TP) | [0x98565f...0bd6](https://ftmscan.com/address/0x98565fcad2080c5c19c3136fa367ce371cd40bd6) |
| unnamed | unknown | unknown | unmatched | [0x04068d...5b75](https://ftmscan.com/address/0x04068da6c83afcfa0e13ba15a6696662335d5b75) |
| unnamed | unknown | unknown | unmatched | [0x049d68...3c7a](https://ftmscan.com/address/0x049d68029688eabf473097a2fc38ef61633a3c7a) |
| unnamed | unknown | unknown | unmatched | [0x1e1085...7c3f](https://ftmscan.com/address/0x1e1085efaa63edfe74aad7c05a28eae4ef917c3f) |
| unnamed | unknown | unknown | unmatched | [0x247503...3546](https://ftmscan.com/address/0x2475039bf2ecdce2ee4c82954e64be9674f43546) |
| unnamed | unknown | unknown | unmatched | [0x2abe87...3e0d](https://ftmscan.com/address/0x2abe8750e4a65584d7452316356128c936273e0d) |
| unnamed | unknown | unknown | unmatched | [0x5649b4...23d0](https://ftmscan.com/address/0x5649b4dd00780e99bab7abb4a3d581ea1aeb23d0) |
| unnamed | unknown | unknown | unmatched | [0x58f1d0...3f3e](https://ftmscan.com/address/0x58f1d0f9bff9d695010c92fb93d100cef5113f3e) |
| unnamed | unknown | unknown | unmatched | [0x5d5a5a...039a](https://ftmscan.com/address/0x5d5a5a0a465129848c2549669e12cdc2f8de039a) |
| unnamed | unknown | unknown | unmatched | [0x78df70...6409](https://ftmscan.com/address/0x78df70615ffc8066cc0887917f2cd72092c86409) |
| unnamed | unknown | unknown | unmatched | [0x82f0b8...29c1](https://ftmscan.com/address/0x82f0b8b456c1a451378467398982d4834b6829c1) |
| unnamed | unknown | unknown | unmatched | [0x83d490...1c31](https://ftmscan.com/address/0x83d4908c1b4f9ca423bee264163bc1d50f251c31) |
| unnamed | unknown | unknown | unmatched | [0x878dfe...934c](https://ftmscan.com/address/0x878dfe971d44e9122048308301f540910bbd934c) |
| unnamed | unknown | unknown | unmatched | [0x8d11ec...bf3e](https://ftmscan.com/address/0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e) |
| unnamed | unknown | unknown | unmatched | [0x91c9d4...6f5b](https://ftmscan.com/address/0x91c9d4373b077ef8082f468c7c97f2c499e36f5b) |
| unnamed | unknown | unknown | unmatched | [0xcf591c...74ec](https://ftmscan.com/address/0xcf591ce5574258ac4550d96c545e4f3fd49a74ec) |
| unnamed | unknown | unknown | unmatched | [0xd8ac7f...cdb4](https://ftmscan.com/address/0xd8ac7f696ae99cd7b689726cf03c5711dd8dcdb4) |
| unnamed | unknown | unknown | unmatched | [0xfb98b3...213b](https://ftmscan.com/address/0xfb98b335551a418cd0737375a2ea0ded62ea213b) |

### polygon-zkevm (chain_id 1101)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| KSFactory | factory | factory | unmatched | [0x1c758a...9be5](https://zkevm.polygonscan.com/address/0x1c758af0688502e49140230f6b0ebd376d429be5) |
| unnamed | unknown | unknown | unmatched | [0x049bef...7b09](https://zkevm.polygonscan.com/address/0x049beffdb026d6d1d64cfc8fe29bd12142967b09) |
| unnamed | unknown | unknown | unmatched | [0x247503...3546](https://zkevm.polygonscan.com/address/0x2475039bf2ecdce2ee4c82954e64be9674f43546) |
| unnamed | unknown | unknown | unmatched | [0x2abe87...3e0d](https://zkevm.polygonscan.com/address/0x2abe8750e4a65584d7452316356128c936273e0d) |
| unnamed | unknown | unknown | unmatched | [0x4d47fd...7856](https://zkevm.polygonscan.com/address/0x4d47fd5a29904dae0ef51b1c450c9750f15d7856) |
| unnamed | unknown | unknown | unmatched | [0x5649b4...23d0](https://zkevm.polygonscan.com/address/0x5649b4dd00780e99bab7abb4a3d581ea1aeb23d0) |
| unnamed | unknown | unknown | unmatched | [0x58f1d0...3f3e](https://zkevm.polygonscan.com/address/0x58f1d0f9bff9d695010c92fb93d100cef5113f3e) |
| unnamed | unknown | unknown | unmatched | [0x6a80a4...79ba](https://zkevm.polygonscan.com/address/0x6a80a465409ce8d36c513129c0feea61bed579ba) |
| unnamed | unknown | unknown | unmatched | [0x8fd8cb...dbb3](https://zkevm.polygonscan.com/address/0x8fd8cb948965d9305999d767a02bf79833eadbb3) |
| unnamed | unknown | unknown | unmatched | [0x98565f...0bd6](https://zkevm.polygonscan.com/address/0x98565fcad2080c5c19c3136fa367ce371cd40bd6) |
| unnamed | unknown | unknown | unmatched | [0xc7a590...8c4a](https://zkevm.polygonscan.com/address/0xc7a590291e07b9fe9e64b86c58fd8fc764308c4a) |
| unnamed | unknown | unknown | unmatched | [0xd8ac7f...cdb4](https://zkevm.polygonscan.com/address/0xd8ac7f696ae99cd7b689726cf03c5711dd8dcdb4) |
| unnamed | unknown | unknown | unmatched | [0xe222fb...a480](https://zkevm.polygonscan.com/address/0xe222fbe074a436145b255442d919e4e3a6c6a480) |
| unnamed | unknown | unknown | unmatched | [0xf9c2b5...eab4](https://zkevm.polygonscan.com/address/0xf9c2b5746c946ef883ab2660bbbb1f10a5bdeab4) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AntiSnipAttackPositionManager | controller | controller | audited (TP) | [0xe222fb...a480](https://basescan.org/address/0xe222fbe074a436145b255442d919e4e3a6c6a480) |
| DSLOProtocol | core | core | unmatched | [0xcab2fa...4f6c](https://basescan.org/address/0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x2f577a...655d](https://basescan.org/address/0x2f577a41bec1be1152aeea12e73b7391d15f655d) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0x58f1d0...3f3e](https://basescan.org/address/0x58f1d0f9bff9d695010c92fb93d100cef5113f3e) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0xd8ac7f...cdb4](https://basescan.org/address/0xd8ac7f696ae99cd7b689726cf03c5711dd8dcdb4) |
| Factory | factory | factory | unmatched | [0xc7a590...8c4a](https://basescan.org/address/0xc7a590291e07b9fe9e64b86c58fd8fc764308c4a) |
| KSDistributor | rewards | rewards | unmatched | [0xeae300...6f9c](https://basescan.org/address/0xeae300ac9409b2072697ca1d5fd137f8bb286f9c) |
| KSRemoveLiquidityPancakeV4CLHook | adapter | adapter | audited (TP) | [0xf67476...0eec](https://basescan.org/address/0xf67476e5d3fa43e0470f8f1d3c43bf202dc50eec) |
| KSRemoveLiquidityUniswapV3Hook | router | router | audited (TP) | [0x72473d...1851](https://basescan.org/address/0x72473de0b52d079ca21709ea67085757c3bb1851) |
| KSRemoveLiquidityUniswapV4Hook | router | router | audited (TP) | [0x635dff...7841](https://basescan.org/address/0x635dffee858a9f941d058401b393fcfab41d7841) |
| KSSmartIntentRouter | router | router | audited (TP) | [0xaee04d...9974](https://basescan.org/address/0xaee04d31696d14bce773db6d1acec3398ee09974) |
| KSZapRouter | router | router | likely in scope | [0x30c532...b79e](https://basescan.org/address/0x30c5322e4e08ad500c348007f92f120ab4e2b79e) |
| KSZapRouterPosition | router | router | likely in scope | [0x0e97c8...9e05](https://basescan.org/address/0x0e97c887b61ccd952a53578b04763e7134429e05) |
| KSZapRouterPositionPermit | router | router | likely in scope | [0x638d93...cabb](https://basescan.org/address/0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb) |
| KSZapValidator | core | core | unmatched | [0xf0096e...1172](https://basescan.org/address/0xf0096e5b4aafeea1df557264091569ba125c1172) |
| KSZapValidatorV2Part1 | core | core | unmatched | [0xa16f32...863e](https://basescan.org/address/0xa16f32442209c6b978431818aa535bcc9ad2863e) |
| MetaAggregationRouterV2 | router | router | likely in scope | [0x6131b5...37b5](https://basescan.org/address/0x6131b5fae19ea4f9d964eac0408e4408b66337b5) |
| MultiSigWalletWithDailyLimit | governance | governance | unmatched | [0x247503...3546](https://basescan.org/address/0x2475039bf2ecdce2ee4c82954e64be9674f43546) |
| OptimismMintableERC20 | token | token | unmatched | [0x28fe69...57b1](https://basescan.org/address/0x28fe69ff6864c1c218878bdca01482d36b9d57b1) |
| PoolOracle | vault_pool | vault_pool | audited (TP) | [0x049bef...7b09](https://basescan.org/address/0x049beffdb026d6d1d64cfc8fe29bd12142967b09) |
| QuoterV2 | core | core | audited (TP) | [0x4d47fd...7856](https://basescan.org/address/0x4d47fd5a29904dae0ef51b1c450c9750f15d7856) |
| Router | router | router | likely in scope | [0xf9c2b5...eab4](https://basescan.org/address/0xf9c2b5746c946ef883ab2660bbbb1f10a5bdeab4) |
| TicksFeesReader | peripheral | peripheral | audited (TP) | [0x8fd8cb...dbb3](https://basescan.org/address/0x8fd8cb948965d9305999d767a02bf79833eadbb3) |
| TokenPositionDescriptor | token | token | audited (TP) | [0x98565f...0bd6](https://basescan.org/address/0x98565fcad2080c5c19c3136fa367ce371cd40bd6) |
| UniswapV4KEMHook | router | router | likely in scope | [0x444085...c0c4](https://basescan.org/address/0x4440854b2d02c57a0dc5c58b7a884562d875c0c4) |
| WethUnwrapper | core | core | unmatched | [0x37334c...5b94](https://basescan.org/address/0x37334cd06dfecd2e9b3937a6da17853d637a5b94) |
| WhitelistedCollector | treasury | treasury | unmatched | [0x9ed9af...f6b9](https://basescan.org/address/0x9ed9afb6b4cafbdfb2d833b0e70845997300f6b9) |
| unnamed | unknown | unknown | unmatched | [0x7207ee...b8c9](https://basescan.org/address/0x7207ee41f5d128adbe85f6abe63ce3887f67b8c9) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AggregationRouter | router | router | likely in scope | [0x005555...fa6e](https://arbiscan.io/address/0x00555513acf282b42882420e5e5ba87b44d8fa6e) |
| AggregationRouter | router | router | likely in scope | [0xdf1a1b...ec25](https://arbiscan.io/address/0xdf1a1b60f2d438842916c0adc43748768353ec25) |
| AntiSnipAttackPositionManager | controller | controller | audited (TP) | [0x2b1c7b...c9a8](https://arbiscan.io/address/0x2b1c7b41f6a8f2b2bc45c3233a5d5fb3cd6dc9a8) |
| AntiSnipAttackPositionManager | controller | controller | audited (TP) | [0xe222fb...a480](https://arbiscan.io/address/0xe222fbe074a436145b255442d919e4e3a6c6a480) |
| AnyswapV5ERC20 | router | router | likely in scope | [0x451823...3263](https://arbiscan.io/address/0x4518231a8fdf6ac553b9bbd51bbb86825b583263) |
| AnyswapV5ERC20 | router | router | likely in scope | [0xfea7a6...6c2a](https://arbiscan.io/address/0xfea7a6a0b346362bf88a9e4a88416b77a57d6c2a) |
| AnyswapV6ERC20 | router | router | likely in scope | [0x316772...ff12](https://arbiscan.io/address/0x316772cfec9a3e976fde42c3ba21f5a13aaaff12) |
| BurnableMintableCappedERC20 | token | token | unmatched | [0xb448ec...81df](https://arbiscan.io/address/0xb448ec505c924944ca8b2c55ef05c299ee0781df) |
| ClonableBeaconProxy | proxy | proxy | unmatched | [0xe4dddf...01cb](https://arbiscan.io/address/0xe4dddfe67e7164b0fe14e218d80dc4c08edc01cb) |
| DMMFactory | factory | factory | unmatched | [0xd9bfe9...6974](https://arbiscan.io/address/0xd9bfe9979e9ca4b2fe84ba5d4cf963bbcb376974) |
| DSLOProtocol | core | core | unmatched | [0xcab2fa...4f6c](https://arbiscan.io/address/0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c) |
| EditableERC20 | token | token | unmatched | [0x3f56e0...ea0d](https://arbiscan.io/address/0x3f56e0c36d275367b8c502090edf38289b3dea0d) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x2f577a...655d](https://arbiscan.io/address/0x2f577a41bec1be1152aeea12e73b7391d15f655d) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0x58f1d0...3f3e](https://arbiscan.io/address/0x58f1d0f9bff9d695010c92fb93d100cef5113f3e) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0x8abd8c...741e](https://arbiscan.io/address/0x8abd8c92f1901cf204590c16b5ef690a35b3741e) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0xd8ac7f...cdb4](https://arbiscan.io/address/0xd8ac7f696ae99cd7b689726cf03c5711dd8dcdb4) |
| Factory | factory | factory | unmatched | [0x5f1ddd...d50a](https://arbiscan.io/address/0x5f1dddbf348ac2fbe22a163e30f99f9ece3dd50a) |
| Factory | factory | factory | unmatched | [0xc7a590...8c4a](https://arbiscan.io/address/0xc7a590291e07b9fe9e64b86c58fd8fc764308c4a) |
| KSDistributor | rewards | rewards | unmatched | [0xeae300...6f9c](https://arbiscan.io/address/0xeae300ac9409b2072697ca1d5fd137f8bb286f9c) |
| KSElasticLMHelper | peripheral | peripheral | unmatched | [0x35be3f...0870](https://arbiscan.io/address/0x35be3f4fd8239a35a7f120756d4d69e5c5e10870) |
| KSElasticLMHelper | peripheral | peripheral | unmatched | [0x6afeb9...05c8](https://arbiscan.io/address/0x6afeb9edd6cf44fa8e89b1eee28284e6dd7705c8) |
| KSElasticLMV2 | core | core | unmatched | [0x3d6afe...7a43](https://arbiscan.io/address/0x3d6afe2fb73ffed2e3dd00c501a174554e147a43) |
| KSElasticLMV2 | core | core | unmatched | [0xa70a1a...0e0e](https://arbiscan.io/address/0xa70a1ad0f91c52c79e177c5a18a7c9e1c4360e0e) |
| KSElasticLMV2 | core | core | unmatched | [0xe44ec6...0e4b](https://arbiscan.io/address/0xe44ec65521b85612fa7bc45d842645fb4b690e4b) |
| KSElasticLMV2 | core | core | unmatched | [0xf2bcdf...6dbd](https://arbiscan.io/address/0xf2bcdf38baa52f6b0c1db5b025dfff01ae1d6dbd) |
| KSFactory | factory | factory | unmatched | [0x1c758a...9be5](https://arbiscan.io/address/0x1c758af0688502e49140230f6b0ebd376d429be5) |
| KSFactory | factory | factory | unmatched | [0x44729a...3f38](https://arbiscan.io/address/0x44729ad390e37e35a89126fc3e172d325e5d3f38) |
| KSFactory | factory | factory | unmatched | [0x51e8d1...1a62](https://arbiscan.io/address/0x51e8d106c646ca58caf32a47812e95887c071a62) |
| KSRouter02 | router | router | likely in scope | [0x815d02...5738](https://arbiscan.io/address/0x815d02c749b0606ed264633ce41a52ebe82a5738) |
| KSZapRouter | router | router | likely in scope | [0x30c532...b79e](https://arbiscan.io/address/0x30c5322e4e08ad500c348007f92f120ab4e2b79e) |
| KSZapRouterPosition | router | router | likely in scope | [0x0e97c8...9e05](https://arbiscan.io/address/0x0e97c887b61ccd952a53578b04763e7134429e05) |
| KSZapRouterPosition | router | router | likely in scope | [0xe70f23...eb21](https://arbiscan.io/address/0xe70f237ed0f57eac041a5d407b98bf287277eb21) |
| KSZapRouterPositionPermit | router | router | likely in scope | [0x638d93...cabb](https://arbiscan.io/address/0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb) |
| KSZapValidator | core | core | unmatched | [0x291436...a25b](https://arbiscan.io/address/0x291436c3d3fee056c95e5f3dcb55a694437da25b) |
| KSZapValidator | core | core | unmatched | [0xf0096e...1172](https://arbiscan.io/address/0xf0096e5b4aafeea1df557264091569ba125c1172) |
| KSZapValidatorV2Part1 | core | core | unmatched | [0xa16f32...863e](https://arbiscan.io/address/0xa16f32442209c6b978431818aa535bcc9ad2863e) |
| KyberSwapElasticLM | router | router | likely in scope | [0x7d5ba5...e676](https://arbiscan.io/address/0x7d5ba536ab244aaa1ea42ab88428847f25e3e676) |
| L2TokenGatewaySpell | token | token | unmatched | [0x3d4357...f49d](https://arbiscan.io/address/0x3d4357c3944f7a5b6a0b5b67b36588ba45d3f49d) |
| LimitOrderProtocol | core | core | unmatched | [0x227b0c...e936](https://arbiscan.io/address/0x227b0c196ea8db17a665ea6824d972a64202e936) |
| MetaAggregationRouter | router | router | likely in scope | [0x180555...77f2](https://arbiscan.io/address/0x180555d4d45e67520adc7c0c51b512c7a50877f2) |
| MetaAggregationRouter | router | router | likely in scope | [0x2b938f...35cf](https://arbiscan.io/address/0x2b938f00a8a32a1295983711f007ffae33d035cf) |
| MetaAggregationRouter | router | router | likely in scope | [0x617dee...111e](https://arbiscan.io/address/0x617dee16b86534a5d792a4d7a62fb491b544111e) |
| MetaAggregationRouter | router | router | likely in scope | [0xfc4af9...acff](https://arbiscan.io/address/0xfc4af9ba3a4c08309d1819f6603b2103b1b2acff) |
| MetaAggregationRouterV2 | router | router | likely in scope | [0x6131b5...37b5](https://arbiscan.io/address/0x6131b5fae19ea4f9d964eac0408e4408b66337b5) |
| Multicall2 | bridge | bridge | unmatched | [0xbf69a5...1e54](https://arbiscan.io/address/0xbf69a56d35b8d6f5a8e0e96b245a72f735751e54) |
| MultiSigWalletWithDailyLimit | governance | governance | unmatched | [0x1b0868...3357](https://arbiscan.io/address/0x1b0868fd8a174e979135812db866e5eaed4b3357) |
| MultiSigWalletWithDailyLimit | governance | governance | unmatched | [0x247503...3546](https://arbiscan.io/address/0x2475039bf2ecdce2ee4c82954e64be9674f43546) |
| MultiSigWalletWithDailyLimit | governance | governance | unmatched | [0x91c9d4...6f5b](https://arbiscan.io/address/0x91c9d4373b077ef8082f468c7c97f2c499e36f5b) |
| PoolOracle | vault_pool | vault_pool | audited (TP) | [0x049bef...7b09](https://arbiscan.io/address/0x049beffdb026d6d1d64cfc8fe29bd12142967b09) |
| QuoterV2 | core | core | audited (TP) | [0x0d125c...8c1f](https://arbiscan.io/address/0x0d125c15d54ca1f8a813c74a81aee34ebb508c1f) |
| QuoterV2 | core | core | audited (TP) | [0x4d47fd...7856](https://arbiscan.io/address/0x4d47fd5a29904dae0ef51b1c450c9750f15d7856) |
| RewardMasterChef | rewards | rewards | unmatched | [0x1e1085...7c3f](https://arbiscan.io/address/0x1e1085efaa63edfe74aad7c05a28eae4ef917c3f) |
| Router | router | router | likely in scope | [0xc1e7df...4c83](https://arbiscan.io/address/0xc1e7dfe73e1598e3910ef4c7845b68a9ab6f4c83) |
| Router | router | router | likely in scope | [0xf9c2b5...eab4](https://arbiscan.io/address/0xf9c2b5746c946ef883ab2660bbbb1f10a5bdeab4) |
| Skimmer | core | core | unmatched | [0x82f0b8...29c1](https://arbiscan.io/address/0x82f0b8b456c1a451378467398982d4834b6829c1) |
| StandardArbERC20 | token | token | unmatched | [0x3f770a...ad46](https://arbiscan.io/address/0x3f770ac673856f105b586bb393d122721265ad46) |
| TicksFeesReader | peripheral | peripheral | audited (TP) | [0x165c68...e75d](https://arbiscan.io/address/0x165c68077ac06c83800d19200e6e2b08d02de75d) |
| TicksFeesReader | peripheral | peripheral | audited (TP) | [0x8fd8cb...dbb3](https://arbiscan.io/address/0x8fd8cb948965d9305999d767a02bf79833eadbb3) |
| TicksFeesReader | peripheral | peripheral | audited (TP) | [0xd7ab16...88c9](https://arbiscan.io/address/0xd7ab1699280980e756c446769b4c0f04550f88c9) |
| TicksFeesReader | peripheral | peripheral | audited (TP) | [0xe3c78d...85a2](https://arbiscan.io/address/0xe3c78d1d79cf1b326f376eb54f208cd2711685a2) |
| TokenPositionDescriptor | token | token | audited (TP) | [0x98565f...0bd6](https://arbiscan.io/address/0x98565fcad2080c5c19c3136fa367ce371cd40bd6) |
| TokenPositionDescriptor | token | token | audited (TP) | [0xda4745...eb6a](https://arbiscan.io/address/0xda474537ce9b687b78b236452a05631f09b6eb6a) |
| UniswapV4KEMHook | router | router | likely in scope | [0x444085...c0c4](https://arbiscan.io/address/0x4440854b2d02c57a0dc5c58b7a884562d875c0c4) |
| WethUnwrapper | core | core | unmatched | [0x37334c...5b94](https://arbiscan.io/address/0x37334cd06dfecd2e9b3937a6da17853d637a5b94) |
| WhitelistedCollector | treasury | treasury | unmatched | [0x9ed9af...f6b9](https://arbiscan.io/address/0x9ed9afb6b4cafbdfb2d833b0e70845997300f6b9) |
| unnamed | unknown | unknown | unmatched | [0x040940...0604](https://arbiscan.io/address/0x040940632ee530f4d9ad3494988cb66958340604) |
| unnamed | unknown | unknown | unmatched | [0x2abe87...3e0d](https://arbiscan.io/address/0x2abe8750e4a65584d7452316356128c936273e0d) |
| unnamed | unknown | unknown | unmatched | [0x2f804f...802c](https://arbiscan.io/address/0x2f804fb5f14a35cca829bd19fb2f254be000802c) |
| unnamed | unknown | unknown | unmatched | [0x41684b...18c9](https://arbiscan.io/address/0x41684b361557e9282e0373ca51260d9331e518c9) |
| unnamed | unknown | unknown | unmatched | [0x4d7a13...c941](https://arbiscan.io/address/0x4d7a137a08413a6559419fd7a583473e1684c941) |
| unnamed | unknown | unknown | unmatched | [0x5649b4...23d0](https://arbiscan.io/address/0x5649b4dd00780e99bab7abb4a3d581ea1aeb23d0) |
| unnamed | unknown | unknown | unmatched | [0x59a16e...6571](https://arbiscan.io/address/0x59a16ece7143459801c3b3f24dc8a0cdfb956571) |
| unnamed | unknown | unknown | unmatched | [0x675950...2c7b](https://arbiscan.io/address/0x6759500c7e6a1009a863cabe66d04e7fbabd2c7b) |
| unnamed | unknown | unknown | unmatched | [0x6b57a4...b72d](https://arbiscan.io/address/0x6b57a40427a8d2353eefb5e30eff5c5eb4c4b72d) |
| unnamed | unknown | unknown | unmatched | [0x83d490...1c31](https://arbiscan.io/address/0x83d4908c1b4f9ca423bee264163bc1d50f251c31) |
| unnamed | unknown | unknown | unmatched | [0x8579a4...643b](https://arbiscan.io/address/0x8579a4e2fe082bcc6465446102f8c15fb333643b) |
| unnamed | unknown | unknown | unmatched | [0xa6aba5...c3b8](https://arbiscan.io/address/0xa6aba54b0aee04c05951221b5d210622b64cc3b8) |
| unnamed | unknown | unknown | unmatched | [0xa9249f...85b4](https://arbiscan.io/address/0xa9249f4d7e84b206d010bc90211a11fda57785b4) |
| unnamed | unknown | unknown | unmatched | [0xb00c0f...5014](https://arbiscan.io/address/0xb00c0f4faa6cc4d0dfe28aec05a899ba443e5014) |
| unnamed | unknown | unknown | unmatched | [0xbdafd8...1535](https://arbiscan.io/address/0xbdafd88972a0be18825b14dc27cf4c6aaf411535) |
| unnamed | unknown | unknown | unmatched | [0xd12bcd...9e77](https://arbiscan.io/address/0xd12bcdfb9a39be79da3bdf02557efdcd5ca59e77) |
| unnamed | unknown | unknown | unmatched | [0xdc4382...d210](https://arbiscan.io/address/0xdc4382353a007fcefadf0609920c256173f7d210) |
| unnamed | unknown | unknown | unmatched | [0xe3ac3f...fce5](https://arbiscan.io/address/0xe3ac3fd66eb31caf4ee0831b262d837c479ffce5) |
| unnamed | unknown | unknown | unmatched | [0xeae47c...fd55](https://arbiscan.io/address/0xeae47c5d99f7b31165a7f0c5f7e0d6afa25cfd55) |
| unnamed | unknown | unknown | unmatched | [0xf530a0...b58a](https://arbiscan.io/address/0xf530a090ef6481cfb33f98c63532e7745abab58a) |
| unnamed | unknown | unknown | unmatched | [0xf93dea...c6c4](https://arbiscan.io/address/0xf93deab791b4d297b625abfb1165210a0adbc6c4) |

### avalanche (chain_id 43114)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AntiSnipAttackPositionManager | controller | controller | audited (TP) | [0xe222fb...a480](https://snowtrace.io/address/0xe222fbe074a436145b255442d919e4e3a6c6a480) |
| AnyswapV5ERC20 | router | router | likely in scope | [0x130966...c18d](https://snowtrace.io/address/0x130966628846bfd36ff31a822705796e8cb8c18d) |
| AnyswapV5ERC20 | router | router | likely in scope | [0x39fc9e...0f5f](https://snowtrace.io/address/0x39fc9e94caeacb435842fadedecb783589f50f5f) |
| BridgeToken | token | token | unmatched | [0xa7d707...c664](https://snowtrace.io/address/0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664) |
| BridgeToken | token | token | unmatched | [0xc71984...5118](https://snowtrace.io/address/0xc7198437980c041c805a1edcba50c1ce5db95118) |
| BridgeToken | token | token | unmatched | [0xd586e7...8d70](https://snowtrace.io/address/0xd586e7f844cea2f87f50152665bcbc2c279d8d70) |
| crosschainMai | bridge | bridge | unmatched | [0x5c49b2...3f3b](https://snowtrace.io/address/0x5c49b268c9841aff1cc3b0a418ff5c3442ee3f3b) |
| DMMFactory | factory | factory | unmatched | [0x10908c...95c9](https://snowtrace.io/address/0x10908c875d865c66f271f5d3949848971c9595c9) |
| DMMRouter02 | router | router | likely in scope | [0x8efa5a...a5f8](https://snowtrace.io/address/0x8efa5a9ad6d594cf76830267077b78ce0bc5a5f8) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0x58f1d0...3f3e](https://snowtrace.io/address/0x58f1d0f9bff9d695010c92fb93d100cef5113f3e) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0xd8ac7f...cdb4](https://snowtrace.io/address/0xd8ac7f696ae99cd7b689726cf03c5711dd8dcdb4) |
| Factory | factory | factory | unmatched | [0xc7a590...8c4a](https://snowtrace.io/address/0xc7a590291e07b9fe9e64b86c58fd8fc764308c4a) |
| FiatTokenV2_2 | token | token | unmatched | [0x30dfe0...ffe6](https://snowtrace.io/address/0x30dfe0469803bce76f8f62ac24b18d33d3d6ffe6) |
| KSElasticLMHelper | peripheral | peripheral | unmatched | [0x35be3f...0870](https://snowtrace.io/address/0x35be3f4fd8239a35a7f120756d4d69e5c5e10870) |
| KSElasticLMHelper | peripheral | peripheral | unmatched | [0x6afeb9...05c8](https://snowtrace.io/address/0x6afeb9edd6cf44fa8e89b1eee28284e6dd7705c8) |
| KSElasticLMV2 | core | core | unmatched | [0x3d6afe...7a43](https://snowtrace.io/address/0x3d6afe2fb73ffed2e3dd00c501a174554e147a43) |
| KSElasticLMV2 | core | core | unmatched | [0xa70a1a...0e0e](https://snowtrace.io/address/0xa70a1ad0f91c52c79e177c5a18a7c9e1c4360e0e) |
| KSElasticLMV2 | core | core | unmatched | [0xf2bcdf...6dbd](https://snowtrace.io/address/0xf2bcdf38baa52f6b0c1db5b025dfff01ae1d6dbd) |
| KSFactory | factory | factory | unmatched | [0x1c758a...9be5](https://snowtrace.io/address/0x1c758af0688502e49140230f6b0ebd376d429be5) |
| KSZapRouter | router | router | likely in scope | [0x30c532...b79e](https://snowtrace.io/address/0x30c5322e4e08ad500c348007f92f120ab4e2b79e) |
| KSZapValidator | core | core | unmatched | [0xf0096e...1172](https://snowtrace.io/address/0xf0096e5b4aafeea1df557264091569ba125c1172) |
| KyberSwapElasticLM | router | router | likely in scope | [0x7d5ba5...e676](https://snowtrace.io/address/0x7d5ba536ab244aaa1ea42ab88428847f25e3e676) |
| MultiSigWalletWithDailyLimit | governance | governance | unmatched | [0x247503...3546](https://snowtrace.io/address/0x2475039bf2ecdce2ee4c82954e64be9674f43546) |
| MultiSigWalletWithDailyLimit | governance | governance | unmatched | [0x91c9d4...6f5b](https://snowtrace.io/address/0x91c9d4373b077ef8082f468c7c97f2c499e36f5b) |
| PoolOracle | vault_pool | vault_pool | audited (TP) | [0x049bef...7b09](https://snowtrace.io/address/0x049beffdb026d6d1d64cfc8fe29bd12142967b09) |
| QuoterV2 | core | core | audited (TP) | [0x4d47fd...7856](https://snowtrace.io/address/0x4d47fd5a29904dae0ef51b1c450c9750f15d7856) |
| Router | router | router | likely in scope | [0xf9c2b5...eab4](https://snowtrace.io/address/0xf9c2b5746c946ef883ab2660bbbb1f10a5bdeab4) |
| TetherToken | token | token | unmatched | [0xba2a99...75a6](https://snowtrace.io/address/0xba2a995bd4ab9e605454ccef88169352cd5f75a6) |
| TicksFeesReader | peripheral | peripheral | audited (TP) | [0x8fd8cb...dbb3](https://snowtrace.io/address/0x8fd8cb948965d9305999d767a02bf79833eadbb3) |
| TokenPositionDescriptor | token | token | audited (TP) | [0x98565f...0bd6](https://snowtrace.io/address/0x98565fcad2080c5c19c3136fa367ce371cd40bd6) |
| YUSDToken | token | token | unmatched | [0x111111...d325](https://snowtrace.io/address/0x111111111111ed1d73f860f57b2798b683f2d325) |
| unnamed | unknown | unknown | unmatched | [0x2abe87...3e0d](https://snowtrace.io/address/0x2abe8750e4a65584d7452316356128c936273e0d) |
| unnamed | unknown | unknown | unmatched | [0x5649b4...23d0](https://snowtrace.io/address/0x5649b4dd00780e99bab7abb4a3d581ea1aeb23d0) |
| unnamed | unknown | unknown | unmatched | [0x83d490...1c31](https://snowtrace.io/address/0x83d4908c1b4f9ca423bee264163bc1d50f251c31) |
| unnamed | unknown | unknown | unmatched | [0x878dfe...934c](https://snowtrace.io/address/0x878dfe971d44e9122048308301f540910bbd934c) |
| unnamed | unknown | unknown | unmatched | [0xf2fd82...0f61](https://snowtrace.io/address/0xf2fd8219609e28c61a998cc534681f95d2740f61) |

### linea (chain_id 59144)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BeaconProxy | proxy | proxy | unmatched | [0x3b2f62...b1d6](https://lineascan.build/address/0x3b2f62d42db19b30588648bf1c184865d4c3b1d6) |
| BurnableMintableCappedERC20 | token | token | unmatched | [0xb448ec...81df](https://lineascan.build/address/0xb448ec505c924944ca8b2c55ef05c299ee0781df) |
| DSLOProtocol | core | core | unmatched | [0xcab2fa...4f6c](https://lineascan.build/address/0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c) |
| KSElasticLMHelper | peripheral | peripheral | unmatched | [0x6afeb9...05c8](https://lineascan.build/address/0x6afeb9edd6cf44fa8e89b1eee28284e6dd7705c8) |
| KSFactory | factory | factory | unmatched | [0x1c758a...9be5](https://lineascan.build/address/0x1c758af0688502e49140230f6b0ebd376d429be5) |
| KSZapRouterPosition | router | router | likely in scope | [0x0e97c8...9e05](https://lineascan.build/address/0x0e97c887b61ccd952a53578b04763e7134429e05) |
| KSZapValidatorV2Part1 | core | core | unmatched | [0xa16f32...863e](https://lineascan.build/address/0xa16f32442209c6b978431818aa535bcc9ad2863e) |
| KyberSwapElasticLM | router | router | likely in scope | [0x7d5ba5...e676](https://lineascan.build/address/0x7d5ba536ab244aaa1ea42ab88428847f25e3e676) |
| MetaAggregationRouterV2 | router | router | likely in scope | [0x6131b5...37b5](https://lineascan.build/address/0x6131b5fae19ea4f9d964eac0408e4408b66337b5) |
| MultiSigWalletWithDailyLimit | governance | governance | unmatched | [0x247503...3546](https://lineascan.build/address/0x2475039bf2ecdce2ee4c82954e64be9674f43546) |
| WethUnwrapper | core | core | unmatched | [0x37334c...5b94](https://lineascan.build/address/0x37334cd06dfecd2e9b3937a6da17853d637a5b94) |
| unnamed | unknown | unknown | unmatched | [0x0553b1...e5e6](https://lineascan.build/address/0x0553b13c45d4db4ca070039da0d800276ae6e5e6) |
| unnamed | unknown | unknown | unmatched | [0x0d125c...8c1f](https://lineascan.build/address/0x0d125c15d54ca1f8a813c74a81aee34ebb508c1f) |
| unnamed | unknown | unknown | unmatched | [0x0f5525...e456](https://lineascan.build/address/0x0f552571e679c1698ec48b13b0316bb87d9be456) |
| unnamed | unknown | unknown | unmatched | [0x138948...8ba8](https://lineascan.build/address/0x1389484b1e49f6c3033f41c9b376a23d5daa8ba8) |
| unnamed | unknown | unknown | unmatched | [0x19b689...62a1](https://lineascan.build/address/0x19b68902a83861b0561463831a37a8e2b15562a1) |
| unnamed | unknown | unknown | unmatched | [0x2ab0ee...78cc](https://lineascan.build/address/0x2ab0ee99025203fefc8c3b3dc78b6709b8b678cc) |
| unnamed | unknown | unknown | unmatched | [0x2abe87...3e0d](https://lineascan.build/address/0x2abe8750e4a65584d7452316356128c936273e0d) |
| unnamed | unknown | unknown | unmatched | [0x2b1c7b...c9a8](https://lineascan.build/address/0x2b1c7b41f6a8f2b2bc45c3233a5d5fb3cd6dc9a8) |
| unnamed | unknown | unknown | unmatched | [0x2f577a...655d](https://lineascan.build/address/0x2f577a41bec1be1152aeea12e73b7391d15f655d) |
| unnamed | unknown | unknown | unmatched | [0x302e2f...2d13](https://lineascan.build/address/0x302e2f14d95e44ae0baf02c1013caee92f852d13) |
| unnamed | unknown | unknown | unmatched | [0x304719...d811](https://lineascan.build/address/0x30471962a12fc68662e1b5aa5f9cb5378a55d811) |
| unnamed | unknown | unknown | unmatched | [0x30ba0a...2552](https://lineascan.build/address/0x30ba0a8cae9f35d184c27b85afc2ab237aaf2552) |
| unnamed | unknown | unknown | unmatched | [0x3671e4...2f50](https://lineascan.build/address/0x3671e4768c6d589ce0b8c3a90376c23d2a562f50) |
| unnamed | unknown | unknown | unmatched | [0x36efec...93bf](https://lineascan.build/address/0x36efec4b53d8e26823a9ba3938c4293108bb93bf) |
| unnamed | unknown | unknown | unmatched | [0x38cb5f...9282](https://lineascan.build/address/0x38cb5f51fd1e092ca9e81d4ee8f09b4794b19282) |
| unnamed | unknown | unknown | unmatched | [0x3c4176...c2c7](https://lineascan.build/address/0x3c4176f37f4c285dd18e769605935f39a0d0c2c7) |
| unnamed | unknown | unknown | unmatched | [0x44729a...3f38](https://lineascan.build/address/0x44729ad390e37e35a89126fc3e172d325e5d3f38) |
| unnamed | unknown | unknown | unmatched | [0x4e63f7...4be4](https://lineascan.build/address/0x4e63f7d4cc5982a36d16e667f3a50d7c39994be4) |
| unnamed | unknown | unknown | unmatched | [0x5370d7...7224](https://lineascan.build/address/0x5370d78091b00dc9d32f205a3d08449b85207224) |
| unnamed | unknown | unknown | unmatched | [0x5649b4...23d0](https://lineascan.build/address/0x5649b4dd00780e99bab7abb4a3d581ea1aeb23d0) |
| unnamed | unknown | unknown | unmatched | [0x5d7640...a7d6](https://lineascan.build/address/0x5d76400ee194b5d2f0cf4d6baca9a637288ca7d6) |
| unnamed | unknown | unknown | unmatched | [0x5f1ddd...d50a](https://lineascan.build/address/0x5f1dddbf348ac2fbe22a163e30f99f9ece3dd50a) |
| unnamed | unknown | unknown | unmatched | [0x65ae02...dddd](https://lineascan.build/address/0x65ae0290c82b61f75e661a1f6986b41687d9dddd) |
| unnamed | unknown | unknown | unmatched | [0x65bb37...6b71](https://lineascan.build/address/0x65bb3767742a320783d049d57ce804b881726b71) |
| unnamed | unknown | unknown | unmatched | [0x6c8c0b...20a8](https://lineascan.build/address/0x6c8c0bacfd2aefc335124945588a171d24c420a8) |
| unnamed | unknown | unknown | unmatched | [0x700837...b4aa](https://lineascan.build/address/0x70083789f5b905b0c708f82b781124ae9648b4aa) |
| unnamed | unknown | unknown | unmatched | [0x789157...aa25](https://lineascan.build/address/0x7891576cf2dd67f242912883e06b2b852936aa25) |
| unnamed | unknown | unknown | unmatched | [0x7bae6b...6ac5](https://lineascan.build/address/0x7bae6bef8de5eb8af3cbf2c8f926039e0dae6ac5) |
| unnamed | unknown | unknown | unmatched | [0x7fc52e...cbfb](https://lineascan.build/address/0x7fc52e3433b0d97894737ccee4bf49765e21cbfb) |
| unnamed | unknown | unknown | unmatched | [0x815d02...5738](https://lineascan.build/address/0x815d02c749b0606ed264633ce41a52ebe82a5738) |
| unnamed | unknown | unknown | unmatched | [0x824a7b...6d26](https://lineascan.build/address/0x824a7b54881dbd336030a50861a9780ee98b6d26) |
| unnamed | unknown | unknown | unmatched | [0x854aa3...4763](https://lineascan.build/address/0x854aa3c26835546b883dfbd1aec9ab8b1d4b4763) |
| unnamed | unknown | unknown | unmatched | [0x89958f...b903](https://lineascan.build/address/0x89958f21706473b292fb09a26b5d195a9f90b903) |
| unnamed | unknown | unknown | unmatched | [0x8abd8c...741e](https://lineascan.build/address/0x8abd8c92f1901cf204590c16b5ef690a35b3741e) |
| unnamed | unknown | unknown | unmatched | [0x8ddd4f...189b](https://lineascan.build/address/0x8ddd4ffffc25245e922532cbd1f426e18e3e189b) |
| unnamed | unknown | unknown | unmatched | [0x9a8d5f...806c](https://lineascan.build/address/0x9a8d5f02b6cc5ff28dc2164092f79cb8f832806c) |
| unnamed | unknown | unknown | unmatched | [0x9cff65...5b0b](https://lineascan.build/address/0x9cff657d0a679bd17e072ff084c2bc9304ae5b0b) |
| unnamed | unknown | unknown | unmatched | [0xa39fe1...96d1](https://lineascan.build/address/0xa39fe18e4fa0270eefcdc0b3b5b84e0b07d996d1) |
| unnamed | unknown | unknown | unmatched | [0xa75aca...9026](https://lineascan.build/address/0xa75aca121c158be27627d0662feaefb27b539026) |
| unnamed | unknown | unknown | unmatched | [0xaf8c2b...493e](https://lineascan.build/address/0xaf8c2bb13944d233274ece85c1721722b168493e) |
| unnamed | unknown | unknown | unmatched | [0xafff41...9a53](https://lineascan.build/address/0xafff41751147197b137e921c9f6eebd7beef9a53) |
| unnamed | unknown | unknown | unmatched | [0xb2a264...7b7a](https://lineascan.build/address/0xb2a2648dc6962016501eedbb47c32a50ab777b7a) |
| unnamed | unknown | unknown | unmatched | [0xb9802c...c88e](https://lineascan.build/address/0xb9802cf6d46daedc011deede41108312d1a8c88e) |
| unnamed | unknown | unknown | unmatched | [0xbad70c...7dde](https://lineascan.build/address/0xbad70cc3f904960ad544b87d1be6d3dbaa357dde) |
| unnamed | unknown | unknown | unmatched | [0xc1e7df...4c83](https://lineascan.build/address/0xc1e7dfe73e1598e3910ef4c7845b68a9ab6f4c83) |
| unnamed | unknown | unknown | unmatched | [0xc2b464...9690](https://lineascan.build/address/0xc2b4642723ed4d1ffb44d0d18b19fdfcbf909690) |
| unnamed | unknown | unknown | unmatched | [0xc4d8b4...204c](https://lineascan.build/address/0xc4d8b462efe9fb864572d7522d23819e65b3204c) |
| unnamed | unknown | unknown | unmatched | [0xcaa531...2b6d](https://lineascan.build/address/0xcaa53174e2452f87548e1e8228136ffd4d812b6d) |
| unnamed | unknown | unknown | unmatched | [0xd7ab16...88c9](https://lineascan.build/address/0xd7ab1699280980e756c446769b4c0f04550f88c9) |
| unnamed | unknown | unknown | unmatched | [0xda4745...eb6a](https://lineascan.build/address/0xda474537ce9b687b78b236452a05631f09b6eb6a) |
| unnamed | unknown | unknown | unmatched | [0xdaa210...4458](https://lineascan.build/address/0xdaa210258d04a841b3d54eb29f31bac83e0d4458) |
| unnamed | unknown | unknown | unmatched | [0xdd37e8...4e76](https://lineascan.build/address/0xdd37e84326214cf6207dcba403d63d572b724e76) |
| unnamed | unknown | unknown | unmatched | [0xe0d72a...7253](https://lineascan.build/address/0xe0d72aaa82d2068003633f85ab0b72a0a7697253) |
| unnamed | unknown | unknown | unmatched | [0xe3ac3f...fce5](https://lineascan.build/address/0xe3ac3fd66eb31caf4ee0831b262d837c479ffce5) |
| unnamed | unknown | unknown | unmatched | [0xe4f443...a87f](https://lineascan.build/address/0xe4f44368bb717f2c0de9da72b7b88b8ffbeba87f) |
| unnamed | unknown | unknown | unmatched | [0xe9d256...8853](https://lineascan.build/address/0xe9d2569ffd2587f913213caaa8534744c29c8853) |
| unnamed | unknown | unknown | unmatched | [0xf13549...84fc](https://lineascan.build/address/0xf13549b96fe1b9d7159248945f95127914f784fc) |
| unnamed | unknown | unknown | unmatched | [0xf5cc44...dda5](https://lineascan.build/address/0xf5cc449dca953a6de02678c6756cf2e4103cdda5) |
| unnamed | unknown | unknown | unmatched | [0xf93dea...c6c4](https://lineascan.build/address/0xf93deab791b4d297b625abfb1165210a0adbc6c4) |

### scroll (chain_id 534352)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| KSElasticLMHelper | peripheral | peripheral | unmatched | [0x6afeb9...05c8](https://scrollscan.com/address/0x6afeb9edd6cf44fa8e89b1eee28284e6dd7705c8) |
| KSElasticLMV2 | core | core | unmatched | [0x3d6afe...7a43](https://scrollscan.com/address/0x3d6afe2fb73ffed2e3dd00c501a174554e147a43) |
| KSZapRouter | router | router | likely in scope | [0x30c532...b79e](https://scrollscan.com/address/0x30c5322e4e08ad500c348007f92f120ab4e2b79e) |
| KSZapValidator | core | core | unmatched | [0xf0096e...1172](https://scrollscan.com/address/0xf0096e5b4aafeea1df557264091569ba125c1172) |
| KyberSwapElasticLM | router | router | likely in scope | [0x7d5ba5...e676](https://scrollscan.com/address/0x7d5ba536ab244aaa1ea42ab88428847f25e3e676) |
| MultiSigWalletWithDailyLimit | governance | governance | unmatched | [0x247503...3546](https://scrollscan.com/address/0x2475039bf2ecdce2ee4c82954e64be9674f43546) |
| ScrollStandardERC20 | token | token | unmatched | [0x608ef9...9c84](https://scrollscan.com/address/0x608ef9a3bffe206b86c3108218003b3cfbf99c84) |
| unnamed | unknown | unknown | unmatched | [0x214061...fa6b](https://scrollscan.com/address/0x214061f0e250a27a49f609d9caf2987a7bc8fa6b) |
| unnamed | unknown | unknown | unmatched | [0x4e8419...f20a](https://scrollscan.com/address/0x4e8419efa0b0a149dad77b689d37af17f762f20a) |
| unnamed | unknown | unknown | unmatched | [0x4f097f...5cf0](https://scrollscan.com/address/0x4f097f7074d52952006a0763312724929ff95cf0) |
| unnamed | unknown | unknown | unmatched | [0x8ac789...19d1](https://scrollscan.com/address/0x8ac7895130e3be8654fff544ae20bf2a93ef19d1) |
| unnamed | unknown | unknown | unmatched | [0xbdb3e3...226f](https://scrollscan.com/address/0xbdb3e3f295fc31e89bd31a25d7d6a0de247a226f) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

493 factory templates detected. 0 are docs-listed; 493 are RPC-enumerated but not docs-listed.

### KSFactory - bsc

- **Template address:** [0x1c758a...9be5](https://bscscan.com/address/0x1c758af0688502e49140230f6b0ebd376d429be5)
- **Confidence:** untethered
- **Instance count:** 61
- **Sample instances:** [0x010897...eda4](https://bscscan.com/address/0x0108976584aae0e1099c52868f2f7d810899eda4), [0x023333...f4c8](https://bscscan.com/address/0x023333a48d103d387459a10c3f9acc996750f4c8), [0x023c27...a02e](https://bscscan.com/address/0x023c2773aa71b4b1ca7d30dd11748fe32a4fa02e), [0x061be7...b690](https://bscscan.com/address/0x061be7b24fd7b7913014d7c2f78373a01a0eb690), [0x0e4be9...5ab3](https://bscscan.com/address/0x0e4be974a05f2cb0add1c7c3f9f425438e905ab3)
- **Template audit coverage:** unmatched_pre_audit

### DMMFactory - bsc

- **Template address:** [0x878dfe...934c](https://bscscan.com/address/0x878dfe971d44e9122048308301f540910bbd934c)
- **Confidence:** untethered
- **Instance count:** 133
- **Sample instances:** [0x0071dc...17a3](https://bscscan.com/address/0x0071dc7b0849e4181022717b4311f7a9c54617a3), [0x00fe5f...c93d](https://bscscan.com/address/0x00fe5f91ffd214881288eb996f432d471530c93d), [0x0d26ac...b264](https://bscscan.com/address/0x0d26acd6d6b393bc565cb1499dbf3bdc985eb264), [0x0d8246...0976](https://bscscan.com/address/0x0d8246764552267d0c65edc1cb96120ec43e0976), [0x0dfc64...cc8e](https://bscscan.com/address/0x0dfc649f0d5d052cb0fdacb57ef5afdecf51cc8e)
- **Template audit coverage:** unmatched_pre_audit

### Untethered factory - polygon

- **Template address:** [0x00080b...4cce](https://polygonscan.com/address/0x00080b277bac6c64179686d5b460f08eda8e4cce)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xa81b27...dfb1](https://polygonscan.com/address/0xa81b27863062c16288055be1098c7358ecdcdfb1)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x010e5a...0727](https://polygonscan.com/address/0x010e5a1e69378e8fee6c040f587c94423add0727)
- **Confidence:** untethered
- **Instance count:** 4
- **Sample instances:** [0x0e5679...f711](https://polygonscan.com/address/0x0e5679b96a82c681d3223ab5a9f788dcedb9f711), [0x24691e...46e6](https://polygonscan.com/address/0x24691e46a1af9d8bb39bd3e7a8e5a5c0aa7e46e6), [0x781f36...79ec](https://polygonscan.com/address/0x781f36f4706cbebae5cdf9d8a500efa3cda279ec), [0xb6fc8a...8824](https://polygonscan.com/address/0xb6fc8acbbc89e6f9fab9bdab7563cbcdf94e8824)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x0193a8...7d68](https://polygonscan.com/address/0x0193a8a52d77e27bdd4f12e0cdd52d8ff1d97d68)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x05f2f6...8baf](https://polygonscan.com/address/0x05f2f6bf6a7242f045cb7a66f6bf3bb8b5c48baf), [0x311160...d2ef](https://polygonscan.com/address/0x3111605eaea3b998714fa592cb47bd5bbd4cd2ef), [0xd35b51...d9fe](https://polygonscan.com/address/0xd35b51b9f0774c9840f18cadd93f61968333d9fe)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x02bf32...9e76](https://polygonscan.com/address/0x02bf3258d6024b2b34fd7d21f225db6cda939e76)
- **Confidence:** untethered
- **Instance count:** 5
- **Sample instances:** [0x0063bf...fa9c](https://polygonscan.com/address/0x0063bfa9bbb4e84292c4fe54d6948954564afa9c), [0x30822e...c4f0](https://polygonscan.com/address/0x30822edc5732a39ef2c0f95f0dbb6387bb90c4f0), [0xb03d57...70a2](https://polygonscan.com/address/0xb03d578c1ac94c6010f159b29f29bbe204bc70a2), [0xe7ccaa...1fe3](https://polygonscan.com/address/0xe7ccaa57aaf962e1da1251bf21eff9a57d261fe3), [0xf3dddf...f154](https://polygonscan.com/address/0xf3dddf06bf12ea8931e84e39678e713eab95f154)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x03c64c...a894](https://polygonscan.com/address/0x03c64ce2ded99891490954c774ce66f014ada894)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x0373b3...6827](https://polygonscan.com/address/0x0373b34ea514b36f15a1ba75701fcb52ef976827), [0xe98dd9...c196](https://polygonscan.com/address/0xe98dd90b2e7aa71f14d8621fe6dc486a3bd2c196)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x043606...aef4](https://polygonscan.com/address/0x0436061c2d62a821141861f7fe77d0e3350eaef4)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x48303c...54cf](https://polygonscan.com/address/0x48303c1dad2c65f39a87b4d9dc68f6957f9754cf)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x048a9e...eadb](https://polygonscan.com/address/0x048a9e6d589cd7e1488f3d83e1bb642b472aeadb)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x27d6f8...0bcc](https://polygonscan.com/address/0x27d6f8457da3489a2f5a1f82d0606443c8180bcc), [0xc62407...5194](https://polygonscan.com/address/0xc6240794a7bd219ceb09f8a6a509831d844a5194)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x04f004...71ff](https://polygonscan.com/address/0x04f004eb2431e8f79fe0c671c807ecb2f5cc71ff)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x9c0e20...b6ee](https://polygonscan.com/address/0x9c0e20f214a4164ad5738537edbab1800875b6ee)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x0575d5...11fd](https://polygonscan.com/address/0x0575d52465bf30e9c0bfc3fd7256e4743a2f11fd)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x3386d2...f74c](https://polygonscan.com/address/0x3386d2db37c02871e51b6dc84da65d2b46d8f74c)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x05b0f4...a2e9](https://polygonscan.com/address/0x05b0f43ef25c2821c519b3bb8a6db5bbc59ba2e9)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x1587fb...443b](https://polygonscan.com/address/0x1587fbfaee984e16512374d867ef42aaf03c443b)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x06a979...1c9d](https://polygonscan.com/address/0x06a97926326e4407d982b3bdc1c3017dc3391c9d)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x10493e...e676](https://polygonscan.com/address/0x10493edcfa693c9c034055ad5c90cc0377d9e676), [0xd68e38...b203](https://polygonscan.com/address/0xd68e389884a54c81b7a5bd718573093425d5b203)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x0709cc...ea00](https://polygonscan.com/address/0x0709cc735691a4c8f51cffbf3b6ff8e14321ea00)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x105a37...9f71](https://polygonscan.com/address/0x105a3761f4f8061b76138623c32e1dad109a9f71), [0x3303ba...d900](https://polygonscan.com/address/0x3303ba1a00b3bf62c38683f54633e9ef2a3cd900), [0x46d89f...74a0](https://polygonscan.com/address/0x46d89fe1ee5fbcc91f354b44460aa313b15174a0)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x072a13...2f12](https://polygonscan.com/address/0x072a1346a624a85d2bfb9ac40d06a0da235c2f12)
- **Confidence:** untethered
- **Instance count:** 10
- **Sample instances:** [0x20f369...364c](https://polygonscan.com/address/0x20f36928134a19aa14676211b9f1c33eddef364c), [0x213270...ba56](https://polygonscan.com/address/0x213270795ccf577700cb93d6e69fa52885a5ba56), [0x4b7670...e72c](https://polygonscan.com/address/0x4b767043edf3ccaaf3198d875d30129c78d2e72c), [0x552dc4...fd1e](https://polygonscan.com/address/0x552dc4c4b6aa036d3f850677c327e0076833fd1e), [0x672017...7b46](https://polygonscan.com/address/0x6720172dedb9bac66a66fa2e8f62de3e66077b46)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x08de7a...c967](https://polygonscan.com/address/0x08de7a056967a29fcf2beef9ef1b84b0ac9cc967)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x805aab...7a82](https://polygonscan.com/address/0x805aabdf4ee6c5503d87dcfbdf234493a4097a82), [0xba6181...34f1](https://polygonscan.com/address/0xba6181bc45071be46e3e0c625728c3985b1134f1), [0xd93a60...b38e](https://polygonscan.com/address/0xd93a608fed8df5a88f8d6058c2969f339b5eb38e)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x0c00cd...3673](https://polygonscan.com/address/0x0c00cdc676b95b15ce330c432f500c1174543673)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x15349c...1ccf](https://polygonscan.com/address/0x15349cf3cba7b7091b0566bae6494c7cd3611ccf), [0xf17be7...ddd8](https://polygonscan.com/address/0xf17be7d0f1e0e2eb930f13fffc3e0b0eedb9ddd8)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x0d8fbf...da81](https://polygonscan.com/address/0x0d8fbfce9018950e97ea5b10f4dce118f02fda81)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xf9e51b...fff7](https://polygonscan.com/address/0xf9e51bd82142144a8a9497f306ebc62ca191fff7)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x0dd2b3...9c17](https://polygonscan.com/address/0x0dd2b342934d61400b583a2d70a848c20dba9c17)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x22c002...c501](https://polygonscan.com/address/0x22c00229d74f0a309efe4af1e1b6c848ec28c501), [0xc5bac5...7a00](https://polygonscan.com/address/0xc5bac5f18b38f5a8dfadbdedb5a3318194a87a00)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x0f6100...24e2](https://polygonscan.com/address/0x0f610036546ee44ebe2eee0a37cee33ee05124e2)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x4044e8...2312](https://polygonscan.com/address/0x4044e80a477856d26d245f43e419f82791df2312)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x10f916...46bf](https://polygonscan.com/address/0x10f9167f86f21023adc3a8eccc1a6fe6332746bf)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x95dabd...df98](https://polygonscan.com/address/0x95dabd6821335806f142ef05d9a1da755f30df98)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x111558...f5b8](https://polygonscan.com/address/0x1115587cc09696d127ce582f72523c887358f5b8)
- **Confidence:** untethered
- **Instance count:** 4
- **Sample instances:** [0x197864...1bb1](https://polygonscan.com/address/0x19786480f998f02919b1d6060d6c9d203cb81bb1), [0x377e33...7327](https://polygonscan.com/address/0x377e33b08a85e270f070338ce0a23c5a55d37327), [0x55ff67...3368](https://polygonscan.com/address/0x55ff67c0eb37c257d5e2b994ceebc127ac7a3368), [0xc2752c...c910](https://polygonscan.com/address/0xc2752c779ab47620d87bf5c18e3c949ee394c910)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x126839...86cf](https://polygonscan.com/address/0x12683923614ad281df31fc169dc3b154efc886cf)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xac7534...8770](https://polygonscan.com/address/0xac7534feb9a73c409bd64f76b3467d9aa3428770)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x12e392...9786](https://polygonscan.com/address/0x12e3927e164f79cf6e480816bfd65a7ca4259786)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xf0fec8...b5ad](https://polygonscan.com/address/0xf0fec84b115f46b985b1b78c1402f2c6dd0cb5ad)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x12f980...00cb](https://polygonscan.com/address/0x12f98098e691a6bf2182f8c02f6031346de900cb)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x5f802b...06a9](https://polygonscan.com/address/0x5f802bf23ba6aed935113dc1388c686140cc06a9)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x136255...b147](https://polygonscan.com/address/0x13625511b9a776c02e94fe2062e8df97dd76b147)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x125150...cb2e](https://polygonscan.com/address/0x125150eeadb67ddc8b59eed3fc8e67db919ccb2e), [0x47d545...2dd0](https://polygonscan.com/address/0x47d545c911bbcde3f76a408ab037779a2cf92dd0)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x137e85...74dd](https://polygonscan.com/address/0x137e854354b8e969d639ec11fae88f649f9974dd)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xb91f29...c8a8](https://polygonscan.com/address/0xb91f29b52a0b21e2c4de5bad792edf7bbc74c8a8)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x141eba...674f](https://polygonscan.com/address/0x141ebacaae339e3bd9ab3db6fc093603a8b3674f)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xc2f83e...6984](https://polygonscan.com/address/0xc2f83e600ad5883619c9d4219559d1e2f6106984)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x14a094...9d53](https://polygonscan.com/address/0x14a0947b8fbebe53ad5ef8c5f80f14adbc559d53)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xd4f27f...0c84](https://polygonscan.com/address/0xd4f27f7303b0b0bd91642aacd5c21cb5301f0c84)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x169156...f376](https://polygonscan.com/address/0x1691565c9e5846b348bf21707521e492614df376)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xe1642f...e20e](https://polygonscan.com/address/0xe1642fd46638630daa47075fc75dd9ce2a83e20e)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x16bf4e...9996](https://polygonscan.com/address/0x16bf4ed3fcca47d1de23acefa83aebcfa6399996)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xe899ea...cba3](https://polygonscan.com/address/0xe899eaf3c4be79bc4e8e9cd6e7c10ab5b30dcba3)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x18becd...5bc2](https://polygonscan.com/address/0x18becd932022f1c875b097a0aa14b72a2dcb5bc2)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x8588f0...230e](https://polygonscan.com/address/0x8588f0f43415f523c153ab2fc097ed49098e230e)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x18c6a4...169b](https://polygonscan.com/address/0x18c6a47aca1c6a237e53ed2fc3a8fb392c97169b)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x127bb7...21e4](https://polygonscan.com/address/0x127bb7129f98eeeca9e20fb101c10ab5833121e4), [0x8ae403...9c79](https://polygonscan.com/address/0x8ae4030ac4195f7e2e817df7a42e67c061409c79)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x1967b3...3835](https://polygonscan.com/address/0x1967b31e3956a50cf81730fd8ee62f9af79b3835)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x9ca583...793b](https://polygonscan.com/address/0x9ca5837c621f163fca078caccd0d8c304889793b)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x19e2ae...caec](https://polygonscan.com/address/0x19e2ae6fd289b7188a4df436a901141d3fc3caec)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x470dbf...e04a](https://polygonscan.com/address/0x470dbfe1b809a381f28b9315f2d12fbc13c7e04a)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x1a20c7...0f28](https://polygonscan.com/address/0x1a20c799f554817c9664e4a9ec69906a61ce0f28)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x2ef006...2155](https://polygonscan.com/address/0x2ef00630fc2abfb4151eb60c41304a3dc41a2155)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x1aa47f...c0c9](https://polygonscan.com/address/0x1aa47f359405b8ec6c7a3f1be98186619feec0c9)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x3f1f39...fae6](https://polygonscan.com/address/0x3f1f398887525d2d9acd154ec5e4a3979adffae6), [0xa4653d...6e8c](https://polygonscan.com/address/0xa4653d9614057daa5b3ec04a7289337e56746e8c), [0xecf185...3a05](https://polygonscan.com/address/0xecf185d8114664e42dae0701eaff1a50a3613a05)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x1ad91a...9e1c](https://polygonscan.com/address/0x1ad91a28850a46220b37721bd91f9eecb7029e1c)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x293c1e...94ae](https://polygonscan.com/address/0x293c1e87b90089d3cc1864c62899a2ef012794ae)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x1b7bf8...0047](https://polygonscan.com/address/0x1b7bf8dc6088aa724134397a3f292f1eeb3f0047)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x32d822...bfc7](https://polygonscan.com/address/0x32d822d8a1cee6ff44baa05fae67414e115ebfc7)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x1bda0a...5153](https://polygonscan.com/address/0x1bda0a00d113eee140757aa5603c7cca15295153)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x2acd07...5267](https://polygonscan.com/address/0x2acd0708f54d9216297c39ecf48f7e4fbb2b5267)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x1c416e...d48a](https://polygonscan.com/address/0x1c416e065dcda0e72ec159f2fbf3638e50dad48a)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x34b627...22e1](https://polygonscan.com/address/0x34b6273c68dec9a817d9f04345176987166122e1), [0xb875e8...9d20](https://polygonscan.com/address/0xb875e828c934c0ca89ed7292f44b8e4344849d20), [0xc887b9...d8f6](https://polygonscan.com/address/0xc887b96bd1441a0c1320a849fdb7c0e6c954d8f6)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x1c977a...a5af](https://polygonscan.com/address/0x1c977ab127ba83c169c8fb12d29a1bbd6993a5af)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x3fae7a...4d20](https://polygonscan.com/address/0x3fae7af88a4a5df9aec7665679d0b642e1574d20), [0xac1d96...c7d0](https://polygonscan.com/address/0xac1d962a38e8c541eb6a0d1105fe2000d9d9c7d0)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x1d20fb...5806](https://polygonscan.com/address/0x1d20fb10c3fb6abeafee6da623cd6ee090875806)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xc1c520...97ca](https://polygonscan.com/address/0xc1c520c7435dc0556a5f84826a0fe19f816a97ca)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x1d77cb...8ee4](https://polygonscan.com/address/0x1d77cb163fb9a50970090ddc9e4d9bcd989f8ee4)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xf0a823...50f5](https://polygonscan.com/address/0xf0a823f2573ef8ea734a0eef143557ca0e3e50f5)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x1f452f...7d97](https://polygonscan.com/address/0x1f452f2beea8c1105cd5363b18a0995367a87d97)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x1296a1...94e7](https://polygonscan.com/address/0x1296a129d0453ec87d25e4de6deb618e645194e7)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x207dcf...3038](https://polygonscan.com/address/0x207dcfff0bf605e892d7b036617fff1a9b7a3038)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x195a8e...0129](https://polygonscan.com/address/0x195a8e4b250dd6f1bb249422fdfd8c4051180129)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x210005...3430](https://polygonscan.com/address/0x210005cbef14c25005e5e632402083fa7f3a3430)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x7ff4b4...70ca](https://polygonscan.com/address/0x7ff4b40ba0ab9d7e3bb1bdacd9c4122767cd70ca), [0xbb6608...1a7f](https://polygonscan.com/address/0xbb66082062e79e19bd3e973c80937b3dae8f1a7f)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x2175f9...f202](https://polygonscan.com/address/0x2175f92208bdd3d2bf467d2f2c259a3fd92ff202)
- **Confidence:** untethered
- **Instance count:** 5
- **Sample instances:** [0x1ea327...82da](https://polygonscan.com/address/0x1ea32794dd640c1e401263d0e3b66c8e6d8f82da), [0x757b33...a165](https://polygonscan.com/address/0x757b339166a1c87535f445b9fdfa0e74784ca165), [0x77558d...b57d](https://polygonscan.com/address/0x77558d11ca08865c7310fd30fb19629b1c54b57d), [0xe5d806...9598](https://polygonscan.com/address/0xe5d806c3aa660b2b1d7b1f3b266f903d6d629598), [0xf25672...67de](https://polygonscan.com/address/0xf25672d4a17a610ac9f9411dece8102587d767de)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x219617...3280](https://polygonscan.com/address/0x2196172c9fde8cfb8a35a16120e4f3c543773280)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x53eedd...c129](https://polygonscan.com/address/0x53eeddb0b58ca5b1b7bbbd787973216331c8c129)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x219f9b...ba9b](https://polygonscan.com/address/0x219f9b79ba0229f0863e04767d8910668695ba9b)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x4c2f07...7d81](https://polygonscan.com/address/0x4c2f07b2c991595eee40b7343b224f12f2b57d81)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x21c5a9...9a6d](https://polygonscan.com/address/0x21c5a95fc50640c74f571dee8ed5b3a38c659a6d)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xc2c0fd...260f](https://polygonscan.com/address/0xc2c0fd360c66db3f1e2e7888a3c6933ada6c260f)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x21cb85...6e24](https://polygonscan.com/address/0x21cb855ad6fac0b6551495643c8f49747a236e24)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x08a9c4...c05c](https://polygonscan.com/address/0x08a9c4d3613b058f7c548afcaca06d677ad7c05c), [0x1e0557...47df](https://polygonscan.com/address/0x1e05572ae7b7d72bc99292f8f2c7c38f946447df), [0x603f80...3c4a](https://polygonscan.com/address/0x603f80dc858f740bb46c2350943126621cd53c4a)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x22e607...f805](https://polygonscan.com/address/0x22e6075118e764e98f8f43e6a8105a57df83f805)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x330988...7250](https://polygonscan.com/address/0x3309885d06876b1d7f5c91391ff045306f9c7250), [0x342b77...51af](https://polygonscan.com/address/0x342b7721f03935467d034453f96681639b2351af), [0x79c441...4005](https://polygonscan.com/address/0x79c44190add4250b9fa8493b9fff2797582e4005)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x2322ac...a3e8](https://polygonscan.com/address/0x2322ac6e94110c5c902ac20cd6d64da07a41a3e8)
- **Confidence:** untethered
- **Instance count:** 9
- **Sample instances:** [0x2ce2fb...ff54](https://polygonscan.com/address/0x2ce2fb2f9a0820ac4fd7089abfde3df9946bff54), [0x4a7b62...54f2](https://polygonscan.com/address/0x4a7b62135dba4e7a1cb87995557b3035239554f2), [0x4c4a5b...68d8](https://polygonscan.com/address/0x4c4a5b008fdce03fb1c90942407acd997fb868d8), [0x54fab8...939f](https://polygonscan.com/address/0x54fab85a89faf097b9af870ba5f86824526e939f), [0x593f77...9fa3](https://polygonscan.com/address/0x593f77f3c26da9470ba3e9a4c153ebee25269fa3)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x23b46f...3509](https://polygonscan.com/address/0x23b46f91e4793153abdfdafeaf38af085c013509)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x854403...8273](https://polygonscan.com/address/0x8544036d14e871e8e5fa6bf720a373093e198273)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x2454ac...8bf2](https://polygonscan.com/address/0x2454ac2340953c311cda0eb19eeee35daeda8bf2)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x622292...940c](https://polygonscan.com/address/0x622292555a6c8eda91c6a07050697deda4de940c)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x2509c3...b159](https://polygonscan.com/address/0x2509c34555086fdf8417e85065beabb3b5a7b159)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xed764d...b283](https://polygonscan.com/address/0xed764df3da7870b9d7550bac2ed6ecb9a5e0b283)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x258de6...34d7](https://polygonscan.com/address/0x258de6d045aeb7b16e88ef41e0f9534229bc34d7)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x67c497...72f6](https://polygonscan.com/address/0x67c497d68618349ece9f6868056ad6cb23af72f6), [0x9fc3b5...3724](https://polygonscan.com/address/0x9fc3b5dc70f8be3b9e9cd4cc18a39d940cdd3724), [0xa45d06...bd28](https://polygonscan.com/address/0xa45d06a64f01e946f28cf15dae4869bd58eebd28)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x25cbde...455a](https://polygonscan.com/address/0x25cbdee188a0871c59494b89478980ebf4fc455a)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0xb91006...f88a](https://polygonscan.com/address/0xb910068b39412ab60aa0ec24636b1dc4bf61f88a), [0xc6057b...c056](https://polygonscan.com/address/0xc6057b30068d1d94cad765f7f80918a34e2fc056)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x25d29f...1300](https://polygonscan.com/address/0x25d29f46a4885130ddbc855726ca014784fe1300)
- **Confidence:** untethered
- **Instance count:** 12
- **Sample instances:** [0x0f98d7...c136](https://polygonscan.com/address/0x0f98d78d3d6d4c97f0300759362044e9b79dc136), [0x17676e...4e68](https://polygonscan.com/address/0x17676e555606912bac4ddd8fb86e908cd4014e68), [0x1e8333...e76c](https://polygonscan.com/address/0x1e8333f3d3da6ecf2cb5a15960a0340b2d29e76c), [0x25891e...d357](https://polygonscan.com/address/0x25891e8904e8850f6ff2f0a6a2fec35a4ba9d357), [0x3c6900...6cb3](https://polygonscan.com/address/0x3c6900834be0910dabb10eb4db812f567f136cb3)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x263a80...2df4](https://polygonscan.com/address/0x263a80ab0fa95d24537f634ccadb77441b0a2df4)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x1c6e5c...8346](https://polygonscan.com/address/0x1c6e5c5a805671f2e921cfdb49df896bf4028346)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x265b9d...6ad2](https://polygonscan.com/address/0x265b9d4bf26b08a24cbabc2fb01c3f3432dc6ad2)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xb22f7e...353b](https://polygonscan.com/address/0xb22f7e88700176443ef74ec5f53419b3bbd0353b)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x266978...cd85](https://polygonscan.com/address/0x266978f4527a2f80176a958447e1525913e3cd85)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x21e55b...6981](https://polygonscan.com/address/0x21e55b38f496a900252ea1a866b482cd37256981)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x27a3b0...d8cf](https://polygonscan.com/address/0x27a3b0d7b93b38e1380ca9e8a257ae9fd5e2d8cf)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xe56597...6a3d](https://polygonscan.com/address/0xe56597ae6c3483365cb35dc846789c36e10d6a3d)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x29010c...87d0](https://polygonscan.com/address/0x29010cb4f44d9d4bf960a31ce1cc7f344c7c87d0)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x7a263f...3321](https://polygonscan.com/address/0x7a263f3cc6d6668992d0e2310c9ae339363b3321), [0xd313dc...8452](https://polygonscan.com/address/0xd313dc0facede9d3a5631936b2823adea9728452)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x29825f...e63d](https://polygonscan.com/address/0x29825fb8a960c37c52e5464c8053494fe76ce63d)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xf8a7c3...e635](https://polygonscan.com/address/0xf8a7c3f6475fdf5a16aed3f0148ce0218d38e635)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x2a39fd...3571](https://polygonscan.com/address/0x2a39fd94e139952c3958e69172ba918d8f533571)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x79d6ee...5501](https://polygonscan.com/address/0x79d6ee36f9f6d7cda34e3bfa39b05e1fbc595501)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x2a724b...ee1d](https://polygonscan.com/address/0x2a724be1b63caec1c3ef95834fdd443c3347ee1d)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x1305b8...8bae](https://polygonscan.com/address/0x1305b877e526a2539fb2a10a0336a728ab948bae)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x2aab3d...0008](https://polygonscan.com/address/0x2aab3ddd93ededc4d4275bef3e4f4d2ca95e0008)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xd8dfd2...dab6](https://polygonscan.com/address/0xd8dfd289ed047ba37e87a80d617666545831dab6)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x2b4810...591e](https://polygonscan.com/address/0x2b481006712c551e5facc0d21d5ebe74bd3a591e)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x2ae291...af39](https://polygonscan.com/address/0x2ae291e85bbf014bca0f9962d138ef5e47e0af39)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x2beeac...70a7](https://polygonscan.com/address/0x2beeac52126392f972ac1be8ee0da1df7e7570a7)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xb33705...f5ea](https://polygonscan.com/address/0xb337055642388a6294cba64660567f244697f5ea)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x2bfc3a...43a7](https://polygonscan.com/address/0x2bfc3a4ef52fe6cd2c5236da08005c59eafb43a7)
- **Confidence:** untethered
- **Instance count:** 8
- **Sample instances:** [0x0bd7c3...93e1](https://polygonscan.com/address/0x0bd7c3bf4c0cbbbee1f7cdaaadac408a428893e1), [0x0cf400...cd24](https://polygonscan.com/address/0x0cf400916308048557e0165a06b48ce5c80fcd24), [0x11a32b...d92d](https://polygonscan.com/address/0x11a32b3eab6a90823f069d155b0fab16b4c8d92d), [0x1f0899...6acd](https://polygonscan.com/address/0x1f0899f8d41d2b236443a2bba851808eec476acd), [0x4baec5...4c32](https://polygonscan.com/address/0x4baec5f607d94c5a3aed6a2f7474993c09364c32)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x2c411c...c594](https://polygonscan.com/address/0x2c411c0334913f09cdf807a48736770d7c30c594)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x25226a...0e64](https://polygonscan.com/address/0x25226ad372c4ccda35072ef0b2a9eeb2fcf50e64)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x2d1993...7e9e](https://polygonscan.com/address/0x2d1993dadd3e52c44666ed095ff6ca8ba3317e9e)
- **Confidence:** untethered
- **Instance count:** 14
- **Sample instances:** [0x24fe73...d057](https://polygonscan.com/address/0x24fe7359cde6153ca6ba69a2ae508cb55d8bd057), [0x3e186d...5109](https://polygonscan.com/address/0x3e186df7aa2cf860361490b192058cfb33385109), [0x3fa7ab...c86e](https://polygonscan.com/address/0x3fa7ab8df2c98c065a9f0c5dcfb4a83f9395c86e), [0x479fba...602c](https://polygonscan.com/address/0x479fba09b926b26cefe08ab0f6271b1a80b4602c), [0x4abd67...cfa5](https://polygonscan.com/address/0x4abd67805393605dd63d328cadbbbcc15e6dcfa5)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x2d2170...6e6a](https://polygonscan.com/address/0x2d2170d22d67d3eb3096feb73b8100ba01d76e6a)
- **Confidence:** untethered
- **Instance count:** 4
- **Sample instances:** [0x64bfdf...eb75](https://polygonscan.com/address/0x64bfdf2287578806f11f9eca167b00c1adedeb75), [0x7652cb...9751](https://polygonscan.com/address/0x7652cb895db3dbe15c226207172ebd145a929751), [0xa30105...2e0b](https://polygonscan.com/address/0xa30105d42e0e00f05aa97ca1fbe92a9915232e0b), [0xbdac5f...9b40](https://polygonscan.com/address/0xbdac5f436ed0dd9fd494bd4ea155d74da6ab9b40)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x2d782b...d060](https://polygonscan.com/address/0x2d782b4e65db9f5545774801494b48047897d060)
- **Confidence:** untethered
- **Instance count:** 4
- **Sample instances:** [0x332e24...646d](https://polygonscan.com/address/0x332e248c367f95b31b966b39f8ac69ad5e9a646d), [0x87f9d8...bfb6](https://polygonscan.com/address/0x87f9d86a0df20a97f894dac3b2524a18f10dbfb6), [0xb7538d...f6f9](https://polygonscan.com/address/0xb7538d5b0d2b98bd259b88ae80d9f45c0dc1f6f9), [0xd3dc0b...6b0b](https://polygonscan.com/address/0xd3dc0b0fef5c1219dd5defb266d95cff84316b0b)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x2d8c65...c9f3](https://polygonscan.com/address/0x2d8c65ecfe5a2284784bd679e6e503955835c9f3)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0xae4e7b...dd0b](https://polygonscan.com/address/0xae4e7b829a1dc6d5894987ba53d10cf7a50bdd0b), [0xd85b8e...ba73](https://polygonscan.com/address/0xd85b8e6fb72633b7f4e995ae232373e60188ba73)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x2dbfe5...dffb](https://polygonscan.com/address/0x2dbfe54507f5dad4bb0ad2a9fbd87d60049edffb)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x52fe3c...a353](https://polygonscan.com/address/0x52fe3cbb7e3b667c8c4f8492a254788f736aa353)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x2ee833...ca3e](https://polygonscan.com/address/0x2ee83314abcdade2103c355f53b940219811ca3e)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0xbd4f85...cced](https://polygonscan.com/address/0xbd4f85df9dec005800c5af0281e70c70ba62cced), [0xfddfed...ab4e](https://polygonscan.com/address/0xfddfed5926e3a619ea01c1cd37ca782a76ffab4e)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x2f4273...e8ad](https://polygonscan.com/address/0x2f427304777d2a768be473f51d13082d7ac7e8ad)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x6c6f11...fcef](https://polygonscan.com/address/0x6c6f1124a68032f18c14f32a51d5b6043fbbfcef)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x2f5f03...cf9f](https://polygonscan.com/address/0x2f5f03c22a1f8585a346ffeca71e4728d0d1cf9f)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x77a42a...c5e7](https://polygonscan.com/address/0x77a42a36a4e226ff8df065c820565a92fb54c5e7)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x2f610c...99bb](https://polygonscan.com/address/0x2f610c33145ad04c479c381a4490f9a2242499bb)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xbd5bef...223b](https://polygonscan.com/address/0xbd5bef84e96391e00eb1903f37023c46e01d223b)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x2fb085...f83f](https://polygonscan.com/address/0x2fb08566fa6d4f46250d668ecea64a82868cf83f)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x023617...6c2b](https://polygonscan.com/address/0x02361703bde18b22005b439bb18af0400ec56c2b)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x304ad6...b6b5](https://polygonscan.com/address/0x304ad6c8d28cdc52f7cba111f2d7f44cc5feb6b5)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x7f673c...c6e1](https://polygonscan.com/address/0x7f673cfc36a2bc51f4d0848a81b55d1122fcc6e1)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x313729...8193](https://polygonscan.com/address/0x3137291eccdbb27e09a7c7137ea38076429a8193)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x2e88de...fe49](https://polygonscan.com/address/0x2e88dec25f53bcd75c0ac5254d783a5bf946fe49)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x31e7b5...abe5](https://polygonscan.com/address/0x31e7b513857899e3708d6b89da0845444b6fabe5)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x38e1ea...5273](https://polygonscan.com/address/0x38e1ea40be3434cc9fd852617f17fcb15daa5273)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x31f0d8...9e4f](https://polygonscan.com/address/0x31f0d8c70cb2915d89055282445643a5ee989e4f)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x81d998...a685](https://polygonscan.com/address/0x81d99845ab2ffa9186b30387ef6c923518f8a685)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x323873...fe26](https://polygonscan.com/address/0x323873301279a12c00f779c7b613fda4fb47fe26)
- **Confidence:** untethered
- **Instance count:** 9
- **Sample instances:** [0x4a642f...b75e](https://polygonscan.com/address/0x4a642f8f499126890fcd3b557a93071bf578b75e), [0x6b593b...a8b3](https://polygonscan.com/address/0x6b593b2c38938a6f62145eac063dcde0c74ba8b3), [0x77701c...8dc5](https://polygonscan.com/address/0x77701cafe03a807ff05bffc5ce03015e87338dc5), [0x7e8434...d3a7](https://polygonscan.com/address/0x7e843450bf4f0be50b177ae1598b271b8210d3a7), [0xb0ee2c...70fd](https://polygonscan.com/address/0xb0ee2c95bca32f6dfbc72ec87bea7ee2e19970fd)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x32a1b8...54da](https://polygonscan.com/address/0x32a1b855501dbc3601c84a6c2c4a4bf36aa654da)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x2e82fa...68c9](https://polygonscan.com/address/0x2e82fa7fbc2ada7dd5e6e6326f41f55b82a068c9)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x3333c4...4479](https://polygonscan.com/address/0x3333c4472ef0788f51e9279e57c5d21f7d474479)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x4bfd0a...7896](https://polygonscan.com/address/0x4bfd0ad12619f5a67fe0382e526638512c267896)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x339890...3a55](https://polygonscan.com/address/0x3398904bfeab28bc5740eb0b4dcc36f059823a55)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xb30816...b137](https://polygonscan.com/address/0xb3081636d9ccce1cd19fd404f4ff30776b7cb137)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x33995f...3ce0](https://polygonscan.com/address/0x33995fd4965765da3acbafdf0791b538a1d23ce0)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xf09ee8...c6c9](https://polygonscan.com/address/0xf09ee8fb8017b026d65f87324da0d4237dc9c6c9)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x33abbe...ba41](https://polygonscan.com/address/0x33abbe4e5aa3eb29bfe54f10026edfe756b2ba41)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x0ed780...9ab6](https://polygonscan.com/address/0x0ed78096f22478e545feb46799377426f82e9ab6)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x33f6d7...78e2](https://polygonscan.com/address/0x33f6d7993363310f973513dd147e719ef2b278e2)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xc02bed...f382](https://polygonscan.com/address/0xc02bedc4af242219f1e3a9b3041559427376f382)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x34d656...8c81](https://polygonscan.com/address/0x34d6562fb75da6d24a6d93fc47c8432eb0888c81)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x92e872...caf5](https://polygonscan.com/address/0x92e872810e3023d67e8479c030f6cf7caf75caf5)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x3511b2...9e9a](https://polygonscan.com/address/0x3511b251e92d90e9e2c56fbcda036a2cb9c79e9a)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xe54993...6d3b](https://polygonscan.com/address/0xe5499376e3e7965d6e6f416042c1d9046d5e6d3b)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x35f5bf...2325](https://polygonscan.com/address/0x35f5bf30fb33814e8463ba9776c53d6f5e512325)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xc98f39...f4f0](https://polygonscan.com/address/0xc98f3914d377cd24683a3adcacf90ff97010f4f0)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x369e74...d602](https://polygonscan.com/address/0x369e74ca7ba57960c61aa0f48c756958d4b3d602)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x2300d6...17b7](https://polygonscan.com/address/0x2300d61cdde06b2acb638db56d5ce33db8d917b7)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x37414f...d334](https://polygonscan.com/address/0x37414fb12e9be23caf014b8bca09c5f03324d334)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x888cfe...9ed9](https://polygonscan.com/address/0x888cfe3fa69fd4dcf8431def6cd93e0bcea89ed9)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x379095...5147](https://polygonscan.com/address/0x379095ae1274b08cda9029c85cf3f95ac0445147)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x434d72...9655](https://polygonscan.com/address/0x434d72456408ff6dc6372f415aacdf6ed8939655), [0x84685c...81d7](https://polygonscan.com/address/0x84685c60a5e23aaa25cb47e9ca200e93f8d681d7), [0xbf9682...4235](https://polygonscan.com/address/0xbf9682d40a3d9a85a5759dfdeb92ad67750f4235)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x37c3b4...13fb](https://polygonscan.com/address/0x37c3b49c381504e542babc23cfec5a4c53d813fb)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x9f206c...d54d](https://polygonscan.com/address/0x9f206c00b982710914a607ba949e0b69344cd54d)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x38c1b4...8b52](https://polygonscan.com/address/0x38c1b46ae8364feff13a1971f9feec5a24ee8b52)
- **Confidence:** untethered
- **Instance count:** 17
- **Sample instances:** [0x0ddd51...46c4](https://polygonscan.com/address/0x0ddd518f837ddf6e8ad443196e72dc1629fc46c4), [0x104bc9...721c](https://polygonscan.com/address/0x104bc969c48af9e2d298da1b587973f175c1721c), [0x1f6531...27b8](https://polygonscan.com/address/0x1f653109cc593f8492584fbe309b415fe24b27b8), [0x2520d6...68af](https://polygonscan.com/address/0x2520d6757d5654b025da8873139acded7c0468af), [0x3ca647...9d13](https://polygonscan.com/address/0x3ca6478e4ecb47986651460104af5fed463f9d13)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x38d893...174d](https://polygonscan.com/address/0x38d8930fe1142c146c0bbd072161b82b2751174d)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xc2995a...c12d](https://polygonscan.com/address/0xc2995a065106b5c5c738b2320387460ebd12c12d)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x395519...70dc](https://polygonscan.com/address/0x3955192ac5ba00f9ec028aea240d8177f48c70dc)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x60a878...58aa](https://polygonscan.com/address/0x60a8787c32d1abb065e5fe5cf4ee6d54f12758aa)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x39be8f...705d](https://polygonscan.com/address/0x39be8fad61f5fa0cdfa2fc97c30a59833f58705d)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xa70dfb...595d](https://polygonscan.com/address/0xa70dfb3f3b36d69ba3f6efa8949126999906595d)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x3a3977...a1ab](https://polygonscan.com/address/0x3a39779e20c228eff859541ee805e786dfe0a1ab)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x422edc...cce7](https://polygonscan.com/address/0x422edc1745a54a34aaff78451327c1b882c6cce7)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x3a8d15...6db3](https://polygonscan.com/address/0x3a8d15d942a37d59485db09cd415f22780446db3)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x28ef8b...0014](https://polygonscan.com/address/0x28ef8b7f9459fb136b2d82a75704d660046a0014)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x3adfe0...1ece](https://polygonscan.com/address/0x3adfe08c0591bb13390ed25af0c6852f24681ece)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x0e4be9...5ab3](https://polygonscan.com/address/0x0e4be974a05f2cb0add1c7c3f9f425438e905ab3), [0x737007...609a](https://polygonscan.com/address/0x737007de5f5fe5185d6bf43501da356f4133609a), [0xcb7d96...dc71](https://polygonscan.com/address/0xcb7d96c88bb71524143c1c70893e3522b4c6dc71)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x3af4af...824c](https://polygonscan.com/address/0x3af4afd1ba9632d7212c987bb290bee6492b824c)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xb8e2ae...20d0](https://polygonscan.com/address/0xb8e2ae1e06c050e192325b10e4385c06174b20d0)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x3b130a...a356](https://polygonscan.com/address/0x3b130ab94d7d0169a094c4fedc12ae836140a356)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x955d91...e3af](https://polygonscan.com/address/0x955d91fa6110df7b9f508c718ea080b8b95ae3af)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x3b3ffe...c7be](https://polygonscan.com/address/0x3b3ffefed0d1633a57e56cd514d575b0e0b9c7be)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xc91a67...7db9](https://polygonscan.com/address/0xc91a6739f40a84eb4d7fbfc550e554d27e717db9)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x3b6e8f...36bb](https://polygonscan.com/address/0x3b6e8ff11f405aa224b2f541fe6ba188f98d36bb)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xcf638d...d642](https://polygonscan.com/address/0xcf638ddeb418c14a5f38ffeda045803fc785d642)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x3c10e6...60bb](https://polygonscan.com/address/0x3c10e6f13abc22df2eb9b898b0c533d78d1360bb)
- **Confidence:** untethered
- **Instance count:** 10
- **Sample instances:** [0x527d9b...5933](https://polygonscan.com/address/0x527d9b286f09d15a8ea132bc97d46c19f36b5933), [0x60ae12...efcb](https://polygonscan.com/address/0x60ae12078db9f7f66374c7246ea48cbb6772efcb), [0x694ed2...5b0c](https://polygonscan.com/address/0x694ed2dcda39d585610d770caa7b229e6d165b0c), [0x723b92...4572](https://polygonscan.com/address/0x723b92cba1d6bed89d348b409624b87a35904572), [0x81af70...ce5e](https://polygonscan.com/address/0x81af70c8c8a0436fe3828edba6f8f3903ad0ce5e)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x3c1fc4...25b3](https://polygonscan.com/address/0x3c1fc42f4a178bcdc653668cbb1ebc20b37025b3)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x7a4508...4e26](https://polygonscan.com/address/0x7a4508269b8db7930189379ce8d556b50a0d4e26)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x3c2463...8594](https://polygonscan.com/address/0x3c2463b25146160f2d3cc94193d706c8d8868594)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x31dfaa...0b1d](https://polygonscan.com/address/0x31dfaac0b635740e7a8b7067ceac703de15b0b1d), [0xb5b891...4b58](https://polygonscan.com/address/0xb5b89185919df3c5cbfab098c81f7d7757234b58)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x3c26ee...f86f](https://polygonscan.com/address/0x3c26eef599c84ad697ebbbf1bc414053640ff86f)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xf7c531...6e3a](https://polygonscan.com/address/0xf7c53132f8a0c16c34ff8cbe1a910887780c6e3a)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x3c7d5b...e6c1](https://polygonscan.com/address/0x3c7d5bb537abae440e0abe552342f422a4b1e6c1)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xef257c...51b0](https://polygonscan.com/address/0xef257c8ec41b1602b97f689ce1517114288251b0)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x3fc3e6...6608](https://polygonscan.com/address/0x3fc3e6514fd4925f55fb3ae17bbfbca2eb126608)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x964176...1ee1](https://polygonscan.com/address/0x96417631153876992a016c0331f143221e551ee1), [0xb7a63d...91da](https://polygonscan.com/address/0xb7a63d8ebf10ba6290c6ec4b44ac5176a62091da)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x3fdbad...401c](https://polygonscan.com/address/0x3fdbad53ab0068b9740aa2b9f7fddf3ef65e401c)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x44d02b...b3f6](https://polygonscan.com/address/0x44d02b50791965f1362f1e30dac618d48fadb3f6), [0xff7145...f70e](https://polygonscan.com/address/0xff71459258f9c071d9187aa9591ce9947ef6f70e)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x403e57...3fe4](https://polygonscan.com/address/0x403e57a62677bc4fb5d4e7ecf3ddc0ceb68e3fe4)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xe358af...07e6](https://polygonscan.com/address/0xe358afd82bdebc79ce4b18c3ebc5752382f807e6)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x407235...d394](https://polygonscan.com/address/0x4072359ff52a07a7e6ff2b22d68cce5710c9d394)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x253615...aa4f](https://polygonscan.com/address/0x2536158c73eb74063d36fc2738ac3fc6e78daa4f)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x407266...9826](https://polygonscan.com/address/0x4072666559580b59ef51833f102dc893f6e39826)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xc9c079...5482](https://polygonscan.com/address/0xc9c0790249c7ee93868238a658d15990a3335482)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x40b32c...8f4f](https://polygonscan.com/address/0x40b32c14728b3272b61e78605972da693bff8f4f)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x94aac8...cfa0](https://polygonscan.com/address/0x94aac89380918e6ff9cae9b5a54464415e7bcfa0)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x4103d0...622d](https://polygonscan.com/address/0x4103d024275ed65431fa3d7ab8bba5cb575c622d)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xab782e...e2ab](https://polygonscan.com/address/0xab782edf7ecf6ba7793f88c6a1ee2ecd7742e2ab)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x415a3f...1639](https://polygonscan.com/address/0x415a3f37aeed4ba2eb2b75670ab82d1d91261639)
- **Confidence:** untethered
- **Instance count:** 6
- **Sample instances:** [0x17f9a3...77d5](https://polygonscan.com/address/0x17f9a37af30193267c9054e94b75e595d7b077d5), [0x1c8ed3...1fe5](https://polygonscan.com/address/0x1c8ed3e27fc77ff058e1c11319ae36260dab1fe5), [0x3a5890...2cf0](https://polygonscan.com/address/0x3a5890bcb65fd193e7b6da1872b6381bc7d02cf0), [0x955ded...7da2](https://polygonscan.com/address/0x955dedebb6ffe8c10c183e03c9075c92794f7da2), [0x97a565...b8f7](https://polygonscan.com/address/0x97a565e55f8a8071b390202ba01db88b17d4b8f7)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x41bc7d...c56d](https://polygonscan.com/address/0x41bc7d0687e6cea57fa26da78379dfdc5627c56d)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x882f83...d76e](https://polygonscan.com/address/0x882f83877206626ca74482155e153f103466d76e), [0xfc8998...e681](https://polygonscan.com/address/0xfc8998897d9f1fdd2a44db5cf17f0c5953b1e681)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x41c54e...eca9](https://polygonscan.com/address/0x41c54ec24fa2786c44db9b7a7ca5e78f10f6eca9)
- **Confidence:** untethered
- **Instance count:** 4
- **Sample instances:** [0x497934...52e2](https://polygonscan.com/address/0x497934fee794f39f0d00c3571200a68d53b452e2), [0x95542b...463f](https://polygonscan.com/address/0x95542bba034f9aa1aac6ae38e57e5233d01e463f), [0xd40919...7756](https://polygonscan.com/address/0xd4091995c00afe95a4b0b279ad3fc696c4e87756), [0xef64ce...a7e9](https://polygonscan.com/address/0xef64cef2ecee1c6cf3f7a90dce452ea69b30a7e9)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x426ceb...32d5](https://polygonscan.com/address/0x426cebc0f0d372dac26e4d2aba3868adce6532d5)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xdb7c83...dfd7](https://polygonscan.com/address/0xdb7c83ba9e86704c97c159b67153824a3ae1dfd7)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x428234...647f](https://polygonscan.com/address/0x4282341588f94c158bfaa40ae2c9f3abfdac647f)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x39d632...4a26](https://polygonscan.com/address/0x39d63288c454c3b332c030e7c4fab16df0794a26), [0xebbc37...f3aa](https://polygonscan.com/address/0xebbc37cc939fe2e72b1b20061f9bf754b16df3aa)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x42875a...d59a](https://polygonscan.com/address/0x42875ae5766dfd4d70772a3a956842e4b708d59a)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x7fa8e0...1f29](https://polygonscan.com/address/0x7fa8e099f553ac1173cdd7b084a74cf121831f29), [0xe7129c...af45](https://polygonscan.com/address/0xe7129c006353ceda8f229240282c48a54402af45)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x42aa74...3413](https://polygonscan.com/address/0x42aa74e64a95f8f3dfc1d7e38b0f0765586d3413)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x091863...7bd6](https://polygonscan.com/address/0x09186326bf944b5eaa22546f957c8460e7927bd6)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x42e546...77f9](https://polygonscan.com/address/0x42e5464aab4a992279ae1b28bae09939f27677f9)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xa63622...c9a4](https://polygonscan.com/address/0xa63622e67b4aa5809726331ed6fc637082e2c9a4)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x43ca57...c08b](https://polygonscan.com/address/0x43ca57e2087a283b90ada1e1e84c0cdd5285c08b)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x633fdd...7831](https://polygonscan.com/address/0x633fddd6df3ce30290e194324e6beb4e88667831)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x4415c7...8a50](https://polygonscan.com/address/0x4415c70659db7ea97373d1439115c5fb7a288a50)
- **Confidence:** untethered
- **Instance count:** 12
- **Sample instances:** [0x0b8112...52da](https://polygonscan.com/address/0x0b81127d245f4b905bffa26a99ce3074850352da), [0x11184f...43a0](https://polygonscan.com/address/0x11184f35ea3cbd39e1200aa02c6c09e282fa43a0), [0x2bb3f6...dfb2](https://polygonscan.com/address/0x2bb3f618866e1aec6a20b223e647ba722441dfb2), [0x3609ec...e19e](https://polygonscan.com/address/0x3609ec256eeca73fc412eea81660b0b11599e19e), [0x45c903...5755](https://polygonscan.com/address/0x45c9035f70cab239220563ded72e2f3b697c5755)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x45852f...ca08](https://polygonscan.com/address/0x45852f7653d50d9178545a024fb8d47840e7ca08)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xffac8d...0532](https://polygonscan.com/address/0xffac8dfd381c61e7b832485c715917d5baff0532)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x45d862...6ce9](https://polygonscan.com/address/0x45d862d81d9b157bd666cd76894dec84957a6ce9)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x770e92...3e0b](https://polygonscan.com/address/0x770e926edae915dd6741fa42cedea9db569f3e0b)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x472e1e...0734](https://polygonscan.com/address/0x472e1e993e2b47fedd29593c8c14b6157afe0734)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xee25a1...0abe](https://polygonscan.com/address/0xee25a1c02c679f2d96b79a0c7e713f27dbfb0abe)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x47e773...ad1b](https://polygonscan.com/address/0x47e773a5a7adf8078f04facb99966fab65baad1b)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x4bce7e...45fd](https://polygonscan.com/address/0x4bce7eb21453dfd857ae0340351cf7fa7e2745fd), [0x4dd33d...29db](https://polygonscan.com/address/0x4dd33dba5afef846904f7f0162290552547129db), [0xf04958...0143](https://polygonscan.com/address/0xf04958f6bfc42cfb287dae80391a992adf910143)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x48a404...a983](https://polygonscan.com/address/0x48a4040c0b14de3bb9593d6293a54f30cd03a983)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x5a4c88...08f4](https://polygonscan.com/address/0x5a4c889a70051d91a3f65d7e248f503a243108f4)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x48cd69...e04a](https://polygonscan.com/address/0x48cd699ac6a20911406250c19ed5d78574dbe04a)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x4e084d...7b52](https://polygonscan.com/address/0x4e084dccf22f194e954c0bfbd52482a6ce937b52)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x494d88...4c2a](https://polygonscan.com/address/0x494d8866f098a363e4effdfef2f5e240730b4c2a)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x785a4a...c2dc](https://polygonscan.com/address/0x785a4af522a6420ecbe37017857268dfb9cfc2dc), [0xa6edb4...fbe8](https://polygonscan.com/address/0xa6edb4bdc384fa68850ac9983a00dee81414fbe8), [0xb3f440...ab82](https://polygonscan.com/address/0xb3f4401f4f7d96531734e275ce5c2277109aab82)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x498143...7422](https://polygonscan.com/address/0x498143ce3ea93787718a32df2153828402237422)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x6c82a4...58d1](https://polygonscan.com/address/0x6c82a46fc989f2da51f42dc1894a293713e558d1)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x49a3ee...a681](https://polygonscan.com/address/0x49a3eedc90601ff39c6b9fc649d72dbcbc86a681)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x32bde5...ba92](https://polygonscan.com/address/0x32bde5f02f3a82e9abb447535284bc42b6b4ba92)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x49ae92...d371](https://polygonscan.com/address/0x49ae92228644a371dffc1a9142082187d472d371)
- **Confidence:** untethered
- **Instance count:** 4
- **Sample instances:** [0x44cb00...6ab0](https://polygonscan.com/address/0x44cb00608337f0c0b5ebbf512ff043636d0d6ab0), [0x562431...49fe](https://polygonscan.com/address/0x5624311598a92eedb832acc15c7e3936f45d49fe), [0xb89965...cd8e](https://polygonscan.com/address/0xb89965c0c674b5b8257451c03093aba764f0cd8e), [0xd9872d...0791](https://polygonscan.com/address/0xd9872d7cb045886c2a0b01886b8a47c821180791)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x4a2698...32f9](https://polygonscan.com/address/0x4a2698485d510ca9f2b90883427f42fbec5c32f9)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x5ef258...d362](https://polygonscan.com/address/0x5ef2587f7d1deb36976e94391e66cfc5c4a5d362)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x4acaed...5539](https://polygonscan.com/address/0x4acaed54e04923530018411b37de5c4b0abe5539)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x4b417d...2a5e](https://polygonscan.com/address/0x4b417de1a08ca9ef2203db611064ba5a81c22a5e), [0xd80da3...a873](https://polygonscan.com/address/0xd80da347d204f229345047b94ccc09a88e6ba873), [0xebe14a...c696](https://polygonscan.com/address/0xebe14a4ef6969eb1c6d61e30ef15786d8be2c696)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x4acea8...42e2](https://polygonscan.com/address/0x4acea8cffbcc6902a38915090af4b588494a42e2)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x34a6db...f3c7](https://polygonscan.com/address/0x34a6db1408bfb8ba75fdd3a62e36d601141df3c7), [0x96a4c9...323a](https://polygonscan.com/address/0x96a4c938a8a7531bbb26b9871c1782ab5a33323a)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x4c82ff...8cc4](https://polygonscan.com/address/0x4c82ff5d153e94eb1966f6f4959cbc7e0c6c8cc4)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x3948f9...feae](https://polygonscan.com/address/0x3948f98cfe6448f4956137027695abe9e1dafeae)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x4cd962...33bc](https://polygonscan.com/address/0x4cd96220568a17e6e398099aecccf7cfea5933bc)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x69a48a...6c55](https://polygonscan.com/address/0x69a48ac11b33d1d5a767c648f23b2556af806c55), [0xc4e537...36e3](https://polygonscan.com/address/0xc4e537f9f5be4160cce771fa825bc39d411a36e3), [0xfa04f8...68dc](https://polygonscan.com/address/0xfa04f8baa3505824bc3e7d54b3a4ef6538fe68dc)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x4e036d...186f](https://polygonscan.com/address/0x4e036d683597061ab6f0c97875135ccfda87186f)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xa35bc5...e93f](https://polygonscan.com/address/0xa35bc5d5b40b17812e7eba685cec5d273722e93f)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x4ef416...9065](https://polygonscan.com/address/0x4ef416aa741053b5f3968900379df2e3d0229065)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x0c1cd8...63dd](https://polygonscan.com/address/0x0c1cd8769b150e23e6dbc0d843a4efb9572963dd), [0x546921...b215](https://polygonscan.com/address/0x546921015d0b41c0184b1cc41c61f3c4a1c3b215), [0xb543d2...5fbd](https://polygonscan.com/address/0xb543d23c8e45e807fddf7e8b7897e535d2e65fbd)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x4f2604...480b](https://polygonscan.com/address/0x4f2604aac91114ae3b3d0be485d407d02b24480b)
- **Confidence:** untethered
- **Instance count:** 10
- **Sample instances:** [0x1dc4c0...019e](https://polygonscan.com/address/0x1dc4c0c1eb0d576e84ad05c6a3d6dc394c90019e), [0x41224d...9285](https://polygonscan.com/address/0x41224d49e51508b9005f901880adfa4d8f969285), [0x4934f4...fd89](https://polygonscan.com/address/0x4934f41d4ec82256c847cd6c0b203f445bacfd89), [0x61c936...d58d](https://polygonscan.com/address/0x61c93621cc0bc8e038d4c8f49e987981cc9ad58d), [0x6d60ea...14dd](https://polygonscan.com/address/0x6d60eab79598bdaa96553de73c517a48f99214dd)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x4fa037...64e4](https://polygonscan.com/address/0x4fa0379f4e4933907ac6942f07165062fd4d64e4)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x003d18...ddd8](https://polygonscan.com/address/0x003d187b429657b2cc5ad0a7047243158aadddd8), [0x02f796...bdf0](https://polygonscan.com/address/0x02f7963114025f6024b5e032419e4ec853bcbdf0), [0xd188d4...7253](https://polygonscan.com/address/0xd188d4bd9c06dd67d2f1b06f83b061d448647253)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x506d30...7c7f](https://polygonscan.com/address/0x506d308e4db1d160b98fb15d4bea01c52e707c7f)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x20ef88...31f0](https://polygonscan.com/address/0x20ef8850871c97cdc57b85b7de6dbbf9d0e531f0), [0x2aa5b6...a1f9](https://polygonscan.com/address/0x2aa5b61d9fddea5d7df8e71379892d7b99cba1f9), [0x64fcfb...69b1](https://polygonscan.com/address/0x64fcfb2e04e37de68c991872378964d7b92369b1)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x50ba3f...a02e](https://polygonscan.com/address/0x50ba3fc2ea02f44ff5b512cfb8ecc54864caa02e)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x4d73b0...b89c](https://polygonscan.com/address/0x4d73b064ad611fcb43d882bceb8fe4a22be5b89c)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x517642...93cc](https://polygonscan.com/address/0x5176420ddb65181459b00f29e5068d3aac6a93cc)
- **Confidence:** untethered
- **Instance count:** 29
- **Sample instances:** [0x023333...f4c8](https://polygonscan.com/address/0x023333a48d103d387459a10c3f9acc996750f4c8), [0x27620c...936b](https://polygonscan.com/address/0x27620c354e0b3132ff19bd507d391076b234936b), [0x2b7eda...9a62](https://polygonscan.com/address/0x2b7eda3ab728af3825687f246053009eba009a62), [0x314c45...4619](https://polygonscan.com/address/0x314c450550c8fd5d4cb8bec80ce48a79f74f4619), [0x38bdc8...9ae6](https://polygonscan.com/address/0x38bdc8c37f2f710c7035ca1b24be226676c79ae6)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x51b0a8...129b](https://polygonscan.com/address/0x51b0a8d89edb1146c55e72b3cf028560defa129b)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x37c19a...f64c](https://polygonscan.com/address/0x37c19a27ef95de204fff3ae15edd3d8d8869f64c)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x51e13c...0659](https://polygonscan.com/address/0x51e13c4fdbc2690677eb0261ac1fc5cd1a1d0659)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x34f9d1...b469](https://polygonscan.com/address/0x34f9d1dd4680d1258c77a179cd06e0f9b25ab469), [0x5b3ee1...05d8](https://polygonscan.com/address/0x5b3ee1ebd25044751da1505abf6b0e809c8d05d8)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x5245b5...c385](https://polygonscan.com/address/0x5245b5954a75c85c6c7c5f68e9db2477b626c385)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x25e251...2f90](https://polygonscan.com/address/0x25e25146ca4ee948d7383281202644db60042f90), [0xa1f5de...f4aa](https://polygonscan.com/address/0xa1f5dee2cf5bd31006fdc61846aed500df69f4aa)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x52d033...9382](https://polygonscan.com/address/0x52d033e64774f31a8b7562806aa5782cbbd29382)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x181f71...2640](https://polygonscan.com/address/0x181f71cb062b07d7a35d4f7553cf3c325aaa2640), [0x20178a...812e](https://polygonscan.com/address/0x20178a633f454d3891e3b6d21cf3817cf453812e), [0x2fe738...d6e4](https://polygonscan.com/address/0x2fe73834ab236233ae5fe967da0b70633fc5d6e4)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x536789...6dc1](https://polygonscan.com/address/0x536789299505d9c70f91ac1ff880bed73f056dc1)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x76ac82...b853](https://polygonscan.com/address/0x76ac82eefc5399098e769f65281d2f7cbabfb853), [0xbe3f55...0f59](https://polygonscan.com/address/0xbe3f55b8e940af48e2650b5eccb7c277d2650f59), [0xecf3c8...f542](https://polygonscan.com/address/0xecf3c8535ac651a3335b6853c9f6b98e2c9cf542)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x5381ad...989f](https://polygonscan.com/address/0x5381ad66385a6af9e8211274c49b8af8cb42989f)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x4c68fe...23a8](https://polygonscan.com/address/0x4c68fe67e900e02528b7eafa1833f519a23223a8), [0xa0f03c...6379](https://polygonscan.com/address/0xa0f03c665dea85a8dad5de298ac3a2f1923d6379), [0xa215d5...ab2d](https://polygonscan.com/address/0xa215d5f7c70a11d6bf20b0ed51bc8fa0bcf3ab2d)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x53d0dd...42ae](https://polygonscan.com/address/0x53d0dd000e23531804143fb363fe370525f542ae)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x506763...af9a](https://polygonscan.com/address/0x506763aeb6010d035dfb5e61c4b889392b61af9a), [0xedabf1...736d](https://polygonscan.com/address/0xedabf1c585dd3e5f185ad85e79b84fbda989736d)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x546d09...af9c](https://polygonscan.com/address/0x546d090bbcec3d96903d41e38c3436c1c601af9c)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x13aa37...e90b](https://polygonscan.com/address/0x13aa37a33b84122ee36b86a9e263a2689d0fe90b)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x54a653...0f41](https://polygonscan.com/address/0x54a65318d4c66609fc4df473bcce223248b10f41)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0xa81134...0aad](https://polygonscan.com/address/0xa81134d3e442d21d3d67cdba6ddf67ecec310aad), [0xf755d6...a2f6](https://polygonscan.com/address/0xf755d65b0825a327e98249452a9f79ce47efa2f6)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x566fa3...23ad](https://polygonscan.com/address/0x566fa3c0818ce8bf54a5aae88ebfa53d3c9323ad)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x5a5fb8...6ac0](https://polygonscan.com/address/0x5a5fb848efde848de1ef3f0ce4b91c7b488e6ac0)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x56a236...425e](https://polygonscan.com/address/0x56a2362197bce9752f71b35eb9df20c4118a425e)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x69325d...332f](https://polygonscan.com/address/0x69325ddca2c72051d6c4657a47211efa662e332f)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x56aa4f...9648](https://polygonscan.com/address/0x56aa4fb42f77faa81b5ca0d2b3cab33f80899648)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x786ea0...6099](https://polygonscan.com/address/0x786ea0c5e3b5539847c10e436285a420a5c76099)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x56f2c4...6140](https://polygonscan.com/address/0x56f2c4cb8518d0a4ec749593df574f7597a36140)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x0d0770...6ef4](https://polygonscan.com/address/0x0d07706e14f424fdec17cd7676ecee9b3b8f6ef4), [0x97a2b6...5025](https://polygonscan.com/address/0x97a2b618b99a64021ca54fe989a11296a21e5025)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x56f5a8...c43f](https://polygonscan.com/address/0x56f5a83267c25423cd26e8ff84fb6826615ac43f)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x6bd0c7...13a7](https://polygonscan.com/address/0x6bd0c7a0184a1d4c95bb93011813a8023b0013a7)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x57eb28...56fd](https://polygonscan.com/address/0x57eb288f210e85eb92e3c325eeba5af36dee56fd)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x94d9bc...3daf](https://polygonscan.com/address/0x94d9bc47de80af04cf2b8864f4e3df9f8b483daf)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x590242...4ca1](https://polygonscan.com/address/0x5902422bd0bcaa5468f6caf14cb7a60dea224ca1)
- **Confidence:** untethered
- **Instance count:** 6
- **Sample instances:** [0x177a76...a090](https://polygonscan.com/address/0x177a7602e1ad66549dd0db88224a7c53834ca090), [0x33176f...b1ba](https://polygonscan.com/address/0x33176fbc885eb586e1235f837a0a0b9ad138b1ba), [0x376ab5...d4e4](https://polygonscan.com/address/0x376ab5adeaab943c41e0d0cf1a622f643761d4e4), [0x7437f3...bd75](https://polygonscan.com/address/0x7437f3d239af7891080ad19c5a4208ee3413bd75), [0x9926ce...ce86](https://polygonscan.com/address/0x9926ceee4ea3a5f44c98e4dfbe63d926306bce86)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x5906e1...a780](https://polygonscan.com/address/0x5906e15c9d92d88a6a2e710c431e4d977529a780)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xf3bf24...d5e6](https://polygonscan.com/address/0xf3bf24ddd4eb66640d5013211764524802abd5e6)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x590a8c...6cfc](https://polygonscan.com/address/0x590a8c069eacb40d409130e67dd4ef06b1136cfc)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x343deb...a7dc](https://polygonscan.com/address/0x343deb540fcec3e1d453534febbb1a34525da7dc), [0x3489cd...0f35](https://polygonscan.com/address/0x3489cd1f1993ba122f5359e4ed5c4f45aa8a0f35), [0x570e15...6330](https://polygonscan.com/address/0x570e1541a82901b083eb58d2483e87b3af4b6330)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x598f5e...3b91](https://polygonscan.com/address/0x598f5e768b2b820d945bd36dc07b826a6aed3b91)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x2473fa...ba1d](https://polygonscan.com/address/0x2473fa1aed20591431755d4944bb3e35584aba1d)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x59f01e...48a1](https://polygonscan.com/address/0x59f01e8ed03e3fd7d8690c5793007332bd0548a1)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x19637f...34cb](https://polygonscan.com/address/0x19637fea467995f80747c84e43d5ea12aa9f34cb), [0x2616f7...a204](https://polygonscan.com/address/0x2616f7285bdcb9c3d0422745b1c8a5751e0ea204), [0xaaae5a...c592](https://polygonscan.com/address/0xaaae5aabdb7db627c58dfeeba27ba2933a39c592)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x5b5907...63f2](https://polygonscan.com/address/0x5b5907dae3f75ef140f30c5205d9b89bf88763f2)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x7a9ffb...7fe3](https://polygonscan.com/address/0x7a9ffb202ceae14b03e8529faad7d631898e7fe3)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x5b878b...0d65](https://polygonscan.com/address/0x5b878ba97bae92fc0aa6133edbf2f58d52350d65)
- **Confidence:** untethered
- **Instance count:** 5
- **Sample instances:** [0x09c8df...9363](https://polygonscan.com/address/0x09c8dfd463219f05fecd21a0895c6dc2bfe99363), [0x330a6e...5f4a](https://polygonscan.com/address/0x330a6e3dce11349923bece9cbd32ddf95a415f4a), [0x53a8eb...1104](https://polygonscan.com/address/0x53a8eb6ef506d1fe05d4d9654640a69e6e051104), [0x7dc5ae...2742](https://polygonscan.com/address/0x7dc5ae5b4e4059cfbb265e03159c7463cab32742), [0x800845...7816](https://polygonscan.com/address/0x8008456e9c443e6e2ca0aeca7e6dee5b8f947816)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x5cc1e4...86a7](https://polygonscan.com/address/0x5cc1e4e7302207ffe7b169e23bcb351162ea86a7)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x147bbb...8f58](https://polygonscan.com/address/0x147bbbce0321be8c1ba620689002798578ce8f58), [0xa493b6...1dad](https://polygonscan.com/address/0xa493b6fc504e02fbd5ab4058308291a1fbc91dad)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x5ce192...bf47](https://polygonscan.com/address/0x5ce19256d7a4f7e35140b0f4a89b44e5e6cabf47)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xd3105e...a74a](https://polygonscan.com/address/0xd3105ef854007fb2f9f7278fa4fe72d3c097a74a)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x5e97d7...37d6](https://polygonscan.com/address/0x5e97d7679b60f67ac76e02457787fd64364e37d6)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x7f856d...d686](https://polygonscan.com/address/0x7f856d15ad63fa007f06d8ad0788dfa1365ad686)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x5eb269...a9ae](https://polygonscan.com/address/0x5eb2692e52a5ed59cfd600b5f85687d4d67ba9ae)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x72c2ba...62c2](https://polygonscan.com/address/0x72c2ba15c20072a85784541222448cfe249e62c2)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x5f0a4e...129b](https://polygonscan.com/address/0x5f0a4ebd549fdf4435c0e755682f893708bc129b)
- **Confidence:** untethered
- **Instance count:** 6
- **Sample instances:** [0x061be7...b690](https://polygonscan.com/address/0x061be7b24fd7b7913014d7c2f78373a01a0eb690), [0x078fa8...63b7](https://polygonscan.com/address/0x078fa8c6a0d2fbb5f2ae95ae6893acd5767163b7), [0x48b526...65b4](https://polygonscan.com/address/0x48b52698b4d9b02ad39590253f674d0277ec65b4), [0x635212...dd3a](https://polygonscan.com/address/0x63521299ac1cdbc378f5cab110a4d4888d65dd3a), [0xb15b10...9431](https://polygonscan.com/address/0xb15b10c9642ff9c22fc5c108429752c83ee39431)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x5f4812...2463](https://polygonscan.com/address/0x5f4812d78e795841d876e727f293e7f354ab2463)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x37e130...1eef](https://polygonscan.com/address/0x37e130266cf12c1f02cc22f0407392de33101eef)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x609e42...86b9](https://polygonscan.com/address/0x609e422afd336d118e21d484a530f08f56d586b9)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x03cd75...0435](https://polygonscan.com/address/0x03cd750f16dc8051b8f355d351438e6b18890435), [0x99b266...65d5](https://polygonscan.com/address/0x99b2664d34fc1137c6f09a3e3496a72c1f3e65d5), [0xcb3824...87cd](https://polygonscan.com/address/0xcb3824aab28057e55ff0cc30d97d7f3f537f87cd)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x612ebc...9546](https://polygonscan.com/address/0x612ebc9b9d1b18ccd5d2cdc1ed1b4c13547b9546)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x660430...8470](https://polygonscan.com/address/0x66043087ad170834f2e12cd942965be2bfef8470), [0xd7400d...880e](https://polygonscan.com/address/0xd7400de10b736bc3dc33c30b318c447a7d99880e)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x614eca...428a](https://polygonscan.com/address/0x614eca453555a473258157542e45cc37ab6b428a)
- **Confidence:** untethered
- **Instance count:** 4
- **Sample instances:** [0x037e43...02ef](https://polygonscan.com/address/0x037e437672fdf68293d9af2ff180cea56fc902ef), [0x414c3c...99b6](https://polygonscan.com/address/0x414c3c0512372b2f10fd5e4dcfbd951785b499b6), [0x547dc5...17e1](https://polygonscan.com/address/0x547dc5024fe6feacb368df895255ddea771017e1), [0xcea95d...7e76](https://polygonscan.com/address/0xcea95dab4f92254921924e9cc76b841111ac7e76)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x619536...ee90](https://polygonscan.com/address/0x619536a91953b3f1f4565c69d2f2de0acdbeee90)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x9e366a...061f](https://polygonscan.com/address/0x9e366a1f8f36b4801d9eba996f64034024b3061f)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x622a69...9797](https://polygonscan.com/address/0x622a69180982c3469f0a9080724c194268ee9797)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xbf5d54...5fe4](https://polygonscan.com/address/0xbf5d54e8b3eadb60972a472c180474f28fc25fe4)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x630d50...ee69](https://polygonscan.com/address/0x630d50077e66813e992d5fcf5ea28fc7e7adee69)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x12dc17...e757](https://polygonscan.com/address/0x12dc17266470fb96efc735db74a668179628e757)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x63825f...6149](https://polygonscan.com/address/0x63825f00223aeece6b52005b8f1adb1c63c66149)
- **Confidence:** untethered
- **Instance count:** 4
- **Sample instances:** [0x13f9b1...561e](https://polygonscan.com/address/0x13f9b12f18303ee1b76270a03368a2661590561e), [0x5da952...89df](https://polygonscan.com/address/0x5da952c1127944a48ecc8f4a05bc6c68ae6b89df), [0x92b7fd...a112](https://polygonscan.com/address/0x92b7fd62238f2f20a393f0f78130377db028a112), [0xa60f7e...5223](https://polygonscan.com/address/0xa60f7e95b14545de83ff13b421a2629211365223)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x645a53...b053](https://polygonscan.com/address/0x645a535bd110279cb0a0654185068a194709b053)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x087882...13be](https://polygonscan.com/address/0x087882bc1bb8f47c2daeefecc51f2d98fd4813be)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x6498f6...aa81](https://polygonscan.com/address/0x6498f6cc59f64d01b841b2619f7692cfcdfdaa81)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xe6d0c4...59ce](https://polygonscan.com/address/0xe6d0c46272a213586d35cd18121ee1ae392e59ce)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x670406...f00e](https://polygonscan.com/address/0x670406937b66a87a4b4662ad569ebcc9351af00e)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x79e4e6...a06e](https://polygonscan.com/address/0x79e4e6c70d1b19bc9a820c240fb65e4e6757a06e)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x67d292...8d3e](https://polygonscan.com/address/0x67d29203971762bcf722c57df8d30275499f8d3e)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x540e78...feed](https://polygonscan.com/address/0x540e7844a971c78afbf6a5f68725b2380255feed)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x67d7fd...7a5a](https://polygonscan.com/address/0x67d7fd8c6dfa899afb641b525b932c80bc087a5a)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x468156...d8a0](https://polygonscan.com/address/0x4681564d925246253cb9f2c6b58e662237a6d8a0)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x69094b...04ad](https://polygonscan.com/address/0x69094b7855eccc06d374fa604d594779072b04ad)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xea42eb...deca](https://polygonscan.com/address/0xea42eb8531f23c1c816fe6fa3247ed45ed12deca)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x696336...9367](https://polygonscan.com/address/0x69633612f04d5e1b5775c1e9aea6ebeff2719367)
- **Confidence:** untethered
- **Instance count:** 81
- **Sample instances:** [0x0071a5...1f3d](https://polygonscan.com/address/0x0071a51d33b7ca302136b33672ff9dacdac21f3d), [0x02217d...b6e0](https://polygonscan.com/address/0x02217de630611a2b12e01655a8ca890b8cfab6e0), [0x0b1100...ff61](https://polygonscan.com/address/0x0b1100d58ac414858dbff66e5b9b331fc35aff61), [0x10ef30...cf77](https://polygonscan.com/address/0x10ef3036a76c65e45e2bbecac7b8be4bfad3cf77), [0x120247...f4f0](https://polygonscan.com/address/0x12024725cf3286e51b03889b47823e7b41edf4f0)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x6a9af4...890a](https://polygonscan.com/address/0x6a9af403ec7ea212569af118069111f18ee4890a)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x8b9075...757d](https://polygonscan.com/address/0x8b90754d581fbc99ed815522f109ad373b62757d)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x6aa2cf...274f](https://polygonscan.com/address/0x6aa2cf46317042b32a26b819b8ed67683848274f)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x5e9bd3...fc50](https://polygonscan.com/address/0x5e9bd3744dfa441549c37c6c05963e7830e6fc50), [0x970293...c26a](https://polygonscan.com/address/0x970293657ae6b1150e6c3e7847fcf1559ccac26a)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x6aa486...fdae](https://polygonscan.com/address/0x6aa486af473128dcb2c8e26df025d0ba6b90fdae)
- **Confidence:** untethered
- **Instance count:** 5
- **Sample instances:** [0x26fd1d...1631](https://polygonscan.com/address/0x26fd1d8e4ccf80df5f047f2310d2e85e47811631), [0x2ae832...00c3](https://polygonscan.com/address/0x2ae832201283190d4b74637cd50559319cb300c3), [0x39ee23...5fe0](https://polygonscan.com/address/0x39ee23b64483258b7e4ebc839f0ac3ad48fd5fe0), [0xa0da91...0a14](https://polygonscan.com/address/0xa0da91b956e70b03dc8edab0b944bbf8d2f90a14), [0xba59e9...c605](https://polygonscan.com/address/0xba59e9089ddd51e6050261e815c5347f46d4c605)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x6b63a3...8f3b](https://polygonscan.com/address/0x6b63a311a66caa50b555f0e56f6ab65734898f3b)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x616808...e6bb](https://polygonscan.com/address/0x61680811d35b7b9aa481f51f88a7882d77fbe6bb)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x6bb971...72c9](https://polygonscan.com/address/0x6bb9713137d2366ee2beae00dc7d850748bc72c9)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x6d03a9...7229](https://polygonscan.com/address/0x6d03a92c05014e5c97ffd20f804238cfb35a7229)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x6c2297...72b4](https://polygonscan.com/address/0x6c2297c3fe015b9c20a0184c859afad3929c72b4)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x461006...913b](https://polygonscan.com/address/0x461006633fed1c0b73adb647aa444c4237a2913b), [0xf437b8...dad2](https://polygonscan.com/address/0xf437b84bb76e71261e530e0e9a137c723719dad2)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x6ca614...d657](https://polygonscan.com/address/0x6ca6147fe3cf1b656cd304de59f907d3d89ad657)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xb6fe16...2887](https://polygonscan.com/address/0xb6fe16f2a2236315eefec68169bdad823af82887)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x6cd76d...0472](https://polygonscan.com/address/0x6cd76d07384c87489c81879542cf45e9d06e0472)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x47991e...0d14](https://polygonscan.com/address/0x47991e6f7690197c78ff45fbe649da1b8f0d0d14)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x70a6a5...7999](https://polygonscan.com/address/0x70a6a5462efe88473b13ac11f57ce85fc5df7999)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x73fa19...1bf8](https://polygonscan.com/address/0x73fa19402b33f387f697e4f7887186c2a53f1bf8), [0x8d280e...a4e1](https://polygonscan.com/address/0x8d280ee01f6e0ccf192818be769b8172b2a9a4e1)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x70a724...1f8e](https://polygonscan.com/address/0x70a7240152f06d73f34cf360887466d692bc1f8e)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x406ea8...690d](https://polygonscan.com/address/0x406ea81551db71af6c3103ebba82a1d2003d690d)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x7133e2...6e5e](https://polygonscan.com/address/0x7133e2bc845bdf8fdd5d3aa62ef6749634726e5e)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x9a83b9...2e72](https://polygonscan.com/address/0x9a83b968b7469afc181998b7e6ac059f3a292e72), [0xc4ff1f...70de](https://polygonscan.com/address/0xc4ff1f9a921755a85f9bca7fa392d65d5c4670de)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x723f3c...2dd8](https://polygonscan.com/address/0x723f3c70a60191c52457e9802f5ec03b96302dd8)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x7ffb39...a7f2](https://polygonscan.com/address/0x7ffb39fb4652658733ef51d829dbe57dcb92a7f2)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x72c1b0...abef](https://polygonscan.com/address/0x72c1b0b23d06c29044063c0a2e9c1f7c88fbabef)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x11f22a...5127](https://polygonscan.com/address/0x11f22ac1767e9b64e15244fb123bbd6058445127)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x72f31a...86d1](https://polygonscan.com/address/0x72f31addb8d162f07f7b3c76283b25abb7b786d1)
- **Confidence:** untethered
- **Instance count:** 8
- **Sample instances:** [0x0dafa0...59bd](https://polygonscan.com/address/0x0dafa0becc432534248ea503e674f6d243d259bd), [0x51d802...1e87](https://polygonscan.com/address/0x51d802e18369b0c07865cb6782da1d41a49d1e87), [0x71bdcc...b010](https://polygonscan.com/address/0x71bdccef37621893f642b03fc5e8d91ed33bb010), [0x8cf86b...9f7b](https://polygonscan.com/address/0x8cf86becc59dfaac2cd60d4c664b5013db119f7b), [0xb35c81...7c7b](https://polygonscan.com/address/0xb35c81dd5b567ea44cdf0b53bb31fb66f4517c7b)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x72f80c...f333](https://polygonscan.com/address/0x72f80c02f7b137b1b6d94b280fa2ea68c1d5f333)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xdbda2c...676d](https://polygonscan.com/address/0xdbda2c5360d7ea5e102c10c5aaa0517c9ee0676d)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x73ad04...9036](https://polygonscan.com/address/0x73ad04ea8c1ee40440550ebd0ec4aa58f48b9036)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x7e7d02...eef9](https://polygonscan.com/address/0x7e7d02a8bd4ba5028cd167de8b280ae9bae9eef9)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x74728a...29d4](https://polygonscan.com/address/0x74728a35901b6245a344aac192f834639a5e29d4)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x7e2638...93d1](https://polygonscan.com/address/0x7e2638d514ad7c464abc2569105c6e5b766793d1), [0xdab0ff...9e1c](https://polygonscan.com/address/0xdab0ff0fa6d154192ba2d3b74c502b56bcba9e1c)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x7516e3...e15f](https://polygonscan.com/address/0x7516e30632f01c797891a362f4bcb6c00709e15f)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xe80031...8b00](https://polygonscan.com/address/0xe800315c149a752ae236b9bd85c83b97fd948b00)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x76071e...18b0](https://polygonscan.com/address/0x76071e63fc0a7af8f5ccf93126eb368605bc18b0)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x552f40...3a3b](https://polygonscan.com/address/0x552f4016e3c0571a179aa8e2146972da83c03a3b), [0x5d3974...7ae9](https://polygonscan.com/address/0x5d3974415f9ab08b94d58939ea625a1167d47ae9), [0x6dc0b3...acda](https://polygonscan.com/address/0x6dc0b378ce77309b1546b8a2514fdbfcdde5acda)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x775f9d...a674](https://polygonscan.com/address/0x775f9dd000bd3a770597e779802570fcc333a674)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x123fa4...8568](https://polygonscan.com/address/0x123fa446be6117d2afcddfdfb146c721454c8568)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x7a618b...5964](https://polygonscan.com/address/0x7a618b048f61a3dcf8a1b9bc04a5384f6dcd5964)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x33f528...d3f6](https://polygonscan.com/address/0x33f528901bba063b544c1b4cef8c60dfaf6ed3f6)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x7a7e64...dbcd](https://polygonscan.com/address/0x7a7e64a5767312577fd5cbfa0e92d8b650c4dbcd)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x73e15c...0ea4](https://polygonscan.com/address/0x73e15c123ec2d5ddf6079e819cf6abe57dc50ea4)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x7b06a9...0ce6](https://polygonscan.com/address/0x7b06a9632599ea3ddae9af15b6e9c9d69d490ce6)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xfa146e...125d](https://polygonscan.com/address/0xfa146e4c8bb19f4bde299613d45d4d152ab0125d)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x7b8616...c748](https://polygonscan.com/address/0x7b861609f4f5977997a6478b09d81a7256d6c748)
- **Confidence:** untethered
- **Instance count:** 4
- **Sample instances:** [0x6b9bb1...6034](https://polygonscan.com/address/0x6b9bb1b20ddcd22c0c82afc53d1ff4c66a6c6034), [0x88914b...8ba7](https://polygonscan.com/address/0x88914b415901c9a9412af2d9815d3a901ce98ba7), [0xcae07f...638b](https://polygonscan.com/address/0xcae07f1e059de9f00891b3cd32ce4c4885b7638b), [0xeda636...b0da](https://polygonscan.com/address/0xeda636bc2de66cfbb24a7380645063582cd6b0da)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x7bb85b...36c3](https://polygonscan.com/address/0x7bb85b553c04cf2dfcbbdac998ea3621e17236c3)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x1cb663...f6b5](https://polygonscan.com/address/0x1cb663511c052ecc256032ae94805f907423f6b5)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x7c68e1...232a](https://polygonscan.com/address/0x7c68e12d007c3f3332bf53596ef01dbe75ee232a)
- **Confidence:** untethered
- **Instance count:** 24
- **Sample instances:** [0x04eb7e...df04](https://polygonscan.com/address/0x04eb7e2be2561c0bf686739e3121acb7de9edf04), [0x0a3b3b...f3c9](https://polygonscan.com/address/0x0a3b3b68383d139e86245dc2c464a4346e10f3c9), [0x0e867e...cc07](https://polygonscan.com/address/0x0e867ed95d23f8e11afa31b8d7cdc0907037cc07), [0x11309b...94bf](https://polygonscan.com/address/0x11309b19817929a4926339179080b2b0012294bf), [0x1f00c7...fe37](https://polygonscan.com/address/0x1f00c76793169b08dcee11e8b835badb685cfe37)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x7d53ac...b97f](https://polygonscan.com/address/0x7d53ac96f4f6b0458230630273cf65366ff6b97f)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x742a6c...8639](https://polygonscan.com/address/0x742a6c927ce1bddc104ef4c7b765d56dcdd28639)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x7d5683...53b5](https://polygonscan.com/address/0x7d568306e1157a92ea4e0d7774575b7e7e6f53b5)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x7bdd3b...13ac](https://polygonscan.com/address/0x7bdd3b7339435b88069b6da9a8ed04892bca13ac)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x7d935e...9839](https://polygonscan.com/address/0x7d935ea920f81c7d756f9fce0a5639dcdb2e9839)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x08cb78...b6c4](https://polygonscan.com/address/0x08cb78d00949de6ce12a85666d6580e2eba9b6c4)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x7dfad9...f26a](https://polygonscan.com/address/0x7dfad91dc7e0b907b4e9cf41d90416f212ecf26a)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x94b392...8cdb](https://polygonscan.com/address/0x94b39206759ef66e950204bafe8e37bc01338cdb), [0xcae3c1...ca20](https://polygonscan.com/address/0xcae3c167d3b0736163a92636de608441716fca20)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x7e3c78...5bbf](https://polygonscan.com/address/0x7e3c7823171a76b7e9b33e8f62bd4b1c34ef5bbf)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0xace32c...8cc7](https://polygonscan.com/address/0xace32c2f0fb239c5fddfc3b49dc812baa56d8cc7), [0xbfa04c...3d43](https://polygonscan.com/address/0xbfa04c81524bac84ed8f8c7bb4c99af397df3d43), [0xc6e504...5ce1](https://polygonscan.com/address/0xc6e504617efdaada1655a52460b3cb5360625ce1)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x7e9850...a3ab](https://polygonscan.com/address/0x7e9850e7a4b836a9962dee8dec1ae4847a85a3ab)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x7b5342...2d11](https://polygonscan.com/address/0x7b5342fb0ab84a9c68bbe391fe640b8d053e2d11), [0xd32d33...ed5e](https://polygonscan.com/address/0xd32d33997792a5db319db64835a3273524f0ed5e)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x7ebbe8...362c](https://polygonscan.com/address/0x7ebbe8c7a628849f4305780177a0a6cf69b6362c)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x262271...0fad](https://polygonscan.com/address/0x2622714f19f682c204cd49af7f4bd9f970b40fad)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x7ebde5...984b](https://polygonscan.com/address/0x7ebde55c4aba6b3b31e03306e833ff92187f984b)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xf8a604...8c49](https://polygonscan.com/address/0xf8a604b47b3a75ac57641bc0d26f9100f8df8c49)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x7ed8d5...3d50](https://polygonscan.com/address/0x7ed8d55b19e16a6cb3c7b57ee720324573243d50)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x1576a3...2433](https://polygonscan.com/address/0x1576a3433d34cf7278eb90fe093ab45beeaf2433), [0x5e72ac...ee53](https://polygonscan.com/address/0x5e72acf063ca0b3e710838208a189d30eee4ee53)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x7f5df3...9d85](https://polygonscan.com/address/0x7f5df3ed616ec0d3dc86b999691da36215a69d85)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xb7ea84...eb3b](https://polygonscan.com/address/0xb7ea8492cd98d32ff2e7450ee18e536e973feb3b)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x80b603...b425](https://polygonscan.com/address/0x80b603bce2d8cc3acb43b6692514b463a16fb425)
- **Confidence:** untethered
- **Instance count:** 4
- **Sample instances:** [0x3e0c57...446d](https://polygonscan.com/address/0x3e0c57fb910adbb0c4fa5a9d68a3086908bd446d), [0x539127...819d](https://polygonscan.com/address/0x539127c953e431027926e586d84a1c7c6430819d), [0x989b17...199f](https://polygonscan.com/address/0x989b17513f7eb4538fc228328bdae49f2af2199f), [0xd087fe...b8cc](https://polygonscan.com/address/0xd087fe6b447892dcb8c2a5a397196a8c948bb8cc)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x80c00a...c9a2](https://polygonscan.com/address/0x80c00a56661904355915f267d2d04bf17283c9a2)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xb81af5...824b](https://polygonscan.com/address/0xb81af58ad8b5dac67694ffe574266498af14824b)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x81718f...b801](https://polygonscan.com/address/0x81718f6fa762bc9c9aa541394e060990c78cb801)
- **Confidence:** untethered
- **Instance count:** 5
- **Sample instances:** [0x00da65...aecb](https://polygonscan.com/address/0x00da652cc13357dd622af5161c97aab66d05aecb), [0x3359c5...ded0](https://polygonscan.com/address/0x3359c505ac888c7dbd9c9739917c57121b2bded0), [0xbf2bc7...b00e](https://polygonscan.com/address/0xbf2bc7eb407ed00937e5bc72501993ac372cb00e), [0xc2a41f...6944](https://polygonscan.com/address/0xc2a41f8744fb5c92ff66fc2d7c25aeba68536944), [0xdb68e7...d5bd](https://polygonscan.com/address/0xdb68e7006ccd6f8d5754a2cf0820469dbe7ed5bd)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8180a5...d757](https://polygonscan.com/address/0x8180a5ca4e3b94045e05a9313777955f7518d757)
- **Confidence:** untethered
- **Instance count:** 6
- **Sample instances:** [0x37e644...c65d](https://polygonscan.com/address/0x37e6449b0e99befd2a708ea048d970f4ff4dc65d), [0x3904ac...1b1b](https://polygonscan.com/address/0x3904ac366d348636694cb6720aa1540e76441b1b), [0x45963d...c665](https://polygonscan.com/address/0x45963db838a070cf7be8e7046fd63e23d376c665), [0x7018c0...d255](https://polygonscan.com/address/0x7018c0bd73255c8966d0b26634e0bc0c7595d255), [0x95d708...9d68](https://polygonscan.com/address/0x95d708e9ee04b0136b98579141624d19c89b9d68)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8246dd...76c4](https://polygonscan.com/address/0x8246dd76d12a2b839fa36bee3a83978648c476c4)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x418e54...d443](https://polygonscan.com/address/0x418e54c543272237a4d640c30d2c26da1ccdd443)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x826c53...2567](https://polygonscan.com/address/0x826c533770b4bc53aa6da31747113595e0032567)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x7b42ef...f455](https://polygonscan.com/address/0x7b42ef9059e6f6cf7d7dbdb1bcb69c136504f455)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x82b758...73a8](https://polygonscan.com/address/0x82b7583c1064bdecc6bf79f97ed10822edc673a8)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x31f6d0...92e5](https://polygonscan.com/address/0x31f6d087341a6678c0ed1dda89a52463264892e5), [0x8dcf8a...cb96](https://polygonscan.com/address/0x8dcf8a6014df14254ef8ff09fc4e34477bd4cb96)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x831204...3609](https://polygonscan.com/address/0x831204031ae1944bf0e18d2b0b6abd0272153609)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x015ff2...1004](https://polygonscan.com/address/0x015ff23ebf25ea7d488a669a22c806f934f31004)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8333c1...3dbc](https://polygonscan.com/address/0x8333c1b5131cc694c3a238e41e50cbc236e73dbc)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x52a65c...0891](https://polygonscan.com/address/0x52a65ce04c492237f1abaf17d32fd55538b90891), [0xeaba3d...e8e8](https://polygonscan.com/address/0xeaba3d3f578ceac3f5f5f0f9d65dc5fa8320e8e8)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x83a76d...1772](https://polygonscan.com/address/0x83a76d3d563a57b3ee7689232c3789e64ba71772)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x05675c...6eca](https://polygonscan.com/address/0x05675cc56588876471076494eb6b34a2be4a6eca), [0xa1218b...5ff8](https://polygonscan.com/address/0xa1218bb427ccdfe8a471ce8928a81cb9b9395ff8), [0xf5391f...a675](https://polygonscan.com/address/0xf5391f3132abb2aa0cbe0fb5f9f924497aa5a675)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x842e03...baa8](https://polygonscan.com/address/0x842e034fe53d6f08f99ee5f2b805c36f9272baa8)
- **Confidence:** untethered
- **Instance count:** 19
- **Sample instances:** [0x04bcba...4a1a](https://polygonscan.com/address/0x04bcba42c11fd3cb9de830371e071c384a3c4a1a), [0x29052d...33d2](https://polygonscan.com/address/0x29052d854a9e544bc093bb666342a43cdc2033d2), [0x2a3115...7e65](https://polygonscan.com/address/0x2a3115ca8543894b25afe598e1640821bd0f7e65), [0x624b29...c1a8](https://polygonscan.com/address/0x624b29d666604d4a171c370b317e1f329199c1a8), [0x6300ed...1ac2](https://polygonscan.com/address/0x6300ed968cd4003098474053714e4f3dcf1b1ac2)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x84385c...a39e](https://polygonscan.com/address/0x84385cd75b66838e87070e5f6df40075ec58a39e)
- **Confidence:** untethered
- **Instance count:** 9
- **Sample instances:** [0x29c1e7...277b](https://polygonscan.com/address/0x29c1e72a5d11e5b8b28282764d17598970f3277b), [0x36fe28...2dd4](https://polygonscan.com/address/0x36fe286cffb10ed7fa7ea65d52ed2402e7c82dd4), [0x45223b...60a7](https://polygonscan.com/address/0x45223bf575f51856f23d8ea2a7d2ef2298c560a7), [0x4dcec3...8d18](https://polygonscan.com/address/0x4dcec34b7326ad82747b8ee246ded154276b8d18), [0x690be8...632d](https://polygonscan.com/address/0x690be8a0be50038b7b338b05072a01362c83632d)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x84c893...dcfa](https://polygonscan.com/address/0x84c8939596f6e5ef74c1e4bfbeddc3c8dba5dcfa)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x75ca66...d5d4](https://polygonscan.com/address/0x75ca667035cc8b52ce3971535d198921359dd5d4)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x84f14f...650b](https://polygonscan.com/address/0x84f14f17bc7975d1d359d2a64be98820e919650b)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x4473d6...a8d2](https://polygonscan.com/address/0x4473d67a232ed6d2146f8f74e0650e02f40ca8d2)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x861d88...ada8](https://polygonscan.com/address/0x861d88ec023ee7d57d5a052afec8daca8c4aada8)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x3098ba...b5d1](https://polygonscan.com/address/0x3098baae9cc813a8bb322c12840cc878b08bb5d1)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x86a1c4...403a](https://polygonscan.com/address/0x86a1c481ef6fa6e1eb4bc20e749b86a8150a403a)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xe88efd...ba42](https://polygonscan.com/address/0xe88efdf1a6cbd3d6c78a11741a618a116816ba42)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x872c79...6d8d](https://polygonscan.com/address/0x872c79fff57542f58f4293f9b7af29f1d38e6d8d)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x2cd58a...1605](https://polygonscan.com/address/0x2cd58aa14692a3e7ad54b39aaf21409889311605)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8739fc...67d6](https://polygonscan.com/address/0x8739fc87435345582c723e97e34e06f080fb67d6)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xf451c0...53a4](https://polygonscan.com/address/0xf451c0edb50a57480cfd9f793c1678abf64b53a4)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x876496...6356](https://polygonscan.com/address/0x876496549b72e08ba3798149048dad17af1a6356)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x4b429d...964a](https://polygonscan.com/address/0x4b429d400aef209cff3de5cb69ce97a38799964a)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x87ced8...6b0e](https://polygonscan.com/address/0x87ced87b942143b1f9d386583ed48ffd75d16b0e)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x9237e9...3233](https://polygonscan.com/address/0x9237e9da4e81a32cd813f720a93f968f25643233)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8829e2...2b79](https://polygonscan.com/address/0x8829e2ceff061fdd37cfb9b264d7b5205be32b79)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x84b961...2d92](https://polygonscan.com/address/0x84b96129607e65debd696d374b302b7864a92d92)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8872c8...6250](https://polygonscan.com/address/0x8872c8a72c116cd881742a817e0e734947fe6250)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xcebce3...ca18](https://polygonscan.com/address/0xcebce318aa46ccd88d5b0f3f120dcca7776bca18)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8941f5...5ce9](https://polygonscan.com/address/0x8941f572e0b8298276a48884a561b10a5d605ce9)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x7e1ed3...856a](https://polygonscan.com/address/0x7e1ed3e02079da2508546690064dec634899856a)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x89480f...6ce3](https://polygonscan.com/address/0x89480f0500d0f075ec41237ab00aa53562b46ce3)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x835f0f...2422](https://polygonscan.com/address/0x835f0f437f21c05a50c6a20b446e3b9119852422), [0x9f63ef...c038](https://polygonscan.com/address/0x9f63efec1ca58be6096d7f26b3c99b1888afc038)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8a47ee...13dc](https://polygonscan.com/address/0x8a47ee6008ab47174a90019413746309ef6d13dc)
- **Confidence:** untethered
- **Instance count:** 20
- **Sample instances:** [0x0ec959...1878](https://polygonscan.com/address/0x0ec959e0ac5ed42f2fc9a2f84a2b4ee5f5691878), [0x19a18e...00c8](https://polygonscan.com/address/0x19a18eb4cb8c94c5cb2e396e5173d642c33f00c8), [0x4ec034...4300](https://polygonscan.com/address/0x4ec034a6782a56e06a74e7ed70a77e8939dd4300), [0x4f9722...342e](https://polygonscan.com/address/0x4f97227802efe85ba213d2edac174feb23e8342e), [0x5c2b9d...d393](https://polygonscan.com/address/0x5c2b9d3f381ad43189ba074001ce352b674dd393)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8baf96...6f53](https://polygonscan.com/address/0x8baf966fb30f0e8eea236452f4bea63144846f53)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x128cd8...b51c](https://polygonscan.com/address/0x128cd8823463042a202a3f01e260092736dfb51c)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8c117c...f593](https://polygonscan.com/address/0x8c117c5b02e556f9d42207b60b3a62b90d23f593)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x780584...b49a](https://polygonscan.com/address/0x7805840f6e642ab72b54e79ad55efb9f5e84b49a)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8c8868...2e4d](https://polygonscan.com/address/0x8c8868c77e0546b34f196595f0e727bc1add2e4d)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x5b8d7e...f5bd](https://polygonscan.com/address/0x5b8d7e4c270b8251e5ff687da620dfe77918f5bd), [0x9897e2...782a](https://polygonscan.com/address/0x9897e253d1b26444508238c4d212647c2ae7782a), [0xcb77b0...6ea3](https://polygonscan.com/address/0xcb77b0496f5352bad0ead647e01c284747a46ea3)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8caa7e...b854](https://polygonscan.com/address/0x8caa7ebe5c6ae6087fb65315d1b5aa7acd33b854)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x87840a...3074](https://polygonscan.com/address/0x87840a88d5f4ed3fd6bc86e8fd2a49e6fb813074)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8cc778...2055](https://polygonscan.com/address/0x8cc77836ebc005d905d042a874fa324fcca72055)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xeb5ba0...a7c8](https://polygonscan.com/address/0xeb5ba03044aefe72b7d3c6e8f345c5004521a7c8)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8d92a3...b32d](https://polygonscan.com/address/0x8d92a322fc0419edd31e12297380cd25e2c4b32d)
- **Confidence:** untethered
- **Instance count:** 5
- **Sample instances:** [0x005dbe...e4b8](https://polygonscan.com/address/0x005dbec2d6dfba90d3193063b82fb8d8f0b4e4b8), [0x02c992...141c](https://polygonscan.com/address/0x02c992561ccebf8ccaa9f0f25dfb1a16b03f141c), [0x0323f3...4a47](https://polygonscan.com/address/0x0323f337dbf4c63d7c34b96116c9339d96e74a47), [0xaa91dd...ed1d](https://polygonscan.com/address/0xaa91dd0860c5622f13f908cdafc756f3f9ebed1d), [0xe581db...7779](https://polygonscan.com/address/0xe581db5e77ac4024cdb3f2a73ff9739c8e6c7779)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8dbc47...78cc](https://polygonscan.com/address/0x8dbc47c27244d6f706ed2d14f6f24d35fc5a78cc)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0xbfa9ec...de92](https://polygonscan.com/address/0xbfa9ecdc50dac567a7d4b434fab58f675a86de92), [0xd4f564...b5e4](https://polygonscan.com/address/0xd4f564e4ffad525e4b5000e7a2a0e723823db5e4), [0xe4f568...5054](https://polygonscan.com/address/0xe4f568e88b4e6688016696671070be8efde75054)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8df30b...0bd6](https://polygonscan.com/address/0x8df30b00d319184d3882a70f7ffef1593abd0bd6)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x55605f...fa62](https://polygonscan.com/address/0x55605f5ecb51cd22c39944a3e86c3f49c0fdfa62)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8df856...8add](https://polygonscan.com/address/0x8df8566e304327cfaa859be01ffe3e7626998add)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xdc997b...9d3a](https://polygonscan.com/address/0xdc997b2eaf47f95a73f3fcc5f569240eb5b89d3a)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8dfe40...253d](https://polygonscan.com/address/0x8dfe404cdbf1bc08ea693631898be884329b253d)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x2d1a4f...5604](https://polygonscan.com/address/0x2d1a4f6c0bf519f1008eb7515104da0849315604)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8e1dfe...ca8e](https://polygonscan.com/address/0x8e1dfeb00c819b4d3b47ccbd97b248dc9f59ca8e)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x7becbf...1a40](https://polygonscan.com/address/0x7becbf8d3484fa942a23179d8fb7b63cb2501a40)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8e6d94...5ab1](https://polygonscan.com/address/0x8e6d9456947730cafe572c494dd32dd4dd705ab1)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xf01e71...0260](https://polygonscan.com/address/0xf01e710c6f7dcc80374ccebe9bc7cf5a99870260)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8ef005...6831](https://polygonscan.com/address/0x8ef00583baa186094d9a34a0a4750c1d1bb86831)
- **Confidence:** untethered
- **Instance count:** 6
- **Sample instances:** [0x4924b6...3dff](https://polygonscan.com/address/0x4924b6e1207efb244433294619a5add08acb3dff), [0xa0fb44...5340](https://polygonscan.com/address/0xa0fb4487c0935f01cbf9f0274fe3cdb21a965340), [0xa623aa...5cf7](https://polygonscan.com/address/0xa623aacf9eb4fc0a29515f08bdabb0d8ce385cf7), [0xb76084...1fe0](https://polygonscan.com/address/0xb7608425e2aba3c8c59db5f6e32c950c169a1fe0), [0xcc8bd8...4436](https://polygonscan.com/address/0xcc8bd8e8a436bc429f451e74c006e8f3d48a4436)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x8f27f8...2754](https://polygonscan.com/address/0x8f27f8e6ccc9437afa65c547fee44d7947032754)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x2f2a2f...7fd0](https://polygonscan.com/address/0x2f2a2ff450e7cab64420cc959bfbe30b78657fd0)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x9035ab...b745](https://polygonscan.com/address/0x9035abf650f35070b8b210aa6f62aa930f84b745)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x370493...7db2](https://polygonscan.com/address/0x3704931d57f4540a6f67a81188c1aa57a4d97db2), [0x92e77c...7184](https://polygonscan.com/address/0x92e77c81b63b26893aea4888b0a33c9e93747184)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x904128...57f0](https://polygonscan.com/address/0x904128548a0f00ed8ba7fa8fd44602695dbc57f0)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x0264bc...5ed6](https://polygonscan.com/address/0x0264bc7413d8daa06502e4421a130dade2385ed6), [0xe4ece5...52f4](https://polygonscan.com/address/0xe4ece58e8086e77072f8ee6d69238837bb1052f4)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x910731...8462](https://polygonscan.com/address/0x9107317fab473a6c797d75a61db1039f83db8462)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x6a4d5f...1cba](https://polygonscan.com/address/0x6a4d5f8385ff6e7fc4ebf6f726e12a958daa1cba)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x9254a9...2740](https://polygonscan.com/address/0x9254a9026bdde2f7e6f590a43cde1890cb792740)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xbb95a6...360c](https://polygonscan.com/address/0xbb95a65f4e2748e0930b548e396810034487360c)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x927e37...30c2](https://polygonscan.com/address/0x927e37b6c068d061eea30419af9a18e7337830c2)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x4e0e99...b76a](https://polygonscan.com/address/0x4e0e99402dbd0466835d9c42bfcb6b250422b76a), [0x9e3a99...191e](https://polygonscan.com/address/0x9e3a99a3919ea34f1a10652aeee8db6aee51191e)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x928203...e8d0](https://polygonscan.com/address/0x9282032f87414653920ef00a513aed1b13dfe8d0)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x3f538e...71d9](https://polygonscan.com/address/0x3f538e8a7ff13cb3c52e1740583f97801d0e71d9)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x939fe4...62be](https://polygonscan.com/address/0x939fe416d8a752561e27abd0a13c1e0ff3f062be)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xc28147...5873](https://polygonscan.com/address/0xc28147d54aabda30270f5ee767d2e694c4625873)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x93ce6a...2522](https://polygonscan.com/address/0x93ce6a68e27dea150202639a93bda83da6f82522)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xf97a12...e6e8](https://polygonscan.com/address/0xf97a128b8d696059b691fabc7aeb410dbb60e6e8)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x93fe44...050a](https://polygonscan.com/address/0x93fe44ccddd89816433dffe5947a32868436050a)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xa9759f...c7aa](https://polygonscan.com/address/0xa9759ffc8cecc5ed9945ced4919b3c46e9d5c7aa)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x94881f...c1ab](https://polygonscan.com/address/0x94881f17ece1daa8101e204227930dd9b068c1ab)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x678d25...fb16](https://polygonscan.com/address/0x678d25be14757c1b16cfa6ec2bd14d3aa69efb16), [0xdd8b95...edb5](https://polygonscan.com/address/0xdd8b951521b7394356e97b78ce67b230c400edb5)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x94deb2...401d](https://polygonscan.com/address/0x94deb2f34eda98b6765566e2341866ba9676401d)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xe56a52...a680](https://polygonscan.com/address/0xe56a52d074c740beb4123518566787595e40a680)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x952da8...bf7b](https://polygonscan.com/address/0x952da848ae882cc509ca72d6cd71323c77bcbf7b)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x7e8a30...e8c8](https://polygonscan.com/address/0x7e8a303cfbcff738fefb640190b1bbaff17be8c8)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x95c2c2...b73d](https://polygonscan.com/address/0x95c2c21aad2014977d85e4c895d448d9ffe0b73d)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xa393b5...8831](https://polygonscan.com/address/0xa393b589c1160b954a460d93228ca8373e6c8831)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x965726...043b](https://polygonscan.com/address/0x965726927b7eee1f9515b7e81c4054a2dfeb043b)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x32dc69...9927](https://polygonscan.com/address/0x32dc69db86ebd6784fe827466421f4aa83a19927)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x97de75...6142](https://polygonscan.com/address/0x97de7580e180631080ecad256fea0bedd0d26142)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x0b7a89...35ba](https://polygonscan.com/address/0x0b7a895c8ec5727faf61ef46b7d39c721c1135ba), [0x8e7f00...c4ae](https://polygonscan.com/address/0x8e7f002a042b2693523fd46675287dfb586ec4ae)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x9844ac...c4af](https://polygonscan.com/address/0x9844ac6f1d1e20621c79b94021cf9fff7368c4af)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x1317fe...d199](https://polygonscan.com/address/0x1317fe389b7992571bc84ff4d9d248225e96d199), [0x353288...e305](https://polygonscan.com/address/0x353288b2db543cb320472c740513341172b9e305)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x98c899...e121](https://polygonscan.com/address/0x98c89980d1eae247ada3636ae27648f78e66e121)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x8bc990...14d6](https://polygonscan.com/address/0x8bc990f14e0f0c2f3be63b818a4f83636ea714d6)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x99491d...2bcd](https://polygonscan.com/address/0x99491dbd56735af9b70398725f9a42c715d42bcd)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xe55f08...9362](https://polygonscan.com/address/0xe55f08576054922b38ad7fda6929cecbdb0e9362)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x9a30c9...7c23](https://polygonscan.com/address/0x9a30c93e8c483b0082be78b1beb73a30ae187c23)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x750ea6...8d53](https://polygonscan.com/address/0x750ea656cc9c149abab18e6d8b88817e0f1a8d53)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x9b04a9...683d](https://polygonscan.com/address/0x9b04a9eee500302980a117f514bc2de0fd1f683d)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x3f66ed...4771](https://polygonscan.com/address/0x3f66ed6508982d992d577bb00e380c09394f4771), [0xbb4e13...1103](https://polygonscan.com/address/0xbb4e13deaa77d4973149ec3482b6dd06b8951103)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x9cb31f...f26b](https://polygonscan.com/address/0x9cb31f34b5536eac33904adafbca07bff05ff26b)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x2fe45c...cd84](https://polygonscan.com/address/0x2fe45cb22f9bb58844bb6815f195a23d2c91cd84), [0x698631...590c](https://polygonscan.com/address/0x6986319c50e0c9244798dccbb3bc8b1681c7590c)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x9d01c8...e101](https://polygonscan.com/address/0x9d01c898795139088c2daf6b17f622fe2199e101)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x0b92f4...51af](https://polygonscan.com/address/0x0b92f40168f52200c52d4891c8d0f1d8e60551af)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x9d3bb6...bdc0](https://polygonscan.com/address/0x9d3bb66715db47f87fc70ed66cf2460b2121bdc0)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x7e233b...58d3](https://polygonscan.com/address/0x7e233b773202f554f9054c3c8198a38fc7a858d3)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x9db0d7...a67d](https://polygonscan.com/address/0x9db0d732616313c016d521c07f32cc6075ada67d)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xa15fe3...d6a4](https://polygonscan.com/address/0xa15fe3a45b0c7017ac1191bd556e3133a7c4d6a4)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0x9dfff4...7c63](https://polygonscan.com/address/0x9dfff42782aeed09edac59a9ec20b03812127c63)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xc34f55...1411](https://polygonscan.com/address/0xc34f55b2257f4c8c99e17938dc7b95aaeb5e1411)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xa14248...0dd3](https://polygonscan.com/address/0xa142484ac8ae2b153b876c27c7702f3767e10dd3)
- **Confidence:** untethered
- **Instance count:** 9
- **Sample instances:** [0x03d8fb...1d70](https://polygonscan.com/address/0x03d8fbba7c7522c54149047dfa4d3fde11491d70), [0x3f527f...3e9d](https://polygonscan.com/address/0x3f527f465784470c0974193b2ceb29f831923e9d), [0x4618e5...8ccc](https://polygonscan.com/address/0x4618e51f036143203f420b8a1563094e3b3e8ccc), [0x4f6957...538f](https://polygonscan.com/address/0x4f6957186577ea8b487cf9b32200df81ff37538f), [0xaba56c...dcb5](https://polygonscan.com/address/0xaba56c4daf8d51383aa841312181aafc97b1dcb5)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xa1a13d...da12](https://polygonscan.com/address/0xa1a13d982bab4a85bafd35df73d361fd1788da12)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x515a2a...ff98](https://polygonscan.com/address/0x515a2a2c133d735fd2d35c8e1f375e1300c7ff98), [0x6fd623...6cf2](https://polygonscan.com/address/0x6fd62393d4057bc4876c2da0c0e9aed034a66cf2)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xa2dfeb...2d2d](https://polygonscan.com/address/0xa2dfeb674d997b68ec5adb0a6fb9136bd45c2d2d)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x46d90a...be7c](https://polygonscan.com/address/0x46d90a00dbad3961657c0328a9d1a7850523be7c), [0xb71129...373f](https://polygonscan.com/address/0xb711297ebf302614c677d575a7df0e8e5752373f)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xa2edf6...7d8a](https://polygonscan.com/address/0xa2edf652e59bd34ddf3e1d868303730216307d8a)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x3c403f...6961](https://polygonscan.com/address/0x3c403f43a2ece56f4fe915f7963db581385c6961)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xa35ed6...b864](https://polygonscan.com/address/0xa35ed6c81a5bb8f54efa0cdb2045ffa040fbb864)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xe3f636...1b69](https://polygonscan.com/address/0xe3f6366373a4eb583b8ec31609ec721b93461b69)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xa3f4fd...5932](https://polygonscan.com/address/0xa3f4fde0152eabaa30c768e9aca68f183bf15932)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x3ac318...f51f](https://polygonscan.com/address/0x3ac31829bdf44f899fd564859465fb7e60d0f51f)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xa4b264...0710](https://polygonscan.com/address/0xa4b2642cc088e383e0d0a60283ed3ed6c3210710)
- **Confidence:** untethered
- **Instance count:** 4
- **Sample instances:** [0x4c57cb...bd58](https://polygonscan.com/address/0x4c57cb4f307874bd466ec02cc999bd0dbba9bd58), [0x5f87fd...c2aa](https://polygonscan.com/address/0x5f87fd157c149035b95a8d0d76f06a9eb336c2aa), [0x90066e...f011](https://polygonscan.com/address/0x90066ea226837dca62a15d35d002d17931aef011), [0x9320ae...90b2](https://polygonscan.com/address/0x9320ae494438d5431919c80c1d8fa1508abd90b2)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xa5824a...04cb](https://polygonscan.com/address/0xa5824a8f9e997e50b62b5e4130b4605b6d5404cb)
- **Confidence:** untethered
- **Instance count:** 5
- **Sample instances:** [0x30d50b...7f7f](https://polygonscan.com/address/0x30d50b36be1fe4bd1d78553f77937caabad37f7f), [0x6f44ad...e392](https://polygonscan.com/address/0x6f44ad6630e332fd3f560566740647915dede392), [0x9d7c34...2118](https://polygonscan.com/address/0x9d7c3432cb529810ed5a6e945f3b1c25bb442118), [0xcad951...94ac](https://polygonscan.com/address/0xcad951cdae2af106e06f3570ee6ee9df509394ac), [0xcfe888...aa06](https://polygonscan.com/address/0xcfe88814f8ef4bcefeb4483046b7229511e8aa06)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xa5fe7d...21c3](https://polygonscan.com/address/0xa5fe7d1e698b14cbcc1be5646f439d90b51021c3)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x65e249...7945](https://polygonscan.com/address/0x65e249ddc09e8ba97ac2381204153b3fb0ab7945)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xa68b78...2646](https://polygonscan.com/address/0xa68b783a4cc3c8ccd8570f0c914da46b292a2646)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xe46a2e...d56c](https://polygonscan.com/address/0xe46a2ecdb5f64d9e938c3307a77addda92afd56c)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xa6a8cf...5535](https://polygonscan.com/address/0xa6a8cf3516b4a56479931ca53583d004e5725535)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x5c858e...9726](https://polygonscan.com/address/0x5c858e41d9a41de356211b6a1ea0d5079a819726), [0xe90291...d95c](https://polygonscan.com/address/0xe902914fa6f597840916afbf1a2b3181ea95d95c)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xa6cb4f...8ad2](https://polygonscan.com/address/0xa6cb4fd560fea347429dea96e675723de17b8ad2)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x03770e...632f](https://polygonscan.com/address/0x03770ef7096854302f000de633e8bd356742632f), [0x054d39...d04d](https://polygonscan.com/address/0x054d397e382dbdb8414fb9afdcfc7974dfb6d04d)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xa81412...e29d](https://polygonscan.com/address/0xa8141206b6b9d122f0bff10e1641e173a672e29d)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x899be9...b915](https://polygonscan.com/address/0x899be9a05c964a3ef8f9fb3262f9092d0422b915)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xa8293d...4153](https://polygonscan.com/address/0xa8293dd8eb52564a35b8357a539146321b934153)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x248ff5...c166](https://polygonscan.com/address/0x248ff5725c65a88cf2d8c04304826242a09cc166)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xa8b784...9bce](https://polygonscan.com/address/0xa8b784eb8ddaf632075a0ab5b7b52e9837749bce)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xf65c1d...ea9b](https://polygonscan.com/address/0xf65c1dc44e85f91af4b75a4c30734a2f5724ea9b)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xa8bda6...6e9c](https://polygonscan.com/address/0xa8bda649cf5637c3aba98c78a3dea2e4548b6e9c)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xe8378d...5454](https://polygonscan.com/address/0xe8378d85d40546d1d8dd572f975425e547815454)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xa8c4e3...9940](https://polygonscan.com/address/0xa8c4e3ce1743d0f2a6c227548c982a7c40569940)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x6b8297...5492](https://polygonscan.com/address/0x6b8297259dd561969dec32558cd5450d32525492), [0xca3266...928a](https://polygonscan.com/address/0xca3266a84132be60237fdd792d7c0fe5c8af928a), [0xe20f6a...a902](https://polygonscan.com/address/0xe20f6abbd829f709736f1282f3a9195dd073a902)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xa8c875...6ede](https://polygonscan.com/address/0xa8c87508135c7e0224af4fdef7775b3b46fa6ede)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x17517d...91a9](https://polygonscan.com/address/0x17517d02675a272f0c38a605a4e36912babd91a9)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xa90693...f93c](https://polygonscan.com/address/0xa90693be6b1d06c956644f370cb9a3516c41f93c)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xe8fd26...e4a9](https://polygonscan.com/address/0xe8fd260461a0e0e7b5440472615e2ab8c736e4a9)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xa9075c...89bf](https://polygonscan.com/address/0xa9075c061b42414b24034890306eb39c1c6989bf)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x200c08...d643](https://polygonscan.com/address/0x200c0898eb26598791de8c3c72f85db8eb1fd643)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xaa2983...07d1](https://polygonscan.com/address/0xaa29836901f942ba25fdbe95515bf320993a07d1)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x7d0d2a...bd0e](https://polygonscan.com/address/0x7d0d2a8a265dca399a7d789a953009c9da58bd0e)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xaa9626...da0f](https://polygonscan.com/address/0xaa96267806d5be3941bf9d8e4efc3dc8eb2bda0f)
- **Confidence:** untethered
- **Instance count:** 31
- **Sample instances:** [0x02a3e4...3dfa](https://polygonscan.com/address/0x02a3e4184b145ee64a6df3c561a3c0c6e2f23dfa), [0x0cfb29...7cc2](https://polygonscan.com/address/0x0cfb295296c7869e5df0e8a4187b554167287cc2), [0x299200...f4c7](https://polygonscan.com/address/0x29920010de717c9c49d8d109e535bd989125f4c7), [0x2f5ffb...2232](https://polygonscan.com/address/0x2f5ffbf82882f2a8366ac1c5cdba710062d22232), [0x390baf...6ac6](https://polygonscan.com/address/0x390baf764ed16b9aaa8054a5274b68912a356ac6)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xab9730...0dcb](https://polygonscan.com/address/0xab9730792311a7a48aa600e35b401ebdcd610dcb)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xe6bcf1...3454](https://polygonscan.com/address/0xe6bcf18b0c3e01f27528b56fbdfcb2b042653454)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xabba59...f48a](https://polygonscan.com/address/0xabba590687dcfe0243d42a7e5379b198d56cf48a)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x7146d0...f912](https://polygonscan.com/address/0x7146d06c280cd21f577a58405de1092e2f89f912)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xac7877...2b26](https://polygonscan.com/address/0xac787717da67b450e221e281579e20dc2a6d2b26)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x8cee4b...422c](https://polygonscan.com/address/0x8cee4b53e1e3c6ac589681789a215ae8a38e422c), [0xbe60a7...521a](https://polygonscan.com/address/0xbe60a7f5fd27674cbf4f15114a469ddbfe46521a)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xad9639...de5c](https://polygonscan.com/address/0xad9639f05189c7a0a8c6197f2b6cc1e7f717de5c)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xe8e7b8...137b](https://polygonscan.com/address/0xe8e7b8ad722187db5bbe3ed2d47abd87e684137b)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xae4b80...dbca](https://polygonscan.com/address/0xae4b80486e1f492efc7d168b1e9663e7d884dbca)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x838a3f...d506](https://polygonscan.com/address/0x838a3ff5fdde129f1d28ccf7a13af04a4768d506)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xae8478...7f82](https://polygonscan.com/address/0xae84788b8ab8a114d416f057f5090f09db7d7f82)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x02d736...56b0](https://polygonscan.com/address/0x02d73618aa94d0ea8c1592fbcb61f2e88ab256b0), [0x05ffdb...3a76](https://polygonscan.com/address/0x05ffdb3d0566d0942324fda4da214d4c15ba3a76), [0xd612ce...ff9a](https://polygonscan.com/address/0xd612ce9e87dab1073b4dfd8dc92e3d539465ff9a)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xb06f88...d0d0](https://polygonscan.com/address/0xb06f886aa9cb4e6da6e08ddfc2562406fb4fd0d0)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x45f865...a9b8](https://polygonscan.com/address/0x45f8654620a1173397ad62ba59e2e0cea5e5a9b8)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xb12bb3...bf32](https://polygonscan.com/address/0xb12bb3823cb80922f9aee2e6a87504fae2d8bf32)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x3c569d...c9fd](https://polygonscan.com/address/0x3c569d3f7250332428550d0abd13fadb6e6ac9fd)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xb3e7e7...2542](https://polygonscan.com/address/0xb3e7e79cea7958c4b05ca6a39acae2d814bc2542)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xbe9aa8...b28c](https://polygonscan.com/address/0xbe9aa82517dbedf2c1c1ae73a48b151593f8b28c)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xb4574d...dbfb](https://polygonscan.com/address/0xb4574d16428f6a65d4abfc626808d711c987dbfb)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x023c27...a02e](https://polygonscan.com/address/0x023c2773aa71b4b1ca7d30dd11748fe32a4fa02e), [0x116dc5...de78](https://polygonscan.com/address/0x116dc56a656d79e4b9224e343b8ffac19a72de78), [0x8b9465...409a](https://polygonscan.com/address/0x8b9465963fa5f93c250f4946a6e388384661409a)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xb4a3c2...2baa](https://polygonscan.com/address/0xb4a3c2debfc033ee3399ad6adf0b4fc74db92baa)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x43d571...9518](https://polygonscan.com/address/0x43d571c1ccc1403756554d1c1399e89f355c9518), [0xe06fda...cd0c](https://polygonscan.com/address/0xe06fdaac5335eb1437700117753b274cd40fcd0c)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xb567a8...8df7](https://polygonscan.com/address/0xb567a8199a09a22a07047bd82fa0b254fb3f8df7)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xa9bcbb...78da](https://polygonscan.com/address/0xa9bcbb496b86a9078b02168a6ae1f789e06578da)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xb5d4f0...9751](https://polygonscan.com/address/0xb5d4f0dcad4321f5ada2f332a07d51f2dd649751)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x135065...2f38](https://polygonscan.com/address/0x1350659c15522506bc0f5f41ab9ccbf6af3c2f38)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xb5dc61...f094](https://polygonscan.com/address/0xb5dc610bc87d1a5255f6010aa6d3f2b267a5f094)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x049807...4f2f](https://polygonscan.com/address/0x0498072d44deac6b8812caaf8d2e4ae02e8d4f2f)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xb5e5ab...a8b5](https://polygonscan.com/address/0xb5e5abe598a42f0681dff4f7ad07820d5e71a8b5)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x6cb8d3...3e41](https://polygonscan.com/address/0x6cb8d3c9e5a3d5d5ba529cbe64024ebcb75c3e41)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xb6bd1b...65bc](https://polygonscan.com/address/0xb6bd1b9b3e6e3512bb354789289f6d8fbc0f65bc)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xb85dda...4900](https://polygonscan.com/address/0xb85ddaaf7190f16845273313f1bb31514fb34900)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xb6d313...021c](https://polygonscan.com/address/0xb6d313246af304d0f7675b4956be23ace6c5021c)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x9740c9...b15a](https://polygonscan.com/address/0x9740c949973a83c7e1f2b1448fc6df8239ddb15a), [0xa45ab4...e2ed](https://polygonscan.com/address/0xa45ab4daeff3c0ce9721bc0c6b6874d8c683e2ed)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xb92587...7d38](https://polygonscan.com/address/0xb92587d49eb9503a3538bad95727fbca255b7d38)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xa5210a...58c1](https://polygonscan.com/address/0xa5210a2fcee4b9114caf4a2cf1e519f7a10658c1)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xb93bab...6110](https://polygonscan.com/address/0xb93bab9dc75977ca6d68f2c8afc3458e9c446110)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xb4eb83...8fbe](https://polygonscan.com/address/0xb4eb83e9d64d697253d5ec7094dbf360d6fa8fbe)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xb93c76...9f1f](https://polygonscan.com/address/0xb93c761ae29daa38350c99dfec559149368a9f1f)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x3aa426...ca35](https://polygonscan.com/address/0x3aa426b601d687de59388a47f5f280d1621bca35), [0xcc8865...efe4](https://polygonscan.com/address/0xcc88655947951771a3194e97d894e7266d17efe4)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xb9f7cb...be04](https://polygonscan.com/address/0xb9f7cb9b6f8566a149a8ea5fc20262ff2aadbe04)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x50ebc1...5353](https://polygonscan.com/address/0x50ebc1852aceb39306dd988e5291720452e35353), [0x8005c4...2080](https://polygonscan.com/address/0x8005c4f306b71b3512c1e38825f3c048f6e12080)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xba368c...8536](https://polygonscan.com/address/0xba368c04ce151d4be478fbaaa18053610bd38536)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x490b5e...67cf](https://polygonscan.com/address/0x490b5eef19094822fdcdbc98d1aac20dc05367cf)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xba641e...852a](https://polygonscan.com/address/0xba641e534038d8ccdf76c6a5f7419100ce24852a)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x7607b1...3ef7](https://polygonscan.com/address/0x7607b17f7012b6e5cbdd353aa8d4aae5578f3ef7)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xbb1648...ffc8](https://polygonscan.com/address/0xbb164824a9fb37eaf57d910fede60035cab4ffc8)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x1ddba7...36c5](https://polygonscan.com/address/0x1ddba7fe852ba28c2ceae976eeb7281109b436c5), [0x2845f9...c630](https://polygonscan.com/address/0x2845f9aa39439728b6366b9ce46702a56f16c630), [0x34b89e...da72](https://polygonscan.com/address/0x34b89ebfcad66768e3acb7c14338af54bffbda72)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xbb50e9...effb](https://polygonscan.com/address/0xbb50e9bcd8d0658d34b0a72cc42612fe404feffb)
- **Confidence:** untethered
- **Instance count:** 7
- **Sample instances:** [0x0d4900...da82](https://polygonscan.com/address/0x0d4900c5e44b2d8fc55eeb21731d357ed257da82), [0x0f201f...936d](https://polygonscan.com/address/0x0f201f0309a285534441d223f8bb1847ecbd936d), [0xb0e1c1...dcd9](https://polygonscan.com/address/0xb0e1c1ad49b8c0de1b542bd5116e10a97861dcd9), [0xb7ce2c...364e](https://polygonscan.com/address/0xb7ce2c41d3584a1071cb52c1a55bd0d2a075364e), [0xd40af8...4de9](https://polygonscan.com/address/0xd40af855d2f64a5e82d30505e8f5ca7ae9204de9)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xbc7b24...3b93](https://polygonscan.com/address/0xbc7b2461bfaa2fb47bd8f632d0c797c3bfd93b93)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xc2cef5...526a](https://polygonscan.com/address/0xc2cef5ab1f3a9239ea4fe8dce91468934a67526a)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xbcae71...9a36](https://polygonscan.com/address/0xbcae711cd25a30a75d44b38bc623fee4f4ab9a36)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x098c8a...3555](https://polygonscan.com/address/0x098c8a97cf6ac52d554af38e110c38b799db3555), [0x5c2fc9...b679](https://polygonscan.com/address/0x5c2fc922c11b01990f6712a4a299b331a1e0b679)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xbcfc29...1db4](https://polygonscan.com/address/0xbcfc298dcb78ce5079c7d16eccf1b01c5e0e1db4)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x631b70...3df4](https://polygonscan.com/address/0x631b7049c45d404b733571fb784a0b35f44e3df4), [0xb9e0dc...3cbc](https://polygonscan.com/address/0xb9e0dcc0fe962466e321eceb16fc748581253cbc), [0xe8b1ab...9aa3](https://polygonscan.com/address/0xe8b1ab6344f6d97281c35e57f4338d1d3bb09aa3)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xbd064f...de65](https://polygonscan.com/address/0xbd064f180ca35addc79ee2ad4cd76a713265de65)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xbaacd2...bf4d](https://polygonscan.com/address/0xbaacd26f2161a06a2021d6879b45f75f7227bf4d)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xbdec44...5f10](https://polygonscan.com/address/0xbdec4413493ba13cea18221c93866e93e1c75f10)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x0550f8...071f](https://polygonscan.com/address/0x0550f81dd51770f1a2ff4d5bce054d03727c071f)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xbe2f03...1b54](https://polygonscan.com/address/0xbe2f0354d970265bfc36d383af77f72736b81b54)
- **Confidence:** untethered
- **Instance count:** 15
- **Sample instances:** [0x02c02e...786c](https://polygonscan.com/address/0x02c02ef3fa7578386b3fe317d49873b47976786c), [0x22a545...a556](https://polygonscan.com/address/0x22a545626226b24dd64dfbcff4d76a500a9fa556), [0x2b68bd...c621](https://polygonscan.com/address/0x2b68bd68f551ce4fdbc81d0ed841b7d0b1fdc621), [0x32036f...76a5](https://polygonscan.com/address/0x32036f85646e53f1957ec9c493f2c2dd53cd76a5), [0x387668...0ab8](https://polygonscan.com/address/0x38766867c0ee0bd530777f5f19b0d0d28d270ab8)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xbf8ddd...a074](https://polygonscan.com/address/0xbf8dddb85a055133bbf3b52c60efe5b65f4ea074)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x1ac33a...8b49](https://polygonscan.com/address/0x1ac33a1f9578b6fee56db9699ceb4b2ca15a8b49), [0x75fcc1...36b9](https://polygonscan.com/address/0x75fcc1ee6a2bad26dcaed5797ffe33304b4036b9)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xbfa0fb...8244](https://polygonscan.com/address/0xbfa0fba3123da9f98bc364ab4077cc7826878244)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xc25f5d...3334](https://polygonscan.com/address/0xc25f5de2f7005e90fbfaa6edb0a6b0ab93733334)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xbfb1ac...871b](https://polygonscan.com/address/0xbfb1ac13b6720bdd7a8a61b949bd3a8b869b871b)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x99b0aa...b840](https://polygonscan.com/address/0x99b0aa097ce99de9de7a6196d3152d74b3f2b840)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xbfccd0...cbc6](https://polygonscan.com/address/0xbfccd0ddad1e2ecc748c9a36c036c0512c48cbc6)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x3e1af1...d4e6](https://polygonscan.com/address/0x3e1af110d4ce58cd322fdeaf42b87fe7aaaed4e6)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc00930...3d55](https://polygonscan.com/address/0xc009300bcfd76ced1e44ed76e2cac1a8bedd3d55)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x06cc70...8da3](https://polygonscan.com/address/0x06cc70c299e087cddb7f9608fe1c1e3764688da3), [0x683ec4...937c](https://polygonscan.com/address/0x683ec44555ddb9b01129e67445301d6729e4937c)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc11201...84ca](https://polygonscan.com/address/0xc11201073fd9cd9b6fbb186b74c7f3bedc8584ca)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x8729bf...5133](https://polygonscan.com/address/0x8729bf696da6005b137fbec1e52a3ae1ebeb5133), [0xee0d7c...3828](https://polygonscan.com/address/0xee0d7cca14c0dd27f5cb8bf4c3207bde94b53828)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc14836...77b4](https://polygonscan.com/address/0xc148368d792937c649bcfe64ccf101dd6d7d77b4)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x6f3d1e...a4c2](https://polygonscan.com/address/0x6f3d1e9ded3a240d1d2a2ed11e060b8d2b56a4c2)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc15d1c...31cc](https://polygonscan.com/address/0xc15d1ce8c41ce2dc01fe68544a93ccb8c0ff31cc)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x7dcacd...bf74](https://polygonscan.com/address/0x7dcacd8e8206b7082ecb60ebaec6bacc49f0bf74)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc2d0d7...9781](https://polygonscan.com/address/0xc2d0d7b1d50b07a14a4b0edcb39af283cd9e9781)
- **Confidence:** untethered
- **Instance count:** 7
- **Sample instances:** [0x10a1e4...c45d](https://polygonscan.com/address/0x10a1e48f317062614ac2c2f9b7b45f8ea62dc45d), [0x15b33b...ee73](https://polygonscan.com/address/0x15b33b0efca374ceb1fcafc46908e3f0e8d2ee73), [0x7e971d...5559](https://polygonscan.com/address/0x7e971d9df18686a3dd41e72530348fa083625559), [0x9b5ca4...cdd4](https://polygonscan.com/address/0x9b5ca45571ae997c2cffcad5ed7bcc6f22a8cdd4), [0xa483c6...5276](https://polygonscan.com/address/0xa483c678a0b95a8168833b562ae6b71360c55276)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc31249...801c](https://polygonscan.com/address/0xc31249ba48763df46388ba5c4e7565d62ed4801c)
- **Confidence:** untethered
- **Instance count:** 33
- **Sample instances:** [0x010897...eda4](https://polygonscan.com/address/0x0108976584aae0e1099c52868f2f7d810899eda4), [0x181650...adf3](https://polygonscan.com/address/0x181650dde0a3a457f9e82b00052184ac3feaadf3), [0x2623d9...27e5](https://polygonscan.com/address/0x2623d9a6cceb732f9e86125e107a18e7832b27e5), [0x32461f...1005](https://polygonscan.com/address/0x32461fcab98a34c3f1ad362dcec6d290a0be1005), [0x32d851...3a95](https://polygonscan.com/address/0x32d8513edda5aef930080f15270984a043933a95)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc3425c...095a](https://polygonscan.com/address/0xc3425ce4ea8ff335648ee8ae4c508daad5d7095a)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x7b0b28...6f14](https://polygonscan.com/address/0x7b0b2800cc780651aefce69306a75cf31e096f14), [0xaebc20...7bfb](https://polygonscan.com/address/0xaebc206718eda20d567b476a0421974b223b7bfb)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc34f50...d84c](https://polygonscan.com/address/0xc34f50e4c91507b25383c51ac4cc4d3be1b0d84c)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x1ff003...c852](https://polygonscan.com/address/0x1ff003e86bfb0cccdd932b0c397f41538f80c852)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc3a1b1...afcd](https://polygonscan.com/address/0xc3a1b1420b6db703e327520d83fe91fbbfc9afcd)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x09bffb...5e6c](https://polygonscan.com/address/0x09bffb65bf0a90e835b071de29ca035b527e5e6c), [0x2325e9...558f](https://polygonscan.com/address/0x2325e981362e0692c9e3193afd3bdd9b2eb1558f), [0x915db0...ef6d](https://polygonscan.com/address/0x915db03831be00aee3d8fc3008a372e21928ef6d)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc3a880...48a7](https://polygonscan.com/address/0xc3a88060b4005825e52c7c30ef0593acd64e48a7)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x3336a8...dd5f](https://polygonscan.com/address/0x3336a8289e47d0389b7fba7a68fe1b45214edd5f)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc4f92d...f278](https://polygonscan.com/address/0xc4f92d7a84d9d9034c313a8149097855ccd1f278)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x46ef54...2040](https://polygonscan.com/address/0x46ef54e39552f00f8b87a350fb5e5389cd772040)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc5d133...e3e3](https://polygonscan.com/address/0xc5d133296e17ba25df0409a6c31607bf3b78e3e3)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x63eebe...a6df](https://polygonscan.com/address/0x63eebef87e2dd8245b158df590c9c4fc6cbaa6df), [0x76fb30...9c9b](https://polygonscan.com/address/0x76fb307b1b8aca6924ac81ee946078e6f0919c9b)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc62b08...d3d7](https://polygonscan.com/address/0xc62b08a5ac22b4de931a3bdb21101dafdb9ad3d7)
- **Confidence:** untethered
- **Instance count:** 5
- **Sample instances:** [0x062fc5...91ff](https://polygonscan.com/address/0x062fc593c65e8599345e22e22020c3011d5491ff), [0x4a176c...a2c2](https://polygonscan.com/address/0x4a176c12a8ecc0e727ecb9d99996f6b2c256a2c2), [0x888fde...2492](https://polygonscan.com/address/0x888fdeaa839b1d6ab95697cde0d05379bfea2492), [0xbbfede...ee15](https://polygonscan.com/address/0xbbfedee8ec268dba503e729ed3657b62ca00ee15), [0xeb6a0c...3e82](https://polygonscan.com/address/0xeb6a0c74653974593a39b48c15d03bb72cd83e82)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc71bfa...29a7](https://polygonscan.com/address/0xc71bfae8c87a0e0e6188e93b1be2fe35a4e629a7)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xb96011...9cb6](https://polygonscan.com/address/0xb96011247c62b1a1eea65ee0bd323853d8649cb6)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc74114...58b3](https://polygonscan.com/address/0xc741142af9a61e0dcc766c796ebaef849e6858b3)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x018090...ad75](https://polygonscan.com/address/0x018090fb361e0fba6ec3e393198a55c67fd4ad75)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc766e1...a705](https://polygonscan.com/address/0xc766e1ab856d48f037def03e85928855ac59a705)
- **Confidence:** untethered
- **Instance count:** 7
- **Sample instances:** [0x225206...4136](https://polygonscan.com/address/0x22520620c91038d5e0be1af6ea383bf49f474136), [0x5d4c6f...33c3](https://polygonscan.com/address/0x5d4c6f0cc5ce18a747d7024f3a16aae7031b33c3), [0x837ad2...0367](https://polygonscan.com/address/0x837ad2e2d0772b808ed92463752e78393ae50367), [0x84bcd2...7f8d](https://polygonscan.com/address/0x84bcd28406b38c480ed07b72fbe10d3f90877f8d), [0xa1f689...5299](https://polygonscan.com/address/0xa1f68994d0f977ffcb39b69c969632afa6525299)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc817ec...efc4](https://polygonscan.com/address/0xc817ecd858b4c45f351ac6ab49deb4ffaaeeefc4)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xc9c453...5fd1](https://polygonscan.com/address/0xc9c45308e4ba010a758c8f293d041c2443685fd1)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc81c21...72cf](https://polygonscan.com/address/0xc81c21fad938fc9614e4b069a3dd999bb5c172cf)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xdbf078...50fa](https://polygonscan.com/address/0xdbf0783395cdd2e1185d20897ddc298b88db50fa)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc831be...bc00](https://polygonscan.com/address/0xc831be0bf3cf0116f7b4012f14edb93a2f17bc00)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x05980c...7465](https://polygonscan.com/address/0x05980c885ae5b004e8057164ece9c5e4e37d7465)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc85a34...a268](https://polygonscan.com/address/0xc85a343b5837ff3cefc420f47614e9175728a268)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x0e547e...1a54](https://polygonscan.com/address/0x0e547e1efcc740711b636d13bcabe9283af41a54)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc87735...c794](https://polygonscan.com/address/0xc87735a7b569184fa406be0cdd9d9d190525c794)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xb2d60f...005c](https://polygonscan.com/address/0xb2d60f1bb101f9b92b26ee0399f2c93a7056005c)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc8e0e3...c6e6](https://polygonscan.com/address/0xc8e0e362d3ed1e453e3c27aa6f8b9dbcee12c6e6)
- **Confidence:** untethered
- **Instance count:** 6
- **Sample instances:** [0x632e36...f104](https://polygonscan.com/address/0x632e36fa21e918e991a9e782ecde9ff0cf7cf104), [0xa75e1f...7250](https://polygonscan.com/address/0xa75e1fea2897e5cf9f744fb64083a67d120c7250), [0xaa6e66...796a](https://polygonscan.com/address/0xaa6e6616b47caea2b1e12fadadac60c77932796a), [0xae7afe...8333](https://polygonscan.com/address/0xae7afe18707b5970bd27ecbf5730d9779f978333), [0xb8f743...d4be](https://polygonscan.com/address/0xb8f743cf4e92da4d7cc181ef7de3a5b83277d4be)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc915de...6db3](https://polygonscan.com/address/0xc915de0a80d4e54cd84898c6b7be012535106db3)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x8cbd8f...34cd](https://polygonscan.com/address/0x8cbd8f5a6301f66e17742a51a9707a705b6534cd)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc92091...aaa7](https://polygonscan.com/address/0xc920919526f32a32447419eb8e26b3676911aaa7)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x788137...0bf3](https://polygonscan.com/address/0x788137485c63c6bef870d2b3fc06eb0715860bf3)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc9b3d4...9dd9](https://polygonscan.com/address/0xc9b3d4124ccf9d2a3271958841f72a0f07a39dd9)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xffe595...e226](https://polygonscan.com/address/0xffe595814e4ecfb1b9eefbbe86a045b888dae226)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xc9ec52...6e28](https://polygonscan.com/address/0xc9ec52a07e5416461a986f4b6cffbcff23146e28)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xe16b02...5284](https://polygonscan.com/address/0xe16b0244877e42cf861b680c9f07d87ffa225284)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xca5871...3d77](https://polygonscan.com/address/0xca5871968029672982d3dc52fd561b0fb3b33d77)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x37f8a6...0f0f](https://polygonscan.com/address/0x37f8a6844593e57971451b0e8b6346c262520f0f)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xcb3ff5...67b4](https://polygonscan.com/address/0xcb3ff57f0d8201ab34b2965f708f805330f567b4)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xd0f8be...7838](https://polygonscan.com/address/0xd0f8be854321cb4e14bf74e556286d91e1237838)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xcc50e8...f8f7](https://polygonscan.com/address/0xcc50e81caf555b89a639d412fe6f86ae704af8f7)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x143614...a3b5](https://polygonscan.com/address/0x143614e99be3568e67f07c770c8199421c04a3b5), [0x1bcb41...146f](https://polygonscan.com/address/0x1bcb41ef822d6c67696edc7ee1d4b8f10161146f)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xcca9e9...d0a3](https://polygonscan.com/address/0xcca9e921f91169849f8aa6b3a6ffb8ffd085d0a3)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x404532...494f](https://polygonscan.com/address/0x404532e1a6da25dcb482d3bd884fa4b9b810494f), [0xba66cd...63d4](https://polygonscan.com/address/0xba66cdc867f9b33109652bab5ba1a5f27ab963d4)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xccd1b2...5ea2](https://polygonscan.com/address/0xccd1b2d70c4d1efb25c527ccce8cc8bdfe7c5ea2)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x611329...223d](https://polygonscan.com/address/0x61132979d7d427f28e95a5d9b32fd2589ed2223d)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xcd8ba7...bd27](https://polygonscan.com/address/0xcd8ba7372ec889a97b68fde9c58c111b1c0cbd27)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xc1feb5...d4e0](https://polygonscan.com/address/0xc1feb51e43f84cd1028a51daa1e6ef5de23dd4e0)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xcdf7b8...81a6](https://polygonscan.com/address/0xcdf7b8e24317c725e2596371d587d53e43dd81a6)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xe0673b...31f0](https://polygonscan.com/address/0xe0673b007011b2e49428f872d6bf35b45e4831f0)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xce6219...edcb](https://polygonscan.com/address/0xce621991d9729ff90fef61512507ebaa6c41edcb)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x6d82c9...a9a0](https://polygonscan.com/address/0x6d82c9daf917c045d7c41b936e62329d4c8ca9a0)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xce6299...d28c](https://polygonscan.com/address/0xce6299dbe81b957fda79df4752ee28f43d51d28c)
- **Confidence:** untethered
- **Instance count:** 4
- **Sample instances:** [0x47b92c...ed8d](https://polygonscan.com/address/0x47b92cbb27423885bf8d96aeac66bcd0c279ed8d), [0x48c91e...141f](https://polygonscan.com/address/0x48c91e293fa31a1327ca107dbf9a4f509158141f), [0x800532...c82c](https://polygonscan.com/address/0x800532af09260c5404ca4925ab97143daa45c82c), [0xa52781...a9ed](https://polygonscan.com/address/0xa5278115b3194f630bd4e99203c304de1612a9ed)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xcea3b3...0967](https://polygonscan.com/address/0xcea3b38ba474a92202611547615b749212f50967)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x3a146f...e698](https://polygonscan.com/address/0x3a146f96e8fa2f2f00107543620cb5f62d9ae698)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xceb269...784d](https://polygonscan.com/address/0xceb2699242dc52f8dcd2cfdf8892dc87c150784d)
- **Confidence:** untethered
- **Instance count:** 10
- **Sample instances:** [0x18d858...a2de](https://polygonscan.com/address/0x18d85835c6189ab91d53c5cf5a9410c610fea2de), [0x2aaf08...9a45](https://polygonscan.com/address/0x2aaf08590c5ef5fb6fe19438028cc900fa219a45), [0x321da7...4f88](https://polygonscan.com/address/0x321da7e307120459443f0879a1841afcbe654f88), [0x4a8ad3...6084](https://polygonscan.com/address/0x4a8ad3fe0ebd63d8f61aa8d68e46db5fa6bd6084), [0x4fb879...9ad2](https://polygonscan.com/address/0x4fb8790bddc83fa40b90b36d9dde5252106e9ad2)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xcf7a6c...7c50](https://polygonscan.com/address/0xcf7a6caee4322c760b6cb79a433cea377b247c50)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x251837...64e4](https://polygonscan.com/address/0x2518377fa28119940511404ac514339a4d9764e4)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xcf967f...246d](https://polygonscan.com/address/0xcf967f4bbebd23cebe658236941e0a7c1048246d)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xce6372...cfe2](https://polygonscan.com/address/0xce6372ec3b086250cff3a4c92b27b8bf94b9cfe2)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xd0348b...46a1](https://polygonscan.com/address/0xd0348b1a31e62e79fe50418ef5f8ff13e6a446a1)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xbc0fed...8228](https://polygonscan.com/address/0xbc0fed02ef7135d46cbb11b8e30811fb31138228)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xd04452...5be0](https://polygonscan.com/address/0xd044529d0e5a85d68f638c72af68ee79f56d5be0)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x038f72...41a0](https://polygonscan.com/address/0x038f72184c2eff16de5da383c8de125d9eaf41a0)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xd08e9c...95a6](https://polygonscan.com/address/0xd08e9ca1642396630992b15468c4cd90f0c195a6)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x625a03...3750](https://polygonscan.com/address/0x625a0367e78b66a9de2595b0a36be699b16d3750), [0x638639...d03e](https://polygonscan.com/address/0x6386397f6af1c1ac76d5fd3fba41197784ddd03e), [0xd5ecdf...3e49](https://polygonscan.com/address/0xd5ecdfa690bcdc08bbd9613ced2b27449a963e49)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xd18621...6714](https://polygonscan.com/address/0xd186214e1b12414a2bdd499960a3e39fb8626714)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xa50a78...b043](https://polygonscan.com/address/0xa50a7862a42779cdc9e9b52797093ffb70c2b043)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xd22b77...907d](https://polygonscan.com/address/0xd22b77ad97e75f4c98c3510a6669fe1a581e907d)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xa1b07b...3bed](https://polygonscan.com/address/0xa1b07b426f748e66649b49cae64980cee5063bed)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xd2d32f...793a](https://polygonscan.com/address/0xd2d32f1b257c47887d6f503b62a15e707d66793a)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x626172...439c](https://polygonscan.com/address/0x626172dd79f9c757c2afa56e108b685ceef2439c)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xd3061a...4459](https://polygonscan.com/address/0xd3061adce4561f5599b89b774736366b73de4459)
- **Confidence:** untethered
- **Instance count:** 4
- **Sample instances:** [0x42a8b2...3918](https://polygonscan.com/address/0x42a8b2168c02c9d41ce59c6651ec72e910753918), [0x91bb8e...cfd5](https://polygonscan.com/address/0x91bb8e07d2b2199a2048e3de11cd9fc86e78cfd5), [0xa183cb...4744](https://polygonscan.com/address/0xa183cbb7f299c1853b64e5906fd29a18d40f4744), [0xe0eae3...eb16](https://polygonscan.com/address/0xe0eae335116f5a2f141e9c65729930a4a9eeeb16)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xd418e9...837c](https://polygonscan.com/address/0xd418e97d62b546bf33e60a24dfe2b9c9b093837c)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x49e2a0...2b96](https://polygonscan.com/address/0x49e2a072648fbb4afe062d6c72a84a16055b2b96)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xd42b63...9d3e](https://polygonscan.com/address/0xd42b63493e0c7ab1879adbc134e8a07eaa999d3e)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x72682f...ba36](https://polygonscan.com/address/0x72682f0f3407a18bfae6cab60bb6afebba61ba36)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xd431bd...16df](https://polygonscan.com/address/0xd431bd2ccc51e8c121b3318a5191f0b0158d16df)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x13577f...75fe](https://polygonscan.com/address/0x13577f240123debde1ae94ae68eaacc387f475fe)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xd47245...28f8](https://polygonscan.com/address/0xd47245e7980262ba46b9722e352ae36a258e28f8)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xdce3c8...73e0](https://polygonscan.com/address/0xdce3c84fc592f08055d01477ca91f3cf9f9673e0)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xd563e6...a62b](https://polygonscan.com/address/0xd563e6a26a1d097da7d980bbe076c567f7fea62b)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x3b0095...eb4b](https://polygonscan.com/address/0x3b0095328fd135b6a2c2e56becb7eeae2adeeb4b)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xd59481...0e55](https://polygonscan.com/address/0xd594811fe4c7f942554756cd82f3585083040e55)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x228f77...673e](https://polygonscan.com/address/0x228f77326875c4f0049f3c17510fad59a572673e)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xd59d83...836d](https://polygonscan.com/address/0xd59d837f1781cb316d98a24004a56bda257d836d)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x6e9809...c063](https://polygonscan.com/address/0x6e98091d6768affbbe0c7b0e1e10b1532cd2c063)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xd642d7...e0ae](https://polygonscan.com/address/0xd642d7904b874e82e2e8b1e0a159e08a99f7e0ae)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xe324ae...7196](https://polygonscan.com/address/0xe324ae054161c331169aabfd9d748ea5da157196)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xd77104...672f](https://polygonscan.com/address/0xd77104bf2f09076912f8ba9c66b8f7dcde0f672f)
- **Confidence:** untethered
- **Instance count:** 6
- **Sample instances:** [0x00f902...5a58](https://polygonscan.com/address/0x00f902778a80edb8a15aaa85012c5fbe9c2b5a58), [0x1f78a4...3d5e](https://polygonscan.com/address/0x1f78a4469010905ab792f74e3ddf7f4a30133d5e), [0x47576c...ffa1](https://polygonscan.com/address/0x47576c419b9ef7f6eaeb5a6593ae3b3e1eeaffa1), [0x51ce9b...77be](https://polygonscan.com/address/0x51ce9bcba101ed839be6c87c89b30b196e3477be), [0x6c20bb...2b72](https://polygonscan.com/address/0x6c20bbd18c0d14ca2cba9468c41d4daee3942b72)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xd8634d...c4bb](https://polygonscan.com/address/0xd8634d32b3bc8fe2144aa2b575f16c7143d2c4bb)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x4915c2...f059](https://polygonscan.com/address/0x4915c2014d723d41ef52c20c85220ca502aaf059)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xd86378...52ea](https://polygonscan.com/address/0xd86378b04edd3903314c36406e3d92a617cc52ea)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xecb29e...cd1d](https://polygonscan.com/address/0xecb29e628239f14ed69cb8fa7e071401b6b3cd1d)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xd97788...238d](https://polygonscan.com/address/0xd9778868e0abcaaddac3dc1ebfc9d7616414238d)
- **Confidence:** untethered
- **Instance count:** 9
- **Sample instances:** [0x20eb32...d537](https://polygonscan.com/address/0x20eb328914bf270544594c04ccc6120c67ccd537), [0x726f7e...808f](https://polygonscan.com/address/0x726f7edf8decdbb854a4a3d111d02d712992808f), [0x776c94...aa8b](https://polygonscan.com/address/0x776c940149cde7722890667de01b8d3893fbaa8b), [0x77dbaf...00d1](https://polygonscan.com/address/0x77dbaf1f149230f4fc1e48d4d65db85b77f200d1), [0x9104ba...b66e](https://polygonscan.com/address/0x9104baeac7061e221d5fa3f6d6fba0470722b66e)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xd985bb...8e4b](https://polygonscan.com/address/0xd985bb21f3e2f4638d26b583eef0eeaeb56c8e4b)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xd7d850...9ff3](https://polygonscan.com/address/0xd7d850c7c94184f05939f0da20fb218a6b539ff3)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xda873f...1db5](https://polygonscan.com/address/0xda873ff72bd4ea9c122c51a837da3f88307d1db5)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x59bed6...7645](https://polygonscan.com/address/0x59bed6882b6b6c3681b684da121856d9d1117645)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xdb8935...3f70](https://polygonscan.com/address/0xdb8935b2e0002e7927fb7a109f31e5f7f2e73f70)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xe3c317...d070](https://polygonscan.com/address/0xe3c3179b800dd505bb2ada741a2702634a0ed070)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xdcfcd5...9fa9](https://polygonscan.com/address/0xdcfcd5dd752492b95ac8c1964c83f992e7e39fa9)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x0e4d23...3f04](https://polygonscan.com/address/0x0e4d23a6e547f90a542653bcb1c9b76893323f04)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xdd9b61...bf11](https://polygonscan.com/address/0xdd9b616c5c57666388a47fda93a519acfc9ebf11)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x9de31a...b69e](https://polygonscan.com/address/0x9de31acb2fa7971dc4252a3a11d3867ab6e5b69e)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xddcd38...8bb8](https://polygonscan.com/address/0xddcd3847954230af6636f7cba082cf3424228bb8)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x19e224...cf03](https://polygonscan.com/address/0x19e22488a97b5cb7c635b8bd20331df269aacf03), [0xa85456...25c1](https://polygonscan.com/address/0xa85456781f164e6523f52ff4284b086c402725c1)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xddd6cf...57cb](https://polygonscan.com/address/0xddd6cf8d3e028c37bf88bb173624ded9689657cb)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xf12a4b...fab7](https://polygonscan.com/address/0xf12a4b5b76b441f26f0336430eb33b8719a1fab7)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xdde4b1...767a](https://polygonscan.com/address/0xdde4b1c964080e4134f04bff39814dd88dd8767a)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x05acc1...17ec](https://polygonscan.com/address/0x05acc1e3d9871f2a1c8059e8a8110bf111df17ec)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xde1fd0...73dc](https://polygonscan.com/address/0xde1fd04317492130a9ca13945c078ba3f5a673dc)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x147664...01ce](https://polygonscan.com/address/0x147664cb69c66dfae52df9e9e43e5bffb32301ce)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xdf0044...b348](https://polygonscan.com/address/0xdf0044722f11d88c603cc0e492204d6f4582b348)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xb0bb95...d9ec](https://polygonscan.com/address/0xb0bb95952e7841efafdb859bd9a1b1e0b574d9ec)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xdfe799...7b57](https://polygonscan.com/address/0xdfe799725197529fa5f4449b4d79f2c02d657b57)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x907345...2c18](https://polygonscan.com/address/0x907345c9d552456fa596b876712a521221762c18)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe01c86...856f](https://polygonscan.com/address/0xe01c860eed0893e265a0407dcbd2f77f7832856f)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x057763...7911](https://polygonscan.com/address/0x057763b32271c194c5d2b867045a6ef9c2537911), [0xee5426...f254](https://polygonscan.com/address/0xee5426fb0a07352f1da92b7069f8e61e9144f254)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe05d5c...195a](https://polygonscan.com/address/0xe05d5ce001ed4d645fc928a42246803a6347195a)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xc54e80...562d](https://polygonscan.com/address/0xc54e806eaae9c61024cb7534d5adacb970f2562d)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe0a86a...9b51](https://polygonscan.com/address/0xe0a86afb73c0922a50d4a985a25507ecda8a9b51)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x105ac4...91e5](https://polygonscan.com/address/0x105ac4b3c5856aa1c4ffe1580903ec4ce87c91e5), [0x138f65...7eed](https://polygonscan.com/address/0x138f658ff32529cd98d786b922ef970917f77eed)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe0cc58...c80c](https://polygonscan.com/address/0xe0cc58231a3b8ea27f9601a014815688d4f7c80c)
- **Confidence:** untethered
- **Instance count:** 13
- **Sample instances:** [0x2523c5...3430](https://polygonscan.com/address/0x2523c547721076a2c54657a33bc8faffbf873430), [0x409382...21d4](https://polygonscan.com/address/0x409382311095f187e4d1d162f76458c80c5421d4), [0x47b0b7...8fb6](https://polygonscan.com/address/0x47b0b7beeda9f74e32fc2f6e1b8c60eaf29d8fb6), [0x48383c...60b8](https://polygonscan.com/address/0x48383c0f412c024baed647df75fb5a88648d60b8), [0x5958a0...993e](https://polygonscan.com/address/0x5958a06d8d8b4ac16903b80d89352c8e547d993e)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe1406b...53f9](https://polygonscan.com/address/0xe1406be3f734fcb38b0e98a8709fe2cf7c1753f9)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x3d392f...6cf2](https://polygonscan.com/address/0x3d392f01fe6cc9e5b9e1afaca49a8d0bd7c66cf2)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe16066...b00c](https://polygonscan.com/address/0xe16066df489608ec0c891eac5fac11673794b00c)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xa8e12e...e103](https://polygonscan.com/address/0xa8e12e115a9a08dbff348838b0863335b6bfe103)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe169fd...a3e8](https://polygonscan.com/address/0xe169fd7ce8d666e117b3438a3e55a4c67bb7a3e8)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x65c528...8e47](https://polygonscan.com/address/0x65c528c25955c8b2ccaff3381972ee65227e8e47)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe173cc...e348](https://polygonscan.com/address/0xe173cc94d4755b72eb9196cf50dbcd2cba54e348)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xad7d94...45c0](https://polygonscan.com/address/0xad7d948f3b864dbeb0a00010051692ebf9cc45c0)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe19146...04a4](https://polygonscan.com/address/0xe191468e32443fa79e8ae8164c0c0b319ea704a4)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x017fc1...d244](https://polygonscan.com/address/0x017fc19312e9925b24c2efcc5a70fa47c2f3d244), [0xe90d5d...03b8](https://polygonscan.com/address/0xe90d5df8f528152482f2f19b37b10c33319b03b8)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe1dc73...ecba](https://polygonscan.com/address/0xe1dc732c84382f596c96129025eb70c9f777ecba)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0xa24722...bbb6](https://polygonscan.com/address/0xa24722806b5a6f2580f6d6d24d395cb21bf0bbb6), [0xefe500...5bda](https://polygonscan.com/address/0xefe5009de4d1cd4902c04ae1d2121104d0d85bda)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe1ec27...b194](https://polygonscan.com/address/0xe1ec2772330ef3ce1a8ad436f06cf15398c4b194)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xeb6572...979d](https://polygonscan.com/address/0xeb657251d1bb12cc492fc14e5343ff9e84b2979d)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe39fb0...0b73](https://polygonscan.com/address/0xe39fb058b6b19a5b1b07d750050f6c56e69d0b73)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x5cd7c1...6349](https://polygonscan.com/address/0x5cd7c1efec89f0a6bcec73ec72b69e7376ed6349)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe406c9...d0c9](https://polygonscan.com/address/0xe406c9b6df9a98bccc6febe105b14c1d54a7d0c9)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xd3c454...c2b4](https://polygonscan.com/address/0xd3c45430dcdf9320a614defbba9d9ee32a37c2b4)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe4ab07...eb5c](https://polygonscan.com/address/0xe4ab076c0dab57f12e804cd76724e550fdc7eb5c)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x1a8bee...ed8a](https://polygonscan.com/address/0x1a8beed6a0c7705bb7f91c5e2511462ac5d3ed8a), [0x73d1f6...d534](https://polygonscan.com/address/0x73d1f69029734ef8ca85e000f8d5dd49e17cd534)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe4f446...4225](https://polygonscan.com/address/0xe4f4460e23571d4dcc75f651b80bb03f25094225)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x93669c...b72b](https://polygonscan.com/address/0x93669cfce302c9971169f8106c850181a217b72b)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe50c51...eb36](https://polygonscan.com/address/0xe50c51c11c30ad77711461ba46971ba6ed3deb36)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xeab57b...ce8e](https://polygonscan.com/address/0xeab57ba78923720a5dafcedcd80d9f6df53cce8e)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe51a04...e074](https://polygonscan.com/address/0xe51a04d4767fc9e5981973666b88a270bdefe074)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x7cf198...b4c2](https://polygonscan.com/address/0x7cf1988f100a2df22263df666a1f1862e98bb4c2)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe57a97...56b8](https://polygonscan.com/address/0xe57a97ac2966e4dc0016fce50e93bc1b9daf56b8)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x122831...1a27](https://polygonscan.com/address/0x1228316297149e8a2cff6faba72aa9adc2a01a27)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe5a993...6b7d](https://polygonscan.com/address/0xe5a99377a4616ae1912bfdfe5840fcf461ac6b7d)
- **Confidence:** untethered
- **Instance count:** 6
- **Sample instances:** [0x093699...0074](https://polygonscan.com/address/0x093699291c7001e70888b7e014592fc70c9c0074), [0x15614a...3ba4](https://polygonscan.com/address/0x15614a91c593caec70ac9b41ed19dc6c569a3ba4), [0x37ff3d...2573](https://polygonscan.com/address/0x37ff3d193b5781a3e0bc5a591f03ab3439d92573), [0xa8ac32...3027](https://polygonscan.com/address/0xa8ac324b56efb016b3334604e3144b7d425b3027), [0xdcd0ca...8291](https://polygonscan.com/address/0xdcd0ca835b366be13facd594eb425d72be4d8291)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe60dab...c0b2](https://polygonscan.com/address/0xe60dabff3e7fa76ed649f6f78c51d6a77729c0b2)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x37e33f...9169](https://polygonscan.com/address/0x37e33f8b991b7dbdea5248fb71fdd50e271d9169), [0x5b1f45...6c8c](https://polygonscan.com/address/0x5b1f4565799897e1f792404f5fff15c1126d6c8c), [0xb29adc...e653](https://polygonscan.com/address/0xb29adcce020d51d3b8cfc66ef6ad570a88bee653)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe69920...44ea](https://polygonscan.com/address/0xe69920c576203554e635ec3db425deafbd5144ea)
- **Confidence:** untethered
- **Instance count:** 10
- **Sample instances:** [0x125b52...6205](https://polygonscan.com/address/0x125b526012f547c1c6756d4f2c1eef624ebf6205), [0x32eae7...ba03](https://polygonscan.com/address/0x32eae711d9b84b371925afa268b1cb6cd40cba03), [0x3ebbae...9f22](https://polygonscan.com/address/0x3ebbae7268810b530ba9e681e0f0181ca2d29f22), [0x42ba08...e415](https://polygonscan.com/address/0x42ba087475e22e8852b70fb1b452f7c84750e415), [0x65675b...9098](https://polygonscan.com/address/0x65675b65e01989036cce1944e5436bc71ffb9098)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe75678...35c7](https://polygonscan.com/address/0xe75678217248b8e15719347f42c79353b2a935c7)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x496cd1...586e](https://polygonscan.com/address/0x496cd143589508cd8b28312bc88881db7dbd586e), [0xa7ff86...2028](https://polygonscan.com/address/0xa7ff86802f46b64765b743842690dc455cc52028)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe7a647...c336](https://polygonscan.com/address/0xe7a6473f7193b4fc93bd70fbcf9f851b955ec336)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x67192b...9735](https://polygonscan.com/address/0x67192bf30de54f0174fedf046b2d95bb43169735), [0xf8c5ac...154f](https://polygonscan.com/address/0xf8c5ac4c2ed9915c1cf25ce54c80785ece65154f)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe8c66f...ce0a](https://polygonscan.com/address/0xe8c66f5c9748bbc9ce98a675817438ace091ce0a)
- **Confidence:** untethered
- **Instance count:** 3
- **Sample instances:** [0x052ea9...b153](https://polygonscan.com/address/0x052ea9594608b92efe0669d3286ec17b748eb153), [0xa18949...a63d](https://polygonscan.com/address/0xa18949ee073edaa79c5200b13938d8ad8887a63d), [0xd83566...ba72](https://polygonscan.com/address/0xd8356674e35e21b4bfc6ad78bc9f703f474eba72)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe8f4d3...76db](https://polygonscan.com/address/0xe8f4d31ccaaea2eff9cc7de1efbdcdd05c7976db)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x44a7ac...fee0](https://polygonscan.com/address/0x44a7ac9ba935798bfc2677f942a859c458a0fee0), [0xd3c806...934a](https://polygonscan.com/address/0xd3c806f17e34f12c6c714a78c0f7f4725bff934a)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe92087...8d0d](https://polygonscan.com/address/0xe92087fa9908de30f8d7a9fc34fd304393bf8d0d)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xdfa353...d91b](https://polygonscan.com/address/0xdfa353df72cfe2b0fa8172c5d7a9f197bbf8d91b)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe9a59b...ec30](https://polygonscan.com/address/0xe9a59bea87f061067a01f5417f70c3862c16ec30)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x30ec37...b5b4](https://polygonscan.com/address/0x30ec378b28b600a1bad3cda393633d86ca17b5b4), [0x6938c6...d39f](https://polygonscan.com/address/0x6938c625323ea091405ab1fa8c8cb502b132d39f)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xe9ec89...5180](https://polygonscan.com/address/0xe9ec891ead0e2a4bd3b14f86b9b4ab8efd1d5180)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x1c3b42...7580](https://polygonscan.com/address/0x1c3b42c78f90dfb86af1b410149244369b487580), [0x27078b...8601](https://polygonscan.com/address/0x27078bbf84a3c1a69017f7c4d3b2f9cbdfb38601)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xea02f5...fae2](https://polygonscan.com/address/0xea02f564664a477286b93712829180be4764fae2)
- **Confidence:** untethered
- **Instance count:** 18
- **Sample instances:** [0x01ab8c...9626](https://polygonscan.com/address/0x01ab8c5d2876f2908cddc1d36042cd433bc29626), [0x15fce7...e908](https://polygonscan.com/address/0x15fce7468bedb4e1d531f33bdf2861ae8299e908), [0x20502e...70f2](https://polygonscan.com/address/0x20502eee89fca3e067a9bfacc8866bef45bb70f2), [0x209fbf...2c11](https://polygonscan.com/address/0x209fbf1f387e96751c28dfc3f9b784294d412c11), [0x33f9a0...7aa7](https://polygonscan.com/address/0x33f9a0ece351619d096e0b822d707e723bbb7aa7)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xeb5ab7...3b7e](https://polygonscan.com/address/0xeb5ab7e396475c3c8ebe040ed3b463dc188d3b7e)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x2faa2a...a1e6](https://polygonscan.com/address/0x2faa2aaa8e685bd8d3375e8d958896df46a9a1e6)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xeba470...956d](https://polygonscan.com/address/0xeba4703fc9d9e6b29a1599c4b64ab3e341cd956d)
- **Confidence:** untethered
- **Instance count:** 15
- **Sample instances:** [0x23f1a1...0304](https://polygonscan.com/address/0x23f1a17379e7d4a8478c87092ce2cf9d48c10304), [0x30e79b...d8b5](https://polygonscan.com/address/0x30e79b98b466fc60c0ad16a96e5520192215d8b5), [0x470e1d...413f](https://polygonscan.com/address/0x470e1dd33a84f732a2bc4bbe59c304002a34413f), [0x4c0299...32fd](https://polygonscan.com/address/0x4c0299eae511c014dfe4963204034f0e8fc032fd), [0x58ff16...b23f](https://polygonscan.com/address/0x58ff1614f9d34ff93743221d5fdc1eb523a3b23f)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xebec1c...8401](https://polygonscan.com/address/0xebec1c6317dc6fd6130da4e9ce4fafb84e698401)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x73d717...e6ad](https://polygonscan.com/address/0x73d7173e287ff6431c310eb3e9e8b0ac0a7be6ad)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xed34e5...9c5e](https://polygonscan.com/address/0xed34e5b06f2bfcc380291026282a1913553e9c5e)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x5e6bdb...9c2a](https://polygonscan.com/address/0x5e6bdba32153e124598b80479fc4075acebf9c2a), [0xd2158b...e15d](https://polygonscan.com/address/0xd2158b04ec21f9ea137d896267101558d576e15d)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xeda42f...75ff](https://polygonscan.com/address/0xeda42fd1cc2db336926588f3aa32dbcbf41d75ff)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xc5d860...66a0](https://polygonscan.com/address/0xc5d86097fafbc87d7cacca877c2599cd900066a0)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xee0d4b...ab89](https://polygonscan.com/address/0xee0d4b66789ef0b091cf98ba5ddd767abe0dab89)
- **Confidence:** untethered
- **Instance count:** 4
- **Sample instances:** [0x48fd24...4e6e](https://polygonscan.com/address/0x48fd24c8e7f23013175db2db947fecd308604e6e), [0x50587c...0395](https://polygonscan.com/address/0x50587c4c64be80c2bebaa0e03fba8998d7540395), [0xcea404...26d1](https://polygonscan.com/address/0xcea404b92980094f2c15db45c900124e73fd26d1), [0xe54f5d...39b9](https://polygonscan.com/address/0xe54f5d4ba8e490c568d96df27300e50cb8a539b9)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xef0987...2fc7](https://polygonscan.com/address/0xef09879057a9ad798438f3ba561bcdd293d72fc7)
- **Confidence:** untethered
- **Instance count:** 5
- **Sample instances:** [0x017ee4...1494](https://polygonscan.com/address/0x017ee44be4cf28c3548150300815e3eeebc91494), [0x52a371...e13b](https://polygonscan.com/address/0x52a371c20863dc7e3866e065cf172a59eb49e13b), [0xb7a033...1ef8](https://polygonscan.com/address/0xb7a0335169fcc7d5badfea73f9e6095df3801ef8), [0xb8ac5f...2639](https://polygonscan.com/address/0xb8ac5fffb6820ea9e7aaba5999bdfacb44382639), [0xca305e...3570](https://polygonscan.com/address/0xca305eececbb8fdf48c933639d99082a7b243570)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xef0da4...1994](https://polygonscan.com/address/0xef0da402e24e8942a6c1adb90d449e28b6751994)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x2c4216...a8c6](https://polygonscan.com/address/0x2c4216f88e515f585d6f3534a8856f25bda1a8c6), [0x67f79d...ffa1](https://polygonscan.com/address/0x67f79dedbc4fe836191f0d7829c2aa115c07ffa1)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf05a87...2c0c](https://polygonscan.com/address/0xf05a8713c35aac832b81648391f3f1cfe1992c0c)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x866431...f710](https://polygonscan.com/address/0x866431f898700bdfee2528c007ba3cc262abf710)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf0f67f...43c4](https://polygonscan.com/address/0xf0f67f962e3dbf8316121d3c9d1f379251ed43c4)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x2767c5...3169](https://polygonscan.com/address/0x2767c58d348b744aea96564e8da64bc9735e3169)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf1a77a...5b94](https://polygonscan.com/address/0xf1a77a3365555c3859b2c4f81ee4daab2f335b94)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xdfa4f7...d852](https://polygonscan.com/address/0xdfa4f787d295f33be3fb25388e3b1df3554fd852)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf20451...6ab3](https://polygonscan.com/address/0xf20451084935435949291f8288d7896f6fe36ab3)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x073f50...4928](https://polygonscan.com/address/0x073f50bcc53e8c2372bc82128233fa1ed6e54928)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf3f4d1...e778](https://polygonscan.com/address/0xf3f4d170ecdde4bc2b2dad4c9c169c67b72be778)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xbf0af5...8919](https://polygonscan.com/address/0xbf0af53c4b590f5a6231b2750c41ee53a83d8919)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf426bb...599d](https://polygonscan.com/address/0xf426bb904fc1123960aff7cfa81df1b5fdcb599d)
- **Confidence:** untethered
- **Instance count:** 11
- **Sample instances:** [0x20ec62...9207](https://polygonscan.com/address/0x20ec623bc17c2f52ed05dd25d5b14233e0849207), [0x2121fb...19f7](https://polygonscan.com/address/0x2121fbdfcdc6383db0341846a3536492ab5d19f7), [0x3a2118...168f](https://polygonscan.com/address/0x3a211888452e63dd19e8337737044ce19070168f), [0x3b6d9f...abbf](https://polygonscan.com/address/0x3b6d9f02c20dcef5a745b9e96737c65fa22fabbf), [0x70c22e...933f](https://polygonscan.com/address/0x70c22e0fd765276fcfc21082f8dcb3dbd132933f)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf46927...a736](https://polygonscan.com/address/0xf469270960ae57fdfe9d8668b19efb792a29a736)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xf361d5...da5d](https://polygonscan.com/address/0xf361d5b5ff702c96a761d23288ca0c1eed35da5d)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf47da0...f486](https://polygonscan.com/address/0xf47da0f68c099b0d5db9dbde5fbaf135daa8f486)
- **Confidence:** untethered
- **Instance count:** 6
- **Sample instances:** [0x3f9766...8d33](https://polygonscan.com/address/0x3f9766df46360e460b16b9def3e2045d35588d33), [0x41130f...6a13](https://polygonscan.com/address/0x41130fd7cdc634cac1c4fc9b51596a2ab0486a13), [0x750250...5959](https://polygonscan.com/address/0x750250209a7171a197cf77893301be6b23165959), [0xae5832...8a5c](https://polygonscan.com/address/0xae58326403939db05b27db9b6111bbd5f6d88a5c), [0xdd96c7...49f6](https://polygonscan.com/address/0xdd96c7620ff73c3ed9123e0a55c310e19d1c49f6)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf4de53...3232](https://polygonscan.com/address/0xf4de53a234dfa4a16fee8e0e01fe1cdd53b53232)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x1b407c...d5e8](https://polygonscan.com/address/0x1b407cc02d7cde648024c740ca83c0860419d5e8)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf50c7b...ef8a](https://polygonscan.com/address/0xf50c7b18c127b43cf0de88ed753f3f8d0235ef8a)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xc78e55...0215](https://polygonscan.com/address/0xc78e552c429ae9702b7f0bb6f821d45c934c0215)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf51514...0a1d](https://polygonscan.com/address/0xf51514c27f6b46ec9e9f6bb08b0f589762d50a1d)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x9734f7...0165](https://polygonscan.com/address/0x9734f793dddc2cec70af973e2e77447cf3bb0165), [0xeeb56d...b2b9](https://polygonscan.com/address/0xeeb56d892f4daf9dba287326f29f612e5559b2b9)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf55b7a...6666](https://polygonscan.com/address/0xf55b7a8cc0d9f3b0d3f35f7e1b31436fe6c66666)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xe95571...54d2](https://polygonscan.com/address/0xe95571ddc550144420f5590e7a50fe1e230554d2)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf5703e...d138](https://polygonscan.com/address/0xf5703e5462da994e2a44d33ed2adafa80dd6d138)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xdd1a9a...717c](https://polygonscan.com/address/0xdd1a9a21462ca0a333a68749974ce88f18c9717c)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf58764...626f](https://polygonscan.com/address/0xf58764c35ed1528ec78df18bebb24fa20f6a626f)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x608eb9...7e48](https://polygonscan.com/address/0x608eb9a6b77edea91bd42abb3670600b2e687e48)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf5926b...8709](https://polygonscan.com/address/0xf5926b6f1f56ca9bfad3eef21bcf15e3a4558709)
- **Confidence:** untethered
- **Instance count:** 4
- **Sample instances:** [0x298668...fe95](https://polygonscan.com/address/0x298668c5d03bc055eaf87b8613049a238b8ffe95), [0x41a322...1643](https://polygonscan.com/address/0x41a3220e746f60813f3ecdde116b56fd59aa1643), [0x737267...3fa0](https://polygonscan.com/address/0x73726747bc115d461040d0be397d700be6543fa0), [0x7fd2bf...544f](https://polygonscan.com/address/0x7fd2bfb87b61f9f9dc72cab52a8a5a913d8c544f)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf60de7...75d7](https://polygonscan.com/address/0xf60de76791c2f09995df52aa1c6e2e7dcf1e75d7)
- **Confidence:** untethered
- **Instance count:** 82
- **Sample instances:** [0x01213b...7055](https://polygonscan.com/address/0x01213b5da866b8f818971fcecf12a5c7406f7055), [0x01f4b4...9fce](https://polygonscan.com/address/0x01f4b4230c78d297c840d542979edfa023749fce), [0x03177e...7e71](https://polygonscan.com/address/0x03177ef481d51c91b6670850781383dad7d27e71), [0x076ad5...cd87](https://polygonscan.com/address/0x076ad50485c830760c8da454f5c391ae42b7cd87), [0x0cc65f...d318](https://polygonscan.com/address/0x0cc65f546acd770113ffaae6cf873bbf7cc0d318)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf65db7...e75f](https://polygonscan.com/address/0xf65db7a3e75f5fce6a2f536303e56567ce46e75f)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x69cd0a...4cd3](https://polygonscan.com/address/0x69cd0a906f6f95b01b2a09137f5f8ccd77234cd3)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf6657b...13fb](https://polygonscan.com/address/0xf6657bbcfeb5c2746e8c609e35018a5a8caa13fb)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x242031...1d38](https://polygonscan.com/address/0x2420315dada4d3f41b2aa1949424381084371d38), [0xe6b9fc...dcfd](https://polygonscan.com/address/0xe6b9fc56a4ee630189034fe38fe79788af4fdcfd)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf6c61e...d537](https://polygonscan.com/address/0xf6c61ee2a7bad38cc06a8b601fa978e9498cd537)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x4e16ea...50ca](https://polygonscan.com/address/0x4e16eaf3f4ebd13688f5a646ad67c696a38a50ca)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf70e5d...d827](https://polygonscan.com/address/0xf70e5d5939b6d201e8bafe3520799edb469cd827)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0xa0e605...0d6b](https://polygonscan.com/address/0xa0e605ee8ba7cc1682aaeaf62e439fb4f2c80d6b), [0xee0108...2747](https://polygonscan.com/address/0xee01085cefe7ca70f3a123c98e67a1c09b132747)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf74836...11d5](https://polygonscan.com/address/0xf748360412601c4c391ac2855eae419460a011d5)
- **Confidence:** untethered
- **Instance count:** 4
- **Sample instances:** [0x2f95a9...d003](https://polygonscan.com/address/0x2f95a99782b4c9689fd87fe3a27a667b3527d003), [0x39ab25...26b9](https://polygonscan.com/address/0x39ab25f30b7d6a6202b9883c492d656cecf026b9), [0xaba201...1cc9](https://polygonscan.com/address/0xaba20125ab22a4427b7df69cdbe706f8623a1cc9), [0xecfa95...0761](https://polygonscan.com/address/0xecfa958ce2e8748db35e5d375bd9205b6e140761)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf81d44...8682](https://polygonscan.com/address/0xf81d443f2765e3d5def92046b00dedb12c0c8682)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x780092...c5c4](https://polygonscan.com/address/0x7800922c80ecc828bc640f21676bdd2a1849c5c4)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf83907...0ef6](https://polygonscan.com/address/0xf839076dcc040e53c39bb3899178264c452a0ef6)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xc90609...5abf](https://polygonscan.com/address/0xc906090783b8734707d395fdafad185650565abf)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf914a2...b547](https://polygonscan.com/address/0xf914a21222b989523003a789a94d5b92a9a7b547)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x47750e...b7aa](https://polygonscan.com/address/0x47750e7c336f20a36f699dd820406e5e67ceb7aa)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xf940ce...413f](https://polygonscan.com/address/0xf940ce19b9cd0b9efd586381b488cefb75eb413f)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x5014c7...165e](https://polygonscan.com/address/0x5014c7f1a85873358a3701ac89bc8a50e830165e), [0x66c3c2...ae8b](https://polygonscan.com/address/0x66c3c28c9fabb3d4f77772c63a015f20baeeae8b)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xfa7de1...2297](https://polygonscan.com/address/0xfa7de15a69a58188a7a8f59ef7435146502b2297)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x40a2aa...68e2](https://polygonscan.com/address/0x40a2aa17a77893629d65ec31920d892baf2c68e2)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xfa9da5...9251](https://polygonscan.com/address/0xfa9da51631268a30ec3ddd1ccbf46c65fad99251)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x515fa0...cc75](https://polygonscan.com/address/0x515fa05c767309b93f6b41e282934f05c628cc75), [0x86775d...15ec](https://polygonscan.com/address/0x86775d0b80b3df266af5377db34ba8f318d715ec)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xfad17d...e749](https://polygonscan.com/address/0xfad17dba050cac1c35185503f3bd834136dfe749)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0x75682f...2615](https://polygonscan.com/address/0x75682f76c9056dca273176bad1cad24a2bbd2615)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xfbfaa5...5287](https://polygonscan.com/address/0xfbfaa579827aee3cb11dd62aa03cebb21ad85287)
- **Confidence:** untethered
- **Instance count:** 2
- **Sample instances:** [0x34ddb7...eed2](https://polygonscan.com/address/0x34ddb7ae0206a9f79ee3277d3bd8437434c2eed2), [0x88b95b...d60a](https://polygonscan.com/address/0x88b95bd282d49f871d803bc49668af7ad628d60a)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xfd9db2...8c4f](https://polygonscan.com/address/0xfd9db2bb94715d7eba01f4391b7710184e168c4f)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xd4af3d...3991](https://polygonscan.com/address/0xd4af3dba477a23e2724e5bc549db7a2b28d33991)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xfeebd3...889e](https://polygonscan.com/address/0xfeebd335d02c9c9b93d17c6c19759edefb3c889e)
- **Confidence:** untethered
- **Instance count:** 5
- **Sample instances:** [0x4a7196...8e2a](https://polygonscan.com/address/0x4a7196e92d61bbbafa9a07f190b718e1e26b8e2a), [0x6befc7...c7f1](https://polygonscan.com/address/0x6befc74f1ebfcc10444cc7427836ecc13ea8c7f1), [0x7dc3bb...aec9](https://polygonscan.com/address/0x7dc3bb1a83caf9f0ef4008ac275a01e73b11aec9), [0x9c7cee...a790](https://polygonscan.com/address/0x9c7cee7be557fec83af5d60852585545282ba790), [0xa7d632...0578](https://polygonscan.com/address/0xa7d632f2fa5572c429591ea3d79b023680c20578)
- **Template audit coverage:** no scope data

### Untethered factory - polygon

- **Template address:** [0xff1ba3...2512](https://polygonscan.com/address/0xff1ba31019373da0adb071b6ddea073d7abd2512)
- **Confidence:** untethered
- **Instance count:** 1
- **Sample instances:** [0xec2ceb...0e87](https://polygonscan.com/address/0xec2cebbdccdf59c531f4ef07900ae392668e0e87)
- **Template audit coverage:** no scope data

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 43 proxies on 1, 10, 56, 137, 146, 8453, 42161, 43114, 59144. 21 follow EIP-1967 / UUPS patterns; 2 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 11 distinct deployer addresses: 0x075da5...5250, 0x263dcd...421c, 0x29483d...177c, 0x2ba937...61ec, 0x39f0bd...1981. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 1902 | 54 | 1848 | 2.8% |
| **Total** | 1902 | 54 | 1848 | 2.8% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2026-01-16 | Hexens | The analyzed resources are located on: https://github.com/KyberNetwork/smart-intent-sc/tree/6c0e85b9 | unspecified | direct | [report](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/kyberswap-dec-25(Final).pdf) |
| 2023-09-06 | Sherlock | 2023.09.06 - Final - KyberSwap Audit Report | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 109 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://docs.kyberswap.com/files/0q1xUbQIJ0ZDOchzOh9l](https://docs.kyberswap.com/files/0q1xUbQIJ0ZDOchzOh9l) - audit_report_link
- [https://docs.kyberswap.com/reference/legacy/audits.md](https://docs.kyberswap.com/reference/legacy/audits.md) - audit_report_link
- [https://docs.kyberswap.com/security/audits.md](https://docs.kyberswap.com/security/audits.md) - audit_report_link
- [https://drive.google.com/file/d/1WORp7ZUBhvafLMBcINai5WqKqbf4R6Bt/view?usp=sharing](https://drive.google.com/file/d/1WORp7ZUBhvafLMBcINai5WqKqbf4R6Bt/view?usp=sharing) - audit_report_link
- [https://github.com/KyberNetwork/kyberswap-documentation/blob/main/getting-started/foundational-topics/decentralized-finance/broken-reference/README.md](https://github.com/KyberNetwork/kyberswap-documentation/blob/main/getting-started/foundational-topics/decentralized-finance/broken-reference/README.md) - audit_report_link
- [https://github.com/KyberNetwork/kyberswap-documentation/blob/main/getting-started/foundational-topics/decentralized-technologies/broken-reference/README.md](https://github.com/KyberNetwork/kyberswap-documentation/blob/main/getting-started/foundational-topics/decentralized-technologies/broken-reference/README.md) - audit_report_link
- [https://github.com/KyberNetwork/kyberswap-documentation/blob/main/getting-started/quickstart/broken-reference/README.md](https://github.com/KyberNetwork/kyberswap-documentation/blob/main/getting-started/quickstart/broken-reference/README.md) - audit_report_link
- [https://github.com/KyberNetwork/kyberswap-documentation/blob/main/kyberswap-solutions/kyberswap-aggregator/broken-reference/README.md](https://github.com/KyberNetwork/kyberswap-documentation/blob/main/kyberswap-solutions/kyberswap-aggregator/broken-reference/README.md) - audit_report_link
- [https://github.com/KyberNetwork/kyberswap-documentation/blob/main/kyberswap-solutions/kyberswap-aggregator/developer-guides/broken-reference/README.md](https://github.com/KyberNetwork/kyberswap-documentation/blob/main/kyberswap-solutions/kyberswap-aggregator/developer-guides/broken-reference/README.md) - audit_report_link
- [https://github.com/KyberNetwork/kyberswap-documentation/blob/main/kyberswap-solutions/kyberswap-interface/user-guides/broken-reference/README.md](https://github.com/KyberNetwork/kyberswap-documentation/blob/main/kyberswap-solutions/kyberswap-interface/user-guides/broken-reference/README.md) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.09.06%20-%20Final%20-%20KyberSwap%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.09.06%20-%20Final%20-%20KyberSwap%20Audit%20Report.pdf) - audit_report_link

### Audit Reports (full list)

- 2026-01-16 - Hexens - The analyzed resources are located on: https://github.com/KyberNetwork/smart-intent-sc/tree/6c0e85b92b7fb49f721219fbe86160be9b60337b - https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/kyberswap-dec-25(Final).pdf
- 2023-09-06 - Sherlock - 2023.09.06 - Final - KyberSwap Audit Report

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/kyberswap.json
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
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $11,026,929.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:46:40.108Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-c067f024
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- 493 factory templates are RPC-enumerated but not docs-listed. Verify template intent before treating instances as audit targets.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $11,026,929.
