# Agentic Audit Brief: YieldSeeker

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: YieldSeeker (`yieldseeker`)
- Website: [https://yieldseeker.xyz](https://yieldseeker.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 288 unique implementations (680 raw deployments)
- Coverage basis: 8/14 confirmed own live verified implementations (57.1%); conservative 57.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,287,639.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for YieldSeeker. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across base. Structural roles: 11 supporting, 3 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: supporting (11), core (3)
- Contract kinds: contract (14)
- Detected standards: accesscontrol (5), erc165 (5), erc1967proxy (1), pausable (1)
- Frameworks: openzeppelin (14), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 14 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- YieldSeekerAaveV3Adapter (`0x2d04c5...36baeb`, chain 8453)
- YieldSeekerAdapterRegistry (`0x4a5c3c...189cf0`, chain 8453)
- YieldSeekerAdminTimelock (`0x8e074b...e23bab`, chain 8453)
- YieldSeekerAerodromeCLSwapAdapter (`0x94565f...c6b0c4`, chain 8453)
- YieldSeekerAerodromeV2SwapAdapter (`0xa3c922...1d020f`, chain 8453)
- YieldSeekerAgentWalletFactory (`0x9c7410...c95130`, chain 8453)
- YieldSeekerAgentWalletV1 (`0x324034...e05051`, chain 8453)
- YieldSeekerCompoundV2Adapter (`0x3f7de8...d5366a`, chain 8453)
- YieldSeekerCompoundV3Adapter (`0x66621c...9b3ad0`, chain 8453)
- YieldSeekerERC4626Adapter (`0x3bf2b1...f12ad7`, chain 8453)
- YieldSeekerFeeTracker (`0x26f4bb...c957db`, chain 8453)
- YieldSeekerMerklAdapter (`0xda7ac0...2bfc0c`, chain 8453)
- YieldSeekerSwapSellPolicy (`0x1ce58b...9cf3ec`, chain 8453)
- YieldSeekerUniswapV3SwapAdapter (`0x4ad957...840b58`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 14; live-surface rows included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 8/14 (57.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 274 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 3 standard proxy/library)
- Proxy deployments represented within implementation groups: 113
- Confirmed-live implementations: 14 of 288 unique; 274 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 8/60
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 0
- Unverified implementations: 228
- Unique implementations: 288
- Raw deployments: 680
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Nethermind | Tier 2 | 8 | 13.3% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| YieldSeekerAdapterRegistry | adapter | project_anchor | own_supporting | 0 | base | unit-397625 | `0x4a5c3c...189cf0` | ✅ Audited |
| YieldSeekerAdminTimelock | governance | project_anchor | own_supporting | 0 | base | unit-397628 | `0x8e074b...e23bab` | ✅ Audited |
| YieldSeekerAgentWalletFactory | registry | project_anchor | own_supporting | 0 | base | unit-397630 | `0x9c7410...c95130` | ✅ Audited |
| YieldSeekerCompoundV2Adapter | adapter | project_anchor | own_supporting | 0 | base | unit-397624 | `0x3f7de8...d5366a` | ✅ Audited |
| YieldSeekerCompoundV3Adapter | adapter | project_anchor | own_supporting | 0 | base | unit-397627 | `0x66621c...9b3ad0` | ✅ Audited |
| YieldSeekerERC4626Adapter | adapter | project_anchor | own_supporting | 0 | base | unit-397623 | `0x3bf2b1...f12ad7` | ✅ Audited |
| YieldSeekerFeeTracker | unknown | project_anchor | own_supporting | 0 | base | unit-397620 | `0x26f4bb...c957db` | ✅ Audited |
| YieldSeekerMerklAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-397632 | `0xda7ac0...2bfc0c` | ✅ Audited |

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x023d35...537fcf` | ⚠️ Unaudited |
| AutoCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 16 deployments: base `0x06f64f...6bd7b9`; base `0x1218bb...6add80`; base `0x16d89b...6f48f2`; base `0x31d3c6...9a43c2`; base `0x3f0a58...12b43e`; base `0x46396e...0f7cb7`; base `0x4a2d24...a41357`; base `0x4d2f64...eea3e8`; base `0x595394...205aa0`; base `0x5b1c31...1e24aa`; base `0x91a7fd...3c3cae`; base `0xa148be...e26ba1`; base `0xbb94c2...047ae5`; base `0xd6bfe1...6ec349`; base `0xdf46f1...92f185`; base `0xeaa288...d407d1` | ⚠️ Unaudited |
| AutopoolETH | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x9c6864...84c831` | ⚠️ Unaudited |
| BeaconProxy | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x611745...b898d1` | ⚠️ Unaudited |
| CommunityRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x3c113d...57e46d`; base `0xe63f5f...109aa2` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0xa456c7...7da37c` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0xbdae5d...b248aa` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0xfc81df...3369fe` | ⚠️ Unaudited |
| EVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 4 | base | n/a | 4 deployments: base `0x085178...9a7ee7`; base `0x0a1a3b...80ee16`; base `0x4c1aed...90f61e`; base `0xc063c3...a650fb` | ⚠️ Unaudited |
| ExactOutSwapperV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2ad991...6b6a7a` | ⚠️ Unaudited |
| ExactOutSwapperV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xf016fe...e38ad9` | ⚠️ Unaudited |
| Execute | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xdbdd7b...2c306a` | ⚠️ Unaudited |
| FlashloanLiquidator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x6bcb1a...eeac5b`; base `0xaa4a65...716673` | ⚠️ Unaudited |
| fToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf42f57...fd9169` | ⚠️ Unaudited |
| GaugeManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 55 deployments: base `0x03486d...6a0e11`; base `0x071e48...f0e3a3`; base `0x0bc5e4...03fb2b`; base `0x111559...849cdb`; base `0x1462a8...ac600a`; base `0x16fec3...b84338`; base `0x19f92c...94ba04`; base `0x1a2b34...9dc4e8`; base `0x1ac20b...9d11b9`; base `0x1e9f31...18242b`; base `0x1f44aa...9b25c4`; base `0x233da9...c95673`; base `0x2365c3...527615`; base `0x284b80...061743`; base `0x32eb0f...bd88c4`; base `0x3411e4...856b7d`; base `0x3a9cb8...b08559`; base `0x3de453...7fb0fc`; base `0x3ef141...0f63ce`; base `0x5b6ccd...8a79ab`; base `0x5c9a7d...7f5d82`; base `0x66a248...d3e129`; base `0x6eeee4...b4da21`; base `0x75e77d...d54025`; base `0x779657...7c231e`; base `0x7a5d83...e7f471`; base `0x7e3db2...aa8be7`; base `0x7edbfc...3585e4`; base `0x7f6b60...a95e68`; base `0x8131cc...d7855f`; base `0x8508f9...0dcfac`; base `0x85cf3b...00159e`; base `0x8abc86...000ce7`; base `0x90ab97...a8644f`; base `0x926877...13c16f`; base `0x96beb0...8c35ca`; base `0x9d01fe...4bbfa5`; base `0xa27545...d15667`; base `0xa38ba0...e10c7a`; base `0xb14384...4d6615`; base `0xb8a43d...2edc7b`; base `0xb92213...50b165`; base `0xbe08ff...d237ec`; base `0xbe2868...91ad19`; base `0xbfe23e...b2bd3b`; base `0xc010d0...f9c9ba`; base `0xc311be...f027d2`; base `0xc92c01...5ec8c8`; base `0xd37cfe...6d03de`; base `0xdbc592...79d141`; base `0xe69991...683e8c`; base `0xe7a8d9...8e24a8`; base `0xe8e4f0...c6715f`; base `0xf10b6c...8dfff8`; base `0xf3e49e...87bb92` | ⚠️ Unaudited |
| InterestRateModel | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 59 deployments: base `0x03688e...0053f9`; base `0x049c4b...f6767e`; base `0x04fd01...c4fa85`; base `0x084531...8d2923`; base `0x089d27...5322f0`; base `0x09e49a...bcb41f`; base `0x0cf4d5...92da7f`; base `0x108885...9e2527`; base `0x10e981...729fe2`; base `0x11f877...71872e`; base `0x180044...fc56c4`; base `0x1905d5...182553`; base `0x20d3c8...9abc2b`; base `0x22f1d4...c87f42`; base `0x2774e0...a98e7f`; base `0x30c434...c47719`; base `0x364606...630fc7`; base `0x39b583...9d481a`; base `0x3ab6af...a9ce57`; base `0x4139d4...b5dd72`; base `0x414690...b9d283`; base `0x447a68...acf7ee`; base `0x456075...5a4276`; base `0x61ad77...204415`; base `0x65aa45...5f0fd0`; base `0x660588...4aa715`; base `0x70079c...bfad7a`; base `0x71b45d...6104cc`; base `0x765547...0898ce`; base `0x76c9ae...473519`; base `0x775e3d...0a12d3`; base `0x7b9b1f...b6f35c`; base `0x7fcef7...4b052c`; base `0x86dde7...5f4ec9`; base `0x87d676...d0039e`; base `0x915dde...af3350`; base `0x93463e...2bf4e3`; base `0x948ce9...bc1138`; base `0xb1bbe8...6664fc`; base `0xb3aeb2...f2372b`; base `0xb54768...11f0d5`; base `0xb6845c...550be5`; base `0xb80fec...7e78c3`; base `0xbf25a8...63e739`; base `0xcddb01...47fa70`; base `0xd0524a...ac7927`; base `0xd09053...73af52`; base `0xd1909c...7aecff`; base `0xd24c18...c7577f`; base `0xd887fb...9d60ce`; base `0xdcd435...c93f3e`; base `0xdd34a1...6fc1c5`; base `0xe2ebb8...a839cb`; base `0xe6ec36...f27523`; base `0xe7bf8f...df81ea`; base `0xe8b636...622c67`; base `0xf24139...6bfabe`; base `0xf44ebd...50f2ab`; base `0xf53563...dd35c4` | ⚠️ Unaudited |
| LeverageTransformer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 59 deployments: base `0x059813...ec4e98`; base `0x082de2...8b95a4`; base `0x086dca...6de157`; base `0x1535ea...0db30a`; base `0x15c1f7...0dd5d6`; base `0x16ea81...98bc92`; base `0x1d4f04...5fb7be`; base `0x21cbd9...79bc51`; base `0x265817...ec3bb8`; base `0x26bf32...259875`; base `0x2827cb...dbc07f`; base `0x2d470d...1c4dfe`; base `0x2e20e1...a3d5e7`; base `0x36fc9c...9b556a`; base `0x40b8e6...7abf48`; base `0x416f31...8a24b1`; base `0x44138e...4d709b`; base `0x45085a...0fd1f8`; base `0x468695...9f0d0d`; base `0x50d58c...c28b63`; base `0x513051...daa022`; base `0x5253a5...8d4d85`; base `0x52fff3...ea79d6`; base `0x5964f2...b099ed`; base `0x5d45ea...ae52b8`; base `0x5e97a4...3d9b23`; base `0x624870...61bf48`; base `0x674afc...5a045c`; base `0x69193c...18562d`; base `0x691f84...c1c188`; base `0x706d3e...6d951d`; base `0x737902...c8e878`; base `0x787fd5...582c4d`; base `0x7c2998...2d363c`; base `0x969df5...6970c4`; base `0x9743e3...ce2a3f`; base `0x97b02f...0ed481`; base `0xa4bcaf...adfd83`; base `0xab95a1...fcb604`; base `0xad7e16...5daaa7`; base `0xae53b3...01e9b7`; base `0xb2f65f...284471`; base `0xb3562e...b35546`; base `0xba8619...b0a129`; base `0xbb8bc2...3c4286`; base `0xc138d1...66722e`; base `0xc2a0e2...354753`; base `0xc8fd28...103029`; base `0xcbc102...173b5d`; base `0xcbda6f...c0b804`; base `0xd899e0...fc8fe0`; base `0xdd10fa...d9449c`; base `0xe0c658...86936c`; base `0xe328d8...873f07`; base `0xe44de5...e8a998`; base `0xe5c8ff...b98ce7`; base `0xf47d5d...3f5b68`; base `0xf84ef1...404c7a`; base `0xf8d456...80da51` | ⚠️ Unaudited |
| Loan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: base `0x371d2b...b234e1`; base `0x3addab...7657fa`; base `0x8b51e5...836d9d`; base `0x92f4cf...408f0b`; base `0x9c0fc7...391d32`; base `0xdd9b03...c735c3`; base `0xebeb86...a29708`; base `0xf6a044...279b5f` | ⚠️ Unaudited |
| Loan | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x87f18b...58efd0` | ⚠️ Unaudited |
| LoanV2Native | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x2acf5c...cacdec`; base `0x71a28f...476341`; base `0xe2addc...f7e108`; base `0xf535d5...5caf27`; base `0xf755ec...f249c4` | ⚠️ Unaudited |
| MetaMorpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x12afde...70406e`; base `0xbeef01...228183`; base `0xc0c568...0deb12`; base `0xc1256a...00a2ca`; base `0xdb90a4...9bfa83`; base `0xee8f4e...e44b61` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: base `0x1401d1...ce006b`; base `0x1d3b1c...774657`; base `0x43e623...1d1f46`; base `0x5435bc...259ca0`; base `0x75e1a1...337e1f`; base `0x877344...6e9084`; base `0xbeefa7...9444e0`; base `0xbeefa7...f3878f`; base `0xcddcdd...b9e8f3`; base `0xe74c49...7ced56`; base `0xef417a...de5d03` | ⚠️ Unaudited |
| PairInfos | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x81f22d...d977e5` | ⚠️ Unaudited |
| PartnerFeeManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25f32b...0bb4a5` | ⚠️ Unaudited |
| PartnerFeeManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xf0714a...bfe1be` | ⚠️ Unaudited |
| PerpManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xec3e4e...f7d70e` | ⚠️ Unaudited |
| PriceAggregator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x64e262...3da511` | ⚠️ Unaudited |
| Referral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa96f57...dbb1bd` | ⚠️ Unaudited |
| Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0638ad...c83982` | ⚠️ Unaudited |
| SwapRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08292d...74503d` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x36bf99...7eb1cf`; base `0x477683...bada13`; base `0x7814ea...77ae49` | ⚠️ Unaudited |
| Trading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x5ff292...20535f` | ⚠️ Unaudited |
| TradingStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x8a311d...f7422d` | ⚠️ Unaudited |
| Tranche | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x83084c...7b66f7` | ⚠️ Unaudited |
| Tranche | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x944766...c9e7f9` | ⚠️ Unaudited |
| V3Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 60 deployments: base `0x06a1eb...073a7b`; base `0x08d920...0bd1bb`; base `0x0a9228...ea7db3`; base `0x0bb922...59cabc`; base `0x0d16d5...6804b5`; base `0x0e7520...8df829`; base `0x14b0b9...60625e`; base `0x1572f9...e91e22`; base `0x21df58...1af9e2`; base `0x298816...70a6db`; base `0x2d2b85...bf1bf3`; base `0x2e300f...96757f`; base `0x31c8ae...f4731f`; base `0x3679b7...8ffc21`; base `0x42ca6f...0ea1ee`; base `0x446d5d...65762a`; base `0x4652ac...081260`; base `0x46df44...11fd01`; base `0x4d1f01...14ef60`; base `0x4ec09a...5fbae2`; base `0x52fe73...810e5c`; base `0x5358b4...0e4af0`; base `0x56e886...c8cf6d`; base `0x572826...cd3a67`; base `0x5a6cd5...19e7f6`; base `0x5cf669...e35984`; base `0x5d1e74...46bc57`; base `0x5ec421...44908b`; base `0x6014db...5a63a9`; base `0x6e28dd...388100`; base `0x7c73a6...efcff6`; base `0x82e788...bb67c8`; base `0x896a2f...935279`; base `0x90af66...9423bc`; base `0x921054...248d7f`; base `0x950fa0...fc1d47`; base `0xa1e6d9...479285`; base `0xa33f14...9a691b`; base `0xa53f1d...5ac178`; base `0xad6239...3cc096`; base `0xaed997...9aa7dd`; base `0xb077e7...853b54`; base `0xb2fe04...c148ae`; base `0xbbaa5a...5c893f`; base `0xbefa9d...a8c988`; base `0xc128e9...077db4`; base `0xc27d15...e85521`; base `0xc38f80...ecbd0d`; base `0xc43d78...d4f91a`; base `0xc5664a...a32d4f`; base `0xc7037f...ef666f`; base `0xcced0b...bc310c`; base `0xcd2e4f...168ec1`; base `0xcf33e4...779967`; base `0xd29e12...7712af`; base `0xe865a2...62c929`; base `0xeccfe1...7d9eb8`; base `0xee49e4...365131`; base `0xf3b0ab...a1d4d1`; base `0xf3f647...d05e2d` | ⚠️ Unaudited |
| V3Utils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x7d1f9f...38b9e1`; base `0x98ec49...2ec790` | ⚠️ Unaudited |
| V3Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 28 deployments: base `0x02c514...1528cd`; base `0x1625d8...18971f`; base `0x22ce29...2454cb`; base `0x2736e6...5f302d`; base `0x33a8ab...c901a6`; base `0x348633...aa988d`; base `0x36aeae...be7599`; base `0x3a23ec...563d3a`; base `0x4aba43...41904b`; base `0x50a854...ac154f`; base `0x516646...22a7a0`; base `0x55fe00...7a2619`; base `0x632fff...dc6564`; base `0x77f769...0fc5f4`; base `0x82132b...31c758`; base `0x93db99...eccd26`; base `0xa1ccfb...005859`; base `0xa2ffbe...8f66b5`; base `0xb0a1a9...53a639`; base `0xb46941...821e38`; base `0xc09d7d...c69084`; base `0xce5614...d67460`; base `0xd4c617...b06156`; base `0xdfeba9...a55adc`; base `0xdff54f...994054`; base `0xe91793...17c3d9`; base `0xeca183...3e6466`; base `0xed8125...cf9d55` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x053e49...19e3e9`; base `0xb99b6d...507cf5` | ⚠️ Unaudited |
| VaultManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xe9fb8c...7348dd` | ⚠️ Unaudited |
| VeTranche | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x691411...d21693` | ⚠️ Unaudited |
| VeTranche | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x7bf094...8efb05` | ⚠️ Unaudited |
| WasabiRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xfae69f...d8558f` | ⚠️ Unaudited |
| WasabiVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 80 | base | n/a | 80 deployments: base `0x00d7c8...990ea1`; base `0x04acd5...0f5d30`; base `0x091a22...862eda`; base `0x0da575...6bb12b`; base `0x0e54d3...8f0939`; base `0x114073...da64dd`; base `0x11a030...8fc212`; base `0x12c9de...f9cf49`; base `0x181dc3...cbeb13`; base `0x197934...181313`; base `0x1e5f25...aa3915`; base `0x215c8d...f584ba`; base `0x228dca...6d192f`; base `0x277c83...ce3ddd`; base `0x2a3c70...f9b442`; base `0x2d638c...c54f16`; base `0x2eef82...52ceaa`; base `0x313409...0b8b2d`; base `0x3733b6...dad959`; base `0x38ba55...0d9865`; base `0x38dc85...384939`; base `0x3b5587...1cd8ce`; base `0x3bc860...7f9792`; base `0x3edc1f...f3863f`; base `0x3f47af...d089af`; base `0x42011d...2e695e`; base `0x4bd3c9...e3765b`; base `0x4e8fb8...eb2a2f`; base `0x4eeaed...df99f6`; base `0x50afcb...874687`; base `0x52c88e...7b2a40`; base `0x542b5d...93b191`; base `0x55dcda...1af8c2`; base `0x5955cf...a8cb60`; base `0x5c9258...9806b0`; base `0x5caa33...6c1c2e`; base `0x5f164b...1922da`; base `0x6378a7...142afd`; base `0x65d8f6...7e94d2`; base `0x6655cf...160f66`; base `0x699cbf...2dba2c`; base `0x70b808...4f979c`; base `0x74b1e4...39780d`; base `0x76106b...364a95`; base `0x7daa6c...880d3b`; base `0x7e7d9a...869c94`; base `0x82ff77...61dfbe`; base `0x837277...ec208c`; base `0x8379dc...285374`; base `0x87b416...ac459e`; base `0x893f93...de2c89`; base `0x8d1f90...601009`; base `0x9a9298...16ea10`; base `0xa10f4d...06070f`; base `0xa34800...464f80`; base `0xa3a575...470fb2`; base `0xa3ae97...c2a188`; base `0xabb566...c3a9d8`; base `0xadac74...b86a98`; base `0xaec98b...bd9dd3`; base `0xb1a597...0bd0c4`; base `0xbcc889...058117`; base `0xbf6668...629cc4`; base `0xc62697...c8970f`; base `0xc84879...1df3e3`; base `0xc857bc...fb4240`; base `0xc8bd38...16b5bb`; base `0xcc3974...cdbcf3`; base `0xcc8d0c...4e6a14`; base `0xcddb2f...58cc8d`; base `0xcfd04f...a8eb6c`; base `0xd7438e...71d1ac`; base `0xd76dcb...1af9a1`; base `0xe33cc6...5372c5`; base `0xe36530...288ca4`; base `0xe8f53b...8a61bb`; base `0xeb55a1...3fd4d0`; base `0xeffe2b...3cea2f`; base `0xf50c66...db1059`; base `0xfb39f4...9cbf8e` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 8 | base | n/a | 8 deployments: base `0x078b93...ac94fc`; base `0x197d5c...7e4a18`; base `0x1c4a80...048b24`; base `0x833fd9...2766b6`; base `0x95c81f...97fe95`; base `0xb152e9...1ad8c9`; base `0xb8da93...7239a0`; base `0xe6c109...9962a2` | ⚠️ Unaudited |
| YieldSeekerAaveV3Adapter | adapter | project_anchor | own_supporting | 0 | base | unit-397621 | `0x2d04c5...36baeb` | ⚠️ Unaudited |
| YieldSeekerAerodromeCLSwapAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-397629 | `0x94565f...c6b0c4` | ⚠️ Unaudited |
| YieldSeekerAerodromeV2SwapAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-397631 | `0xa3c922...1d020f` | ⚠️ Unaudited |
| YieldSeekerAgentWalletV1 | unknown | project_anchor | own_supporting | 0 | base | unit-397622 | `0x324034...e05051` | ⚠️ Unaudited |
| YieldSeekerSwapSellPolicy | unknown | project_anchor | own_supporting | 0 | base | unit-397619 | `0x1ce58b...9cf3ec` | ⚠️ Unaudited |
| YieldSeekerUniswapV3SwapAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-397626 | `0x4ad957...840b58` | ⚠️ Unaudited |
| YoVault_V2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x000000...588a65` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (228)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0137cf...3f48e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x030ad5...5a9fe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x043413...f62b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x053ae6...880c0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x05f018...325b07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x07e73f...cd3666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08dcdb...285957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0a9732...a84d4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b14fe...602e23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b4a35...6f4c82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c0104...443913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d28bc...14610f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d73c2...ef5e37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ff4b8...f05800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x100451...8a94fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x126e13...637a03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x12a31b...2fc92d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x142ce7...fc9717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x18145b...73a442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x186ef3...044a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x18c2ab...e6fe20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x19c804...c01e08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a3b8a...2f1dc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1adbdd...434605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1bb920...118be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c0527...9b1af9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c4888...008488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1dc763...d3b858` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e2c31...ce04fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e39cf...d095c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x201e6f...5ca51d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20a27e...884498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20b7cd...b97f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2182b5...b84684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x21aaaa...09189e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x21b48f...f3c35e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x21bc69...eeb6ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x21fd41...946bcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x23ca23...4c1d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x24e4d4...433551` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25244f...2b9553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25459e...7c2e4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26ecad...ca3f2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2867d6...3a8334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x28fe58...b4d92a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x295d89...273815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2a1842...65a408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b80d5...f0657c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2ea6b2...61d7bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x323b88...f568cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37eb65...5f44fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a0724...2d355f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b168c...d486b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3c7645...349a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d1c97...4de11b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3ddf12...c109cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3dfe6e...281c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f133f...47b747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x406fc1...3f8d2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4425dc...3f6e80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x457c7b...4f9773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x457fea...765b6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x45d88c...f13937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x478805...58d421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4849fb...0cc7ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x495077...f52554` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4b073a...ecb73d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c8c3f...3d4f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4cccdd...d3e03c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4d858a...79349a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4f20b6...7b0978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x511ceb...831349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51abc0...86fb61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51e5a0...d89fd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x534605...31ac04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x53bfd2...fb1f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x54ca91...1f3e5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5523f1...2bf7b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5557f3...255109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x560b56...1e8d74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x56e0e3...cf4e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5826e9...061eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x583c44...cb477d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5998fa...632539` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5b5e47...c9c4df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5b6d7a...60a126` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c0116...50a9fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5e515a...41b554` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5ef03e...064655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5f1a44...751e98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6188d4...8f4cef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x61c5e2...679170` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x620158...3321d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x63a993...59566e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x63b2f9...bd0036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x64be8d...1e7088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x696d0d...2045a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x69e679...7c6972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6a12e6...33b71c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6bd652...5bafe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6c98f8...7e94ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6da57c...2027e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x710ab5...3d9e74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71d035...eaaf0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x723ae1...b99a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x72cec4...9bfd6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x72ecf7...f1255e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x746514...c63913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x751d49...7d196c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x761e20...d43c35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x776ec8...585b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x780cc3...c7c2ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x785363...f99af6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7b18b3...aec979` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7df60d...a3e1a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7e881d...1f76ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x81116f...0e0706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x83ac60...b57e70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x83b218...8e8b9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x849ac2...6b306a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x851fc7...1b1bf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x85f7d1...0f3f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x885296...c3615f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88c38a...6f4358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88e23d...2012a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x892927...9aa03c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x894aac...3e26a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x89941a...5e05b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ac5aa...a04dfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8bdec8...c624a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ddf5f...9d7a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fbe84...d73821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90af87...daf390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x93ce08...77c487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x969ed3...8931d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9762bc...9dea01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9b98c7...4976de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9bb199...688394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9c4a49...265057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9c58aa...f56971` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9c9376...1e0312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e3311...1284c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f1f6f...94d32b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9fc666...cd7193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa217ca...7f1e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa4b628...e93b52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa5ba9e...c58dd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa79c3a...e04552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa8deab...1c2046` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa98c35...9ebcaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xab52f8...f7c2b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac4550...fb3b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xad4edc...bd37ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaf20d7...98714a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb1284d...be3cd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb42520...e20c08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb622b4...2d86c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb6544b...9ef813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb772e1...bbd772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb7c3ac...1b019e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb88dcf...4509c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb9d6dc...7e738c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xba0a85...76c386` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe19d3...8eee07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbfea82...505188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc1ba1d...ae0b5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc2425b...092fc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc2e9ce...4ed5ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc34ed8...e3ac6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc4c2e1...775f72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc5d381...6dae8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc60b95...288a03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc69ada...54aa1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc7f4e7...cbeb9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc92279...8a2a0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc99eb1...1d44a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcac344...1b7fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc5cc6...e39b75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce6b7f...8436c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd0a246...a8316b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd1cfbc...0b5b4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd2f7bc...fe2e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd3e726...2b11d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5ea7d...b82c6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd627fa...7ccfe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd70c79...a1c384` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd78f41...9847d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd9f80f...dbb698` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdaf14e...a5cb1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xde1734...36eeb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xde8ac9...35835f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdf74c9...dffe62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0151d...36072f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe02398...609cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe2493c...4ffdc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe289a4...a6c5b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe31ed4...361dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe5579b...8b3a24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe639d6...ecebc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe685f0...713118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6ebfb...a3aab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe7fcaa...578bb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe98f47...5a211e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xea3952...50cdab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec0af9...8be22f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeca362...f1db3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed071a...956915` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeda1e6...93c061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeec8f8...3b8a4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf1050a...84a4a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf132bd...ba06a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf18fcd...5f4a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2e381...ed1786` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf32992...d1e4f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4c17e...b0dd26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf60304...d0d1da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf6c04c...ce0e4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf761ac...d13d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfb5053...95fbea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfbba68...3730a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfc55ab...f9252f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfc8d74...bedcad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfcca37...94a849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfce7d6...67a3c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfce891...fcd05d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfdb262...bc7489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xff86e4...e4a305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xffdf46...616543` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [20260305-nethermind.pdf](https://github.com/tokenpage/yieldseeker-contracts/blob/main/audits/20260305-nethermind.pdf) | Nethermind | Audit | 2026-03 | fresh | Direct | contract_name | matched | 8 | 0 | 0 | 17 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14223] 20260305-nethermind.pdf — matched: Extracted 25 contract names from the 'Audited Files' table in Section 2. The audit date is the final report date: March 05, 2026.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 20260305-nethermind.pdf | AgentWalletV1 | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | FeeTracker | own contract | YieldSeekerFeeTracker (selected) `0x26f4bb...c957db` — deployed 2026-03-16 19:09:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260305-nethermind.pdf | IAgentWalletFactory | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AgentWalletFactory | own contract | YieldSeekerAgentWalletFactory (selected) `0x9c7410...c95130` — deployed 2026-03-16 19:09:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260305-nethermind.pdf | AdapterRegistry | own contract | YieldSeekerAdapterRegistry (selected) `0x4a5c3c...189cf0` — deployed 2026-03-16 19:09:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260305-nethermind.pdf | AdminTimelock | own contract | YieldSeekerAdminTimelock (selected) `0x8e074b...e23bab` — deployed 2026-03-16 19:09:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260305-nethermind.pdf | IAgentWallet | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKAgentWalletFactory | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKAdapter | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | IAWKAgentWalletFactory | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKAdapterRegistry | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | IAWKAgentWallet | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKErrors | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | IAWKAdapter | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKMerklAdapter | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKBaseVaultAdapter | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKCompoundV3Adapter | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKZeroXAdapter | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKCompoundV2Adapter | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKERC4626Adapter | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | AWKAaveV3Adapter | unmatched — not counted | — | listed in scope table | no |
| 20260305-nethermind.pdf | MerklAdapter | own contract | YieldSeekerMerklAdapter (selected) `0xda7ac0...2bfc0c` — deployed 2026-03-16 19:09:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260305-nethermind.pdf | CompoundV2Adapter | own contract | YieldSeekerCompoundV2Adapter (selected) `0x3f7de8...d5366a` — deployed 2026-03-16 19:09:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260305-nethermind.pdf | ERC4626Adapter | own contract | YieldSeekerERC4626Adapter (selected) `0x3bf2b1...f12ad7` — deployed 2026-03-16 19:09:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20260305-nethermind.pdf | CompoundV3Adapter | own contract | YieldSeekerCompoundV3Adapter (selected) `0x66621c...9b3ad0` — deployed 2026-03-16 19:09:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x2d04c5...36baeb` | YieldSeekerAaveV3Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x94565f...c6b0c4` | YieldSeekerAerodromeCLSwapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa3c922...1d020f` | YieldSeekerAerodromeV2SwapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x324034...e05051` | YieldSeekerAgentWalletV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1ce58b...9cf3ec` | YieldSeekerSwapSellPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4ad957...840b58` | YieldSeekerUniswapV3SwapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 52 |
| upstream | 3 |
| standard_library | 5 |
| needs_review | 228 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 8 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 17 unmatched
- Matched-own operational status: 8 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=8

Fork inheritance lineage and inherited audits are included when available.
