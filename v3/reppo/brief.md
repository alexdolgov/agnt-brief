# Agentic Audit Brief: Reppo

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Reppo (`reppo`)
- Website: [https://reppo.xyz/](https://reppo.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 89 unique implementations (134 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $5,591,598.09
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Reppo in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 89 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 40
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/83
- Verified + Unaudited implementations: 83
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 89
- Raw deployments: 134
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (83)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x14dab2b846a4c07b3f52c37e3fd7265c2bcdf485` | ⚠️ Unaudited |
| AccountManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x95d2bc450913cd7575fcc961e889b12a4e512beb` | ⚠️ Unaudited |
| ACPRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x49ff03047883c2afb4df9a2129122b4d0d951490` | ⚠️ Unaudited |
| ACPRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xa6c9ba866992cfd7fd6460ba912bfa405ada9df0` | ⚠️ Unaudited |
| ACPSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x6a1fe26d54ab0d3e1e3168f2e0c0cda5cc0a0a4a` | ⚠️ Unaudited |
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
| AgentFactoryV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xeb8a7b0184373550dcaa79156812f5d33e998c1e` | ⚠️ Unaudited |
| AgentFactoryV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xfc949b4c0852058a6c7529e5b1dcb65f2bf821d3` | ⚠️ Unaudited |
| AgentFactoryV7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3eb211d1b64bde1af99bfae95fe5063fd1678743` | ⚠️ Unaudited |
| AgentFactoryV7 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xc169a24010fd4d47ca7be4b4c7863b76520442a3` | ⚠️ Unaudited |
| AgentInference | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3984023c8389acfe657cf47e209a80e5005a8cee` | ⚠️ Unaudited |
| AgentInference | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xcefe543c5cb16170228cd5dfe469c24917119246` | ⚠️ Unaudited |
| AgentMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x31152df61f65fae41d889c397a3cc18e26d941ad`; base `0x41a0f5b16b10748d594b471850bd7488f929beba` | ⚠️ Unaudited |
| AgentNft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xde8299ba9a20f6aca7516735fcae3e04f8ba417b` | ⚠️ Unaudited |
| AgentNftV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x342676f14926e40537a2e975e1c51e2b452fcebf` | ⚠️ Unaudited |
| AgentNftV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x50725af160260a316b2673c71c8c21469f6732c0` | ⚠️ Unaudited |
| AgentReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8867eae1b003a6bda5dfeaed80a903a74b109ee0` | ⚠️ Unaudited |
| AgentRewardV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0fd537ba21d36fc754bcfcfec9470ff564e1be37`; base `0xf1942a9b1b0037a20350358c9fe9ffd96821c685` | ⚠️ Unaudited |
| AgentTax | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x7e26173192d72fd6d75a759f888d61c2cdbb64b1` | ⚠️ Unaudited |
| AgentTax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x8a101b1833f8f4f0feaf663f3081f5241ebd9d57`; base `0xc37a4bdced74c34971abb340582685a6ac1b5430`; base `0xcad6d6a22c2fa764642d3f682137a99a75f85beb` | ⚠️ Unaudited |
| AgentTaxV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x617fd668c5b0d1906c0b3e7e3e49d1409df0a528` | ⚠️ Unaudited |
| AgentTaxV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fbc314aaa3543b864fd38f62b3d52b9032e55f5` | ⚠️ Unaudited |
| AgentToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: base `0x082cb6e892dd0699b5f0d22f7d2e638bbada5d94`; base `0x1480fbabd722f998600ff187999238d0a3eac4cc`; base `0x766e0671bbbf59370c35a8882366a2085b46eb7b`; base `0x82f04008b4d080e41273d09de7077899daca1c6c`; base `0x9215e9a88c94b9dcad5b02e32cd5cab2a291458b`; base `0xbf60e92dc4d0c181e733d6b6901b95eedd62649e`; base `0xe8a6cc7fef4df174f22e56effd20eb2331316001` | ⚠️ Unaudited |
| AgentTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x7bab5d2e3ebde7293888b3f4c022aaaad88ae2db`; base `0xff8104251e7761163fac3211ef5583fb3f8583d6` | ⚠️ Unaudited |
| AgentTokenV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x484f39869b656e33d4002b41e553453d3c76100c` | ⚠️ Unaudited |
| AgentVeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xefb56bfbfa06f6964bfdbc27cd4d24a9952eacf2` | ⚠️ Unaudited |
| AgentVeTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x4e37ac6e11ecd5e107ba05dfb5ef664485f24eda`; base `0xe561031a2992c3b6e0e5eaf6f19ea04d3a5a6756` | ⚠️ Unaudited |
| Bonding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x4c72d304bb37f7f29c4341dd79591235b19e3070`; base `0x53b6d4d2fa9dd920f7ddba4376fbed42251e3fec`; base `0x91ba6e2b41d63e3407cb8589f1a5636ef63d7e47` | ⚠️ Unaudited |
| Bonding | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xc9a91ccacfdc0001e2c41a56a75384598b70b89f`; base `0xf66dea7b3e897cd44a5a231c61b6b4423d613259` | ⚠️ Unaudited |
| BondingConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0cd36de47efdb8e032cab9d56d5191fbbb091558` | ⚠️ Unaudited |
| BondingConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x5c4a1a72c5a11909e318fcc08e52e49299abedaf` | ⚠️ Unaudited |
| BondingTax | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x42b4ebc52f4e1e2d3fa3d9676f86a21dc16bfe5d`; base `0x9883a9f1284a1f0187401195dc1309f6cc167147` | ⚠️ Unaudited |
| BondingTax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8534ed9dcd2e3b407f6b8cddc60f4860c425e7a5` | ⚠️ Unaudited |
| BondingTax | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8c2d2906de2d92548a8bd8f21d34318d74fc1cb0`; base `0xbf6fcd76292d23d89949b5e6616ba2571ea5370c` | ⚠️ Unaudited |
| BondingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xc3538ddd84619e761b4c03caf2f785f79889958d` | ⚠️ Unaudited |
| BondingV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xacb04ab3a1076f4e38de1bac1e19e1c60ff343aa` | ⚠️ Unaudited |
| BondingV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfc3167e8e236a5f2600cc28082c2f8be1d9284bb` | ⚠️ Unaudited |
| BondingV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x1a540088125d00dd3990f9da45ca0859af4d3b01` | ⚠️ Unaudited |
| BondingV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x492d923f9662a0321d3f9374ce919ca8647e7127` | ⚠️ Unaudited |
| ContributionNft | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x068f5e31d259d4807c66bb647059186a43a1a0d6`; base `0xbf8c24cafa62bdd5f5cb9773ac64f5d489df44c5` | ⚠️ Unaudited |
| DemoToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x107c534cefe489019732564cfd37244782b36334`; base `0x9e87c7ff211ada0e98dabf47049729ca679b098a` | ⚠️ Unaudited |
| FFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x158d7ccaa23dc3c8861c3323ed546e3d25e74309`; base `0x82dd5f1f9f2ccd4bef8956c98f109ed4784c96d7` | ⚠️ Unaudited |
| FFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78238ae69a114c41e5ed28868bc307757dc94b57` | ⚠️ Unaudited |
| FGenesis | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x42f4f5a3389ca0bed694de339f4d432acddb1ea9` | ⚠️ Unaudited |
| FRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x192df953b317b8aaec96ce48baace2c4087f573f` | ⚠️ Unaudited |
| FRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3a75de22c7b41b71f2c077de56c9b5ca2454ae56`; base `0x8292b43ab73efac11faf357419c38acf448202c5` | ⚠️ Unaudited |
| FRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xbfce3fbe9ce3a19adb8dbb096ea2cb2bb1073f95` | ⚠️ Unaudited |
| FRouterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x02fe8ec3d9bbf7318eb54590bcc39198a8b47ded` | ⚠️ Unaudited |
| FRouterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbadb9f3e99f43f8350b158471a3ac58cee4557c5` | ⚠️ Unaudited |
| JobManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x9c690c267f20c385f8a053f62bc8c7e2d4b83744` | ⚠️ Unaudited |
| JobManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca58be70daa08fb793af89561285c1c711794850` | ⚠️ Unaudited |
| MemoManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98bf57e2f5861f532d3b1d86f8705e9571bd2ee0` | ⚠️ Unaudited |
| MemoManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x9c6c5a7125934cc6a711a7bf44f3cdcccf91f30c` | ⚠️ Unaudited |
| PaymentManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e4fa97e4e8d0b8618065809197e1bbf4fab19ab` | ⚠️ Unaudited |
| PaymentManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xef4364fe4487353df46eb7c811d4fac78b856c7f` | ⚠️ Unaudited |
| PoolHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x423ab54e2be9e960b441b1299fb8fa8ad8f8a407`; base `0x788d54649799f3df86486876e959f26d549bd823`; base `0x79653c9f3efa13dae8b07883a4d1e180c7003a81`; base `0xbb1dd90e2550f18d2be10f17bbd5eb5fc39a8c7b`; base `0xc839043dd869eb3496364ee7018144c8a3ebcc4d`; base `0xd34d47236d0b4ab50de793b37ac97adfb21e2089` | ⚠️ Unaudited |
| RewardTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac9e5789f9a1b5d8ead1a154ce22ef15727863ad` | ⚠️ Unaudited |
| ServiceNft | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8871c219257b0f17a9a20f3c09626161b1a0674b`; base `0x9ce798ec2a95edde3f1c2db603c38369bf1308a4` | ⚠️ Unaudited |
| SimpleMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10ee12a5a79988f1b07451fca2c9259867214899` | ⚠️ Unaudited |
| stakedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x59e73e09d98974e1dceed4baf264f71fe7844c92`; base `0x785a196826b7b54c7baa0eb563739eca331b91f8` | ⚠️ Unaudited |
| StakingDelegationHelper2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x88e299f9124c0c0924f4308d181b51c2690c75a3`; base `0x9d1a260804c8f28510e6594344abd7c46079817e`; base `0xbc8b1e9ea09e278b9cd3e80a287edb5bc348948e`; base `0xd64c8adcafa71ae3da09b7732d23fe90fd0b80a1`; base `0xf73ecd2af764991b5aab59b310e81b6d5916e603` | ⚠️ Unaudited |
| TaxSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x107e58aa0ecb30b998dad5c5c9ab89b6aa1c8b72`; base `0x8e0253da409faf5918fe2a15979fd878f4495d0e` | ⚠️ Unaudited |
| TBABonus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xdbead79c822f228fbb141a221cabab4687838804` | ⚠️ Unaudited |
| TBABonus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2f2962f02dfdb742acbb0b81ffff58f2a38f621` | ⚠️ Unaudited |
| TimeLockStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33e34b8684565fcf6a9dd52a7e92c4e70211a045` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2fb74722d53dac5290515c477950f4292da06ccf`; base `0x652bf29626356b7fadc2b5205d4f81be9743da1c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x45c60adf130f21d54381be129bbe2abd0c574654`; base `0xcc02f5eadc7a42bb9e0f5edf818cac739a21f9f8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 2 | base | n/a | 2 deployments: base `0x488db0978b34c6fd901760b9024b565c1117c7c8`; base `0xd7d3c85b4f2e9bee1998cd2e98820e647792d284` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6e1c28791d9e9ef8b0d1821bb74fc5b5a3907641`; base `0xc02011a3189d76fe13f767bee0f93baddc73b395` | ⚠️ Unaudited |
| UpdateCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x614f3123bf1272e9f68800044274e0ec9bda3811` | ⚠️ Unaudited |
| veVirtual | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4baffdf399f9d6e010622a85fe9952dee6321e9a` | ⚠️ Unaudited |
| veVirtual | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x60a203ddcde45fbfb325bdeea93824b5726b4df8` | ⚠️ Unaudited |
| VirtualGenesisDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe360abeb3bef5fe23cd5d60e4912c02503f9f67f` | ⚠️ Unaudited |
| VirtualProtocolDAOV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa1a98f9aa6c56652e4f306d38a78fff554776665` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13ee19f627d657db7965c7be02334057ff069950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33f8120a17d504609e49c8eed4a0480f09e736af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3650752d4dde21c6ed7df6d4840e15de48e25481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6a5138c121bff6ac0aef60f3492e0243595ba0fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70b0a7224ef45e2e3aa03743eca86159644630be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa317137595ae79a31c36fae0012022e12d5603d8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025-06-25.pdf](https://github.com/Reppo-Labs/audit-reports/blob/main/2025-06-25.pdf) | unknown | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2025-07-15.pdf](https://github.com/Reppo-Labs/audit-reports/blob/main/2025-07-15.pdf) | unknown | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [2026-03-24.pdf](https://github.com/Reppo-Labs/audit-reports/blob/main/2026-03-24.pdf) | unknown | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2257] 2025-06-25.pdf — no match: Scope section explicitly lists four contracts: PodManagerUSDC, FCUClaim, FCULib, RevenueDistribution. Audit date is June 27th 2025 (end date of the audit period).
- [2258] 2025-07-15.pdf — no match: Scope section explicitly lists 6 contracts: ReppoToken.sol, VeReppo.sol, PodManager.sol, PointsTracker.sol, Checkpoints.sol, VotesUpgradeable.sol. Audit date is July 18th 2025 (end date of review period).
- [2259] 2026-03-24.pdf — no match: Scope section lists three files: script/DeployV2.s.sol, src/PodManagerV2.sol, src/SubnetManager.sol. Audit date is March 13-18, 2026, so end date is 2026-03-18.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025-06-25.pdf | PodManagerUSDC | unmatched — not counted | — | listed in scope section | no |
| 2025-06-25.pdf | FCUClaim | unmatched — not counted | — | listed in scope section | no |
| 2025-06-25.pdf | FCULib | unmatched — not counted | — | listed in scope section | no |
| 2025-06-25.pdf | RevenueDistribution | unmatched — not counted | — | listed in scope section | no |
| 2025-07-15.pdf | ReppoToken | unmatched — not counted | — | listed in scope | no |
| 2025-07-15.pdf | VeReppo | unmatched — not counted | — | listed in scope | no |
| 2025-07-15.pdf | PodManager | unmatched — not counted | — | listed in scope | no |
| 2025-07-15.pdf | PointsTracker | unmatched — not counted | — | listed in scope | no |
| 2025-07-15.pdf | Checkpoints | unmatched — not counted | — | listed in scope | no |
| 2025-07-15.pdf | VotesUpgradeable | unmatched — not counted | — | listed in scope | no |
| 2026-03-24.pdf | DeployV2 | unmatched — not counted | — | listed in scope | no |
| 2026-03-24.pdf | PodManagerV2 | unmatched — not counted | — | listed in scope | no |
| 2026-03-24.pdf | SubnetManager | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 79 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 13 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [2257] 2025-06-25.pdf
- [2258] 2025-07-15.pdf
- [2259] 2026-03-24.pdf

Fork inheritance lineage and inherited audits are included when available.
