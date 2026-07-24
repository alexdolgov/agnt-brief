# Agentic Audit Brief: Lynex

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Lynex (`lynex`)
- Website: [https://app.lynex.fi](https://app.lynex.fi)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: linea
- Contract surface: 87 unique implementations (149 raw deployments)
- Coverage basis: 0/17 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $769,065.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Lynex. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 22 contract row(s) across linea. Structural roles: 8 supporting, 7 unclassified, 5 core, 2 infra. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 22
- Structural roles: supporting (8), unclassified (7), core (5), infra (2)
- Contract kinds: contract (22)
- Detected standards: ownable (5), ownable2step (5), erc1967proxy (3), erc20 (2), accesscontrol (1), erc165 (1), erc20permit (1), multicall (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (4), chainlink (2)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AlgebraFactory (`0x622b2c98123d303ae067db4925cd6282b3a08d0f`, chain 59144)
- BribeOptionToken (`0xe8a4c9b6a2b79fd844c9e3adbc8dc841eece557b`, chain 59144)
- DistributeFees (`0xf7fff84426ba183e0a18becddecc31339f8454ad`, chain 59144)
- EpochController (`0x62fc3b63f7cbaebc74b4876f6cf32e03ba6f0822`, chain 59144)
- GaugeFactoryV2 (`0x8418f2b6c428a4e4b6408e4eb5148fdb7c1454b6`, chain 59144)
- GaugeFactoryV2_CL (`0x7b555a3ed56af0411cd7fdafc909f4082aee1f2e`, chain 59144)
- Lynex (`0x1a51b19ce03dbe0cb44c1528e34a7edd7771e9af`, chain 59144)
- MinterUpgradeableV2 (`0xa996de4c5c59be045cd272faed1d284494903826`, chain 59144)
- PairFactory (`0xbc7695fd00e3b32d08124b7a4287493aee99f9ee`, chain 59144)
- QuoterV2 (`0xce829655b864e56fc34b783874cf9590053a0640`, chain 59144)
- RewardsDistributorV2 (`0x2222c569387b2a98fe1a9350f2cacde918910ee4`, chain 59144)
- RouterV2 (`0x610d2f07b7edc67565160f587f37636194c34e74`, chain 59144)
- SwapRouter (`0x3921e8cb45b17fc029a0a6de958330ca4e583390`, chain 59144)
- TransparentUpgradeableProxy (`0x0b2c83b6e39e32f694a86633b4d1fe69d13b63c5`, chain 59144)
- TransparentUpgradeableProxy (`0x8d95f56b0bac46e8ac1d3a3f12fb1e5bc39b4c0c`, chain 59144)
- TransparentUpgradeableProxy (`0xfa638ee72312adf564195c2ae415ec943945c469`, chain 59144)

## Contract Surface Quality

- Logic-topography rows: 22; live-surface rows included: 22 (22 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/17 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 70 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 31
- Confirmed-live implementations: 17 of 87 unique; 70 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/82
- Verified + Unaudited implementations: 82
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 87
- Raw deployments: 149
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (82)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControls | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9d945924416dff6fc99bf10fa768f57b7889c7dc` | ⚠️ Unaudited |
| AirdropClaimKey | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x142665217f6d4084a47706b423dc3aad884e31e4` | ⚠️ Unaudited |
| AirdropClaimV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x5d4614ffed6164df543e48f8906a255bdda6cce6`; linea `0x6fbee88e8589d6f0df1a6b3a52880b3d23318308` | ⚠️ Unaudited |
| AirdropClaimV2Strategic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x61fc82fd2c5c9f137ac11c0a2ab8d2f29c1557da`; linea `0xdec9fceb6a03a99d6e34efe9a3df3cdaea37664b` | ⚠️ Unaudited |
| AlgebraFactory | registry | project_anchor | own_supporting | 0 | linea | unit-388629 | `0x622b2c98123d303ae067db4925cd6282b3a08d0f` | ⚠️ Unaudited |
| AlgebraPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: linea `0x3cb104f044db23d6513f2a6100a1997fa5e3f587`; linea `0x8e80016b025c89a6a270b399f5ebfb734be58ada`; linea `0xe24b4a292ba102a9b7b7f9de20718d7ba45ddb29` | ⚠️ Unaudited |
| AlgebraPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9a89490f1056a7bc607ec53f93b921fe666a2c48` | ⚠️ Unaudited |
| AlgebraV1Twap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdb28d27a556c16a333f6420ec0512bb1e64c21fd` | ⚠️ Unaudited |
| AlgebraV2Twap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x887f8dfe726754705d5d45ebe8a772d41a94c608` | ⚠️ Unaudited |
| BatchAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5b8865829b2063ffbe453f9a7d8efbc14c1566dd` | ⚠️ Unaudited |
| BribeFactoryV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x795998e1d0e57b02a6b8bb57dd8623010fef0886` | ⚠️ Unaudited |
| BribeFactoryV4 | unknown | project_anchor | own_supporting | 1 | linea | unit-388637 | `0xca79b73d967c948864058642eb736de541b325b0` | ⚠️ Unaudited |
| BribeOptionToken | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-388633 | `0xe8a4c9b6a2b79fd844c9e3adbc8dc841eece557b` | ⚠️ Unaudited |
| BribeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb03c9df82c045aa546c007486c535ce0c63f8aed` | ⚠️ Unaudited |
| CLFeesVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: linea `0x10ae74a82ace90d0ac4aacafe6eb57c96a664a84`; linea `0x2c40ead689cb9d5b9acc671599153f8e2e88a361`; linea `0x4569f2346c5006e1e219bb9e9149f00fa415f5e7` | ⚠️ Unaudited |
| Crowdsale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: linea `0x08283a22b62cc0c6e85e3bea176a843fa2a92140`; linea `0x3223aaa6b6b08397018ce9dde9ac6584449f0ccb`; linea `0xa5cd27744af878ea21611b5c6d172203fbbf985f` | ⚠️ Unaudited |
| DistributeFees | unknown | project_anchor | own_supporting | 1 | linea | unit-388641 | 2 deployments: linea `0xf7fff84426ba183e0a18becddecc31339f8454ad`; linea `0xfa638ee72312adf564195c2ae415ec943945c469` | ⚠️ Unaudited |
| DutchAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6c13a305f58eea8696b7c9ab39e598da1f3d6632` | ⚠️ Unaudited |
| EpochController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x3445307caed9a144901872380fd5772f71042d80`; linea `0xf1e2e55ec87e99fee0a86a662bfa6a662693136c` | ⚠️ Unaudited |
| EpochController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x39871f695bf0e60ac4c43dbc1aff10c58371871d`; linea `0xb2306f03f3be863c0379b0fcd8698391882e0f89` | ⚠️ Unaudited |
| EpochController | unknown | project_anchor | own_supporting | 1 | linea | unit-388635 | 2 deployments: linea `0x62fc3b63f7cbaebc74b4876f6cf32e03ba6f0822`; linea `0xd8a57006f464d1aaeeb450754489c66f29f8a9b9` | ⚠️ Unaudited |
| EpochController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x9dfa7d13da0b734028f066de388fa0e14dbd8df5`; linea `0xc2eaf62961f99d59dfbf819f88b5587990495933` | ⚠️ Unaudited |
| EpochController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0xd2a6b3e6709512f016eb220905f508e7fb1f2773`; linea `0xd405a345bb0f2b620a81e0fe77962b3d9ed84d3a` | ⚠️ Unaudited |
| EscrowDelegateCheckpoints | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x17a785e0b969cdcf2f6c2f4a4f2988f90b9d43d9`; linea `0x5310a5fa1995a8503c7cbc25fa2ce982d6541e27`; linea `0x73aebf4fc47b6ee32a15520bdf720e58bb429bcf`; linea `0xa615388bd2f920ee2fec7606f26908b454f0c249` | ⚠️ Unaudited |
| GaugeFactoryV2 | unknown | project_anchor | own_supporting | 1 | linea | unit-388638 | 2 deployments: linea `0x8418f2b6c428a4e4b6408e4eb5148fdb7c1454b6`; linea `0xb94404c0fdebda8d14fc147f8787a35feb41948e` | ⚠️ Unaudited |
| GaugeFactoryV2_CL | unknown | project_anchor | own_supporting | 1 | linea | unit-388636 | 2 deployments: linea `0x7b555a3ed56af0411cd7fdafc909f4082aee1f2e`; linea `0xc04d35a1f8881b061bbdae148c91cfa78a2783ee` | ⚠️ Unaudited |
| GaugeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7a34d6bead779a36c129f6e0c2176f2c5c5d49de` | ⚠️ Unaudited |
| GaugeV2_CL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x88f8b3679846a0c8e8e828b6950c6364b737daf9` | ⚠️ Unaudited |
| HyperbolicAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4fb4b44947ba2457959ec44e9eaaa08ba94d3ae5` | ⚠️ Unaudited |
| Launcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3b7191b37bd5ecff4ca41a841a4694cb267022ac` | ⚠️ Unaudited |
| ListFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7fb2aaa0ba7ee5883cb283ba7f88dec4bff937e5` | ⚠️ Unaudited |
| Lynex | unknown | project_anchor | own_supporting | 0 | linea | unit-388625 | `0x1a51b19ce03dbe0cb44c1528e34a7edd7771e9af` | ⚠️ Unaudited |
| Lynex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6758beb93c84131943e8a40d4b8f8f109ebee6aa` | ⚠️ Unaudited |
| LynexKeys | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x86751cbf87b0490617c03b7b83c97488e6d3d7ed` | ⚠️ Unaudited |
| LynxClaimToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x0365592c3db1e4fc43b9bac2276605e007f89059`; linea `0xf86381c8c4bbf3d398571e3d904ec04f12ac645a` | ⚠️ Unaudited |
| LynxClaimV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0xb2bed04305b7411f29e0d76201a62b3dcd2418ba`; linea `0xd8cee411c33ed18a7472d9b21caa60e72523e6c6` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4d6ee03712c403ae6174467229ef5b3d79faa881` | ⚠️ Unaudited |
| MerkleTree | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x08a846946a1d7e70c56ec002b0832699747ebcf8`; linea `0x46ff46f42baf96c02480a70a8c249cc18e3635f1`; linea `0x6ccc6b30c91d7bcad4884812dd9358f28066272f`; linea `0xd8935168dff597b486f05f283ed7a1e550ad398b` | ⚠️ Unaudited |
| MerkleTreeKey | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa1ea0e1d58ae20bfb9ab43b157d8063f1e71a3bc` | ⚠️ Unaudited |
| MinterUpgradeableV2 | unknown | project_anchor | own_supporting | 1 | linea | unit-388639 | 2 deployments: linea `0x9030ae4d0997658de58d274f79d3074b1beb19d4`; linea `0xa996de4c5c59be045cd272faed1d284494903826` | ⚠️ Unaudited |
| MultiSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc535ee7f17ccd18f8cab0f8c275111497c5ffd8c` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x5d3d9e20ad27dd61182505230d1bd075bd249e4b` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa29b3f421d759f2cdcd081a7b90a726e3fd7098b` | ⚠️ Unaudited |
| OptionFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x9190f0508263d645a6510988d5d566f353d475e4`; linea `0x9cf90ff10c6716627a5560364e8fecda78828b38` | ⚠️ Unaudited |
| OptionTokenV3 | unknown | project_anchor | own_supporting | 0 | linea | unit-388630 | `0x63349ba5e1f71252ecd56e8f950d1a518b400b60` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x0da12f269f953c6a8f32ff873de275f21072584d`; linea `0x0e23d55555778e796de58933a1b54f326feeb762` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x17f3b0c913a0a0436c44054a95ba3c32a71efa9d`; linea `0x77576555b2c409ca21da20fce790501b8cbbc0b8` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x6c84329cc8c37376eb32db50a17f3bfc917c3665`; linea `0xef599b792ce116ab652279c825e660258316f2cc` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x8a8bb20e7ab43dd6c862c38d0c528eaeb3e6eea6`; linea `0xeb7eab5847ededc0cb9eb176b059c4b4c02fa017` | ⚠️ Unaudited |
| PairAPISimple | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x067c77e4fb48aea20199c40a1f1fa99f215e3af0`; linea `0xba5d01fbf1df1c86240c54220ea31c9cd3138743` | ⚠️ Unaudited |
| PairAPISimple | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x85965d1e0127ee5af8813aabd9a8515cedc1a541`; linea `0xa5df3ba1e6ceacd92700af088c565d4f85591342` | ⚠️ Unaudited |
| PairAPISimple | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0xb27a0dc1254b85ad21696a6140c9b1bce74cfe78`; linea `0xef5f19fdc1d649a3150bb1f2d23c7f61c57f264d` | ⚠️ Unaudited |
| PairAPIV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x6f4005ae6e02b769b4634698db2113b623e08cd7`; linea `0x8398feaac940398a0e33a682a045d4dac2a702c8` | ⚠️ Unaudited |
| PairFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6ed7b91c8133e85921f8028b51a8248488b3336c` | ⚠️ Unaudited |
| PairFactory | registry | project_anchor | own_supporting | 0 | linea | unit-388631 | `0xbc7695fd00e3b32d08124b7a4287493aee99f9ee` | ⚠️ Unaudited |
| PermissionsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc68a70aa8bca0b4513be719be2c5e2eea9c45cb8` | ⚠️ Unaudited |
| PointList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7be8f060c025d57aa18d287a267928eb33a1eaf4` | ⚠️ Unaudited |
| PostAuctionLauncher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd85a5ed176bd1abf2e2ba73935c71126bb834a2e` | ⚠️ Unaudited |
| PreMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: linea `0x0b3a25ae91de4825b52d51ca54dfc8867367c72a`; linea `0x224b2094ce9e298cec5f2baa1a614f716a430c0e`; linea `0xbf05db69176e47bf89a6b19f7492d50751d20452` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 14 deployments: linea `0x04cbfc369a40ceb4a91cec53c3afe2922b34a3fc`; linea `0x1d73559503235795b43a9ca508ce437ff076c5b9`; linea `0x37d28b96dcba4503966119e02a0ef17d1362ac57`; linea `0x464481e3d7f7580254459c5067dcf37ed80fe816`; linea `0x4b6f631a69ac271e315b97fdd7393f68db4b5645`; linea `0x59ce7d7aa5c234e116c8ef6d2d6004263f925c79`; linea `0x6e067349bc2c4a367243e4367fdd7f354664251f`; linea `0x7a7d96985beb255d1c238f26979e4af475be363d`; linea `0x7ebd704d2755b2b57e4e326e9e70c1d669f6bf0f`; linea `0xa82e62cf217684d9960915550a4fbb00bdd68685`; linea `0xb15242e8e4b76f3075c1eb6465bf269617407889`; linea `0xb3f6ed5896594c20551cdbddc3571110476f1de2`; linea `0xc9453ef29cf77e553483a44a8900b37d470e8c13`; linea `0xf3f5beac27691c6f6d4a79710b0ca1b408523c27` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x851d97fd7823e44193d227682e32234ef8cac83e` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | linea | unit-388632 | `0xce829655b864e56fc34b783874cf9590053a0640` | ⚠️ Unaudited |
| RewardAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x1f43bd7cc8a20b2086f62eed6d8bfa0c948965e4`; linea `0x5be4bde1c334af7ec5c691fd673bec163f231edf` | ⚠️ Unaudited |
| RewardAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x4362448d5bff5f6c3b411fd59f2869b4c105c743`; linea `0xa8dcc97e6b1bd345fcef66fcd258c54e3e6cb274` | ⚠️ Unaudited |
| RewardAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x51487f191591d3a5569ed288aa3477fd2130acc3`; linea `0x968a4b7c9105d37dabc7e9e2797a122bb5679d97` | ⚠️ Unaudited |
| RewardAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x6dc1dff60096195c9d4c2b89c4bd64c3644f8b41`; linea `0xcd9df6f9b8c698ede3b9fdfc99363866f3f6408d` | ⚠️ Unaudited |
| RewardsDistributorV2 | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-388626 | `0x2222c569387b2a98fe1a9350f2cacde918910ee4` | ⚠️ Unaudited |
| RouterV2 | adapter | project_anchor | own_supporting | 0 | linea | unit-388628 | `0x610d2f07b7edc67565160f587f37636194c34e74` | ⚠️ Unaudited |
| RouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc51d7411e3153745613d2000ce773d95cde4a840` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | linea | unit-388627 | `0x3921e8cb45b17fc029a0a6de958330ca4e583390` | ⚠️ Unaudited |
| TimelockControllerEnumerable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x7d496d0c1cb8aaf8e4fa5460affacb4dd9cc3229`; linea `0xeb1215439d5fc0ac1c754ea20a93408db45ec953` | ⚠️ Unaudited |
| TradeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0c0bfbb5ab2a1293e9d430e956fd630e43ed1095` | ⚠️ Unaudited |
| VeArtProxyUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0xaf1b70f4cf9a20603c9ca2fcca7cae0d1e1324ee`; linea `0xb224f312d40c3d3c9e7a5b8a2655a4020af37c1d` | ⚠️ Unaudited |
| veNFTAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x15020d2d7eab8d893517778e7143021dfe105f1b`; linea `0x18e526fa124b85ce77811e4b8887465da041ee93` | ⚠️ Unaudited |
| veNFTAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x255e81a6c81e8314a45a53d25edb63dd7aa1892f`; linea `0x29468b8ce42556599d7530be413d14cc82da79a8` | ⚠️ Unaudited |
| veNFTAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x32777d35545ee0d8995eff602c699abfcb327236`; linea `0x86453cfae03b9a151a78e4829a8c2e1c7eb86e59` | ⚠️ Unaudited |
| veNFTAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x8297f18d1e55013620f46fda07ff59f393796672`; linea `0x8a63c362e49e07ee8b6bbbe219618921e8fb582c` | ⚠️ Unaudited |
| VoterV5 | unknown | project_anchor | own_supporting | 1 | linea | unit-388634 | `0x0b2c83b6e39e32f694a86633b4d1fe69d13b63c5` | ⚠️ Unaudited |
| VoterV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2a9142ac7d587cad9c0616bdc1d7b39e052a2ff1` | ⚠️ Unaudited |
| VoterV5_GaugeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf09634d2b1472bfca58157b9177b1c40927d7893` | ⚠️ Unaudited |
| VotingEscrowV2Upgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x2df7fba2338126f9be9b745b4a2638889e35d1bd`; linea `0x77dfab24cb8d4399dc6de8f56f6da45f79d6e1fc`; linea `0xd658aae91be7827982733413974b11d6cea1ed3c`; linea `0xfcc33868180ed7061cb34017da92e3e18a973a3b` | ⚠️ Unaudited |
| VotingEscrowV2Upgradeable | operational_periphery | project_anchor | own_supporting | 1 | linea | unit-388640 | `0x8d95f56b0bac46e8ac1d3a3f12fb1e5bc39b4c0c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x23406481b28cb7c1914c460b8b96ce4b2580bcb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x98e5cd63ab2e0a26e87dac103674a840fc5ca474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd57c804a3d2eb2e4945f91da9989c9272451646d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xeb21183588426d41ea9729a1935850a7e3c43acc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xebd5d7d2e831691f5c3b294837fe52f50a17c58c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 127
- Live contracts: 12
- Unknown liveness contracts: 115
- Source-verified contracts: 121
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=44, contamination review=19, exact address book overlap=1, source verified unclassified=57, unverified unclassified=6

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | AlgebraPoolDeployer<br>`0x9a89490f1056a7bc607ec53f93b921fe666a2c48` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd784a1d700a9d7254470221902e7fd00ca8f8156` |
| candidate review | BatchAuction<br>`0x5b8865829b2063ffbe453f9a7d8efbc14c1566dd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | Crowdsale<br>`0x08283a22b62cc0c6e85e3bea176a843fa2a92140` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | Crowdsale<br>`0x3223aaa6b6b08397018ce9dde9ac6584449f0ccb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | Crowdsale<br>`0xa5cd27744af878ea21611b5c6d172203fbbf985f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | DutchAuction<br>`0x6c13a305f58eea8696b7c9ab39e598da1f3d6632` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | OptionTokenV3<br>`0x63349ba5e1f71252ecd56e8f950d1a518b400b60` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| candidate review | PairAPIProxy<br>`0x0e23d55555778e796de58933a1b54f326feeb762` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | PairAPIProxy<br>`0x77576555b2c409ca21da20fce790501b8cbbc0b8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | ProxyAdmin<br>`0x1d73559503235795b43a9ca508ce437ff076c5b9` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | ProxyAdmin<br>`0x464481e3d7f7580254459c5067dcf37ed80fe816` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | ProxyAdmin<br>`0x4b6f631a69ac271e315b97fdd7393f68db4b5645` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | ProxyAdmin<br>`0x59ce7d7aa5c234e116c8ef6d2d6004263f925c79` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | ProxyAdmin<br>`0x6e067349bc2c4a367243e4367fdd7f354664251f` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | ProxyAdmin<br>`0x7a7d96985beb255d1c238f26979e4af475be363d` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | ProxyAdmin<br>`0x7ebd704d2755b2b57e4e326e9e70c1d669f6bf0f` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | ProxyAdmin<br>`0xb15242e8e4b76f3075c1eb6465bf269617407889` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| candidate review | ProxyAdmin<br>`0xc9453ef29cf77e553483a44a8900b37d470e8c13` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | ProxyAdmin<br>`0xf3f5beac27691c6f6d4a79710b0ca1b408523c27` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | RewardAPIV2Proxy<br>`0x51487f191591d3a5569ed288aa3477fd2130acc3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | RewardAPIV2Proxy<br>`0xa8dcc97e6b1bd345fcef66fcd258c54e3e6cb274` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | TradeHelper<br>`0x0c0bfbb5ab2a1293e9d430e956fd630e43ed1095` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| candidate review | TransparentUpgradeableProxy<br>`0x1f43bd7cc8a20b2086f62eed6d8bfa0c948965e4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | TransparentUpgradeableProxy<br>`0x255e81a6c81e8314a45a53d25edb63dd7aa1892f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | TransparentUpgradeableProxy<br>`0x39871f695bf0e60ac4c43dbc1aff10c58371871d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | TransparentUpgradeableProxy<br>`0x6c84329cc8c37376eb32db50a17f3bfc917c3665` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| candidate review | TransparentUpgradeableProxy<br>`0x6dc1dff60096195c9d4c2b89c4bd64c3644f8b41` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| candidate review | TransparentUpgradeableProxy<br>`0x8297f18d1e55013620f46fda07ff59f393796672` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| candidate review | TransparentUpgradeableProxy<br>`0x8a8bb20e7ab43dd6c862c38d0c528eaeb3e6eea6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | TransparentUpgradeableProxy<br>`0x9030ae4d0997658de58d274f79d3074b1beb19d4` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| candidate review | TransparentUpgradeableProxy<br>`0x9cf90ff10c6716627a5560364e8fecda78828b38` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| candidate review | TransparentUpgradeableProxy<br>`0xa5df3ba1e6ceacd92700af088c565d4f85591342` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | TransparentUpgradeableProxy<br>`0xb224f312d40c3d3c9e7a5b8a2655a4020af37c1d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| candidate review | TransparentUpgradeableProxy<br>`0xb94404c0fdebda8d14fc147f8787a35feb41948e` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| candidate review | TransparentUpgradeableProxy<br>`0xba5d01fbf1df1c86240c54220ea31c9cd3138743` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | TransparentUpgradeableProxy<br>`0xc04d35a1f8881b061bbdae148c91cfa78a2783ee` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| candidate review | TransparentUpgradeableProxy<br>`0xc2eaf62961f99d59dfbf819f88b5587990495933` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | TransparentUpgradeableProxy<br>`0xca79b73d967c948864058642eb736de541b325b0` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| candidate review | TransparentUpgradeableProxy<br>`0xd405a345bb0f2b620a81e0fe77962b3d9ed84d3a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | TransparentUpgradeableProxy<br>`0xd8a57006f464d1aaeeb450754489c66f29f8a9b9` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| candidate review | TransparentUpgradeableProxy<br>`0xef5f19fdc1d649a3150bb1f2d23c7f61c57f264d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | TransparentUpgradeableProxy<br>`0xf1e2e55ec87e99fee0a86a662bfa6a662693136c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | veNFTAPIV2Proxy<br>`0x18e526fa124b85ce77811e4b8887465da041ee93` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| candidate review | veNFTAPIV2Proxy<br>`0x32777d35545ee0d8995eff602c699abfcb327236` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| contamination review | AirdropClaimV2<br>`0x5d4614ffed6164df543e48f8906a255bdda6cce6` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| contamination review | AirdropClaimV2Strategic<br>`0x61fc82fd2c5c9f137ac11c0a2ab8d2f29c1557da` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| contamination review | AlgebraV1Twap<br>`0xdb28d27a556c16a333f6420ec0512bb1e64c21fd` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| contamination review | AlgebraV2Twap<br>`0x887f8dfe726754705d5d45ebe8a772d41a94c608` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| contamination review | BribeV2<br>`0xb03c9df82c045aa546c007486c535ce0c63f8aed` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| contamination review | CLFeesVault<br>`0x10ae74a82ace90d0ac4aacafe6eb57c96a664a84` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| contamination review | CLFeesVault<br>`0x4569f2346c5006e1e219bb9e9149f00fa415f5e7` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| contamination review | Launcher<br>`0x3b7191b37bd5ecff4ca41a841a4694cb267022ac` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| contamination review | ListFactory<br>`0x7fb2aaa0ba7ee5883cb283ba7f88dec4bff937e5` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| contamination review | Market<br>`0x4d6ee03712c403ae6174467229ef5b3d79faa881` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| contamination review | MerkleTree<br>`0x08a846946a1d7e70c56ec002b0832699747ebcf8` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| contamination review | NonfungibleTokenPositionDescriptor<br>`0xa29b3f421d759f2cdcd081a7b90a726e3fd7098b` | non_address_book | unknown | unknown | verified | n/a | `0xd784a1d700a9d7254470221902e7fd00ca8f8156` |
| contamination review | PairAPI<br>`0x0da12f269f953c6a8f32ff873de275f21072584d` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| contamination review | PairAPISimple<br>`0x067c77e4fb48aea20199c40a1f1fa99f215e3af0` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| contamination review | PairAPIV1<br>`0x6f4005ae6e02b769b4634698db2113b623e08cd7` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| contamination review | PermissionsRegistry<br>`0xc68a70aa8bca0b4513be719be2c5e2eea9c45cb8` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| contamination review | Quoter<br>`0x851d97fd7823e44193d227682e32234ef8cac83e` | non_address_book | unknown | unknown | verified | n/a | `0xd784a1d700a9d7254470221902e7fd00ca8f8156` |
| contamination review | veNFTAPIV2<br>`0x15020d2d7eab8d893517778e7143021dfe105f1b` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| contamination review | VoterV5_GaugeLogic<br>`0xf09634d2b1472bfca58157b9177b1c40927d7893` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| exact address book overlap | QuoterV2<br>`0xce829655b864e56fc34b783874cf9590053a0640` | project_anchor | unknown | live | verified | n/a | `0xd784a1d700a9d7254470221902e7fd00ca8f8156` |
| source verified unclassified | AccessControls<br>`0x9d945924416dff6fc99bf10fa768f57b7889c7dc` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | AirdropClaimKey<br>`0x142665217f6d4084a47706b423dc3aad884e31e4` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | AirdropClaimV2<br>`0x6fbee88e8589d6f0df1a6b3a52880b3d23318308` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | AirdropClaimV2Strategic<br>`0xdec9fceb6a03a99d6e34efe9a3df3cdaea37664b` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | BribeFactoryV4<br>`0x795998e1d0e57b02a6b8bb57dd8623010fef0886` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | CLFeesVault<br>`0x2c40ead689cb9d5b9acc671599153f8e2e88a361` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | DistributeFees<br>`0xf7fff84426ba183e0a18becddecc31339f8454ad` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | EpochController<br>`0x3445307caed9a144901872380fd5772f71042d80` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | EpochController<br>`0x62fc3b63f7cbaebc74b4876f6cf32e03ba6f0822` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | EpochController<br>`0x9dfa7d13da0b734028f066de388fa0e14dbd8df5` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | EpochController<br>`0xb2306f03f3be863c0379b0fcd8698391882e0f89` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | EpochController<br>`0xd2a6b3e6709512f016eb220905f508e7fb1f2773` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | EscrowDelegateCheckpoints<br>`0x17a785e0b969cdcf2f6c2f4a4f2988f90b9d43d9` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | EscrowDelegateCheckpoints<br>`0x5310a5fa1995a8503c7cbc25fa2ce982d6541e27` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | EscrowDelegateCheckpoints<br>`0x73aebf4fc47b6ee32a15520bdf720e58bb429bcf` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | EscrowDelegateCheckpoints<br>`0xa615388bd2f920ee2fec7606f26908b454f0c249` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | GaugeFactoryV2<br>`0x8418f2b6c428a4e4b6408e4eb5148fdb7c1454b6` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | GaugeFactoryV2_CL<br>`0x7b555a3ed56af0411cd7fdafc909f4082aee1f2e` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | GaugeV2<br>`0x7a34d6bead779a36c129f6e0c2176f2c5c5d49de` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | GaugeV2_CL<br>`0x88f8b3679846a0c8e8e828b6950c6364b737daf9` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | HyperbolicAuction<br>`0x4fb4b44947ba2457959ec44e9eaaa08ba94d3ae5` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | Lynex<br>`0x6758beb93c84131943e8a40d4b8f8f109ebee6aa` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | LynexKeys<br>`0x86751cbf87b0490617c03b7b83c97488e6d3d7ed` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | LynxClaimToken<br>`0x0365592c3db1e4fc43b9bac2276605e007f89059` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | LynxClaimV2<br>`0xb2bed04305b7411f29e0d76201a62b3dcd2418ba` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | LynxClaimV2<br>`0xd8cee411c33ed18a7472d9b21caa60e72523e6c6` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | MerkleTree<br>`0x46ff46f42baf96c02480a70a8c249cc18e3635f1` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | MerkleTree<br>`0x6ccc6b30c91d7bcad4884812dd9358f28066272f` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | MerkleTree<br>`0xd8935168dff597b486f05f283ed7a1e550ad398b` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | MerkleTreeKey<br>`0xa1ea0e1d58ae20bfb9ab43b157d8063f1e71a3bc` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | MinterUpgradeableV2<br>`0xa996de4c5c59be045cd272faed1d284494903826` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | MultiSender<br>`0xc535ee7f17ccd18f8cab0f8c275111497c5ffd8c` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | OptionFeeDistributor<br>`0x9190f0508263d645a6510988d5d566f353d475e4` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | PairAPI<br>`0x17f3b0c913a0a0436c44054a95ba3c32a71efa9d` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | PairAPI<br>`0xeb7eab5847ededc0cb9eb176b059c4b4c02fa017` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | PairAPI<br>`0xef599b792ce116ab652279c825e660258316f2cc` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | PairAPISimple<br>`0x85965d1e0127ee5af8813aabd9a8515cedc1a541` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | PairAPISimple<br>`0xb27a0dc1254b85ad21696a6140c9b1bce74cfe78` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | PointList<br>`0x7be8f060c025d57aa18d287a267928eb33a1eaf4` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | PostAuctionLauncher<br>`0xd85a5ed176bd1abf2e2ba73935c71126bb834a2e` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | PreMining<br>`0x224b2094ce9e298cec5f2baa1a614f716a430c0e` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | RewardAPIV2<br>`0x4362448d5bff5f6c3b411fd59f2869b4c105c743` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | RewardAPIV2<br>`0x5be4bde1c334af7ec5c691fd673bec163f231edf` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | RewardAPIV2<br>`0x968a4b7c9105d37dabc7e9e2797a122bb5679d97` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | RewardAPIV2<br>`0xcd9df6f9b8c698ede3b9fdfc99363866f3f6408d` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | RouterV2<br>`0xc51d7411e3153745613d2000ce773d95cde4a840` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | TimelockControllerEnumerable<br>`0x7d496d0c1cb8aaf8e4fa5460affacb4dd9cc3229` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | TimelockControllerEnumerable<br>`0xeb1215439d5fc0ac1c754ea20a93408db45ec953` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | VeArtProxyUpgradeable<br>`0xaf1b70f4cf9a20603c9ca2fcca7cae0d1e1324ee` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | veNFTAPIV2<br>`0x29468b8ce42556599d7530be413d14cc82da79a8` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | veNFTAPIV2<br>`0x86453cfae03b9a151a78e4829a8c2e1c7eb86e59` | non_address_book | unknown | unknown | verified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| source verified unclassified | veNFTAPIV2<br>`0x8a63c362e49e07ee8b6bbbe219618921e8fb582c` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | VoterV5<br>`0x2a9142ac7d587cad9c0616bdc1d7b39e052a2ff1` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | VotingEscrowV2Upgradeable<br>`0x2df7fba2338126f9be9b745b4a2638889e35d1bd` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | VotingEscrowV2Upgradeable<br>`0x77dfab24cb8d4399dc6de8f56f6da45f79d6e1fc` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | VotingEscrowV2Upgradeable<br>`0xd658aae91be7827982733413974b11d6cea1ed3c` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| source verified unclassified | VotingEscrowV2Upgradeable<br>`0xfcc33868180ed7061cb34017da92e3e18a973a3b` | non_address_book | unknown | unknown | verified | n/a | `0x96794beb1b2e679546019be93fbdbc2623087f31` |
| unverified unclassified | PairAPIV1<br>`0x8398feaac940398a0e33a682a045d4dac2a702c8` | non_address_book | unknown | unknown | unverified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| unverified unclassified | UnnamedContract<br>`0x23406481b28cb7c1914c460b8b96ce4b2580bcb9` | non_address_book | unknown | unknown | unverified | n/a | `0xd784a1d700a9d7254470221902e7fd00ca8f8156` |
| unverified unclassified | UnnamedContract<br>`0x98e5cd63ab2e0a26e87dac103674a840fc5ca474` | non_address_book | unknown | unknown | unverified | n/a | `0x0b465444d6860cd8d76459c564c0f7783d51d380` |
| unverified unclassified | UnnamedContract<br>`0xd57c804a3d2eb2e4945f91da9989c9272451646d` | non_address_book | unknown | unknown | unverified | n/a | `0xd784a1d700a9d7254470221902e7fd00ca8f8156` |
| unverified unclassified | UnnamedContract<br>`0xeb21183588426d41ea9729a1935850a7e3c43acc` | non_address_book | unknown | unknown | unverified | n/a | `0xd784a1d700a9d7254470221902e7fd00ca8f8156` |
| unverified unclassified | UnnamedContract<br>`0xebd5d7d2e831691f5c3b294837fe52f50a17c58c` | non_address_book | unknown | unknown | unverified | n/a | `0xd784a1d700a9d7254470221902e7fd00ca8f8156` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audits.md](https://lynex.gitbook.io/lynex-docs/info-and-security/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [26396] audits.md — no match: The document is a general security overview page, not an audit report. It mentions audits by Secure3, OpenZeppelin, PeckShield, ABDK Consulting, Hexens, and Hacken, but does not list specific contracts in scope. No contract names or audit dates are extractable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | `0x622b2c98123d303ae067db4925cd6282b3a08d0f` | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xca79b73d967c948864058642eb736de541b325b0` | BribeFactoryV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xe8a4c9b6a2b79fd844c9e3adbc8dc841eece557b` | BribeOptionToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xf7fff84426ba183e0a18becddecc31339f8454ad` | DistributeFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x62fc3b63f7cbaebc74b4876f6cf32e03ba6f0822` | EpochController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x8418f2b6c428a4e4b6408e4eb5148fdb7c1454b6` | GaugeFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x7b555a3ed56af0411cd7fdafc909f4082aee1f2e` | GaugeFactoryV2_CL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x1a51b19ce03dbe0cb44c1528e34a7edd7771e9af` | Lynex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x9030ae4d0997658de58d274f79d3074b1beb19d4` | MinterUpgradeableV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x63349ba5e1f71252ecd56e8f950d1a518b400b60` | OptionTokenV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xbc7695fd00e3b32d08124b7a4287493aee99f9ee` | PairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xce829655b864e56fc34b783874cf9590053a0640` | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x2222c569387b2a98fe1a9350f2cacde918910ee4` | RewardsDistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x610d2f07b7edc67565160f587f37636194c34e74` | RouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x3921e8cb45b17fc029a0a6de958330ca4e583390` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x0b2c83b6e39e32f694a86633b4d1fe69d13b63c5` | VoterV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x8d95f56b0bac46e8ac1d3a3f12fb1e5bc39b4c0c` | VotingEscrowV2Upgradeable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 81 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [26396] audits.md

Fork inheritance lineage and inherited audits are included when available.
