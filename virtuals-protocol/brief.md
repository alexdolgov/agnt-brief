# Agentic Audit Brief: Virtuals Protocol

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Virtuals Protocol (`virtuals-protocol`)
- Website: [https://app.virtuals.io/referral?code=JsPKKT](https://app.virtuals.io/referral?code=JsPKKT)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-29T17:25:17.112Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: base
- Contract surface: 65 unique implementations (135 raw deployments)
- DeFi Llama TVL: $37,954,686.06
- On-chain TVL (included contracts): $0.04
- TVL by chain: Base $0.04

## Project Description

Virtuals Protocol is a platform for creating, managing, and monetizing AI agents on the Base blockchain. It provides infrastructure for agent tokenization, bonding curves, staking, and governance, enabling users to launch and interact with AI-driven services.

### Architecture

The protocol consists of a single product family where agent factories deploy agent NFTs and bonding curves, while routers, tax, reward, and staking contracts share infrastructure to manage tokenomics and governance. Proxy contracts provide upgradeability across all core components.

## Audit Coverage Summary

- Verified implementations audited: 0/57 (0.0%)
- Verified + Unaudited implementations: 57
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 65
- Raw deployments: 135
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $0.04
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $0.04 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (57)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AgentToken | token | base | 7 deployments: base [`0x082cb6...da5d94`](./contracts/base-8453/0x082cb6e892dd0699b5f0d22f7d2e638bbada5d94/); base `0x1480fb...eac4cc`; base `0x766e06...46eb7b`; base `0x82f040...ca1c6c`; base `0x9215e9...91458b`; base `0xbf60e9...62649e`; base `0xe8a6cc...316001` | ⚠️ Unaudited |
| AccountManager | governance | base | 2 deployments: base [`0x14dab2...cdf485`](./contracts/base-8453/0x14dab2b846a4c07b3f52c37e3fd7265c2bcdf485/); base `0x95d2bc...512beb` | ⚠️ Unaudited |
| ACPRouter | adapter | base | 2 deployments: base [`0x49ff03...951490`](./contracts/base-8453/0x49ff03047883c2afb4df9a2129122b4d0d951490/); base `0xa6c9ba...da9df0` | ⚠️ Unaudited |
| ACPSimple | unknown | base | 2 deployments: base [`0x6a1fe2...0a0a4a`](./contracts/base-8453/0x6a1fe26d54ab0d3e1e3168f2e0c0cda5cc0a0a4a/); base `0x938107...c55fb8` | ⚠️ Unaudited |
| AeroAdaptor | unknown | base | [`0x579e9c...5aa33a`](./contracts/base-8453/0x579e9c2cf23362f5ac74d876e600c5bcad5aa33a/) | ⚠️ Unaudited |
| AgentDAO | unknown | base | 3 deployments: base [`0x17ba20...b84cfd`](./contracts/base-8453/0x17ba20e7a96914eee0be1023e78d8029c1b84cfd/); base `0x29dd64...3cd53c`; base `0xaa23ac...7a84a1` | ⚠️ Unaudited |
| AgentFactory | registry | base | [`0x854a94...7424c0`](./contracts/base-8453/0x854a94f8f2709106ab41c8f876e37e442c7424c0/) | ⚠️ Unaudited |
| AgentFactoryV2 | registry | base | 5 deployments: base [`0x2d7a71...ca9759`](./contracts/base-8453/0x2d7a71168f6c2d50f789fddb86c1a2aba9ca9759/); base `0x5706d5...372eb2`; base `0x5c621b...b755b7`; base `0x94bf96...5a0d61`; base `0xd4f79b...2fd8aa` | ⚠️ Unaudited |
| AgentFactoryV3 | registry | base | 6 deployments: base [`0x0c963c...d4eac4`](./contracts/base-8453/0x0c963cce86249b2b694a9f22138841081bd4eac4/); base `0x391b80...6bc543`; base `0x6a98f4...ef6514`; base `0x71b8ef...eaf533`; base `0xa0f0f0...188110`; base `0xfd8c35...09e895` | ⚠️ Unaudited |
| AgentFactoryV4 | registry | base | 2 deployments: base [`0x917e49...47bdb4`](./contracts/base-8453/0x917e496ef09fab65f7cd0336121ddf8f1847bdb4/); base `0xeb8a7b...998c1e` | ⚠️ Unaudited |
| AgentFactoryV6 | registry | base | [`0xfc949b...f821d3`](./contracts/base-8453/0xfc949b4c0852058a6c7529e5b1dcb65f2bf821d3/) | ⚠️ Unaudited |
| AgentFactoryV7 | registry | base | 2 deployments: base [`0x3eb211...678743`](./contracts/base-8453/0x3eb211d1b64bde1af99bfae95fe5063fd1678743/); base `0xc169a2...0442a3` | ⚠️ Unaudited |
| AgentInference | unknown | base | 2 deployments: base [`0x398402...5a8cee`](./contracts/base-8453/0x3984023c8389acfe657cf47e209a80e5005a8cee/); base `0xcefe54...119246` | ⚠️ Unaudited |
| AgentMigrator | periphery | base | 2 deployments: base [`0x31152d...d941ad`](./contracts/base-8453/0x31152df61f65fae41d889c397a3cc18e26d941ad/); base `0x41a0f5...29beba` | ⚠️ Unaudited |
| AgentNft | token | base | [`0xde8299...ba417b`](./contracts/base-8453/0xde8299ba9a20f6aca7516735fcae3e04f8ba417b/) | ⚠️ Unaudited |
| AgentNftV2 | token | base | 2 deployments: base [`0x342676...2fcebf`](./contracts/base-8453/0x342676f14926e40537a2e975e1c51e2b452fcebf/); base `0x50725a...6732c0` | ⚠️ Unaudited |
| AgentReward | unknown | base | [`0x8867ea...109ee0`](./contracts/base-8453/0x8867eae1b003a6bda5dfeaed80a903a74b109ee0/) | ⚠️ Unaudited |
| AgentRewardV2 | unknown | base | 2 deployments: base [`0x0fd537...e1be37`](./contracts/base-8453/0x0fd537ba21d36fc754bcfcfec9470ff564e1be37/); base `0xf1942a...21c685` | ⚠️ Unaudited |
| AgentTax | unknown | base | 4 deployments: base [`0x7e2617...bb64b1`](./contracts/base-8453/0x7e26173192d72fd6d75a759f888d61c2cdbb64b1/); base `0x8a101b...bd9d57`; base `0xc37a4b...1b5430`; base `0xcad6d6...f85beb` | ⚠️ Unaudited |
| AgentTaxV2 | unknown | base | 2 deployments: base [`0x617fd6...f0a528`](./contracts/base-8453/0x617fd668c5b0d1906c0b3e7e3e49d1409df0a528/); base `0x8fbc31...2e55f5` | ⚠️ Unaudited |
| AgentTokenV2 | token | base | [`0x7bab5d...8ae2db`](./contracts/base-8453/0x7bab5d2e3ebde7293888b3f4c022aaaad88ae2db/) | ⚠️ Unaudited |
| AgentTokenV3 | token | base | [`0x484f39...76100c`](./contracts/base-8453/0x484f39869b656e33d4002b41e553453d3c76100c/) | ⚠️ Unaudited |
| AgentVeToken | token | base | [`0xefb56b...2eacf2`](./contracts/base-8453/0xefb56bfbfa06f6964bfdbc27cd4d24a9952eacf2/) | ⚠️ Unaudited |
| AgentVeTokenV2 | token | base | 2 deployments: base [`0x4e37ac...f24eda`](./contracts/base-8453/0x4e37ac6e11ecd5e107ba05dfb5ef664485f24eda/); base `0xe56103...5a6756` | ⚠️ Unaudited |
| Bonding | unknown | base | 5 deployments: base [`0x4c72d3...9e3070`](./contracts/base-8453/0x4c72d304bb37f7f29c4341dd79591235b19e3070/); base `0x53b6d4...1e3fec`; base `0x91ba6e...3d7e47`; base `0xc9a91c...70b89f`; base `0xf66dea...613259` | ⚠️ Unaudited |
| BondingConfig | governance | base | 2 deployments: base [`0x0cd36d...091558`](./contracts/base-8453/0x0cd36de47efdb8e032cab9d56d5191fbbb091558/); base `0x5c4a1a...abedaf` | ⚠️ Unaudited |
| BondingTax | unknown | base | 5 deployments: base [`0x42b4eb...6bfe5d`](./contracts/base-8453/0x42b4ebc52f4e1e2d3fa3d9676f86a21dc16bfe5d/); base `0x8534ed...25e7a5`; base `0x8c2d29...fc1cb0`; base `0x9883a9...167147`; base `0xbf6fcd...a5370c` | ⚠️ Unaudited |
| BondingV2 | unknown | base | [`0xc3538d...89958d`](./contracts/base-8453/0xc3538ddd84619e761b4c03caf2f785f79889958d/) | ⚠️ Unaudited |
| BondingV3 | unknown | base | 2 deployments: base [`0xacb04a...f343aa`](./contracts/base-8453/0xacb04ab3a1076f4e38de1bac1e19e1c60ff343aa/); base `0xfc3167...9284bb` | ⚠️ Unaudited |
| BondingV5 | unknown | base | 2 deployments: base [`0x1a5400...4d3b01`](./contracts/base-8453/0x1a540088125d00dd3990f9da45ca0859af4d3b01/); base `0x492d92...7e7127` | ⚠️ Unaudited |
| ContributionNft | token | base | 2 deployments: base [`0x068f5e...a1a0d6`](./contracts/base-8453/0x068f5e31d259d4807c66bb647059186a43a1a0d6/); base `0xbf8c24...df44c5` | ⚠️ Unaudited |
| DemoToken | token | base | 2 deployments: base [`0x107c53...b36334`](./contracts/base-8453/0x107c534cefe489019732564cfd37244782b36334/); base `0x9e87c7...9b098a` | ⚠️ Unaudited |
| FFactory | registry | base | 2 deployments: base [`0x158d7c...e74309`](./contracts/base-8453/0x158d7ccaa23dc3c8861c3323ed546e3d25e74309/); base `0x82dd5f...4c96d7` | ⚠️ Unaudited |
| FFactoryV3 | registry | base | [`0x78238a...c94b57`](./contracts/base-8453/0x78238ae69a114c41e5ed28868bc307757dc94b57/) | ⚠️ Unaudited |
| FGenesis | unknown | base | [`0x42f4f5...db1ea9`](./contracts/base-8453/0x42f4f5a3389ca0bed694de339f4d432acddb1ea9/) | ⚠️ Unaudited |
| FRouter | adapter | base | 3 deployments: base [`0x192df9...7f573f`](./contracts/base-8453/0x192df953b317b8aaec96ce48baace2c4087f573f/); base `0x3a75de...54ae56`; base `0x8292b4...8202c5` | ⚠️ Unaudited |
| FRouterV2 | adapter | base | [`0xbfce3f...073f95`](./contracts/base-8453/0xbfce3fbe9ce3a19adb8dbb096ea2cb2bb1073f95/) | ⚠️ Unaudited |
| FRouterV3 | adapter | base | 2 deployments: base [`0x02fe8e...b47ded`](./contracts/base-8453/0x02fe8ec3d9bbf7318eb54590bcc39198a8b47ded/); base `0xbadb9f...4557c5` | ⚠️ Unaudited |
| JobManager | governance | base | 2 deployments: base [`0x9c690c...b83744`](./contracts/base-8453/0x9c690c267f20c385f8a053f62bc8c7e2d4b83744/); base `0xca58be...794850` | ⚠️ Unaudited |
| MemoManager | governance | base | 2 deployments: base [`0x98bf57...bd2ee0`](./contracts/base-8453/0x98bf57e2f5861f532d3b1d86f8705e9571bd2ee0/); base `0x9c6c5a...91f30c` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | 2 deployments: base [`0x0415ac...0e6b32`](./contracts/base-8453/0x0415ace56d39fd50b128eb7f3a8d8608dd0e6b32/); base `0x0b3e32...4e7e1b` | ⚠️ Unaudited |
| PaymentManager | governance | base | 2 deployments: base [`0x8e4fa9...ab19ab`](./contracts/base-8453/0x8e4fa97e4e8d0b8618065809197e1bbf4fab19ab/); base `0xef4364...856c7f` | ⚠️ Unaudited |
| PoolHelper | core_logic | base | 6 deployments: base [`0x423ab5...f8a407`](./contracts/base-8453/0x423ab54e2be9e960b441b1299fb8fa8ad8f8a407/); base `0x788d54...9bd823`; base `0x79653c...003a81`; base `0xbb1dd9...9a8c7b`; base `0xc83904...ebcc4d`; base `0xd34d47...1e2089` | ⚠️ Unaudited |
| RewardTreasury | operational_periphery | base | [`0xac9e57...7863ad`](./contracts/base-8453/0xac9e5789f9a1b5d8ead1a154ce22ef15727863ad/) | ⚠️ Unaudited |
| ServiceNft | token | base | 2 deployments: base [`0x8871c2...a0674b`](./contracts/base-8453/0x8871c219257b0f17a9a20f3c09626161b1a0674b/); base `0x9ce798...1308a4` | ⚠️ Unaudited |
| SimpleMigrator | periphery | base | [`0x10ee12...214899`](./contracts/base-8453/0x10ee12a5a79988f1b07451fca2c9259867214899/) | ⚠️ Unaudited |
| stakedToken | token | base | 2 deployments: base [`0x59e73e...844c92`](./contracts/base-8453/0x59e73e09d98974e1dceed4baf264f71fe7844c92/); base `0x785a19...1b91f8` | ⚠️ Unaudited |
| StakingDelegationHelper2 | periphery | base | 5 deployments: base [`0x88e299...0c75a3`](./contracts/base-8453/0x88e299f9124c0c0924f4308d181b51c2690c75a3/); base `0x9d1a26...79817e`; base `0xbc8b1e...48948e`; base `0xd64c8a...0b80a1`; base `0xf73ecd...16e603` | ⚠️ Unaudited |
| TaxSwapper | adapter | base | 2 deployments: base [`0x107e58...1c8b72`](./contracts/base-8453/0x107e58aa0ecb30b998dad5c5c9ab89b6aa1c8b72/); base `0x8e0253...495d0e` | ⚠️ Unaudited |
| TBABonus | unknown | base | 2 deployments: base [`0xdbead7...838804`](./contracts/base-8453/0xdbead79c822f228fbb141a221cabab4687838804/); base `0xf2f296...38f621` | ⚠️ Unaudited |
| TimeLockStaking | governance | base | [`0x33e34b...11a045`](./contracts/base-8453/0x33e34b8684565fcf6a9dd52a7e92c4e70211a045/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | base | 5 deployments: base [`0x488db0...17c7c8`](./contracts/base-8453/0x488db0978b34c6fd901760b9024b565c1117c7c8/); base `0x652bf2...43da1c`; base `0xc02011...73b395`; base `0xcc02f5...21f9f8`; base `0xd7d3c8...92d284` | ⚠️ Unaudited |
| UpdateCreator | unknown | base | [`0x614f31...da3811`](./contracts/base-8453/0x614f3123bf1272e9f68800044274e0ec9bda3811/) | ⚠️ Unaudited |
| veVirtual | unknown | base | 2 deployments: base [`0x4baffd...321e9a`](./contracts/base-8453/0x4baffdf399f9d6e010622a85fe9952dee6321e9a/); base `0x60a203...6b4df8` | ⚠️ Unaudited |
| VirtualGenesisDAO | unknown | base | [`0xe360ab...f9f67f`](./contracts/base-8453/0xe360abeb3bef5fe23cd5d60e4912c02503f9f67f/) | ⚠️ Unaudited |
| VirtualOFTAdapter | adapter | base | [`0xa5a1af...0bbc93`](./contracts/base-8453/0xa5a1afbff720f79f1f7833aafbdcee87770bbc93/) | ⚠️ Unaudited |
| VirtualProtocolDAOV2 | unknown | base | [`0xa1a98f...776665`](./contracts/base-8453/0xa1a98f9aa6c56652e4f306d38a78fff554776665/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | base | `0x13ee19...069950` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2fb747...a06ccf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x33f812...e736af` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x45c60a...574654` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6a5138...5ba0fe` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6e1c28...907641` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x70b0a7...4630be` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa31713...5603d8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x082cb6...da5d94`](./contracts/base-8453/0x082cb6e892dd0699b5f0d22f7d2e638bbada5d94/) | AgentToken | token | $0.04 | Verified native implementation with $0.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x49ff03...951490`](./contracts/base-8453/0x49ff03047883c2afb4df9a2129122b4d0d951490/) | ACPRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x17ba20...b84cfd`](./contracts/base-8453/0x17ba20e7a96914eee0be1023e78d8029c1b84cfd/) | AgentDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x854a94...7424c0`](./contracts/base-8453/0x854a94f8f2709106ab41c8f876e37e442c7424c0/) | AgentFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2d7a71...ca9759`](./contracts/base-8453/0x2d7a71168f6c2d50f789fddb86c1a2aba9ca9759/) | AgentFactoryV2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0c963c...d4eac4`](./contracts/base-8453/0x0c963cce86249b2b694a9f22138841081bd4eac4/) | AgentFactoryV3 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x917e49...47bdb4`](./contracts/base-8453/0x917e496ef09fab65f7cd0336121ddf8f1847bdb4/) | AgentFactoryV4 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3eb211...678743`](./contracts/base-8453/0x3eb211d1b64bde1af99bfae95fe5063fd1678743/) | AgentFactoryV7 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x398402...5a8cee`](./contracts/base-8453/0x3984023c8389acfe657cf47e209a80e5005a8cee/) | AgentInference | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x31152d...d941ad`](./contracts/base-8453/0x31152df61f65fae41d889c397a3cc18e26d941ad/) | AgentMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xde8299...ba417b`](./contracts/base-8453/0xde8299ba9a20f6aca7516735fcae3e04f8ba417b/) | AgentNft | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x342676...2fcebf`](./contracts/base-8453/0x342676f14926e40537a2e975e1c51e2b452fcebf/) | AgentNftV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8867ea...109ee0`](./contracts/base-8453/0x8867eae1b003a6bda5dfeaed80a903a74b109ee0/) | AgentReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0fd537...e1be37`](./contracts/base-8453/0x0fd537ba21d36fc754bcfcfec9470ff564e1be37/) | AgentRewardV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7bab5d...8ae2db`](./contracts/base-8453/0x7bab5d2e3ebde7293888b3f4c022aaaad88ae2db/) | AgentTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x484f39...76100c`](./contracts/base-8453/0x484f39869b656e33d4002b41e553453d3c76100c/) | AgentTokenV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xefb56b...2eacf2`](./contracts/base-8453/0xefb56bfbfa06f6964bfdbc27cd4d24a9952eacf2/) | AgentVeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4e37ac...f24eda`](./contracts/base-8453/0x4e37ac6e11ecd5e107ba05dfb5ef664485f24eda/) | AgentVeTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4c72d3...9e3070`](./contracts/base-8453/0x4c72d304bb37f7f29c4341dd79591235b19e3070/) | Bonding | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0cd36d...091558`](./contracts/base-8453/0x0cd36de47efdb8e032cab9d56d5191fbbb091558/) | BondingConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x42b4eb...6bfe5d`](./contracts/base-8453/0x42b4ebc52f4e1e2d3fa3d9676f86a21dc16bfe5d/) | BondingTax | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x068f5e...a1a0d6`](./contracts/base-8453/0x068f5e31d259d4807c66bb647059186a43a1a0d6/) | ContributionNft | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x107c53...b36334`](./contracts/base-8453/0x107c534cefe489019732564cfd37244782b36334/) | DemoToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x78238a...c94b57`](./contracts/base-8453/0x78238ae69a114c41e5ed28868bc307757dc94b57/) | FFactoryV3 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x192df9...7f573f`](./contracts/base-8453/0x192df953b317b8aaec96ce48baace2c4087f573f/) | FRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x98bf57...bd2ee0`](./contracts/base-8453/0x98bf57e2f5861f532d3b1d86f8705e9571bd2ee0/) | MemoManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8e4fa9...ab19ab`](./contracts/base-8453/0x8e4fa97e4e8d0b8618065809197e1bbf4fab19ab/) | PaymentManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x423ab5...f8a407`](./contracts/base-8453/0x423ab54e2be9e960b441b1299fb8fa8ad8f8a407/) | PoolHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xac9e57...7863ad`](./contracts/base-8453/0xac9e5789f9a1b5d8ead1a154ce22ef15727863ad/) | RewardTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x10ee12...214899`](./contracts/base-8453/0x10ee12a5a79988f1b07451fca2c9259867214899/) | SimpleMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x88e299...0c75a3`](./contracts/base-8453/0x88e299f9124c0c0924f4308d181b51c2690c75a3/) | StakingDelegationHelper2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x107e58...1c8b72`](./contracts/base-8453/0x107e58aa0ecb30b998dad5c5c9ab89b6aa1c8b72/) | TaxSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x33e34b...11a045`](./contracts/base-8453/0x33e34b8684565fcf6a9dd52a7e92c4e70211a045/) | TimeLockStaking | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x614f31...da3811`](./contracts/base-8453/0x614f3123bf1272e9f68800044274e0ec9bda3811/) | UpdateCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4baffd...321e9a`](./contracts/base-8453/0x4baffdf399f9d6e010622a85fe9952dee6321e9a/) | veVirtual | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe360ab...f9f67f`](./contracts/base-8453/0xe360abeb3bef5fe23cd5d60e4912c02503f9f67f/) | VirtualGenesisDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa1a98f...776665`](./contracts/base-8453/0xa1a98f9aa6c56652e4f306d38a78fff554776665/) | VirtualProtocolDAOV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 2 |
| standard_library | 17 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [5882] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [5883] 0002-metadata-manifest-and-pull-command.md
- [5884] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
