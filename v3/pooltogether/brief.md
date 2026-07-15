# Agentic Audit Brief: PoolTogether

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 16 (1 matched; 15 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: PoolTogether (`pooltogether`)
- Website: [https://pooltogether.com/](https://pooltogether.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, celo, ethereum, gnosis, optimism, polygon, scroll
- Contract surface: 266 unique implementations (479 raw deployments)
- Coverage basis: 1/88 confirmed own live verified implementations (1.1%); conservative 1.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $8,728,463.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for PoolTogether. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 103 contract row(s) across arbitrum, avalanche, base, ethereum, gnosis, optimism, polygon, scroll. Structural roles: 48 supporting, 33 core, 22 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 103
- Structural roles: supporting (48), core (33), unclassified (22)
- Contract kinds: contract (103)
- Detected standards: multicall (10), erc20 (8), erc4626 (6), erc20permit (5), ownable (5), erc165 (2)
- Frameworks: openzeppelin (62), prb-math (38), solmate (9), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 89 contracts are derived from known codebases. 89 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0d51a3...a71dd9`, chain 534352)
- UnnamedContract (`0x3fdd8b...3a30a5`, chain 534352)
- UnnamedContract (`0x5ec48e...14537d`, chain 534352)
- UnnamedContract (`0x8cffff...58d832`, chain 534352)
- UnnamedContract (`0x9cfe09...e38f66`, chain 534352)
- UnnamedContract (`0xa6ecd6...899845`, chain 534352)
- UnnamedContract (`0xeb436b...0392a3`, chain 534352)
- UnnamedContract (`0xf17d29...6de152`, chain 534352)
- Claimer (`0x54aa02...126c7d`, chain 1)
- Claimer (`0x0b5a1d...bd8438`, chain 10)
- Claimer (`0x220c93...3b8d90`, chain 10)
- Claimer (`0x0cffb7...b0bbfa`, chain 100)
- Claimer (`0x5ffeee...5e1e87`, chain 8453)
- Claimer (`0xcdce63...5547ba`, chain 8453)
- Claimer (`0x1e68e5...23e571`, chain 42161)
- Claimer (`0xbea383...317c73`, chain 42161)
- Claimer (`0xb04d5c...f00285`, chain 534352)
- ClonableBeaconProxy (`0xcf934e...b5b79c`, chain 42161)
- DrawManager (`0x98305e...c675a7`, chain 1)
- DrawManager (`0x7eed74...641857`, chain 10)
- DrawManager (`0x146efc...d09067`, chain 100)
- DrawManager (`0x8a2782...af6ab0`, chain 8453)
- DrawManager (`0xc00146...cd37e6`, chain 42161)
- DrawManager (`0xa75474...69ddf2`, chain 534352)
- EzDepositor (`0x84882e...1c062f`, chain 1)
- EzDepositor (`0x68a100...c2f18b`, chain 10)
- EzDepositor (`0x69fc80...3c37ef`, chain 100)
- EzDepositor (`0x4e30c0...a996f4`, chain 8453)
- EzDepositor (`0x5f9292...4da397`, chain 42161)
- EzDepositor (`0xbdf6bd...8a34c8`, chain 534352)
- L2StandardERC20 (`0x395ae5...d4e125`, chain 10)
- OptimismMintableERC20 (`0xd652c5...8fafc3`, chain 8453)
- Pool (`0x0cec1a...e6844e`, chain 1)
- PrizePool (`0x7865d0...354d95`, chain 1)
- PrizePool (`0xf35fe1...e29b55`, chain 10)
- PrizePool (`0x0c08c2...18120f`, chain 100)
- PrizePool (`0x45b201...3732cb`, chain 8453)
- PrizePool (`0x52e791...bc5d42`, chain 42161)
- PrizePoolTwabRewards (`0x3341da...a11d79`, chain 1)
- PrizePoolTwabRewards (`0x36be31...ec66c6`, chain 10)
- PrizePoolTwabRewards (`0x0d51a3...a71dd9`, chain 100)
- PrizePoolTwabRewards (`0xf4c47d...576bbf`, chain 8453)
- PrizePoolTwabRewards (`0x0d51a3...a71dd9`, chain 42161)
- PrizeVault (`0x9ee31e...c75573`, chain 1)
- PrizeVault (`0xa52e38...3e5e1f`, chain 10)
- PrizeVault (`0xb75af2...8b35cf`, chain 100)
- PrizeVault (`0x6b5a5c...f7e4dd`, chain 8453)
- PrizeVault (`0x97a9c0...1e8c95`, chain 42161)
- PrizeVault (`0x29499e...b1fa9b`, chain 534352)
- PrizeVaultFactory (`0xd499cc...dde7c3`, chain 1)
- PrizeVaultFactory (`0xec9f59...656775`, chain 10)
- PrizeVaultFactory (`0xc3ae3f...31e2a6`, chain 100)
- PrizeVaultFactory (`0xa55a74...d444bf`, chain 8453)
- PrizeVaultFactory (`0x8020fb...045e52`, chain 42161)
- RngWitnet (`0xf93329...dea215`, chain 1)
- RngWitnet (`0x3d2ef6...96aa7b`, chain 10)
- RngWitnet (`0x47c921...df1123`, chain 100)
- RngWitnet (`0x74ebf3...9d18f0`, chain 8453)
- RngWitnet (`0xad1b8e...dc107b`, chain 42161)
- RngWitnet (`0x4d971a...94f608`, chain 534352)
- ScrollStandardERC20 (`0xf9af83...a0f2b7`, chain 534352)
- TokenProxy (`0x216a7d...cdc660`, chain 100)
- TpdaLiquidationPairFactory (`0xa99b3a...a43908`, chain 1)
- TpdaLiquidationPairFactory (`0x80f866...77c7d1`, chain 10)
- TpdaLiquidationPairFactory (`0xbddd23...76368a`, chain 100)
- TpdaLiquidationPairFactory (`0x8557a9...8374ea`, chain 8453)
- TpdaLiquidationPairFactory (`0x163402...2dfd3f`, chain 42161)
- TpdaLiquidationRouter (`0x7c210b...192ea0`, chain 1)
- TpdaLiquidationRouter (`0x7766b5...876136`, chain 10)
- TpdaLiquidationRouter (`0x166448...d006c9`, chain 100)
- TpdaLiquidationRouter (`0xa9c937...dfc22c`, chain 8453)
- TpdaLiquidationRouter (`0x7b4a60...67db73`, chain 42161)
- TpdaLiquidationRouter (`0x6f0b0a...d6ef7b`, chain 534352)
- TwabController (`0x4d5f2c...7b4acc`, chain 1)
- TwabController (`0xcb0672...3be167`, chain 10)
- TwabController (`0x84090a...8afde6`, chain 100)
- TwabController (`0x7e6360...4f44c6`, chain 8453)
- TwabController (`0x971ecc...14dc75`, chain 42161)
- TwabRewards (`0x2589ff...2f1a21`, chain 1)
- TwabRewards (`0x90d383...3ea9ea`, chain 10)
- TwabRewards (`0x174215...276942`, chain 100)
- TwabRewards (`0x86f092...f2dc09`, chain 8453)
- TwabRewards (`0xe21ac3...9c59be`, chain 42161)
- TwabRewards (`0x0e71a9...48780d`, chain 534352)
- VaultBoosterFactory (`0x31ec88...f483e8`, chain 1)
- VaultBoosterFactory (`0x858029...67f88c`, chain 10)
- VaultBoosterFactory (`0x8cffff...58d832`, chain 100)
- VaultBoosterFactory (`0xa2ba3d...550ec2`, chain 8453)
- VaultBoosterFactory (`0x8cffff...58d832`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 103; live-surface rows included: 103 (91 live, 12 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 99/112 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/88 (1.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 96 own, 16 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 154 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 99 of 266 unique; 167 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/208
- Verified + Unaudited implementations: 207
- Verified by bytecode match: 0
- Unverified implementations: 58
- Unique implementations: 266
- Raw deployments: 479
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 12 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 1.1% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 1 | 0.5% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PrizeVault | core_logic | project_anchor | own_supporting | 0 | optimism | unit-251870 | `0xa52e38...3e5e1f` | ✅ Audited |

### ⚠️ Verified + Unaudited (207)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3ERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x964356...afe307`; optimism `0xdc1056...c6f3c9` | ⚠️ Unaudited |
| AddressRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4658f7...fd351f` | ⚠️ Unaudited |
| AToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbcca60...96263c` | ⚠️ Unaudited |
| AToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1a13f4...998b7f` | ⚠️ Unaudited |
| AToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x46a511...e4a857` | ⚠️ Unaudited |
| ATokenYieldSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x32e8d4...b03a64`; polygon `0xd4f6d5...fb5b9c`; avalanche `0x4fb917...f41051`; avalanche `0x5d0d2b...0f5f66`; avalanche `0x7437db...9648ff` | ⚠️ Unaudited |
| AutonomousPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x188f93...cd3bfc`; ethereum `0x21fbc6...1eacc4` | ⚠️ Unaudited |
| Claimer | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-251843 | `0x54aa02...126c7d` | ⚠️ Unaudited |
| Claimer | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251854 | `0x0b5a1d...bd8438` | ⚠️ Unaudited |
| Claimer | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-251856 | `0x220c93...3b8d90` | ⚠️ Unaudited |
| Claimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x2589ff...2f1a21`; optimism `0x47b557...625f70` | ⚠️ Unaudited |
| Claimer | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-251876 | `0x0cffb7...b0bbfa` | ⚠️ Unaudited |
| Claimer | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-251930 | `0x5ffeee...5e1e87` | ⚠️ Unaudited |
| Claimer | operational_periphery | project_anchor | own_supporting | 0 | base | unit-251942 | `0xcdce63...5547ba` | ⚠️ Unaudited |
| Claimer | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251893 | `0x1e68e5...23e571` | ⚠️ Unaudited |
| Claimer | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-251905 | `0xbea383...317c73` | ⚠️ Unaudited |
| Claimer | operational_periphery | project_anchor | own_supporting | 0 | scroll | unit-251922 | `0xb04d5c...f00285` | ⚠️ Unaudited |
| ClaimerFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251852 | `0xd84c4c...679e80` | ⚠️ Unaudited |
| ClaimerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: ethereum `0x445702...6a7088`; ethereum `0x7a856d...6b152d`; optimism `0x34a146...e2aa8c`; optimism `0xcfedfb...d9e923`; optimism `0xef366c...64605f` | ⚠️ Unaudited |
| ClaimerFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251861 | `0x498c92...3f4794` | ⚠️ Unaudited |
| ClaimerFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-251869 | `0x94f51a...779cc3` | ⚠️ Unaudited |
| ClaimerFactory | unknown | project_anchor | own_supporting | 0 | gnosis | unit-251881 | `0x22e385...9ea47e` | ⚠️ Unaudited |
| ClaimerFactory | unknown | project_anchor | own_supporting | 0 | base | unit-251934 | `0x804657...21c63c` | ⚠️ Unaudited |
| ClaimerFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-251943 | `0xd58a04...1401e3` | ⚠️ Unaudited |
| ClaimerFactory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251898 | `0x64e77e...4de554` | ⚠️ Unaudited |
| ClaimerFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251907 | `0xc4824b...0757da` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4027de...892668` | ⚠️ Unaudited |
| ConfigurableReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdecd3c...4604d3` | ⚠️ Unaudited |
| ControlledTokenBuilder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x03e75a...f0dbf7`; ethereum `0x3e3a09...543c53`; ethereum `0xaf0063...57f11d`; ethereum `0xf5ff8c...ad59cc`; polygon `0x317625...4277f7`; polygon `0x42ad7b...48fb4d`; polygon `0xef3d36...495cd2` | ⚠️ Unaudited |
| ControlledTokenProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: ethereum `0x97cbd3...fc70c7`; ethereum `0xa743f8...0ce727`; ethereum `0xdd8f31...f3892e`; ethereum `0xfb932b...d69ba1`; polygon `0x08411a...56c9cc`; polygon `0x59b34c...e5eb94`; polygon `0xaa4e28...2dc4f9` | ⚠️ Unaudited |
| DailyDoubleHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe34def...f19fbd` | ⚠️ Unaudited |
| DirectContributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x363b7a...65b516`; base `0x663dc6...85fbfe`; arbitrum `0x9527b4...999a54` | ⚠️ Unaudited |
| DrawBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d3361...decac5` | ⚠️ Unaudited |
| DrawBuffer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: ethereum `0x78ea5a...1f19d4`; polygon `0x44b1d6...392f44`; avalanche `0x31bcaf...a7db2e`; avalanche `0xe3e706...b8ec43` | ⚠️ Unaudited |
| DrawCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: ethereum `0x14d067...292730`; polygon `0x3976bd...839a24`; avalanche `0x0f5f5e...392a47`; avalanche `0x577488...cd45f0` | ⚠️ Unaudited |
| DrawCalculatorTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: ethereum `0x6ab2c4...261c15`; polygon `0x676a54...9c7484`; avalanche `0x01ee1e...c3c2ba`; avalanche `0x3fb69b...f95335`; avalanche `0xf1f789...35141c` | ⚠️ Unaudited |
| DrawDispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac4ff3...70a064` | ⚠️ Unaudited |
| DrawManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0aa9e2...0ab98d`; optimism `0x7e8e79...4f0940` | ⚠️ Unaudited |
| DrawManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-251848 | `0x98305e...c675a7` | ⚠️ Unaudited |
| DrawManager | governance | project_anchor | own_supporting | 0 | optimism | unit-251865 | `0x7eed74...641857` | ⚠️ Unaudited |
| DrawManager | governance | project_anchor | own_supporting | 0 | gnosis | unit-251878 | `0x146efc...d09067` | ⚠️ Unaudited |
| DrawManager | governance | project_anchor | own_supporting | 0 | base | unit-251938 | `0x8a2782...af6ab0` | ⚠️ Unaudited |
| DrawManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-251906 | `0xc00146...cd37e6` | ⚠️ Unaudited |
| DrawManager | governance | project_anchor | own_supporting | 0 | scroll | unit-251921 | `0xa75474...69ddf2` | ⚠️ Unaudited |
| EIP2612PermitAndDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xbe3061...478dfb`; avalanche `0xc660a8...2a3648` | ⚠️ Unaudited |
| ERC721ControlledFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e869b...745fb3` | ⚠️ Unaudited |
| ERC721Ownable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5b840...300288` | ⚠️ Unaudited |
| EzDepositor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251847 | `0x84882e...1c062f` | ⚠️ Unaudited |
| EzDepositor | unknown | project_anchor | own_supporting | 0 | optimism | unit-251862 | `0x68a100...c2f18b` | ⚠️ Unaudited |
| EzDepositor | unknown | project_anchor | own_supporting | 0 | gnosis | unit-251883 | `0x69fc80...3c37ef` | ⚠️ Unaudited |
| EzDepositor | unknown | project_anchor | own_supporting | 0 | base | unit-251929 | `0x4e30c0...a996f4` | ⚠️ Unaudited |
| EzDepositor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251897 | `0x5f9292...4da397` | ⚠️ Unaudited |
| EzDepositor | unknown | project_anchor | own_supporting | 0 | scroll | unit-251923 | `0xbdf6bd...8a34c8` | ⚠️ Unaudited |
| FireFighterClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1a7cf7...8657e5` | ⚠️ Unaudited |
| FixedPriceLiquidationPairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1739e...f8e606` | ⚠️ Unaudited |
| FixedPriceLiquidationRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91b718...75d43c` | ⚠️ Unaudited |
| GenericSwapperHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa0cf64...bc4985` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3a871...0187f0` | ⚠️ Unaudited |
| GpBoostHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: ethereum `0x6be9c2...4ab076`; optimism `0xdeef91...d20ba7`; gnosis `0x65f3ae...b1c626`; base `0x327b2e...0a58c6`; arbitrum `0x1dcfb8...202e12` | ⚠️ Unaudited |
| L1TimelockTrigger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc90a7...351f94` | ⚠️ Unaudited |
| L2StandardERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-251859 | `0x395ae5...d4e125` | ⚠️ Unaudited |
| L2TimelockTrigger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc366bf...46138e` | ⚠️ Unaudited |
| LiquidationPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc14e8c...4de853` | ⚠️ Unaudited |
| LiquidationPairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x555bd8...de8093`; optimism `0x8aa2a1...9ab1a5`; optimism `0x9428f4...a3158e`; optimism `0xa1697e...65650a`; optimism `0xcb54fc...3b9f6f` | ⚠️ Unaudited |
| LiquidationProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xc57e4f...4f83cd`; optimism `0xcb1b03...f549ce` | ⚠️ Unaudited |
| LiquidationRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xb9fba7...b68b95`; optimism `0xf4cfa5...1983f5` | ⚠️ Unaudited |
| LootBoxController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2c2a96...1d8a24`; ethereum `0x629bd2...3e2daa` | ⚠️ Unaudited |
| LootBoxPrizeStrategyListenerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25e6a7...d0b7ea` | ⚠️ Unaudited |
| MatchingAssetFlashLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x29c102...87a75f`; optimism `0x7865d0...354d95` | ⚠️ Unaudited |
| MCDAwarePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x166e6c...d77dc7` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe1a33...97016f` | ⚠️ Unaudited |
| MessageDispatcherOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2a34e6...f0683f`; ethereum `0xa8f85b...88cd9d` | ⚠️ Unaudited |
| MigrateV2ToV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x071911...1081a0`; ethereum `0x45a930...ab06ea`; ethereum `0x801b48...62972a`; ethereum `0x974c73...c83c4b` | ⚠️ Unaudited |
| MultipleWinnersBuilder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x10f61a...efaaa3`; ethereum `0x3a1bc6...15446e`; ethereum `0xf438bc...3fc5e5`; ethereum `0xf843d5...014526`; polygon `0x72edd5...5d5f90`; polygon `0xd1a651...2ed5a0` | ⚠️ Unaudited |
| MultipleWinnersProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x4cb2f9...ca4d73`; ethereum `0x734e67...f5ae70`; ethereum `0xb789b7...b58475`; ethereum `0xf273ef...1f1522`; polygon `0xdc488e...1401df`; polygon `0xf3317f...d07cc7` | ⚠️ Unaudited |
| MultiTokenListener | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x04458b...00d022`; polygon `0x8a4416...0087b2` | ⚠️ Unaudited |
| NftChanceBoosterHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: optimism `0x7f15d9...ab9a95`; base `0x26158d...4398c1`; base `0x519bdf...f2e299`; base `0x81b743...4ba620`; base `0x83cbc0...daef32`; arbitrum `0x2fb736...039ea9` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-251944 | `0xd652c5...8fafc3` | ⚠️ Unaudited |
| PermitAndDepositDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x71fc2e...f8a70c`; ethereum `0x8a4416...0087b2`; ethereum `0xdcc0d0...8f65a0`; ethereum `0xe539c8...02fbff` | ⚠️ Unaudited |
| PermittableToken | token | project_anchor | own_supporting | 1 | gnosis | unit-251947 | `0x216a7d...cdc660` | ⚠️ Unaudited |
| PodsUpkeep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddf547...cdb72e` | ⚠️ Unaudited |
| Pool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251837 | `0x0cec1a...e6844e` | ⚠️ Unaudited |
| PoolWithMultipleWinnersBuilder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x39e2f3...e4e9c7`; ethereum `0x8f2450...3bb27d`; ethereum `0xad1c62...7d2f2d`; ethereum `0xbeb9d5...da1e7a`; ethereum `0xd1e536...77e28c`; ethereum `0xda6481...7f9770`; polygon `0x5effa0...e1f9f4`; polygon `0x920bd7...b86a2c` | ⚠️ Unaudited |
| PoolyNFT | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x354519...3d00a9`; ethereum `0x5663e3...058523`; ethereum `0x90b383...56d6ed` | ⚠️ Unaudited |
| PrizeBoostHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x177b14...62e55c` | ⚠️ Unaudited |
| PrizeChunker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: ethereum `0x239fc7...34fa6b`; ethereum `0x526396...bcc2fa`; ethereum `0x89bf5a...f16dbd`; polygon `0x14e194...7aa454`; polygon `0xc74687...1ad933`; polygon `0xd02d19...dc3470` | ⚠️ Unaudited |
| PrizeDistributionBuffer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: ethereum `0xf025a8...7c6577`; polygon `0xcf6030...7125a3`; avalanche `0x748f6d...fa563b`; avalanche `0xc8faa3...77eccb` | ⚠️ Unaudited |
| PrizeDistributionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x13bef5...576e33`; avalanche `0x87fcf3...f0dd37`; avalanche `0x8bc2cb...984383`; avalanche `0xd35108...6d747a` | ⚠️ Unaudited |
| PrizeDistributionFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x032ba4...1152a1` | ⚠️ Unaudited |
| PrizeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0xb9a179...495efe`; polygon `0x8141bc...9b9056`; avalanche `0x83332f...73f3d1`; avalanche `0xc5d862...65ae38` | ⚠️ Unaudited |
| PrizeFlush | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: ethereum `0x2193b2...fbc888`; polygon `0xa23424...3b305d`; avalanche `0x1896ea...aff385`; avalanche `0x1b2099...9dd051` | ⚠️ Unaudited |
| PrizePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251845 | `0x7865d0...354d95` | ⚠️ Unaudited |
| PrizePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: ethereum `0xa6bff8...39cbec`; optimism `0x8cffff...58d832`; optimism `0xc6ae7d...48042d`; optimism `0xe32e5e...000d6a` | ⚠️ Unaudited |
| PrizePool | core_logic | project_anchor | own_supporting | 0 | optimism | unit-251874 | `0xf35fe1...e29b55` | ⚠️ Unaudited |
| PrizePool | core_logic | project_anchor | own_supporting | 0 | gnosis | unit-251875 | `0x0c08c2...18120f` | ⚠️ Unaudited |
| PrizePool | core_logic | project_anchor | own_supporting | 0 | base | unit-251928 | `0x45b201...3732cb` | ⚠️ Unaudited |
| PrizePool | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-251895 | `0x52e791...bc5d42` | ⚠️ Unaudited |
| PrizePoolTwabRewards | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251840 | `0x3341da...a11d79` | ⚠️ Unaudited |
| PrizePoolTwabRewards | core_logic | project_anchor | own_supporting | 0 | optimism | unit-251858 | `0x36be31...ec66c6` | ⚠️ Unaudited |
| PrizePoolTwabRewards | core_logic | project_anchor | own_supporting | 0 | gnosis | unit-251877 | `0x0d51a3...a71dd9` | ⚠️ Unaudited |
| PrizePoolTwabRewards | core_logic | project_anchor | own_supporting | 0 | base | unit-251946 | `0xf4c47d...576bbf` | ⚠️ Unaudited |
| PrizePoolTwabRewards | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-251891 | `0x0d51a3...a71dd9` | ⚠️ Unaudited |
| PrizeSplitStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x47a5ab...259136`; polygon `0x879e17...35858d`; avalanche `0xa30cb2...2547ec`; avalanche `0xb26318...58b807` | ⚠️ Unaudited |
| PrizeStakingVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x8f11cb...f18389`; optimism `0x7c4626...02acf3`; base `0x48492f...dcc037`; arbitrum `0x9468ea...3f3f20` | ⚠️ Unaudited |
| PrizeTierHistory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: ethereum `0xdd1cba...67f80d`; avalanche `0x51d722...1f52c4`; avalanche `0xad9f8f...7012e8`; avalanche `0xc3dad5...4903b6`; avalanche `0xd20fbf...ba2dd3`; avalanche `0xee4530...20e8c9` | ⚠️ Unaudited |
| PrizeTierHistoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63c82b...4c8aaa` | ⚠️ Unaudited |
| PrizeVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251849 | `0x9ee31e...c75573` | ⚠️ Unaudited |
| PrizeVault | core_logic | project_anchor | own_supporting | 0 | gnosis | unit-251887 | `0xb75af2...8b35cf` | ⚠️ Unaudited |
| PrizeVault | core_logic | project_anchor | own_supporting | 0 | base | unit-251931 | `0x6b5a5c...f7e4dd` | ⚠️ Unaudited |
| PrizeVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-251903 | `0x97a9c0...1e8c95` | ⚠️ Unaudited |
| PrizeVault | core_logic | project_anchor | own_supporting | 0 | scroll | unit-251912 | `0x29499e...b1fa9b` | ⚠️ Unaudited |
| PrizeVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x29c102...87a75f`; ethereum `0xed49a9...a154a7` | ⚠️ Unaudited |
| PrizeVaultFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-251851 | `0xd499cc...dde7c3` | ⚠️ Unaudited |
| PrizeVaultFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251855 | `0x0c379e...4dfd39` | ⚠️ Unaudited |
| PrizeVaultFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-251872 | `0xec9f59...656775` | ⚠️ Unaudited |
| PrizeVaultFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251873 | `0xf0f151...0ea806` | ⚠️ Unaudited |
| PrizeVaultFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-251889 | `0xc3ae3f...31e2a6` | ⚠️ Unaudited |
| PrizeVaultFactory | registry | project_anchor | own_supporting | 0 | base | unit-251940 | `0xa55a74...d444bf` | ⚠️ Unaudited |
| PrizeVaultFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-251945 | `0xe32f63...396ddf` | ⚠️ Unaudited |
| PrizeVaultFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251894 | `0x44be00...2c07bc` | ⚠️ Unaudited |
| PrizeVaultFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-251900 | `0x8020fb...045e52` | ⚠️ Unaudited |
| ReceiverTimelockTrigger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x24c3e1...b89430`; avalanche `0x832cb3...6a3a88`; avalanche `0xc2e914...2e9cb7` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0x3e8b99...b9a295`; polygon `0x20f29c...816308` | ⚠️ Unaudited |
| RemoteOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x38449a...bd130d`; optimism `0x3a8f18...8ba06d`; optimism `0x503de6...c3bf65`; optimism `0x55fa1c...803fde` | ⚠️ Unaudited |
| Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: ethereum `0xadb4d9...2fdfb5`; ethereum `0xdb8e47...4c124f`; polygon `0x3e8b99...b9a295`; polygon `0xce148f...5982b8`; avalanche `0x6358f8...81be0d`; avalanche `0xf04e5b...a3d029` | ⚠️ Unaudited |
| RewardLiquidatorFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0xc2aa23...6d3e2e`; optimism `0x7f75b9...3d5370`; gnosis `0xd09ca1...426afb`; base `0x0526e9...40b468`; base `0x778f10...06a9bf`; arbitrum `0xa030a8...5ee5f2` | ⚠️ Unaudited |
| RngAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x539a76...867f41`; ethereum `0x8cffff...58d832` | ⚠️ Unaudited |
| RngAuctionRelayerRemoteOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xec9460...cccd24`; ethereum `0xf4c47d...576bbf` | ⚠️ Unaudited |
| RNGBlockhash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb1d894...44cd21`; polygon `0xb2dc55...cc492f` | ⚠️ Unaudited |
| RngRelayAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x5f6c71...7d25a8`; optimism `0x87d3d9...efa557`; optimism `0xb06aeb...f51b49`; optimism `0xf4c47d...576bbf` | ⚠️ Unaudited |
| RngWitnet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251853 | `0xf93329...dea215` | ⚠️ Unaudited |
| RngWitnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 6 deployments: ethereum `0xa1697e...65650a`; optimism `0x18928a...b9eecb`; optimism `0x445702...6a7088`; optimism `0x4917f3...76afda`; optimism `0xc3118f...409923`; gnosis `0xcf4665...5ad5ce` | ⚠️ Unaudited |
| RngWitnet | unknown | project_anchor | own_supporting | 0 | optimism | unit-251860 | `0x3d2ef6...96aa7b` | ⚠️ Unaudited |
| RngWitnet | unknown | project_anchor | own_supporting | 0 | gnosis | unit-251882 | `0x47c921...df1123` | ⚠️ Unaudited |
| RngWitnet | unknown | project_anchor | own_supporting | 0 | base | unit-251932 | `0x74ebf3...9d18f0` | ⚠️ Unaudited |
| RngWitnet | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251904 | `0xad1b8e...dc107b` | ⚠️ Unaudited |
| RngWitnet | unknown | project_anchor | own_supporting | 0 | scroll | unit-251914 | `0x4d971a...94f608` | ⚠️ Unaudited |
| SablierManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0589c7...204444`; ethereum `0x17cbf6...44122b` | ⚠️ Unaudited |
| ScrollStandardERC20 | token | project_anchor | own_supporting | 0 | scroll | unit-251926 | `0xf9af83...a0f2b7` | ⚠️ Unaudited |
| SimpleVaultBoosterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: optimism `0xefdfb7...5cd176`; base `0x38449a...bd130d`; base `0x8cffff...58d832` | ⚠️ Unaudited |
| SingleRandomWinnerBuilder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa63584...b4841d` | ⚠️ Unaudited |
| SingleRandomWinnerProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6c7330...69e51f`; ethereum `0xba49b4...95adfd`; ethereum `0xc79b5d...dd2a37` | ⚠️ Unaudited |
| SponsorshipVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x015caa...f03ef3` | ⚠️ Unaudited |
| StakePrizePoolBuilder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6dc7ca...5d85c9`; ethereum `0xf46608...be359f` | ⚠️ Unaudited |
| StakePrizePoolProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x166f62...c85142`; ethereum `0x259d46...62fc57`; ethereum `0x3b694c...bbe3f0`; ethereum `0x5ae758...6b6a4e`; ethereum `0x918175...c504b4`; polygon `0x977627...d8f17b`; polygon `0xafcea0...d4f5e6` | ⚠️ Unaudited |
| StakingVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251844 | `0x68a100...c2f18b` | ⚠️ Unaudited |
| StakingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c1aca...489969` | ⚠️ Unaudited |
| StakingVault | unknown | project_anchor | own_supporting | 0 | optimism | unit-251857 | `0x2c3000...473732` | ⚠️ Unaudited |
| StakingVault | unknown | project_anchor | own_supporting | 0 | gnosis | unit-251886 | `0x9ef19f...0ef172` | ⚠️ Unaudited |
| StakingVault | unknown | project_anchor | own_supporting | 0 | base | unit-251935 | `0x854f3d...80436d` | ⚠️ Unaudited |
| StakingVault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251909 | `0xf59e48...54da1f` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-251948 | `0xcf934e...b5b79c` | ⚠️ Unaudited |
| Ticket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0xdd4d11...8236e1`; polygon `0x6a304d...3a6076`; avalanche `0x9edc70...b8bde6`; avalanche `0xb27f37...bc1d90` | ⚠️ Unaudited |
| TicketProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: ethereum `0x59b34c...e5eb94`; ethereum `0x67581c...ff31db`; ethereum `0x8bb5af...3411b5`; ethereum `0xa7d0d3...00acb9`; polygon `0x259d46...62fc57`; polygon `0x58af45...27efb9`; polygon `0xd08a60...549170` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42cd83...24262e` | ⚠️ Unaudited |
| TokenFaucetProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x63fe3d...90d630`; ethereum `0xe19fe7...212c43`; ethereum `0xe4e9cd...50f117`; polygon `0xb3e8bb...ec5c4b`; polygon `0xdb8e47...4c124f`; polygon `0xeaa636...dfbab1` | ⚠️ Unaudited |
| TokenVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x37203b...9b7746`; base `0xc05748...a5a489` | ⚠️ Unaudited |
| TpdaLiquidationPairFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-251850 | `0xa99b3a...a43908` | ⚠️ Unaudited |
| TpdaLiquidationPairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: ethereum `0x43069a...920323`; optimism `0x0796be...e7f668` | ⚠️ Unaudited |
| TpdaLiquidationPairFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-251866 | `0x80f866...77c7d1` | ⚠️ Unaudited |
| TpdaLiquidationPairFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-251888 | `0xbddd23...76368a` | ⚠️ Unaudited |
| TpdaLiquidationPairFactory | registry | project_anchor | own_supporting | 0 | base | unit-251936 | `0x8557a9...8374ea` | ⚠️ Unaudited |
| TpdaLiquidationPairFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-251892 | `0x163402...2dfd3f` | ⚠️ Unaudited |
| TpdaLiquidationRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6cb520...c9fbc1`; optimism `0xe2d27c...d96bae` | ⚠️ Unaudited |
| TpdaLiquidationRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-251846 | `0x7c210b...192ea0` | ⚠️ Unaudited |
| TpdaLiquidationRouter | adapter | project_anchor | own_supporting | 0 | optimism | unit-251864 | `0x7766b5...876136` | ⚠️ Unaudited |
| TpdaLiquidationRouter | adapter | project_anchor | own_supporting | 0 | gnosis | unit-251879 | `0x166448...d006c9` | ⚠️ Unaudited |
| TpdaLiquidationRouter | adapter | project_anchor | own_supporting | 0 | base | unit-251941 | `0xa9c937...dfc22c` | ⚠️ Unaudited |
| TpdaLiquidationRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-251899 | `0x7b4a60...67db73` | ⚠️ Unaudited |
| TpdaLiquidationRouter | adapter | project_anchor | own_supporting | 0 | scroll | unit-251916 | `0x6f0b0a...d6ef7b` | ⚠️ Unaudited |
| TreasuryVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21950e...de2359` | ⚠️ Unaudited |
| TwabController | governance | project_anchor | own_supporting | 0 | ethereum | unit-251842 | `0x4d5f2c...7b4acc` | ⚠️ Unaudited |
| TwabController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: ethereum `0xf4cfa5...1983f5`; optimism `0x0d51a3...a71dd9`; optimism `0x499a9f...4f6e52`; optimism `0x5e5e49...e2c55e`; optimism `0x71c755...795ff6`; optimism `0x7deef0...1f9038`; optimism `0xb93975...a8f206`; gnosis `0x656399...7d7060` | ⚠️ Unaudited |
| TwabController | governance | project_anchor | own_supporting | 0 | optimism | unit-251871 | `0xcb0672...3be167` | ⚠️ Unaudited |
| TwabController | governance | project_anchor | own_supporting | 0 | gnosis | unit-251884 | `0x84090a...8afde6` | ⚠️ Unaudited |
| TwabController | governance | project_anchor | own_supporting | 0 | base | unit-251933 | `0x7e6360...4f44c6` | ⚠️ Unaudited |
| TwabController | governance | project_anchor | own_supporting | 0 | arbitrum | unit-251902 | `0x971ecc...14dc75` | ⚠️ Unaudited |
| TwabDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 17 deployments: ethereum `0x5cfbee...a990f7`; optimism `0x3989cb...9de4cb`; optimism `0x491485...0b42c6`; optimism `0x49e8e9...47bfa5`; optimism `0x4d5f2c...7b4acc`; optimism `0x5c2f7f...aa600b`; optimism `0x9cbbde...2b80b1`; optimism `0xa7da69...66c52e`; optimism `0xf93329...dea215`; base `0x214a21...d6ce5e`; base `0x9678d0...8b801a`; base `0x9f925a...d64418`; base `0xb6ec5f...4181cd`; base `0xf40fe4...23c937`; arbitrum `0xb8e2fa...3f6dda`; arbitrum `0xdd734d...0e3ce6`; arbitrum `0xe2f119...bfb73d` | ⚠️ Unaudited |
| TwabRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251838 | `0x2589ff...2f1a21` | ⚠️ Unaudited |
| TwabRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: ethereum `0x3cb049...c17ed1`; ethereum `0xa469de...082d81`; ethereum `0xe7934e...212618`; optimism `0x27ed57...396a66`; optimism `0xefb96e...749f99` | ⚠️ Unaudited |
| TwabRewards | unknown | project_anchor | own_supporting | 0 | optimism | unit-251868 | `0x90d383...3ea9ea` | ⚠️ Unaudited |
| TwabRewards | unknown | project_anchor | own_supporting | 0 | gnosis | unit-251880 | `0x174215...276942` | ⚠️ Unaudited |
| TwabRewards | unknown | project_anchor | own_supporting | 0 | base | unit-251937 | `0x86f092...f2dc09` | ⚠️ Unaudited |
| TwabRewards | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251908 | `0xe21ac3...9c59be` | ⚠️ Unaudited |
| TwabRewards | unknown | project_anchor | own_supporting | 0 | scroll | unit-251911 | `0x0e71a9...48780d` | ⚠️ Unaudited |
| UnsafeTokenListenerDelegatorProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3fab22...e43d6d`; ethereum `0xd95200...ddb1ba` | ⚠️ Unaudited |
| V3PrizePoolLiquidatorAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1ca3cf...19baec`; ethereum `0x8ab3ba...34d0c8` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x29cb69...890715`; optimism `0x31515c...64e2d9`; optimism `0xe3b3a4...32f275` | ⚠️ Unaudited |
| VaultBoosterFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-251839 | `0x31ec88...f483e8` | ⚠️ Unaudited |
| VaultBoosterFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-251841 | `0x36be31...ec66c6` | ⚠️ Unaudited |
| VaultBoosterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: ethereum `0x25d692...850004`; optimism `0x17b9d7...f66837`; optimism `0x43069a...920323` | ⚠️ Unaudited |
| VaultBoosterFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251863 | `0x7746a7...71dada` | ⚠️ Unaudited |
| VaultBoosterFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-251867 | `0x858029...67f88c` | ⚠️ Unaudited |
| VaultBoosterFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-251885 | `0x8cffff...58d832` | ⚠️ Unaudited |
| VaultBoosterFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | gnosis | unit-251890 | `0xc9f124...1c4a78` | ⚠️ Unaudited |
| VaultBoosterFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-251927 | `0x02d37f...31530e` | ⚠️ Unaudited |
| VaultBoosterFactory | registry | project_anchor | own_supporting | 0 | base | unit-251939 | `0xa2ba3d...550ec2` | ⚠️ Unaudited |
| VaultBoosterFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251896 | `0x574257...0b449e` | ⚠️ Unaudited |
| VaultBoosterFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-251901 | `0x8cffff...58d832` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xa469de...082d81`; optimism `0xf65fa2...e08081` | ⚠️ Unaudited |
| VaultFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6b17ee...8eff0e` | ⚠️ Unaudited |
| VaultPrizePoolBuilder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1469c3...0b4f5d` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf0b19f...34397c` | ⚠️ Unaudited |
| YieldSourcePrizePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: ethereum `0xd89a09...d638be`; polygon `0x19de63...e84e60`; polygon `0x887e17...9c7ef4`; polygon `0xee06ab...efa946`; avalanche `0xf830f5...8f95ec` | ⚠️ Unaudited |
| YieldSourcePrizePoolProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0835c8...c40d96`; ethereum `0x4a8fa5...46d500`; ethereum `0x692f55...70728c`; ethereum `0xe3325f...ce99da`; polygon `0x447838...109962`; polygon `0x4d1639...5ebe36` | ⚠️ Unaudited |
| yVaultPrizePoolBuilder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef3d36...495cd2` | ⚠️ Unaudited |
| yVaultPrizePoolProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3357d3...24cf5e`; ethereum `0x44c585...f4fe2a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (58)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd01747...4f8509` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x98305e...c675a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xafcede...63dfde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcdccba...398bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03e75a...f0dbf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17cfe0...24d72a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4027de...892668` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x44c585...f4fe2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6dc7ca...5d85c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa63584...b4841d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa6d1c8...20e6e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1d894...44cd21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc79b5d...dd2a37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb876f...175eef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdd8f31...f3892e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe1d06d...58b13d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xef2d0b...5b713e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37a7ad...f34784` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251910 | `0x0d51a3...a71dd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x23dbac...7714ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x26f050...9be537` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x2a0344...27669b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x3f21b2...f2e57c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251913 | `0x3fdd8b...3a30a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x47d500...af5b81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4ea44e...1f8c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x50f36a...f4d42c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251915 | `0x5ec48e...14537d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x64dc75...bb9386` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x66c2aa...2005b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6b0877...30693a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6ce4c5...d3a56d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6d73bf...005579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6f36db...e36d11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6f7200...7d1792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7026b7...abec47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x727590...22c7dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | scroll | unit-251917 | `0x748300...024b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7b4690...8b2bfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x89db94...7ce58f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8a3795...ece952` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251918 | `0x8cffff...58d832` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251919 | `0x9cfe09...e38f66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa15316...cf3b8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251920 | `0xa6ecd6...899845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb0e5bc...9e21e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xbc5b4d...202b1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc024e9...8dcac9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xccaac4...1ff5dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xd017a6...46b314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xdf0445...65b88f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe51dce...84c8e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251924 | `0xeb436b...0392a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xed7497...8e386c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xefdff1...5658ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251925 | `0xf17d29...6de152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xfc2ba5...9e6295` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xfe2402...59f835` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audits.md](https://github.com/pooltogether/user-docs/blob/main/security/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [bug-bounties.md](https://github.com/pooltogether/user-docs/blob/main/security/bug-bounties.md) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [README.md](https://github.com/pooltogether/user-docs/blob/main/security/risks/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [protocol-coverage.md](https://github.com/pooltogether/user-docs/blob/main/security/risks/protocol-coverage.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [**Sherlock: PoolTogether V5**](https://audits.sherlock.xyz/contests/225) | Sherlock | Contest | 2024-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [**C4: PoolTogether Prize Vaults**](https://code4rena.com/reports/2024-03-pooltogether) | Code4rena | Contest | 2024-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [**0xMacro: PrizePool + TwabController**](https://0xmacro.com/library/audits/pooltogether-1) | 0xMacro | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [**C4: PoolTogether V5 Part Two**](https://code4rena.com/reports/2023-08-pooltogether) | Code4rena | Contest | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [**C4: PoolTogether V5**](https://code4rena.com/reports/2023-07-pooltogether) | Code4rena | Contest | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [**C4: ERC-5164**](https://code4rena.com/reports/2022-12-pooltogether) | Code4rena | Contest | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [**C4: Aave V3 Yield Source**](https://code4rena.com/reports/2022-04-pooltogether) | Code4rena | Contest | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [**C4: TwabDelegator**](https://code4rena.com/reports/2022-02-pooltogether) | Code4rena | Contest | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [**C4: TwabRewards**](https://code4rena.com/reports/2021-12-pooltogether) | Code4rena | Contest | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [**C4: PoolTogether V4**](https://code4rena.com/reports/2021-10-pooltogether) | Code4rena | Contest | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [**C4: Swappable Yield Source**](https://code4rena.com/reports/2021-07-pooltogether) | Code4rena | Contest | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [**OpenZeppelin: PoolTogether V3**](https://www.openzeppelin.com/news/pooltogether-v3-audit) | OpenZeppelin | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [7597] audits.md — no match: The document is a list of audit reports, not an audit report itself. No specific contracts in scope are mentioned.
- [7598] bug-bounties.md — no match: The document is a bug bounty program description, not an audit report. Only one contract name is mentioned in a past bounty entry.
- [7599] README.md — no match: The provided text is a risk disclosure document, not an audit report. No contracts in scope or audit date were found.
- [7600] protocol-coverage.md — no match: The provided text is not an audit report; it is a promotional snippet about protocol coverage from Nexus Mutual. No contracts, scope, or audit date are identifiable.
- [27843] **Sherlock: PoolTogether V5** — no match: The provided text is a header/navigation snippet from a contest page, not an audit report. No contracts or audit date are identifiable.
- [27844] **C4: PoolTogether Prize Vaults** — matched: Scope section explicitly lists 6 smart contracts; additional contracts (Claimer, PrizePool) are referenced in findings as audited targets.
- [27845] **0xMacro: PrizePool + TwabController** — no match: Extracted 10 contracts from the scope tables in the Source Code section. Audit date found on cover page.
- [27846] **C4: PoolTogether V5 Part Two** — no match: Extracted 14 contract names from the audit report scope and findings. The report date is from the title page.
- [27847] **C4: PoolTogether V5** — no match: The report clearly lists 14 smart contracts in scope. The extracted names are the main contracts and libraries explicitly mentioned in the scope section and findings.
- [27848] **C4: ERC-5164** — no match: Scope section explicitly states 7 smart contracts. All contract names extracted from file paths and findings.
- [27849] **C4: Aave V3 Yield Source** — no match: Only one contract, AaveV3YieldSource, is explicitly in scope. The report date is from the title line.
- [27850] **C4: TwabDelegator** — no match: Scope explicitly states 4 smart contracts; extracted from file paths and references. Audit date from report header.
- [27851] **C4: TwabRewards** — no match: Scope section explicitly states 2 smart contracts: TwabRewards.sol and ITwabRewards.sol. Audit date from report header.
- [27852] **C4: PoolTogether V4** — no match: Extracted contract names from findings and scope description. The scope mentions 20 smart contracts but only names a subset in findings. The audit date is from the report header.
- [27853] **C4: Swappable Yield Source** — no match: Scope section explicitly states 2 smart contracts: SwappableYieldSource and MStableYieldSource.
- [27854] **OpenZeppelin: PoolTogether V3** — no match: Extracted from the blog post header and scope descriptions. The audit date is explicitly stated as 'October 21, 2020'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| bug-bounties.md | PermitAndDepositDai | unmatched — not counted | — | mentioned in Past Bounties section as a contract with a vulnerability | no |
| **C4: PoolTogether Prize Vaults** | PrizeVault | own contract | PrizeVault (alternative) `0xb75af2...8b35cf` — deployed 2024-09-11 04:33:25+03 — liveness: live (code_present_context)<br>PrizeVault (alternative) `0x97a9c0...1e8c95` — deployed 2024-05-29 22:15:24+03 — liveness: live (code_present_context)<br>PrizeVault (alternative) `0x29499e...b1fa9b` — deployed 2024-09-11 04:18:41+03 — liveness: live (code_present_context)<br>PrizeVault (alternative) `0x9ee31e...c75573` — deployed 2024-08-19 22:39:11+03 — liveness: live (code_present_context)<br>PrizeVault (selected) `0xa52e38...3e5e1f` — deployed 2024-04-18 03:15:15+03 — liveness: live (code_present_context)<br>PrizeVault (alternative) `0x6b5a5c...f7e4dd` — deployed 2024-05-15 22:56:39+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-04-18 was 14d from audit; next candidate 41d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| **C4: PoolTogether Prize Vaults** | PrizeVaultFactory | ambiguous — not counted | PrizeVaultFactory (alternative) `0xc3ae3f...31e2a6` — deployed 2024-09-11 04:32:40+03 — liveness: live (current_address_book_code)<br>0x3fdd8b… (alternative) `0x3fdd8b...3a30a5` — liveness: live (current_address_book_code)<br>PrizeVaultFactory (alternative) `0x8020fb...045e52` — deployed 2024-07-16 22:34:09+03 — liveness: live (current_address_book_code)<br>PrizeVaultFactory (alternative) `0xd499cc...dde7c3` — deployed 2024-09-06 22:27:11+03 — liveness: live (current_address_book_code)<br>PrizeVaultFactory (alternative) `0xec9f59...656775` — deployed 2024-07-16 19:55:07+03 — liveness: live (current_address_book_code)<br>PrizeVaultFactory (alternative) `0xa55a74...d444bf` — deployed 2024-07-16 20:54:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **C4: PoolTogether Prize Vaults** | TwabERC20 | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether Prize Vaults** | Claimable | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether Prize Vaults** | HookManager | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether Prize Vaults** | IVaultHooks | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether Prize Vaults** | Claimer | ambiguous — not counted | Claimer (alternative) `0xbea383...317c73` — deployed 2024-07-16 20:59:40+03 — liveness: live (current_address_book_code)<br>Claimer (alternative) `0x220c93...3b8d90` — deployed 2024-07-16 19:44:45+03 — liveness: live (current_address_book_code)<br>Claimer (alternative) `0x0cffb7...b0bbfa` — deployed 2024-09-11 04:33:15+03 — liveness: live (code_present_context)<br>Claimer (alternative) `0x54aa02...126c7d` — deployed 2024-09-06 22:17:11+03 — liveness: live (current_address_book_code)<br>Claimer (alternative) `0xcdce63...5547ba` — deployed 2024-07-16 20:51:25+03 — liveness: live (current_address_book_code)<br>Claimer (alternative) `0xb04d5c...f00285` — deployed 2024-09-11 04:18:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **C4: PoolTogether Prize Vaults** | PrizePool | ambiguous — not counted | PrizePool (alternative) `0x0c08c2...18120f` — deployed 2024-09-11 04:32:50+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x52e791...bc5d42` — deployed 2024-05-29 22:14:54+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x7865d0...354d95` — deployed 2024-08-19 22:38:23+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x45b201...3732cb` — deployed 2024-05-15 22:56:39+03 — liveness: live (code_present_context)<br>0xa6ecd6… (alternative) `0xa6ecd6...899845` — liveness: live (current_address_book_code)<br>PrizePool (alternative) `0xf35fe1...e29b55` — deployed 2024-04-18 03:15:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **0xMacro: PrizePool + TwabController** | PrizePool | ambiguous — not counted | PrizePool (alternative) `0x0c08c2...18120f` — deployed 2024-09-11 04:32:50+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x52e791...bc5d42` — deployed 2024-05-29 22:14:54+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x7865d0...354d95` — deployed 2024-08-19 22:38:23+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x45b201...3732cb` — deployed 2024-05-15 22:56:39+03 — liveness: live (code_present_context)<br>0xa6ecd6… (alternative) `0xa6ecd6...899845` — liveness: live (current_address_book_code)<br>PrizePool (alternative) `0xf35fe1...e29b55` — deployed 2024-04-18 03:15:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **0xMacro: PrizePool + TwabController** | TieredLiquidityDistributor | unmatched — not counted | — | listed in scope table | no |
| **0xMacro: PrizePool + TwabController** | BitLib | unmatched — not counted | — | listed in scope table | no |
| **0xMacro: PrizePool + TwabController** | DrawAccumulatorLib | unmatched — not counted | — | listed in scope table | no |
| **0xMacro: PrizePool + TwabController** | TierCalculationLib | unmatched — not counted | — | listed in scope table | no |
| **0xMacro: PrizePool + TwabController** | UD34x4 | unmatched — not counted | — | listed in scope table | no |
| **0xMacro: PrizePool + TwabController** | TwabController | ambiguous — not counted | TwabController (alternative) `0x84090a...8afde6` — deployed 2024-09-11 04:32:00+03 — liveness: live (code_present_context)<br>TwabController (alternative) `0x971ecc...14dc75` — deployed 2024-05-29 22:14:16+03 — liveness: live (code_present_context)<br>0x5ec48e… (alternative) `0x5ec48e...14537d` — liveness: live (current_address_book_code)<br>TwabController (alternative) `0x7e6360...4f44c6` — deployed 2024-05-15 22:56:37+03 — liveness: live (code_present_context)<br>TwabController (alternative) `0x4d5f2c...7b4acc` — deployed 2024-08-19 22:36:59+03 — liveness: live (code_present_context)<br>TwabController (alternative) `0xcb0672...3be167` — deployed 2024-04-18 03:15:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **0xMacro: PrizePool + TwabController** | ObservationLib | unmatched — not counted | — | listed in scope table | no |
| **0xMacro: PrizePool + TwabController** | OverflowSafeComparatorLib | unmatched — not counted | — | listed in scope table | no |
| **0xMacro: PrizePool + TwabController** | TwabLib | unmatched — not counted | — | listed in scope table | no |
| **C4: PoolTogether V5 Part Two** | RngRelayAuction | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether V5 Part Two** | PrizePool | ambiguous — not counted | PrizePool (alternative) `0x0c08c2...18120f` — deployed 2024-09-11 04:32:50+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x52e791...bc5d42` — deployed 2024-05-29 22:14:54+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x7865d0...354d95` — deployed 2024-08-19 22:38:23+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x45b201...3732cb` — deployed 2024-05-15 22:56:39+03 — liveness: live (code_present_context)<br>0xa6ecd6… (alternative) `0xa6ecd6...899845` — liveness: live (current_address_book_code)<br>PrizePool (alternative) `0xf35fe1...e29b55` — deployed 2024-04-18 03:15:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **C4: PoolTogether V5 Part Two** | TieredLiquidityDistributor | unmatched — not counted | — | referenced in findings | no |
| **C4: PoolTogether V5 Part Two** | RemoteOwner | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether V5 Part Two** | RngAuctionRelayerRemoteOwner | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether V5 Part Two** | ContinuousGDA | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether V5 Part Two** | LiquidationRouter | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether V5 Part Two** | LiquidationPair | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether V5 Part Two** | LiquidationPairFactory | unmatched — not counted | — | referenced in findings | no |
| **C4: PoolTogether V5 Part Two** | VaultBooster | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether V5 Part Two** | VaultBoosterFactory | ambiguous — not counted | VaultBoosterFactory (alternative) `0xa2ba3d...550ec2` — deployed 2025-03-21 21:52:01+03 — liveness: live (current_address_book_code)<br>VaultBoosterFactory (alternative) `0x31ec88...f483e8` — deployed 2025-03-21 21:55:35+03 — liveness: live (current_address_book_code)<br>VaultBoosterFactory (alternative) `0x858029...67f88c` — deployed 2025-03-21 21:49:41+03 — liveness: live (current_address_book_code)<br>0x8cffff… (alternative) `0x8cffff...58d832` — liveness: live (current_address_book_code)<br>VaultBoosterFactory (alternative) `0x8cffff...58d832` — deployed 2025-03-21 21:51:12+03 — liveness: live (current_address_book_code)<br>VaultBoosterFactory (alternative) `0x8cffff...58d832` — deployed 2025-03-21 22:04:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **C4: PoolTogether V5 Part Two** | RngAuction | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether V5 Part Two** | RewardLib | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether V5 Part Two** | AddressRemapper | unmatched — not counted | — | referenced in findings | no |
| **C4: PoolTogether V5** | Vault | unmatched — not counted | — | Listed in scope and referenced throughout findings. | no |
| **C4: PoolTogether V5** | TwabController | ambiguous — not counted | TwabController (alternative) `0x84090a...8afde6` — deployed 2024-09-11 04:32:00+03 — liveness: live (code_present_context)<br>TwabController (alternative) `0x971ecc...14dc75` — deployed 2024-05-29 22:14:16+03 — liveness: live (code_present_context)<br>0x5ec48e… (alternative) `0x5ec48e...14537d` — liveness: live (current_address_book_code)<br>TwabController (alternative) `0x7e6360...4f44c6` — deployed 2024-05-15 22:56:37+03 — liveness: live (code_present_context)<br>TwabController (alternative) `0x4d5f2c...7b4acc` — deployed 2024-08-19 22:36:59+03 — liveness: live (code_present_context)<br>TwabController (alternative) `0xcb0672...3be167` — deployed 2024-04-18 03:15:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **C4: PoolTogether V5** | PrizePool | ambiguous — not counted | PrizePool (alternative) `0x0c08c2...18120f` — deployed 2024-09-11 04:32:50+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x52e791...bc5d42` — deployed 2024-05-29 22:14:54+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x7865d0...354d95` — deployed 2024-08-19 22:38:23+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x45b201...3732cb` — deployed 2024-05-15 22:56:39+03 — liveness: live (code_present_context)<br>0xa6ecd6… (alternative) `0xa6ecd6...899845` — liveness: live (current_address_book_code)<br>PrizePool (alternative) `0xf35fe1...e29b55` — deployed 2024-04-18 03:15:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **C4: PoolTogether V5** | VaultFactory | unmatched — not counted | — | Listed in scope and referenced in findings. | no |
| **C4: PoolTogether V5** | Claimer | ambiguous — not counted | Claimer (alternative) `0xbea383...317c73` — deployed 2024-07-16 20:59:40+03 — liveness: live (current_address_book_code)<br>Claimer (alternative) `0x220c93...3b8d90` — deployed 2024-07-16 19:44:45+03 — liveness: live (current_address_book_code)<br>Claimer (alternative) `0x0cffb7...b0bbfa` — deployed 2024-09-11 04:33:15+03 — liveness: live (code_present_context)<br>Claimer (alternative) `0x54aa02...126c7d` — deployed 2024-09-06 22:17:11+03 — liveness: live (current_address_book_code)<br>Claimer (alternative) `0xcdce63...5547ba` — deployed 2024-07-16 20:51:25+03 — liveness: live (current_address_book_code)<br>Claimer (alternative) `0xb04d5c...f00285` — deployed 2024-09-11 04:18:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **C4: PoolTogether V5** | TieredLiquidityDistributor | unmatched — not counted | — | Listed in scope and referenced in findings. | no |
| **C4: PoolTogether V5** | DrawAccumulatorLib | unmatched — not counted | — | Listed in scope and referenced in findings. | no |
| **C4: PoolTogether V5** | TierCalculationLib | unmatched — not counted | — | Listed in scope and referenced in findings. | no |
| **C4: PoolTogether V5** | TwabLib | unmatched — not counted | — | Listed in scope and referenced in findings. | no |
| **C4: PoolTogether V5** | IVaultHooks | unmatched — not counted | — | Listed in scope and referenced in findings. | no |
| **C4: ERC-5164** | EthereumToArbitrumRelayer | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| **C4: ERC-5164** | EthereumToOptimismRelayer | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| **C4: ERC-5164** | EthereumToPolygonRelayer | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| **C4: ERC-5164** | EthereumToArbitrumExecutor | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| **C4: ERC-5164** | EthereumToOptimismExecutor | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| **C4: ERC-5164** | EthereumToPolygonExecutor | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| **C4: ERC-5164** | CallLib | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| **C4: Aave V3 Yield Source** | AaveV3YieldSource | unmatched — not counted | — | listed in scope section: 'The code under review can be found within the C4 PoolTogether Aave v3 contest repository, and is composed of 1 smart contract written in the Solidity programming language and includes ~200 lines of Solidity code.' | no |
| **C4: TwabDelegator** | PermitAndMulticall | unmatched — not counted | — | Scope section: composed of 4 smart contracts; referenced in findings | no |
| **C4: TwabDelegator** | TWABDelegator | unmatched — not counted | — | Scope section: composed of 4 smart contracts; referenced in findings | no |
| **C4: TwabDelegator** | Delegation | unmatched — not counted | — | Scope section: composed of 4 smart contracts; referenced in findings | no |
| **C4: TwabDelegator** | ITwabRewards | unmatched — not counted | — | Referenced in L-01 mitigation discussion as part of the system | no |
| **C4: TwabDelegator** | TwabRewards | ambiguous — not counted | TwabRewards (alternative) `0x174215...276942` — deployed 2024-09-11 04:32:10+03 — liveness: live (current_address_book_code)<br>TwabRewards (alternative) `0x0e71a9...48780d` — deployed 2024-09-11 04:16:38+03 — liveness: live (current_address_book_code)<br>TwabRewards (alternative) `0x90d383...3ea9ea` — deployed 2024-04-18 03:15:13+03 — liveness: live (current_address_book_code)<br>TwabRewards (alternative) `0x86f092...f2dc09` — deployed 2024-05-15 22:56:37+03 — liveness: live (current_address_book_code)<br>TwabRewards (alternative) `0xe21ac3...9c59be` — deployed 2024-05-29 22:14:23+03 — liveness: live (current_address_book_code)<br>TwabRewards (alternative) `0x2589ff...2f1a21` — deployed 2024-08-19 22:37:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **C4: TwabRewards** | TwabRewards | ambiguous — not counted | TwabRewards (alternative) `0x174215...276942` — deployed 2024-09-11 04:32:10+03 — liveness: live (current_address_book_code)<br>TwabRewards (alternative) `0x0e71a9...48780d` — deployed 2024-09-11 04:16:38+03 — liveness: live (current_address_book_code)<br>TwabRewards (alternative) `0x90d383...3ea9ea` — deployed 2024-04-18 03:15:13+03 — liveness: live (current_address_book_code)<br>TwabRewards (alternative) `0x86f092...f2dc09` — deployed 2024-05-15 22:56:37+03 — liveness: live (current_address_book_code)<br>TwabRewards (alternative) `0xe21ac3...9c59be` — deployed 2024-05-29 22:14:23+03 — liveness: live (current_address_book_code)<br>TwabRewards (alternative) `0x2589ff...2f1a21` — deployed 2024-08-19 22:37:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **C4: TwabRewards** | ITwabRewards | unmatched — not counted | — | Scope section: 'composed of 2 smart contracts' and findings reference ITwabRewards.sol | no |
| **C4: PoolTogether V4** | DrawCalculator | unmatched — not counted | — | mentioned in finding H-01 and gas optimization G-19 | no |
| **C4: PoolTogether V4** | DrawBeacon | unmatched — not counted | — | mentioned in finding H-02 | no |
| **C4: PoolTogether V4** | PrizePool | ambiguous — not counted | PrizePool (alternative) `0x0c08c2...18120f` — deployed 2024-09-11 04:32:50+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x52e791...bc5d42` — deployed 2024-05-29 22:14:54+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x7865d0...354d95` — deployed 2024-08-19 22:38:23+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x45b201...3732cb` — deployed 2024-05-15 22:56:39+03 — liveness: live (code_present_context)<br>0xa6ecd6… (alternative) `0xa6ecd6...899845` — liveness: live (current_address_book_code)<br>PrizePool (alternative) `0xf35fe1...e29b55` — deployed 2024-04-18 03:15:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **C4: PoolTogether V4** | PrizeSplit | unmatched — not counted | — | mentioned in findings L-01, L-06, G-05 | no |
| **C4: PoolTogether V4** | PrizeDistributor | unmatched — not counted | — | mentioned in finding G-06 | no |
| **C4: PoolTogether V4** | PrizeDistributionBuffer | unmatched — not counted | — | mentioned in finding G-18 | no |
| **C4: PoolTogether V4** | YieldSourcePrizePool | unmatched — not counted | — | mentioned in finding N-01 | no |
| **C4: PoolTogether V4** | RNGChainlink | unmatched — not counted | — | mentioned in finding H-02 | no |
| **C4: PoolTogether V4** | PrizePoolHarness | unmatched — not counted | — | mentioned in finding N-04 | no |
| **C4: Swappable Yield Source** | SwappableYieldSource | unmatched — not counted | — | Listed in scope as one of 2 smart contracts. | no |
| **C4: Swappable Yield Source** | MStableYieldSource | unmatched — not counted | — | Listed in scope as one of 2 smart contracts. | no |
| **OpenZeppelin: PoolTogether V3** | PrizePool | ambiguous — not counted | PrizePool (alternative) `0x0c08c2...18120f` — deployed 2024-09-11 04:32:50+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x52e791...bc5d42` — deployed 2024-05-29 22:14:54+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x7865d0...354d95` — deployed 2024-08-19 22:38:23+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x45b201...3732cb` — deployed 2024-05-15 22:56:39+03 — liveness: live (code_present_context)<br>0xa6ecd6… (alternative) `0xa6ecd6...899845` — liveness: live (current_address_book_code)<br>PrizePool (alternative) `0xf35fe1...e29b55` — deployed 2024-04-18 03:15:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **OpenZeppelin: PoolTogether V3** | CompoundPrizePool | unmatched — not counted | — | listed in scope and audited | no |
| **OpenZeppelin: PoolTogether V3** | CompoundPrizePoolBuilder | unmatched — not counted | — | listed in scope and audited | no |
| **OpenZeppelin: PoolTogether V3** | yVaultPrizePool | unmatched — not counted | — | listed in scope and audited | no |
| **OpenZeppelin: PoolTogether V3** | yVaultPrizePoolBuilder | unmatched — not counted | — | listed in scope and audited | no |
| **OpenZeppelin: PoolTogether V3** | MappedSinglyLinkedList | unmatched — not counted | — | listed in scope | no |
| **OpenZeppelin: PoolTogether V3** | ControlledToken | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x54aa02...126c7d` | Claimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x220c93...3b8d90` | Claimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x0cffb7...b0bbfa` | Claimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xcdce63...5547ba` | Claimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbea383...317c73` | Claimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xb04d5c...f00285` | Claimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd84c4c...679e80` | ClaimerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x94f51a...779cc3` | ClaimerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x22e385...9ea47e` | ClaimerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x804657...21c63c` | ClaimerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x64e77e...4de554` | ClaimerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x98305e...c675a7` | DrawManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x7eed74...641857` | DrawManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x146efc...d09067` | DrawManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8a2782...af6ab0` | DrawManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc00146...cd37e6` | DrawManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xa75474...69ddf2` | DrawManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84882e...1c062f` | EzDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x68a100...c2f18b` | EzDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x69fc80...3c37ef` | EzDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4e30c0...a996f4` | EzDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5f9292...4da397` | EzDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xbdf6bd...8a34c8` | EzDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x395ae5...d4e125` | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd652c5...8fafc3` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x216a7d...cdc660` | PermittableToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0cec1a...e6844e` | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7865d0...354d95` | PrizePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf35fe1...e29b55` | PrizePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x0c08c2...18120f` | PrizePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x45b201...3732cb` | PrizePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x52e791...bc5d42` | PrizePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3341da...a11d79` | PrizePoolTwabRewards | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x36be31...ec66c6` | PrizePoolTwabRewards | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x0d51a3...a71dd9` | PrizePoolTwabRewards | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf4c47d...576bbf` | PrizePoolTwabRewards | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0d51a3...a71dd9` | PrizePoolTwabRewards | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9ee31e...c75573` | PrizeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xb75af2...8b35cf` | PrizeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6b5a5c...f7e4dd` | PrizeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x97a9c0...1e8c95` | PrizeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x29499e...b1fa9b` | PrizeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd499cc...dde7c3` | PrizeVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xec9f59...656775` | PrizeVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xc3ae3f...31e2a6` | PrizeVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa55a74...d444bf` | PrizeVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8020fb...045e52` | PrizeVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf93329...dea215` | RngWitnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3d2ef6...96aa7b` | RngWitnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x47c921...df1123` | RngWitnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x74ebf3...9d18f0` | RngWitnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xad1b8e...dc107b` | RngWitnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x4d971a...94f608` | RngWitnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x68a100...c2f18b` | StakingVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x2c3000...473732` | StakingVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x9ef19f...0ef172` | StakingVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x854f3d...80436d` | StakingVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf59e48...54da1f` | StakingVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcf934e...b5b79c` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa99b3a...a43908` | TpdaLiquidationPairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x80f866...77c7d1` | TpdaLiquidationPairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xbddd23...76368a` | TpdaLiquidationPairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8557a9...8374ea` | TpdaLiquidationPairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x163402...2dfd3f` | TpdaLiquidationPairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7c210b...192ea0` | TpdaLiquidationRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x7766b5...876136` | TpdaLiquidationRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x166448...d006c9` | TpdaLiquidationRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa9c937...dfc22c` | TpdaLiquidationRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7b4a60...67db73` | TpdaLiquidationRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x6f0b0a...d6ef7b` | TpdaLiquidationRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4d5f2c...7b4acc` | TwabController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xcb0672...3be167` | TwabController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x84090a...8afde6` | TwabController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x7e6360...4f44c6` | TwabController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x971ecc...14dc75` | TwabController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2589ff...2f1a21` | TwabRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x90d383...3ea9ea` | TwabRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x174215...276942` | TwabRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x86f092...f2dc09` | TwabRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe21ac3...9c59be` | TwabRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x0e71a9...48780d` | TwabRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31ec88...f483e8` | VaultBoosterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x858029...67f88c` | VaultBoosterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x8cffff...58d832` | VaultBoosterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa2ba3d...550ec2` | VaultBoosterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8cffff...58d832` | VaultBoosterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 206 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 58 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 15
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 14 ambiguous, 61 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=11, low=5
- Match method counts: temporal_name=1

Zero-match audit list:

- [7597] audits.md
- [7598] bug-bounties.md
- [7599] README.md
- [7600] protocol-coverage.md
- [27843] **Sherlock: PoolTogether V5**
- [27845] **0xMacro: PrizePool + TwabController**
- [27846] **C4: PoolTogether V5 Part Two**
- [27847] **C4: PoolTogether V5**
- [27848] **C4: ERC-5164**
- [27849] **C4: Aave V3 Yield Source**
- [27850] **C4: TwabDelegator**
- [27851] **C4: TwabRewards**
- [27852] **C4: PoolTogether V4**
- [27853] **C4: Swappable Yield Source**
- [27854] **OpenZeppelin: PoolTogether V3**

Fork inheritance lineage and inherited audits are included when available.
