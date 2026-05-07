# Agentic Brief: Across Protocol

## Project Overview

- **Project:** Across Protocol (across)
- **Website:** across.to
- **Category:** Cross Chain Bridge
- **Chains (topography):** 1, 10, 56, 137, 8453, 42161, 59144, 81457, 534352
- **Chains (DeFiLlama):** 1
- **TVL:** $49,935,615 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment 2026-03-18
- **Audit history:** 10 audits; most recent 2026-05-01 (4 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** large_tvl_marketing_asset

Across Protocol has 289 deployed contract rows in current topography. This brief renders the 288 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment 2026-03-18 (48 days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 277 contracts across 9 chains. 58 have TP audit coverage (20.9%); 219 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

48 core-logic or audit-scope-extra contracts identified. Inclusion is provenance-mechanical per role_mapping_v1.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AcceleratingDistributor | rewards | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | unmatched | [0x9040e4...9a48](https://etherscan.io/address/0x9040e41ef5e8b281535a96d9a48acb8cfabd9a48) |
| AcrossConfigStore | core | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0x3b0350...43f5](https://etherscan.io/address/0x3b03509645713718b78951126e0a6de6f10043f5) |
| AcrossMerkleDistributor | rewards | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0xe50b2c...6487](https://etherscan.io/address/0xe50b2ceac4f60e840ae513924033e753e2366487) |
| AcrossToken | token | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | likely in scope | [0x44108f...f82f](https://etherscan.io/address/0x44108f0223a3c3028f5fe7aec7f9bb2e66bef82f) |
| Arbitrum_Adapter | adapter | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0x295287...543f](https://etherscan.io/address/0x29528780e29abb8af95a5e5a125b94766987543f) |
| Base_Adapter | adapter | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0x2d8b1e...046e](https://etherscan.io/address/0x2d8b1e2b0dff62df132d23bea68a6d2c4d20046e) |
| Boba_Adapter | adapter | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0x33b0ec...5af3](https://etherscan.io/address/0x33b0ec794c15d6cc705818e70d4cace7bcfb5af3) |
| BondToken | token | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0xee1dc6...02ea](https://etherscan.io/address/0xee1dc6bcf1ee967a350e9ac6caaaa236109002ea) |
| ClaimAndStake | staking | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | unmatched | [0x985e8a...5829](https://etherscan.io/address/0x985e8a89dd6af8896ef075c8dd93512433dc5829) |
| Ethereum_Adapter | adapter | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0x527e87...5084](https://etherscan.io/address/0x527e872a5c3f0c7c24fe33f2593cfb890a285084) |
| ExpiringMultiPartyCreator | core | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | unmatched | [0xb3de1e...a2a6](https://etherscan.io/address/0xb3de1e212b49e68f4a68b5993f31f63946fca2a6) |
| Linea_Adapter | adapter | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0x7ea0d1...8efe](https://etherscan.io/address/0x7ea0d1882d610095a45e512b0113f79ca98a8efe) |
| LpTokenFactory | factory | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0x7db69e...fd9d](https://etherscan.io/address/0x7db69eb9f52ed773e9b03f5068a1ea0275b2fd9d) |
| Mode_Adapter | adapter | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0xf1b598...16d0](https://etherscan.io/address/0xf1b59868697f3925b72889ede818b9e7ba0316d0) |
| MulticallHandler | core | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0x924a9f...a569](https://etherscan.io/address/0x924a9f036260ddd5808007e1aa95f08ed08aa569) |
| OP_Adapter | adapter | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | unmatched | [0x7e90a4...61d2](https://etherscan.io/address/0x7e90a40c7519b041a7df6498fbf5662e8cfc61d2) |
| Optimism_Adapter | adapter | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0xad1b0a...246f](https://etherscan.io/address/0xad1b0a86c98703fd5f4e56fff04f6b2d9b9f246f) |
| Polygon_Adapter | adapter | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0x3e94e8...ce1a](https://etherscan.io/address/0x3e94e8d4316a1ebfb2245e45e6f0b8724094ce1a) |
| PolygonTokenBridger | token | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0x0330e9...ac57](https://etherscan.io/address/0x0330e9b4d0325ccff515e81dfbc7754f2a02ac57) |
| SpokePoolPeriphery | vault_pool | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0x89415a...a85c](https://etherscan.io/address/0x89415a82d909a7238d69094c3dd1dcc1acbda85c) |
| ZkSync_Adapter | adapter | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0xe23300...47fb](https://etherscan.io/address/0xe233009838cb898b50e0012a6e783fc9fee447fb) |
| unnamed | unknown | facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1] | unmatched | [0x09500f...819f](https://etherscan.io/address/0x09500ffd743e01b4146a4ba795231ca7ca37819f) |
| unnamed | unknown | facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1] | unmatched | [0x13a8b1...afc4](https://etherscan.io/address/0x13a8b1d6443016424e2b8bac40dd884ee679afc4) |
| unnamed | unknown | facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1] | unmatched | [0x14224e...7d9e](https://etherscan.io/address/0x14224e63716aface30c9a417e0542281869f7d9e) |
| unnamed | unknown | facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1] | unmatched | [0x2b482a...2246](https://etherscan.io/address/0x2b482afb675e1f231521d5e56770ce4aac592246) |
| unnamed | unknown | facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1] | unmatched | [0x4e3737...0284](https://etherscan.io/address/0x4e3737679081c4d3029d88ca560918094f2e0284) |
| unnamed | unknown | facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1] | unmatched | [0x540029...1747](https://etherscan.io/address/0x540029039e493b1b843653f93c3064a956931747) |
| unnamed | unknown | facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1] | unmatched | [0x8fac6f...9ff2](https://etherscan.io/address/0x8fac6f764ae0b4f632fe2e6c938ed5637e629ff2) |
| unnamed | unknown | facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1] | unmatched | [0xfb87ac...ce7d](https://etherscan.io/address/0xfb87ac52bac7ccf497b6053610a9c59b87a0ce7d) |

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| L2StandardERC20 | token | facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1] | unmatched | [0xff733b...b76b](https://optimistic.etherscan.io/address/0xff733b2a3557a7ed6697007ab5d11b79fdd1b76b) |
| MulticallHandler | core | facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1] | audited (TP) | [0x924a9f...a569](https://optimistic.etherscan.io/address/0x924a9f036260ddd5808007e1aa95f08ed08aa569) |
| SpokePoolPeriphery | vault_pool | facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1] | audited (TP) | [0x89415a...a85c](https://optimistic.etherscan.io/address/0x89415a82d909a7238d69094c3dd1dcc1acbda85c) |

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| SpokePoolPeriphery | vault_pool | facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1] | audited (TP) | [0x89415a...a85c](https://bscscan.com/address/0x89415a82d909a7238d69094c3dd1dcc1acbda85c) |

### polygon (chain_id 137)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| MulticallHandler | core | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0x924a9f...a569](https://polygonscan.com/address/0x924a9f036260ddd5808007e1aa95f08ed08aa569) |
| PolygonTokenBridger | token | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0x0330e9...ac57](https://polygonscan.com/address/0x0330e9b4d0325ccff515e81dfbc7754f2a02ac57) |
| SpokePoolPeriphery | vault_pool | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0x89415a...a85c](https://polygonscan.com/address/0x89415a82d909a7238d69094c3dd1dcc1acbda85c) |
| UChildERC20Proxy | proxy | proxy→0x9ce08f1e…; creator=0x463f64ad… (shares=9); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1] | unmatched | [0xf328b7...d8fc](https://polygonscan.com/address/0xf328b73b6c685831f238c30a23fc19140cb4d8fc) |
| unnamed | unknown | facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1] | unmatched | [0x4e3737...0284](https://polygonscan.com/address/0x4e3737679081c4d3029d88ca560918094f2e0284) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AcrossOriginSettler | core | facts=[etherscan_family,sourcify]; evidence=[docs/docs_explorerlink_wide_v1] | unmatched | [0x4afb57...3c9e](https://basescan.org/address/0x4afb570ac68bffc26bb02fda3d801728b0f93c9e) |
| MulticallHandler | core | facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1] | audited (TP) | [0x924a9f...a569](https://basescan.org/address/0x924a9f036260ddd5808007e1aa95f08ed08aa569) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AcrossOriginSettler | core | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[docs/docs_explorerlink_wide_v1]; creator_also_deploys_docs | unmatched | [0xb0b070...4998](https://arbiscan.io/address/0xb0b07055f214ce59ccb968663d3435b9f3294998) |
| ClonableBeaconProxy | proxy | proxy→0x3f770ac6…; creator=0xb4b8b6f8… (shares=16); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_exp | unmatched | [0x536915...c99d](https://arbiscan.io/address/0x53691596d1bce8cea565b84d4915e69e03d9c99d) |
| MulticallHandler | core | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0x924a9f...a569](https://arbiscan.io/address/0x924a9f036260ddd5808007e1aa95f08ed08aa569) |
| SpokePoolPeriphery | vault_pool | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0x89415a...a85c](https://arbiscan.io/address/0x89415a82d909a7238d69094c3dd1dcc1acbda85c) |

### linea (chain_id 59144)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| MulticallHandler | core | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[docs/docs_explorerlink_wide_v1]; creator_also_deploys_docs | audited (TP) | [0x1015c5...1cdb](https://lineascan.build/address/0x1015c58894961f4f7dd7d68ba033e28ed3ee1cdb) |
| SpokePoolPeriphery | vault_pool | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[docs/docs_explorerlink_wide_v1]; creator_also_deploys_docs | audited (TP) | [0xe0bcff...e3e0](https://lineascan.build/address/0xe0bcff426509723b18d6b2f0d8f4602d143be3e0) |

### blast (chain_id 81457)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| MulticallHandler | core | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0x924a9f...a569](https://blastscan.io/address/0x924a9f036260ddd5808007e1aa95f08ed08aa569) |
| SpokePoolPeriphery | vault_pool | creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[declared/declared_docs_url_v1;docs/docs_explorerlink_wide_v1];  | audited (TP) | [0x89415a...a85c](https://blastscan.io/address/0x89415a82d909a7238d69094c3dd1dcc1acbda85c) |

---

## Scope - Operational Periphery

170 operational contracts identified via deployer-neighborhood, GitHub-declared, or related provenance. 25 appear in past audit scopes; 145 do not.

This is the commercial wedge: contracts that scope-limited manual audits typically exclude are surfaced here as first-class audit targets.

### ethereum (chain_id 1)

| Contract / Address | Likely Role | Provenance Evidence | Audit Coverage |
|---|---|---|---|
| [AddressWhitelist](https://etherscan.io/address/0x48e687205d3962c43891b8cde5a4fe75fa6c8d7a) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; creator_also_deploys_docs | unmatched |
| [CoveredCallFinancialProductLibrary](https://etherscan.io/address/0xb0a395d8f3ae483d757ec1c83effc61df96ecfa4) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [CoveredCallFinancialProductLibrary](https://etherscan.io/address/0xbbc6009feffc27ce705322832cb2068f8c1e0a58) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [DesignatedVotingFactory](https://etherscan.io/address/0xc5c0475f8b2cae8931089459ca20259cf8f9164e) | factory | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [DesignatedVotingFactory](https://etherscan.io/address/0xde7c02ad2b925587bd16724810f994a2948c4a38) | factory | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [DSProxyFactory](https://etherscan.io/address/0xab75727d4e89a7f7f04f57c00234a35950527115) | factory | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Ethereum_SpokePool](https://etherscan.io/address/0x5e5b726c81f43b953a62ad87e2835c85c4d9dd3b) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; creator_also_deploys_docs | audited (TP) |
| [ExpandedERC20](https://etherscan.io/address/0x09da2044f647ce08d8e91920bf1eee61e97f274c) | token | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[explorer/factory_child_extraction_v1]; crea | unmatched |
| [ExpandedERC20](https://etherscan.io/address/0x28f77208728b0a45cab24c4868334581fe86f95b) | token | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[explorer/factory_child_extraction_v1]; crea | unmatched |
| [ExpandedERC20](https://etherscan.io/address/0x2d8a9c58cc7db9307cc2d9da1bd154d37d843b68) | token | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[explorer/factory_child_extraction_v1]; crea | unmatched |
| [ExpandedERC20](https://etherscan.io/address/0x59c1427c658e97a7d568541dac780b2e5c8affb4) | token | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[explorer/factory_child_extraction_v1]; crea | unmatched |
| [ExpandedERC20](https://etherscan.io/address/0x64fcf23a845b08637654db78c02f459954d51193) | token | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[explorer/factory_child_extraction_v1]; crea | unmatched |
| [ExpandedERC20](https://etherscan.io/address/0x8d29b8f64237cf39e93111a96a73e5dc03eb612d) | token | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[explorer/factory_child_extraction_v1]; crea | unmatched |
| [ExpandedERC20](https://etherscan.io/address/0x9306b6f45263f8cb6a18eff127313d10d06fccb5) | token | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[explorer/factory_child_extraction_v1]; crea | unmatched |
| [ExpandedERC20](https://etherscan.io/address/0x933f3dd62f33f6f65c5fb5f33ed2c2f32d392372) | token | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[explorer/factory_child_extraction_v1]; crea | unmatched |
| [ExpandedERC20](https://etherscan.io/address/0xa6abcb5530770c32fd489ebd90d29cde99d91d7f) | token | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[explorer/factory_child_extraction_v1]; crea | unmatched |
| [ExpandedERC20](https://etherscan.io/address/0xb9921d28466304103a233fcd071833e498f12853) | token | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[explorer/factory_child_extraction_v1]; crea | unmatched |
| [ExpandedERC20](https://etherscan.io/address/0xc3f35d90ebce372ded12029b72b22a23a2f637fd) | token | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[explorer/factory_child_extraction_v1]; crea | unmatched |
| [ExpandedERC20](https://etherscan.io/address/0xc9b09405959f63f72725828b5d449488b02be1ca) | token | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; evidence=[explorer/factory_child_extraction_v1]; crea | unmatched |
| [ExpiringMultiPartyCreator](https://etherscan.io/address/0x9a077d4fcf7b26a0514baa4cff0b481e9c35ce87) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; creator_also_deploys_docs | unmatched |
| [ExpiringMultiPartyCreator](https://etherscan.io/address/0xad8fd1f418fb860a383c9d4647880af7f043ef39) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [ExpiringMultiPartyCreator](https://etherscan.io/address/0xddfc7e3b4531158acf4c7a5d2c3cb0ee81d018a5) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [ExpiringMultiPartyLib](https://etherscan.io/address/0x0246fbf444cae32867b410464664f8f02e1822c7) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [ExpiringMultiPartyLib](https://etherscan.io/address/0x09afd24acc170c16f4ff64bdf2a4818c515440e8) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [ExpiringMultiPartyLib](https://etherscan.io/address/0x38015ddb8b34c84934cff058f571349cc7d4139d) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [ExpiringMultiPartyLib](https://etherscan.io/address/0xa10648da824330d7c7670e26a234bef442e77f20) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [ExpiringMultiPartyLib](https://etherscan.io/address/0xcb08678e4381be3e264e6a0037e3297ca56a583e) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; creator_also_deploys_docs | unmatched |
| [KpiOptionsFinancialProductLibrary](https://etherscan.io/address/0x903fa079b93d2bb222eafcf1f59d0a9b628d354a) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [MerkleDistributor](https://etherscan.io/address/0xa5808a5b7324084c212f8b86e6795440f69ad419) | rewards | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; creator_also_deploys_docs | unmatched |
| [OptimisticOracle](https://etherscan.io/address/0x287a1ba52e030459f163f48b2ae468a085003a07) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [PerpetualCreator](https://etherscan.io/address/0xe9f67235c1b0ee401e5f5e119fb9dfc9753f10f9) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; creator_also_deploys_docs | unmatched |
| [PerpetualLib](https://etherscan.io/address/0x026ed73a36b37b871be7bfd25d1c62b9bfb358b5) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [PostExpirationIdentifierTransformationFinancialProductLibrary](https://etherscan.io/address/0xab955711ecd766ce70dc2dbf2d9e0e8e4b431232) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; creator_also_deploys_docs | unmatched |
| [TokenFactory](https://etherscan.io/address/0x7c96d6235cfaaccac5d80fce74e6032b25dd1f03) | factory | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Voting](https://etherscan.io/address/0x8b1631ab830d11531ae83725fda4d86012eccd77) | governance | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; creator_also_deploys_docs | likely in scope |
| [VotingUpgrader](https://etherscan.io/address/0x0944ae132efbdc1c3d148859daa6db7d92dee013) | governance | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [VotingUpgrader](https://etherscan.io/address/0x2ef05721d197deeadc70b42d97c915e1f0880a8c) | governance | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [VotingUpgrader](https://etherscan.io/address/0xeb07cd1bb36514d4e6c0438ffad62cc96498723c) | governance | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [0x1425e2...c1a0](https://etherscan.io/address/0x1425e20d2ecb0bbdeed8fe1f8252724ed084c1a0) | unknown | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; creator_also_deploys_docs | unmatched |
| [0x1f5aa7...5791](https://etherscan.io/address/0x1f5aa71c79ec6a11fc55789ed32dae3b64d75791) | unknown | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [0xcd2346...de03](https://etherscan.io/address/0xcd23467a80df72b24363da84d07af2b1dfc4de03) | unknown | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |

### polygon (chain_id 137)

| Contract / Address | Likely Role | Provenance Evidence | Audit Coverage |
|---|---|---|---|
| [AddressWhitelist](https://polygonscan.com/address/0x1020ae36548ab28bc0c41fd2a08d24132c82cc55) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [BinaryOptionLongShortPairFinancialProductLibrary](https://polygonscan.com/address/0xda768d869f1e89ea005cde7e1dbf630ff9307f33) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Bridge](https://polygonscan.com/address/0x76f3fe966f91602129cb278043239afbb7b7646a) | bridge | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [Bridge](https://polygonscan.com/address/0xef8b46765ae805537053c59f826c3ad61924db45) | bridge | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [CappedYieldDollarLongShortPairFinancialProductLibrary](https://polygonscan.com/address/0x821b8af8f616bd5c2b3ccf4392f5635cca545307) | strategy | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [CoveredCallLongShortPairFinancialProductLibrary](https://polygonscan.com/address/0x3f62d7f4be7671cc93bcdfe7a3dd900fec4b5025) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [ExpandedERC20](https://polygonscan.com/address/0x68306388c266dce735245a0a6dae6dd3b727a640) | token | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [ExpiringMultiPartyCreator](https://polygonscan.com/address/0x7cc13c5c3a38718af2a7c36d8311f80ad47ef0ab) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [ExpiringMultiPartyCreator](https://polygonscan.com/address/0xcdf08cb3d3436c3c21f277b6ad45e3d7ab1ce12f) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [ExpiringMultiPartyCreator](https://polygonscan.com/address/0xe3254a3afce425fc7114b231b39c97aba6a919d7) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [ExpiringMultiPartyLib](https://polygonscan.com/address/0x00526c1ede46255b752d280620318ab50b24c20e) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [ExpiringMultiPartyLib](https://polygonscan.com/address/0x35b7b0b2a7c545e6e8b944aad07fd0f4dee8b4e1) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [ExpiringMultiPartyLib](https://polygonscan.com/address/0xb44c433d2b071b95184cf25e1113cc2f1a903cb1) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [FinancialContractsAdmin](https://polygonscan.com/address/0xad5503b3c7e35eaf0e88df80b4b626ed0c0404a0) | controller | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [FinancialContractsAdmin](https://polygonscan.com/address/0xd8866e76441df243fc98b892362fc6264dc3ca80) | controller | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Finder](https://polygonscan.com/address/0x0e9409238032ff374be5a8601151a7b3dde533fc) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Finder](https://polygonscan.com/address/0x270fb294ea368119ab2d3bcc76284f1f1a59b192) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Finder](https://polygonscan.com/address/0x3dbf60bf9698806281d3ac639de8ef5e2fa60858) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Finder](https://polygonscan.com/address/0x4eb585127348266c53b33b663a6bad3d71663d48) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Finder](https://polygonscan.com/address/0x5bee4302ad0498dc0dfa7669e5741fc85637ed68) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Finder](https://polygonscan.com/address/0x84941d370ccb53488a98fc9d7ad66b1790f260b7) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Finder](https://polygonscan.com/address/0x9e416a429de8773e05563a92de4ed589ab5e5f1e) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Finder](https://polygonscan.com/address/0xd29c85f15df544ba632c9e25829fd29d767d7978) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Finder](https://polygonscan.com/address/0xd6ec98de01fae81d86390689f422aca29b6e9580) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Finder](https://polygonscan.com/address/0xe2bd6d276623228848198379de87ebb039668570) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [GenericHandler](https://polygonscan.com/address/0x09afd24acc170c16f4ff64bdf2a4818c515440e8) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [GenericHandler](https://polygonscan.com/address/0x79176279493f58c805648a883056954acaa147f3) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [GovernorChildTunnel](https://polygonscan.com/address/0x1ec4f63e40631bedfcf7ef37d79dd1c20a953965) | governance | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [GovernorChildTunnel](https://polygonscan.com/address/0x59485d57eecc4058f7831f46ee83a7078276b4ae) | governance | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [GovernorChildTunnel](https://polygonscan.com/address/0x5e828cb22cefa920e0f3fa18583269f6239818ad) | governance | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [GovernorChildTunnel](https://polygonscan.com/address/0xb4aead497fcbeaa3c37919032d42c29682f46376) | governance | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [IdentifierWhitelist](https://polygonscan.com/address/0x0d137e83e3cc52731014a69ede21ea006a8a9859) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [IdentifierWhitelist](https://polygonscan.com/address/0x2271a5e74ea8a29764ab10523575b41aa52455f0) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [LinearLongShortPairFinancialProductLibrary](https://polygonscan.com/address/0xcff28e9e83cec1bca8d8619dc7ea60244b433502) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [LongShortPairCreator](https://polygonscan.com/address/0x3e665d15425faee14eef53b9caaa0762b243911a) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [LongShortPairCreator](https://polygonscan.com/address/0x5fd7fff20ee851cd7bee72fb3c6d324e4c104c9f) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [LongShortPairCreator](https://polygonscan.com/address/0x62410e96a2ceb4d66824346e3264d1d9107a0abe) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [LongShortPairCreator](https://polygonscan.com/address/0x751190691a07acc3f43a7396ad87967bb685deed) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [LongShortPairCreator](https://polygonscan.com/address/0x92364a69abc938f45287e48bd0a0e550d7fa6f6e) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [MockOracleAncillary](https://polygonscan.com/address/0x0ad3176133d9c693217b8f8ff32e03c38cd8fa88) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [OptimisticOracle](https://polygonscan.com/address/0x6a55dd108b872fdb6d9d2f0fb46aa70ba2f78c4b) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [OptimisticOracle](https://polygonscan.com/address/0x8a481f28c23c72cb01452ca570ba165db5f55d24) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [OptimisticOracle](https://polygonscan.com/address/0x9f31a04709b3714654a3be0ac109e3bb2341c9f8) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [OptimisticOracle](https://polygonscan.com/address/0xa04ce43f8b0156ee1c3277921cf9dd7b0a402d3f) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [OptimisticOracle](https://polygonscan.com/address/0xaaf3f29521877d7a28c21e379bf7a5401883a6b2) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [OptimisticOracle](https://polygonscan.com/address/0xbb1a8db2d4350976a11cdfa60a1d43f97710da49) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [OracleChildTunnel](https://polygonscan.com/address/0x02b8733763dd76f73b8573e668eca3343a7d65e7) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [OracleChildTunnel](https://polygonscan.com/address/0x4093dc528c8a8371647e4e960c8bb7bc5e90e7c9) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [OracleChildTunnel](https://polygonscan.com/address/0x7ba7db70ae338ba74dab72a29b740bc7acd5af1b) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [OracleChildTunnel](https://polygonscan.com/address/0x7f08b770e52e80ad418a90038fbcdf10dc7cd62f) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [OracleChildTunnel](https://polygonscan.com/address/0x903fa079b93d2bb222eafcf1f59d0a9b628d354a) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [OracleChildTunnel](https://polygonscan.com/address/0xa0747016cbd78302a1d35f15640528edac1c203a) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [OracleChildTunnel](https://polygonscan.com/address/0xb718f795e674aeb733b57cbd2ebb3dcfe9fc3b6c) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [OracleChildTunnel](https://polygonscan.com/address/0xfc2f1bb788f2e818a36d23e8b6355db957ded117) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [Polygon_SpokePool](https://polygonscan.com/address/0x4a84a43274f5f99e94aa0ebef53bc06af8bc3dfb) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; creator_also_deploys_docs | audited (TP) |
| [RangeBondLongShortPairFinancialProductLibrary](https://polygonscan.com/address/0x7a9bbd278b40f90f1269cb3a9d94a63333febdd4) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [RangeBondLongShortPairFinancialProductLibrary](https://polygonscan.com/address/0x8245545845a664f25ce407ee2efe73ce6b14a837) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Registry](https://polygonscan.com/address/0x5f25b1647fa8eaea0e15edd413c7afcbe613b6f4) | registry | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Registry](https://polygonscan.com/address/0xa420b2d1c0841415a695b81e5b867bcd07dff8c9) | registry | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Registry](https://polygonscan.com/address/0xb0c6ed64a77a3d8f61b21922b13f39525fbf5fc0) | registry | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [SimpleSuccessTokenLongShortPairFinancialProductLibrary](https://polygonscan.com/address/0xc920dabe5f40d0785be9b4acf5b4b8d662a5955a) | token | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [SinkGovernor](https://polygonscan.com/address/0xbeabc2300271986c672b24732f295bafb21d5316) | governance | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [SinkOracle](https://polygonscan.com/address/0x7da554228555c8bf3748403573d48a2138c6b848) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [SinkOracle](https://polygonscan.com/address/0xe0fe15cf22b9b52b6ae309c7384e03244a6dd985) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [Store](https://polygonscan.com/address/0x2e3c81dfce8928a53f354a611d65ce990d4a33c0) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Store](https://polygonscan.com/address/0xb53a60f595ee2418be9f6057121ee77f0249ac28) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Store](https://polygonscan.com/address/0xe58480ca74f1a819fafd777beded4e2d5629943d) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [SuccessTokenLongShortPairFinancialProductLibrary](https://polygonscan.com/address/0xce9cf0c8f8121b573f6212344f53bc7746846e71) | token | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [TokenFactory](https://polygonscan.com/address/0x73c6f823cba34a2ae5e67a46abb7c6a9fb815a00) | factory | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [TokenFactory](https://polygonscan.com/address/0xc064b1fe8ce7138da4c07bfca1f8eed922d41f68) | factory | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [TokenFactory](https://polygonscan.com/address/0xe20fcda4981c8a58417c5a2ef6804b0835faa0ec) | factory | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |

### arbitrum (chain_id 42161)

| Contract / Address | Likely Role | Provenance Evidence | Audit Coverage |
|---|---|---|---|
| [AddressWhitelist](https://arbiscan.io/address/0x02d65fb01d3d88127df19838902ba42c6239c0fd) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Arbitrum_ChildMessenger](https://arbiscan.io/address/0xe0fe15cf22b9b52b6ae309c7384e03244a6dd985) | bridge | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Arbitrum_SpokePool](https://arbiscan.io/address/0xae54d52223c34e4102927516900cc3c562afe02e) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; creator_also_deploys_docs | audited (TP) |
| [AVM_BridgeDepositBox](https://arbiscan.io/address/0x0d6b8752e5adbafb3f75299ad15863a1fd02d565) | bridge | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [AVM_BridgeDepositBox](https://arbiscan.io/address/0x28077b47cd03326de7838926a63699849dd4fa87) | bridge | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [AVM_BridgeDepositBox](https://arbiscan.io/address/0xd8c6dd978a3768f7ddfe3a9aad2c3fd75fa9b6fd) | bridge | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [BinaryOptionLongShortPairFinancialProductLibrary](https://arbiscan.io/address/0xd2aa779253c0ab194d8c3e6708e5eb4697f13941) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [CoveredCallLongShortPairFinancialProductLibrary](https://arbiscan.io/address/0xbbc6009feffc27ce705322832cb2068f8c1e0a58) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Finder](https://arbiscan.io/address/0xb0b9f73b424ad8dc58156c2ae0d7a1115d1eccd1) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [GovernorSpoke](https://arbiscan.io/address/0x1771c470d41b8c39338450c380bf2c080a2cedd8) | governance | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [GovernorSpoke](https://arbiscan.io/address/0x7ba7db70ae338ba74dab72a29b740bc7acd5af1b) | governance | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [GovernorSpoke](https://arbiscan.io/address/0xa0747016cbd78302a1d35f15640528edac1c203a) | governance | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [IdentifierWhitelist](https://arbiscan.io/address/0x2914be6cd56276d208299d2062848b059fc10588) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; creator_also_deploys_docs | unmatched |
| [LinearLongShortPairFinancialProductLibrary](https://arbiscan.io/address/0x85f46e5acf6309345d0d6cfe22fbbaf7c349ff84) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [LongShortPairCreator](https://arbiscan.io/address/0xefd7ee5fc0bc42e41d800c4d9db912bc42a4530f) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [OptimisticOracle](https://arbiscan.io/address/0x031a7882ce3e8b4462b057ebb0c3f23cd731d234) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [OracleSpoke](https://arbiscan.io/address/0x0a8933f89f2674c052cbd91ad4fe48a14d6f2fc2) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; creator_also_deploys_docs | likely in scope |
| [OracleSpoke](https://arbiscan.io/address/0x196767568f848ff7607145a7c1f3cde44bb4ce98) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; creator_also_deploys_docs | likely in scope |
| [OracleSpoke](https://arbiscan.io/address/0x98a9703310d1fd0e268ab67917b0e581d295a086) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [RangeBondLongShortPairFinancialProductLibrary](https://arbiscan.io/address/0x129b61ce378b2b4b5ebeac648019e2427b74527e) | peripheral | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Registry](https://arbiscan.io/address/0x969b945cbb8b762f6f747e0c0ea8f8de51c5cb7b) | registry | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Registry](https://arbiscan.io/address/0xcdb25d0a6fffe639bc591a565f2d99507837f2b7) | registry | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Store](https://arbiscan.io/address/0x2d6fad39059f5fce80bff691f8f0bb30d5d4f214) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [TokenFactory](https://arbiscan.io/address/0xca5bca331b8137fd15c2fa6ba34655fa58de5a0b) | factory | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |

### linea (chain_id 59144)

| Contract / Address | Likely Role | Provenance Evidence | Audit Coverage |
|---|---|---|---|
| [ERC1967Proxy](https://lineascan.build/address/0xad7c5516b25661e0a204646b08024cd82ffe6c48) | proxy | deployer_neighborhood_docs_listed - proxy→0x5be04e53…; creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; c | likely in scope |
| [Linea_SpokePool](https://lineascan.build/address/0x477f34de55874729fd4f7e60b121338e7aa95145) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |
| [Linea_SpokePool](https://lineascan.build/address/0x5be04e53b465c6fd89ecff3d36ddf666d198e31a) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |
| [Linea_SpokePool](https://lineascan.build/address/0x9187be534efeb258933ef7eff4b67fe80209afcd) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; creator_also_deploys_docs | audited (TP) |
| [MulticallHandler](https://lineascan.build/address/0xa2dbffd8b25aed47435831254c4cd2f5a9dfe95a) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |

### blast (chain_id 81457)

| Contract / Address | Likely Role | Provenance Evidence | Audit Coverage |
|---|---|---|---|
| [AddressWhitelist](https://blastscan.io/address/0xd85630e361cebbc4c7f13e6eed3587050fb81b86) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Blast_SpokePool](https://blastscan.io/address/0x013604ce1fb573dac669bb2dfd24020ef7c8929e) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |
| [Blast_SpokePool](https://blastscan.io/address/0x2515288aa96e391e10ef8c9e7c781c37cd35a1f2) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |
| [Blast_SpokePool](https://blastscan.io/address/0x932657511225f1231251a50f8cbf523aa30cb36f) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |
| [Blast_SpokePool](https://blastscan.io/address/0x9b769e2b1a4936b51870d03902a9e2aeea6ee933) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; creator_also_deploys_docs | audited (TP) |
| [Blast_SpokePool](https://blastscan.io/address/0xb06c61fcc074efb8cf7fd707bc3bd8ab1aa5a4e9) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |
| [Blast_SpokePool](https://blastscan.io/address/0xb2b5c1b17b19d92cc4fc1f026b2133259e3ccd41) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |
| [Blast_SpokePool](https://blastscan.io/address/0xcfb37dab27f768be7212f98fb4f95dfbfa36d7df) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |
| [Blast_SpokePool](https://blastscan.io/address/0xe1601d869f3c72fdf12b9f40ca18e8c6c5f5d860) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |
| [Blast_SpokePool](https://blastscan.io/address/0xe2bd6d276623228848198379de87ebb039668570) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |
| [Blast_SpokePool](https://blastscan.io/address/0xf6689f13ff0b5f0435f41fc4270106f98d800c86) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |
| [GovernorSpoke](https://blastscan.io/address/0x9b4a302a548c7e313c2b74c461db7b84d3074a84) | governance | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [OptimisticOracle](https://blastscan.io/address/0x3ca11702f7c0f28e0b4e03c31f7492969862c569) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [OptimisticOracleV3](https://blastscan.io/address/0xe8ff2a3d5cc19ddcbd93328371e1dd8995e7afaa) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [OracleSpoke](https://blastscan.io/address/0x38fac33bd20d4c4cce085c0f347153c06cba2968) | oracle | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [Registry](https://blastscan.io/address/0x28077b47cd03326de7838926a63699849dd4fa87) | registry | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [UniversalSwapAndBridge](https://blastscan.io/address/0x52313039f1b849b49dce4bdf6a43ac76995be366) | router | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [UniversalSwapAndBridge](https://blastscan.io/address/0x57ee47829369e2ef62fbb423648bec70d0366204) | router | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | likely in scope |
| [0x213310...12e4](https://blastscan.io/address/0x21331016f2020b77528b690986ca0b7c6be012e4) | unknown | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [0x544f99...d07f](https://blastscan.io/address/0x544f99ae965062b17fe3c3600aba055bdea9d07f) | unknown | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |

### scroll (chain_id 534352)

| Contract / Address | Likely Role | Provenance Evidence | Audit Coverage |
|---|---|---|---|
| [AcrossEventEmitter](https://scrollscan.com/address/0xdac391869d4b1a0b658626a6f4bc90484667b617) | core | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | unmatched |
| [Scroll_SpokePool](https://scrollscan.com/address/0x02d65fb01d3d88127df19838902ba42c6239c0fd) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |
| [Scroll_SpokePool](https://scrollscan.com/address/0x28077b47cd03326de7838926a63699849dd4fa87) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |
| [Scroll_SpokePool](https://scrollscan.com/address/0x2914be6cd56276d208299d2062848b059fc10588) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; creator_also_deploys_docs | audited (TP) |
| [Scroll_SpokePool](https://scrollscan.com/address/0x9a077d4fcf7b26a0514baa4cff0b481e9c35ce87) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |
| [Scroll_SpokePool](https://scrollscan.com/address/0x9fda59848900a9c93b7dd9341312a292df8fcdc8) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |
| [Scroll_SpokePool](https://scrollscan.com/address/0xb0b9f73b424ad8dc58156c2ae0d7a1115d1eccd1) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |
| [Scroll_SpokePool](https://scrollscan.com/address/0xb9b78bb9f47d108e9d97a0836f3bb0452ec7793e) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[deployer_expansion_enrichment_v1,etherscan_family,sourcify]; creator_also_deploys | audited (TP) |
| [Scroll_SpokePool](https://scrollscan.com/address/0xe0b48589c05523290419fa0850556beca766ac38) | vault_pool | deployer_neighborhood_docs_listed - creator=0x9a8f92a8… (shares=1); facts=[etherscan_family,sourcify]; creator_also_deploys_docs | audited (TP) |

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 13 proxies on 1, 10, 56, 137, 8453, 42161, 59144, 81457, 534352. 10 follow EIP-1967 / UUPS patterns; 1 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 3 distinct deployer addresses: 0x463f64...162f, 0x9a8f92...b04d, 0xb4b8b6...1ffd, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

11 integration-surface rows detected from third-party enrichment provenance.

| Integration Target | Our Contract | Chain | Trust Assumption |
|---|---|---|---|
| defillama_adapter | [BOBA](https://etherscan.io/address/0x42bbfa2e77757c645eeaad1655e0911a7553efbc) | ethereum | integration target not characterized; investigate |
| defillama_adapter | [BridgePoolProd](https://etherscan.io/address/0x02fbb64517e1c6ed69a6faa3abf37db0482f1152) | ethereum | integration target not characterized; investigate |
| defillama_adapter | [BridgePoolProd](https://etherscan.io/address/0x256c8919ce1ab0e33974cf6aa9c71561ef3017b6) | ethereum | integration target not characterized; investigate |
| defillama_adapter | [BridgePoolProd](https://etherscan.io/address/0x43298f9f91a4545df64748e78a2c777c580573d6) | ethereum | integration target not characterized; investigate |
| defillama_adapter | [BridgePoolProd](https://etherscan.io/address/0x43f133fe6fdfa17c417695c476447dc2a449ba5b) | ethereum | integration target not characterized; investigate |
| defillama_adapter | [BridgePoolProd](https://etherscan.io/address/0x4841572daa1f8e4ce0f62570877c2d0cc18c9535) | ethereum | integration target not characterized; investigate |
| defillama_adapter | [BridgePoolProd](https://etherscan.io/address/0x7355efc63ae731f584380a9838292c7046c1e433) | ethereum | integration target not characterized; investigate |
| defillama_adapter | [BridgePoolProd](https://etherscan.io/address/0xdfe0ec39291e3b60aca122908f86809c9ee64e90) | ethereum | integration target not characterized; investigate |
| defillama_adapter | [HubPool](https://etherscan.io/address/0xc186fa914353c44b2e33ebe05f21846f1048beda) | ethereum | integration target not characterized; investigate |
| defillama_adapter | [MiniMeToken](https://etherscan.io/address/0x3472a5a71965499acd81997a54bba8d852c6e53d) | ethereum | integration target not characterized; investigate |
| defillama_adapter | [VotingToken](https://etherscan.io/address/0x04fa0d235c4abf4bcf4787af4cf447de572ef828) | ethereum | integration target not characterized; investigate |

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| Core logic | 48 | 29 | 19 | 60.4% |
| Factory templates | 10 | 0 | 10 | 0.0% |
| Integration surface | 11 | 1 | 10 | 9.1% |
| No provenance | 38 | 3 | 35 | 7.9% |
| Operational periphery | 170 | 25 | 145 | 14.7% |
| **Total** | 277 | 58 | 219 | 20.9% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2026-02-09 | OpenZeppelin | Across Protocol - ERC-3009 and Deterministic DepositIds Audit | unspecified | direct | [report](https://www.openzeppelin.com/news/across-protocol-erc-3009-and-deterministic-depositids-audit) |
| 2025-07-03 | OpenZeppelin | OpenZeppelin performed a differential audit of the across-protocol/contracts repository at commit c5 | unspecified | direct | [report](https://www.openzeppelin.com/news/across-protocol-oft-integration-differential-audit) |
| 2025-07-03 | OpenZeppelin | OpenZeppelin conducted a differential audit of the across-protocol/contracts repository, with the ba | unspecified | direct | [report](https://www.openzeppelin.com/news/periphery-changes-audit) |
| 2025-05-12 | OpenZeppelin | Across Linea CCTP Diff Audit | unspecified | direct | [report](https://www.openzeppelin.com/news/across-linea-cctp-diff-audit) |
| 2025-05-12 | OpenZeppelin | We audited the pull requests (PRs) #584 and #585 of the across-protocol/contracts repository. The me | unspecified | direct | [report](https://www.openzeppelin.com/news/across-protocol-diff-audit) |
| 2025-05-12 | OpenZeppelin | Across Protocol SVM Solidity Audit | unspecified | direct | [report](https://www.openzeppelin.com/news/across-protocol-svm-solidity-audit) |
| 2025-05-12 | OpenZeppelin | OpenZeppelin performed a diff audit of the Across Protocol contracts repository at commit 77761d7. S | unspecified | direct | [report](https://www.openzeppelin.com/news/bridged-usdc-support-audit) |
| unknown | discovery-ingest-placeholder | UMA DVM oracle whitepaper | unspecified | direct | not available |

### Gap Analysis

Core logic: 29 of 48 contracts covered (60.4%). Operational periphery: 25 of 170 covered (14.7%). Last audit 4 days ago.

1 contracts deployed after the most recent audit. These are by definition not covered by any existing audit.

---

## Appendix

### Docs Pages Referenced

- [https://docs.across.to/introduction/bug-bounty](https://docs.across.to/introduction/bug-bounty) - audit_report_link
- [https://github.com/across-protocol/skills/blob/master/skills/security/SKILL.md](https://github.com/across-protocol/skills/blob/master/skills/security/SKILL.md) - audit_report_link
- [https://github.com/openai/frontier-evals/blob/main/project/evmbench/audits/2026-01-tempo-feeamm/findings/H-01.md](https://github.com/openai/frontier-evals/blob/main/project/evmbench/audits/2026-01-tempo-feeamm/findings/H-01.md) - audit_report_link
- [https://github.com/openai/frontier-evals/blob/main/project/evmbench/audits/2026-01-tempo-mpp-streams/findings/H-01.md](https://github.com/openai/frontier-evals/blob/main/project/evmbench/audits/2026-01-tempo-mpp-streams/findings/H-01.md) - audit_report_link
- [https://github.com/openai/frontier-evals/blob/main/project/evmbench/audits/2026-01-tempo-mpp-streams/findings/H-02.md](https://github.com/openai/frontier-evals/blob/main/project/evmbench/audits/2026-01-tempo-mpp-streams/findings/H-02.md) - audit_report_link
- [https://github.com/openai/frontier-evals/blob/main/project/evmbench/audits/2026-01-tempo-stablecoin-dex/findings/H-03.md](https://github.com/openai/frontier-evals/blob/main/project/evmbench/audits/2026-01-tempo-stablecoin-dex/findings/H-03.md) - audit_report_link
- [https://github.com/UMAprotocol/protocol/blob/92c9dfbbffd2cf394498ff745f95bcb5e2a6f138/documentation/synthetic_tokens/known_issues.md](https://github.com/UMAprotocol/protocol/blob/92c9dfbbffd2cf394498ff745f95bcb5e2a6f138/documentation/synthetic_tokens/known_issues.md) - audit_report_link
- [https://github.com/UMAprotocol/protocol/blob/a3bf46270787cbaae4ed2218f064b1217c153a50/packages/core/contracts/polygon/README.md](https://github.com/UMAprotocol/protocol/blob/a3bf46270787cbaae4ed2218f064b1217c153a50/packages/core/contracts/polygon/README.md) - audit_report_link
- [https://github.com/UMAprotocol/protocol/blob/master/STYLE.md](https://github.com/UMAprotocol/protocol/blob/master/STYLE.md) - audit_report_link
- [https://github.com/UMAprotocol/whitepaper/blob/master/UMA-DVM-oracle-whitepaper.pdf](https://github.com/UMAprotocol/whitepaper/blob/master/UMA-DVM-oracle-whitepaper.pdf) - audit_report_link

### Audit Reports (full list)

- 2026-02-09 - OpenZeppelin - Across Protocol - ERC-3009 and Deterministic DepositIds Audit - https://www.openzeppelin.com/news/across-protocol-erc-3009-and-deterministic-depositids-audit
- 2025-07-03 - OpenZeppelin - OpenZeppelin performed a differential audit of the across-protocol/contracts repository at commit c5d75410 against base commit c88ac8ad. Specifically, the changes highlighted in this diff were the main subject of this audit. In addition, the following two pull requests were also audited: Pull request #1031 at commit e05964b Pull request #1032 at commit 06b14cdf In scope were the following files: contracts ├── AdapterStore.sol ├── AlephZero_SpokePool.sol ├── Arbitrum_SpokePool.sol ├── Ethereum_SpokePool.sol ├── Linea_SpokePool.sol ├── Ovm_SpokePool.sol ├── PolygonZkEVM_SpokePool.sol ├── Polygon_SpokePool.sol ├── Scroll_SpokePool.sol ├── SpokePool.sol ├── Succinct_SpokePool.sol ├── Universal_SpokePool.sol ├── ZkSync_SpokePool.sol ├── chain-adapters │   ├── Arbitrum_Adapter.sol │   └── Universal_Adapter.sol ├── libraries │   ├── OFTTransportAdapter.sol │   └── OFTTransportAdapterWithStore.sol └── interfaces ├── SpokePoolInterface.sol └── V3SpokePoolInterface.sol - https://www.openzeppelin.com/news/across-protocol-oft-integration-differential-audit
- 2025-07-03 - OpenZeppelin - OpenZeppelin conducted a differential audit of the across-protocol/contracts repository, with the base at commit 7362cd0 (master) and the head at commit b84dbfa. In scope were the following files: contracts ├── external │   └── interfaces │     ├── IERC20Auth.sol │     └── IPermit2.sol ├── handlers │   └── MulticallHandler.sol ├── interfaces │   └── SpokePoolPeripheryInterface.sol ├── libraries │   └── PeripherySigningLib.sol └── SpokePoolPeriphery.sol - https://www.openzeppelin.com/news/periphery-changes-audit
- 2025-05-12 - OpenZeppelin - Across Linea CCTP Diff Audit - https://www.openzeppelin.com/news/across-linea-cctp-diff-audit
- 2025-05-12 - OpenZeppelin - We audited the pull requests (PRs) #584 and #585 of the across-protocol/contracts repository. The merge commit f56146a was used as the reference for both sets of changes. In scope were the following files: contracts chain-adapters Arbitrum_CustomGasToken_Adapter.sol Arbitrum_CustomGasToken_Funder.sol SpokePool.sol - https://www.openzeppelin.com/news/across-protocol-diff-audit
- 2025-05-12 - OpenZeppelin - Across Protocol SVM Solidity Audit - https://www.openzeppelin.com/news/across-protocol-svm-solidity-audit
- 2025-05-12 - OpenZeppelin - OpenZeppelin performed a diff audit of the Across Protocol contracts repository at commit 77761d7. Specifically, the changes introduced by pull request #941 and pull request #944 were audited. - https://www.openzeppelin.com/news/bridged-usdc-support-audit
- unknown - discovery-ingest-placeholder - UMA DVM oracle whitepaper

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/across.json
- **Source code:** not fetched in v1

### Excluded Contracts (summary counts)

| Exclusion Reason | Count | Notes |
|---|---:|---|
| infrastructure blocklist | 0 | Summary from p2 provenance classifications |
| shared deployer contamination | 0 | Summary from p2 provenance classifications |
| opaque enrichment only | 7 | Summary from p2 provenance classifications |
| deployer expansion untethered | 4 | Summary from p2 provenance classifications |
| factory rpc expansion untethered | 10 | Summary from p2 provenance classifications |
| considered but unpromoted docs only | 0 | Summary from p2 provenance classifications |
| never evaluated docs only | 0 | Summary from p2 provenance classifications |
| external placeholder docs only | 0 | Summary from p2 provenance classifications |

### Data Availability Notes

- **Provenance classification:** available.
- **Multisig / timelock metadata:** not extracted by current pipeline.
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $17,337,944.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:38:27.916Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-6b7bbd16
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Per-contract TVL snapshot available with total on-chain TVL $17,337,944.
- **Staking / governance contracts classified as operational periphery.** This brief classifies contracts by deployment provenance, not by contract-function semantics. Operators and scoping agents should treat them with core-logic-level attention regardless of section placement.
