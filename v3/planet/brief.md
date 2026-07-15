# Agentic Audit Brief: Planet

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Planet (`planet`)
- Website: [https://app.planet.finance/](https://app.planet.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 108 unique implementations (314 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,658,794.00
- On-chain TVL (included contracts): $1,332,809.80
- TVL by chain: Bsc $1,332,809.80

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Planet. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across bsc, ethereum. Structural roles: 4 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: unclassified (4)
- Contract kinds: contract (4)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- GErc20Delegator (`0x0c6dd1...896442`, chain 56)
- GErc20Delegator (`0xb7ed4a...5d4fd7`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (2 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 106 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 106
- Confirmed-live implementations: 2 of 108 unique; 106 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/100
- Verified + Unaudited implementations: 100
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 108
- Raw deployments: 314
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (100)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 5 | bsc | n/a | 5 deployments: bsc `0x045e2d...00a9c8`; bsc `0x9c5326...8c71b4`; bsc `0xb56aea...618d46`; bsc `0xc73009...3beb40`; bsc `0xe983cf...38e19a` | ⚠️ Unaudited |
| GErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xcd221e...dc3fc7` | ⚠️ Unaudited |
| GErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x2acaf6...b4785b`; bsc `0x5e11ec...d9014b`; bsc `0x84a785...ae7d00`; bsc `0xe58aa5...f925df` | ⚠️ Unaudited |
| Locked_Strategy_Penalty_GAMMA | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x60a895...5219a1`; bsc `0x78cb24...89e483` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x05e148...695a39`; bsc `0xd6678a...2c2f63` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | bsc | n/a | 6 deployments: bsc `0x2e54c8...2e6e07`; bsc `0x79d84e...38fce2`; bsc `0x7ab46a...0a262a`; bsc `0xaa3753...572fcc`; bsc `0xbea718...bf2916`; bsc `0xf6c105...b1efa0` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | bsc | n/a | 6 deployments: bsc `0x31636e...cd63e9`; bsc `0x7113a7...13663d`; bsc `0x763ba9...fc4bea`; bsc `0x7cfdb0...564769`; bsc `0xc6aa19...316cb0`; bsc `0xffe80f...b98b19` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x33933b...a4e925`; bsc `0x7520ec...3edcfc`; bsc `0x7d892d...648bf9`; bsc `0xe88e0e...8d2ae2` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x349629...09fcb1`; bsc `0x9658eb...ea6772`; bsc `0xd0121b...20a4c3` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3edbae...50939e`; bsc `0x4027a5...7a6e6d` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4b06ab...d759ae`; bsc `0xb13191...b3cd07` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x552ccc...5da3a9`; bsc `0x82656f...8da594`; bsc `0xf23c7d...675c39`; bsc `0xf7d54b...c7d66a` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5b14aa...d32f68`; bsc `0x95a20e...a03a9d` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x64ee24...68828b`; bsc `0x872e64...3572aa` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6da3e8...491a94`; bsc `0xeac54d...f80068` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x7df2dc...75232d`; bsc `0x8e8720...83f8e6`; bsc `0xaf2773...633279`; bsc `0xffe99a...0a96bb` | ⚠️ Unaudited |
| AggregatedStrategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0xb06351...93a3ea`; bsc `0xed9a27...0f7637`; bsc `0xf9b1b6...38356e` | ⚠️ Unaudited |
| AirdropContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb76ab2...c3cc61` | ⚠️ Unaudited |
| AQUA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x72b7d6...d91991`; bsc `0x82c41b...b336ed` | ⚠️ Unaudited |
| AquaFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc46342...e9cb85` | ⚠️ Unaudited |
| AquaStrategy_AQUA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x76263d...009eed`; bsc `0xac3988...347c74`; bsc `0xb143db...bf29da`; bsc `0xc7038a...9856f8`; bsc `0xee2059...8c2b93` | ⚠️ Unaudited |
| AquaStrategy_BELT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xbed788...39f0c6`; bsc `0xf5b922...a38696` | ⚠️ Unaudited |
| AquaStrategy_PCS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x1e8592...4bad96`; bsc `0x5ebbc2...285962`; bsc `0x82caef...46e8f7`; bsc `0xadbdf1...668619` | ⚠️ Unaudited |
| AquaStrategy_Urarnus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b83db...07c7e3` | ⚠️ Unaudited |
| BEP20Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39723e...735caa` | ⚠️ Unaudited |
| ConvertToBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: bsc `0x27ea17...698346`; bsc `0x2cfed1...b2ab6d`; bsc `0x79c133...e18151`; bsc `0x7a91c0...75366b`; bsc `0x7aff5f...25d2d6`; bsc `0x866ad5...7bf3ea`; bsc `0x8dc2fe...676d03`; bsc `0xa8dd55...c11824`; bsc `0xe931f7...e543c5`; bsc `0xf5f596...961041` | ⚠️ Unaudited |
| ConvertToBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2e24c7...1b338d`; bsc `0x87d573...fb5849` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0956f1...c2d400`; bsc `0xa41ab6...218e5b` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1e41b7...bd09c3`; bsc `0x25ab12...e5aaa5` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x1e6762...04f8eb`; bsc `0x20c340...d06b46`; bsc `0x2c7dc9...1cbf72`; bsc `0xc2f549...17e778`; bsc `0xe54e8b...888a81` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4d25ab...c5687b`; bsc `0x7f7c6f...f2cf85` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x2977e1...cab225`; bsc `0x584f74...c6fa83`; bsc `0xf3aa34...841024` | ⚠️ Unaudited |
| Gamma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb3cb6d...607f15` | ⚠️ Unaudited |
| Gammatroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0577c2...652a7a`; bsc `0x368b81...2ac6cb` | ⚠️ Unaudited |
| Gammatroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x06d8a2...9aaa95`; bsc `0x62282d...af28f4` | ⚠️ Unaudited |
| Gammatroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1e0c9d...6165a3`; bsc `0x715310...874289` | ⚠️ Unaudited |
| Gammatroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xd28236...9975e0`; bsc `0xf54f9e...bb9a83` | ⚠️ Unaudited |
| GBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x190354...ebdb29`; bsc `0x246647...62082f`; bsc `0x34360e...02f8f8`; bsc `0x6ecf55...000d40`; bsc `0xf610c0...e724b3` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x0071d7...a8161c`; bsc `0x16551b...6ff241`; bsc `0x5eb522...c0e1ba`; bsc `0xc4ef61...27decd`; bsc `0xe6ec7a...13c947`; bsc `0xeaa4a8...e557ca`; bsc `0xf476da...4eeae8` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x058ce5...dc0a3b`; bsc `0x9b81d1...a80d94` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x06d6f7...d4868d`; bsc `0x4c2bdd...0797b5` | ⚠️ Unaudited |
| GErc20Delegate | unknown | project_anchor | own_supporting | 1 | bsc | unit-391028 | 2 deployments: bsc `0x0c6dd1...896442`; bsc `0xfdcebc...a65a22` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x0cf2c6...aaffec`; bsc `0xa15baa...c26ee2`; bsc `0xfcda28...df4031` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0e4e0d...505fe4`; bsc `0x4bdde0...7232e4` | ⚠️ Unaudited |
| GErc20Delegate | unknown | project_anchor | own_supporting | 1 | bsc | unit-391027 | 2 deployments: bsc `0x15ab61...a9bcaf`; bsc `0xb7ed4a...5d4fd7` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2a2957...b6e804`; bsc `0x3666c9...ac3a40` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | bsc | n/a | 8 deployments: bsc `0x2cf16c...c59063`; bsc `0x411ff9...8abb10`; bsc `0x506e53...c8794f`; bsc `0x5898ce...d3ff64`; bsc `0x708205...09ee8f`; bsc `0xb845ec...61beea`; bsc `0xe4b90b...9a1c86`; bsc `0xfafed6...51f3d5` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x313288...6ebbbc`; bsc `0x820cde...8f130f` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x37c396...dfb3e0`; bsc `0x4a80df...683749`; bsc `0xd14885...acbfdc` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3bbf3e...bbcb6c`; bsc `0xf701a4...09962e` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3c0ad3...1d8073`; bsc `0x88fd42...e47c48` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3d1df2...90428d`; bsc `0x7a9cb0...5a5949` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x45646b...705ebf`; bsc `0x90a093...c8adba` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x586c8f...eb3a0b`; bsc `0xb3a350...d4d3b0` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6022ba...511b25`; bsc `0xc0dad0...6ece15` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x63dca1...568f7c`; bsc `0x66fd9d...f9a434`; bsc `0x928fa0...e00f22` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x7c8300...a1cacd`; bsc `0xcf8687...017c28` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x7de0d9...f5dafb`; bsc `0x854a53...4d7b42` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x87942c...ff59ab`; bsc `0xcfa5b8...fcceef` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8b2f09...006ba5`; bsc `0xa39093...16db1c` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x939e98...1d27b4`; bsc `0xbb2249...506559` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x999089...b08948`; bsc `0xa652e6...e5eb2e` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9adf5d...129bef`; bsc `0xeb23d8...eb0470` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9e674e...be13a2`; bsc `0xb3a4ce...6e8133` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa5ae84...6f1ace`; bsc `0xb97b73...db2d23` | ⚠️ Unaudited |
| GErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xaf7602...ebccc0`; bsc `0xd6eec9...dac25c` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x471c42...7f1bd5`; bsc `0x8f1a40...d93604`; bsc `0xdb6f9e...8566f5`; bsc `0xeb0576...8c0f5c` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x03574c...56c0e5`; bsc `0x07923b...f37c43`; bsc `0x328237...29a124`; bsc `0x46ec39...cfdef2`; bsc `0x98fd55...f16e72` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x088c9e...ee9909`; bsc `0x1b71bd...d2fc52`; bsc `0x9fc9d7...ee4fa4` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x09da19...285e47`; bsc `0xda93ad...6b12d2` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | bsc | n/a | 5 deployments: bsc `0x0fef45...84ad3b`; bsc `0x5c4c2a...639ffd`; bsc `0x710679...42ecb1`; bsc `0xe18da3...b98e06`; bsc `0xff9653...88e93f` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x2c7ea7...0bfb1d`; bsc `0x6867fa...234f92`; bsc `0x966dec...598fa7`; bsc `0xadb34c...d044a8` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x2c9f2b...f96047`; bsc `0x893fcf...05ce9a`; bsc `0xbf67a5...66c0fa` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x30a2a3...5f1527`; bsc `0x536af9...a4b1af` | ⚠️ Unaudited |
| Locked_Strategy_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x7c3a30...d0ed9a`; bsc `0x888d5d...8fe527`; bsc `0xe49425...b131f6`; bsc `0xf6a5c2...53275d` | ⚠️ Unaudited |
| Locked_Strategy_Penalty_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x28c55a...77c363`; bsc `0xdadd91...646eef` | ⚠️ Unaudited |
| Locked_Strategy_Penalty_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x39d5c9...3b5b71`; bsc `0x5b80c2...21dd1f`; bsc `0x60172b...7747e9`; bsc `0x9d73e1...ce611c`; bsc `0xe5b392...423794`; bsc `0xe988c5...3b7843` | ⚠️ Unaudited |
| Locked_Strategy_Penalty_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5d39c7...b24681`; bsc `0xca1d63...de23dd` | ⚠️ Unaudited |
| Locked_Strategy_Penalty_GAMMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x7fdc0f...f969a8`; bsc `0x9d5e7f...fe12ee` | ⚠️ Unaudited |
| PlanetDiscountDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x09535e...cf4b55`; bsc `0x52a62b...345444`; bsc `0xb46bf9...051c0f` | ⚠️ Unaudited |
| PlanetDiscountDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2238ac...cafd67`; bsc `0x79333d...ef1439` | ⚠️ Unaudited |
| PlanetDiscountDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x264a91...498f3b`; bsc `0x8c7e39...ac8265` | ⚠️ Unaudited |
| PlanetDiscountDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3c4787...5e37f3`; bsc `0x513062...059ba1` | ⚠️ Unaudited |
| PlanetFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0116b4...8c7039`; bsc `0x405960...dfc22d` | ⚠️ Unaudited |
| PlanetFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 29 deployments: bsc `0x076e74...7b8edc`; bsc `0x221a5e...5b9202`; bsc `0x36f344...fa64ee`; bsc `0x449a6b...a118ce`; bsc `0x4c24bc...8dc6ca`; bsc `0x4f6bd1...5f0b74`; bsc `0x5b9d16...a02612`; bsc `0x6aa76c...3ae877`; bsc `0x7399c0...b9f163`; bsc `0x73c6b8...6da164`; bsc `0x74f3c5...e4696d`; bsc `0x78e1c0...cca458`; bsc `0x7bf079...36588e`; bsc `0x7c18c2...c0bb2c`; bsc `0x84a246...a7b091`; bsc `0x9e51a5...1ce84d`; bsc `0xa014ad...34f712`; bsc `0xa08a8b...9674b2`; bsc `0xa1e6ed...31adad`; bsc `0xa2ee3a...b1ab18`; bsc `0xab20dd...9ce0f1`; bsc `0xad4169...db8dbc`; bsc `0xbe45ad...279abc`; bsc `0xbe88fd...31a7ca`; bsc `0xc0a1e4...4de150`; bsc `0xc757ea...d7a75f`; bsc `0xd6358d...e66171`; bsc `0xf631de...5efd83`; bsc `0xf9800a...84d80c` | ⚠️ Unaudited |
| PlanetFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x302ab4...94681b`; bsc `0xdf0a03...dd6c4d` | ⚠️ Unaudited |
| PlanetFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3336cd...38d303`; bsc `0xf5ed1c...bbd1b7` | ⚠️ Unaudited |
| PlanetFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xf37f4a...ba4324`; bsc `0xf7f60e...d9f1de` | ⚠️ Unaudited |
| PlanetFinance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0ac58f...00a933`; bsc `0xb87f70...41b53d` | ⚠️ Unaudited |
| PlanetLiquidStakingAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4d8c3c...c482d0`; bsc `0x6e8b65...abf7af` | ⚠️ Unaudited |
| PlanetLiquidStakingAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8ece8a...5c9c1a`; bsc `0xc5760f...8e8177` | ⚠️ Unaudited |
| PlanetMigrateV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x17c1c4...3e5d0c`; bsc `0x2694f8...783356`; bsc `0x9b3145...cbd5b5`; bsc `0xabf896...c16e2b` | ⚠️ Unaudited |
| PlanetPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7cde1a...719f0f` | ⚠️ Unaudited |
| PlanetRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x79fa96...ff455f`; bsc `0xe11266...67b467` | ⚠️ Unaudited |
| PlanetZapOneInch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x108dae...6893a4`; bsc `0x12f883...0d1591` | ⚠️ Unaudited |
| pToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x170c69...697551`; bsc `0x4aa656...97cc72`; bsc `0x6ff382...faa8aa`; bsc `0x733fa5...8c605a`; bsc `0x7941e2...864925`; bsc `0x95836a...d312a0`; bsc `0xb68d3b...481186`; bsc `0xe8ed63...a09385` | ⚠️ Unaudited |
| Reservoir | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x0faeab...d77ff4`; bsc `0x50b006...7b3795`; bsc `0x61c53a...6e9f8a`; bsc `0x7cf0e1...74660f`; bsc `0xc8f476...ad775b` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x084e9b...0df137`; bsc `0xc19f95...8de4ea` | ⚠️ Unaudited |
| Tokenomics_Automation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x443906...dab095`; bsc `0xf3ae30...094ed4` | ⚠️ Unaudited |
| Tokenomics_Automation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0xb2549a...36126a`; bsc `0xe7144d...b317b7`; bsc `0xffcee4...92edf8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0fb8d9...7d14ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89b234...b52f39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8cd21d...a84050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x985283...cebe03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa58aae...7142d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4929e...acb810` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb68c8...67b8ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4a7ee...b7e51b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf) | Halborn | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2957] Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf — no match: Scope section explicitly lists 8 smart contracts. Audit date from document revision history: final version dated 06/22/2021.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | AquaFarm | unmatched — not counted | — | listed in scope section | no |
| Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | AquaStrategy_4BELT | unmatched — not counted | — | listed in scope section | no |
| Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | AquaStrategy_AQUA | unmatched — not counted | — | listed in scope section | no |
| Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | AquaStrategy_PCS | unmatched — not counted | — | listed in scope section | no |
| Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | AquaToken | unmatched — not counted | — | listed in scope section | no |
| Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | PlanetFactory | unmatched — not counted | — | listed in scope section | no |
| Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | PlanetRouter | unmatched — not counted | — | listed in scope section | no |
| Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | TimelockController | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x0c6dd1...896442` | GErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x15ab61...a9bcaf` | GErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 97 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 8 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2957] Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf

Fork inheritance lineage and inherited audits are included when available.
