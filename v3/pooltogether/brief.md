# Agentic Audit Brief: PoolTogether

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 16 (1 matched; 15 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: PoolTogether (`pooltogether`)
- Website: [https://pooltogether.com/](https://pooltogether.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, gnosis, optimism, scroll
- Contract surface: 112 unique implementations (112 raw deployments)
- Coverage basis: 1/88 confirmed own live verified implementations (1.1%); conservative 1.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $8,728,463.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for PoolTogether. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 103 contract row(s) across arbitrum, base, ethereum, gnosis, optimism, scroll. Structural roles: 48 supporting, 33 core, 22 unclassified. 2 row(s) use upgradeable patterns.

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

- Indexed contracts: 103; live-surface contracts included: 103 (91 live, 12 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 99/112 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/88 (1.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 96 own, 16 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Deployed-live implementations: 99 of 112 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/88
- Verified + Unaudited implementations: 87
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 112
- Raw deployments: 112
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
| Code4rena | Tier 1 | 1 | 1.1% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PrizeVault | core_logic | project_anchor | own_supporting | 0 | optimism | unit-251870 | `0xa52e38...3e5e1f` | ✅ Audited |

### ⚠️ Verified + Unaudited (102)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Claimer | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-251843 | `0x54aa02...126c7d` | ⚠️ Unaudited |
| Claimer | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251854 | `0x0b5a1d...bd8438` | ⚠️ Unaudited |
| Claimer | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-251856 | `0x220c93...3b8d90` | ⚠️ Unaudited |
| Claimer | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-251876 | `0x0cffb7...b0bbfa` | ⚠️ Unaudited |
| Claimer | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-251930 | `0x5ffeee...5e1e87` | ⚠️ Unaudited |
| Claimer | operational_periphery | project_anchor | own_supporting | 0 | base | unit-251942 | `0xcdce63...5547ba` | ⚠️ Unaudited |
| Claimer | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251893 | `0x1e68e5...23e571` | ⚠️ Unaudited |
| Claimer | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-251905 | `0xbea383...317c73` | ⚠️ Unaudited |
| Claimer | operational_periphery | project_anchor | own_supporting | 0 | scroll | unit-251922 | `0xb04d5c...f00285` | ⚠️ Unaudited |
| ClaimerFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251852 | `0xd84c4c...679e80` | ⚠️ Unaudited |
| ClaimerFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251861 | `0x498c92...3f4794` | ⚠️ Unaudited |
| ClaimerFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-251869 | `0x94f51a...779cc3` | ⚠️ Unaudited |
| ClaimerFactory | unknown | project_anchor | own_supporting | 0 | gnosis | unit-251881 | `0x22e385...9ea47e` | ⚠️ Unaudited |
| ClaimerFactory | unknown | project_anchor | own_supporting | 0 | base | unit-251934 | `0x804657...21c63c` | ⚠️ Unaudited |
| ClaimerFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-251943 | `0xd58a04...1401e3` | ⚠️ Unaudited |
| ClaimerFactory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251898 | `0x64e77e...4de554` | ⚠️ Unaudited |
| ClaimerFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251907 | `0xc4824b...0757da` | ⚠️ Unaudited |
| DrawManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-251848 | `0x98305e...c675a7` | ⚠️ Unaudited |
| DrawManager | governance | project_anchor | own_supporting | 0 | optimism | unit-251865 | `0x7eed74...641857` | ⚠️ Unaudited |
| DrawManager | governance | project_anchor | own_supporting | 0 | gnosis | unit-251878 | `0x146efc...d09067` | ⚠️ Unaudited |
| DrawManager | governance | project_anchor | own_supporting | 0 | base | unit-251938 | `0x8a2782...af6ab0` | ⚠️ Unaudited |
| DrawManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-251906 | `0xc00146...cd37e6` | ⚠️ Unaudited |
| DrawManager | governance | project_anchor | own_supporting | 0 | scroll | unit-251921 | `0xa75474...69ddf2` | ⚠️ Unaudited |
| EzDepositor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251847 | `0x84882e...1c062f` | ⚠️ Unaudited |
| EzDepositor | unknown | project_anchor | own_supporting | 0 | optimism | unit-251862 | `0x68a100...c2f18b` | ⚠️ Unaudited |
| EzDepositor | unknown | project_anchor | own_supporting | 0 | gnosis | unit-251883 | `0x69fc80...3c37ef` | ⚠️ Unaudited |
| EzDepositor | unknown | project_anchor | own_supporting | 0 | base | unit-251929 | `0x4e30c0...a996f4` | ⚠️ Unaudited |
| EzDepositor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251897 | `0x5f9292...4da397` | ⚠️ Unaudited |
| EzDepositor | unknown | project_anchor | own_supporting | 0 | scroll | unit-251923 | `0xbdf6bd...8a34c8` | ⚠️ Unaudited |
| L2StandardERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-251859 | `0x395ae5...d4e125` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-251944 | `0xd652c5...8fafc3` | ⚠️ Unaudited |
| PermittableToken | token | project_anchor | own_supporting | 1 | gnosis | unit-251947 | `0x216a7d...cdc660` | ⚠️ Unaudited |
| Pool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251837 | `0x0cec1a...e6844e` | ⚠️ Unaudited |
| PrizePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251845 | `0x7865d0...354d95` | ⚠️ Unaudited |
| PrizePool | core_logic | project_anchor | own_supporting | 0 | optimism | unit-251874 | `0xf35fe1...e29b55` | ⚠️ Unaudited |
| PrizePool | core_logic | project_anchor | own_supporting | 0 | gnosis | unit-251875 | `0x0c08c2...18120f` | ⚠️ Unaudited |
| PrizePool | core_logic | project_anchor | own_supporting | 0 | base | unit-251928 | `0x45b201...3732cb` | ⚠️ Unaudited |
| PrizePool | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-251895 | `0x52e791...bc5d42` | ⚠️ Unaudited |
| PrizePoolTwabRewards | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251840 | `0x3341da...a11d79` | ⚠️ Unaudited |
| PrizePoolTwabRewards | core_logic | project_anchor | own_supporting | 0 | optimism | unit-251858 | `0x36be31...ec66c6` | ⚠️ Unaudited |
| PrizePoolTwabRewards | core_logic | project_anchor | own_supporting | 0 | gnosis | unit-251877 | `0x0d51a3...a71dd9` | ⚠️ Unaudited |
| PrizePoolTwabRewards | core_logic | project_anchor | own_supporting | 0 | base | unit-251946 | `0xf4c47d...576bbf` | ⚠️ Unaudited |
| PrizePoolTwabRewards | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-251891 | `0x0d51a3...a71dd9` | ⚠️ Unaudited |
| PrizeVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251849 | `0x9ee31e...c75573` | ⚠️ Unaudited |
| PrizeVault | core_logic | project_anchor | own_supporting | 0 | gnosis | unit-251887 | `0xb75af2...8b35cf` | ⚠️ Unaudited |
| PrizeVault | core_logic | project_anchor | own_supporting | 0 | base | unit-251931 | `0x6b5a5c...f7e4dd` | ⚠️ Unaudited |
| PrizeVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-251903 | `0x97a9c0...1e8c95` | ⚠️ Unaudited |
| PrizeVault | core_logic | project_anchor | own_supporting | 0 | scroll | unit-251912 | `0x29499e...b1fa9b` | ⚠️ Unaudited |
| PrizeVaultFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-251851 | `0xd499cc...dde7c3` | ⚠️ Unaudited |
| PrizeVaultFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251855 | `0x0c379e...4dfd39` | ⚠️ Unaudited |
| PrizeVaultFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-251872 | `0xec9f59...656775` | ⚠️ Unaudited |
| PrizeVaultFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251873 | `0xf0f151...0ea806` | ⚠️ Unaudited |
| PrizeVaultFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-251889 | `0xc3ae3f...31e2a6` | ⚠️ Unaudited |
| PrizeVaultFactory | registry | project_anchor | own_supporting | 0 | base | unit-251940 | `0xa55a74...d444bf` | ⚠️ Unaudited |
| PrizeVaultFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-251945 | `0xe32f63...396ddf` | ⚠️ Unaudited |
| PrizeVaultFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251894 | `0x44be00...2c07bc` | ⚠️ Unaudited |
| PrizeVaultFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-251900 | `0x8020fb...045e52` | ⚠️ Unaudited |
| RngWitnet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251853 | `0xf93329...dea215` | ⚠️ Unaudited |
| RngWitnet | unknown | project_anchor | own_supporting | 0 | optimism | unit-251860 | `0x3d2ef6...96aa7b` | ⚠️ Unaudited |
| RngWitnet | unknown | project_anchor | own_supporting | 0 | gnosis | unit-251882 | `0x47c921...df1123` | ⚠️ Unaudited |
| RngWitnet | unknown | project_anchor | own_supporting | 0 | base | unit-251932 | `0x74ebf3...9d18f0` | ⚠️ Unaudited |
| RngWitnet | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251904 | `0xad1b8e...dc107b` | ⚠️ Unaudited |
| RngWitnet | unknown | project_anchor | own_supporting | 0 | scroll | unit-251914 | `0x4d971a...94f608` | ⚠️ Unaudited |
| ScrollStandardERC20 | token | project_anchor | own_supporting | 0 | scroll | unit-251926 | `0xf9af83...a0f2b7` | ⚠️ Unaudited |
| StakingVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251844 | `0x68a100...c2f18b` | ⚠️ Unaudited |
| StakingVault | unknown | project_anchor | own_supporting | 0 | optimism | unit-251857 | `0x2c3000...473732` | ⚠️ Unaudited |
| StakingVault | unknown | project_anchor | own_supporting | 0 | gnosis | unit-251886 | `0x9ef19f...0ef172` | ⚠️ Unaudited |
| StakingVault | unknown | project_anchor | own_supporting | 0 | base | unit-251935 | `0x854f3d...80436d` | ⚠️ Unaudited |
| StakingVault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251909 | `0xf59e48...54da1f` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-251948 | `0xcf934e...b5b79c` | ⚠️ Unaudited |
| TpdaLiquidationPairFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-251850 | `0xa99b3a...a43908` | ⚠️ Unaudited |
| TpdaLiquidationPairFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-251866 | `0x80f866...77c7d1` | ⚠️ Unaudited |
| TpdaLiquidationPairFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-251888 | `0xbddd23...76368a` | ⚠️ Unaudited |
| TpdaLiquidationPairFactory | registry | project_anchor | own_supporting | 0 | base | unit-251936 | `0x8557a9...8374ea` | ⚠️ Unaudited |
| TpdaLiquidationPairFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-251892 | `0x163402...2dfd3f` | ⚠️ Unaudited |
| TpdaLiquidationRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-251846 | `0x7c210b...192ea0` | ⚠️ Unaudited |
| TpdaLiquidationRouter | adapter | project_anchor | own_supporting | 0 | optimism | unit-251864 | `0x7766b5...876136` | ⚠️ Unaudited |
| TpdaLiquidationRouter | adapter | project_anchor | own_supporting | 0 | gnosis | unit-251879 | `0x166448...d006c9` | ⚠️ Unaudited |
| TpdaLiquidationRouter | adapter | project_anchor | own_supporting | 0 | base | unit-251941 | `0xa9c937...dfc22c` | ⚠️ Unaudited |
| TpdaLiquidationRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-251899 | `0x7b4a60...67db73` | ⚠️ Unaudited |
| TpdaLiquidationRouter | adapter | project_anchor | own_supporting | 0 | scroll | unit-251916 | `0x6f0b0a...d6ef7b` | ⚠️ Unaudited |
| TwabController | governance | project_anchor | own_supporting | 0 | ethereum | unit-251842 | `0x4d5f2c...7b4acc` | ⚠️ Unaudited |
| TwabController | governance | project_anchor | own_supporting | 0 | optimism | unit-251871 | `0xcb0672...3be167` | ⚠️ Unaudited |
| TwabController | governance | project_anchor | own_supporting | 0 | gnosis | unit-251884 | `0x84090a...8afde6` | ⚠️ Unaudited |
| TwabController | governance | project_anchor | own_supporting | 0 | base | unit-251933 | `0x7e6360...4f44c6` | ⚠️ Unaudited |
| TwabController | governance | project_anchor | own_supporting | 0 | arbitrum | unit-251902 | `0x971ecc...14dc75` | ⚠️ Unaudited |
| TwabRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251838 | `0x2589ff...2f1a21` | ⚠️ Unaudited |
| TwabRewards | unknown | project_anchor | own_supporting | 0 | optimism | unit-251868 | `0x90d383...3ea9ea` | ⚠️ Unaudited |
| TwabRewards | unknown | project_anchor | own_supporting | 0 | gnosis | unit-251880 | `0x174215...276942` | ⚠️ Unaudited |
| TwabRewards | unknown | project_anchor | own_supporting | 0 | base | unit-251937 | `0x86f092...f2dc09` | ⚠️ Unaudited |
| TwabRewards | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251908 | `0xe21ac3...9c59be` | ⚠️ Unaudited |
| TwabRewards | unknown | project_anchor | own_supporting | 0 | scroll | unit-251911 | `0x0e71a9...48780d` | ⚠️ Unaudited |
| VaultBoosterFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-251839 | `0x31ec88...f483e8` | ⚠️ Unaudited |
| VaultBoosterFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-251841 | `0x36be31...ec66c6` | ⚠️ Unaudited |
| VaultBoosterFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251863 | `0x7746a7...71dada` | ⚠️ Unaudited |
| VaultBoosterFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-251867 | `0x858029...67f88c` | ⚠️ Unaudited |
| VaultBoosterFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-251885 | `0x8cffff...58d832` | ⚠️ Unaudited |
| VaultBoosterFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | gnosis | unit-251890 | `0xc9f124...1c4a78` | ⚠️ Unaudited |
| VaultBoosterFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-251927 | `0x02d37f...31530e` | ⚠️ Unaudited |
| VaultBoosterFactory | registry | project_anchor | own_supporting | 0 | base | unit-251939 | `0xa2ba3d...550ec2` | ⚠️ Unaudited |
| VaultBoosterFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251896 | `0x574257...0b449e` | ⚠️ Unaudited |
| VaultBoosterFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-251901 | `0x8cffff...58d832` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251910 | `0x0d51a3...a71dd9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251913 | `0x3fdd8b...3a30a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251915 | `0x5ec48e...14537d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | scroll | unit-251917 | `0x748300...024b76` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251918 | `0x8cffff...58d832` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251919 | `0x9cfe09...e38f66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251920 | `0xa6ecd6...899845` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251924 | `0xeb436b...0392a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251925 | `0xf17d29...6de152` | ❓ Unverified |

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
| native | 102 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 9 |

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
