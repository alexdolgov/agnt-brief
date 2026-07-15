# Agentic Audit Brief: Gro

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Gro (`gro`)
- Website: [https://app.gro.xyz/](https://app.gro.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, ethereum
- Contract surface: 177 unique implementations (305 raw deployments)
- Coverage basis: 0/27 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,661,036.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Gro. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 27 contract row(s) across avalanche, ethereum. Structural roles: 17 core, 7 unclassified, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 27
- Structural roles: core (17), unclassified (7), supporting (3)
- Contract kinds: contract (26), unclassified (1)
- Detected standards: ownable (14), erc20 (6), erc20permit (3)
- Frameworks: openzeppelin (18), foundry (1), solmate (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 33 contracts are derived from known codebases. 33 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x59b6b7...cb0a1d`, chain 1)
- UnnamedContract (`0x789190...42a26c`, chain 1)
- UnnamedContract (`0x79b14d...4635b9`, chain 1)
- UnnamedContract (`0x9da6ad...f2c224`, chain 1)
- UnnamedContract (`0xa96427...6e8f93`, chain 1)
- UnnamedContract (`0xb4e16d...28c9dc`, chain 1)
- UnnamedContract (`0xba1222...6bf2c8`, chain 1)
- UnnamedContract (`0xbebc44...2ff1c7`, chain 1)
- UnnamedContract (`0xd89512...85b09f`, chain 1)
- UnnamedContract (`0xdec0a1...f90b82`, chain 1)
- AirDrop (`0x6b1bff...206dda`, chain 1)
- AirDrop (`0xf3d39a...e2c561`, chain 1)
- DepositHandler (`0xb7207e...a44f40`, chain 1)
- EmergencyHandler (`0xc535cf...76ee76`, chain 1)
- GMerkleVestor (`0x02c133...31c720`, chain 1)
- GROHodler (`0x7c268b...e55b5a`, chain 1)
- GROHodler (`0x8b4a30...e61397`, chain 1)
- GROHodler (`0xef10ea...a8f927`, chain 1)
- GROTeamVesting (`0xf43c6b...e28644`, chain 1)
- GROToken (`0x3ec879...0b74d7`, chain 1)
- GRouter (`0xd4139e...83790d`, chain 1)
- GROVesting (`0x748218...178360`, chain 1)
- GROVesting (`0xa28693...a3730b`, chain 1)
- LPTokenStaker (`0x001c24...c7aad7`, chain 1)
- LPTokenStaker (`0x2e32ba...ed376c`, chain 1)
- NonRebasingGToken (`0x3adb04...c52a0c`, chain 1)
- PnL (`0xf67a42...48096d`, chain 1)
- RebasingGToken (`0xf0a93d...3cb86b`, chain 1)
- UniswapV2Pair (`0x21c591...bfd2f6`, chain 1)
- UniswapV2Pair (`0x2ac5bc...67e9bb`, chain 1)
- Vyper_contract (`0xbcb91e...df4105`, chain 1)
- WeightedPool (`0x702605...7b31ba`, chain 1)
- WithdrawHandler (`0x641bef...268fe7`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 27; live-surface rows included: 27 (27 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 37/37 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/27 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 37 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 140 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 37 of 177 unique; 140 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/78
- Verified + Unaudited implementations: 78
- Verified by bytecode match: 0
- Unverified implementations: 99
- Unique implementations: 177
- Raw deployments: 305
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (78)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AHv2Farmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 38 deployments: avalanche `0x0ae4e3...f3bf3e`; avalanche `0x17a5d3...f1d319`; avalanche `0x1a1047...4679ef`; avalanche `0x21da4b...29d4ac`; avalanche `0x247af6...94fa99`; avalanche `0x2818e1...702ca6`; avalanche `0x2a4e5c...5cd1a1`; avalanche `0x342fc2...b74621`; avalanche `0x370e6e...399b63`; avalanche `0x45fa60...f36344`; avalanche `0x46485f...3e5592`; avalanche `0x4a017e...576b31`; avalanche `0x4c7ea5...0c0478`; avalanche `0x52bacf...3dc6e6`; avalanche `0x5d1294...2c5292`; avalanche `0x5ee227...7ee9ad`; avalanche `0x60e2d9...7245d3`; avalanche `0x6d4c2e...234188`; avalanche `0x7053cd...470158`; avalanche `0x855b33...f6c2dc`; avalanche `0x85b1d5...47fbc3`; avalanche `0x926dfa...e5594a`; avalanche `0x935f5b...0be04a`; avalanche `0x94a7c3...da0638`; avalanche `0x9889d8...fed2f4`; avalanche `0xa3dbc3...9d83e4`; avalanche `0xa797c6...6e9a13`; avalanche `0xa80ec1...ebff56`; avalanche `0xabd66f...383869`; avalanche `0xb29380...e0ddee`; avalanche `0xb34752...c0e22f`; avalanche `0xcc4c1e...8a2865`; avalanche `0xdbcf4f...404af9`; avalanche `0xdc9a64...b4f410`; avalanche `0xe0d6ef...cfc76f`; avalanche `0xe218c3...1cc92c`; avalanche `0xecba37...af169a`; avalanche `0xf44648...293b31` | ⚠️ Unaudited |
| AHv2FarmerDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 7 deployments: avalanche `0x35322b...5f393f`; avalanche `0x3a6b7e...d4cab8`; avalanche `0x5a6008...ea7a58`; avalanche `0x670ea3...0b0ba5`; avalanche `0xb7a4ed...2aacc8`; avalanche `0xcfd28f...56a9ac`; avalanche `0xe505f5...59637f` | ⚠️ Unaudited |
| AirDrop | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387114 | `0x6b1bff...206dda` | ⚠️ Unaudited |
| AirDrop | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387151 | `0xf3d39a...e2c561` | ⚠️ Unaudited |
| Allocation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167bcc...22a99a` | ⚠️ Unaudited |
| Bouncer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x60861b...fe2d81`; avalanche `0x6d1e68...078328` | ⚠️ Unaudited |
| Buoy3Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7d17c9...a59421`; ethereum `0x952df3...75387c`; ethereum `0xbf8c81...23f5fe` | ⚠️ Unaudited |
| BuyBack | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x730ce0...abb4a5`; ethereum `0xc06b96...ca2264`; ethereum `0xdf2bf3...e1cdd7` | ⚠️ Unaudited |
| BuyBackResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2310f6...496f85`; ethereum `0x31f33b...a762dc`; ethereum `0x59a06e...736a2f`; ethereum `0x94c73a...276e2d` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc5c60...efb8f4` | ⚠️ Unaudited |
| DepositHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387136 | `0xb7207e...a44f40` | ⚠️ Unaudited |
| EmergencyHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387144 | `0xc535cf...76ee76` | ⚠️ Unaudited |
| Exposure | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2344db...953444` | ⚠️ Unaudited |
| GenericCream | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9645ce...80bb0f`; ethereum `0xa699d9...bf18e8`; ethereum `0xb74bac...d00921` | ⚠️ Unaudited |
| GenericLevComp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x63d337...28a952`; ethereum `0x6a23a7...f1426e` | ⚠️ Unaudited |
| GGelatoResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a656f...b3776f` | ⚠️ Unaudited |
| GGuardedExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc613c8...f615e7` | ⚠️ Unaudited |
| GMerkleVestor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-387101 | `0x02c133...31c720` | ⚠️ Unaudited |
| GMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd883e0...a30f0c` | ⚠️ Unaudited |
| GROBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1f09e3...6b8880`; ethereum `0x783c75...a8babe` | ⚠️ Unaudited |
| GRODaoVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63d962...a247de` | ⚠️ Unaudited |
| GRODistributer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x3c5ced...e735d4`; ethereum `0x4c6484...e3bb4c`; ethereum `0x54acb7...0877c3`; ethereum `0x88e82d...990b2d`; ethereum `0xb2a54e...fb544d`; ethereum `0xe16471...4eb947` | ⚠️ Unaudited |
| GROEmpVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xca71e6...8f33c7`; ethereum `0xd6c455...6a91ce` | ⚠️ Unaudited |
| GROHodler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387123 | `0x7c268b...e55b5a` | ⚠️ Unaudited |
| GROHodler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387125 | `0x8b4a30...e61397` | ⚠️ Unaudited |
| GROHodler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387149 | `0xef10ea...a8f927` | ⚠️ Unaudited |
| GROInvVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0537d3...ab80f1`; ethereum `0x90d589...e2ad7b` | ⚠️ Unaudited |
| GROTeamVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x452c21...6cb397`; ethereum `0x82bbee...f0b85c` | ⚠️ Unaudited |
| GROTeamVesting | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387152 | `0xf43c6b...e28644` | ⚠️ Unaudited |
| GROToken | token | project_anchor | own_supporting | 0 | ethereum | unit-387110 | `0x3ec879...0b74d7` | ⚠️ Unaudited |
| GROToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x44e9ed...dbfb29`; ethereum `0xeed443...e18c04` | ⚠️ Unaudited |
| GRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb73247...338e03`; ethereum `0xf1e803...3ec38b` | ⚠️ Unaudited |
| GRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-387146 | `0xd4139e...83790d` | ⚠️ Unaudited |
| GROVesting | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-387117 | `0x748218...178360` | ⚠️ Unaudited |
| GROVesting | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387129 | `0xa28693...a3730b` | ⚠️ Unaudited |
| GStopLossResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1b2980...f4c2fd`; ethereum `0x4ed741...1783a8`; ethereum `0xd16a8e...84896d`; ethereum `0xf0b9d0...181cfa`; ethereum `0xf285d0...eaa3c6` | ⚠️ Unaudited |
| GStrategyGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x117b2e...b6b7b3`; ethereum `0x1344c2...dcd984`; ethereum `0x4b1821...b47765`; ethereum `0x72ad58...502128`; ethereum `0xe09de1...1c3224`; ethereum `0xf1e389...2e4732` | ⚠️ Unaudited |
| GTranche | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387103 | `0x19a07a...f7e67a` | ⚠️ Unaudited |
| GTranche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x23e8d5...4721de`; ethereum `0x5c0806...83c6bb` | ⚠️ Unaudited |
| GVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387102 | `0x1402c1...625ef3` | ⚠️ Unaudited |
| GVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4d9c97...2d82db`; ethereum `0xae013d...0872d8` | ⚠️ Unaudited |
| HarvestResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d8f52...6b08a6` | ⚠️ Unaudited |
| HarvestResolverV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51bc15...c97e85` | ⚠️ Unaudited |
| Insurance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a0703...cd050e` | ⚠️ Unaudited |
| JuniorTranche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x499c1d...e78a4e`; ethereum `0xb0279d...8759b9` | ⚠️ Unaudited |
| LifeGuard3Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5d3ab5...fb8126`; ethereum `0x8c2f20...f5f889` | ⚠️ Unaudited |
| LPTokenStaker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387100 | `0x001c24...c7aad7` | ⚠️ Unaudited |
| LPTokenStaker | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-387108 | `0x2e32ba...ed376c` | ⚠️ Unaudited |
| LPTokenStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf63c9d...9b8eb5` | ⚠️ Unaudited |
| MultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d39ee...d45380` | ⚠️ Unaudited |
| NonRebasingGToken | token | project_anchor | own_supporting | 0 | ethereum | unit-387109 | `0x3adb04...c52a0c` | ⚠️ Unaudited |
| PnL | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387153 | `0xf67a42...48096d` | ⚠️ Unaudited |
| PnLFixedRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387105 | `0x271d1b...4861e6` | ⚠️ Unaudited |
| PnLFixedRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xbc1c7a...498d8a`; ethereum `0xc19df0...83a3f6` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a25fd...219a13` | ⚠️ Unaudited |
| RebasingGToken | token | project_anchor | own_supporting | 0 | ethereum | unit-387150 | `0xf0a93d...3cb86b` | ⚠️ Unaudited |
| RedemptionPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x204d9d...27b6ef` | ⚠️ Unaudited |
| RedemptionPoolAlloyX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2f1c3f...42e1d0`; ethereum `0x5a016d...cd34ea`; ethereum `0x9c05b7...ac0aa1`; ethereum `0xd74996...db163f`; ethereum `0xefc812...c66432` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f9062...2bb941` | ⚠️ Unaudited |
| RouterOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xbd5ff7...2eec41`; ethereum `0xf66bba...100af9`; ethereum `0xfe620d...c62599` | ⚠️ Unaudited |
| SeniorTranche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x77fbd7...b0a8a0`; ethereum `0xf0e004...0cf233` | ⚠️ Unaudited |
| StableConvexXPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2140f...8581cb` | ⚠️ Unaudited |
| StopLossLogic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387107 | `0x2b369b...ef4470` | ⚠️ Unaudited |
| StopLossLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2b8dc4...4242e9`; ethereum `0x886a57...f60318` | ⚠️ Unaudited |
| StrategyHarvestStable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x14a098...be0ec4`; ethereum `0xbd49a8...13b455`; ethereum `0xf03ef5...31246e` | ⚠️ Unaudited |
| StrategyIdle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c3d92...7ddee1` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1aebe9...539824`; ethereum `0xdc9540...79ac77` | ⚠️ Unaudited |
| tokenCounter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa64610...d21f90`; ethereum `0xaffbd0...f26ad7` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387104 | `0x21c591...bfd2f6` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387106 | `0x2ac5bc...67e9bb` | ⚠️ Unaudited |
| VaultAdaptorMK2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 30 deployments: avalanche `0x0b2e71...ef395a`; avalanche `0x238897...8c0f33`; avalanche `0x2db797...1aa0d5`; avalanche `0x2eb05c...d4e592`; avalanche `0x3e3cb9...8e28ca`; avalanche `0x471f4b...e9beb5`; avalanche `0x48cb6f...9e6a3c`; avalanche `0x514c32...f1e0b7`; avalanche `0x57daed...5b449e`; avalanche `0x5e57e1...59da2a`; avalanche `0x606359...e3ef55`; avalanche `0x6518be...a298e7`; avalanche `0x6bacf8...e52b99`; avalanche `0x6e4036...974f39`; avalanche `0x6ef440...475581`; avalanche `0x6fff1e...0fe130`; avalanche `0x720e5e...cc260d`; avalanche `0x72681d...b0d7ba`; avalanche `0x79b14d...4635b9`; avalanche `0x7b2f29...19f0b5`; avalanche `0x82e40e...25b956`; avalanche `0x8dbd82...0df98c`; avalanche `0x95284d...900ba4`; avalanche `0x9741f6...690694`; avalanche `0xa36fb8...fbbba3`; avalanche `0xa97ab8...df275d`; avalanche `0xad6c07...a1dbbd`; avalanche `0xbdec31...7cb96d`; avalanche `0xbed102...414635`; avalanche `0xcc20ce...7ffbc2` | ⚠️ Unaudited |
| VoteAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x156d9a...0d6953`; ethereum `0x2c57f9...a91c2d`; ethereum `0x519a27...60651c` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x03b298...d7cc8e`; ethereum `0x6a01bc...9aac85`; ethereum `0x802915...80f548`; ethereum `0x9cd696...a86d79` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387140 | `0xbcb91e...df4105` | ⚠️ Unaudited |
| WeightedPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-387116 | `0x702605...7b31ba` | ⚠️ Unaudited |
| WithdrawHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387112 | `0x641bef...268fe7` | ⚠️ Unaudited |
| xGro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0f6788...40442d`; ethereum `0xbd3535...11477c`; ethereum `0xd561d5...9c6646`; ethereum `0xfac5bb...708f03` | ⚠️ Unaudited |
| YearnGenericLender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea5a6c...d3208c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (99)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05acf6...01372f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x062be1...3cafe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x085873...c95748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aeee4...39fee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eee1e...71488d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x109c46...94f752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d415...2465de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11a2f8...2a4a08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1571d8...0029f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a4b50...411a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b1ee9...9816aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f1f42...f9fb7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x299001...177846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a4e5c...5cd1a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d63b9...ef4139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33f5e1...f9df65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34f484...3899cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39bf32...d4a2b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bc1ba...c0a791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x400ea1...8793d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4232e8...d165d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x437e8f...f716c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43b6c0...290e50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44a0a4...6caea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48cb6f...9e6a3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b05a9...a8855a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c4a81...ec3f74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4da038...1461eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x514c32...f1e0b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51e6cf...81fbed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x549e70...2498c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387111 | `0x59b6b7...cb0a1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b4042...ca4113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ebdf8...a6cead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ec720...d504e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60e2d9...7245d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x651cdc...87a335` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d1e68...078328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d4c2e...234188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f15b6...af29bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x715b54...6173cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x720e5e...cc260d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x732a3a...a37a8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387119 | `0x789190...42a26c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78ed7a...5244d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x791e95...bf5d64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387121 | `0x79b14d...4635b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b4b44...90524f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x815d0e...51f0ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83cfa7...fc3e3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x845982...93df6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b958d...cd4f59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4b3e...b3af2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92472c...65094b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x935f5b...0be04a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95d30d...f58012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96527d...4b0c17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9741f6...690694` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387128 | `0x9da6ad...f2c224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ff07c...11ddf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa18af2...d15a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa69f30...c0615b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387131 | `0xa96427...6e8f93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabac92...8ad3db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacc4d9...730722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad393d...d2448a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387134 | `0xb4e16d...28c9dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6b163...0f7dd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb90efd...f68801` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387138 | `0xba1222...6bf2c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387142 | `0xbebc44...2ff1c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc118f2...b047b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc36dec...7b202a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8f647...8f1275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc94dde...5d23d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb1f75...5e55fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbbcc5...3b4c9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcded5e...0ec165` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce5dc1...f285b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce6e6c...6e5866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7e726...e610c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387147 | `0xd89512...85b09f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbcf4f...404af9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc0c53...0db43b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcbcc3...0f7232` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387148 | `0xdec0a1...f90b82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf1ebf...b49020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe274ec...ee49b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe664b7...230682` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec7ff0...78ac28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecd7a2...a25ad4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4d352...12c0d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf58aa7...e711c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6a028...fb3da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe1dc5...343476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b4c90...18380f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3fb230...b73066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4801de...93f50f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb31b81...8197d2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x6b1bff...206dda` | AirDrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf3d39a...e2c561` | AirDrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb7207e...a44f40` | DepositHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc535cf...76ee76` | EmergencyHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x02c133...31c720` | GMerkleVestor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7c268b...e55b5a` | GROHodler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8b4a30...e61397` | GROHodler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xef10ea...a8f927` | GROHodler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf43c6b...e28644` | GROTeamVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3ec879...0b74d7` | GROToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd4139e...83790d` | GRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x748218...178360` | GROVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa28693...a3730b` | GROVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19a07a...f7e67a` | GTranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1402c1...625ef3` | GVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x001c24...c7aad7` | LPTokenStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2e32ba...ed376c` | LPTokenStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3adb04...c52a0c` | NonRebasingGToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf67a42...48096d` | PnL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x271d1b...4861e6` | PnLFixedRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf0a93d...3cb86b` | RebasingGToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2b369b...ef4470` | StopLossLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbcb91e...df4105` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x702605...7b31ba` | WeightedPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x641bef...268fe7` | WithdrawHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 73 |
| upstream | 3 |
| standard_library | 2 |
| needs_review | 99 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
