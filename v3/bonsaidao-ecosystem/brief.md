# Agentic Audit Brief: BonsaiDAO Ecosystem

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 8.2% over 90 days

## Project Overview

- Project: BonsaiDAO Ecosystem (`bonsaidao-ecosystem`)
- Website: [https://bonsaidao.xyz/](https://bonsaidao.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, berachain, ethereum
- Contract surface: 638 unique implementations (750 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $899,418.00
- On-chain TVL (included contracts): $971,881.87
- TVL by chain: Arbitrum $971,881.87

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for BonsaiDAO Ecosystem in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 638 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/85
- Verified + Unaudited implementations: 85
- Verified by bytecode match: 0
- Unverified implementations: 553
- Unique implementations: 638
- Raw deployments: 750
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 5 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (85)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x489ee0...097c4a` | ⚠️ Unaudited |
| AssetVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x37c070...711a23`; arbitrum `0x4bca8d...e1dd69`; arbitrum `0x5f851f...b50a97`; arbitrum `0x6a89fa...d12257`; arbitrum `0x727ed4...605e42`; arbitrum `0x959f38...e52fef`; arbitrum `0xbb84d7...e06126`; arbitrum `0xcd8011...18af29`; arbitrum `0xe0a21a...57607d` | ⚠️ Unaudited |
| AggregateVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x0ca629...48c4ed`; arbitrum `0x36803b...d1ca67`; arbitrum `0x9843d9...88ad59`; arbitrum `0xa1506e...a691ca`; arbitrum `0xc69ada...6f7106`; arbitrum `0xc6d7cc...939ccb` | ⚠️ Unaudited |
| ReferralStorage | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6fab3...06e99d` | ⚠️ Unaudited |
| AbraMimDeployment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5da13...59d951` | ⚠️ Unaudited |
| AggregateVaultHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47ccac...ddd3ef` | ⚠️ Unaudited |
| ArbVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6187f8...aabb29` | ⚠️ Unaudited |
| Auth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x139242...53cdf1`; arbitrum `0x200726...9334c8`; arbitrum `0x3d4ab3...115400`; arbitrum `0x564d24...f20f52`; arbitrum `0x6635eb...b9babb`; arbitrum `0xa1fe57...254b19`; arbitrum `0xb11dd8...3c97d1`; arbitrum `0xca5c13...fefbd6`; arbitrum `0xddd716...d7aca8` | ⚠️ Unaudited |
| BatchSender | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1070f7...fe17e8`; arbitrum `0x5179d7...3107a6` | ⚠️ Unaudited |
| BondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x457c4e...7fcafa` | ⚠️ Unaudited |
| CollectRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x2d0ef2...fb7e57`; arbitrum `0x8e82b9...cd7784` | ⚠️ Unaudited |
| DeploymentManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x0f51d4...e32ce6`; arbitrum `0xe349db...3826f9` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x36c73f...0af57a`; arbitrum `0xbf4ee2...25a6d9`; arbitrum `0xd034f9...3e286c` | ⚠️ Unaudited |
| Emitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x763a5c...73d3e3` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2c8169...fe0305`; arbitrum `0x7d720f...5ce62b` | ⚠️ Unaudited |
| ERC20Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde09dc...792e8e` | ⚠️ Unaudited |
| EsGMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf42ae1...a426ca` | ⚠️ Unaudited |
| EthBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x546c92...9c10b6`; arbitrum `0xaa6c3a...2bd119`; arbitrum `0xca271b...e373d1` | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11d628...f43bb7` | ⚠️ Unaudited |
| FeesManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5de849...ffbb41`; base `0xc9cc93...48a11d` | ⚠️ Unaudited |
| FeesManager | governance | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x4402fc...66c4b0`; arbitrum `0x45213f...4dcd44`; arbitrum `0x6c58d1...58aa27` | ⚠️ Unaudited |
| FeesManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x3756f9...3b11d3` | ⚠️ Unaudited |
| GenericUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: base `0xbfc606...07b64c`; arbitrum `0x7f37b0...de553f`; arbitrum `0xcb2b71...2ef6b9`; berachain `0xebf158...1ae473` | ⚠️ Unaudited |
| GLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4277f8...1ac258` | ⚠️ Unaudited |
| GLPDeployment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f1a23...69ba39` | ⚠️ Unaudited |
| GlpManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x321f65...e22649`; arbitrum `0x3963ff...32ec18` | ⚠️ Unaudited |
| GMI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6e972...d89514` | ⚠️ Unaudited |
| GMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc5a1a...35ad0a` | ⚠️ Unaudited |
| GmxFeeReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0df14d...ea0733` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 3 | arbitrum | n/a | 3 deployments: arbitrum `0x8e52ca...930178`; arbitrum `0xb0b4bd...c0c0ba`; arbitrum `0xb137d1...26145d` | ⚠️ Unaudited |
| HookHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe25d25...43130f` | ⚠️ Unaudited |
| KeeperGasSafeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x77cdc8...0dad2f`; arbitrum `0xafaae0...341829` | ⚠️ Unaudited |
| LendingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: base `0x073248...b8fcbe`; base `0x67c670...04d1b4`; base `0x83820c...28186e`; arbitrum `0x0b8f69...b54ce5`; arbitrum `0x1097bd...1fd7b7`; arbitrum `0x2a271f...036a5a`; arbitrum `0x37d2f5...c15193`; arbitrum `0x4af0b7...d72942`; arbitrum `0x512445...670f49`; arbitrum `0xf726d4...4f5647`; berachain `0xfaed40...1f9f44` | ⚠️ Unaudited |
| LendingPoolUtils | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 3 deployments: base `0xa7ff08...c555c3`; arbitrum `0x81dbb8...0673c4`; berachain `0x1305c6...aeadd6` | ⚠️ Unaudited |
| MarinateReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x329877...bd2916`; arbitrum `0x949130...b91a30`; arbitrum `0xfa00aa...3b932d` | ⚠️ Unaudited |
| MasterChefUmami | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x891c4e...533e14` | ⚠️ Unaudited |
| MasterChefUmamiGmx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x52f615...6d9d8f`; arbitrum `0xf3b582...c8ec7e` | ⚠️ Unaudited |
| MintableBaseToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x352471...486921`; arbitrum `0x626010...95a954` | ⚠️ Unaudited |
| NettingMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d97f4...aff84e` | ⚠️ Unaudited |
| OARB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe474fc...1f7051` | ⚠️ Unaudited |
| Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: base `0x6c47eb...eaa70d`; arbitrum `0x073248...b8fcbe`; arbitrum `0xc00028...ca26a5`; berachain `0x1ab5e3...e4d9d5` | ⚠️ Unaudited |
| OracleWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6afb2c...49b9e7` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09f77e...8a2acb` | ⚠️ Unaudited |
| PoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7d720f...5ce62b`; base `0xaf013b...4682cf` | ⚠️ Unaudited |
| PoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x076442...9b764d`; arbitrum `0x0b2b8f...bfbf98` | ⚠️ Unaudited |
| PoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: base `0x928cf6...1c1d73`; arbitrum `0x0cc43a...7fdf0a`; arbitrum `0xc05f41...cc3f08` | ⚠️ Unaudited |
| PoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x914246...83233b`; berachain `0xf8f48f...1b84b9` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75e42e...8a4a0c` | ⚠️ Unaudited |
| PositionRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb87a43...b09868` | ⚠️ Unaudited |
| PositionTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x36147a...ac8a59`; base `0x37d2f5...c15193` | ⚠️ Unaudited |
| PositionTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x08a5f6...04b27b`; arbitrum `0x93e735...2236fc`; arbitrum `0x958559...6f4444` | ⚠️ Unaudited |
| PositionTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x057afb...d60e88`; berachain `0xf5db57...257661` | ⚠️ Unaudited |
| PriceFeedTimelock | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b1ffd...d43a8b` | ⚠️ Unaudited |
| Reader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22199a...cae489` | ⚠️ Unaudited |
| RequestHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x33a448...cc1e91`; arbitrum `0x685c20...5da0bc` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x5c04a1...90150d`; arbitrum `0x986b4e...7f43aa` | ⚠️ Unaudited |
| RewardRouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x159854...a3ce9b`; arbitrum `0x5e4766...5694a1`; arbitrum `0xa906f3...f8d8f1`; arbitrum `0xb95db5...d271f5` | ⚠️ Unaudited |
| RewardTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x0755d3...1e5e93`; arbitrum `0x1addd8...4c8903`; arbitrum `0x4e971a...5400b6`; arbitrum `0x908c4d...c59dd4`; arbitrum `0xd2d116...2a728f` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xabbc5f...2f4064` | ⚠️ Unaudited |
| ShortsTrackerTimelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79b6ee...5c6c2a` | ⚠️ Unaudited |
| Solarray | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f46af...935c0e` | ⚠️ Unaudited |
| StakedGlp | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x2f546a...3e89ae`; arbitrum `0x5402b5...0cffdf` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9ecfe...dfbd81` | ⚠️ Unaudited |
| StakingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd80a01...881fb9` | ⚠️ Unaudited |
| StakingWarmup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x792248...b7de13` | ⚠️ Unaudited |
| StandardBondingCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe0d0e2...79d808` | ⚠️ Unaudited |
| sUMAMI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6d557...a906d7` | ⚠️ Unaudited |
| sZ2O | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc45c51...f9bd39` | ⚠️ Unaudited |
| Timelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x09fec9...240126`; arbitrum `0x460e1a...82bc6e`; arbitrum `0x5cf5e6...615f42`; arbitrum `0x9fd825...fdaa44`; arbitrum `0xaa50bd...b6a597`; arbitrum `0xe7e740...cf4858`; arbitrum `0xf3cf3d...7b2350` | ⚠️ Unaudited |
| TimelockBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: arbitrum `0x0d41fc...850451`; arbitrum `0x71e0c7...40fb3c`; arbitrum `0x83c19e...9da7c0`; arbitrum `0x9c566e...fe2774`; arbitrum `0xb0d9e1...efcb7c`; arbitrum `0xd4a664...385e9a`; arbitrum `0xd98612...e947c6`; arbitrum `0xdca4e8...5557f9`; arbitrum `0xee57e7...9225d5`; arbitrum `0xf2ad33...08c838` | ⚠️ Unaudited |
| TimelockZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xad019d...e7fbce`; arbitrum `0xf56d82...04ece8` | ⚠️ Unaudited |
| TokenManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdddc54...5ea96a` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8e6a5...71fc97` | ⚠️ Unaudited |
| UMAMI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1622bf...7f86e3` | ⚠️ Unaudited |
| UmamiAcrossHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x816dc4...342005`; arbitrum `0xccb0be...176d48` | ⚠️ Unaudited |
| Vendor4626Strategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0b8f69...b54ce5`; arbitrum `0x88ad0e...a87717`; arbitrum `0xaaacc7...cce59f` | ⚠️ Unaudited |
| VendorOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2e70e...4c3089` | ⚠️ Unaudited |
| Vester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x199070...363004`; arbitrum `0x7c100c...df49b2`; arbitrum `0xa75287...72042e`; arbitrum `0xc442cd...94ec06` | ⚠️ Unaudited |
| VestingGeneral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x3e7acf...87dc12`; arbitrum `0x545055...b45882`; arbitrum `0x60b5c9...6e2218`; arbitrum `0x73aa8a...364a91`; arbitrum `0x98c4ff...091364`; arbitrum `0xb3ee9f...485223`; arbitrum `0xb710d8...00207c`; arbitrum `0xc6dc83...4fad94`; arbitrum `0xeb7bb8...2907df` | ⚠️ Unaudited |
| WhitelistedTokenRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d952e...f5fda9` | ⚠️ Unaudited |
| Z2O | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb96f8...2fb9ac` | ⚠️ Unaudited |
| Z2OBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x16f5e5...1e300c`; arbitrum `0x5251d7...0e0f9d`; arbitrum `0x58b95d...f9f3ba`; arbitrum `0x6fb73a...a283b6`; arbitrum `0x948b80...0be8ec`; arbitrum `0xbf5376...7a83d7` | ⚠️ Unaudited |
| Z2OStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06b4df...c9d050` | ⚠️ Unaudited |
| ZeroTwOhmBondingCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f3630...9435e5` | ⚠️ Unaudited |
| ZeroTwOhmTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00efcb...7a3611` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (553)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd03b16...0f171d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x003793...614407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0188cf...4148a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01fcf9...45e87e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02140c...5f48ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x024bb3...6a357a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0263ee...7ec931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x026fef...fd013b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x028f2d...e40554` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02ccff...0e04c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03345e...cf0b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03e092...4912e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03fdfd...c2bacd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x041733...1905ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x051f76...a49b2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0537a6...7963df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x055e73...c49f5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0571ac...bca3de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x058e35...dab066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05c6f9...830994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x060806...d2dcfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06520d...c4f3d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06dafc...d9a769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x073ec2...664191` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0783c3...4edc90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07c95b...2b45f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08268b...f7aa6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x084e2a...e8c12f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08ff18...fe530e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0988ad...eba2a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a1cf9...1fc913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b1971...9344d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b9fcd...9d8f19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ba0ef...4d4509` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0bc1a1...e905b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0bfb3f...a4a73c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c0561...133a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ce2c0...1e0e58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d463c...6c494f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e1eb3...8a5532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e3cec...1cd353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e9a4f...d92d83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f2e93...b7977b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1051a1...a394ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x120b0f...290fed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13fac4...74bdbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x142511...a10e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x143b45...d3f429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14a361...3343e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1544c8...6d9c47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x15672e...379068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x157103...bd91fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x15d291...9ca71d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x191354...5bdb5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19a33a...d5d4c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19a407...b57fa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19f799...113d25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1aa8ac...3fb662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b5f36...2769cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1da82e...a56fc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1dc30f...8aae15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1dc69d...830737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f018e...6550b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f2903...fd0b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1fc3a9...7e43f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x204c6c...090f39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2170aa...1e9c6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x221346...20b085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x221731...74f307` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22cf6f...9973dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23c2f9...d250c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23dcb0...ec9150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x243505...351991` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x24fc59...852b9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x253448...c77e15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x254b3a...80e916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25970f...a6ea34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25e07b...61240b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25e354...7931cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26918c...7ea96a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x271168...9aad7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x273176...32ae64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x27ca9e...595a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x27caf1...48f84f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2810a7...18c45c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2836e8...80614e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x283ed2...d82586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x284611...87c4b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x284bee...ccf00e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2890d8...2bdd55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x28b26f...401341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2935f4...eef4a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29d15f...7bff48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a00aa...d8b553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a8e37...649a41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2adbe8...ec9ace` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ae501...05e8a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b2c17...ef63b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b485f...e9ae03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2bcc44...7e1966` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c1e2c...4fb724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2cab0a...985169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2cedaa...92de5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d1bb9...9b1709` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2dd1cd...3de8dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e4b9c...ecf9d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f2182...969a99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f35e5...7fe206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ffe11...04c764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3024c5...c0380f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x306cd1...60c68e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30eb96...df8013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3237b8...4deaa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x324929...7fc714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32b403...50a63b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x331a08...829532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x337276...774ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33fe3b...e7b25f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x340cb6...e43464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x348fd7...760d35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x349025...4dc381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x350ef5...2e8faa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x362719...9aff57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x36ea78...2fe5e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x36f6ce...a26a3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37431c...8ff010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x376502...849190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x385654...586928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x38f28a...581983` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3914cc...2e4ccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3973ed...2076c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3982c6...2df938` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3a216a...37bb75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b0683...ffe5f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b0cec...7b040b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b27eb...643c6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3bb762...beb2bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3beab0...0572c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c893f...d96d76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ca48e...ead471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3cb7a3...1c07a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f3463...3eedad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f6dc8...fd2e3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3fcc5f...ff3923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4037ba...d4e802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4060b8...c6190b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x41161b...22faa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x41ca80...f4b20c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42099f...c320cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42eb8d...819cc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x438fd5...b68232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43b879...f88f63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x443eff...92e166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44a851...072c3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44d9ee...f9249e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44e548...deeed2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44feda...910160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4653fa...f8397c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x466683...118500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4697d8...f4143a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x46ace2...2f4f2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x46af23...1c1942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x481037...9e11b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48c0d4...e62ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48d5f9...b1cad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48fe3a...a483fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x490c8a...a9a0a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x494e3c...70cf68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x496857...834c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49cc72...3e8f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49e963...5ea9b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49fe37...d1b55b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a4dd0...323b3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b41b8...96ad7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b8a7f...30429b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ce960...0a50f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4de2a7...84fd60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4e3d12...822eb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4fc777...0dcc5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4fe85a...16c602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x501885...1c32d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5021c1...f080d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50bbfb...7b8f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x517119...7f4985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x527636...8c6e28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52e189...9490d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52f62d...2a357a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53da67...bee302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5442e3...3f48d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x549110...cdb80b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54fa0f...52f24f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54ff18...db318b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5573e7...3f1ad0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x559ebd...5bdb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55d777...2c955a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5665dc...0e4d56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x569ab6...d23b1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x56cede...38b0ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58c67f...58999d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58da63...92ae84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x59968c...f1bd24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x59a527...e6d4ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a24e8...98dd82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a295f...0c45f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a6823...f1a618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5aa046...920d28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5aac7f...d0df13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b6397...4d9711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5bcfb3...e58d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c4fdc...953a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c7a4c...b78632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c9420...464926` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ee408...17d836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ef401...f8ccd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f7f74...dcf930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5fd658...542e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x600b2e...324266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x604ab9...302f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6104f2...19606f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x61ae41...be5d5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x61da2b...511e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x61ed60...cf3a89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x61f637...f78c96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x621dc8...8fbf4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x629499...d6c12d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x634fee...87e926` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63b32f...cab4ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63babe...fb1f58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63d0fa...a160dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6434c5...56c9ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x643f75...2560da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x649a7e...e7bbe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64ef41...0e00ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x652870...3062a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x653144...224b2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x656891...d99e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x657fff...8290c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65cfca...af024d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x665ccb...001db9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66eee5...168b8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x676a46...d8ea6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67a0dc...f67e8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x681c6e...9e78f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x68f19e...31f631` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69162d...fe3871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a6d11...6a694a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6aa9fb...345a6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6bd58f...0924db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6bdcd4...845a47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c6f89...ca773d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c72f0...34dcb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6cc699...c5f124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6cd343...f28c81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6d6c40...9cd71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e258b...3320ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f6676...129efe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f9775...d9f33e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6fe7b0...8c38da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70e5ff...e622bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x710921...1618fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x718033...79c803` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x72d9d0...3418dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7387eb...702218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x753891...3e808a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x754242...0e64cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75ce9f...d64340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75ed77...13d8fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76004b...4e2c07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76393c...35413a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77584f...827d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77da9a...41a8b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78214f...d5ed50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78543b...a35ce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79203b...4f940d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x793df2...3346f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79ad2a...0c7709` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a3161...9c3049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a5373...14a030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a53c4...8ce8f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7cf24d...ac224c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7d8b5d...b63251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7db940...a9bebf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ddf3c...173a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e2317...49ec7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f51e0...46481c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f5c4f...8a7d18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7fe8f6...fd4751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x801e03...807945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81573c...1e800a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x822da0...cab4df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x827969...1b2b92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82f182...f4c358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x830c49...8721c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x831109...682133` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x836289...ffc9c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8440c5...6ecb77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84ea9a...5c1626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x860dcc...860110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86e7d5...8e6ea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x870bec...f683d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87aab4...e5090f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x886a52...cd7697` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x886ec6...61d182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ae117...9c05f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8bdb0c...d021a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8cbc2a...345a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d9e63...a22ccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ecc3b...a5130e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ed33a...2cf084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f35b2...46d8bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f5a43...88a41a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f7ff7...b55db6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ffb3c...eaefde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9041ff...68d32f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x908046...8f6bc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x90f1cf...5f56e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x918033...080c8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x923fb7...aa35ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92b5c3...992252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93caf7...5afe82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93fe52...8aa464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x94968e...183914` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9749d4...f89282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97ce4c...d49f3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98c2be...b0ff9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x99291e...792d79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x99b43a...3dc34f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9aa76c...0632c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ac820...7c929e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b04ef...ed3234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c5a3c...c2141a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c7258...77cf78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d3e77...36f22a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d9801...13abe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9db0a5...356d98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9dec23...15909f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e1fc0...012725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ec556...124452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f33f4...b7f856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f9083...b5c7c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f9ef2...bc1773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ff7e8...7fd6a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0b60a...f3ae01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa180ef...9da59a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa1a566...c50e07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa1ba6c...4d58c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa1c82c...4a615c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2d94f...836d82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa404dc...86fa1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa5daae...418eb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa5ebd9...909593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6ace9...37178b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6f89b...00e963` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa71531...0e4933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa79e88...4dcd93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7f30f...fabcc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa826e0...a3bc72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa8f9ee...d5ab8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa950b2...458d12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9f7db...1269cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaaa914...e0f929` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaae654...6c6799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab2111...6b9385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xadc3ad...e6cc14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xadd98a...f6df33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xadf354...9c76cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf0376...38250f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaff546...331d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb03d09...fae9d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb0564f...37f981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb0aecc...c10bd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb0b0db...3a1ef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb10719...8dab79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb10975...b37792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb17592...a7e8b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb17f5f...5e0482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb20543...11ccbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb2230d...f5cd5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb29613...2e4740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb3297c...c06f73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb3a86a...f95328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb3b0dd...729362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4c744...224936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4f42f...0ef6d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb58d26...7e3989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb662e9...7b1cc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6dccf...62ce1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb70cd1...f56302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb75a7a...6942be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb7dcd5...52ba52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8c6a4...e48597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8efe4...c622ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb99561...c56771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba3694...9e625e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbab6e4...f8f9e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb2adc...0acd28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb7250...f1787a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb7e77...4d2400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc13bf...5fed5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd4d0a...fb7943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbdc9a7...0a6d04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe9225...70df5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc00ad0...75c718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc0d675...e11027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc11b49...1c5599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc19344...fb7e98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1a579...e407c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1dd0f...205929` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1f3f6...69e70c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc228ac...b868cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2e0c8...0198ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc32f50...9a0c49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc33591...a8c64c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc36a5d...ed45d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3bbff...4cf366` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4325e...88715a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4a020...258493` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5d873...1c9856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5dea5...7260f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc63e18...b1f504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc7bd4a...b5e6e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc82909...2b15a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc84e6b...6527bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc86064...3dd17c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc96452...d9c66d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9ccfa...ebf3d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca70fa...20122d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca8663...ce4020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcaecb2...4a7ca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcbc1aa...c3f792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc3e82...9670bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcca0bb...9da360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd59af...ffdb77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcda584...ced5b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcdd1ee...06c2ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce5125...c7c7ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce66a4...652781` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce6f32...668b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce7d18...0468ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcefee2...18896d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf69c7...05c467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf94f4...2d3db4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf9c40...c2aaf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcfd571...475c7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd05063...17b350` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0aba0...f876da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd114ad...e7f309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd1405a...7b9415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd2c901...ba3ad0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd2e1b2...2fbb4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd3bee2...de8515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd3f940...822803` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4b2ac...085167` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd5c6e5...976779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd60d24...68b46a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd625fb...39dfec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd6de5c...2e7a6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd6f03b...8ff104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd70a0c...35357f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd70fe4...5f2aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd75701...63c091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd75e30...be43a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd76679...747a69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd88be6...8136a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9ab2e...7c6e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9dec6...2fd85e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9e8de...6de66b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9f42f...193a12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9fffa...f8adb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda2728...a33d4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda468c...211fa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc71c5...16c553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd0cfa...08dd0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd2c32...9369b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd8883...de4bbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde2aa2...184e51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde8122...eb359d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdedebc...2303a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdffeff...c0bce1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe0368c...02f737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe039e4...200d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1842f...f1e202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1c349...030de6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe23992...df3f5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2ebbb...4f2562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2f506...f5054e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe30263...6610de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe32b21...2f70d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe36616...f270ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe3d152...95e19e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe424d4...1e0e25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe53b14...a40a85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe53d72...046d53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe5ccd8...de82a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe62fad...116cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe71c89...1c6b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe74152...868627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe80dda...6dd17b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe90515...bff605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe97183...50901a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe99331...5da9ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe9b863...91843f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe9d161...2d7b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea6e10...0f1a18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeaa2c8...5fe8aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb4158...918316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebb8af...227cee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebc85f...6f3fa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebebf6...ae8260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xec6d6c...1d3f22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeccf36...51244b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xece5ce...e0cb62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xed1127...0116de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeea2d5...1ca3e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xef8207...ce54d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xefd81f...2c783d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf02f6f...795b8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf06018...d2fa75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0b521...04c468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf12435...59edf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf1b29b...c413ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf1fc4b...644fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf259cd...83be30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4169b...dc8984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4453a...a572e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf56986...84c6d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf5d498...845bd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf5e4e5...c4fc09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf64682...4db068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf69750...215804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf6a675...41c165` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf6d0ed...593b8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf6f19b...a690a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf70092...28faba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf759c9...07bbeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf87b2f...e69518` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf883b6...8ea2bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf8fea9...013c40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf91621...c8f79f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf98579...4d5566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9b6b8...bfee12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa3941...a91232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfae389...116b5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb5e4c...ba86dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc29c7...34eb83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfcbfc6...6d5954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfcdaf1...d7017d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd3724...b4f689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfdad1f...9794dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe5310...97c17c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfea5fc...867b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xffb385...3355ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xffca99...6669cf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf](https://github.com/UmamiDAO/audits/blob/main/UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 28 | n/a |
| [spaces/U7Q6UV6CGLwU33vLuGwo/uploads/tzTGuvytvqAikGukksoj/eGMX Exit Tech Audit Report.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FU7Q6UV6CGLwU33vLuGwo%2Fuploads%2FtzTGuvytvqAikGukksoj%2FeGMX%20Exit%20Tech%20Audit%20Report.pdf?alt=media) | unknown | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [spaces/MxcGyx5kIW5oBPBlyRqM/uploads/graEwSrcK8twmgCxivTx/Umami Audit.pdf](https://2316168122-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FMxcGyx5kIW5oBPBlyRqM%2Fuploads%2FgraEwSrcK8twmgCxivTx%2FUmami%20Audit.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [spaces/MxcGyx5kIW5oBPBlyRqM/uploads/wpi8lo0iYzlsGyFzSXsR/Umami DAO - mUMAMI (Zokyo).pdf](https://2316168122-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FMxcGyx5kIW5oBPBlyRqM%2Fuploads%2Fwpi8lo0iYzlsGyFzSXsR%2FUmami%20DAO%20-%20mUMAMI%20(Zokyo).pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [spaces/MxcGyx5kIW5oBPBlyRqM/uploads/rmEbxybwXnR3s1rkCk0k/Umami DAO - cmUMAMI (Zokyo).pdf](https://2316168122-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FMxcGyx5kIW5oBPBlyRqM%2Fuploads%2FrmEbxybwXnR3s1rkCk0k%2FUmami%20DAO%20-%20cmUMAMI%20(Zokyo).pdf) | unknown | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf](https://2316168122-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FMxcGyx5kIW5oBPBlyRqM%2Fuploads%2FBBYm4TbSjsNSCVFacoEm%2FUmami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 36 | high |
| [spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf](https://2316168122-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FMxcGyx5kIW5oBPBlyRqM%2Fuploads%2FmmWuHBOPwbdZAMEZaULv%2FUmami_Final_Report.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 28 | high |
| [omniscia.io/reports/vendor-finance-specialized-upgradeability-implementation](https://omniscia.io/reports/vendor-finance-specialized-upgradeability-implementation) | Omniscia | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [9557] UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf — no match: No reason recorded
- [14272] spaces/U7Q6UV6CGLwU33vLuGwo/uploads/tzTGuvytvqAikGukksoj/eGMX Exit Tech Audit Report.pdf — no match: Extracted contract names from audit report scope and findings. Audit date from cover page.
- [14273] spaces/MxcGyx5kIW5oBPBlyRqM/uploads/graEwSrcK8twmgCxivTx/Umami Audit.pdf — no match: Scope explicitly lists UMAMI.sol; other contracts/libraries appear in findings as audited targets.
- [14274] spaces/MxcGyx5kIW5oBPBlyRqM/uploads/wpi8lo0iYzlsGyFzSXsR/Umami DAO - mUMAMI (Zokyo).pdf — no match: Contracts listed in scope section with .soc and .sol extensions; date from cover page.
- [14275] spaces/MxcGyx5kIW5oBPBlyRqM/uploads/rmEbxybwXnR3s1rkCk0k/Umami DAO - cmUMAMI (Zokyo).pdf — no match: Two contracts explicitly listed in scope. Audit date found on cover page: 'November 23rd, 2022'.
- [14276] spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf — no match: All contracts listed in the scope section of the audit report.
- [14277] spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf — no match: Extracted 28 contract names from the audit scope table on pages 5-6. The audit date is explicitly stated as 'Final Report Date January 10, 2024' on the cover page.
- [14278] omniscia.io/reports/vendor-finance-specialized-upgradeability-implementation — no match: All contracts listed in the 'Contracts Assessed' and 'Files in Scope' sections.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | AggregateVault | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | AggregateVaultStorage | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | AssetVault | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | BaseHandler | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | BasePositionManager | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | BaseSwapManager | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | BaseWrapper | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | ChainlinkWrapper | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | GlpHandler | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | GlpPricing | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | GlpRebalanceRouter | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | GmxPositionManager | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | GmxSwapManager | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | Multicall | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | NettedPositionTracker | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | NettingMath | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | OneInchSwapManager | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | PositionManagerRouter | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | PositionMath | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | ShareMath | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | Solarray | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | SwapLibrary | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | TimeoutChecker | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | UmamiPriceFeed | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | VaultFeeManager | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | VaultLifecycle | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | VaultMath | unmatched — not counted | — | — | no |
| UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf | VaultStorage | unmatched — not counted | — | — | no |
| spaces/U7Q6UV6CGLwU33vLuGwo/uploads/tzTGuvytvqAikGukksoj/eGMX Exit Tech Audit Report.pdf | ExitVault | unmatched — not counted | — | listed in scope and findings | no |
| spaces/U7Q6UV6CGLwU33vLuGwo/uploads/tzTGuvytvqAikGukksoj/eGMX Exit Tech Audit Report.pdf | ExitVaultEntryPoint | unmatched — not counted | — | listed in scope and findings | no |
| spaces/U7Q6UV6CGLwU33vLuGwo/uploads/tzTGuvytvqAikGukksoj/eGMX Exit Tech Audit Report.pdf | ExitVaultStorage | unmatched — not counted | — | mentioned in findings | no |
| spaces/U7Q6UV6CGLwU33vLuGwo/uploads/tzTGuvytvqAikGukksoj/eGMX Exit Tech Audit Report.pdf | TokenVester | unmatched — not counted | — | mentioned in findings | no |
| spaces/U7Q6UV6CGLwU33vLuGwo/uploads/tzTGuvytvqAikGukksoj/eGMX Exit Tech Audit Report.pdf | Pause | unmatched — not counted | — | mentioned in findings | no |
| spaces/U7Q6UV6CGLwU33vLuGwo/uploads/tzTGuvytvqAikGukksoj/eGMX Exit Tech Audit Report.pdf | Constants | unmatched — not counted | — | mentioned in findings | no |
| spaces/U7Q6UV6CGLwU33vLuGwo/uploads/tzTGuvytvqAikGukksoj/eGMX Exit Tech Audit Report.pdf | GMXYieldStrategy | unmatched — not counted | — | mentioned in finding C-01 | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/graEwSrcK8twmgCxivTx/Umami Audit.pdf | UMAMI | unmatched — not counted | — | listed in scope as UMAMI.sol | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/graEwSrcK8twmgCxivTx/Umami Audit.pdf | VaultOwned | unmatched — not counted | — | mentioned in findings as contract VaultOwned | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/graEwSrcK8twmgCxivTx/Umami Audit.pdf | Counters | unmatched — not counted | — | mentioned in findings as library Counters | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/graEwSrcK8twmgCxivTx/Umami Audit.pdf | SafeMath | unmatched — not counted | — | mentioned in findings as library SafeMath | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/graEwSrcK8twmgCxivTx/Umami Audit.pdf | ERC20 | unmatched — not counted | — | mentioned in findings as contract ERC20 | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/wpi8lo0iYzlsGyFzSXsR/Umami DAO - mUMAMI (Zokyo).pdf | hMarinateReceiver | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/wpi8lo0iYzlsGyFzSXsR/Umami DAO - mUMAMI (Zokyo).pdf | hMarinateV2 | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/wpi8lo0iYzlsGyFzSXsR/Umami DAO - mUMAMI (Zokyo).pdf | hContractWhitelist | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/rmEbxybwXnR3s1rkCk0k/Umami DAO - cmUMAMI (Zokyo).pdf | MarinateStrategyFarm | unmatched — not counted | — | listed in scope section: 'Within the scope of this audit, Zokyo auditors have reviewed the following contract(s): MarinateStrategyFarm.sol' | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/rmEbxybwXnR3s1rkCk0k/Umami DAO - cmUMAMI (Zokyo).pdf | MarinateAutoCompounder | unmatched — not counted | — | listed in scope section: 'Within the scope of this audit, Zokyo auditors have reviewed the following contract(s): MarinateAutoCompounders.sol' | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | BaseHandler | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | GlpHandler | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | BasePositionManager | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | GmxPositionManager | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | PositionManagerRouter | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | BaseSwapManager | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | GmxSwapManager | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | OneInchSwapManager | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | GlpPricing | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | NettingMath | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | ShareMath | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | SwapLibrary | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | VaultLifecycle | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | VaultStorage | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | PositionMath | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | Solarray | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | TimeoutChecker | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | VaultMath | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | BaseWrapper | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | ChainlinkWrapper | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | UmamiPriceFeed | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | GlpRebalanceRouter | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | NettedPositionTracker | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | VaultFeeManager | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | AggregateVaultStorage | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | AggregateVault | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | AssetVault | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | AavePositionManager | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | AaveIsolatedPositionAccount | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | AaveUtils | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | GmxAccountManager | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | GmxPositionManagerStorage | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | GmxPositionManagerUtils | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | OdosSwapManger | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf | CorrelationRegistry | unmatched — not counted | — | listed in scope | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | Auth | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | GmxFeeReader | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | NettedPositionTracker | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | Pricing | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | GmxStorage | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | Multicall | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | Delegatecall | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | LibAggregateVaultUtils | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | LibCycle | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | PriceCast | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | NettingMath | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | AggregateVaultStorage | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | AssetVault | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | AggregateVault | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | BaseVault | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | BaseHandler | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | GMI | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | GmiV2Handler | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | GmiStorage | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | GmiUtils | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | VaultFees | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | StorageViewer | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | AggregateVaultHelper | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | GmxV2Handler | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | Emitter | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | RequestHandler | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | HookHandler | unmatched — not counted | — | listed in scope table | no |
| spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf | PausableVault | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/vendor-finance-specialized-upgradeability-implementation | Address | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/vendor-finance-specialized-upgradeability-implementation | Context | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/vendor-finance-specialized-upgradeability-implementation | Initializable | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/vendor-finance-specialized-upgradeability-implementation | LendingPoolImplementation | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/vendor-finance-specialized-upgradeability-implementation | Ownable | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/vendor-finance-specialized-upgradeability-implementation | OwnableInit | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/vendor-finance-specialized-upgradeability-implementation | SafeERC20 | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/vendor-finance-specialized-upgradeability-implementation | VendorOracle | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/vendor-finance-specialized-upgradeability-implementation | VendorFeesManager | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/vendor-finance-specialized-upgradeability-implementation | VendorPoolFactory | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/vendor-finance-specialized-upgradeability-implementation | VendorLicenseEngine | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 70 |
| upstream | 10 |
| standard_library | 6 |
| needs_review | 552 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 120 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7
- Match method counts: n/a

Zero-match audit list:

- [9557] UmamiDAO_GLP_Vaults_Initial_Audit_04_19_2023.pdf
- [14272] spaces/U7Q6UV6CGLwU33vLuGwo/uploads/tzTGuvytvqAikGukksoj/eGMX Exit Tech Audit Report.pdf
- [14273] spaces/MxcGyx5kIW5oBPBlyRqM/uploads/graEwSrcK8twmgCxivTx/Umami Audit.pdf
- [14274] spaces/MxcGyx5kIW5oBPBlyRqM/uploads/wpi8lo0iYzlsGyFzSXsR/Umami DAO - mUMAMI (Zokyo).pdf
- [14275] spaces/MxcGyx5kIW5oBPBlyRqM/uploads/rmEbxybwXnR3s1rkCk0k/Umami DAO - cmUMAMI (Zokyo).pdf
- [14276] spaces/MxcGyx5kIW5oBPBlyRqM/uploads/BBYm4TbSjsNSCVFacoEm/Umami_GLP_Vaults_Zokyo_audit_report_June16_2023.pdf
- [14277] spaces/MxcGyx5kIW5oBPBlyRqM/uploads/mmWuHBOPwbdZAMEZaULv/Umami_Final_Report.pdf
- [14278] omniscia.io/reports/vendor-finance-specialized-upgradeability-implementation

Fork inheritance lineage and inherited audits are included when available.
