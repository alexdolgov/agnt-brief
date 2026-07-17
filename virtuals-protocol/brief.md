# Agentic Audit Brief: Virtuals Protocol

## Project Overview

- Project: Virtuals Protocol (`virtuals-protocol`)
- Website: [https://app.virtuals.io](https://app.virtuals.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.042Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: base
- Contract surface: 83 unique implementations (126 raw deployments)
- DeFi Llama TVL: $24,545,938.26
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

AI Agents. Structurally: 53 project-authored contract(s) across 1 chain(s); 9 ERC20 tokens, 3 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 11 common project-authored base contract(s) (oftcore, oapp, oappsender). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Reppo** (`reppo`) in the AgentFactoryV3, AgentNft, AgentReward, AgentToken, AgentTokenV2, AgentTokenV3 subsystem.
3 audits inherited from `reppo`, scoped to that subsystem.

Total inherited audits: 3. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 135; live-surface contracts included: 124 (116 live, 8 unknown).
- Excluded by liveness: 11 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 36/77 (46.8%)
- Deployed-live implementations: 78 of 83 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 36/78
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 83
- Raw deployments: 126
- Audits discovered: 8 (5 direct, 3 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 7 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 36 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 37.7% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 29 | 37.2% | 2025-04 |
| Zenith | Tier 2 | 20 | 25.6% | 2025-02 |
| unknown | Tier 2 | 10 | 12.8% | 2026-03 |
| Not specified | Tier 2 | 6 | 7.7% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (36)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgentDAO | unknown | base | n/a | 3 deployments: base [`0x17ba20e7a96914eee0be1023e78d8029c1b84cfd`](./contracts/base-8453/0x17ba20e7a96914eee0be1023e78d8029c1b84cfd/); base `0x29dd6413b7a0b6a380326894ff839903c73cd53c`; base `0xaa23ac2db26f40282a6f0f559f965c7fe07a84a1` | ✅ Audited |
| AgentFactory | unknown | base | n/a | [`0x854a94f8f2709106ab41c8f876e37e442c7424c0`](./contracts/base-8453/0x854a94f8f2709106ab41c8f876e37e442c7424c0/) | ✅ Audited |
| AgentFactoryV2 | unknown | base | n/a | 3 deployments: base [`0x2d7a71168f6c2d50f789fddb86c1a2aba9ca9759`](./contracts/base-8453/0x2d7a71168f6c2d50f789fddb86c1a2aba9ca9759/); base `0x5706d5a36c2cc90a6d46e851efcb3c6ac0372eb2`; base `0x94bf9622348cf5598d9a491fa809194cf85a0d61` | ✅ Audited |
| AgentFactoryV2 | unknown | base | n/a | 2 deployments: base [`0x5c621b19c9547274b0105a1f8a84139c84b755b7`](./contracts/base-8453/0x5c621b19c9547274b0105a1f8a84139c84b755b7/); base `0xd4f79b9bf2f601e1d40c6fffc34d5e4c6b2fd8aa` | ✅ Audited |
| AgentFactoryV3 | unknown | base | n/a | 2 deployments: base [`0x0c963cce86249b2b694a9f22138841081bd4eac4`](./contracts/base-8453/0x0c963cce86249b2b694a9f22138841081bd4eac4/); base `0xa0f0f05ff2298a27ffb38302835bd2c65c188110` | ✅ Audited |
| AgentFactoryV3 | unknown | base | n/a | 2 deployments: base [`0x391b803c55c411ece432db81b5f2469edd6bc543`](./contracts/base-8453/0x391b803c55c411ece432db81b5f2469edd6bc543/); base `0x6a98f48f0bc13471900d4ce7a79dc1ee68ef6514` | ✅ Audited |
| AgentFactoryV3 | unknown | base | n/a | 2 deployments: base [`0x71b8efc8bcad65a5d9386d07f2dff57ab4eaf533`](./contracts/base-8453/0x71b8efc8bcad65a5d9386d07f2dff57ab4eaf533/); base `0xfd8c35798eaa6ff8d1902f1b804d3341df09e895` | ✅ Audited |
| AgentFactoryV4 | unknown | base | n/a | [`0x917e496ef09fab65f7cd0336121ddf8f1847bdb4`](./contracts/base-8453/0x917e496ef09fab65f7cd0336121ddf8f1847bdb4/) | ✅ Audited |
| AgentFactoryV4 | registry | base | n/a | [`0xeb8a7b0184373550dcaa79156812f5d33e998c1e`](./contracts/base-8453/0xeb8a7b0184373550dcaa79156812f5d33e998c1e/) | ✅ Audited |
| AgentInference | unknown | base | n/a | [`0x3984023c8389acfe657cf47e209a80e5005a8cee`](./contracts/base-8453/0x3984023c8389acfe657cf47e209a80e5005a8cee/) | ✅ Audited |
| AgentInference | unknown | base | n/a | [`0xcefe543c5cb16170228cd5dfe469c24917119246`](./contracts/base-8453/0xcefe543c5cb16170228cd5dfe469c24917119246/) | ✅ Audited |
| AgentMigrator | unknown | base | n/a | 2 deployments: base [`0x31152df61f65fae41d889c397a3cc18e26d941ad`](./contracts/base-8453/0x31152df61f65fae41d889c397a3cc18e26d941ad/); base `0x41a0f5b16b10748d594b471850bd7488f929beba` | ✅ Audited |
| AgentNft | unknown | base | n/a | [`0xde8299ba9a20f6aca7516735fcae3e04f8ba417b`](./contracts/base-8453/0xde8299ba9a20f6aca7516735fcae3e04f8ba417b/) | ✅ Audited |
| AgentNftV2 | unknown | base | n/a | [`0x342676f14926e40537a2e975e1c51e2b452fcebf`](./contracts/base-8453/0x342676f14926e40537a2e975e1c51e2b452fcebf/) | ✅ Audited |
| AgentNftV2 | token | base | n/a | [`0x50725af160260a316b2673c71c8c21469f6732c0`](./contracts/base-8453/0x50725af160260a316b2673c71c8c21469f6732c0/) | ✅ Audited |
| AgentReward | unknown | base | n/a | [`0x8867eae1b003a6bda5dfeaed80a903a74b109ee0`](./contracts/base-8453/0x8867eae1b003a6bda5dfeaed80a903a74b109ee0/) | ✅ Audited |
| AgentRewardV2 | unknown | base | n/a | 2 deployments: base [`0x0fd537ba21d36fc754bcfcfec9470ff564e1be37`](./contracts/base-8453/0x0fd537ba21d36fc754bcfcfec9470ff564e1be37/); base `0xf1942a9b1b0037a20350358c9fe9ffd96821c685` | ✅ Audited |
| AgentTax | unknown | base | n/a | [`0x7e26173192d72fd6d75a759f888d61c2cdbb64b1`](./contracts/base-8453/0x7e26173192d72fd6d75a759f888d61c2cdbb64b1/) | ✅ Audited |
| AgentTax | unknown | base | n/a | 3 deployments: base [`0x8a101b1833f8f4f0feaf663f3081f5241ebd9d57`](./contracts/base-8453/0x8a101b1833f8f4f0feaf663f3081f5241ebd9d57/); base `0xc37a4bdced74c34971abb340582685a6ac1b5430`; base `0xcad6d6a22c2fa764642d3f682137a99a75f85beb` | ✅ Audited |
| AgentToken | unknown | base | n/a | 7 deployments: base [`0x082cb6e892dd0699b5f0d22f7d2e638bbada5d94`](./contracts/base-8453/0x082cb6e892dd0699b5f0d22f7d2e638bbada5d94/); base `0x1480fbabd722f998600ff187999238d0a3eac4cc`; base `0x766e0671bbbf59370c35a8882366a2085b46eb7b`; base `0x82f04008b4d080e41273d09de7077899daca1c6c`; base `0x9215e9a88c94b9dcad5b02e32cd5cab2a291458b`; base `0xbf60e92dc4d0c181e733d6b6901b95eedd62649e`; base `0xe8a6cc7fef4df174f22e56effd20eb2331316001` | ✅ Audited |
| AgentTokenV2 | token | base | n/a | [`0x7bab5d2e3ebde7293888b3f4c022aaaad88ae2db`](./contracts/base-8453/0x7bab5d2e3ebde7293888b3f4c022aaaad88ae2db/) | ✅ Audited |
| AgentTokenV3 | token | base | n/a | [`0x484f39869b656e33d4002b41e553453d3c76100c`](./contracts/base-8453/0x484f39869b656e33d4002b41e553453d3c76100c/) | ✅ Audited |
| AgentVeToken | unknown | base | n/a | [`0xefb56bfbfa06f6964bfdbc27cd4d24a9952eacf2`](./contracts/base-8453/0xefb56bfbfa06f6964bfdbc27cd4d24a9952eacf2/) | ✅ Audited |
| Bonding | unknown | base | n/a | 3 deployments: base [`0x4c72d304bb37f7f29c4341dd79591235b19e3070`](./contracts/base-8453/0x4c72d304bb37f7f29c4341dd79591235b19e3070/); base `0x53b6d4d2fa9dd920f7ddba4376fbed42251e3fec`; base `0x91ba6e2b41d63e3407cb8589f1a5636ef63d7e47` | ✅ Audited |
| Bonding | unknown | base | n/a | 2 deployments: base [`0xc9a91ccacfdc0001e2c41a56a75384598b70b89f`](./contracts/base-8453/0xc9a91ccacfdc0001e2c41a56a75384598b70b89f/); base `0xf66dea7b3e897cd44a5a231c61b6b4423d613259` | ✅ Audited |
| BondingTax | unknown | base | n/a | 2 deployments: base [`0x42b4ebc52f4e1e2d3fa3d9676f86a21dc16bfe5d`](./contracts/base-8453/0x42b4ebc52f4e1e2d3fa3d9676f86a21dc16bfe5d/); base `0x9883a9f1284a1f0187401195dc1309f6cc167147` | ✅ Audited |
| BondingTax | unknown | base | n/a | [`0x8534ed9dcd2e3b407f6b8cddc60f4860c425e7a5`](./contracts/base-8453/0x8534ed9dcd2e3b407f6b8cddc60f4860c425e7a5/) | ✅ Audited |
| BondingTax | unknown | base | n/a | 2 deployments: base [`0x8c2d2906de2d92548a8bd8f21d34318d74fc1cb0`](./contracts/base-8453/0x8c2d2906de2d92548a8bd8f21d34318d74fc1cb0/); base `0xbf6fcd76292d23d89949b5e6616ba2571ea5370c` | ✅ Audited |
| ContributionNft | unknown | base | n/a | 2 deployments: base [`0x068f5e31d259d4807c66bb647059186a43a1a0d6`](./contracts/base-8453/0x068f5e31d259d4807c66bb647059186a43a1a0d6/); base `0xbf8c24cafa62bdd5f5cb9773ac64f5d489df44c5` | ✅ Audited |
| FGenesis | unknown | base | n/a | [`0x42f4f5a3389ca0bed694de339f4d432acddb1ea9`](./contracts/base-8453/0x42f4f5a3389ca0bed694de339f4d432acddb1ea9/) | ✅ Audited |
| FRouter | unknown | base | n/a | [`0x192df953b317b8aaec96ce48baace2c4087f573f`](./contracts/base-8453/0x192df953b317b8aaec96ce48baace2c4087f573f/) | ✅ Audited |
| FRouter | unknown | base | n/a | 2 deployments: base [`0x3a75de22c7b41b71f2c077de56c9b5ca2454ae56`](./contracts/base-8453/0x3a75de22c7b41b71f2c077de56c9b5ca2454ae56/); base `0x8292b43ab73efac11faf357419c38acf448202c5` | ✅ Audited |
| ServiceNft | unknown | base | n/a | 2 deployments: base [`0x8871c219257b0f17a9a20f3c09626161b1a0674b`](./contracts/base-8453/0x8871c219257b0f17a9a20f3c09626161b1a0674b/); base `0x9ce798ec2a95edde3f1c2db603c38369bf1308a4` | ✅ Audited |
| veVirtual | unknown | base | n/a | [`0x4baffdf399f9d6e010622a85fe9952dee6321e9a`](./contracts/base-8453/0x4baffdf399f9d6e010622a85fe9952dee6321e9a/) | ✅ Audited |
| veVirtual | unknown | base | n/a | [`0x60a203ddcde45fbfb325bdeea93824b5726b4df8`](./contracts/base-8453/0x60a203ddcde45fbfb325bdeea93824b5726b4df8/) | ✅ Audited |
| VirtualGenesisDAO | unknown | base | n/a | [`0xe360abeb3bef5fe23cd5d60e4912c02503f9f67f`](./contracts/base-8453/0xe360abeb3bef5fe23cd5d60e4912c02503f9f67f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountManager | governance | base | n/a | [`0x14dab2b846a4c07b3f52c37e3fd7265c2bcdf485`](./contracts/base-8453/0x14dab2b846a4c07b3f52c37e3fd7265c2bcdf485/) | ⚠️ Unaudited |
| AccountManager | governance | base | n/a | [`0x95d2bc450913cd7575fcc961e889b12a4e512beb`](./contracts/base-8453/0x95d2bc450913cd7575fcc961e889b12a4e512beb/) | ⚠️ Unaudited |
| ACPRouter | adapter | base | n/a | [`0x49ff03047883c2afb4df9a2129122b4d0d951490`](./contracts/base-8453/0x49ff03047883c2afb4df9a2129122b4d0d951490/) | ⚠️ Unaudited |
| ACPRouter | adapter | base | n/a | [`0xa6c9ba866992cfd7fd6460ba912bfa405ada9df0`](./contracts/base-8453/0xa6c9ba866992cfd7fd6460ba912bfa405ada9df0/) | ⚠️ Unaudited |
| ACPSimple | unknown | base | n/a | [`0x6a1fe26d54ab0d3e1e3168f2e0c0cda5cc0a0a4a`](./contracts/base-8453/0x6a1fe26d54ab0d3e1e3168f2e0c0cda5cc0a0a4a/) | ⚠️ Unaudited |
| AgentFactoryV6 | registry | base | n/a | [`0xfc949b4c0852058a6c7529e5b1dcb65f2bf821d3`](./contracts/base-8453/0xfc949b4c0852058a6c7529e5b1dcb65f2bf821d3/) | ⚠️ Unaudited |
| AgentFactoryV7 | registry | base | n/a | [`0x3eb211d1b64bde1af99bfae95fe5063fd1678743`](./contracts/base-8453/0x3eb211d1b64bde1af99bfae95fe5063fd1678743/) | ⚠️ Unaudited |
| AgentFactoryV7 | registry | base | n/a | [`0xc169a24010fd4d47ca7be4b4c7863b76520442a3`](./contracts/base-8453/0xc169a24010fd4d47ca7be4b4c7863b76520442a3/) | ⚠️ Unaudited |
| AgentTaxV2 | unknown | base | n/a | [`0x617fd668c5b0d1906c0b3e7e3e49d1409df0a528`](./contracts/base-8453/0x617fd668c5b0d1906c0b3e7e3e49d1409df0a528/) | ⚠️ Unaudited |
| AgentTaxV2 | unknown | base | n/a | [`0x8fbc314aaa3543b864fd38f62b3d52b9032e55f5`](./contracts/base-8453/0x8fbc314aaa3543b864fd38f62b3d52b9032e55f5/) | ⚠️ Unaudited |
| AgentVeTokenV2 | token | base | n/a | 2 deployments: base [`0x4e37ac6e11ecd5e107ba05dfb5ef664485f24eda`](./contracts/base-8453/0x4e37ac6e11ecd5e107ba05dfb5ef664485f24eda/); base `0xe561031a2992c3b6e0e5eaf6f19ea04d3a5a6756` | ⚠️ Unaudited |
| BondingConfig | governance | base | n/a | [`0x0cd36de47efdb8e032cab9d56d5191fbbb091558`](./contracts/base-8453/0x0cd36de47efdb8e032cab9d56d5191fbbb091558/) | ⚠️ Unaudited |
| BondingConfig | governance | base | n/a | [`0x5c4a1a72c5a11909e318fcc08e52e49299abedaf`](./contracts/base-8453/0x5c4a1a72c5a11909e318fcc08e52e49299abedaf/) | ⚠️ Unaudited |
| BondingV2 | unknown | base | n/a | [`0xc3538ddd84619e761b4c03caf2f785f79889958d`](./contracts/base-8453/0xc3538ddd84619e761b4c03caf2f785f79889958d/) | ⚠️ Unaudited |
| BondingV3 | unknown | base | n/a | [`0xacb04ab3a1076f4e38de1bac1e19e1c60ff343aa`](./contracts/base-8453/0xacb04ab3a1076f4e38de1bac1e19e1c60ff343aa/) | ⚠️ Unaudited |
| BondingV3 | unknown | base | n/a | [`0xfc3167e8e236a5f2600cc28082c2f8be1d9284bb`](./contracts/base-8453/0xfc3167e8e236a5f2600cc28082c2f8be1d9284bb/) | ⚠️ Unaudited |
| BondingV5 | unknown | base | n/a | [`0x1a540088125d00dd3990f9da45ca0859af4d3b01`](./contracts/base-8453/0x1a540088125d00dd3990f9da45ca0859af4d3b01/) | ⚠️ Unaudited |
| BondingV5 | unknown | base | n/a | [`0x492d923f9662a0321d3f9374ce919ca8647e7127`](./contracts/base-8453/0x492d923f9662a0321d3f9374ce919ca8647e7127/) | ⚠️ Unaudited |
| FFactory | unknown | base | n/a | 2 deployments: base [`0x158d7ccaa23dc3c8861c3323ed546e3d25e74309`](./contracts/base-8453/0x158d7ccaa23dc3c8861c3323ed546e3d25e74309/); base `0x82dd5f1f9f2ccd4bef8956c98f109ed4784c96d7` | ⚠️ Unaudited |
| FFactoryV3 | registry | base | n/a | [`0x78238ae69a114c41e5ed28868bc307757dc94b57`](./contracts/base-8453/0x78238ae69a114c41e5ed28868bc307757dc94b57/) | ⚠️ Unaudited |
| FRouterV2 | adapter | base | n/a | [`0xbfce3fbe9ce3a19adb8dbb096ea2cb2bb1073f95`](./contracts/base-8453/0xbfce3fbe9ce3a19adb8dbb096ea2cb2bb1073f95/) | ⚠️ Unaudited |
| FRouterV3 | adapter | base | n/a | [`0x02fe8ec3d9bbf7318eb54590bcc39198a8b47ded`](./contracts/base-8453/0x02fe8ec3d9bbf7318eb54590bcc39198a8b47ded/) | ⚠️ Unaudited |
| FRouterV3 | adapter | base | n/a | [`0xbadb9f3e99f43f8350b158471a3ac58cee4557c5`](./contracts/base-8453/0xbadb9f3e99f43f8350b158471a3ac58cee4557c5/) | ⚠️ Unaudited |
| JobManager | governance | base | n/a | [`0x9c690c267f20c385f8a053f62bc8c7e2d4b83744`](./contracts/base-8453/0x9c690c267f20c385f8a053f62bc8c7e2d4b83744/) | ⚠️ Unaudited |
| JobManager | governance | base | n/a | [`0xca58be70daa08fb793af89561285c1c711794850`](./contracts/base-8453/0xca58be70daa08fb793af89561285c1c711794850/) | ⚠️ Unaudited |
| MemoManager | governance | base | n/a | [`0x98bf57e2f5861f532d3b1d86f8705e9571bd2ee0`](./contracts/base-8453/0x98bf57e2f5861f532d3b1d86f8705e9571bd2ee0/) | ⚠️ Unaudited |
| MemoManager | governance | base | n/a | [`0x9c6c5a7125934cc6a711a7bf44f3cdcccf91f30c`](./contracts/base-8453/0x9c6c5a7125934cc6a711a7bf44f3cdcccf91f30c/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0x0b3e328455c4059eeb9e3f84b5543f74e24e7e1b`](./contracts/base-8453/0x0b3e328455c4059eeb9e3f84b5543f74e24e7e1b/) | ⚠️ Unaudited |
| PaymentManager | governance | base | n/a | [`0x8e4fa97e4e8d0b8618065809197e1bbf4fab19ab`](./contracts/base-8453/0x8e4fa97e4e8d0b8618065809197e1bbf4fab19ab/) | ⚠️ Unaudited |
| PaymentManager | governance | base | n/a | [`0xef4364fe4487353df46eb7c811d4fac78b856c7f`](./contracts/base-8453/0xef4364fe4487353df46eb7c811d4fac78b856c7f/) | ⚠️ Unaudited |
| PoolHelper | core_logic | base | n/a | 6 deployments: base [`0x423ab54e2be9e960b441b1299fb8fa8ad8f8a407`](./contracts/base-8453/0x423ab54e2be9e960b441b1299fb8fa8ad8f8a407/); base `0x788d54649799f3df86486876e959f26d549bd823`; base `0x79653c9f3efa13dae8b07883a4d1e180c7003a81`; base `0xbb1dd90e2550f18d2be10f17bbd5eb5fc39a8c7b`; base `0xc839043dd869eb3496364ee7018144c8a3ebcc4d`; base `0xd34d47236d0b4ab50de793b37ac97adfb21e2089` | ⚠️ Unaudited |
| stakedToken | unknown | base | n/a | 2 deployments: base [`0x59e73e09d98974e1dceed4baf264f71fe7844c92`](./contracts/base-8453/0x59e73e09d98974e1dceed4baf264f71fe7844c92/); base `0x785a196826b7b54c7baa0eb563739eca331b91f8` | ⚠️ Unaudited |
| StakingDelegationHelper2 | periphery | base | n/a | 5 deployments: base [`0x88e299f9124c0c0924f4308d181b51c2690c75a3`](./contracts/base-8453/0x88e299f9124c0c0924f4308d181b51c2690c75a3/); base `0x9d1a260804c8f28510e6594344abd7c46079817e`; base `0xbc8b1e9ea09e278b9cd3e80a287edb5bc348948e`; base `0xd64c8adcafa71ae3da09b7732d23fe90fd0b80a1`; base `0xf73ecd2af764991b5aab59b310e81b6d5916e603` | ⚠️ Unaudited |
| TaxSwapper | adapter | base | n/a | 2 deployments: base [`0x107e58aa0ecb30b998dad5c5c9ab89b6aa1c8b72`](./contracts/base-8453/0x107e58aa0ecb30b998dad5c5c9ab89b6aa1c8b72/); base `0x8e0253da409faf5918fe2a15979fd878f4495d0e` | ⚠️ Unaudited |
| TBABonus | unknown | base | n/a | [`0xdbead79c822f228fbb141a221cabab4687838804`](./contracts/base-8453/0xdbead79c822f228fbb141a221cabab4687838804/) | ⚠️ Unaudited |
| TimeLockStaking | governance | base | n/a | [`0x33e34b8684565fcf6a9dd52a7e92c4e70211a045`](./contracts/base-8453/0x33e34b8684565fcf6a9dd52a7e92c4e70211a045/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x2fb74722d53dac5290515c477950f4292da06ccf`](./contracts/base-8453/0x2fb74722d53dac5290515c477950f4292da06ccf/); base `0x652bf29626356b7fadc2b5205d4f81be9743da1c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x45c60adf130f21d54381be129bbe2abd0c574654`](./contracts/base-8453/0x45c60adf130f21d54381be129bbe2abd0c574654/); base `0xcc02f5eadc7a42bb9e0f5edf818cac739a21f9f8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | base | n/a | 2 deployments: base [`0x488db0978b34c6fd901760b9024b565c1117c7c8`](./contracts/base-8453/0x488db0978b34c6fd901760b9024b565c1117c7c8/); base `0xd7d3c85b4f2e9bee1998cd2e98820e647792d284` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x6e1c28791d9e9ef8b0d1821bb74fc5b5a3907641`](./contracts/base-8453/0x6e1c28791d9e9ef8b0d1821bb74fc5b5a3907641/); base `0xc02011a3189d76fe13f767bee0f93baddc73b395` | ⚠️ Unaudited |
| VirtualOFTAdapter | adapter | base | n/a | [`0xa5a1afbff720f79f1f7833aafbdcee87770bbc93`](./contracts/base-8453/0xa5a1afbff720f79f1f7833aafbdcee87770bbc93/) | ⚠️ Unaudited |
| VirtualProtocolDAOV2 | unknown | base | n/a | [`0xa1a98f9aa6c56652e4f306d38a78fff554776665`](./contracts/base-8453/0xa1a98f9aa6c56652e4f306d38a78fff554776665/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x13ee19f627d657db7965c7be02334057ff069950` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x33f8120a17d504609e49c8eed4a0480f09e736af` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a5138c121bff6ac0aef60f3492e0243595ba0fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x70b0a7224ef45e2e3aa03743eca86159644630be` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa317137595ae79a31c36fae0012022e12d5603d8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2026-03-24.pdf](https://github.com/Reppo-Labs/audit-reports/blob/main/2026-03-24.pdf) | unknown | Audit | 2026-03 | fresh | Inherited from Reppo — forked code, scoped to AgentFactoryV3, AgentNft, AgentReward, AgentToken, +2 more | inherited | 17 | n/a |
| [2025-07-15.pdf](https://github.com/Reppo-Labs/audit-reports/blob/main/2025-07-15.pdf) | unknown | Audit | 2025-07 | aging | Inherited from Reppo — forked code, scoped to AgentFactoryV3, AgentNft, AgentReward, AgentToken, +2 more | inherited | 17 | n/a |
| [2025-06-25.pdf](https://github.com/Reppo-Labs/audit-reports/blob/main/2025-06-25.pdf) | unknown | Audit | 2025-06 | aging | Inherited from Reppo — forked code, scoped to AgentFactoryV3, AgentNft, AgentReward, AgentToken, +2 more | inherited | 17 | n/a |
| [code4rena.com/reports/2025-04-virtuals-protocol](https://code4rena.com/reports/2025-04-virtuals-protocol) | Code4rena | Contest | 2025-04 | aging | Direct | contract_name | 54 | high |
| [spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf](https://4242579099-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Frrll8DWDA3BJwEBqOtxm%2Fuploads%2FEiyuRkwRb6NOUYtBLtzk%2FVirtuals%20Launchpad%20Smart%20Contract%20Suite%20Audit%20Report.pdf) | Not specified | Audit | 2025-04 | aging | Direct | contract_name | 12 | high |
| [spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf](https://4242579099-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Frrll8DWDA3BJwEBqOtxm%2Fuploads%2FQIpnKIH0Dx2tXiTyTyJu%2FVirtuals%20Protocol%20-%20Zenith%20Audit%20Report%20for%20Genesis.pdf) | Zenith | Audit | 2025-02 | aging | Direct | contract_name | 42 | high |
| [spaces/rrll8DWDA3BJwEBqOtxm/uploads/zJ0JLeYiaEj32wwEna7w/Genesis Token Contract Audit Report.pdf](https://4242579099-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Frrll8DWDA3BJwEBqOtxm%2Fuploads%2FzJ0JLeYiaEj32wwEna7w%2FGenesis%20Token%20Contract%20Audit%20Report.pdf) | Not specified | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [spaces/rrll8DWDA3BJwEBqOtxm/uploads/On9IPp8c4x9oIPxOSRxn/$VIRTUAL Staking Contract Audit Report.pdf](https://4242579099-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Frrll8DWDA3BJwEBqOtxm%2Fuploads%2FOn9IPp8c4x9oIPxOSRxn%2F%24VIRTUAL%20Staking%20Contract%20Audit%20Report.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x14dab2b846a4c07b3f52c37e3fd7265c2bcdf485`](./contracts/base-8453/0x14dab2b846a4c07b3f52c37e3fd7265c2bcdf485/) | AccountManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x95d2bc450913cd7575fcc961e889b12a4e512beb`](./contracts/base-8453/0x95d2bc450913cd7575fcc961e889b12a4e512beb/) | AccountManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x49ff03047883c2afb4df9a2129122b4d0d951490`](./contracts/base-8453/0x49ff03047883c2afb4df9a2129122b4d0d951490/) | ACPRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa6c9ba866992cfd7fd6460ba912bfa405ada9df0`](./contracts/base-8453/0xa6c9ba866992cfd7fd6460ba912bfa405ada9df0/) | ACPRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6a1fe26d54ab0d3e1e3168f2e0c0cda5cc0a0a4a`](./contracts/base-8453/0x6a1fe26d54ab0d3e1e3168f2e0c0cda5cc0a0a4a/) | ACPSimple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfc949b4c0852058a6c7529e5b1dcb65f2bf821d3`](./contracts/base-8453/0xfc949b4c0852058a6c7529e5b1dcb65f2bf821d3/) | AgentFactoryV6 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3eb211d1b64bde1af99bfae95fe5063fd1678743`](./contracts/base-8453/0x3eb211d1b64bde1af99bfae95fe5063fd1678743/) | AgentFactoryV7 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc169a24010fd4d47ca7be4b4c7863b76520442a3`](./contracts/base-8453/0xc169a24010fd4d47ca7be4b4c7863b76520442a3/) | AgentFactoryV7 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x617fd668c5b0d1906c0b3e7e3e49d1409df0a528`](./contracts/base-8453/0x617fd668c5b0d1906c0b3e7e3e49d1409df0a528/) | AgentTaxV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8fbc314aaa3543b864fd38f62b3d52b9032e55f5`](./contracts/base-8453/0x8fbc314aaa3543b864fd38f62b3d52b9032e55f5/) | AgentTaxV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4e37ac6e11ecd5e107ba05dfb5ef664485f24eda`](./contracts/base-8453/0x4e37ac6e11ecd5e107ba05dfb5ef664485f24eda/) | AgentVeTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0cd36de47efdb8e032cab9d56d5191fbbb091558`](./contracts/base-8453/0x0cd36de47efdb8e032cab9d56d5191fbbb091558/) | BondingConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5c4a1a72c5a11909e318fcc08e52e49299abedaf`](./contracts/base-8453/0x5c4a1a72c5a11909e318fcc08e52e49299abedaf/) | BondingConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc3538ddd84619e761b4c03caf2f785f79889958d`](./contracts/base-8453/0xc3538ddd84619e761b4c03caf2f785f79889958d/) | BondingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xacb04ab3a1076f4e38de1bac1e19e1c60ff343aa`](./contracts/base-8453/0xacb04ab3a1076f4e38de1bac1e19e1c60ff343aa/) | BondingV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfc3167e8e236a5f2600cc28082c2f8be1d9284bb`](./contracts/base-8453/0xfc3167e8e236a5f2600cc28082c2f8be1d9284bb/) | BondingV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a540088125d00dd3990f9da45ca0859af4d3b01`](./contracts/base-8453/0x1a540088125d00dd3990f9da45ca0859af4d3b01/) | BondingV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x492d923f9662a0321d3f9374ce919ca8647e7127`](./contracts/base-8453/0x492d923f9662a0321d3f9374ce919ca8647e7127/) | BondingV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x158d7ccaa23dc3c8861c3323ed546e3d25e74309`](./contracts/base-8453/0x158d7ccaa23dc3c8861c3323ed546e3d25e74309/) | FFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x78238ae69a114c41e5ed28868bc307757dc94b57`](./contracts/base-8453/0x78238ae69a114c41e5ed28868bc307757dc94b57/) | FFactoryV3 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbfce3fbe9ce3a19adb8dbb096ea2cb2bb1073f95`](./contracts/base-8453/0xbfce3fbe9ce3a19adb8dbb096ea2cb2bb1073f95/) | FRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02fe8ec3d9bbf7318eb54590bcc39198a8b47ded`](./contracts/base-8453/0x02fe8ec3d9bbf7318eb54590bcc39198a8b47ded/) | FRouterV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbadb9f3e99f43f8350b158471a3ac58cee4557c5`](./contracts/base-8453/0xbadb9f3e99f43f8350b158471a3ac58cee4557c5/) | FRouterV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9c690c267f20c385f8a053f62bc8c7e2d4b83744`](./contracts/base-8453/0x9c690c267f20c385f8a053f62bc8c7e2d4b83744/) | JobManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xca58be70daa08fb793af89561285c1c711794850`](./contracts/base-8453/0xca58be70daa08fb793af89561285c1c711794850/) | JobManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x98bf57e2f5861f532d3b1d86f8705e9571bd2ee0`](./contracts/base-8453/0x98bf57e2f5861f532d3b1d86f8705e9571bd2ee0/) | MemoManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9c6c5a7125934cc6a711a7bf44f3cdcccf91f30c`](./contracts/base-8453/0x9c6c5a7125934cc6a711a7bf44f3cdcccf91f30c/) | MemoManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0b3e328455c4059eeb9e3f84b5543f74e24e7e1b`](./contracts/base-8453/0x0b3e328455c4059eeb9e3f84b5543f74e24e7e1b/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8e4fa97e4e8d0b8618065809197e1bbf4fab19ab`](./contracts/base-8453/0x8e4fa97e4e8d0b8618065809197e1bbf4fab19ab/) | PaymentManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xef4364fe4487353df46eb7c811d4fac78b856c7f`](./contracts/base-8453/0xef4364fe4487353df46eb7c811d4fac78b856c7f/) | PaymentManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x423ab54e2be9e960b441b1299fb8fa8ad8f8a407`](./contracts/base-8453/0x423ab54e2be9e960b441b1299fb8fa8ad8f8a407/) | PoolHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x59e73e09d98974e1dceed4baf264f71fe7844c92`](./contracts/base-8453/0x59e73e09d98974e1dceed4baf264f71fe7844c92/) | stakedToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x88e299f9124c0c0924f4308d181b51c2690c75a3`](./contracts/base-8453/0x88e299f9124c0c0924f4308d181b51c2690c75a3/) | StakingDelegationHelper2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x107e58aa0ecb30b998dad5c5c9ab89b6aa1c8b72`](./contracts/base-8453/0x107e58aa0ecb30b998dad5c5c9ab89b6aa1c8b72/) | TaxSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdbead79c822f228fbb141a221cabab4687838804`](./contracts/base-8453/0xdbead79c822f228fbb141a221cabab4687838804/) | TBABonus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x33e34b8684565fcf6a9dd52a7e92c4e70211a045`](./contracts/base-8453/0x33e34b8684565fcf6a9dd52a7e92c4e70211a045/) | TimeLockStaking | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa5a1afbff720f79f1f7833aafbdcee87770bbc93`](./contracts/base-8453/0xa5a1afbff720f79f1f7833aafbdcee87770bbc93/) | VirtualOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa1a98f9aa6c56652e4f306d38a78fff554776665`](./contracts/base-8453/0xa1a98f9aa6c56652e4f306d38a78fff554776665/) | VirtualProtocolDAOV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 74 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=110, inherited_name_remap=51

Zero-match audit list:

- [21063] spaces/rrll8DWDA3BJwEBqOtxm/uploads/zJ0JLeYiaEj32wwEna7w/Genesis Token Contract Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
