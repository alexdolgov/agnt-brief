# Agentic Audit Brief: Ionic Protocol

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

- Project: Ionic Protocol (`ionic-protocol`)
- Website: [https://ionic.money/](https://ionic.money/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bob, bsc, fraxtal, lisk, mode, optimism
- Contract surface: 83 unique implementations (178 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,042,238.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ionic Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across base, bob, bsc, fraxtal, lisk, mode, optimism. Structural roles: 4 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: unclassified (4)
- Contract kinds: contract (4)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Main Pool (`0xafb4a2...7b166b`, chain 10)
- Main Pool (`0xb51414...590658`, chain 252)
- Main Pool (`0xf448a3...7bdf60`, chain 1135)
- Main Pool (`0x05c9c6...f73d13`, chain 8453)
- Main Pool (`0xfb3323...685556`, chain 34443)
- Main Pool (`0x9cfee8...6df715`, chain 60808)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 76 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 6 of 83 unique; 77 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/59
- Verified + Unaudited implementations: 59
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 83
- Raw deployments: 178
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x8d5b09...687f73` | ⚠️ Unaudited |
| AerodromeV2Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0111f3...846d8a` | ⚠️ Unaudited |
| Airdropper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x521dd8...f5dd1f` | ⚠️ Unaudited |
| AlgebraSwapLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5ca3fd...20f3c8` | ⚠️ Unaudited |
| AuthoritiesRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5d7480...91738e` | ⚠️ Unaudited |
| BEP20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x7130d2...3ead9c`; bsc `0xe9e7ce...087d56` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x0bf353...8e6c75`; mode `0x93dac8...69bc95`; mode `0xb3788b...6a6332` | ⚠️ Unaudited |
| CErc20PluginDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x0effea...224126`; mode `0x726c7b...aff1d5`; mode `0x8cc7cd...bcb94c` | ⚠️ Unaudited |
| CErc20PluginRewardsDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x798ee0...5884d1`; mode `0x96aaaf...36dbb2`; mode `0xfdd337...832462` | ⚠️ Unaudited |
| CErc20RewardsDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x286703...786244`; mode `0x6352b5...f7a9a5`; mode `0xb8fb48...123e5e` | ⚠️ Unaudited |
| CollateralSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0xc10fd8...27ebeb`; mode `0xee02b7...cb56f6` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 4 deployments: mode `0x8b2b6a...3f43a7`; mode `0xa2ced0...272484`; mode `0xa3e43a...4234e9`; mode `0xa855f8...6c6be7` | ⚠️ Unaudited |
| ComptrollerFirstExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x639322...35f3a0`; mode `0xdc4abe...b8920a`; mode `0xe1a300...4ba02f` | ⚠️ Unaudited |
| ComptrollerPrudentiaCapsExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0a183b...87bee4` | ⚠️ Unaudited |
| CTokenFirstExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 5 deployments: mode `0x13b727...81fa14`; mode `0x8c58ec...d4aea2`; mode `0xd2fef5...9fde16`; mode `0xe419c1...ea87ec`; mode `0xf4090e...4ea2d4` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x184700...bc34ca` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9a0af9...6fceec` | ⚠️ Unaudited |
| FixedNativePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1d7669...cbc28a` | ⚠️ Unaudited |
| GlobalPauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x5d4983...a50e3f`; mode `0xe646d8...3880c8` | ⚠️ Unaudited |
| IonicFlywheel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 4 deployments: mode `0x4e2dfa...be517e`; mode `0x7c8e41...39269d`; mode `0x92ce34...752497`; mode `0xa525af...65f458` | ⚠️ Unaudited |
| IonicFlywheelBorrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 4 deployments: mode `0x476326...025996`; mode `0x82e88b...a0fbaf`; mode `0xe259d6...f57d13`; mode `0xf9c66d...40ae02` | ⚠️ Unaudited |
| IonicFlywheelBorrowBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xd2ea2d...a29b14` | ⚠️ Unaudited |
| IonicFlywheelDynamicRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 7 deployments: mode `0x02f606...20d11f`; mode `0x23dec9...f6fd88`; mode `0x3d662d...ed3dd4`; mode `0x4a003b...c2549c`; mode `0xbfae75...95d989`; mode `0xdb9356...90415f`; mode `0xef4aff...8f1fe2` | ⚠️ Unaudited |
| IonicFlywheelLensRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 5 deployments: mode `0x01ab48...a5e449`; mode `0x79eb8e...f5db70`; mode `0xa1b7c3...7eade9`; mode `0xa6ba5f...8da108`; mode `0xf0ac0f...35d85a` | ⚠️ Unaudited |
| IonicToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xd07cd8...272164` | ⚠️ Unaudited |
| IonicUniV3Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 5 deployments: mode `0x0472de...740a9d`; mode `0x4d7da5...e96b72`; mode `0x79ac78...f5b14c`; mode `0x88911e...4b0d8f`; mode `0xe807fe...3df5b1` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 6 deployments: mode `0x21a455...217817`; mode `0x223add...09e6ee`; mode `0x22cc24...bc5636`; mode `0x2e06c3...e0595e`; mode `0x413ad5...26743a`; mode `0xa16d99...c49a19` | ⚠️ Unaudited |
| LeveredPositionFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9b506a...40cd45` | ⚠️ Unaudited |
| LeveredPositionFactoryFirstExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x4e20eb...737fea`; mode `0x4f8246...c29b98` | ⚠️ Unaudited |
| LeveredPositionFactorySecondExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x14bb1c...e6d000`; mode `0x2afb71...c19e33`; mode `0x5dc08e...562212` | ⚠️ Unaudited |
| LeveredPositionsLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xd9a567...0f3a28` | ⚠️ Unaudited |
| LiquidatorsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0xae2647...42cd6a`; mode `0xc71b96...ca1b34` | ⚠️ Unaudited |
| LiquidatorsRegistryExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 4 deployments: mode `0x3fa4bc...93d621`; mode `0x6aa80a...03c103`; mode `0x95e4cd...ae8294`; mode `0xdd7f71...7bd39b` | ⚠️ Unaudited |
| LiquidatorsRegistrySecondExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x139bd5...d03900`; mode `0x45a4a3...e8c5c1` | ⚠️ Unaudited |
| LooplessFlywheelBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1d89e5...ce47b4` | ⚠️ Unaudited |
| Main Pool | unknown | project_anchor | own_supporting | 0 | optimism | unit-387724 | `0xafb4a2...7b166b` | ⚠️ Unaudited |
| Main Pool | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-387726 | `0xb51414...590658` | ⚠️ Unaudited |
| Main Pool | unknown | project_anchor | own_supporting | 0 | base | unit-387730 | `0x05c9c6...f73d13` | ⚠️ Unaudited |
| Main Pool | unknown | project_anchor | own_supporting | 0 | mode | unit-387728 | `0xfb3323...685556` | ⚠️ Unaudited |
| MasterPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x4e7676...e3c9ae`; mode `0x707a1b...40229f` | ⚠️ Unaudited |
| OptimizedVaultsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2ddf3d...aed83c` | ⚠️ Unaudited |
| PoolDirectory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x20808c...ea1d2d` | ⚠️ Unaudited |
| PoolLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 4 deployments: mode `0x431c87...7ed480`; mode `0x611a68...d87ab8`; mode `0x70bb19...df36a6`; mode `0xbc6d8d...124d39` | ⚠️ Unaudited |
| PoolLensSecondary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x7ea7bb...0d4154` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 5 deployments: mode `0x30d608...3672c2`; mode `0x4de2d8...087b56`; mode `0x985a32...e849d0`; mode `0xaf9cc7...a10f83`; mode `0xd12266...a42343` | ⚠️ Unaudited |
| PrudentiaInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 8 deployments: mode `0x3fa7f3...0275e1`; mode `0x50a06b...81cd03`; mode `0x6a40d8...c636a6`; mode `0xa662dc...b74414`; mode `0xb0a9b9...e37f09`; mode `0xb1b4ba...8cf382`; mode `0xc58dcc...e72e2e`; mode `0xf2202a...180af8` | ⚠️ Unaudited |
| PublicSaleTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x2f0a2b...1b72dc`; mode `0x731d22...536821`; mode `0xda061a...29ede8` | ⚠️ Unaudited |
| PythPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x13fd27...441794` | ⚠️ Unaudited |
| PythPriceOracleDmBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xac986b...4b342e` | ⚠️ Unaudited |
| RedstoneAdapterPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x63a153...3e1e0a` | ⚠️ Unaudited |
| RedstoneAdapterPriceOracleWeETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9c0819...03de78` | ⚠️ Unaudited |
| RedstoneAdapterPriceOracleWrsETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xe3643f...8979e8` | ⚠️ Unaudited |
| SimplePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xcd4d7c...d3ba5c` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x93e635...9409d9`; mode `0xa7bc89...89bc7b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 25 deployments: mode `0x04ffa5...c1cfb0`; mode `0x151af4...8b93db`; mode `0x1a118b...6f1d44`; mode `0x1dd45c...b8eac1`; mode `0x2baf3a...77f117`; mode `0x2dc3f7...f3b1ec`; mode `0x39c353...81458a`; mode `0x4e854c...2cd834`; mode `0x50f13e...b3ce5c`; mode `0x52ee6e...2a7b23`; mode `0x5f0369...086d03`; mode `0x6afcca...465df5`; mode `0x8d446b...a87050`; mode `0x8ea3fc...0f6e57`; mode `0x99e8d6...83748b`; mode `0x9df3d8...feb74c`; mode `0xa12c1e...9b0e3a`; mode `0xa1917c...653e0f`; mode `0xa80ff9...fb23c5`; mode `0xa90f1c...e216a4`; mode `0xacea9b...bff4e7`; mode `0xb00335...9a6115`; mode `0xc3cec1...47daac`; mode `0xcc11fc...fa0062`; mode `0xe98628...ced3ea` | ⚠️ Unaudited |
| VelodromePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9bb6ef...fce2a9` | ⚠️ Unaudited |
| VelodromeV2Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xa1abf9...fb33ec` | ⚠️ Unaudited |
| WBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb4cdb...bc095c` | ⚠️ Unaudited |
| xERC20Hyperlane | token | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xb81ab9...5319eb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Main Pool | unknown | project_anchor | own_supporting | 0 | lisk | unit-387725 | `0xf448a3...7bdf60` | ❓ Unverified |
| Main Pool | unknown | project_anchor | own_supporting | 0 | bob | unit-387729 | `0x9cfee8...6df715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x146991...198736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x178d49...702fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x36a84b...651530` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3ee5e2...bd22e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x462faa...ef3e51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x48bf6b...ace19a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5782c5...193a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x6abf23...c6d3ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x6ac17d...3b36b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x75897e...52c058` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x8cdeb2...5c020c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x907a17...4d7d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x917e17...d8d4db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-387727 | `0x9a9072...bcac0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9e4f32...6abd98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xac4096...ff2295` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xb08faf...8a5e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xb48221...be43f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xca41aa...498dd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xda8c83...5f1178` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xe5a4e7...e810a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xe64e42...93c2c4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf](https://1954749119-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F4L4EczL4rCp3jyJhAxHG%2Fuploads%2Ffkk0363x576TeYPz9Dww%2FIonic_Protocol_-_Zellic_Audit_Report.pdf) | Zellic | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2937] spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf — no match: Extracted 23 contract names from the scope section and findings. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | FuseFeeDistributor | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | FusePoolDirectory | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | FusePoolLens | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | FusePoolLensSecondary | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | FuseSafeLiquidator | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | ChainlinkPriceOracleV2 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | CurveLpTokenPriceOracleNoRegistry | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | MasterPriceOracle | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | UniswapTwapPriceOracleV2 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | BlockVerifier | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | MerklePatriciaVerifier | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | UniswapOracle | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | UQ112x112 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | CurveLpTokenLiquidatorNoRegistry | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | JarvisSynthereumLiquidator | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | XBombLiquidator | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | AlpacaERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | AutofarmERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | BeefyERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | BombERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | EllipsisERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | Rlp | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | UniswapTwapPriceOracleV2Root | unmatched — not counted | — | mentioned in finding 3.1 as target | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 3 |
| standard_library | 3 |
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 23 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2937] spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
