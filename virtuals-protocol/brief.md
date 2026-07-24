# Agentic Audit Brief: Virtuals Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Virtuals Protocol (`virtuals-protocol`)
- Website: [https://www.virtuals.io/](https://www.virtuals.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, ethereum
- Contract surface: 201 unique implementations (268 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $24,545,938.26
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Virtuals Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across base, ethereum. Structural roles: 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc165 (1), erc20 (1), ownable (1)
- Frameworks: layerzero (1), openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x44ff8620b8ca30902395a7bd3f2407e1a091bf73`, chain 1)
- UnnamedContract (`0xf8dd39c71a278fe9f4377d009d7627ef140f809e`, chain 8453)
- OptimismMintableERC20 (`0x0b3e328455c4059eeb9e3f84b5543f74e24e7e1b`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 198 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 40
- Confirmed-live implementations: 3 of 201 unique; 198 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/86
- Verified + Unaudited implementations: 86
- Verified by bytecode match: 0
- Unverified implementations: 115
- Unique implementations: 201
- Raw deployments: 268
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (86)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x14dab2b846a4c07b3f52c37e3fd7265c2bcdf485`; base `0x62c98b09e75de6260c0da53b033a9728dc7d2c10` | ⚠️ Unaudited |
| AccountManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x95d2bc450913cd7575fcc961e889b12a4e512beb` | ⚠️ Unaudited |
| ACPRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x361deccfc381aca339218d2a148bc08943d02cdb`; base `0xa6c9ba866992cfd7fd6460ba912bfa405ada9df0` | ⚠️ Unaudited |
| ACPRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x49ff03047883c2afb4df9a2129122b4d0d951490` | ⚠️ Unaudited |
| ACPSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x48c15725c96a6c9f65db544044bb5ac432338145`; base `0x6a1fe26d54ab0d3e1e3168f2e0c0cda5cc0a0a4a` | ⚠️ Unaudited |
| ACPSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9381075774bcf3cdb382c354c8eae22d7dc55fb8` | ⚠️ Unaudited |
| AeroAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x579e9c2cf23362f5ac74d876e600c5bcad5aa33a` | ⚠️ Unaudited |
| AgentDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x17ba20e7a96914eee0be1023e78d8029c1b84cfd`; base `0x29dd6413b7a0b6a380326894ff839903c73cd53c`; base `0xaa23ac2db26f40282a6f0f559f965c7fe07a84a1` | ⚠️ Unaudited |
| AgentFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x854a94f8f2709106ab41c8f876e37e442c7424c0` | ⚠️ Unaudited |
| AgentFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x2d7a71168f6c2d50f789fddb86c1a2aba9ca9759`; base `0x5706d5a36c2cc90a6d46e851efcb3c6ac0372eb2`; base `0x94bf9622348cf5598d9a491fa809194cf85a0d61` | ⚠️ Unaudited |
| AgentFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x5c621b19c9547274b0105a1f8a84139c84b755b7`; base `0xd4f79b9bf2f601e1d40c6fffc34d5e4c6b2fd8aa` | ⚠️ Unaudited |
| AgentFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x0c963cce86249b2b694a9f22138841081bd4eac4`; base `0xa0f0f05ff2298a27ffb38302835bd2c65c188110` | ⚠️ Unaudited |
| AgentFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x391b803c55c411ece432db81b5f2469edd6bc543`; base `0x6a98f48f0bc13471900d4ce7a79dc1ee68ef6514` | ⚠️ Unaudited |
| AgentFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x71b8efc8bcad65a5d9386d07f2dff57ab4eaf533`; base `0xfd8c35798eaa6ff8d1902f1b804d3341df09e895` | ⚠️ Unaudited |
| AgentFactoryV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x917e496ef09fab65f7cd0336121ddf8f1847bdb4` | ⚠️ Unaudited |
| AgentFactoryV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xbdf32dfb0dadae029f7a9272669d689e8e50ec14`; base `0xeb8a7b0184373550dcaa79156812f5d33e998c1e` | ⚠️ Unaudited |
| AgentFactoryV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xbc9f9cf21e15858c779634fbcf09da571632144d`; base `0xfc949b4c0852058a6c7529e5b1dcb65f2bf821d3` | ⚠️ Unaudited |
| AgentFactoryV7 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3eb211d1b64bde1af99bfae95fe5063fd1678743` | ⚠️ Unaudited |
| AgentFactoryV7 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5e357d0219e3a15674f18a5a197fb45e93568ae9`; base `0xc169a24010fd4d47ca7be4b4c7863b76520442a3` | ⚠️ Unaudited |
| AgentInference | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3984023c8389acfe657cf47e209a80e5005a8cee` | ⚠️ Unaudited |
| AgentInference | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x66fc520c7f316b8623eee2a5da821c3b34d0539d`; base `0xcefe543c5cb16170228cd5dfe469c24917119246` | ⚠️ Unaudited |
| AgentMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x31152df61f65fae41d889c397a3cc18e26d941ad`; base `0x41a0f5b16b10748d594b471850bd7488f929beba` | ⚠️ Unaudited |
| AgentNft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xde8299ba9a20f6aca7516735fcae3e04f8ba417b` | ⚠️ Unaudited |
| AgentNftV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x342676f14926e40537a2e975e1c51e2b452fcebf` | ⚠️ Unaudited |
| AgentNftV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3fd0338cde02d158008a0100c7cd8331f993009e`; base `0x50725af160260a316b2673c71c8c21469f6732c0` | ⚠️ Unaudited |
| AgentReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8867eae1b003a6bda5dfeaed80a903a74b109ee0` | ⚠️ Unaudited |
| AgentRewardV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0fd537ba21d36fc754bcfcfec9470ff564e1be37`; base `0xf1942a9b1b0037a20350358c9fe9ffd96821c685` | ⚠️ Unaudited |
| AgentTax | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7e26173192d72fd6d75a759f888d61c2cdbb64b1`; base `0xf0f003fefd1e25fc244d43399b0eb2f7be41473f` | ⚠️ Unaudited |
| AgentTax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x8a101b1833f8f4f0feaf663f3081f5241ebd9d57`; base `0xc37a4bdced74c34971abb340582685a6ac1b5430`; base `0xcad6d6a22c2fa764642d3f682137a99a75f85beb` | ⚠️ Unaudited |
| AgentTaxV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x617fd668c5b0d1906c0b3e7e3e49d1409df0a528`; base `0x700caf5228920f768b4a0a50c0069b24779fd326` | ⚠️ Unaudited |
| AgentTaxV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fbc314aaa3543b864fd38f62b3d52b9032e55f5` | ⚠️ Unaudited |
| AgentToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: base `0x082cb6e892dd0699b5f0d22f7d2e638bbada5d94`; base `0x1480fbabd722f998600ff187999238d0a3eac4cc`; base `0x766e0671bbbf59370c35a8882366a2085b46eb7b`; base `0x82f04008b4d080e41273d09de7077899daca1c6c`; base `0x9215e9a88c94b9dcad5b02e32cd5cab2a291458b`; base `0xbf60e92dc4d0c181e733d6b6901b95eedd62649e`; base `0xe8a6cc7fef4df174f22e56effd20eb2331316001` | ⚠️ Unaudited |
| AgentTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7bab5d2e3ebde7293888b3f4c022aaaad88ae2db` | ⚠️ Unaudited |
| AgentTokenV3 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x484f39869b656e33d4002b41e553453d3c76100c` | ⚠️ Unaudited |
| AgentVeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xefb56bfbfa06f6964bfdbc27cd4d24a9952eacf2` | ⚠️ Unaudited |
| AgentVeTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x4e37ac6e11ecd5e107ba05dfb5ef664485f24eda`; base `0xe561031a2992c3b6e0e5eaf6f19ea04d3a5a6756` | ⚠️ Unaudited |
| Bonding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x4c72d304bb37f7f29c4341dd79591235b19e3070`; base `0x53b6d4d2fa9dd920f7ddba4376fbed42251e3fec`; base `0x91ba6e2b41d63e3407cb8589f1a5636ef63d7e47` | ⚠️ Unaudited |
| Bonding | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xc9a91ccacfdc0001e2c41a56a75384598b70b89f`; base `0xf66dea7b3e897cd44a5a231c61b6b4423d613259` | ⚠️ Unaudited |
| BondingConfig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0cd36de47efdb8e032cab9d56d5191fbbb091558` | ⚠️ Unaudited |
| BondingConfig | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5c4a1a72c5a11909e318fcc08e52e49299abedaf`; base `0xc1d5fa4a87aefa2558f752ab01995c235994909b` | ⚠️ Unaudited |
| BondingTax | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x42b4ebc52f4e1e2d3fa3d9676f86a21dc16bfe5d`; base `0x9883a9f1284a1f0187401195dc1309f6cc167147` | ⚠️ Unaudited |
| BondingTax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8534ed9dcd2e3b407f6b8cddc60f4860c425e7a5` | ⚠️ Unaudited |
| BondingTax | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8c2d2906de2d92548a8bd8f21d34318d74fc1cb0`; base `0xbf6fcd76292d23d89949b5e6616ba2571ea5370c` | ⚠️ Unaudited |
| BondingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x28e667dc522286fc9d7811f0c141491dfa80a156`; base `0xc3538ddd84619e761b4c03caf2f785f79889958d` | ⚠️ Unaudited |
| BondingV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4c65c44f8aed010f1117f4747a10f5436c7cb644`; base `0xacb04ab3a1076f4e38de1bac1e19e1c60ff343aa` | ⚠️ Unaudited |
| BondingV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfc3167e8e236a5f2600cc28082c2f8be1d9284bb` | ⚠️ Unaudited |
| BondingV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1a540088125d00dd3990f9da45ca0859af4d3b01`; base `0x22aaafa24266cb2fc3eae8c151b16537e5841bbd` | ⚠️ Unaudited |
| BondingV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x492d923f9662a0321d3f9374ce919ca8647e7127` | ⚠️ Unaudited |
| ContributionNft | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x068f5e31d259d4807c66bb647059186a43a1a0d6`; base `0xbf8c24cafa62bdd5f5cb9773ac64f5d489df44c5` | ⚠️ Unaudited |
| DemoToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x107c534cefe489019732564cfd37244782b36334`; base `0x9e87c7ff211ada0e98dabf47049729ca679b098a` | ⚠️ Unaudited |
| FFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x158d7ccaa23dc3c8861c3323ed546e3d25e74309`; base `0x82dd5f1f9f2ccd4bef8956c98f109ed4784c96d7` | ⚠️ Unaudited |
| FFactoryV3 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78238ae69a114c41e5ed28868bc307757dc94b57` | ⚠️ Unaudited |
| FGenesis | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2ad35a511c90be0d9f9a38201d340aa14c8c89a4`; base `0x42f4f5a3389ca0bed694de339f4d432acddb1ea9` | ⚠️ Unaudited |
| FRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x192df953b317b8aaec96ce48baace2c4087f573f` | ⚠️ Unaudited |
| FRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3a75de22c7b41b71f2c077de56c9b5ca2454ae56`; base `0x8292b43ab73efac11faf357419c38acf448202c5` | ⚠️ Unaudited |
| FRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xa782902001f4e43405ee16a6ac6ef909623ab1c4`; base `0xbfce3fbe9ce3a19adb8dbb096ea2cb2bb1073f95` | ⚠️ Unaudited |
| FRouterV3 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x02fe8ec3d9bbf7318eb54590bcc39198a8b47ded`; base `0x42ea980e773ff5b18cc1c56f2f6db8bf47d55e32` | ⚠️ Unaudited |
| FRouterV3 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbadb9f3e99f43f8350b158471a3ac58cee4557c5` | ⚠️ Unaudited |
| JobManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9c690c267f20c385f8a053f62bc8c7e2d4b83744`; base `0xf9a91f14b4a1a5b68277d7e749660aa81de1bbeb` | ⚠️ Unaudited |
| JobManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca58be70daa08fb793af89561285c1c711794850` | ⚠️ Unaudited |
| MemoManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98bf57e2f5861f532d3b1d86f8705e9571bd2ee0` | ⚠️ Unaudited |
| MemoManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9c6c5a7125934cc6a711a7bf44f3cdcccf91f30c`; base `0xf89a2b1cea965fa9b9bbd26f6ce1d572f51fc443` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0415ace56d39fd50b128eb7f3a8d8608dd0e6b32` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-261479 | `0x0b3e328455c4059eeb9e3f84b5543f74e24e7e1b` | ⚠️ Unaudited |
| PaymentManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6168335568d731ebb113a2373168157c57c9d6fe`; base `0xef4364fe4487353df46eb7c811d4fac78b856c7f` | ⚠️ Unaudited |
| PaymentManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e4fa97e4e8d0b8618065809197e1bbf4fab19ab` | ⚠️ Unaudited |
| PoolHelper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x423ab54e2be9e960b441b1299fb8fa8ad8f8a407`; base `0x788d54649799f3df86486876e959f26d549bd823`; base `0x79653c9f3efa13dae8b07883a4d1e180c7003a81`; base `0xbb1dd90e2550f18d2be10f17bbd5eb5fc39a8c7b`; base `0xc839043dd869eb3496364ee7018144c8a3ebcc4d`; base `0xd34d47236d0b4ab50de793b37ac97adfb21e2089` | ⚠️ Unaudited |
| RewardTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac9e5789f9a1b5d8ead1a154ce22ef15727863ad` | ⚠️ Unaudited |
| ServiceNft | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8871c219257b0f17a9a20f3c09626161b1a0674b`; base `0x9ce798ec2a95edde3f1c2db603c38369bf1308a4` | ⚠️ Unaudited |
| SimpleMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10ee12a5a79988f1b07451fca2c9259867214899` | ⚠️ Unaudited |
| stakedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x59e73e09d98974e1dceed4baf264f71fe7844c92`; base `0x785a196826b7b54c7baa0eb563739eca331b91f8` | ⚠️ Unaudited |
| StakingDelegationHelper2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x88e299f9124c0c0924f4308d181b51c2690c75a3`; base `0x9d1a260804c8f28510e6594344abd7c46079817e`; base `0xbc8b1e9ea09e278b9cd3e80a287edb5bc348948e`; base `0xd64c8adcafa71ae3da09b7732d23fe90fd0b80a1`; base `0xf73ecd2af764991b5aab59b310e81b6d5916e603` | ⚠️ Unaudited |
| TaxSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x107e58aa0ecb30b998dad5c5c9ab89b6aa1c8b72`; base `0x8e0253da409faf5918fe2a15979fd878f4495d0e` | ⚠️ Unaudited |
| TBABonus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xaf9e436c0cd33797f3ed01404f676a65507c7678`; base `0xdbead79c822f228fbb141a221cabab4687838804` | ⚠️ Unaudited |
| TBABonus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2f2962f02dfdb742acbb0b81ffff58f2a38f621` | ⚠️ Unaudited |
| TimeLockStaking | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33e34b8684565fcf6a9dd52a7e92c4e70211a045` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2fb74722d53dac5290515c477950f4292da06ccf`; base `0x652bf29626356b7fadc2b5205d4f81be9743da1c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x45c60adf130f21d54381be129bbe2abd0c574654`; base `0xcc02f5eadc7a42bb9e0f5edf818cac739a21f9f8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x488db0978b34c6fd901760b9024b565c1117c7c8`; base `0xc81844668fc9ec385b477848171a014a5aba1b6a`; base `0xd7d3c85b4f2e9bee1998cd2e98820e647792d284` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6e1c28791d9e9ef8b0d1821bb74fc5b5a3907641`; base `0xc02011a3189d76fe13f767bee0f93baddc73b395` | ⚠️ Unaudited |
| UpdateCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x614f3123bf1272e9f68800044274e0ec9bda3811` | ⚠️ Unaudited |
| veVirtual | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4baffdf399f9d6e010622a85fe9952dee6321e9a` | ⚠️ Unaudited |
| veVirtual | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x60a203ddcde45fbfb325bdeea93824b5726b4df8`; base `0xb820644b063d4399c1765c0e5421fc69b88fbb7e` | ⚠️ Unaudited |
| VirtualGenesisDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe360abeb3bef5fe23cd5d60e4912c02503f9f67f` | ⚠️ Unaudited |
| VirtualOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa5a1afbff720f79f1f7833aafbdcee87770bbc93` | ⚠️ Unaudited |
| VirtualProtocolDAOV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa1a98f9aa6c56652e4f306d38a78fff554776665` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (115)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02051b8355342bc31c4ebba69260133bf013f762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0415ace56d39fd50b128eb7f3a8d8608dd0e6b32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261478 | `0x44ff8620b8ca30902395a7bd3f2407e1a091bf73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02a644590949921182b470e14c233d1a3a0d1bc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02e7e2e45d7926c2937a861444c0c7e034c9658b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x031f3dc9bcbf40b15f2a3d5fbb54d385b224c7f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03d3204925636a25ff2fe622918a6cb4b560a1b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x098a3b0684d9ae70dbdfeb608661b3ec14277826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b1ae225d623d5bbd43bbd0639eb794c93254245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d6a067748e715a8256de8081e7186ba6fc2e44d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ec959b2197b9a93898a96096a40724ca9e5b866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13493d8ad073568800d3a21656323c44473fd913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13ee19f627d657db7965c7be02334057ff069950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x142fdd4e4678e680b5d9b757a2b3480911e1acb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15460e2531bbfe2f6f8b2f7e51e483798caf468b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x18dc8865caebf6498dd7205c72ec76f13a64a588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1cfb9b3c38ace9835e2cb531dcbb8c5d86174c68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1f83925a94931e06910e588b1904d11d24a42a32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x23246de19abf66f2210d7c46eb45b1ec5d6f1b5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2427af5139069c46826bc3c94834e1a811bf3b06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2894b761a80dea70620408a972650b759162472e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2a431d8c6d0402b674913a1ef5d3ca6a12d6e064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c9828b7a4c5d093078d126ea2a90f880cd4fd30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x307e34d9421e63d2ca92fab68ae720304927d6e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x334c3136b89a8266d329f6ffe92ef458b6ecb2b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33f8120a17d504609e49c8eed4a0480f09e736af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3482097c93b6cf4de8648dd9b8760c9df0288107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x34cb828f7025c504e0808a0787c2932c26259546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x35a30ab13e06098800543e0f33f67c7e8c7d6b10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x36b110edaab089edcdc4bc218d48a5c2f4384633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x38de189797bab8f90fe36352b73bc4ad234bc759` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a7bb21bc2c80737c8ceaeb2ef9969016190baf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3ae599af771baae833b040c6f1389ffe134d014a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f6ebda74003a8efc65714688885c374b66ef4ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x41142e8ef0bea5dc16bf3d2267d8ac62fedb8fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x43b01e58103d4e8759a1f051c599ac4f7ccd33f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x453ff5b314b0bfd6466cf2d1c809e7589d98f635` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4af57a4ced0bd99a3c4997c5c0e83c1508c932d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4be446cdbcf343a46b34c34d7dd5c79997e87655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x511742959b50826c144aa8715998daa3a92d237f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x536823c8cf263eec4998c3fa1a32b3c11c5c325b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x56c3af6c5995147f293dc756216920fd24d50684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x58377381523e86d66f9f29016371335ddcb89d32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5b5053d4b1419c7a0f7a88befe9621a9f1ae417c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5eb31c49072cfe9e16e7ffe854c5eec5354d6962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5f5bbfc71206f4674c503088fa08286129595547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x634d91f7a67011a60985df555a5157f9b321f7de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6517705855965584e11d3c659e1228a399af7ce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x673c27a089e4ef3533c15a7cf0ca152886a55527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6a5138c121bff6ac0aef60f3492e0243595ba0fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6b08646d061b495c711fe243fe190328e7d962bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6c3627af88a9f1724264da6615112c5e56f84650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6cbebfffece38b1e6677c00cee7b46930c20244e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70b0a7224ef45e2e3aa03743eca86159644630be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71d4d6a3f588d1ea440a5e681ecb52d53c3d255a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7305014ef7e9a99d87fae4ea01364333638e90e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7a7d736ced5d67e4aba66ab611a9ea64b9c8e82f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7ae459903584276e36bb54ce5673e895b1c0a1d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7ecf18a515591182ce9428684b9b141408498290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7f6bf38d10c082bd24a4d6052a4b962a8d03b436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90833e6ee42515b037df22ec411a0f57a87ba438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90b74fd736f9993d822934257fd65954af638529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9111143cea559832bc0ae19752f08e8f48b684e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x926f23256f27b46a8a1c1af427d859f8cf1d466d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x950ff75579560e8f391406274790fcb8bf749aa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x96268da235ad5d41870fe753273d5ecf5394461d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x964177b0e4ce5eca38b8363133034eb78accc98b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x99cf33b8db42503a125d02ba20110f0574686c92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e06d76d51d830f09a8064b911e5a515fc8590ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e0b48f7aa9751db3bc5434ee30a1bee05750f8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa23ced04525303bcdf159d46c6a148b8767ba7a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa3093e3fd160fba69eaf0cf5b98856c64d1b15e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa317137595ae79a31c36fae0012022e12d5603d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa31bd6a0edbc4da307b8fa92bd6cf39e0fae262c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa3312cc594db1c3ae0370649239e4f830445d9a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa510d2287c4bc41bb747bfce4121cabc9f3ee3cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa91ad7828369dde2343f5e98caa98c031e6a9d58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa9668b3205f67b497de1f6350cb29ae0ca3899e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xae0702ecb8c28d63bebb7465b16379eb9c1451ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xae9637e2d4b3cfac0f069ebcbc342ec882082727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb1311c10adaf7768ebecae18e49cfbba80f9b1bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb7a6c94b6c388e885b148da4b505ab2997bad72b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb844b0e04416973b4d40dc3c89b265496ce22b0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe0a0675d2d75c5d0b4ec597812ef1b3c962214c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc0f515cca9accbca752638642394c1d30cd6be78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc17247b76cef34a14f0f5ada8cdd21b3e821655b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc1753efcafe9c059a82f5a9f61c29ff1c0d76d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc461e56a9c6b4561323d4c0ec80d7ef4775783d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc634d7220d2add652ad524e4718d7cfaf919b7cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc69f79fe931861bd6471ae1be84dc92482abfcfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc772bb260b0bffef102c05fd3c47fa1460a40336` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcceb278a2b3a0b6d32e47b9cd61d2bd1212c3fab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcd90239a8c7f449938c8f945f404d552945df069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd0e3973c54d173969a43bb2a886a41c0fb8a7648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd266180d5c3fec5be9789d6ac67d104db2e0629e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd274ad61758f6d3f8c248fe85c75af87b67d280d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5e2309fce0484877f2727baaf50916a77f5ba63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xde2d126285feceee1a41675f1d9d26464a1d32eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xde8229032b33c8ae14bf491145218f7885a2d975` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdff11bc2a0c148867646ad99f46141e1be2149cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdff2b9a9f676f1c67423f0fd1fbba9e5cd48e2c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe47cb6b793612e7e55912231e8511c1b70fe3aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe526925f96b7d381660d18c6825ea02f4ac034b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6e341a26e8e8d26ffdf960e01affd43216cadb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe700baca9fbe5e4cbbc9ef0347b9b5b7a0864eb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe81ff2bb7d05345aa896592237295301d5d9ba25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeae98b877ac5f05d1242eda1167e83198d024912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb1a34c8790471a33596eb666e418799beb3b719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb2f36005e4ef96cb0fe75dccd26479c7bb3366d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xef5318aaaec3850477eb4a97ba34d1dfb8809b09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf5d3896c750f804f12fa9090cc4b1caf18fc81bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf64bb5e134607aac19470b562910218cf2b4d737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf6ded65faab429b2d5e13552d618a2e231f3d129` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-261482 | `0xf8dd39c71a278fe9f4377d009d7627ef140f809e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfe6e5adf985ec7889fd18765e73a901d731032dd` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 207
- Live contracts: 0
- Unknown liveness contracts: 207
- Source-verified contracts: 68
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate auto own=5, candidate review=52, source verified unclassified=11, unverified unclassified=139

Showing first 200 of 207 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| base | candidate auto own | AgentToken<br>`0x082cb6e892dd0699b5f0d22f7d2e638bbada5d94` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate auto own | AgentToken<br>`0x1480fbabd722f998600ff187999238d0a3eac4cc` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate auto own | AgentToken<br>`0x82f04008b4d080e41273d09de7077899daca1c6c` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate auto own | AgentToken<br>`0x9215e9a88c94b9dcad5b02e32cd5cab2a291458b` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate auto own | AgentToken<br>`0xe8a6cc7fef4df174f22e56effd20eb2331316001` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentDAO<br>`0x17ba20e7a96914eee0be1023e78d8029c1b84cfd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentDAO<br>`0x29dd6413b7a0b6a380326894ff839903c73cd53c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentDAO<br>`0xaa23ac2db26f40282a6f0f559f965c7fe07a84a1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentFactory<br>`0x854a94f8f2709106ab41c8f876e37e442c7424c0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentFactoryV2<br>`0x2d7a71168f6c2d50f789fddb86c1a2aba9ca9759` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentFactoryV2<br>`0x5c621b19c9547274b0105a1f8a84139c84b755b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentFactoryV2<br>`0xd4f79b9bf2f601e1d40c6fffc34d5e4c6b2fd8aa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentFactoryV3<br>`0x0c963cce86249b2b694a9f22138841081bd4eac4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentFactoryV3<br>`0x6a98f48f0bc13471900d4ce7a79dc1ee68ef6514` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentFactoryV3<br>`0xa0f0f05ff2298a27ffb38302835bd2c65c188110` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentFactoryV3<br>`0xfd8c35798eaa6ff8d1902f1b804d3341df09e895` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentFactoryV4<br>`0x917e496ef09fab65f7cd0336121ddf8f1847bdb4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentInference<br>`0x3984023c8389acfe657cf47e209a80e5005a8cee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentMigrator<br>`0x31152df61f65fae41d889c397a3cc18e26d941ad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentMigrator<br>`0x41a0f5b16b10748d594b471850bd7488f929beba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentNft<br>`0xde8299ba9a20f6aca7516735fcae3e04f8ba417b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentNftV2<br>`0x342676f14926e40537a2e975e1c51e2b452fcebf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentReward<br>`0x8867eae1b003a6bda5dfeaed80a903a74b109ee0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentRewardV2<br>`0x0fd537ba21d36fc754bcfcfec9470ff564e1be37` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentTax<br>`0xcad6d6a22c2fa764642d3f682137a99a75f85beb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentToken<br>`0xbf60e92dc4d0c181e733d6b6901b95eedd62649e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | AgentVeToken<br>`0xefb56bfbfa06f6964bfdbc27cd4d24a9952eacf2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | Bonding<br>`0x4c72d304bb37f7f29c4341dd79591235b19e3070` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | Bonding<br>`0x53b6d4d2fa9dd920f7ddba4376fbed42251e3fec` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | Bonding<br>`0x91ba6e2b41d63e3407cb8589f1a5636ef63d7e47` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | Bonding<br>`0xc9a91ccacfdc0001e2c41a56a75384598b70b89f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | BondingTax<br>`0x42b4ebc52f4e1e2d3fa3d9676f86a21dc16bfe5d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | BondingTax<br>`0x8534ed9dcd2e3b407f6b8cddc60f4860c425e7a5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | BondingTax<br>`0x8c2d2906de2d92548a8bd8f21d34318d74fc1cb0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | ContributionNft<br>`0x068f5e31d259d4807c66bb647059186a43a1a0d6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | FRouter<br>`0x192df953b317b8aaec96ce48baace2c4087f573f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | FRouter<br>`0x3a75de22c7b41b71f2c077de56c9b5ca2454ae56` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | ServiceNft<br>`0x9ce798ec2a95edde3f1c2db603c38369bf1308a4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x158d7ccaa23dc3c8861c3323ed546e3d25e74309` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x391b803c55c411ece432db81b5f2469edd6bc543` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x5706d5a36c2cc90a6d46e851efcb3c6ac0372eb2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x59e73e09d98974e1dceed4baf264f71fe7844c92` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x652bf29626356b7fadc2b5205d4f81be9743da1c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x71b8efc8bcad65a5d9386d07f2dff57ab4eaf533` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x8292b43ab73efac11faf357419c38acf448202c5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x8871c219257b0f17a9a20f3c09626161b1a0674b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x94bf9622348cf5598d9a491fa809194cf85a0d61` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x9883a9f1284a1f0187401195dc1309f6cc167147` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xbf6fcd76292d23d89949b5e6616ba2571ea5370c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xbf8c24cafa62bdd5f5cb9773ac64f5d489df44c5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xc02011a3189d76fe13f767bee0f93baddc73b395` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xcc02f5eadc7a42bb9e0f5edf818cac739a21f9f8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xdbead79c822f228fbb141a221cabab4687838804` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xf1942a9b1b0037a20350358c9fe9ffd96821c685` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xf66dea7b3e897cd44a5a231c61b6b4423d613259` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | veVirtual<br>`0x4baffdf399f9d6e010622a85fe9952dee6321e9a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | candidate review | VirtualGenesisDAO<br>`0xe360abeb3bef5fe23cd5d60e4912c02503f9f67f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | source verified unclassified | ACPSimple<br>`0x9381075774bcf3cdb382c354c8eae22d7dc55fb8` | non_address_book | unknown | unknown | verified | n/a | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | source verified unclassified | AeroAdaptor<br>`0x579e9c2cf23362f5ac74d876e600c5bcad5aa33a` | non_address_book | unknown | unknown | verified | n/a | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | source verified unclassified | DemoToken<br>`0x107c534cefe489019732564cfd37244782b36334` | non_address_book | unknown | unknown | verified | n/a | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | source verified unclassified | DemoToken<br>`0x9e87c7ff211ada0e98dabf47049729ca679b098a` | non_address_book | unknown | unknown | verified | n/a | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | source verified unclassified | FFactory<br>`0x82dd5f1f9f2ccd4bef8956c98f109ed4784c96d7` | non_address_book | unknown | unknown | verified | n/a | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | source verified unclassified | RewardTreasury<br>`0xac9e5789f9a1b5d8ead1a154ce22ef15727863ad` | non_address_book | unknown | unknown | verified | n/a | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | source verified unclassified | SimpleMigrator<br>`0x10ee12a5a79988f1b07451fca2c9259867214899` | non_address_book | unknown | unknown | verified | n/a | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | source verified unclassified | stakedToken<br>`0x785a196826b7b54c7baa0eb563739eca331b91f8` | non_address_book | unknown | unknown | verified | n/a | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | source verified unclassified | TBABonus<br>`0xf2f2962f02dfdb742acbb0b81ffff58f2a38f621` | non_address_book | unknown | unknown | verified | n/a | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | source verified unclassified | UpdateCreator<br>`0x614f3123bf1272e9f68800044274e0ec9bda3811` | non_address_book | unknown | unknown | verified | n/a | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | unverified unclassified | UnnamedContract<br>`0x13ee19f627d657db7965c7be02334057ff069950` | non_address_book | unknown | unknown | unverified | n/a | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | unverified unclassified | UnnamedContract<br>`0x2fb74722d53dac5290515c477950f4292da06ccf` | non_address_book | unknown | unknown | unverified | n/a | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | unverified unclassified | UnnamedContract<br>`0x33f8120a17d504609e49c8eed4a0480f09e736af` | non_address_book | unknown | unknown | unverified | n/a | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | unverified unclassified | UnnamedContract<br>`0x45c60adf130f21d54381be129bbe2abd0c574654` | non_address_book | unknown | unknown | unverified | n/a | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | unverified unclassified | UnnamedContract<br>`0x511742959b50826c144aa8715998daa3a92d237f` | non_address_book | unknown | unknown | unverified | n/a | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | unverified unclassified | UnnamedContract<br>`0x6a5138c121bff6ac0aef60f3492e0243595ba0fe` | non_address_book | unknown | unknown | unverified | n/a | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | unverified unclassified | UnnamedContract<br>`0x6e1c28791d9e9ef8b0d1821bb74fc5b5a3907641` | non_address_book | unknown | unknown | unverified | n/a | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | unverified unclassified | UnnamedContract<br>`0x70b0a7224ef45e2e3aa03743eca86159644630be` | non_address_book | unknown | unknown | unverified | n/a | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | unverified unclassified | UnnamedContract<br>`0xa317137595ae79a31c36fae0012022e12d5603d8` | non_address_book | unknown | unknown | unverified | n/a | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | unverified unclassified | UnnamedContract<br>`0xef5318aaaec3850477eb4a97ba34d1dfb8809b09` | non_address_book | unknown | unknown | unverified | n/a | `0x9547e85f3016303a2996271314bde78b02021a28` |
| base | source verified unclassified | OptimismMintableERC20<br>`0x0415ace56d39fd50b128eb7f3a8d8608dd0e6b32` | non_address_book | unknown | unknown | verified | n/a | `0x97cf38bb06da57b6418083998b09976ec40a90a3` |
| base | unverified unclassified | UnnamedContract<br>`0x02a644590949921182b470e14c233d1a3a0d1bc9` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x02e7e2e45d7926c2937a861444c0c7e034c9658b` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x031f3dc9bcbf40b15f2a3d5fbb54d385b224c7f7` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x03d3204925636a25ff2fe622918a6cb4b560a1b8` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x098a3b0684d9ae70dbdfeb608661b3ec14277826` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x0b1ae225d623d5bbd43bbd0639eb794c93254245` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x0d6a067748e715a8256de8081e7186ba6fc2e44d` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x0ec959b2197b9a93898a96096a40724ca9e5b866` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x13493d8ad073568800d3a21656323c44473fd913` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x142fdd4e4678e680b5d9b757a2b3480911e1acb6` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x15460e2531bbfe2f6f8b2f7e51e483798caf468b` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x18dc8865caebf6498dd7205c72ec76f13a64a588` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x1cfb9b3c38ace9835e2cb531dcbb8c5d86174c68` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x1f83925a94931e06910e588b1904d11d24a42a32` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x22aaafa24266cb2fc3eae8c151b16537e5841bbd` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x23246de19abf66f2210d7c46eb45b1ec5d6f1b5e` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x2427af5139069c46826bc3c94834e1a811bf3b06` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x2894b761a80dea70620408a972650b759162472e` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x28e667dc522286fc9d7811f0c141491dfa80a156` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x2a431d8c6d0402b674913a1ef5d3ca6a12d6e064` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x2ad35a511c90be0d9f9a38201d340aa14c8c89a4` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x2c9828b7a4c5d093078d126ea2a90f880cd4fd30` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x307e34d9421e63d2ca92fab68ae720304927d6e8` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x334c3136b89a8266d329f6ffe92ef458b6ecb2b5` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x3482097c93b6cf4de8648dd9b8760c9df0288107` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x34cb828f7025c504e0808a0787c2932c26259546` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x35a30ab13e06098800543e0f33f67c7e8c7d6b10` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x361deccfc381aca339218d2a148bc08943d02cdb` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x36b110edaab089edcdc4bc218d48a5c2f4384633` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x38de189797bab8f90fe36352b73bc4ad234bc759` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x3a7bb21bc2c80737c8ceaeb2ef9969016190baf2` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x3ae599af771baae833b040c6f1389ffe134d014a` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x3f6ebda74003a8efc65714688885c374b66ef4ec` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x3fd0338cde02d158008a0100c7cd8331f993009e` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x41142e8ef0bea5dc16bf3d2267d8ac62fedb8fc7` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x42ea980e773ff5b18cc1c56f2f6db8bf47d55e32` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x43b01e58103d4e8759a1f051c599ac4f7ccd33f1` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x453ff5b314b0bfd6466cf2d1c809e7589d98f635` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x48c15725c96a6c9f65db544044bb5ac432338145` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x4af57a4ced0bd99a3c4997c5c0e83c1508c932d0` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x4be446cdbcf343a46b34c34d7dd5c79997e87655` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x4c65c44f8aed010f1117f4747a10f5436c7cb644` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x536823c8cf263eec4998c3fa1a32b3c11c5c325b` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x56c3af6c5995147f293dc756216920fd24d50684` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x58377381523e86d66f9f29016371335ddcb89d32` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x5b5053d4b1419c7a0f7a88befe9621a9f1ae417c` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x5e357d0219e3a15674f18a5a197fb45e93568ae9` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x5eb31c49072cfe9e16e7ffe854c5eec5354d6962` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x5f5bbfc71206f4674c503088fa08286129595547` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x6168335568d731ebb113a2373168157c57c9d6fe` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x62c98b09e75de6260c0da53b033a9728dc7d2c10` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x634d91f7a67011a60985df555a5157f9b321f7de` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x6517705855965584e11d3c659e1228a399af7ce2` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x66fc520c7f316b8623eee2a5da821c3b34d0539d` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x673c27a089e4ef3533c15a7cf0ca152886a55527` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x6b08646d061b495c711fe243fe190328e7d962bc` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x6c3627af88a9f1724264da6615112c5e56f84650` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x6cbebfffece38b1e6677c00cee7b46930c20244e` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x700caf5228920f768b4a0a50c0069b24779fd326` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x71d4d6a3f588d1ea440a5e681ecb52d53c3d255a` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x7305014ef7e9a99d87fae4ea01364333638e90e3` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x7a7d736ced5d67e4aba66ab611a9ea64b9c8e82f` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x7ae459903584276e36bb54ce5673e895b1c0a1d5` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x7ecf18a515591182ce9428684b9b141408498290` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x7f6bf38d10c082bd24a4d6052a4b962a8d03b436` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x90833e6ee42515b037df22ec411a0f57a87ba438` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x90b74fd736f9993d822934257fd65954af638529` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x9111143cea559832bc0ae19752f08e8f48b684e3` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x926f23256f27b46a8a1c1af427d859f8cf1d466d` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x950ff75579560e8f391406274790fcb8bf749aa8` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x96268da235ad5d41870fe753273d5ecf5394461d` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x964177b0e4ce5eca38b8363133034eb78accc98b` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x99cf33b8db42503a125d02ba20110f0574686c92` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x9e06d76d51d830f09a8064b911e5a515fc8590ad` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0x9e0b48f7aa9751db3bc5434ee30a1bee05750f8e` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xa23ced04525303bcdf159d46c6a148b8767ba7a0` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xa3093e3fd160fba69eaf0cf5b98856c64d1b15e2` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xa31bd6a0edbc4da307b8fa92bd6cf39e0fae262c` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xa3312cc594db1c3ae0370649239e4f830445d9a1` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xa510d2287c4bc41bb747bfce4121cabc9f3ee3cc` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xa782902001f4e43405ee16a6ac6ef909623ab1c4` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xa91ad7828369dde2343f5e98caa98c031e6a9d58` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xa9668b3205f67b497de1f6350cb29ae0ca3899e8` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xae0702ecb8c28d63bebb7465b16379eb9c1451ab` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xae9637e2d4b3cfac0f069ebcbc342ec882082727` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xaf9e436c0cd33797f3ed01404f676a65507c7678` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xb1311c10adaf7768ebecae18e49cfbba80f9b1bb` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xb7a6c94b6c388e885b148da4b505ab2997bad72b` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xb820644b063d4399c1765c0e5421fc69b88fbb7e` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xb844b0e04416973b4d40dc3c89b265496ce22b0e` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xbc9f9cf21e15858c779634fbcf09da571632144d` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xbdf32dfb0dadae029f7a9272669d689e8e50ec14` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xbe0a0675d2d75c5d0b4ec597812ef1b3c962214c` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xc0f515cca9accbca752638642394c1d30cd6be78` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xc17247b76cef34a14f0f5ada8cdd21b3e821655b` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xc1753efcafe9c059a82f5a9f61c29ff1c0d76d7e` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xc1d5fa4a87aefa2558f752ab01995c235994909b` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xc461e56a9c6b4561323d4c0ec80d7ef4775783d0` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xc634d7220d2add652ad524e4718d7cfaf919b7cc` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xc69f79fe931861bd6471ae1be84dc92482abfcfd` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xc772bb260b0bffef102c05fd3c47fa1460a40336` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xc81844668fc9ec385b477848171a014a5aba1b6a` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xcceb278a2b3a0b6d32e47b9cd61d2bd1212c3fab` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xcd90239a8c7f449938c8f945f404d552945df069` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xd0e3973c54d173969a43bb2a886a41c0fb8a7648` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xd266180d5c3fec5be9789d6ac67d104db2e0629e` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xd274ad61758f6d3f8c248fe85c75af87b67d280d` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xd5e2309fce0484877f2727baaf50916a77f5ba63` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xde2d126285feceee1a41675f1d9d26464a1d32eb` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xde8229032b33c8ae14bf491145218f7885a2d975` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xdff11bc2a0c148867646ad99f46141e1be2149cb` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xdff2b9a9f676f1c67423f0fd1fbba9e5cd48e2c5` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xe47cb6b793612e7e55912231e8511c1b70fe3aa7` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xe526925f96b7d381660d18c6825ea02f4ac034b5` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xe6e341a26e8e8d26ffdf960e01affd43216cadb6` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xe700baca9fbe5e4cbbc9ef0347b9b5b7a0864eb9` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xe81ff2bb7d05345aa896592237295301d5d9ba25` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xeae98b877ac5f05d1242eda1167e83198d024912` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xeb1a34c8790471a33596eb666e418799beb3b719` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xeb2f36005e4ef96cb0fe75dccd26479c7bb3366d` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xf0f003fefd1e25fc244d43399b0eb2f7be41473f` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |
| base | unverified unclassified | UnnamedContract<br>`0xf5d3896c750f804f12fa9090cc4b1caf18fc81bd` | non_address_book | unknown | unknown | unverified | n/a | `0xc31cf1168b2f6745650d7b088774041a10d76d55` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [code4rena.com/reports/2025-04-virtuals-protocol](https://code4rena.com/reports/2025-04-virtuals-protocol) | Code4rena | Contest | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 42 | high |
| [spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf](https://4242579099-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Frrll8DWDA3BJwEBqOtxm%2Fuploads%2FEiyuRkwRb6NOUYtBLtzk%2FVirtuals%20Launchpad%20Smart%20Contract%20Suite%20Audit%20Report.pdf) | Not specified | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf](https://4242579099-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Frrll8DWDA3BJwEBqOtxm%2Fuploads%2FQIpnKIH0Dx2tXiTyTyJu%2FVirtuals%20Protocol%20-%20Zenith%20Audit%20Report%20for%20Genesis.pdf) | Zenith | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [spaces/rrll8DWDA3BJwEBqOtxm/uploads/zJ0JLeYiaEj32wwEna7w/Genesis Token Contract Audit Report.pdf](https://4242579099-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Frrll8DWDA3BJwEBqOtxm%2Fuploads%2FzJ0JLeYiaEj32wwEna7w%2FGenesis%20Token%20Contract%20Audit%20Report.pdf) | Not specified | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [spaces/rrll8DWDA3BJwEBqOtxm/uploads/On9IPp8c4x9oIPxOSRxn/$VIRTUAL Staking Contract Audit Report.pdf](https://4242579099-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Frrll8DWDA3BJwEBqOtxm%2Fuploads%2FOn9IPp8c4x9oIPxOSRxn%2F%24VIRTUAL%20Staking%20Contract%20Audit%20Report.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21060] code4rena.com/reports/2025-04-virtuals-protocol — no match: Extracted 43 contracts from the audit report scope and findings. The audit date is from the report header.
- [21061] spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf — no match: Scope explicitly lists Genesis.sol and FCGenesis.sol. Bonding, AgentFactoryV3, and FGenesis are mentioned in findings as targets.
- [21062] spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf — no match: Scope defined as contracts/* excluding contracts/dev, contracts/AgentReward*.sol, contracts/IAgentReward*.sol. All contracts mentioned in findings are within scope.
- [21063] spaces/rrll8DWDA3BJwEBqOtxm/uploads/zJ0JLeYiaEj32wwEna7w/Genesis Token Contract Audit Report.pdf — no match: No explicit scope section; contracts inferred from finding contexts. Audit date from cover page: June 4, 2025.
- [21064] spaces/rrll8DWDA3BJwEBqOtxm/uploads/On9IPp8c4x9oIPxOSRxn/$VIRTUAL Staking Contract Audit Report.pdf — no match: Only one contract (veVirtual) is explicitly in scope. EIP712Upgradeable is mentioned as an inherited contract but not in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| code4rena.com/reports/2025-04-virtuals-protocol | AgentNftV2 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentVeToken | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | ServiceNft | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | ContributionNft | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | ValidatorRegistry | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentInference | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentFactoryV4 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | FRouter | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentTax | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | BondingTax | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | Bonding | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentToken | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentDAO | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | FERC20 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentFactoryV2 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentRewardV2 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | Minter | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | EloCalculator | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentFactoryV3 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentRewardV3 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | VirtualToken | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | ERC6551Registry | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IFPair | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IFactory | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IBondingTax | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IUniswapV2Factory | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IUniswapV2Router02 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IUniswapV2Pair | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IERC5805 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IGovernor | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IAgentNft | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IAgentDAO | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IServiceNft | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IContributionNft | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IEloCalculator | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IAgentFactoryV3 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IAgentFactoryV2 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | GovernorVotes | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | RewardSettingsCheckpoints | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | VirtualGenesisDAO | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | Genesis | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | FGenesis | unmatched — not counted | — | listed in scope and findings | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf | Genesis | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf | FCGenesis | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf | Bonding | unmatched — not counted | — | referenced in findings H-1, L-3 | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf | AgentFactoryV3 | unmatched — not counted | — | referenced in findings H-1 | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf | FGenesis | unmatched — not counted | — | referenced in findings L-3 | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | AgentMigrator | unmatched — not counted | — | listed in scope (contracts/* excl. contracts/dev excl. contracts/AgentReward*.sol excl. contracts/IAgentReward*.sol) | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | AgentToken | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | AgentFactoryV3 | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | AgentFactoryV4 | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | Bonding | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | BondingTax | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | FERC20 | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | FRouter | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | AgentVeToken | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | AgentDAO | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | ServiceNft | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | ContributionNft | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | Airdrop | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | AgentTax | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/zJ0JLeYiaEj32wwEna7w/Genesis Token Contract Audit Report.pdf | GenesisLib | unmatched — not counted | — | Context: GenesisLib.sol#L32 in finding 3.1.1 | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/zJ0JLeYiaEj32wwEna7w/Genesis Token Contract Audit Report.pdf | AgentFactoryV5 | unmatched — not counted | — | Context: AgentFactoryV5.sol#L168-L183, etc. in findings | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/zJ0JLeYiaEj32wwEna7w/Genesis Token Contract Audit Report.pdf | Genesis | unmatched — not counted | — | Context: Genesis.sol#L176-L194 in finding 3.2.2 | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/On9IPp8c4x9oIPxOSRxn/$VIRTUAL Staking Contract Audit Report.pdf | veVirtual | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x0b3e328455c4059eeb9e3f84b5543f74e24e7e1b` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 69 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 131 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 65 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, medium=1
- Match method counts: n/a

Zero-match audit list:

- [21060] code4rena.com/reports/2025-04-virtuals-protocol
- [21061] spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf
- [21062] spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf
- [21063] spaces/rrll8DWDA3BJwEBqOtxm/uploads/zJ0JLeYiaEj32wwEna7w/Genesis Token Contract Audit Report.pdf
- [21064] spaces/rrll8DWDA3BJwEBqOtxm/uploads/On9IPp8c4x9oIPxOSRxn/$VIRTUAL Staking Contract Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
