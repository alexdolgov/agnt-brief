# Agentic Audit Brief: Bancor

## Export Authority

- Production state: **published scope**
- Raw selected rows: 34 across 7 audit(s)
- Eligible audit results: 11 (7 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DEAD - TVL dropped 19.2% over 90 days

## Project Overview

- Project: Bancor (`bancor`)
- Website: [https://app.bancor.network/](https://app.bancor.network/)
- Lifecycle: dead (Tier 0, 99.1% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 174 unique implementations (476 raw deployments)
- Coverage basis: 15/17 confirmed own live verified implementations (88.2%); conservative 88.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $22,652,984.00
- On-chain TVL (included contracts): $37,484,755.51
- TVL by chain: Ethereum $37,484,755.51

## Project Description

This brief describes the observed EVM deployment and audit surface for Bancor. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 29 contract row(s) across ethereum. Structural roles: 21 unclassified, 7 core, 1 supporting. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 29
- Structural roles: unclassified (21), core (7), supporting (1)
- Contract kinds: contract (29)
- Detected standards: ownable (5), erc20 (3), erc1967proxy (2), erc20permit (1)
- Frameworks: openzeppelin (8), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BancorGovernance (`0x892f48...5d00e4`, chain 1)
- BancorGovernance (`0xebfafc...f82eb2`, chain 1)
- BancorV1Migration (`0xd761d5...c3cc96`, chain 1)
- DSToken (`0x48fb25...387f94`, chain 1)
- PoolToken (`0xab05cf...68e344`, chain 1)
- SmartToken (`0x1f573d...a7ff1c`, chain 1)
- TransparentUpgradeableProxyImmutable (`0x649765...2bc373`, chain 1)
- TransparentUpgradeableProxyImmutable (`0xeef417...9dd4fb`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 29; live-surface rows included: 29 (29 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/19 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 15/17 (88.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 157 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 20
- Confirmed-live implementations: 17 of 174 unique; 157 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 15/95
- Verified + Unaudited implementations: 80
- Verified by bytecode match: 0
- Unverified implementations: 79
- Unique implementations: 174
- Raw deployments: 476
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): $1,640,762.84
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 15 match-unverified
- Tier 1 coverage: 82.4% (ChainSecurity, ConsenSys Diligence, OpenZeppelin)
- Note: This protocol is classified as [dead]. ASD of $1,640,762.84 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 13 | 13.7% | 2022-09 |
| OpenZeppelin | Tier 1 | 12 | 12.6% | 2022-08 |
| PeckShield | Tier 2 | 5 | 5.3% | 2022-04 |
| CertiK | Tier 2 | 1 | 1.1% | 2020-10 |
| Consensys Diligence | Tier 1 | 1 | 1.1% | 2017-05 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SmartToken | unknown | project_anchor | own_supporting | 0 | ethereum | n/a | 17 deployments: ethereum `0x1b51a2...2ba7c7`; ethereum `0x1f573d...a7ff1c`; ethereum `0x43e879...773dc8`; ethereum `0x4bf2f1...dd48d8`; ethereum `0x6e7c0c...8c117f`; ethereum `0x6fe08a...17fe52`; ethereum `0x718618...09119a`; ethereum `0x970d48...c0c4dd`; ethereum `0x99ebd3...67b340`; ethereum `0xb1c62b...668c96`; ethereum `0xb1cd6e...4a5533`; ethereum `0xcba34b...5239c0`; ethereum `0xdde116...f32ae7`; ethereum `0xea45c7...a10cb0`; ethereum `0xee01b3...8e6e72`; ethereum `0xf132d2...cfc8dc`; ethereum `0xf4ef10...1e0668` | ✅ Audited |
| MasterVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-228896 | 2 deployments: ethereum `0x649765...2bc373`; ethereum `0xf3b685...f10144` | ✅ Audited |
| ExternalRewardsVault | core_logic | project_anchor | own_supporting | 2 | ethereum | unit-228888 | 4 deployments: ethereum `0x2a2a2b...a631e1`; ethereum `0x30cc28...c23b1e`; ethereum `0xea4d66...61c27c`; ethereum `0xfd3166...2cad57` | ✅ Audited |
| AutoCompoundingRewards | unknown | project_anchor | own_supporting | 1 | ethereum | unit-228891 | `0x036f8b...6f6cdc` | ✅ Audited |
| BancorGovernance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228882 | `0x892f48...5d00e4` | ✅ Audited |
| BancorNetwork | unknown | project_anchor | own_supporting | 1 | ethereum | unit-228887 | 2 deployments: ethereum `0x2f1475...1638a3`; ethereum `0xeef417...9dd4fb` | ✅ Audited |
| BancorNetworkInfo | periphery | project_anchor | own_supporting | 1 | ethereum | unit-228898 | 2 deployments: ethereum `0x8e303d...d6e760`; ethereum `0xfd47c7...66ae7b` | ✅ Audited |
| BancorPortal | unknown | project_anchor | own_supporting | 1 | ethereum | unit-228894 | 2 deployments: ethereum `0x9f292c...e133d5`; ethereum `0xe7e533...d274d4` | ✅ Audited |
| BancorV1Migration | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-228884 | `0xd761d5...c3cc96` | ✅ Audited |
| BNTPool | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-228897 | 2 deployments: ethereum `0x02651e...95eaca`; ethereum `0xfb07a6...b1ffa3` | ✅ Audited |
| NetworkSettings | unknown | project_anchor | own_supporting | 1 | ethereum | unit-228890 | 2 deployments: ethereum `0x51a6d0...1cebd1`; ethereum `0x83e181...09b14f` | ✅ Audited |
| PendingWithdrawals | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-228892 | 2 deployments: ethereum `0x7f0506...bb92ce`; ethereum `0x857eb0...ba9b8a` | ✅ Audited |
| PoolMigrator | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-228889 | 2 deployments: ethereum `0x330ee7...4d198d`; ethereum `0x97cec0...e4a191` | ✅ Audited |
| PoolToken | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-228883 | `0xab05cf...68e344` | ✅ Audited |
| StandardRewards | unknown | project_anchor | own_supporting | 1 | ethereum | unit-228893 | 2 deployments: ethereum `0xb0b958...00f372`; ethereum `0xdfe331...881f0d` | ✅ Audited |

### ⚠️ Verified + Unaudited (80)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DSToken | unknown | project_anchor | own_supporting | 0 | ethereum | n/a | 4 deployments: ethereum `0x247a30...06aeee`; ethereum `0x48fb25...387f94`; ethereum `0xdbd62d...a54e20`; ethereum `0xdce156...fbaf17` | ⚠️ Unaudited |
| TokenHolder | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd1d846...6b9b55`; ethereum `0xebcc95...63f491` | ⚠️ Unaudited |
| AirDropper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x69532f...3f20bf`; ethereum `0xbe8ea1...5c9499` | ⚠️ Unaudited |
| BancorArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x08da38...65461c`; ethereum `0x2dd6b6...da75a7`; ethereum `0x2fde9e...85d1b2`; ethereum `0x577552...ed5df7`; ethereum `0x68cd59...3fb810`; ethereum `0x6dbe10...74e912`; ethereum `0x770abf...d3c343`; ethereum `0xb04e45...1a1ee2`; ethereum `0xbd19f6...5d7e51`; ethereum `0xd80a40...1b0ada`; ethereum `0xdbcb8a...9af34a`; ethereum `0xe9a8e0...a0902d` | ⚠️ Unaudited |
| BancorBuyer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77a77e...34d924` | ⚠️ Unaudited |
| BancorChanger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb72a0f...270468`; ethereum `0xca83bd...629ff4` | ⚠️ Unaudited |
| BancorConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 27 deployments: ethereum `0x0301db...47ccf7`; ethereum `0x0f20ad...aea19b`; ethereum `0x12c8c7...e5ed46`; ethereum `0x43fd2b...de205d`; ethereum `0x56af6b...d2f913`; ethereum `0x578f3c...b3e2d8`; ethereum `0x62c37c...caa769`; ethereum `0x6427b5...df5f28`; ethereum `0x665f41...256f0e`; ethereum `0x674391...b5e692`; ethereum `0x78c212...098840`; ethereum `0x803530...a42c59`; ethereum `0x866e79...3d5b91`; ethereum `0xa3a89d...ff5bad`; ethereum `0xabf66d...83f5e8`; ethereum `0xb626a5...1d1c78`; ethereum `0xc2a34d...bdc3b6`; ethereum `0xc4628a...144ade`; ethereum `0xc6725a...b9db29`; ethereum `0xd3ec78...c743ba`; ethereum `0xd8132c...d7c495`; ethereum `0xd8c2ca...fbdde9`; ethereum `0xdc0aeb...c356c0`; ethereum `0xdc2f2b...d30109`; ethereum `0xe21940...b3ea77`; ethereum `0xec041f...7af8b7`; ethereum `0xf8b211...58ce35` | ⚠️ Unaudited |
| BancorConverterExtensions | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf46002...9012f7` | ⚠️ Unaudited |
| BancorConverterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x03f667...81694d`; ethereum `0x3cc4a2...a8042e`; ethereum `0x4f2ed3...24fde7`; ethereum `0x52d7c7...f1ffa2`; ethereum `0x5ed8c0...bb802b`; ethereum `0x7d3f86...c9d3dc`; ethereum `0x99d8fb...208232`; ethereum `0xa75f62...511abe`; ethereum `0xa96a30...1f7448`; ethereum `0xbef6a4...04d259`; ethereum `0xbf1ad2...2f0851`; ethereum `0xce0305...995fa5`; ethereum `0xda96de...8409a0` | ⚠️ Unaudited |
| BancorConverterRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x85e27a...8ab847`; ethereum `0x9876b4...58c3d8`; ethereum `0x9b44f7...c41a81`; ethereum `0xc1933e...cd92f5`; ethereum `0xce0247...1f12ea`; ethereum `0xf6e2d7...a4c518`; ethereum `0xf84b33...74495d` | ⚠️ Unaudited |
| BancorConverterRegistryData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2bf0b9...c3a86b`; ethereum `0xe500ad...39b56f` | ⚠️ Unaudited |
| BancorConverterUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x20412b...bf6148`; ethereum `0xaebf10...7c3d5c`; ethereum `0xc724bc...a6268f`; ethereum `0xe727b1...a3429f`; ethereum `0xfae75b...984bd5` | ⚠️ Unaudited |
| BancorFormula | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x04cb6f...fe1e1e`; ethereum `0x31af42...669724`; ethereum `0x524619...78afc0`; ethereum `0x55f09a...4f7398`; ethereum `0x63bc9a...2af385`; ethereum `0x6f7df4...da4fc7`; ethereum `0x71fbcf...748759`; ethereum `0x8b5db7...be62e2`; ethereum `0x8d10c0...395b98`; ethereum `0xa04989...4ae73a`; ethereum `0xd288fb...1a9603`; ethereum `0xdeecd5...e791d0`; ethereum `0xe39b6f...34bc1c`; ethereum `0xe6095e...96c58e`; ethereum `0xffd2de...454742` | ⚠️ Unaudited |
| BancorFormulaProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b0c11...3af6f2` | ⚠️ Unaudited |
| BancorGasPriceLimit | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7fd539...4daa6e`; ethereum `0xafb06c...b99590` | ⚠️ Unaudited |
| BancorGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a68a6...83cd0a` | ⚠️ Unaudited |
| BancorGovernance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228885 | `0xebfafc...f82eb2` | ⚠️ Unaudited |
| BancorNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x00bfa0...ca8e63`; ethereum `0x0e936b...f4de4a`; ethereum `0x2f9ec3...23ccb0`; ethereum `0x3006eb...2cfc75`; ethereum `0x3ab656...04eead`; ethereum `0x568e7c...3e5e07`; ethereum `0x5f5805...3f667f`; ethereum `0x751a3e...a10255`; ethereum `0x7a84b0...07b19e`; ethereum `0x835ebb...fc45c1`; ethereum `0x8dfeb8...fea9f7`; ethereum `0x923cab...7d3a5f`; ethereum `0x955a85...59e1e6`; ethereum `0xa21e1c...d8f4ea`; ethereum `0xe0cb1b...ffa4fb`; ethereum `0xe2a277...dcd1f7`; ethereum `0xeee90e...14bfc0`; ethereum `0xf20b9e...39126a` | ⚠️ Unaudited |
| BancorNetworkInfo | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6e7e7...7cac13` | ⚠️ Unaudited |
| BancorNetworkPathFinder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x22cb7c...88daef`; ethereum `0x41172c...bf9578`; ethereum `0x6ae013...3f79d8`; ethereum `0x6f0cd8...b72861`; ethereum `0x9afb6f...10d137`; ethereum `0xa47228...dfa2b5`; ethereum `0xa8c415...bb37bb`; ethereum `0xb290f5...2ec7ba`; ethereum `0xb9e996...272a92` | ⚠️ Unaudited |
| BancorPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe18bd2...1f88e2`; ethereum `0xf5de92...3d2b0f` | ⚠️ Unaudited |
| BancorPriceFloor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec6a7...268549` | ⚠️ Unaudited |
| BancorQuickConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xcf1cc6...49139b`; ethereum `0xf87a7e...dd38b1` | ⚠️ Unaudited |
| BancorX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x39198f...e321f3`; ethereum `0x3fdf3b...c83749`; ethereum `0x57928a...8f1f73`; ethereum `0xc326d5...754816`; ethereum `0xe7abef...da1bde`; ethereum `0xeaf3ce...6069c1`; ethereum `0xeddf6e...eda30b` | ⚠️ Unaudited |
| BancorXHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x984384...b5ba4b` | ⚠️ Unaudited |
| BNTPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9810e2...c07bd8`; ethereum `0xcc06b5...22af65` | ⚠️ Unaudited |
| CarbonBatcher | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0199f3...4b7d4e`; ethereum `0x70ab82...25842a` | ⚠️ Unaudited |
| CarbonController | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 8 deployments: ethereum `0x16b9b6...79d72d`; ethereum `0x1a3122...c218cf`; ethereum `0x1e0804...32bf2c`; ethereum `0x21f02a...c086ee`; ethereum `0x5ec3b3...4e5b20`; ethereum `0x6db6ee...8b12c1`; ethereum `0xc537e8...ea45e1`; ethereum `0xd59bca...063ff8` | ⚠️ Unaudited |
| CarbonPOL | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x779b3b...4ab123`; ethereum `0xd06146...2bef46` | ⚠️ Unaudited |
| CarbonPOL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x945ac6...287105` | ⚠️ Unaudited |
| CarbonVortex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2c0fa8...923502`; ethereum `0x55effb...f472ad`; ethereum `0x676b91...ce95c0`; ethereum `0x727170...f0fb9e` | ⚠️ Unaudited |
| CarbonVortex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xba7d15...3c8f84`; ethereum `0xd241a7...be23ca` | ⚠️ Unaudited |
| CarbonVortex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd053dc...d79801` | ⚠️ Unaudited |
| CheckpointStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8a2fb...b87b32` | ⚠️ Unaudited |
| ContractFeatures | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x563172...6ce699` | ⚠️ Unaudited |
| ContractRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x7148b1...e395e6`; ethereum `0x95fee9...91553b`; ethereum `0xa3bf8e...718e6a`; ethereum `0xa9d755...622ade`; ethereum `0xc74be0...49d0a4`; ethereum `0xd19970...8738b3`; ethereum `0xf078b4...9b88d6` | ⚠️ Unaudited |
| ConversionPathFinder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x33f772...85d323`; ethereum `0x3663d6...51fcc3`; ethereum `0xa48e64...bbe489` | ⚠️ Unaudited |
| ConverterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x4ade0e...8ea269`; ethereum `0x5c58ac...0a03e0`; ethereum `0x9afb9d...4dcb25`; ethereum `0xc9cd0b...2eb348` | ⚠️ Unaudited |
| ConverterRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x06915f...7c3c6d`; ethereum `0x3b3bf1...f51e55`; ethereum `0xc0205e...a60f19`; ethereum `0xdbe6a3...a245c9`; ethereum `0xeb5378...296ca9` | ⚠️ Unaudited |
| ConverterUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x430626...6e0f31`; ethereum `0x7dfb51...c87410`; ethereum `0x92f18a...67d724`; ethereum `0x9eed81...3ac742`; ethereum `0xcff01c...8be486` | ⚠️ Unaudited |
| CrowdsaleController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbc797...f89710` | ⚠️ Unaudited |
| DADBridgeWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x23cdd4...52efc8`; ethereum `0x62a65d...444557` | ⚠️ Unaudited |
| EtherToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc08294...2ce315`; ethereum `0xd76b5c...b746ae` | ⚠️ Unaudited |
| FeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4610fc...195445` | ⚠️ Unaudited |
| FixedSupplyUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x808991...aaa58d`; ethereum `0x92c79b...8acc08` | ⚠️ Unaudited |
| LiquidityPoolV1Converter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x1c378a...d38d1a`; ethereum `0x271a2c...b4f5bf`; ethereum `0x427250...b78b94`; ethereum `0x7026dd...32ce78`; ethereum `0x74bc8f...b65efc`; ethereum `0x841a5c...3f5998`; ethereum `0x8e2491...635143`; ethereum `0xac621a...0f6b08`; ethereum `0xb59382...ea125c`; ethereum `0xc3a2fa...2104e5` | ⚠️ Unaudited |
| LiquidityPoolV1ConverterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x273d13...6b2a2d`; ethereum `0x2b6d1d...213f55`; ethereum `0x363923...8f664c`; ethereum `0x39b9ed...3418fd`; ethereum `0x3e2188...247893`; ethereum `0x554e32...b07d15`; ethereum `0xb09e8c...f4a042`; ethereum `0xc7b626...75d679`; ethereum `0xc85c58...0f3d4e`; ethereum `0xd282fe...46d0dc` | ⚠️ Unaudited |
| LiquidityPoolV2Converter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0c06d6...2ea2af`; ethereum `0x52d43f...acdc95`; ethereum `0x58fe3e...801fa6`; ethereum `0x61bbc2...40a0f3`; ethereum `0x802c95...ca3c20`; ethereum `0x992321...396361`; ethereum `0x9deee3...bb8b94`; ethereum `0xeb771c...927758` | ⚠️ Unaudited |
| LiquidityPoolV2ConverterAnchorFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e37e1...6a12ec` | ⚠️ Unaudited |
| LiquidityPoolV2ConverterCustomFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xcbefd9...c7b098`; ethereum `0xe88a9a...42ef5e` | ⚠️ Unaudited |
| LiquidityPoolV2ConverterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0d2d64...4b868a`; ethereum `0x1acb35...1fa59a`; ethereum `0x2f6bff...406fb7`; ethereum `0x6a41ce...80e7be`; ethereum `0x6cd352...a6f3dd`; ethereum `0x8164f8...4f6ed3`; ethereum `0xacff89...bf00a5`; ethereum `0xb68c5d...fa3bfe` | ⚠️ Unaudited |
| LiquidityProtection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 19 deployments: ethereum `0x086e10...0ecdd6`; ethereum `0x135742...494e99`; ethereum `0x14d074...8ccfd5`; ethereum `0x26c57e...179903`; ethereum `0x2966a1...fc1ef6`; ethereum `0x42743f...816f90`; ethereum `0x49d689...f9c051`; ethereum `0x53f36c...4ace88`; ethereum `0x54c75f...b84f65`; ethereum `0x633088...2b311a`; ethereum `0x64f21d...97f176`; ethereum `0x843bd7...65d8e6`; ethereum `0x853c2d...07220e`; ethereum `0x85cbbb...9001e5`; ethereum `0x9ab934...601bcf`; ethereum `0xc9d9dc...93c298`; ethereum `0xddc05a...e4f5fb`; ethereum `0xeead39...8f3c0c`; ethereum `0xfa6711...5cb220` | ⚠️ Unaudited |
| LiquidityProtectionSettings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd444ec...1d7da9` | ⚠️ Unaudited |
| LiquidityProtectionStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5fab5...3cfb55` | ⚠️ Unaudited |
| LiquidityProtectionSystemStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4c563...b87131` | ⚠️ Unaudited |
| LiquidTokenConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x1b5ef5...3e27fe`; ethereum `0x23f351...b808b0`; ethereum `0x5936a8...42402b`; ethereum `0x7fa080...c77cf7`; ethereum `0x8f535c...ee822f`; ethereum `0xddfcee...0b82b3`; ethereum `0xe0f510...67c281`; ethereum `0xe24b63...b5bc72`; ethereum `0xf51fa5...57f2cf` | ⚠️ Unaudited |
| LiquidTokenConverterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x2358ae...f46144`; ethereum `0x280ce5...7af27d`; ethereum `0x9f7206...15993b`; ethereum `0xa0005a...5a80f8`; ethereum `0xbb18cd...438172`; ethereum `0xcd9c22...921c83`; ethereum `0xce0ed5...d18edb`; ethereum `0xde11d6...259552`; ethereum `0xf68f0e...2778a5` | ⚠️ Unaudited |
| MultiSigWallet | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 17 deployments: ethereum `0x589411...4e4658`; ethereum `0x6d3bf5...4c8146`; ethereum `0x79e7cc...10dd26`; ethereum `0x7af136...0393ee`; ethereum `0x84af4a...55df19`; ethereum `0x8c4b31...3aecfb`; ethereum `0x9d0357...7f3010`; ethereum `0xad0483...d24036`; ethereum `0xb43c50...737a88`; ethereum `0xb7f230...cf341c`; ethereum `0xc39e56...86051d`; ethereum `0xc7a965...070acc`; ethereum `0xc9eaa9...dc0f31`; ethereum `0xcc1aac...f9db75`; ethereum `0xd046ee...36e177`; ethereum `0xd498c8...06f5b8`; ethereum `0xe2b1b8...d329cd` | ⚠️ Unaudited |
| NetworkSettings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x59d037...24e0a2`; ethereum `0x68e4f8...4ecd96`; ethereum `0x88d031...1e48ca` | ⚠️ Unaudited |
| PendingWithdrawals | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0074f8...145f4a`; ethereum `0x5f8347...bb6acb`; ethereum `0xf59fd6...96958f` | ⚠️ Unaudited |
| PoolCollection | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x05e29f...c15bb8`; ethereum `0x395ed9...9d664b`; ethereum `0x5ce512...13a3d0`; ethereum `0x6f9124...9cb714`; ethereum `0xad3339...b813a7`; ethereum `0xb67d56...564c6c`; ethereum `0xb8d803...61da69`; ethereum `0xd2a572...d51558`; ethereum `0xd982e0...f642b4`; ethereum `0xde1b3c...d883e4`; ethereum `0xec9596...f261b3`; ethereum `0xf506b9...8f7ec7` | ⚠️ Unaudited |
| PoolMigrator | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1a1b00...66ee69`; ethereum `0x59340f...8a017d`; ethereum `0x85aa62...1d951d`; ethereum `0xc1c7ca...846219` | ⚠️ Unaudited |
| PoolTokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9e9129...8d9d5f`; ethereum `0xab4a0b...1f7108` | ⚠️ Unaudited |
| PoolTokensContainer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bfa9a...325630` | ⚠️ Unaudited |
| PriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd32c9a...29f8a1`; ethereum `0xea6f6d...50c826` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x059d3d...2cf9a1`; ethereum `0x12388c...d118cb`; ethereum `0x642879...2f0034` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x035867...6696a7`; ethereum `0x318fea...eb3e67`; ethereum `0x457fe4...36859f`; ethereum `0x4b9069...5c9841`; ethereum `0x5dafb3...b3080b`; ethereum `0xb443de...90dfce`; ethereum `0xe4f2a9...2931e6`; ethereum `0xeb69bd...1f2f2b` | ⚠️ Unaudited |
| StakingRewardsClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6248e4...88af58` | ⚠️ Unaudited |
| StakingRewardsStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6b0f32...0f9614`; ethereum `0x891aff...fb5693` | ⚠️ Unaudited |
| StandardPoolConverter | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x55069d...27f6e6`; ethereum `0x5ba02e...30eb1a` | ⚠️ Unaudited |
| StandardPoolConverterFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xbc4a79...8126e6`; ethereum `0xdbc3c6...8fa9f2`; ethereum `0xff7015...eb9f3d` | ⚠️ Unaudited |
| StandardRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9c0b29...78320d`; ethereum `0xa2647a...8a1947`; ethereum `0xe9f3bb...7a4b53` | ⚠️ Unaudited |
| TokenGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0887ae...f20113`; ethereum `0x43ec4d...8aca35`; ethereum `0xa489c2...afc244`; ethereum `0xce1462...07ef94` | ⚠️ Unaudited |
| TransparentUpgradeableProxyImmutable | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x41eeba...9488cb`; ethereum `0x9a1deb...a2296d` | ⚠️ Unaudited |
| Utils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c7b0f...40adfc` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60917e...2dadc4` | ⚠️ Unaudited |
| VortexBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2f87b1...0f1142`; ethereum `0x8843f6...976748` | ⚠️ Unaudited |
| Voucher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3660f0...8f554e`; ethereum `0x460cb0...109d0a` | ⚠️ Unaudited |
| Voucher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6b2f9...953997` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5b87c...3124fe` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (79)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06096d...02c6ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x083782...37745b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091035...ab083f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e4e83...21355b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x103607...25c031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x136593...412b89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x176707...9dde6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1894d6...e9f9ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b5674...7263d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20bced...f4d8d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b6563...b98bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bc345...535bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ca576...1d3ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35db38...f97a39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aafb6...874d13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3af2bd...d6ca55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c497b...b30ea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ce6eb...21d2f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3df58f...6b7f19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40eec5...316953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43f604...0cb345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46cce2...64225f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b506f...879b3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d47d...cf1631` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b828a...997453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x609f13...315f1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x627d32...7093cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d883...f6c5ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62f233...284231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63b95a...9baa68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69b1d7...1bbe82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dd1a5...1c179c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e0dfd...ef7755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f904b...b819c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x700ac7...363009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x709032...03975b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x741b92...d7ef78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ae27c...4e1f44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8006ee...e05a5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x840321...36610c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4e11...b988f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d634a...d3e639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ed9a1...404010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f7d6f...90e3db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x924fa6...ae3dbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9461fb...76e466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x947766...892d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97b155...64b103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f2833...5f6eb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5c10d...72b398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6cf31...a28c16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa93321...fd4c9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafe57d...a19cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb005d0...68a52f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb59abc...e40dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc12aa...db57d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8c1af...433a9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc972d0...b651fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca0907...6e9142` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbd283...626694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcce7a4...5ba322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccf9c9...d80bf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd54fa...7467db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdbb8b...178cb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd38b75...453a70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd523d8...1b1a12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd59530...4dc512` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd72cf0...559ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc7040...9646be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb1734...77406c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef2d93...e28358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf240ea...168c4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3ae8d...707252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3d889...81e3a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4776f...102654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf68f21...1ec59b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf87714...c2bece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc6638...894a9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeda93...a64ef1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-BancorV3-v1.0.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/PeckShield-Audit-Report-BancorV3-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | n/a | matched | 4 | 4 | 0 | 2 | n/a |
| [OpenZeppelin-V3-Audit-Report.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/OpenZeppelin-V3-Audit-Report.pdf) | OpenZeppelin | Audit | 2022-06 | stale | Direct | contract_name | matched | 12 | 10 | 0 | 41 | high |
| [OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf) | OpenZeppelin | Audit | 2022-08 | stale | Direct | n/a | matched | 2 | 2 | 0 | 7 | n/a |
| [ChainSecurity-V3-Audit-Report.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/ChainSecurity-V3-Audit-Report.pdf) | ChainSecurity | Audit | 2022-09 | stale | Direct | n/a | matched | 13 | 11 | 0 | 4 | n/a |
| [drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view](https://drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view?usp=sharing) | PeckShield | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view](https://drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view?usp=sharing) | PeckShield | Audit | 2020-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view](https://drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view?usp=sharing) | CertiK | Audit | 2020-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view](https://drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view?usp=sharing) | CertiK | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Bancor_smartcontract_halborn_report_V1.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Bancor_smartcontract_halborn_report_V1.pdf) | Halborn | Audit | 2020-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view](https://drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view?usp=sharing) | Halborn | Audit | 2020-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory)](https://gist.github.com/Arachnid/c65fd1bd61a8e0294aef95a4808edc78) | Consensys Diligence | Audit | 2017-05 | stale | Direct | n/a | matched | 1 | 0 | 0 | 19 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4264] PeckShield-Audit-Report-BancorV3-v1.0.pdf — matched: No reason recorded
- [4265] OpenZeppelin-V3-Audit-Report.pdf — matched: All contracts listed in the Scope section of the audit report were extracted. The audit date is the 'Fixes Finalized' date (2022-06-02) as the report completion date.
- [4266] OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf — matched: No reason recorded
- [4267] ChainSecurity-V3-Audit-Report.pdf — matched: No reason recorded
- [15068] drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view — no match: The report explicitly lists StakingRewardsStore and StakingRewards as targets in the findings. The audit date is clearly stated on the cover page and in the report metadata.
- [15069] drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view — matched: Audit covers Bancor's Governance and Liquidity Protection modules. Two contracts identified: BancorGovernance and LiquidityProtection. Date from cover page and latest audit report date.
- [15070] drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view — matched: Contracts explicitly mentioned in findings and scope description. BancorGovernance is the main contract; IExecutor, Owned, IOwned are referenced as part of the codebase.
- [15071] drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view — no match: Extracted contract names from findings sections; scope section not explicitly listed but contracts are clearly audited targets.
- [15072] Bancor_smartcontract_halborn_report_V1.pdf — no match: No reason recorded
- [15073] drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view — no match: Extracted 10 contracts from Appendix 2 - Files in Scope. Audit date inferred from 'DateJune 2020' at top of report, interpreted as June 2020, last day of month.
- [15074] c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-BancorV3-v1.0.pdf | AutoCompoundingStakingRewards | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-BancorV3-v1.0.pdf | BNTPool | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x02651e...95eaca` — deployed 2022-04-18 16:14:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-BancorV3-v1.0.pdf | BancorNetwork | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0xeef417...9dd4fb` — deployed 2022-04-18 16:13:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-BancorV3-v1.0.pdf | NetworkSettings | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x83e181...09b14f` — deployed 2022-04-18 16:10:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-BancorV3-v1.0.pdf | PendingWithdrawals | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x857eb0...ba9b8a` — deployed 2022-04-18 16:20:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-BancorV3-v1.0.pdf | PoolCollection | unmatched — not counted | — | — | no |
| OpenZeppelin-V3-Audit-Report.pdf | BancorPortal | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x9f292c...e133d5` — deployed 2022-04-18 16:31:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | IBancorPortal | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | BancorNetwork | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0xeef417...9dd4fb` — deployed 2022-04-18 16:13:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | BancorNetworkInfo | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x8e303d...d6e760` — deployed 2022-04-18 16:27:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | BancorV1Migration | own contract | BancorV1Migration (selected) `0xd761d5...c3cc96` — deployed 2022-04-18 16:29:40+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | NetworkSettings | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x83e181...09b14f` — deployed 2022-04-18 16:10:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | PendingWithdrawals | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x857eb0...ba9b8a` — deployed 2022-04-18 16:20:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | IBancorNetwork | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IBancorNetworkInfo | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | INetworkSettings | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IPendingWithdrawals | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | BNTPool | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x02651e...95eaca` — deployed 2022-04-18 16:14:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | PoolCollection | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | PoolCollectionWithdrawal | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | PoolMigrator | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x97cec0...e4a191` — deployed 2022-04-18 16:21:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | PoolToken | own contract | PoolToken (selected) `0xab05cf...68e344` — deployed 2022-04-18 16:08:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | PoolTokenFactory | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IBNTPool | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IPoolCollection | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IPoolMigrator | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IPoolToken | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IPoolTokenFactory | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | AutoCompoundingStakingRewards | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | StakingRewardsMath | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | StandardStakingRewards | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IAutoCompoundingStakingRewards | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IStandardStakingRewards | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | ERC20Burnable | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | SafeERC20Ex | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | Token | ambiguous — not counted | SmartToken (alternative) `0x1f573d...a7ff1c` — deployed 2017-06-10 19:02:40+03 — liveness: live (code_present_context)<br>DSToken (alternative) `0x48fb25...387f94` — deployed 2020-10-12 11:16:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OpenZeppelin-V3-Audit-Report.pdf | TokenLibrary | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IERC20Burnable | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | BlockNumber | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | FractionLibrary | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | MathEx | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | Owned | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | Time | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | TransparentUpgradeableProxyImmutable | ambiguous — not counted | TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x036f8b...6f6cdc` — deployed 2022-08-21 14:51:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0xeef417...9dd4fb` — deployed 2022-04-18 16:13:08+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x649765...2bc373` — deployed 2022-04-18 16:02:14+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0xfd3166...2cad57` — deployed 2022-04-18 16:03:57+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x97cec0...e4a191` — deployed 2022-04-18 16:21:38+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x2a2a2b...a631e1` — deployed 2022-04-18 16:06:05+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0xb0b958...00f372` — deployed 2022-04-18 16:32:39+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x83e181...09b14f` — deployed 2022-04-18 16:10:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x02651e...95eaca` — deployed 2022-04-18 16:14:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x857eb0...ba9b8a` — deployed 2022-04-18 16:20:03+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x8e303d...d6e760` — deployed 2022-04-18 16:27:36+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x9f292c...e133d5` — deployed 2022-04-18 16:31:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OpenZeppelin-V3-Audit-Report.pdf | Types | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | Upgradeable | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | Utils | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IOwned | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IUpgradeable | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IVersioned | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | ExternalProtectionVault | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0xfd3166...2cad57` — deployed 2022-04-18 16:03:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | ExternalRewardsVault | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x2a2a2b...a631e1` — deployed 2022-04-18 16:06:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | MasterVault | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x649765...2bc373` — deployed 2022-04-18 16:02:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IExternalProtectionVault | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IExternalRewardsVault | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IMasterVault | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IVault | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | AutoCompoundingRewards | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x036f8b...6f6cdc` — deployed 2022-08-21 14:51:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | BNTPool | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x02651e...95eaca` — deployed 2022-04-18 16:14:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | Constants | unmatched — not counted | — | — | no |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | Fraction | unmatched — not counted | — | — | no |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | FractionLibrary | unmatched — not counted | — | — | no |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | IAutoCompoundingRewards | unmatched — not counted | — | — | no |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | MathEx | unmatched — not counted | — | — | no |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | PoolCollection | unmatched — not counted | — | — | no |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | RewardsMath | unmatched — not counted | — | — | no |
| ChainSecurity-V3-Audit-Report.pdf | AutoCompoundingRewards | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x036f8b...6f6cdc` — deployed 2022-08-21 14:51:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | BNTPool | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x02651e...95eaca` — deployed 2022-04-18 16:14:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | BancorNetwork | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0xeef417...9dd4fb` — deployed 2022-04-18 16:13:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | BancorNetworkInfo | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x8e303d...d6e760` — deployed 2022-04-18 16:27:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | BancorPortal | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x9f292c...e133d5` — deployed 2022-04-18 16:31:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | BancorV1Migration | own contract | BancorV1Migration (selected) `0xd761d5...c3cc96` — deployed 2022-04-18 16:29:40+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | ExternalProtectionVault | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0xfd3166...2cad57` — deployed 2022-04-18 16:03:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | ExternalRewardVault | unmatched — not counted | — | — | no |
| ChainSecurity-V3-Audit-Report.pdf | MasterVault | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x649765...2bc373` — deployed 2022-04-18 16:02:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | MathEx | unmatched — not counted | — | — | no |
| ChainSecurity-V3-Audit-Report.pdf | NetworkSettings | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x83e181...09b14f` — deployed 2022-04-18 16:10:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | PendingWithdrawals | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x857eb0...ba9b8a` — deployed 2022-04-18 16:20:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | PoolCollection | unmatched — not counted | — | — | no |
| ChainSecurity-V3-Audit-Report.pdf | PoolMigrator | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x97cec0...e4a191` — deployed 2022-04-18 16:21:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | PoolToken | own contract | PoolToken (selected) `0xab05cf...68e344` — deployed 2022-04-18 16:08:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | PoolTokenFactory | unmatched — not counted | — | — | no |
| ChainSecurity-V3-Audit-Report.pdf | StandardRewards | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0xb0b958...00f372` — deployed 2022-04-18 16:32:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view | StakingRewardsStore | unmatched — not counted | — | Listed as target in findings PVE-001 and PVE-002 | no |
| drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view | StakingRewards | unmatched — not counted | — | Listed as target in findings PVE-003, PVE-004, and PVE-005 | no |
| drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view | BancorGovernance | own contract | BancorGovernance (selected) `0x892f48...5d00e4` — deployed 2020-10-12 15:11:57+03 — liveness: live (current_address_book_code)<br>BancorGovernance (alternative) `0xebfafc...f82eb2` — deployed 2023-10-16 17:47:35+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2020-10-12 was 1d from audit; next candidate 1100d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view | LiquidityProtection | unmatched — not counted | — | Listed as target in findings PVE-007, PVE-008 | no |
| drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view | BancorGovernance | own contract | BancorGovernance (selected) `0x892f48...5d00e4` — deployed 2020-10-12 15:11:57+03 — liveness: live (current_address_book_code)<br>BancorGovernance (alternative) `0xebfafc...f82eb2` — deployed 2023-10-16 17:47:35+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2020-10-12 was 3d from audit; next candidate 1102d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view | IExecutor | unmatched — not counted | — | mentioned in findings BNC-02 and BNC-03 | no |
| drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view | Owned | unmatched — not counted | — | mentioned in findings BNC-02 and BNC-09 | no |
| drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view | IOwned | unmatched — not counted | — | mentioned in finding BNC-02 | no |
| drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view | Owned | unmatched — not counted | — | mentioned in findings BNC-01 and BNC-14 | no |
| drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view | ReentrancyGuard | unmatched — not counted | — | mentioned in finding BNC-02 | no |
| drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view | ConverterBase | unmatched — not counted | — | mentioned in findings BNC-03, BNC-04, BNC-14 | no |
| drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view | LiquidityPoolV1Converter | unmatched — not counted | — | mentioned in findings BNC-03, BNC-04, BNC-06, BNC-07, BNC-08, BNC-09, BNC-10, BNC-14, BNC-16 | no |
| drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view | ConverterUpgrader | unmatched — not counted | — | mentioned in findings BNC-04, BNC-10, BNC-14, BNC-15 | no |
| drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view | LiquidityProtectionStore | unmatched — not counted | — | mentioned in findings BNC-04, BNC-12 | no |
| drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view | LiquidityProtection | unmatched — not counted | — | mentioned in findings BNC-04, BNC-08, BNC-09, BNC-12, BNC-14 | no |
| Bancor_smartcontract_halborn_report_V1.pdf | LiquidityPoolV2Converter | unmatched — not counted | — | — | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | BancorFormula | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | ConverterBase | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | LiquidityPoolV2Converter | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | PoolTokensContainer | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | TokenHandler | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | TokenHolder | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | Owned | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | PriceOracle | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | ReentrancyGuard | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | Whitelist | unmatched — not counted | — | listed in Appendix 2 - Files in Scope (implied by test coverage table) | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | BancorChanger | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | CrowdsaleChanger | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | CrowdsaleController | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | ERC20Token | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | ERC20TokenInterface | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | EtherToken | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | IBancorFormula | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | IERC20Token | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | IEtherToken | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | IOwned | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | ISmartToken | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | ITokenChanger | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | ITokenHolder | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | Owned | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | SafeMath | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | SmartToken | own contract | SmartToken (selected) `0x1f573d...a7ff1c` — deployed 2017-06-10 19:02:40+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | SmartTokenController | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | SmartTokenInterface | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | TokenChangerInterface | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | TokenHolder | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xebfafc...f82eb2` | BancorGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 97 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 73 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 34 own (27 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 95 unmatched
- Matched-own operational status: 34 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: temporal_name=2, unique_name=32

Zero-match audit list:

- [15068] drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view
- [15071] drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view
- [15072] Bancor_smartcontract_halborn_report_V1.pdf
- [15073] drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view

Fork inheritance lineage and inherited audits are included when available.
