# Agentic Audit Brief: Bunny

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Bunny (`bunny`)
- Website: [https://pancakebunny.finance/](https://pancakebunny.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, polygon
- Contract surface: 174 unique implementations (461 raw deployments)
- Coverage basis: 4/10 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,923,535.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Bunny. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 22 contract row(s) across bsc, ethereum. Structural roles: 19 unclassified, 3 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 22
- Structural roles: unclassified (19), core (3)
- Contract kinds: contract (22)
- Detected standards: ownable (2), erc1967proxy (1), erc20 (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AdminUpgradeabilityProxy (`0xedfcb7...da28ed`, chain 56)
- BunnyPool (`0xcadc8c...d7889d`, chain 56)
- BunnyToken (`0xc9849e...a11a51`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 22; live-surface rows included: 22 (22 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/10 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 164 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 117
- Confirmed-live implementations: 10 of 174 unique; 164 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/141
- Verified + Unaudited implementations: 137
- Verified by bytecode match: 0
- Unverified implementations: 33
- Unique implementations: 174
- Raw deployments: 461
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 2.8% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BunnyBNBPool | unknown | project_anchor | own_supporting | 0 | bsc | unit-381556 | `0xc80ea5...d66e0d` | ✅ Audited |
| BunnyPool | core_logic | project_anchor | own_supporting | 0 | bsc | unit-381558 | `0xcadc8c...d7889d` | ✅ Audited |
| BunnyToken | token | project_anchor | own_supporting | 0 | bsc | unit-381557 | `0xc9849e...a11a51` | ✅ Audited |
| VaultCakeToCake | core_logic | project_anchor | own_supporting | 1 | bsc | unit-381562 | `0xedfcb7...da28ed` | ✅ Audited |

### ⚠️ Verified + Unaudited (137)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x00e682...53ca44`; bsc `0x9578ed...3d9e97` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 25 deployments: bsc `0x16b7ab...270e1a`; bsc `0x1a3270...f14675`; bsc `0x231aef...b84d4f`; bsc `0x273db5...1295c8`; bsc `0x3866cd...04f1d0`; bsc `0x4dbd3f...e46f69`; bsc `0x5b89fb...efb0db`; bsc `0x5dabd9...42ac24`; bsc `0x5fb9ab...048e8d`; bsc `0x640aab...49b87e`; bsc `0x7347d8...df8717`; bsc `0x77f70c...9ab4b5`; bsc `0x7f4196...ce89a8`; bsc `0x95733e...f98e61`; bsc `0xa6340d...f8e860`; bsc `0xb71b23...58e764`; bsc `0xbd574b...d42c24`; bsc `0xbeddd9...6f750a`; bsc `0xc30e44...8f567a`; bsc `0xd5f708...b12330`; bsc `0xe34c8e...30ddde`; bsc `0xe5f382...ddef0d`; bsc `0xe977b0...9ddbf8`; bsc `0xf0a227...2b8e7c`; bsc `0xfad04f...8c890a` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x227858...bef4a1`; bsc `0xa17c54...aec210` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x443e8a...1fa1de`; bsc `0x64f1fe...f9c92b` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6ded1d...d4a07e`; bsc `0xf84e38...a619ab` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0xa9b005...c778fc`; bsc `0xcb1e37...029341`; bsc `0xd60196...348183` | ⚠️ Unaudited |
| BankBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x18a9ee...5e9451`; bsc `0x83adb2...e4f738` | ⚠️ Unaudited |
| BankBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x4e4ded...fe3f80`; bsc `0xaf8980...0b2036` | ⚠️ Unaudited |
| BankBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x926940...2dbbb8`; bsc `0xb28aa3...2d761b` | ⚠️ Unaudited |
| BankBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x08bfd4...e5a249`; bsc `0xcbaea5...9c5963` | ⚠️ Unaudited |
| BankBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6d3fd...5bbdc1` | ⚠️ Unaudited |
| BankConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb9fc5...28cb08` | ⚠️ Unaudited |
| BulkSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bfbde...797174` | ⚠️ Unaudited |
| BunnyChef | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x40e318...4d04ce`; bsc `0xf3976c...87f3f8` | ⚠️ Unaudited |
| BunnyChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x502230...1e9247` | ⚠️ Unaudited |
| BunnyFeeBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x291891...718977`; bsc `0x34e1df...3b7612`; bsc `0x886b5a...e989e7`; bsc `0xcaf359...522fd6`; bsc `0xe4b996...0199a3` | ⚠️ Unaudited |
| BunnyFeeBox | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x3749f6...1894bb` | ⚠️ Unaudited |
| BunnyMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0b4a71...667efe`; bsc `0xb8b0cb...8cbf67` | ⚠️ Unaudited |
| BunnyMinterMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46057f...269227` | ⚠️ Unaudited |
| BunnyMinterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 12 deployments: bsc `0x56eb09...26c7b4`; bsc `0x6298e5...c436b4`; bsc `0x75940c...099741`; bsc `0x773bca...524be0`; bsc `0x7ed1b8...85c5d2`; bsc `0x819eea...219b5d`; bsc `0xaabe04...7860ba`; bsc `0xae6fa6...a6966e`; bsc `0xaebbfa...73dffb`; bsc `0xc31b71...e35fc0`; bsc `0xc39c78...72d15d`; bsc `0xedfb16...68f3f5` | ⚠️ Unaudited |
| BunnyMinterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8cb887...d65219`; bsc `0x919b56...f8aa02` | ⚠️ Unaudited |
| BunnyOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e92ab...5d35d1` | ⚠️ Unaudited |
| BunnyPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb24633...bc1f44` | ⚠️ Unaudited |
| BunnyPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x28ecb0...292276`; bsc `0x31fe3a...06ef13` | ⚠️ Unaudited |
| BunnyPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4fd014...3e014d`; bsc `0xfd25b3...0277b9` | ⚠️ Unaudited |
| CakeFlipVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x23b68a...8f3891`; bsc `0x3649b6...2ffa00`; bsc `0x569b83...09d5ab`; bsc `0x62f2d4...b26609`; bsc `0x916acb...cbfbf0`; bsc `0xa3bff2...7a52b1`; bsc `0xdc6e9d...989bf8` | ⚠️ Unaudited |
| CakeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a8235...419e8d` | ⚠️ Unaudited |
| CompensationTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x098909...94c0ee`; bsc `0x92e64e...9c5421` | ⚠️ Unaudited |
| CompensationTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x10fd9e...19cec4`; bsc `0xcb1fe3...07fcb1`; bsc `0xccc434...05c77c` | ⚠️ Unaudited |
| ComptrollerTester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x145ee0...ad6a2c` | ⚠️ Unaudited |
| Dashboard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xce8b1a...b04161`; bsc `0xe375a1...45ac2e` | ⚠️ Unaudited |
| DashboardBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x21200d...af567d`; bsc `0xd43202...37e286` | ⚠️ Unaudited |
| DashboardBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: bsc `0x41cbb9...c549fe`; bsc `0x59a5f2...8ce8d3`; bsc `0x83104d...7b8f06`; bsc `0x8b5653...f55ba5`; bsc `0xc0393c...801970`; bsc `0xc05d56...07ceba`; bsc `0xcf4dbb...0741a3`; bsc `0xef802a...77d949`; bsc `0xfa1978...e1cb11`; bsc `0xfb4a92...0ff99b` | ⚠️ Unaudited |
| DashboardBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8608c5...63cff3`; bsc `0xb3c96d...31f5f4` | ⚠️ Unaudited |
| DashboardBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb10bfe...da0d48`; bsc `0xf9696d...e1f761` | ⚠️ Unaudited |
| DashboardBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xd925cc...9c0f55`; bsc `0xf2225f...8d0116` | ⚠️ Unaudited |
| FlipVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a5c2a...c7d04c` | ⚠️ Unaudited |
| FlipVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1b0888...3438a6`; bsc `0xc5bcab...73bec0` | ⚠️ Unaudited |
| MigrationRewards | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x033361...306c83` | ⚠️ Unaudited |
| MigratorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x610105...2135fc` | ⚠️ Unaudited |
| MoundOfferingBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x36a2a6...76b1ec`; bsc `0xb71fa5...504d5a` | ⚠️ Unaudited |
| MoundOfferingBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48223a...5e35ad` | ⚠️ Unaudited |
| MoundTokenBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x0c19a8...d95bbe`; bsc `0x44e354...b9be13`; bsc `0xbdb611...2aa15f`; bsc `0xfa0349...290474` | ⚠️ Unaudited |
| MoundTokenBSC | token | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x4c97c9...f244fe` | ⚠️ Unaudited |
| MoundTokenBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5b44f5...c83732`; bsc `0x7fc76f...c1e1bd` | ⚠️ Unaudited |
| PBunnyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x26cc5e...15a343`; bsc `0x77d2d3...1583a7` | ⚠️ Unaudited |
| PotBunnyLover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x0e699c...b8da17`; bsc `0x2d042e...d1563c`; bsc `0x4e8873...7a8d3e`; bsc `0x7cc54d...4b04e7`; bsc `0x8810b0...46c1c7` | ⚠️ Unaudited |
| PotBunnyLover | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 2 deployments: bsc `0x60d8a5...bc243b`; bsc `0xe0d17b...2b2ca4` | ⚠️ Unaudited |
| PotCakeLover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x285037...a3b641`; bsc `0x327978...1ea7e6`; bsc `0x5a4846...0eb6e9`; bsc `0x6eac3e...c44fc9`; bsc `0x912d2d...bc573d`; bsc `0xaf938a...efbf94` | ⚠️ Unaudited |
| PresalePancakeBunny | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x641414...42bf07` | ⚠️ Unaudited |
| PriceCalculatorBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x16d973...1472cc`; bsc `0x2ed1f2...c532b3`; bsc `0x2f4b82...3ca2dc`; bsc `0x37651c...46b80a`; bsc `0x40dc1a...dfaffa`; bsc `0x433c8e...87adc2`; bsc `0x7c4c4b...0e121e`; bsc `0xc061d1...dd15a6`; bsc `0xfa64d8...80be7c` | ⚠️ Unaudited |
| PriceCalculatorBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xf5bf8a...d4fb7d` | ⚠️ Unaudited |
| PriceCalculatorBSCV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x542c06...54ddb0`; bsc `0x81ef2b...eebba0` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x2ccd44...7c7bc7`; bsc `0x581968...2efea9`; bsc `0x93c517...58aa5d`; bsc `0x956908...6a7607`; bsc `0x9cee40...b265a8`; bsc `0xaa599b...d33d2b`; bsc `0xe63c84...7693dc` | ⚠️ Unaudited |
| QMultiplexer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbd49a...ee9e5b` | ⚠️ Unaudited |
| QubitPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x33f938...eb8d05` | ⚠️ Unaudited |
| QubitPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5949b3...ef4a9c`; bsc `0x79907e...620489`; bsc `0xc107d0...a1748e` | ⚠️ Unaudited |
| RandomNumberGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2eb45a...71ecad` | ⚠️ Unaudited |
| safeSwapBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d36cb...9176b0` | ⚠️ Unaudited |
| SafeVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x0a9cda...7784d2`; bsc `0x65abd3...cd10ea`; bsc `0x8494d7...67426a`; bsc `0x87d1b1...8fba52`; bsc `0x8ddee8...adc577`; bsc `0xc260c8...25668d`; bsc `0xf8186e...d4ccf4` | ⚠️ Unaudited |
| SafeVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4aa7fa...482a71`; bsc `0x5a573e...3d8dbb` | ⚠️ Unaudited |
| SafeVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x64a9a6...5d1b80`; bsc `0x94dbc8...ccd86b` | ⚠️ Unaudited |
| SafeVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x816860...73b014`; bsc `0xe05f8f...a39f7e` | ⚠️ Unaudited |
| SortitionSumTreeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b3824...d77908` | ⚠️ Unaudited |
| StrategyBUNNY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x119d02...8c5f09`; bsc `0xc9e63e...590184` | ⚠️ Unaudited |
| StrategyBUNNY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x573924...4d50b7`; bsc `0xac380b...6ec359` | ⚠️ Unaudited |
| StrategyHelperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x154d80...520ece`; bsc `0x6d3a75...17be49`; bsc `0xa84c09...97a1a0`; bsc `0xc1d2d7...466d29`; bsc `0xf285aa...987307` | ⚠️ Unaudited |
| StrategyQBT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x21c9b7...80c984`; bsc `0x5021dc...a1fc21` | ⚠️ Unaudited |
| StrategyQBT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3d9dc1...e57dd3`; bsc `0xb67cc0...70f80d` | ⚠️ Unaudited |
| StrategyVBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x124080...073d25`; bsc `0xb980a3...b89be2` | ⚠️ Unaudited |
| TestFlipVaultV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x741e8a...f1e764` | ⚠️ Unaudited |
| TestFlipVaultV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9059a4...428ddb`; bsc `0xffa180...ed0c2f` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85c916...414cc3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3fb5a8...c12e7d`; bsc `0xc0091a...a6993e` | ⚠️ Unaudited |
| TripleSlopeModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0xb824c6...6c24c9`; bsc `0xd31f93...4b31b7`; bsc `0xe8188e...d4345e` | ⚠️ Unaudited |
| VaultBNBTester | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x31d369...defe97`; bsc `0x4daaf1...3816b7` | ⚠️ Unaudited |
| VaultBunny | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xaef1eb...bbbbaf`; bsc `0xb03758...b5d940` | ⚠️ Unaudited |
| VaultBunnyBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: bsc `0x017fd8...638c5a`; bsc `0x0cb448...eae378`; bsc `0x3c13ab...b27979`; bsc `0x4ef98a...423e8a`; bsc `0x4fba55...ee6157`; bsc `0x7188b1...efb0f3`; bsc `0xbecce1...449269`; bsc `0xc9c251...e8e7d9`; bsc `0xd7bdba...7f4f35`; bsc `0xf1b4ea...e59dad` | ⚠️ Unaudited |
| VaultBunnyBNB | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xa6c29a...783622` | ⚠️ Unaudited |
| VaultBunnyBNBLegacy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2c2084...1fa794`; bsc `0x69ff78...905cbc` | ⚠️ Unaudited |
| VaultBunnyBNBLegacy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5af361...c59f00` | ⚠️ Unaudited |
| VaultBunnyBNBTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4fd02a...b2afd3`; bsc `0x77fb75...8ac14f` | ⚠️ Unaudited |
| VaultBunnyMaximizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x317e66...64949e`; bsc `0x87627b...002ff9`; bsc `0x8df3e9...a3c46e`; bsc `0xc8e88d...957fd4` | ⚠️ Unaudited |
| VaultBunnyMaximizer | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xc004a3...667329` | ⚠️ Unaudited |
| VaultCakeToCake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x195313...3631d3`; bsc `0x272d42...a100f6`; bsc `0x466be9...349da7`; bsc `0x537a7c...9e354a`; bsc `0x6372c8...6b857f`; bsc `0x875556...597158` | ⚠️ Unaudited |
| VaultCompensation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x1e8d70...09d72c`; bsc `0x2ff46c...9aff33`; bsc `0x41fa6d...9550ca`; bsc `0x964de6...daa730` | ⚠️ Unaudited |
| VaultFlipToCake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 12 deployments: bsc `0x0dec5a...89ae8a`; bsc `0x1afa3b...406593`; bsc `0x391e8d...ca9f1e`; bsc `0x4a1fc0...48471a`; bsc `0x4ac7d1...20c139`; bsc `0x519422...9b4534`; bsc `0x6ee46a...8a2000`; bsc `0x7078b5...669de2`; bsc `0x8a8d6b...39b7b8`; bsc `0xc555e2...db0f20`; bsc `0xdf94b7...2d4afb`; bsc `0xe84895...ef1ce6` | ⚠️ Unaudited |
| VaultFlipToCake | core_logic | non_address_book | non_address_book_inventory (excluded) | 12 | bsc | n/a | 12 deployments: bsc `0x203ee2...f92cb1`; bsc `0x74fdc2...3416dd`; bsc `0x7d52a1...11a921`; bsc `0x7f0320...3e2344`; bsc `0x81fa6f...4f9551`; bsc `0xac2092...24eb39`; bsc `0xac7d40...8403fa`; bsc `0xbdd478...0cd702`; bsc `0xc1d9ea...306f77`; bsc `0xd22204...7bb0ad`; bsc `0xf92f12...2c61d7`; bsc `0xfeed0b...a11aac` | ⚠️ Unaudited |
| VaultFlipToCake | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x5d1dcb...c56831`; bsc `0x87dfcd...85293f`; bsc `0xaba9c9...9f3aa4` | ⚠️ Unaudited |
| VaultFlipToCakeLegacy | unknown | project_anchor | own_supporting | 1 | bsc | unit-381561 | 2 deployments: bsc `0x15241e...6506bf`; bsc `0xa5b8cd...538ff2` | ⚠️ Unaudited |
| VaultFlipToCakeLegacy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1adc1b...60ec05`; bsc `0x7e3c99...e6fbba` | ⚠️ Unaudited |
| VaultFlipToCakeLegacy | unknown | project_anchor | own_supporting | 4 | bsc | unit-381564 (4 proxies) | 5 deployments: bsc `0x3f1393...090bd5`; bsc `0x7c0c81...4bfd38`; bsc `0x92a0f7...a4975c`; bsc `0xcbd447...ad0058`; bsc `0xe07bda...ebd0cc` | ⚠️ Unaudited |
| VaultFlipToCakeLegacy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x41df17...fccc4f` | ⚠️ Unaudited |
| VaultFlipToCakeLegacy | unknown | project_anchor | own_supporting | 1 | bsc | unit-381563 | 2 deployments: bsc `0x63048d...763a14`; bsc `0x866fd0...e199d4` | ⚠️ Unaudited |
| VaultFlipToFlip | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x0d17e7...eb8eaa` | ⚠️ Unaudited |
| VaultFlipToFlip | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 11 deployments: bsc `0x14cfc6...b0f57a`; bsc `0x1ec31b...cce1af`; bsc `0x44f4e4...646473`; bsc `0x4a1be0...4a8274`; bsc `0x6b3ede...34cf52`; bsc `0x829388...05528c`; bsc `0x8a1f45...0e9c13`; bsc `0xa119d2...5feb72`; bsc `0xaa972c...2e15c6`; bsc `0xcbc6f8...ccbd1e`; bsc `0xd415e6...0838ea` | ⚠️ Unaudited |
| VaultFlipToFlip | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x1d5c98...c71186`; bsc `0x93546b...3df939`; bsc `0xe23969...4273dd` | ⚠️ Unaudited |
| VaultFlipToFlip | core_logic | non_address_book | non_address_book_inventory (excluded) | 6 | bsc | n/a | 6 deployments: bsc `0x285f79...bf1f1f`; bsc `0x633e53...71e77b`; bsc `0xa599d6...af00aa`; bsc `0xc341c6...b22ff6`; bsc `0xe0aca3...71ca62`; bsc `0xfdb7d4...70286c` | ⚠️ Unaudited |
| VaultFlipToFlipLegacy | unknown | project_anchor | own_supporting | 4 | bsc | unit-381560 (4 proxies) | 5 deployments: bsc `0x0137d8...7a792e`; bsc `0x138179...118210`; bsc `0x1b6e3d...507b99`; bsc `0x7eaaea...92e98a`; bsc `0xc1aae5...656ee6` | ⚠️ Unaudited |
| VaultFlipToFlipLegacy | unknown | project_anchor | own_supporting | 1 | bsc | unit-381559 | 2 deployments: bsc `0x06a980...b35c85`; bsc `0xa59efe...5a43e7` | ⚠️ Unaudited |
| VaultFlipToFlipLegacy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x283a84...552254` | ⚠️ Unaudited |
| VaultFlipToFlipLegacy | unknown | project_anchor | own_supporting | 1 | bsc | unit-381565 | 2 deployments: bsc `0x8816f0...1bd56f`; bsc `0xc0314b...ee5ef3` | ⚠️ Unaudited |
| VaultFlipToFlipLegacy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xe02bcf...c26032` | ⚠️ Unaudited |
| VaultFlipToQBT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0d9966...7df40c`; bsc `0x770252...ac6cec` | ⚠️ Unaudited |
| VaultFlipToQBT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xdccd72...1da62a`; bsc `0xe6b3fb...fa5a8f` | ⚠️ Unaudited |
| VaultFlipToQBT_Legacy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x68917b...24ba7c`; bsc `0x6a028c...14bd04` | ⚠️ Unaudited |
| VaultMND | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2eedbf...7b1e8d` | ⚠️ Unaudited |
| VaultQBTBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3e81d3...803f45`; bsc `0xe8174e...06049d` | ⚠️ Unaudited |
| VaultQBTBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x71f118...6549b0`; bsc `0xd1ad19...9b6c39` | ⚠️ Unaudited |
| VaultQubit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x139954...f18be7`; bsc `0x76e603...17d108`; bsc `0x856513...aa9914`; bsc `0x984cba...f7a1b7` | ⚠️ Unaudited |
| VaultQubit | core_logic | non_address_book | non_address_book_inventory (excluded) | 8 | bsc | n/a | 8 deployments: bsc `0x401c22...e38c9a`; bsc `0x4b107b...0c5729`; bsc `0x4fc359...67b2a6`; bsc `0x53fd20...6f3403`; bsc `0x67c42b...494e46`; bsc `0xb9cf0d...0d6d74`; bsc `0xde80ce...82eea3`; bsc `0xee3ee0...2aced6` | ⚠️ Unaudited |
| VaultQubit | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6935d1...40c327`; bsc `0x9150bd...c2fcae` | ⚠️ Unaudited |
| VaultQubitBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x12c624...21d053` | ⚠️ Unaudited |
| VaultQubitBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x6ebc17...a6306c`; bsc `0x7a62ec...61384b`; bsc `0x946d07...a6d0a0`; bsc `0xa95be1...a1790c`; bsc `0xf57a9b...66ae9b` | ⚠️ Unaudited |
| VaultQubitCompensation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x71715e...9a212e` | ⚠️ Unaudited |
| VaultQubitCompensation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd0a81...cf604b` | ⚠️ Unaudited |
| VaultRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x31e541...d92546`; bsc `0x399621...f625eb`; bsc `0x56d921...dae9ee`; bsc `0x74a96e...ae8451`; bsc `0x85122f...d8b1c4`; bsc `0xd63cb8...9ce1a9`; bsc `0xe326b1...fb5b77`; bsc `0xf77126...cc5e01` | ⚠️ Unaudited |
| VaultRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x34d3ff...321c03`; bsc `0x68243c...8112d2` | ⚠️ Unaudited |
| VaultRelayInternal | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x067ed1...0f33d5`; bsc `0xa73f13...f00189`; bsc `0xc12fca...12e121`; bsc `0xd98b6c...fb8aa9` | ⚠️ Unaudited |
| VaultRelayInternal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x88d75e...8f1b8f`; bsc `0xb37076...ca60aa` | ⚠️ Unaudited |
| VaultVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | bsc | n/a | 6 deployments: bsc `0x0243a2...38a67a`; bsc `0x0ba950...133ffc`; bsc `0x22af73...2fd250`; bsc `0x52cfa1...eb38a3`; bsc `0x549d2e...954f6a`; bsc `0x5ccc0b...13e4ed` | ⚠️ Unaudited |
| VaultVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0a9fef...6de73b`; bsc `0x583819...ceacd8` | ⚠️ Unaudited |
| VaultVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 19 deployments: bsc `0x0c236a...28e46e`; bsc `0x0f1638...df3ca6`; bsc `0x1bd22b...62bc10`; bsc `0x4520cc...8b3205`; bsc `0x576f90...b98dfc`; bsc `0x6ada6b...16b6de`; bsc `0x82a88d...9b4b27`; bsc `0x838edd...8a74ae`; bsc `0x899860...814b88`; bsc `0x9fec0e...a25495`; bsc `0xa1da8e...fb2093`; bsc `0xb3383d...8b1dc8`; bsc `0xbc5fc6...a1516b`; bsc `0xd38e80...c5ddf7`; bsc `0xd684df...1acc1b`; bsc `0xd95343...196df0`; bsc `0xde3f34...8c08d6`; bsc `0xe4f115...b2ac4c`; bsc `0xfbfbed...fb97e2` | ⚠️ Unaudited |
| VaultVenus | core_logic | non_address_book | non_address_book_inventory (excluded) | 5 | bsc | n/a | 5 deployments: bsc `0x7cd22b...8ed03c`; bsc `0x7d2de1...7b3ee7`; bsc `0xa08a26...e3a208`; bsc `0xa55544...fcb4de`; bsc `0xf70e33...e8de85` | ⚠️ Unaudited |
| VaultVenusBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x26c61f...7bceef`; bsc `0x3eb1c6...111859`; bsc `0x50f039...6523ee`; bsc `0x5d6f64...e9e7ba`; bsc `0x8123ca...8f0da5` | ⚠️ Unaudited |
| VaultVenusBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x31c16d...940e3f` | ⚠️ Unaudited |
| VaultVenusBridgeOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07d97a...c90546` | ⚠️ Unaudited |
| VaultVenusBridgeOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x500f1f...e8ea71`; bsc `0x5a4ed6...136701` | ⚠️ Unaudited |
| VenusBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73f34e...70fed6` | ⚠️ Unaudited |
| VenusBridgeTester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf22ec4...fcfe03` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0456c6...8b0d77`; bsc `0x3d2046...54892d` | ⚠️ Unaudited |
| ZapBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x281313...8ae1be`; bsc `0x2e113a...d5bba0`; bsc `0x634456...3dd26b`; bsc `0x9ef161...773734`; bsc `0xacd576...878c16`; bsc `0xdc6fc3...d29de0` | ⚠️ Unaudited |
| ZapBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x341451...1693ba`; bsc `0xcbd5cf...967cf6` | ⚠️ Unaudited |
| ZapBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x97964e...238606`; bsc `0xdc2bbb...586a0c` | ⚠️ Unaudited |
| ZapBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xcbec8e...3574b1`; bsc `0xf4c17e...7913d5` | ⚠️ Unaudited |
| ZapPCS | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1d9aa7...b3cfb4`; bsc `0xe6d6c4...59d2bb` | ⚠️ Unaudited |
| ZapPCS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xa17917...466199`; bsc `0xb6b01e...db3a90` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0162a6...85270a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x028c5d...12a9b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f7483...54411c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ecb04...fb8163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x271cd0...3497aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x343511...e46a6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47026f...ca1711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48e198...216d33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7aaba3...74759b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7cb11e...7f752b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ef838...23e974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a9729...631144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e46ec...22598f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c1ecc...38caa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d2fa7...9ae849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa00c8b...04ab99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0744b...561f87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4efbc...5a3efd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6dc01...7579c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad6908...d83e90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xafa322...e48a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0a700...fd8668` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc04fc3...db8ed2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce157b...f85413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce1cf4...4f9713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddc9b8...ab801f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdefd3e...b95da6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0b615...1ef659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb3fb8...1abd40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec8563...5bc7f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf39f63...678c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7c88c...718cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfafd83...56b65d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [[HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf](https://github.com/PancakeBunny-finance/Bunny/blob/main/audits/%5BHAECHI%20AUDIT%5D%20PancakeBunny%20Smart%20Contract%20Audit%20Report%20ver%202.0.pdf) | unknown | Audit | 2021-01 | stale | Direct | n/a | matched | 4 | 1 | 0 | 3 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2752] [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf | BunnyBNBPool | own contract | BunnyBNBPool (selected) `0xc80ea5...d66e0d` — deployed 2020-11-16 13:52:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf | BunnyMinter | unmatched — not counted | — | — | no |
| [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf | BunnyPool | own contract | BunnyPool (selected) `0xcadc8c...d7889d` — deployed 2020-11-16 17:22:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf | BunnyToken | own contract | BunnyToken (selected) `0xc9849e...a11a51` — deployed 2020-10-30 16:09:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf | VaultCakeToCake | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0xedfcb7...da28ed` — deployed 2020-12-23 12:01:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf | VaultFlipToCake | unmatched — not counted | — | — | no |
| [HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf | VaultFlipToFlip | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x15241e...6506bf` | VaultFlipToCakeLegacy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3f1393...090bd5` | VaultFlipToCakeLegacy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x63048d...763a14` | VaultFlipToCakeLegacy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0137d8...7a792e` | VaultFlipToFlipLegacy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x06a980...b35c85` | VaultFlipToFlipLegacy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8816f0...1bd56f` | VaultFlipToFlipLegacy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 133 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 35 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=4

Fork inheritance lineage and inherited audits are included when available.
