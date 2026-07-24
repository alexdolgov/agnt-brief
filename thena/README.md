# Agentic Audit Brief: THENA

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: THENA (`thena`)
- Website: [https://www.thena.fi](https://www.thena.fi)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, opbnb
- Contract surface: 194 unique implementations (483 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $3,095,581.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for THENA. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across bsc, opbnb. Structural roles: 1 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 2; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 192 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 98
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/173
- Verified + Unaudited implementations: 173
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 194
- Raw deployments: 483
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (173)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirdropClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x049eea15a10db9bc6e201edc2904841eef49a923`; bsc `0x5c35b4f59f020395ee375ce6417f5033c666beee`; bsc `0xb50dc7b90f4ab8133b27df302b35d4d662a87b55`; bsc `0xdb807083c1a701ef4411d1bc623251c6d5e678b6`; bsc `0xf780fde07fa56a881fb9566c7bdf9653471ac70a` | ⚠️ Unaudited |
| AirdropClaimTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fa9c21c585b009972c705c992c5e93a4efd5202` | ⚠️ Unaudited |
| AirdropClaimTheNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf04ca87fe55f413b027ce01d8c9dcd662495fed4` | ⚠️ Unaudited |
| AirdropClaimTheNFTTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2b259baed99d032c514fd6f00536450c76351b5e`; bsc `0x8e1ec0abb25a85013922602e66c5ad50cae84797` | ⚠️ Unaudited |
| AlgebraCommunityVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x8bb54ee0880127f6ac22eb0d90e6871aedda1bb2`; bsc `0xaa42d6a54e473d93249b09207f090404814b7e0e` | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c4e6ecb79933b983148ac2dbd55c14d2ba250b1` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x2308bd5b1f66c32cc482254b4ee99cc7708d2e41`; bsc `0x6f866dfb4ec07864807217c48e4ff58b137c15a7`; bsc `0x9b495496690c669937d299fdbdbda27f91582a21` | ⚠️ Unaudited |
| AlgebraFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x212de9ae4b1beca60be0e8fa0210a26b81614c9b`; bsc `0x30055f87716d3dfd0e5198c27024481099fb4a98`; bsc `0x306f06c147f064a010530292a1eb6737c3e378e4`; opbnb `0x9e92b57bff702530a0c3be9ff5fe2c24f95a91f6` | ⚠️ Unaudited |
| AlgebraLimitFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7fb6b676b7f7eaf8f60b057697e6e1b108189036` | ⚠️ Unaudited |
| AlgebraPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x06852dc9d6e44782dd02994c368febc4dc1b8a17`; bsc `0x70117e878f1ffd0af2e6d360f77c8972e7ced94a`; bsc `0xc89f69baa3ff17a842ab2de89e5fc8a8e2cc7358`; opbnb `0x306f06c147f064a010530292a1eb6737c3e378e4`; opbnb `0x4e944464f0482d80dd666c427e88ff4a723557c4`; opbnb `0xc89f69baa3ff17a842ab2de89e5fc8a8e2cc7358` | ⚠️ Unaudited |
| AlgebraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: bsc `0x2d2f254c0624297af92b42f7258075c4e36f5cfa`; bsc `0x31c933a4d80dcb7b8246cee9287f096e14903b11`; bsc `0x3b551321be3624829d9f4fb0d90ced226b183eb5`; bsc `0x53a3d41e3943133ae67ff11a499792e3783710fb`; bsc `0x64b37403d048f37d9d53b95af76f853aa598ce53`; bsc `0x6cba11e35b7655c6b9727d0c8ecab3a70af9a6f9`; bsc `0x84d3623a59176cad1f28933b76cec74228cf234f`; bsc `0x931f531e276a12c8eb443eefe666781f72833a7d`; bsc `0xb0ecbc570b1b4cdbbf22c1fd20a377f3aa76203e`; bsc `0xd4fc5045b4e285d466048bf5269003e11c3f09c8` | ⚠️ Unaudited |
| AlgebraVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x2ca4df86b060da251ba7609875048b4e599be431`; bsc `0xb1147562ed6bbc9672c14fec27892ab1aafbdb2c`; bsc `0xd7379757f4f490480ee80221cc771c82eaa4b175` | ⚠️ Unaudited |
| AlgebraVaultFactoryStub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x287e9e48b0169e95d3fafddbd4975813a3375328` | ⚠️ Unaudited |
| AutomationEpochDistributorBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd27cf28dca5867ef6dbc456f583abaa4fa5c0be9` | ⚠️ Unaudited |
| BasePluginV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa78c6467b5aa53d0c1ad114dbf93082e6864573` | ⚠️ Unaudited |
| BribeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc577c8276378d51a3e2ecea4d649a02b8e1fbab8` | ⚠️ Unaudited |
| BribeFactoryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2d61bf5cfdf724cfbc0a7b0c5e2b9f17475b57d2`; bsc `0xe04723fe7470b0289bdc9dd473a8b6f7703a4f6a` | ⚠️ Unaudited |
| BribeFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x242e4ee00aecc6b2c728a8e065c746ad8218a984`; bsc `0xb9db4b1c5431dca6fea45e6a2c2a6fa3a2cf1c1e` | ⚠️ Unaudited |
| BribeFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2b01fc6b1b3f4ff60f2d9fcab5af8f298f3d6fb9`; bsc `0x35589589c082a55038fad5090608ea752ca28ffe` | ⚠️ Unaudited |
| BribeFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4e9a8ec8df327e2a041c94cf9ea828b56efdc095`; bsc `0xcb78f8d9dfb78cd43bd2dc9ffe75e39fbe7f2820` | ⚠️ Unaudited |
| BribeFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4ffcf83feae8a44f61575722aefc2706e73c7770`; bsc `0xe63b8939c491a1ac073c394ad76139067be314b5` | ⚠️ Unaudited |
| BribeFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6a2caba827f0851612595ab9e52a2e16c7c50e86`; bsc `0xc29d96473eb1fbe1d434407cb76e48cbef591c2f` | ⚠️ Unaudited |
| BribeFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x99768701cce63da41311f959f120425ed2192ecb`; bsc `0xd50ceab3071c61c85d04bdd65feb12fee7c91375` | ⚠️ Unaudited |
| BribesDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x198dab4b4e03f9f3f44e605d567b15bb72138a14`; bsc `0x448dedf43005fccad0cdabd989a4aee63e73b560`; bsc `0x89a10b78b099077d6e3bf9bf5c21179108545ac9` | ⚠️ Unaudited |
| BribesDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbbea218f6e61f36a2a98ec342100b1e73d60cbb6` | ⚠️ Unaudited |
| CCIPThenaTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x89ce89cdea483c15721bae675e3a001210bc4cd2`; bsc `0xa287ad719137f29655e0a48b7837f0b6bbf73787` | ⚠️ Unaudited |
| Claimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2d64e094d37dd7d7759603fb9ed6b2306d1e5b2` | ⚠️ Unaudited |
| CLFeesVaultSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c3d25becef92a8bc5bb84b481435033c0946287` | ⚠️ Unaudited |
| DibsRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x444efae67c5763d48105440a457b6f89e792e194`; bsc `0x6e298908514c77c2dc1dc8faa150eef46ad7f03b` | ⚠️ Unaudited |
| DibsRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x891986908f0082ee5327827af32229c09ae317ea`; bsc `0xa3650060f431c066ccb1233e33198ec01c403d9a`; bsc `0xbf8d9b96a84893d9d4b341322488db393dec12f5`; bsc `0xe001cdff3e22f4459068a78ae08b65c831ef10df` | ⚠️ Unaudited |
| DistributeFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88820109901b8fb8aabe7571e6c12339bd0c2777` | ⚠️ Unaudited |
| DistributeFees | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x8ca434fed3b10e752a6ea6109b977b762e7ec6fa`; bsc `0x974a96fa2db6d87d30d9127f156f8ab297a8b340`; bsc `0x9f0d34271d235fdd1c018df97151ad296de6f65d` | ⚠️ Unaudited |
| DistributeFees | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8db743c5ad37eccece39be36ed4657c1670b4608`; bsc `0xfd71f0975e5261e507f0b497ef2d879cd45d7cf6` | ⚠️ Unaudited |
| EpochController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x019e0d2a20d4dce4b029bd692a76e0ee2c816379`; bsc `0x4e5009a313978efa9732997e93928529f8a84072`; bsc `0xd369c82f73b3d8111151dd347bcecffb68c293f0` | ⚠️ Unaudited |
| EpochController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x15b0f1c42a9b690c0d0c081ba986a4d5a0d39275`; bsc `0xbc197ebc05f0f543032493ad63aa2df4dc103911` | ⚠️ Unaudited |
| EpochDistributorBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1efc2e6bcc59b119916ffff931fef69ffeb991a` | ⚠️ Unaudited |
| EpochNFTSplitManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x999b56e95fee66afb14f535d0cb55fb6bdde3fe3`; bsc `0xccfcba7c72f212668a3596dd497a672a8d420ad8` | ⚠️ Unaudited |
| FarmingCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x098b36c4c14ae996bf7b9b0ca97e125bc241ed42`; bsc `0x0cd53eeb75d72ee0e3e64206b63d7204351d08bf`; bsc `0x6cbc3eceecc9c6a755005c07358388050737d955`; bsc `0x702acb8320049e2912986685b3c13ce9589de438`; bsc `0x78dbf0c75383a89f1a37f3b07f54ae1888fc7f71`; bsc `0xfbc41acdf542752e2295024c9e0f8a6fb6276e1f` | ⚠️ Unaudited |
| FarmingPluginFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x00b49bb385c4165ec77392b4b97955f04ac76f38`; bsc `0x438e337779db4389841ecd4df8cd38ecaa0da19d`; bsc `0xcc1cfed7537cad3a8186b5bdbd488d97bd1780bb`; bsc `0xf5c9df01a8aef34063d250e4e14588253723779f`; bsc `0xfb027e25f7c9958d7bc9d246766742aa7a7a79f7` | ⚠️ Unaudited |
| FeeVaultSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x69db437f1a773f4c1c95ce7c3c6b7229c2db61a0`; bsc `0xbdf004370ba2287f081963b5ceca3f9f24dd62cc`; bsc `0xbdf7f1ac6610ec21440bae82f76ce2cf50aee171`; bsc `0xbe1e4c2bcd963a609074247d700fc730562c9d99`; bsc `0xbf5359bb45e6a199fb74ed4548bda830289bd095`; bsc `0xe3dd9c3583754a436d8fd1cbd66d906fe874f2ab` | ⚠️ Unaudited |
| GaugeExtraRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x1a30f982c8f0c95bfabff0715db0513ace82a53c`; bsc `0x28bb19eafb1f637ecc754f458f9d415b00287af7`; bsc `0x4a4207d7e27bd49168205ef323f577a24e75faf3`; bsc `0x5aa7a606aa7937b116f863f73d64df272b6a940c`; bsc `0x9dbf10be5f3ed0ba8e86e138b56c3f87ae927278`; bsc `0xa7266b2303725f731851dfe944a432f8a2ea5c9c` | ⚠️ Unaudited |
| GaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0xa9ce35cf6ef12cdab4a99f69ebc819b7eaeda651`; bsc `0xb02d192540f45efb40242769b4ae81dd7b1564f4`; bsc `0xc9e5c9fbb843e168282e2cfbebbc3c7f0ec6a6b1` | ⚠️ Unaudited |
| GaugeFactoryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x620eaa64b0deb33c1db1cd7ae1bdcda923cb180b`; bsc `0xfc1bc666a98703505534477e651a2470508c99a4` | ⚠️ Unaudited |
| GaugeFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x2a9551cdae59a6fd8396f11fb987fc0ce116f787`; bsc `0x415d2901bac5edf9463d4b438e3c46477bce34c7`; bsc `0xa433549fd374bbd08c8593329c90fe9b9ebc18a2`; bsc `0xcfe13d138d6471b827528b077eadc9330b9fad78` | ⚠️ Unaudited |
| GaugeFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x2c788fe40a417612cb654b14a944cd549b5bf130`; bsc `0xbe670d3a23a7250463727f3867a65759ab9dba2a`; bsc `0xc37ca878d351aa45ce51617d91be642457b9f55b` | ⚠️ Unaudited |
| GaugeFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f850bbe47bbd6f6d4ef7cfc458d9c236691a159` | ⚠️ Unaudited |
| GaugeFactoryV2_CL | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0248fdfba1e2815c9a2adf10fd6f5cf3cda36c73`; bsc `0xb065e4f5d71a55a4e4fc2bd871b36e33053cabeb` | ⚠️ Unaudited |
| GaugeIchiFeeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: bsc `0x2045e5e6b296277722fdc8c992018e6494fa6eb7`; bsc `0x29932707b5b5ed986c85c8b323e9eb0a4446b4c5`; bsc `0x29bb9dba54cc16d064885c5dff44c77e5bc5a8a8`; bsc `0x42e1bf58f7b6ad93c23f3d1a22e22329e726ba58`; bsc `0x4e519a9b4de1de28f869887a6817a8a87251afd5`; bsc `0x606d0c794f585b6312a3052c7a5724a064ddbc90`; bsc `0x6f802469f6bdf9bcafc0bde55156e22cde1481b5`; bsc `0x9d2c099fc3791786a1798045c49da9ee915e3b4b`; bsc `0x9dec1581b929ca89acd189bd19a2fbe103eb3f2d`; bsc `0xb4dee5d77f7432846d12183c2fb3999c2b61f455` | ⚠️ Unaudited |
| GaugeSimple | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x2f92bcc2da319262ba4ddc46d883b23f7e121bb2`; bsc `0xa95186c80df0438d4ecbf7df3da6b6153ba9b8d6`; bsc `0xba445618ffcb3edd639304d145e423a57c33e871`; bsc `0xcf2071cc2f8f53f611e528f7558cfcab5e64541a`; bsc `0xe49338c0106e867ffa93664c945770fda51e0da8`; bsc `0xe6519bab9dbd868df05584c898ef3c60fabc3b0c` | ⚠️ Unaudited |
| GaugeSimpleFeeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8646ecb742649e8e3803aaf619ee3eecb851b0fe` | ⚠️ Unaudited |
| GaugeSimpleFeeDistributionAutomation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3443487befbd48a75c48a6302993540862a2a336` | ⚠️ Unaudited |
| GlobalFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x247009c6f39bc08d5d39ac38c9d5a0d316947d9c` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-258658 | `0x7d70ee3774325c51e021af1f7987c214d2caa184` | ⚠️ Unaudited |
| IncentiveMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x1927cd283ea8505660616304bc7c36aac4a7e7aa`; bsc `0x2814a4cf03911afc4b0432dbad6cf1d79b72bbf4`; bsc `0x904ecc49291d03fe003f7dfeb2bbf38c8bf7657b`; bsc `0xcc7b515f792b1b1f0760033e5ed9515cca837c59`; bsc `0xdddc6533d3424f938562b768b4cdb0fd03c6c46d` | ⚠️ Unaudited |
| IncentiveMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x80ad2f2ed4f00b152d7ca5e74920c944bfef0701` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x11746fd90091228a97974435d6be5e10bda92f7c`; bsc `0x2e4979031b9d97b542ea4fd220057b60330f1748`; bsc `0xe58e64fb76e3c3246c34ee596fb8da300b5adfbb` | ⚠️ Unaudited |
| MerkleTree | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x4259b99c7c6121d0cce4c9b7c5d8bce731143cd7`; bsc `0xf25d35327deb03abb89f94f426237083f81ba31f`; bsc `0xfd502fa14acf1828684090cc08d3c59b6bf74b11` | ⚠️ Unaudited |
| MerkleTreeTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf34f9b3c2fa603486652f12426fcd9614503a7bc` | ⚠️ Unaudited |
| MerkleTreeTHENFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xd6ecbd4771cb66743ecba33a545b20a90bb51404`; bsc `0xd73179657b144d653258d8a6ab92edccc84aa78a` | ⚠️ Unaudited |
| MerkleTreeTHENFTTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2528a0a8205b9c937b209ea2878ae375286841ad`; bsc `0x3f2cebe57af48978a5297b4cb5fb37262b56b10d` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x273da601356a4e1ef4842ad6db1ca192e209a34f`; bsc `0xd478081c307cf86218c0d88cc8ed11a0f1271780` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31f4bf997973376e62d02f09606c54a94082103c` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x406ec2705f1399d25801bd86b7d8d69ab9a91ab9`; bsc `0x7959a75a97f52ef154acf59c1f623afb1f5da3ab` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x5115c12b2d8dbed8be5239dfabd046aa85b4261d`; bsc `0x6c1a357f0d737a889ea6b0321257d6d4ca664dfe`; bsc `0x86069feb223ee303085a1a505892c9d4bdbee996` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5e3d6e4350b13295cd11c024eccff9efa5e9ea5b`; bsc `0xb7ed8fa63bea18986fa78d62f33497b1acdea1d8` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf15b76244c184b4ccd37f419e0f4591b3fab9290` | ⚠️ Unaudited |
| NFTSalesSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x02308f4455cd6d2109092c7903d1ed843440e1f7`; bsc `0x0c6e178271558571f54077cd32e97a1579119ac4`; bsc `0x36792f273b1db3469a2b7ba657a5dd3c78adf507`; bsc `0x880a58766cd15139ba816a57197f7393d97d6628` | ⚠️ Unaudited |
| NFTSalesSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x7601566460ddf025e7da98129c392a81ec91cd0b`; bsc `0x85c5c894d8da0df8c0f32bf8b7af8f88e3f772de`; bsc `0xdd9520b1a54b6ebdc2a4cd8e1d99becbdc8ec78e` | ⚠️ Unaudited |
| NFTSplitAutomation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2e974a81f68eafa2a197a3a6eb6e75949504524e`; bsc `0xad85026986d1c887ba715901a45239fece88604c` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x3b6c025d0560a17a0cbafb7ac6bf323eb45ef964`; bsc `0xbf77b742ee1c0a6883c009ce590a832debe74064`; opbnb `0x8089ed19d7ce5132003b9b135bb4d8c3f36e3168` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x643b68bf3f855b8475c0a700b6d1020bfc21d02e` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xa51adb08cbe6ae398046a23bec013979816b77ab` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x9356934eb3fbae6274eae6efc905b292f04f0122`; opbnb `0xa51adb08cbe6ae398046a23bec013979816b77ab` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0c04481fe0ebbb3655d51827ea0364272d73045b`; bsc `0xd9f2a8b8361121d1b2c3f705c99477e9f9526380` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x19856b16673ba25091b41c349444c95a7ea62728`; bsc `0x2b481d200c6679840435c9997dc2499fda752e09`; bsc `0x95d2c96f4b7a27da6c626522bd90a41b9b2614dc`; bsc `0xbd550548983a492eb0a1663e0eb1de250555ccb9` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1a976411cb618a0ca3c89a902a9528cd4482ec84`; bsc `0xe7b3795b2d70d3f5f219d1ffdd59acf622e82a5b` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1c0bc6c51c8e877af0427b7390cc3c880855d8a5`; bsc `0x839042df30d19c112b2ea77544ea2ec222a61d84` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2dcc9c8fd2e283a8324e6b5b09733c0a872a14ab`; bsc `0x4c941dc58b960ebd35d2582837abf3e55546de12` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x43e55fccd1462e9edfeb4c6dd2b358323049137f`; bsc `0x51460926764fa34f8688ec642e9ca10d293a1aba` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x53a67b6b57907aa1926e95b004578a9bacb72e15`; bsc `0xc2b480cd0c7c8f3ea57654feac9d8d6c16302950` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6a304087d888e48ed94de6c1efe05aec6913e08e`; bsc `0xd96d2f53b43526cc4b2f0bbf53c602d21e7ab147` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x711f29161cc49b1656f162600ba121bcc6388daf`; bsc `0xf22f8a14265c909ba562b0166fa3d5733f9ddf34` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x7419477c03b0feb9286f216b9d19e42f86b288b3`; bsc `0xd73ad1ab5f6b71f811dfc0adcdb7b457fd03fdc5` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x87627d13800eed68026fdc5d0f151b518c7be5e4`; bsc `0xf1035551c583dfd2d8b04f4eba70528f5c89f2fc`; bsc `0xf2298325bc2fcd87da804f4cf169553f3e0309f1` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xe89080ceb6caeb9eba5a0d4aa13686efcb78a32e`; bsc `0xebff38afad31a09f3e01446f6149bb06c1d91862` | ⚠️ Unaudited |
| PairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27dfd2d7b85e0010542da35c6ebcd59e45fc949d` | ⚠️ Unaudited |
| PairFactoryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x879f8fd307ba4442e22e77d47683f35313760dc8`; bsc `0xafd89d21bdb66d00817d4153e055830b1c2b3970` | ⚠️ Unaudited |
| PairFactoryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x96f8b6972775c9435d46166acdb3b806f8602df4`; bsc `0xedfa2a7eed6bb11876ae94462a7238a0c515bf08` | ⚠️ Unaudited |
| PermissionsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xdf46b89e7dd49195fcdab37c3843f6ecbc5e3749`; bsc `0xe3db58904b868efdecd374ed4f7b75e2a0f3e0eb` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x5d120a288f1c9b9d382e7deb64573f15e18d990e`; bsc `0x8b9ca04656a74e218ecbd444c493872d19533e06`; bsc `0x90c0df115e4478702c73f6f7be4881d430492efb`; bsc `0xc06cb27ebb868fa197a24f399680ab674de04575` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x6cf8dd678619bdd84f5ea7d487d75970920ee83e`; bsc `0xea68020d6a9532eec42d4db0f92b83580c39b2ca`; opbnb `0xf15b76244c184b4ccd37f419e0f4591b3fab9290` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71af3b059b1daa81ee65529bca82779edfc3916d` | ⚠️ Unaudited |
| RewardAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x07678a2309dbed40576b2dcc723ee5f1b5d808ee`; bsc `0x2083e6a3674a02747b3ace1cfcd621001c4825b9`; bsc `0xa636471a76dd3777e5b101dea2e07b9656c664e9`; bsc `0xe4253eaefa1ac62bccbf919dff1d113431bddf31` | ⚠️ Unaudited |
| RewardAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0b6cff48836eea83795ab8b9a04b1b4654d96c46`; bsc `0xc548c145def391615a5a62f010122e06f24f3e67` | ⚠️ Unaudited |
| RewardAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x15b04e78143499f916a94458c03e090a5fd6bf0d`; bsc `0x8953d7251eb73ec15e267a526e683f93083d1245` | ⚠️ Unaudited |
| RewardAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42ea6315a0784e54e6b28ab79f80f2e7c4774209` | ⚠️ Unaudited |
| RewardAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x46d9ea4c3c8db14d2be0d0bab24dfd29735d6c34`; bsc `0xdb65c1c922632b8b62134d49785316818ade413c`; bsc `0xfbf34269805abc9af6baee182f5f9dbe79e5bc77` | ⚠️ Unaudited |
| RewardAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x54a3e5ef4ba0308fc60a5c159a96376cc0bb4787`; bsc `0xc472ddec82610f54d431fc864d24ff120d7dfcf2` | ⚠️ Unaudited |
| RewardAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6e75e035a1cea646b994fab0e119e18ae8931c16`; bsc `0xf94e046c6a4f4c5a4eeea69ac007dbb132832dc1` | ⚠️ Unaudited |
| RewardAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x976c5c046451aa1b4fdaada1aa5493a789d54fc5`; bsc `0xaa859c93451988cf6f1cc70c8ed6514702ce7a8d` | ⚠️ Unaudited |
| RewardEarnedHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1ec88f8c3d95a6ba0560c1aa6c184e334b2c1692`; bsc `0x9870d4401d8f17cde16fadeab64559848f397319` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x09c318865c54e2250b5e72cc486f1fdcfce98019`; bsc `0x3754ae7e4bc247e4ab7ed00b251024f476e456a5` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0da0b5655e5f3ce86b06f2ed4114193011b9aba9`; bsc `0x7f0cd86b21032d7c2fa9ef513309655fe4b1c3bc` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x66117d9c7a019760b02fb45abc65158c4e76a9cb`; bsc `0xb789f1d040f7d07240bfe5082aef7ce51a442fd1` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x67da2f552e72231635b66568c6a801125aa95b56`; bsc `0xa2bc09c290a260cdc6b63a5434ed81614a9624de`; bsc `0xe7038191ba7425bf6de3f89451b69f4191b32365` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x68875a64cf83c747fa76fe0342f9e32498037baa`; bsc `0x86b9921b824380e8ff4a5ca5be2d3cfad46fb9ca`; bsc `0xc7794f1b84db817834dbff9b2803ebed1f6dec1e` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb528c3a6f1981d23856521104a9e337c7f484649`; bsc `0xed7561b01930ae04dfb80ebc70a221660b90c3c4` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x3eb5ef1ef1c85af63d0d4b0856803732239196e9`; bsc `0x9a6a786d4a604cdf91a753fab7af15629e79bbb4`; bsc `0xa6e0e731cb1e99aede0f9c9128d04f948e18727d`; bsc `0xe9fe83aa430ace4b703c299701142f9dfdde730e` | ⚠️ Unaudited |
| RewardsDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x4e29c0acf891d35ec12b56140e1c8f45220413e4`; bsc `0xc6be40f6a14d4c2f3aadf9b02294b003e3967779` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x20a304a7d126758dfe6b243d0fc515f83bca8431`; bsc `0x9b237893321b2d447e1d1ae02004eba30b187d0d`; bsc `0xc134fccb25334c1e7cf09e5aa7b88e3f4f893a69` | ⚠️ Unaudited |
| RouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x8f097e07a07bf2f031e5513f764dafc6df58e818`; bsc `0xbce35ab1e7b0a4a2fe639013b485db45f1cdf22f`; bsc `0xd4ae6eca985340dd434d38f470accce4dc78d109` | ⚠️ Unaudited |
| Royalties | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x68775950553cf10ee3c8618bca5637796fd56916`; bsc `0xbb2caf56bf29379e329dfed453cbe60e4d913882`; bsc `0xbe3b34b69b9d7a4a919a7b7da1ae34061e46c49d` | ⚠️ Unaudited |
| SimpleAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1e0a496c3bed9d7199a539f010e2efbd03d110c2`; bsc `0x9e237b0a94fc69efa99f2a66e4d9ddce183397fe` | ⚠️ Unaudited |
| SimpleAirdropDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x8861d2a348128cb3edab258254e5265e0b9951c3`; bsc `0xa18c09298ab86bf54306c89db02b9135ca2141c1` | ⚠️ Unaudited |
| SimpleAirdropDAO2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb1c0474aa157ae33585bdde7455390ebe38f2bb` | ⚠️ Unaudited |
| SimpleAirdropFNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ba3ef6e6729c88777159357188395a72f77ab2c` | ⚠️ Unaudited |
| SimpleAirdropFNFT2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89d0155d12448ab83e6e89c8b5a0f9a4bf31c076` | ⚠️ Unaudited |
| stakingNFTConverterRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x1fe7d95aef61fe0ab9f4e31acd506aa337ffdc5b`; bsc `0xe2dff99da89011f341efaa575ba8d37aacde4dc8`; bsc `0xf8f8d50bb561f08dcbe3ddc0ae471e289679fd5b` | ⚠️ Unaudited |
| StakingNFTFeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14cbeee51410c4e3b8269b534933404aee416a96` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x327dd3208f0bcf590a66110acb6e5e6941a4efa0` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x429c60346ee8f4577f9ec1329cedd4695787639f`; bsc `0x76689a9be4759f9cecb5a1d86d4f371b6db4c7a6`; opbnb `0x9356934eb3fbae6274eae6efc905b292f04f0122` | ⚠️ Unaudited |
| Thena | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x08132180afc971ddfdecd2d6034794e7f20d486d`; bsc `0xf4c8e32eadec4bfe97e0f595add0f4450a863a11` | ⚠️ Unaudited |
| ThenaBasePlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 17 deployments: bsc `0x198cdbb6b93a97a370c52daec8c9c8cbacaeb04c`; bsc `0x375e3e620a319f273d32f450545046db3fda7835`; bsc `0x3b719166f22b660b52d00816ce1cdd1e8f2728a0`; bsc `0x3efd67cb1a2edfd4f9349f0a867845bbaf33bcc0`; bsc `0x53903e3135883d4316deb9cc357665067ac598ec`; bsc `0x57778f9484d23cc19a76bd649c63f124ba3a0ec3`; bsc `0x5d0adee0827bc234e778e3ce49441ebbf5d9a728`; bsc `0x7687bbee70ffcee92986abe3e04b568462ca5882`; bsc `0x7b233c53d18c0145eb6c97a7b823d302a847803f`; bsc `0x8405aa7569e9171868879a761050f792f1e1f98a`; bsc `0xa2e37d8a72f5951c0ed6674a3f284695c937623d`; bsc `0xbcd1e718b105a16563c6870122c2473a64c75467`; bsc `0xbfdf8c2bddeb15947fd72942f0a6ac929c2f4f21`; bsc `0xc98b804b0d5cb8ed1acc64210dc1edbdd33b7cdd`; bsc `0xcfb0680d7ce95a20ddb402edb074922bcbe9c76e`; bsc `0xe463d21ce7d1a38824b5a501a72dc8cdbaa67982`; bsc `0xfb653a019d2ed414e7440fb29feb31ad2327cb8d` | ⚠️ Unaudited |
| ThenaUniversalRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x753f7aca2df4f2ef2d47f132d8e25f7f5142f691` | ⚠️ Unaudited |
| ThenianFeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x21297f1706292874b804bb7d29e995ae551dec23`; bsc `0x6c1c0af31e3c59bc3de10c5cdb0d4af6a0f2eccc` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | 2 deployments: bsc `0xa28680645e347a4854e86e35053009891c395511`; opbnb `0x327dd3208f0bcf590a66110acb6e5e6941a4efa0` | ⚠️ Unaudited |
| Timelock | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258657 | `0x5d7deb17be6c6243d6d65205b5293edceb676561` | ⚠️ Unaudited |
| TradingCompetitionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 14 deployments: bsc `0x0bd32dd59b40f78b7a9e1e629293b596e60ecf6a`; bsc `0x0d5f51afe5fa852fd93a7c1d96dc586f58f555fc`; bsc `0x46ba692f34ddcb3d3f976549b647481e162b8596`; bsc `0x4822820ac38424e6506834e5c05a4f50f9afd2b8`; bsc `0x49dfa9107c67318d635a6790c22233539bd77fa9`; bsc `0x66849e89c008bf37a751e334abdfab15118f7b4a`; bsc `0x843d3ce9e1ba8d94b870117028297031222a02cf`; bsc `0x844392114a345644fa9ba094ff4dae5fbdbfde49`; bsc `0x8d03febf03cd8e6f2388e587a6a1263360f639ec`; bsc `0xa1fa98c1d0ac0237f41d9918cc4cfff816c08a7d`; bsc `0xace18d2cb5b878a94e28ad01ff8e6511b54480a2`; bsc `0xdac818fdc182873fb47e60f6b15cb83e9fba0daf`; bsc `0xdf1792b7dd6e816bc720af0812ae5f19870397ca`; bsc `0xdf55854452cdca873feba026c3630ca26ce4d332` | ⚠️ Unaudited |
| TradingCompetitionPerpetualFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x15f045f672c50c2eea9ea73c6a3e2f918f1486c7`; bsc `0x1ff95fecf7d4ae2fae1aacc55e00b33c8d83bdc1`; bsc `0x4701c964eedc19bf6123ef8273d9a841c83dfea2`; bsc `0x4d585e367786e84196f78f448ffe0e428912bca8`; bsc `0x614ee56d5e700b645cc5fe67195d7f244316869a`; bsc `0x7d36e5497a7d5f4a04c8b49239d59048ec3d0c88`; bsc `0x81174ca0643d0736ea6e2f4d88d13eb07447598c`; bsc `0xa78e4773921daf3c86d42adc12f6223bff3c64dc`; bsc `0xabcb0a75dfcae962d4a233c3572979530bb4b6c3`; bsc `0xae069b4177abb58fe13f6e7f45c9cad9de3e97e1`; bsc `0xafe9feb52d32af7ed634819983019a5c8b01c3a6`; bsc `0xd5e6dd90bc816833b1ad75bc39358276a4ca9ccb`; bsc `0xe52a3d33c283c33d1c99e8bc1b81a68db153eda7` | ⚠️ Unaudited |
| TradingCompetitionPerpetualManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x2066e0436f23b98d24aa8c80fa5f21a35519c7c3`; bsc `0x66dbeaba55e1d46507a244249dcb8562c12d9abe`; bsc `0x80303630ca7d6cb62f1e31a1d3e6fa1571a03ca7`; bsc `0xae47229e279f85f1006b86aff60dc6115acf79bb`; bsc `0xc90992b9ae19ec04b9aa9878a510c2ae3203aee7`; bsc `0xe5ccf697efa772de24cbd256e6d401b5872645c0` | ⚠️ Unaudited |
| TradingCompetitionSpotFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 17 deployments: bsc `0x24888f2cafcfdd4b0795ce6556234920fb82df07`; bsc `0x2dab3efc41594d93badaeed949674c35c972c829`; bsc `0x34f699ada22f6e3326308023f453c7685047b0cd`; bsc `0x44db09c3b9eefc21f4cca1274446ff1eb035c1ae`; bsc `0x52ceaac1e56170b3a8a80a7c9f77657ebc4f2ecc`; bsc `0x6cba8fd3f922aaa4d4269a0ffc630b6222f841d0`; bsc `0x70ac91457cd2b804ac83f6686f6741818c1291dc`; bsc `0x9fe1c45d9ef0f46723c806cc09175b71393f60af`; bsc `0xabd42b4f87e3bbb0377da877b8515805d11d15ee`; bsc `0xb2af9cab5d1490740af6f9441f15a5815571723f`; bsc `0xc96348b5862cc8d32ee9c5e4ed37d6209d0dcbb4`; bsc `0xd3d35c64a53f175957e495831458248f7b7580bf`; bsc `0xd6feead1cebaf7e2c0a7b44185cc0383aaf5cca9`; bsc `0xd782438eb8e8975f1caa6f1225eea5593a3005e3`; bsc `0xe5d3f91b29b840ed68172d923ec7f4e4dc5ecacc`; bsc `0xf7e6aee79e1cd026b844163e911ad655d10eaacb`; bsc `0xfec52c54f8450fed9967afefd6e2c66b83852cea` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0c54d33eb8adcd46a87214f920a77914a676e8be`; bsc `0xf4f02ccc3f9317bcd3faf414a2bfb1488d8a38ec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x0e0c68f11bf2c84a5a0e800823a969355dcd769f`; bsc `0x26b813555ffd1169e2a5d04d9abaf93da28e3b26`; bsc `0x357379d50bd0ddeb84064b4d2e582c36f051ffc0`; bsc `0x4025e0320a348ccfe5b24f3b77926a36076f4508`; bsc `0x961c454df36fe7f8388a79008b4e5a8a07e893c7`; bsc `0x97f14669a73aaeb1a89fbce0129fe77e44d2ceb0`; bsc `0xc64f46d8cd1f36eb4b7f1db3dc99022996e831d6`; bsc `0xeacf96e677eefebcb74661f6cda3a019ad184721`; opbnb `0x2ac5617f1c04641393bd3246f38521ede0fc9011` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x23ab452eacb33ea84584fd5e0a916f4f93709a92`; bsc `0xc1b508c9a476a08b7cc78a875eb6a7963bb52b63` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x33b1c4fe9bef9c38ba92ab4cae2f9beb16936c60`; bsc `0xbd4952888928c13b8fa104d2d6651670a7a72545` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x478449283ccedbd7dda8f86ef5686048cf425008`; bsc `0x4f5b8a208269664a3b0a1a295aec3921f5d88adc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa0a04d75b00a8d5e06538e34ae692ce7baccac50`; bsc `0xdd7d7e605f035cde1730cd6bd20836f8b4d97f47` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ac5617f1c04641393bd3246f38521ede0fc9011` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60e53b5d4813f240242d804c6dfcc080ad012ec6` | ⚠️ Unaudited |
| VeArtProxyUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x15d7c232e6781f724c29c67e23c15ceeec4b8503`; bsc `0x77f6efad7a0137e32d30182cb1a1002e126ed9de`; bsc `0xb2b37c4221dabfff5b34883e95d88d498f03e516`; bsc `0xd6f6e27e96535749587ac77bfc83607a743e765f` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x007e208665a0e953a5175d5b4c992b952b0906b9`; bsc `0x04106fb6e161d0c5e8e0129f4a8a2cd62dcf6110`; bsc `0x32c5b3acf720049c7ec80a5e94f0a7e261e5a120`; bsc `0x420656b60728b2a50e196f8e866c645813bfd29a`; bsc `0x5ddb0c412ac32db36e1fcaee9ee8f4f7b52b4892`; bsc `0x94e4a581fcdee5672572f567772ec17714a55615`; bsc `0xd989a36ada6d78aa0dc75d6753c970b3b88f9522`; bsc `0xf9a65989162614d9fbbcac1d97a37807eb9b6c3e`; bsc `0xfd4daed5250ab6abe8a87e1e407748210f869e95` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0a554b6b99792cc4b3b60f24e81d596a0020e58a`; bsc `0x73767eeab9abc1b3587d716f6bb57cfc6b1d65a5` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x190b166edf30baa8c1cdbf6653107cec1020d36d`; bsc `0x2c417f6fbec9cca20ba6c6a9e2a672919596ca07` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x212ede9937a9800b7c8543f0527a0826cb493507`; bsc `0x64039b95537d2904716d1957dd07061ab94a4549`; bsc `0xec83eddd76b431da486ce61fb36ae77d4dd846e1` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2a0b2ff90405971f4878f37ce1cf7521dff13660`; bsc `0x8be4ec4e6be990243cf49e611c74f4cb9d87eeb5` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x47a02aa02c7d2ee818778039ba4f20dfdac772d9`; bsc `0x833529e2340593d78e82f2a2de7cd065bcc341e1` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x630f7a926bca11cb445f0bed34a73d66ef41c07e`; bsc `0xef71d840a1b2b563863d48b90b06230dbbbf6f09` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x66b6ea901c31b665ad75b7b2193273effd455c79`; bsc `0xf2d6265369f985a0773f2c8174077a3d43f80080` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6942f06b7916e908a5a88aaae3a44e9f27f8381d`; bsc `0xe09e1aa537382c82245c04536e90fdb7121283b0` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x949d5b4eb1a8fba23ae7741d02c602bfffdf813b`; bsc `0xffb2ade60d3df7eb5fbdfda355ee13197b5c7bc2` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9c50be8e54560844dd6b7921e1e1bacc8448e925`; bsc `0xc0e2f563835d4b12a69828d53dce6ba14297b9d5` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xad439cf198f0c1dae29cd8a696a7e7d48ab4c6e1`; bsc `0xfae924b588ba4c318dfedd5da8caa705cb3c926e` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc0f8c062fd43fcd07e6dd77624142e4d8ea1ebb6`; bsc `0xcfcacccdb12e68eaa794d1af8c1e302bf6b6f0bc` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc1907982923ff1fb09dbadb2ed257b15b5cf4cda`; bsc `0xf13b61c40f7b2eeb43bfbb05c2a5c6867d99c84d` | ⚠️ Unaudited |
| VeTheAutomationFactoryGelato | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5f6a392ab819a7cbfed93c3ae4f9c428c3360695`; bsc `0xa2a5704467db570f71ba6d1b51a4ddc93406afd1`; bsc `0xbded2c16661a767b7685ad4219f01cf19ec98379` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x8fbb1ecebb9e9839bc0de00b9c4c585cabdd0462`; bsc `0xb594c0337580bd06aff6ab50973a7ef228616cbd` | ⚠️ Unaudited |
| VoterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4e02accd83c09eaf2ff4b8346ed6a33a7a369b47`; bsc `0xc3136b6b4a25eb16c5354abfd22e16e7242cbe96` | ⚠️ Unaudited |
| VoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x43659f29356b7d84f6464957db06f1fd883a706b`; bsc `0x50b2fb332767dad87fc67c99edaa4fcb7c24ad79` | ⚠️ Unaudited |
| VoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x596845ca0cbab592745e6ba53ff6a66d2a3f25b0`; bsc `0x9dcbc44fa2095400661b38c28fab625d10996456` | ⚠️ Unaudited |
| VoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddde87cc5e6fe63fbc73aa12a7aff8fd3f5ad7e2` | ⚠️ Unaudited |
| VoterV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x62ee96e6365ab515ec647c065c2707d1122d7b26`; bsc `0xfdacbe57802b731a9445821779cddcda54dfff34` | ⚠️ Unaudited |
| VoterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x374cc2276b842fecd65af36d7c60a5b78373ede1` | ⚠️ Unaudited |
| VoterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x3a1d0952809f4948d15ebce8d345962a282c4fcb` | ⚠️ Unaudited |
| VoterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x410c014ec262f2de5de285874123370419b2e0ee`; bsc `0xf1194ddc62ad26f5581285fa7e011f8067276d92` | ⚠️ Unaudited |
| VoterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5647abcec6df18c40a4f22b483e8c865be596ba6`; bsc `0xa477414ad91dceda929a0c95b88c178f0cc17ff0` | ⚠️ Unaudited |
| VoterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x69cca77586c02b932f6344d12ab77f244c37db41`; bsc `0xbd87e251f4d44a03e76bd60c94f39b554164f30c` | ⚠️ Unaudited |
| VoterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xd2c9e0e8921bef413ea66f890ef7dd25eeadb83f`; bsc `0xf96cf59b22a27bf35d65fdd8968a5fce0fe28f33` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x6a3a07151997b056a81b1f58ba78beb546a20ce2`; bsc `0xd9693efebd93133e1cd406d6d516f2d610adae7c`; bsc `0xfbbf371c9b0b994eebfcc977cef603f7f31c070d` | ⚠️ Unaudited |
| VotingEscrowAttach | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8aebed1f28a8ae1eb6479ddd8b1148da0e05b58d` | ⚠️ Unaudited |
| VotingEscrowAttachMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec88bc102eb167b47adc0f7fb5c6b897d1378129` | ⚠️ Unaudited |
| VotingIncentivesFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82f144accf4779ca8c49928be28fac5fa157d218` | ⚠️ Unaudited |
| WrappedExternalBribeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99443a69d163aeabadcb00c3d04a0ac544de8962` | ⚠️ Unaudited |
| WrappedExternalBribeFactoryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4bf5a42202927b0263d2279e509b3da05a6235bc`; bsc `0xef297516b9f4dbfcb4e0ced07738db7187fa42d3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cb322b8dd377a06800be9f2b90f506e356ab554` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12f0a7b77979fbb9374dbff2b2623941dd961ab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f94f8189673eccf0797ca985ddf90c6e285e4a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4477e8dd114adaa82a41ced2790687e1812aab2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c7cace72f9c299fd6540b8ddb6a252f61e19fe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6524a54bea5aa83386466f0e2e1d6a3c87bad700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ba6a5cf27ba8b871b9d856fbdd9d9dd8b6e670f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ed7ba7e8a4027f18cc20334ceb674a26589db40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x883899fddc2f1af2eb295e2311420c67f23b8401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e50ac14c1c7e1bd5cb4c1e51649c8c456479830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90f4e5b528c960a04f470c6f936775cdd924a354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e92b57bff702530a0c3be9ff5fe2c24f95a91f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa283f45cbf0aad9d0db7d2714602f6ed77ac6e2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb126ad60788d94e08b67ac26c04d773acc3fea19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc702859593fd33b457ac6bc262f9c5f324613b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9f5d651336a91aeb80bce5e3bee631648fdfa4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda6cef2b6c9e680fef6ab733f854ed0226818c49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6a1ee816968a8bd6c82b81f4f874ef37e88859d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf02a0b1351aa20072f0a14e67faf1bdfb6f2d71a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x7fb6b676b7f7eaf8f60b057697e6e1b108189036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xc64f46d8cd1f36eb4b7f1db3dc99022996e831d6` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 445
- Live contracts: 0
- Unknown liveness contracts: 445
- Source-verified contracts: 419
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=107, contamination review=41, exact address book overlap=1, source verified unclassified=270, unverified unclassified=26

Showing first 200 of 445 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xc64f46d8cd1f36eb4b7f1db3dc99022996e831d6` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x4afa1e99c916d57f4bdfc22b3b55316853464c7c` |
| bsc | contamination review | AlgebraEternalFarming<br>`0x2308bd5b1f66c32cc482254b4ee99cc7708d2e41` | non_address_book | unknown | unknown | verified | n/a | `0x4afa1e99c916d57f4bdfc22b3b55316853464c7c` |
| bsc | contamination review | AlgebraLimitFarming<br>`0x7fb6b676b7f7eaf8f60b057697e6e1b108189036` | non_address_book | unknown | unknown | verified | n/a | `0x4afa1e99c916d57f4bdfc22b3b55316853464c7c` |
| bsc | contamination review | NonfungibleTokenPositionDescriptor<br>`0x9356934eb3fbae6274eae6efc905b292f04f0122` | non_address_book | unknown | unknown | verified | n/a | `0x4afa1e99c916d57f4bdfc22b3b55316853464c7c` |
| bsc | contamination review | Quoter<br>`0xea68020d6a9532eec42d4db0f92b83580c39b2ca` | non_address_book | unknown | unknown | verified | n/a | `0x4afa1e99c916d57f4bdfc22b3b55316853464c7c` |
| bsc | source verified unclassified | AlgebraFactory<br>`0x306f06c147f064a010530292a1eb6737c3e378e4` | non_address_book | unknown | unknown | verified | n/a | `0x4afa1e99c916d57f4bdfc22b3b55316853464c7c` |
| bsc | source verified unclassified | AlgebraPoolDeployer<br>`0xc89f69baa3ff17a842ab2de89e5fc8a8e2cc7358` | non_address_book | unknown | unknown | verified | n/a | `0x4afa1e99c916d57f4bdfc22b3b55316853464c7c` |
| bsc | source verified unclassified | FarmingCenter<br>`0xfbc41acdf542752e2295024c9e0f8a6fb6276e1f` | non_address_book | unknown | unknown | verified | n/a | `0x4afa1e99c916d57f4bdfc22b3b55316853464c7c` |
| bsc | source verified unclassified | NFTDescriptor<br>`0xf15b76244c184b4ccd37f419e0f4591b3fab9290` | non_address_book | unknown | unknown | verified | n/a | `0x4afa1e99c916d57f4bdfc22b3b55316853464c7c` |
| bsc | source verified unclassified | V3Migrator<br>`0x2ac5617f1c04641393bd3246f38521ede0fc9011` | non_address_book | unknown | unknown | verified | n/a | `0x4afa1e99c916d57f4bdfc22b3b55316853464c7c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9e92b57bff702530a0c3be9ff5fe2c24f95a91f6` | non_address_book | unknown | unknown | unverified | n/a | `0x4afa1e99c916d57f4bdfc22b3b55316853464c7c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa283f45cbf0aad9d0db7d2714602f6ed77ac6e2d` | non_address_book | unknown | unknown | unverified | n/a | `0x4afa1e99c916d57f4bdfc22b3b55316853464c7c` |
| bsc | candidate review | AlgebraCommunityVault<br>`0x8bb54ee0880127f6ac22eb0d90e6871aedda1bb2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | AlgebraCommunityVault<br>`0xaa42d6a54e473d93249b09207f090404814b7e0e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | AlgebraFactory<br>`0x212de9ae4b1beca60be0e8fa0210a26b81614c9b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | ProxyAdmin<br>`0x5d120a288f1c9b9d382e7deb64573f15e18d990e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | ProxyAdmin<br>`0x8b9ca04656a74e218ecbd444c493872d19533e06` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | ProxyAdmin<br>`0x90c0df115e4478702c73f6f7be4881d430492efb` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x02308f4455cd6d2109092c7903d1ed843440e1f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x07678a2309dbed40576b2dcc723ee5f1b5d808ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x09c318865c54e2250b5e72cc486f1fdcfce98019` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x0b6cff48836eea83795ab8b9a04b1b4654d96c46` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x0c04481fe0ebbb3655d51827ea0364272d73045b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x0da0b5655e5f3ce86b06f2ed4114193011b9aba9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x0e0c68f11bf2c84a5a0e800823a969355dcd769f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x15d7c232e6781f724c29c67e23c15ceeec4b8503` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x190b166edf30baa8c1cdbf6653107cec1020d36d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x198dab4b4e03f9f3f44e605d567b15bb72138a14` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x1a976411cb618a0ca3c89a902a9528cd4482ec84` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x1ec88f8c3d95a6ba0560c1aa6c184e334b2c1692` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x242e4ee00aecc6b2c728a8e065c746ad8218a984` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x26b813555ffd1169e2a5d04d9abaf93da28e3b26` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x2b01fc6b1b3f4ff60f2d9fcab5af8f298f3d6fb9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x2c788fe40a417612cb654b14a944cd549b5bf130` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x2d61bf5cfdf724cfbc0a7b0c5e2b9f17475b57d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x2e974a81f68eafa2a197a3a6eb6e75949504524e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x33b1c4fe9bef9c38ba92ab4cae2f9beb16936c60` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x357379d50bd0ddeb84064b4d2e582c36f051ffc0` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x36792f273b1db3469a2b7ba657a5dd3c78adf507` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x4025e0320a348ccfe5b24f3b77926a36076f4508` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x410c014ec262f2de5de285874123370419b2e0ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x415d2901bac5edf9463d4b438e3c46477bce34c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x43659f29356b7d84f6464957db06f1fd883a706b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x43e55fccd1462e9edfeb4c6dd2b358323049137f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x46d9ea4c3c8db14d2be0d0bab24dfd29735d6c34` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x478449283ccedbd7dda8f86ef5686048cf425008` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x47a02aa02c7d2ee818778039ba4f20dfdac772d9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x4bf5a42202927b0263d2279e509b3da05a6235bc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x4c941dc58b960ebd35d2582837abf3e55546de12` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x4ffcf83feae8a44f61575722aefc2706e73c7770` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x5115c12b2d8dbed8be5239dfabd046aa85b4261d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x53a67b6b57907aa1926e95b004578a9bacb72e15` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x54a3e5ef4ba0308fc60a5c159a96376cc0bb4787` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x5647abcec6df18c40a4f22b483e8c865be596ba6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x596845ca0cbab592745e6ba53ff6a66d2a3f25b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x62ee96e6365ab515ec647c065c2707d1122d7b26` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x64039b95537d2904716d1957dd07061ab94a4549` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x66117d9c7a019760b02fb45abc65158c4e76a9cb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x66b6ea901c31b665ad75b7b2193273effd455c79` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x67da2f552e72231635b66568c6a801125aa95b56` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x69cca77586c02b932f6344d12ab77f244c37db41` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x6a304087d888e48ed94de6c1efe05aec6913e08e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x6e298908514c77c2dc1dc8faa150eef46ad7f03b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x711f29161cc49b1656f162600ba121bcc6388daf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x73767eeab9abc1b3587d716f6bb57cfc6b1d65a5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x7419477c03b0feb9286f216b9d19e42f86b288b3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x77f6efad7a0137e32d30182cb1a1002e126ed9de` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x7959a75a97f52ef154acf59c1f623afb1f5da3ab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x839042df30d19c112b2ea77544ea2ec222a61d84` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x86069feb223ee303085a1a505892c9d4bdbee996` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x87627d13800eed68026fdc5d0f151b518c7be5e4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x880a58766cd15139ba816a57197f7393d97d6628` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x8953d7251eb73ec15e267a526e683f93083d1245` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x89a10b78b099077d6e3bf9bf5c21179108545ac9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x8be4ec4e6be990243cf49e611c74f4cb9d87eeb5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x949d5b4eb1a8fba23ae7741d02c602bfffdf813b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x961c454df36fe7f8388a79008b4e5a8a07e893c7` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x974a96fa2db6d87d30d9127f156f8ab297a8b340` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x976c5c046451aa1b4fdaada1aa5493a789d54fc5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x97f14669a73aaeb1a89fbce0129fe77e44d2ceb0` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x999b56e95fee66afb14f535d0cb55fb6bdde3fe3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x9f0d34271d235fdd1c018df97151ad296de6f65d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xa2bc09c290a260cdc6b63a5434ed81614a9624de` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xa433549fd374bbd08c8593329c90fe9b9ebc18a2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xa636471a76dd3777e5b101dea2e07b9656c664e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xad439cf198f0c1dae29cd8a696a7e7d48ab4c6e1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xafd89d21bdb66d00817d4153e055830b1c2b3970` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xb065e4f5d71a55a4e4fc2bd871b36e33053cabeb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xb2b37c4221dabfff5b34883e95d88d498f03e516` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xb528c3a6f1981d23856521104a9e337c7f484649` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xb7ed8fa63bea18986fa78d62f33497b1acdea1d8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xbc197ebc05f0f543032493ad63aa2df4dc103911` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xc0e2f563835d4b12a69828d53dce6ba14297b9d5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xc0f8c062fd43fcd07e6dd77624142e4d8ea1ebb6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xc1b508c9a476a08b7cc78a875eb6a7963bb52b63` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xc29d96473eb1fbe1d434407cb76e48cbef591c2f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xc3136b6b4a25eb16c5354abfd22e16e7242cbe96` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xc37ca878d351aa45ce51617d91be642457b9f55b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xcb78f8d9dfb78cd43bd2dc9ffe75e39fbe7f2820` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xcfe13d138d6471b827528b077eadc9330b9fad78` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xd2c9e0e8921bef413ea66f890ef7dd25eeadb83f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xd50ceab3071c61c85d04bdd65feb12fee7c91375` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xdb65c1c922632b8b62134d49785316818ade413c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xdd7d7e605f035cde1730cd6bd20836f8b4d97f47` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xe09e1aa537382c82245c04536e90fdb7121283b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xe4253eaefa1ac62bccbf919dff1d113431bddf31` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xe89080ceb6caeb9eba5a0d4aa13686efcb78a32e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xeacf96e677eefebcb74661f6cda3a019ad184721` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xec83eddd76b431da486ce61fb36ae77d4dd846e1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xedfa2a7eed6bb11876ae94462a7238a0c515bf08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xef71d840a1b2b563863d48b90b06230dbbbf6f09` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xf1035551c583dfd2d8b04f4eba70528f5c89f2fc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xf13b61c40f7b2eeb43bfbb05c2a5c6867d99c84d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xf4f02ccc3f9317bcd3faf414a2bfb1488d8a38ec` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xf94e046c6a4f4c5a4eeea69ac007dbb132832dc1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xfc1bc666a98703505534477e651a2470508c99a4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xfd71f0975e5261e507f0b497ef2d879cd45d7cf6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | AirdropClaim<br>`0x049eea15a10db9bc6e201edc2904841eef49a923` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | AirdropClaimTest<br>`0x3fa9c21c585b009972c705c992c5e93a4efd5202` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | AirdropClaimTheNFT<br>`0xf04ca87fe55f413b027ce01d8c9dcd662495fed4` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | AirdropClaimTheNFTTest<br>`0x2b259baed99d032c514fd6f00536450c76351b5e` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | AlgebraCustomPoolEntryPoint<br>`0x1c4e6ecb79933b983148ac2dbd55c14d2ba250b1` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | AlgebraPoolDeployer<br>`0x06852dc9d6e44782dd02994c368febc4dc1b8a17` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | AlgebraVaultFactoryStub<br>`0x287e9e48b0169e95d3fafddbd4975813a3375328` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | BasePluginV2Factory<br>`0xfa78c6467b5aa53d0c1ad114dbf93082e6864573` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | BribeFactory<br>`0xc577c8276378d51a3e2ecea4d649a02b8e1fbab8` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | FarmingPluginFactory<br>`0x00b49bb385c4165ec77392b4b97955f04ac76f38` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | MerkleTree<br>`0x4259b99c7c6121d0cce4c9b7c5d8bce731143cd7` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | MerkleTreeTest<br>`0xf34f9b3c2fa603486652f12426fcd9614503a7bc` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | MerkleTreeTHENFT<br>`0xd6ecbd4771cb66743ecba33a545b20a90bb51404` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | MerkleTreeTHENFTTest<br>`0x2528a0a8205b9c937b209ea2878ae375286841ad` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | Minter<br>`0x273da601356a4e1ef4842ad6db1ca192e209a34f` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | PairFactory<br>`0x27dfd2d7b85e0010542da35c6ebcd59e45fc949d` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | PermissionsRegistry<br>`0xdf46b89e7dd49195fcdab37c3843f6ecbc5e3749` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | Quoter<br>`0x6cf8dd678619bdd84f5ea7d487d75970920ee83e` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | RewardsDistributor<br>`0x3eb5ef1ef1c85af63d0d4b0856803732239196e9` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | RewardsDistributorV2<br>`0x4e29c0acf891d35ec12b56140e1c8f45220413e4` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | RouterV2<br>`0x8f097e07a07bf2f031e5513f764dafc6df58e818` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | Royalties<br>`0x68775950553cf10ee3c8618bca5637796fd56916` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | SimpleAirdrop<br>`0x1e0a496c3bed9d7199a539f010e2efbd03d110c2` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | SimpleAirdropDAO<br>`0x8861d2a348128cb3edab258254e5265e0b9951c3` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | SimpleAirdropDAO2<br>`0xcb1c0474aa157ae33585bdde7455390ebe38f2bb` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | SimpleAirdropFNFT<br>`0x1ba3ef6e6729c88777159357188395a72f77ab2c` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | SimpleAirdropFNFT2<br>`0x89d0155d12448ab83e6e89c8b5a0f9a4bf31c076` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | stakingNFTConverterRouter<br>`0x1fe7d95aef61fe0ab9f4e31acd506aa337ffdc5b` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | StakingNFTFeeConverter<br>`0x14cbeee51410c4e3b8269b534933404aee416a96` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | Thena<br>`0x08132180afc971ddfdecd2d6034794e7f20d486d` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | TickLens<br>`0xa28680645e347a4854e86e35053009891c395511` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | TradingCompetitionSpotFactory<br>`0x24888f2cafcfdd4b0795ce6556234920fb82df07` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | VeArtProxy<br>`0x60e53b5d4813f240242d804c6dfcc080ad012ec6` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | veNFTAPI<br>`0x007e208665a0e953a5175d5b4c992b952b0906b9` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | contamination review | WrappedExternalBribeFactory<br>`0x99443a69d163aeabadcb00c3d04a0ac544de8962` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | exact address book overlap | Timelock<br>`0x5d7deb17be6c6243d6d65205b5293edceb676561` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | AirdropClaim<br>`0x5c35b4f59f020395ee375ce6417f5033c666beee` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | AirdropClaim<br>`0xb50dc7b90f4ab8133b27df302b35d4d662a87b55` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | AirdropClaim<br>`0xdb807083c1a701ef4411d1bc623251c6d5e678b6` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | AirdropClaim<br>`0xf780fde07fa56a881fb9566c7bdf9653471ac70a` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | AirdropClaimTheNFTTest<br>`0x8e1ec0abb25a85013922602e66c5ad50cae84797` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | AlgebraEternalFarming<br>`0x9b495496690c669937d299fdbdbda27f91582a21` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | AlgebraPoolDeployer<br>`0x70117e878f1ffd0af2e6d360f77c8972e7ced94a` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | AlgebraVault<br>`0x2d2f254c0624297af92b42f7258075c4e36f5cfa` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | AlgebraVault<br>`0x31c933a4d80dcb7b8246cee9287f096e14903b11` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | AlgebraVault<br>`0x3b551321be3624829d9f4fb0d90ced226b183eb5` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | AlgebraVault<br>`0x53a3d41e3943133ae67ff11a499792e3783710fb` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | AlgebraVault<br>`0x64b37403d048f37d9d53b95af76f853aa598ce53` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | AlgebraVault<br>`0x6cba11e35b7655c6b9727d0c8ecab3a70af9a6f9` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | AlgebraVault<br>`0x84d3623a59176cad1f28933b76cec74228cf234f` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | AlgebraVault<br>`0x931f531e276a12c8eb443eefe666781f72833a7d` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | AlgebraVault<br>`0xb0ecbc570b1b4cdbbf22c1fd20a377f3aa76203e` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | AlgebraVault<br>`0xd4fc5045b4e285d466048bf5269003e11c3f09c8` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | AlgebraVaultFactory<br>`0x2ca4df86b060da251ba7609875048b4e599be431` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | AlgebraVaultFactory<br>`0xb1147562ed6bbc9672c14fec27892ab1aafbdb2c` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | AlgebraVaultFactory<br>`0xd7379757f4f490480ee80221cc771c82eaa4b175` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | AutomationEpochDistributorBSC<br>`0xd27cf28dca5867ef6dbc456f583abaa4fa5c0be9` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | BribeFactoryUpgradeable<br>`0xe04723fe7470b0289bdc9dd473a8b6f7703a4f6a` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | BribeFactoryV2<br>`0x35589589c082a55038fad5090608ea752ca28ffe` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | BribeFactoryV2<br>`0x4e9a8ec8df327e2a041c94cf9ea828b56efdc095` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | BribeFactoryV2<br>`0x6a2caba827f0851612595ab9e52a2e16c7c50e86` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | BribeFactoryV2<br>`0xb9db4b1c5431dca6fea45e6a2c2a6fa3a2cf1c1e` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | BribeFactoryV2<br>`0xe63b8939c491a1ac073c394ad76139067be314b5` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | BribeFactoryV3<br>`0x99768701cce63da41311f959f120425ed2192ecb` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | BribesDistribution<br>`0x448dedf43005fccad0cdabd989a4aee63e73b560` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | BribesDistribution<br>`0xbbea218f6e61f36a2a98ec342100b1e73d60cbb6` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | CCIPThenaTokenProxy<br>`0x89ce89cdea483c15721bae675e3a001210bc4cd2` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | CCIPThenaTokenProxy<br>`0xa287ad719137f29655e0a48b7837f0b6bbf73787` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | CLFeesVaultSetter<br>`0x7c3d25becef92a8bc5bb84b481435033c0946287` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | DibsRewarder<br>`0x444efae67c5763d48105440a457b6f89e792e194` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | DibsRewarder<br>`0x891986908f0082ee5327827af32229c09ae317ea` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | DibsRewarder<br>`0xa3650060f431c066ccb1233e33198ec01c403d9a` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | DibsRewarder<br>`0xbf8d9b96a84893d9d4b341322488db393dec12f5` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | DibsRewarder<br>`0xe001cdff3e22f4459068a78ae08b65c831ef10df` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | DistributeFees<br>`0x88820109901b8fb8aabe7571e6c12339bd0c2777` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | DistributeFees<br>`0x8ca434fed3b10e752a6ea6109b977b762e7ec6fa` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | DistributeFees<br>`0x8db743c5ad37eccece39be36ed4657c1670b4608` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | EpochController<br>`0x019e0d2a20d4dce4b029bd692a76e0ee2c816379` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | EpochController<br>`0x15b0f1c42a9b690c0d0c081ba986a4d5a0d39275` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | EpochController<br>`0x4e5009a313978efa9732997e93928529f8a84072` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | EpochController<br>`0xd369c82f73b3d8111151dd347bcecffb68c293f0` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | EpochDistributorBSC<br>`0xc1efc2e6bcc59b119916ffff931fef69ffeb991a` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |
| bsc | source verified unclassified | EpochNFTSplitManager<br>`0xccfcba7c72f212668a3596dd497a672a8d420ad8` | non_address_book | unknown | unknown | verified | n/a | `0x993ae2b514677c7ac52baecd8871d2b362a9d693` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.openzeppelin.com/news/retro-thena-audit](https://www.openzeppelin.com/news/retro-thena-audit) | OpenZeppelin | Audit | 2023-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [hacken.io/audits/thena](https://hacken.io/audits/thena) | Hacken | Audit | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [PeckShield-Audit-Report-Thena-v1.0.pdf](https://raw.githubusercontent.com/peckshield/publications/65be3a3b651bba87c4a9c024ca4306adbadba040/audit_reports/PeckShield-Audit-Report-Thena-v1.0.pdf) | PeckShield | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2580] www.openzeppelin.com/news/retro-thena-audit — no match: No reason recorded
- [2581] hacken.io/audits/thena — no match: The provided text is a marketing page listing two past audits (Thena Automations and THENA-V3) but does not include the actual audit report content with scope details. No contract names or audit date are extractable from this page.
- [2582] PeckShield-Audit-Report-Thena-v1.0.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| www.openzeppelin.com/news/retro-thena-audit | GaugeExtraRewarder | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/retro-thena-audit | GaugeV2 | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/retro-thena-audit | GaugeV2_CL | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/retro-thena-audit | PermissionsRegistry | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/retro-thena-audit | VoterV3 | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Thena-v1.0.pdf | AirdropClaim | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Thena-v1.0.pdf | AirdropClaimTheNFT | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Thena-v1.0.pdf | GaugeV2 | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Thena-v1.0.pdf | Governor | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Thena-v1.0.pdf | L2Governor | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Thena-v1.0.pdf | MerkleTree | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Thena-v1.0.pdf | MerkleTreeTHENFT | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Thena-v1.0.pdf | NFTSalesSplitter | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Thena-v1.0.pdf | PairFees | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Thena-v1.0.pdf | RewardsDistributor | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Thena-v1.0.pdf | VoterV2_1 | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Thena-v1.0.pdf | VotingEscrow | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 165 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 17 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [2580] www.openzeppelin.com/news/retro-thena-audit
- [2581] hacken.io/audits/thena
- [2582] PeckShield-Audit-Report-Thena-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
