# Agentic Audit Brief: THENA

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

- Project: THENA (`thena`)
- Website: [https://www.thena.fi](https://www.thena.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
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
| AirdropClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x049eea...49a923`; bsc `0x5c35b4...66beee`; bsc `0xb50dc7...a87b55`; bsc `0xdb8070...e678b6`; bsc `0xf780fd...1ac70a` | ⚠️ Unaudited |
| AirdropClaimTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fa9c2...fd5202` | ⚠️ Unaudited |
| AirdropClaimTheNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf04ca8...95fed4` | ⚠️ Unaudited |
| AirdropClaimTheNFTTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2b259b...351b5e`; bsc `0x8e1ec0...e84797` | ⚠️ Unaudited |
| AlgebraCommunityVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x8bb54e...da1bb2`; bsc `0xaa42d6...4b7e0e` | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c4e6e...a250b1` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x2308bd...8d2e41`; bsc `0x6f866d...7c15a7`; bsc `0x9b4954...582a21` | ⚠️ Unaudited |
| AlgebraFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x212de9...614c9b`; bsc `0x30055f...fb4a98`; bsc `0x306f06...e378e4`; opbnb `0x9e92b5...5a91f6` | ⚠️ Unaudited |
| AlgebraLimitFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7fb6b6...189036` | ⚠️ Unaudited |
| AlgebraPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x06852d...1b8a17`; bsc `0x70117e...ced94a`; bsc `0xc89f69...cc7358`; opbnb `0x306f06...e378e4`; opbnb `0x4e9444...3557c4`; opbnb `0xc89f69...cc7358` | ⚠️ Unaudited |
| AlgebraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: bsc `0x2d2f25...6f5cfa`; bsc `0x31c933...903b11`; bsc `0x3b5513...183eb5`; bsc `0x53a3d4...3710fb`; bsc `0x64b374...98ce53`; bsc `0x6cba11...f9a6f9`; bsc `0x84d362...cf234f`; bsc `0x931f53...833a7d`; bsc `0xb0ecbc...76203e`; bsc `0xd4fc50...3f09c8` | ⚠️ Unaudited |
| AlgebraVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x2ca4df...9be431`; bsc `0xb11475...fbdb2c`; bsc `0xd73797...a4b175` | ⚠️ Unaudited |
| AlgebraVaultFactoryStub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x287e9e...375328` | ⚠️ Unaudited |
| AutomationEpochDistributorBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd27cf2...5c0be9` | ⚠️ Unaudited |
| BasePluginV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa78c6...864573` | ⚠️ Unaudited |
| BribeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc577c8...1fbab8` | ⚠️ Unaudited |
| BribeFactoryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2d61bf...5b57d2`; bsc `0xe04723...3a4f6a` | ⚠️ Unaudited |
| BribeFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x242e4e...18a984`; bsc `0xb9db4b...cf1c1e` | ⚠️ Unaudited |
| BribeFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2b01fc...3d6fb9`; bsc `0x355895...a28ffe` | ⚠️ Unaudited |
| BribeFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4e9a8e...fdc095`; bsc `0xcb78f8...7f2820` | ⚠️ Unaudited |
| BribeFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4ffcf8...3c7770`; bsc `0xe63b89...e314b5` | ⚠️ Unaudited |
| BribeFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6a2cab...c50e86`; bsc `0xc29d96...591c2f` | ⚠️ Unaudited |
| BribeFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x997687...192ecb`; bsc `0xd50cea...c91375` | ⚠️ Unaudited |
| BribesDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x198dab...138a14`; bsc `0x448ded...73b560`; bsc `0x89a10b...545ac9` | ⚠️ Unaudited |
| BribesDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbbea21...60cbb6` | ⚠️ Unaudited |
| CCIPThenaTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x89ce89...bc4cd2`; bsc `0xa287ad...f73787` | ⚠️ Unaudited |
| Claimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2d64e...d1e5b2` | ⚠️ Unaudited |
| CLFeesVaultSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c3d25...946287` | ⚠️ Unaudited |
| DibsRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x444efa...92e194`; bsc `0x6e2989...d7f03b` | ⚠️ Unaudited |
| DibsRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x891986...e317ea`; bsc `0xa36500...403d9a`; bsc `0xbf8d9b...ec12f5`; bsc `0xe001cd...ef10df` | ⚠️ Unaudited |
| DistributeFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x888201...0c2777` | ⚠️ Unaudited |
| DistributeFees | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x8ca434...7ec6fa`; bsc `0x974a96...a8b340`; bsc `0x9f0d34...e6f65d` | ⚠️ Unaudited |
| DistributeFees | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8db743...0b4608`; bsc `0xfd71f0...5d7cf6` | ⚠️ Unaudited |
| EpochController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x019e0d...816379`; bsc `0x4e5009...a84072`; bsc `0xd369c8...c293f0` | ⚠️ Unaudited |
| EpochController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x15b0f1...d39275`; bsc `0xbc197e...103911` | ⚠️ Unaudited |
| EpochDistributorBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1efc2...eb991a` | ⚠️ Unaudited |
| EpochNFTSplitManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x999b56...de3fe3`; bsc `0xccfcba...420ad8` | ⚠️ Unaudited |
| FarmingCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x098b36...41ed42`; bsc `0x0cd53e...1d08bf`; bsc `0x6cbc3e...37d955`; bsc `0x702acb...9de438`; bsc `0x78dbf0...fc7f71`; bsc `0xfbc41a...276e1f` | ⚠️ Unaudited |
| FarmingPluginFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x00b49b...c76f38`; bsc `0x438e33...0da19d`; bsc `0xcc1cfe...1780bb`; bsc `0xf5c9df...23779f`; bsc `0xfb027e...7a79f7` | ⚠️ Unaudited |
| FeeVaultSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x69db43...db61a0`; bsc `0xbdf004...dd62cc`; bsc `0xbdf7f1...aee171`; bsc `0xbe1e4c...2c9d99`; bsc `0xbf5359...9bd095`; bsc `0xe3dd9c...74f2ab` | ⚠️ Unaudited |
| GaugeExtraRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x1a30f9...82a53c`; bsc `0x28bb19...287af7`; bsc `0x4a4207...75faf3`; bsc `0x5aa7a6...6a940c`; bsc `0x9dbf10...927278`; bsc `0xa7266b...ea5c9c` | ⚠️ Unaudited |
| GaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0xa9ce35...eda651`; bsc `0xb02d19...1564f4`; bsc `0xc9e5c9...c6a6b1` | ⚠️ Unaudited |
| GaugeFactoryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x620eaa...cb180b`; bsc `0xfc1bc6...8c99a4` | ⚠️ Unaudited |
| GaugeFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x2a9551...16f787`; bsc `0x415d29...ce34c7`; bsc `0xa43354...bc18a2`; bsc `0xcfe13d...9fad78` | ⚠️ Unaudited |
| GaugeFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x2c788f...5bf130`; bsc `0xbe670d...9dba2a`; bsc `0xc37ca8...b9f55b` | ⚠️ Unaudited |
| GaugeFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f850b...91a159` | ⚠️ Unaudited |
| GaugeFactoryV2_CL | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0248fd...a36c73`; bsc `0xb065e4...3cabeb` | ⚠️ Unaudited |
| GaugeIchiFeeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: bsc `0x2045e5...fa6eb7`; bsc `0x299327...46b4c5`; bsc `0x29bb9d...c5a8a8`; bsc `0x42e1bf...26ba58`; bsc `0x4e519a...51afd5`; bsc `0x606d0c...ddbc90`; bsc `0x6f8024...1481b5`; bsc `0x9d2c09...5e3b4b`; bsc `0x9dec15...eb3f2d`; bsc `0xb4dee5...61f455` | ⚠️ Unaudited |
| GaugeSimple | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x2f92bc...121bb2`; bsc `0xa95186...a9b8d6`; bsc `0xba4456...33e871`; bsc `0xcf2071...64541a`; bsc `0xe49338...1e0da8`; bsc `0xe6519b...bc3b0c` | ⚠️ Unaudited |
| GaugeSimpleFeeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8646ec...51b0fe` | ⚠️ Unaudited |
| GaugeSimpleFeeDistributionAutomation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x344348...a2a336` | ⚠️ Unaudited |
| GlobalFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x247009...947d9c` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-258658 | `0x7d70ee...caa184` | ⚠️ Unaudited |
| IncentiveMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x1927cd...a7e7aa`; bsc `0x2814a4...72bbf4`; bsc `0x904ecc...f7657b`; bsc `0xcc7b51...837c59`; bsc `0xdddc65...c6c46d` | ⚠️ Unaudited |
| IncentiveMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x80ad2f...ef0701` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x11746f...a92f7c`; bsc `0x2e4979...0f1748`; bsc `0xe58e64...5adfbb` | ⚠️ Unaudited |
| MerkleTree | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x4259b9...143cd7`; bsc `0xf25d35...1ba31f`; bsc `0xfd502f...f74b11` | ⚠️ Unaudited |
| MerkleTreeTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf34f9b...03a7bc` | ⚠️ Unaudited |
| MerkleTreeTHENFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xd6ecbd...b51404`; bsc `0xd73179...4aa78a` | ⚠️ Unaudited |
| MerkleTreeTHENFTTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2528a0...6841ad`; bsc `0x3f2ceb...56b10d` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x273da6...09a34f`; bsc `0xd47808...271780` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31f4bf...82103c` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x406ec2...a91ab9`; bsc `0x7959a7...5da3ab` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x5115c1...b4261d`; bsc `0x6c1a35...664dfe`; bsc `0x86069f...bee996` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5e3d6e...e9ea5b`; bsc `0xb7ed8f...dea1d8` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf15b76...ab9290` | ⚠️ Unaudited |
| NFTSalesSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x02308f...40e1f7`; bsc `0x0c6e17...119ac4`; bsc `0x36792f...adf507`; bsc `0x880a58...7d6628` | ⚠️ Unaudited |
| NFTSalesSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x760156...91cd0b`; bsc `0x85c5c8...f772de`; bsc `0xdd9520...8ec78e` | ⚠️ Unaudited |
| NFTSplitAutomation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2e974a...04524e`; bsc `0xad8502...88604c` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x3b6c02...5ef964`; bsc `0xbf77b7...e74064`; opbnb `0x8089ed...6e3168` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x643b68...21d02e` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xa51adb...6b77ab` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x935693...4f0122`; opbnb `0xa51adb...6b77ab` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0c0448...73045b`; bsc `0xd9f2a8...526380` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x19856b...a62728`; bsc `0x2b481d...752e09`; bsc `0x95d2c9...2614dc`; bsc `0xbd5505...55ccb9` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1a9764...82ec84`; bsc `0xe7b379...e82a5b` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1c0bc6...55d8a5`; bsc `0x839042...a61d84` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2dcc9c...2a14ab`; bsc `0x4c941d...46de12` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x43e55f...49137f`; bsc `0x514609...3a1aba` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x53a67b...b72e15`; bsc `0xc2b480...302950` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6a3040...13e08e`; bsc `0xd96d2f...7ab147` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x711f29...388daf`; bsc `0xf22f8a...9ddf34` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x741947...b288b3`; bsc `0xd73ad1...03fdc5` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x87627d...7be5e4`; bsc `0xf10355...89f2fc`; bsc `0xf22983...0309f1` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xe89080...78a32e`; bsc `0xebff38...d91862` | ⚠️ Unaudited |
| PairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27dfd2...fc949d` | ⚠️ Unaudited |
| PairFactoryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x879f8f...760dc8`; bsc `0xafd89d...2b3970` | ⚠️ Unaudited |
| PairFactoryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x96f8b6...602df4`; bsc `0xedfa2a...15bf08` | ⚠️ Unaudited |
| PermissionsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xdf46b8...5e3749`; bsc `0xe3db58...f3e0eb` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x5d120a...8d990e`; bsc `0x8b9ca0...533e06`; bsc `0x90c0df...492efb`; bsc `0xc06cb2...e04575` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x6cf8dd...0ee83e`; bsc `0xea6802...39b2ca`; opbnb `0xf15b76...ab9290` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71af3b...c3916d` | ⚠️ Unaudited |
| RewardAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x07678a...d808ee`; bsc `0x2083e6...4825b9`; bsc `0xa63647...c664e9`; bsc `0xe4253e...bddf31` | ⚠️ Unaudited |
| RewardAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0b6cff...d96c46`; bsc `0xc548c1...4f3e67` | ⚠️ Unaudited |
| RewardAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x15b04e...d6bf0d`; bsc `0x8953d7...3d1245` | ⚠️ Unaudited |
| RewardAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42ea63...774209` | ⚠️ Unaudited |
| RewardAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x46d9ea...5d6c34`; bsc `0xdb65c1...de413c`; bsc `0xfbf342...e5bc77` | ⚠️ Unaudited |
| RewardAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x54a3e5...bb4787`; bsc `0xc472dd...7dfcf2` | ⚠️ Unaudited |
| RewardAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6e75e0...931c16`; bsc `0xf94e04...832dc1` | ⚠️ Unaudited |
| RewardAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x976c5c...d54fc5`; bsc `0xaa859c...ce7a8d` | ⚠️ Unaudited |
| RewardEarnedHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1ec88f...2c1692`; bsc `0x9870d4...397319` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x09c318...e98019`; bsc `0x3754ae...e456a5` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0da0b5...b9aba9`; bsc `0x7f0cd8...b1c3bc` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x66117d...76a9cb`; bsc `0xb789f1...442fd1` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x67da2f...a95b56`; bsc `0xa2bc09...9624de`; bsc `0xe70381...b32365` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x68875a...037baa`; bsc `0x86b992...6fb9ca`; bsc `0xc7794f...6dec1e` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb528c3...484649`; bsc `0xed7561...90c3c4` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x3eb5ef...9196e9`; bsc `0x9a6a78...79bbb4`; bsc `0xa6e0e7...18727d`; bsc `0xe9fe83...de730e` | ⚠️ Unaudited |
| RewardsDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x4e29c0...0413e4`; bsc `0xc6be40...967779` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x20a304...ca8431`; bsc `0x9b2378...187d0d`; bsc `0xc134fc...893a69` | ⚠️ Unaudited |
| RouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x8f097e...58e818`; bsc `0xbce35a...cdf22f`; bsc `0xd4ae6e...78d109` | ⚠️ Unaudited |
| Royalties | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x687759...d56916`; bsc `0xbb2caf...913882`; bsc `0xbe3b34...46c49d` | ⚠️ Unaudited |
| SimpleAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1e0a49...d110c2`; bsc `0x9e237b...3397fe` | ⚠️ Unaudited |
| SimpleAirdropDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x8861d2...9951c3`; bsc `0xa18c09...2141c1` | ⚠️ Unaudited |
| SimpleAirdropDAO2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb1c04...38f2bb` | ⚠️ Unaudited |
| SimpleAirdropFNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ba3ef...77ab2c` | ⚠️ Unaudited |
| SimpleAirdropFNFT2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89d015...31c076` | ⚠️ Unaudited |
| stakingNFTConverterRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x1fe7d9...ffdc5b`; bsc `0xe2dff9...de4dc8`; bsc `0xf8f8d5...79fd5b` | ⚠️ Unaudited |
| StakingNFTFeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14cbee...416a96` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x327dd3...a4efa0` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x429c60...87639f`; bsc `0x76689a...b4c7a6`; opbnb `0x935693...4f0122` | ⚠️ Unaudited |
| Thena | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x081321...0d486d`; bsc `0xf4c8e3...863a11` | ⚠️ Unaudited |
| ThenaBasePlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 17 deployments: bsc `0x198cdb...aeb04c`; bsc `0x375e3e...da7835`; bsc `0x3b7191...2728a0`; bsc `0x3efd67...33bcc0`; bsc `0x53903e...c598ec`; bsc `0x57778f...3a0ec3`; bsc `0x5d0ade...d9a728`; bsc `0x7687bb...ca5882`; bsc `0x7b233c...47803f`; bsc `0x8405aa...e1f98a`; bsc `0xa2e37d...37623d`; bsc `0xbcd1e7...c75467`; bsc `0xbfdf8c...2f4f21`; bsc `0xc98b80...3b7cdd`; bsc `0xcfb068...e9c76e`; bsc `0xe463d2...a67982`; bsc `0xfb653a...27cb8d` | ⚠️ Unaudited |
| ThenaUniversalRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x753f7a...42f691` | ⚠️ Unaudited |
| ThenianFeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x21297f...1dec23`; bsc `0x6c1c0a...f2eccc` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | 2 deployments: bsc `0xa28680...395511`; opbnb `0x327dd3...a4efa0` | ⚠️ Unaudited |
| Timelock | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-258657 | `0x5d7deb...676561` | ⚠️ Unaudited |
| TradingCompetitionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 14 deployments: bsc `0x0bd32d...0ecf6a`; bsc `0x0d5f51...f555fc`; bsc `0x46ba69...2b8596`; bsc `0x482282...afd2b8`; bsc `0x49dfa9...d77fa9`; bsc `0x66849e...8f7b4a`; bsc `0x843d3c...2a02cf`; bsc `0x844392...bfde49`; bsc `0x8d03fe...f639ec`; bsc `0xa1fa98...c08a7d`; bsc `0xace18d...4480a2`; bsc `0xdac818...ba0daf`; bsc `0xdf1792...0397ca`; bsc `0xdf5585...e4d332` | ⚠️ Unaudited |
| TradingCompetitionPerpetualFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x15f045...1486c7`; bsc `0x1ff95f...83bdc1`; bsc `0x4701c9...3dfea2`; bsc `0x4d585e...12bca8`; bsc `0x614ee5...16869a`; bsc `0x7d36e5...3d0c88`; bsc `0x81174c...47598c`; bsc `0xa78e47...3c64dc`; bsc `0xabcb0a...b4b6c3`; bsc `0xae069b...3e97e1`; bsc `0xafe9fe...01c3a6`; bsc `0xd5e6dd...ca9ccb`; bsc `0xe52a3d...53eda7` | ⚠️ Unaudited |
| TradingCompetitionPerpetualManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x2066e0...19c7c3`; bsc `0x66dbea...2d9abe`; bsc `0x803036...a03ca7`; bsc `0xae4722...cf79bb`; bsc `0xc90992...03aee7`; bsc `0xe5ccf6...2645c0` | ⚠️ Unaudited |
| TradingCompetitionSpotFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 17 deployments: bsc `0x24888f...82df07`; bsc `0x2dab3e...72c829`; bsc `0x34f699...47b0cd`; bsc `0x44db09...35c1ae`; bsc `0x52ceaa...4f2ecc`; bsc `0x6cba8f...f841d0`; bsc `0x70ac91...1291dc`; bsc `0x9fe1c4...3f60af`; bsc `0xabd42b...1d15ee`; bsc `0xb2af9c...71723f`; bsc `0xc96348...0dcbb4`; bsc `0xd3d35c...7580bf`; bsc `0xd6feea...f5cca9`; bsc `0xd78243...3005e3`; bsc `0xe5d3f9...5ecacc`; bsc `0xf7e6ae...0eaacb`; bsc `0xfec52c...852cea` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0c54d3...76e8be`; bsc `0xf4f02c...8a38ec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x0e0c68...cd769f`; bsc `0x26b813...8e3b26`; bsc `0x357379...51ffc0`; bsc `0x4025e0...6f4508`; bsc `0x961c45...e893c7`; bsc `0x97f146...d2ceb0`; bsc `0xc64f46...e831d6`; bsc `0xeacf96...184721`; opbnb `0x2ac561...fc9011` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x23ab45...709a92`; bsc `0xc1b508...b52b63` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x33b1c4...936c60`; bsc `0xbd4952...a72545` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x478449...425008`; bsc `0x4f5b8a...d88adc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa0a04d...ccac50`; bsc `0xdd7d7e...d97f47` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ac561...fc9011` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60e53b...012ec6` | ⚠️ Unaudited |
| VeArtProxyUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x15d7c2...4b8503`; bsc `0x77f6ef...6ed9de`; bsc `0xb2b37c...03e516`; bsc `0xd6f6e2...3e765f` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x007e20...0906b9`; bsc `0x04106f...cf6110`; bsc `0x32c5b3...e5a120`; bsc `0x420656...bfd29a`; bsc `0x5ddb0c...2b4892`; bsc `0x94e4a5...a55615`; bsc `0xd989a3...8f9522`; bsc `0xf9a659...9b6c3e`; bsc `0xfd4dae...869e95` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0a554b...20e58a`; bsc `0x73767e...1d65a5` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x190b16...20d36d`; bsc `0x2c417f...96ca07` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x212ede...493507`; bsc `0x64039b...4a4549`; bsc `0xec83ed...d846e1` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2a0b2f...f13660`; bsc `0x8be4ec...87eeb5` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x47a02a...c772d9`; bsc `0x833529...c341e1` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x630f7a...41c07e`; bsc `0xef71d8...bf6f09` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x66b6ea...455c79`; bsc `0xf2d626...f80080` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6942f0...f8381d`; bsc `0xe09e1a...1283b0` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x949d5b...df813b`; bsc `0xffb2ad...5c7bc2` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9c50be...48e925`; bsc `0xc0e2f5...97b9d5` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xad439c...b4c6e1`; bsc `0xfae924...3c926e` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc0f8c0...a1ebb6`; bsc `0xcfcacc...b6f0bc` | ⚠️ Unaudited |
| veNFTAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc19079...cf4cda`; bsc `0xf13b61...99c84d` | ⚠️ Unaudited |
| VeTheAutomationFactoryGelato | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5f6a39...360695`; bsc `0xa2a570...06afd1`; bsc `0xbded2c...c98379` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x8fbb1e...dd0462`; bsc `0xb594c0...616cbd` | ⚠️ Unaudited |
| VoterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4e02ac...369b47`; bsc `0xc3136b...2cbe96` | ⚠️ Unaudited |
| VoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x43659f...3a706b`; bsc `0x50b2fb...24ad79` | ⚠️ Unaudited |
| VoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x596845...3f25b0`; bsc `0x9dcbc4...996456` | ⚠️ Unaudited |
| VoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddde87...5ad7e2` | ⚠️ Unaudited |
| VoterV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x62ee96...2d7b26`; bsc `0xfdacbe...dfff34` | ⚠️ Unaudited |
| VoterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x374cc2...73ede1` | ⚠️ Unaudited |
| VoterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x3a1d09...2c4fcb` | ⚠️ Unaudited |
| VoterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x410c01...b2e0ee`; bsc `0xf1194d...276d92` | ⚠️ Unaudited |
| VoterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5647ab...596ba6`; bsc `0xa47741...c17ff0` | ⚠️ Unaudited |
| VoterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x69cca7...37db41`; bsc `0xbd87e2...64f30c` | ⚠️ Unaudited |
| VoterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xd2c9e0...adb83f`; bsc `0xf96cf5...e28f33` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x6a3a07...a20ce2`; bsc `0xd9693e...adae7c`; bsc `0xfbbf37...1c070d` | ⚠️ Unaudited |
| VotingEscrowAttach | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8aebed...05b58d` | ⚠️ Unaudited |
| VotingEscrowAttachMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec88bc...378129` | ⚠️ Unaudited |
| VotingIncentivesFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82f144...57d218` | ⚠️ Unaudited |
| WrappedExternalBribeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99443a...de8962` | ⚠️ Unaudited |
| WrappedExternalBribeFactoryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4bf5a4...6235bc`; bsc `0xef2975...fa42d3` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cb322...6ab554` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12f0a7...961ab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f94f8...85e4a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4477e8...2aab2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c7cac...e19fe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6524a5...bad700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ba6a5...6e670f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ed7ba...89db40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x883899...3b8401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e50ac...479830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90f4e5...24a354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e92b5...5a91f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa283f4...ac6e2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb126ad...3fea19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc70285...613b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9f5d6...fdfa4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda6cef...818c49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6a1ee...88859d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf02a0b...f2d71a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x7fb6b6...189036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xc64f46...e831d6` | ❓ Unverified |

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
