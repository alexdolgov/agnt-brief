# Agentic Audit Brief: SquadSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 12 across 4 audit(s)
- Eligible audit results: 5 (4 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: SquadSwap (`squadswap`)
- Website: [https://squadswap.com/](https://squadswap.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, blast, bsc, optimism, polygon
- Contract surface: 109 unique implementations (109 raw deployments)
- Coverage basis: 2/41 confirmed own live verified implementations (4.9%); conservative 4.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,281,098.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SquadSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 44 contract row(s) across arbitrum, base, blast, bsc, optimism, polygon. Structural roles: 31 unclassified, 11 supporting, 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 44
- Structural roles: unclassified (31), supporting (11), core (2)
- Contract kinds: contract (41), unclassified (3)
- Detected standards: ownable (7), multicall (6), erc165 (2), erc721 (2), pausable (1)
- Frameworks: openzeppelin (10), uniswap-v3 (6), uniswap-v2 (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 89 contracts are derived from known codebases. 89 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x16fbb3...058788`, chain 10)
- UnnamedContract (`0x202de6...b794a3`, chain 10)
- UnnamedContract (`0x53616b...1dd62a`, chain 10)
- UnnamedContract (`0x5fbd88...a234c9`, chain 10)
- UnnamedContract (`0x7ea21a...4a14bb`, chain 10)
- UnnamedContract (`0x84ff9b...9f3898`, chain 10)
- UnnamedContract (`0x89c061...266711`, chain 10)
- UnnamedContract (`0xa1288b...f7c0ea`, chain 10)
- UnnamedContract (`0xb124a8...83212e`, chain 10)
- UnnamedContract (`0xb61715...2ebb48`, chain 10)
- UnnamedContract (`0xba34aa...35eef9`, chain 10)
- UnnamedContract (`0xbee320...543365`, chain 10)
- UnnamedContract (`0xcf2a34...80ae3b`, chain 10)
- UnnamedContract (`0xd43261...905b6a`, chain 10)
- UnnamedContract (`0xd70eb1...d080f8`, chain 10)
- UnnamedContract (`0xe58b1e...e144f1`, chain 10)
- UnnamedContract (`0xea0069...da7fb1`, chain 10)
- UnnamedContract (`0xee8f37...1299f0`, chain 10)
- UnnamedContract (`0xf48d22...facacc`, chain 10)
- UnnamedContract (`0xfa6eb2...1e2f85`, chain 10)
- UnnamedContract (`0x48470d...8d6ddb`, chain 56)
- UnnamedContract (`0xa9712b...fb2e4a`, chain 56)
- UnnamedContract (`0xc1fa2a...e217b9`, chain 56)
- UnnamedContract (`0xe27875...620acf`, chain 56)
- UnnamedContract (`0xf6dcd5...8b9a87`, chain 56)
- UnnamedContract (`0x369967...78d279`, chain 137)
- UnnamedContract (`0x3a5800...982286`, chain 137)
- UnnamedContract (`0x633faf...4714dc`, chain 137)
- UnnamedContract (`0x6785dc...10ed4c`, chain 137)
- UnnamedContract (`0x7f5f5a...6fd4cf`, chain 137)
- UnnamedContract (`0x8716f1...8715a3`, chain 137)
- UnnamedContract (`0x87b104...749d09`, chain 137)
- UnnamedContract (`0xa2a1e6...482878`, chain 137)
- UnnamedContract (`0xb00152...288fa2`, chain 137)
- UnnamedContract (`0xb3228e...9a7a19`, chain 137)
- UnnamedContract (`0xb3a209...dd529e`, chain 137)
- UnnamedContract (`0xc49f63...71d25c`, chain 137)
- UnnamedContract (`0xecfa6b...99d229`, chain 137)
- UnnamedContract (`0xee8f37...1299f0`, chain 137)
- UnnamedContract (`0xff29b1...27c261`, chain 137)
- UnnamedContract (`0x202de6...b794a3`, chain 8453)
- UnnamedContract (`0xb124a8...83212e`, chain 8453)
- UnnamedContract (`0x055892...c0c671`, chain 42161)
- UnnamedContract (`0x110909...bc1abf`, chain 42161)
- UnnamedContract (`0x11b701...be7d99`, chain 42161)
- UnnamedContract (`0x2e815e...94f39a`, chain 42161)
- UnnamedContract (`0x3767e2...66aa9f`, chain 42161)
- UnnamedContract (`0x7da1ec...f9f620`, chain 42161)
- UnnamedContract (`0x824300...b78d1c`, chain 42161)
- UnnamedContract (`0x95e801...9fe902`, chain 42161)
- UnnamedContract (`0x9cbb06...a41691`, chain 42161)
- UnnamedContract (`0xba34aa...35eef9`, chain 42161)
- UnnamedContract (`0xc639f1...8d90e2`, chain 42161)
- UnnamedContract (`0xd60507...b713aa`, chain 42161)
- UnnamedContract (`0xd6bd39...a83e64`, chain 42161)
- UnnamedContract (`0xe58b1e...e144f1`, chain 42161)
- UnnamedContract (`0xea6fd4...a68eed`, chain 42161)
- UnnamedContract (`0x87048e...e7e36a`, chain 81457)
- FeeManager (`0x5af85b...424b00`, chain 56)
- FeeManager (`0xfa6eb2...1e2f85`, chain 8453)
- FeeManager (`0x34bc76...61f2b9`, chain 81457)
- LovelySwapInterfaceMulticall (`0x6d705b...c7fee7`, chain 56)
- NonfungiblePositionManager (`0x501535...1db7b4`, chain 56)
- NonfungiblePositionManager (`0xd70eb1...d080f8`, chain 8453)
- NonfungiblePositionManager (`0x03439c...c8f7bb`, chain 81457)
- SmartChefFactory (`0x642782...52ec16`, chain 56)
- SmartChefFactory (`0x29626c...c2af09`, chain 8453)
- SmartChefFactory (`0x6d3a3a...c8fd75`, chain 81457)
- SmartRouter (`0xfb96f5...0b8b5b`, chain 56)
- SmartRouter (`0xf48d22...facacc`, chain 8453)
- SmartRouter (`0x152176...2c53dd`, chain 81457)
- SquadInterfaceMulticall (`0xee8f37...1299f0`, chain 8453)
- SquadLimitOrder (`0x62490b...56aab9`, chain 56)
- SquadswapRouter02 (`0xcf870c...5ee48d`, chain 56)
- SquadswapRouter02 (`0xe58b1e...e144f1`, chain 8453)
- SquadswapRouter02 (`0xa3f309...4e395c`, chain 81457)
- SquadV3Factory (`0x10d861...6bc07b`, chain 56)
- SquadV3Factory (`0xa1288b...f7c0ea`, chain 8453)
- SquadV3Factory (`0x6ea64b...34e8fd`, chain 81457)
- SquadV3LmPoolDeployer (`0x97eed6...a4bc8a`, chain 81457)
- SwapRouter (`0x56956a...38ef70`, chain 56)
- SwapRouter (`0xd43261...905b6a`, chain 8453)
- SwapRouter (`0x416a2c...ae4b0c`, chain 81457)
- TickLens (`0x7c9c92...0a6373`, chain 56)
- TickLens (`0x5fbd88...a234c9`, chain 8453)
- TickLens (`0xad2fea...e6a24b`, chain 81457)
- V3Migrator (`0x9d19dd...9ca47f`, chain 56)
- V3Migrator (`0xbee320...543365`, chain 8453)
- V3Migrator (`0xa58659...b674ab`, chain 81457)

## Contract Surface Quality

- Indexed contracts: 44; live-surface contracts included: 44 (41 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 99/99 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/41 (4.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 99 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Deployed-live implementations: 99 of 109 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/41
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 58
- Unique implementations: 109
- Raw deployments: 109
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 4.9% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SquadswapFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-256955 | `0x918adf...653dba` | ✅ Audited |
| SquadswapRouter02 | adapter | project_anchor | own_supporting | 0 | bsc | unit-256959 | `0xcf870c...5ee48d` | ✅ Audited |

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FeeManager | governance | project_anchor | own_supporting | 0 | bsc | unit-256950 | `0x5af85b...424b00` | ⚠️ Unaudited |
| FeeManager | unknown | project_anchor | own_supporting | 0 | base | unit-256991 | `0xfa6eb2...1e2f85` | ⚠️ Unaudited |
| FeeManager | unknown | project_anchor | own_supporting | 0 | blast | unit-256967 | `0x34bc76...61f2b9` | ⚠️ Unaudited |
| LovelySwapInterfaceMulticall | unknown | project_anchor | own_supporting | 0 | bsc | unit-256953 | `0x6d705b...c7fee7` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | bsc | unit-256992 | `0x501535...1db7b4` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | project_anchor | own_supporting | 0 | base | unit-256987 | `0xd70eb1...d080f8` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | blast | unit-256965 | `0x03439c...c8f7bb` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | project_anchor | own_supporting | 1 | bsc | unit-256993 | `0x388a6f...829150` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | project_anchor | own_supporting | 1 | base | unit-256995 | `0xcf2a34...80ae3b` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | project_anchor | own_supporting | 1 | blast | unit-256994 | `0x7b7a8f...cb8172` | ⚠️ Unaudited |
| SmartChefFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-256952 | `0x642782...52ec16` | ⚠️ Unaudited |
| SmartChefFactory | unknown | project_anchor | own_supporting | 0 | base | unit-256979 | `0x29626c...c2af09` | ⚠️ Unaudited |
| SmartChefFactory | unknown | project_anchor | own_supporting | 0 | blast | unit-256970 | `0x6d3a3a...c8fd75` | ⚠️ Unaudited |
| SmartRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-256963 | `0xfb96f5...0b8b5b` | ⚠️ Unaudited |
| SmartRouter | adapter | project_anchor | own_supporting | 0 | base | unit-256990 | `0xf48d22...facacc` | ⚠️ Unaudited |
| SmartRouter | adapter | project_anchor | own_supporting | 0 | blast | unit-256966 | `0x152176...2c53dd` | ⚠️ Unaudited |
| SmartRouterHelper | unknown | project_anchor | own_supporting | 0 | bsc | unit-256961 | `0xf1a0c1...79a811` | ⚠️ Unaudited |
| SmartRouterHelper | unknown | project_anchor | own_supporting | 0 | base | unit-256981 | `0x7ea21a...4a14bb` | ⚠️ Unaudited |
| SmartRouterHelper | unknown | project_anchor | own_supporting | 0 | blast | unit-256977 | `0xdfc40e...ef090f` | ⚠️ Unaudited |
| SquadInterfaceMulticall | unknown | project_anchor | own_supporting | 0 | base | unit-256989 | `0xee8f37...1299f0` | ⚠️ Unaudited |
| SquadInterfaceMulticall | unknown | project_anchor | own_supporting | 0 | blast | unit-256964 | `0x02ce24...c4e691` | ⚠️ Unaudited |
| SquadLimitOrder | unknown | project_anchor | own_supporting | 0 | bsc | unit-256951 | `0x62490b...56aab9` | ⚠️ Unaudited |
| SquadswapFactory | unknown | project_anchor | own_supporting | 0 | base | unit-256984 | `0xba34aa...35eef9` | ⚠️ Unaudited |
| SquadswapFactory | unknown | project_anchor | own_supporting | 0 | blast | unit-256969 | `0x4b599f...ad6551` | ⚠️ Unaudited |
| SquadswapRouter02 | unknown | project_anchor | own_supporting | 0 | base | unit-256988 | `0xe58b1e...e144f1` | ⚠️ Unaudited |
| SquadswapRouter02 | adapter | project_anchor | own_supporting | 0 | blast | unit-256974 | `0xa3f309...4e395c` | ⚠️ Unaudited |
| SquadV3Factory | registry | project_anchor | own_supporting | 0 | bsc | unit-256947 | `0x10d861...6bc07b` | ⚠️ Unaudited |
| SquadV3Factory | unknown | project_anchor | own_supporting | 0 | base | unit-256982 | `0xa1288b...f7c0ea` | ⚠️ Unaudited |
| SquadV3Factory | unknown | project_anchor | own_supporting | 0 | blast | unit-256971 | `0x6ea64b...34e8fd` | ⚠️ Unaudited |
| SquadV3LmPoolDeployer | unknown | project_anchor | own_supporting | 0 | blast | unit-256973 | `0x97eed6...a4bc8a` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-256949 | `0x56956a...38ef70` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 0 | base | unit-256986 | `0xd43261...905b6a` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 0 | blast | unit-256968 | `0x416a2c...ae4b0c` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | bsc | unit-256954 | `0x7c9c92...0a6373` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | base | unit-256980 | `0x5fbd88...a234c9` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | blast | unit-256976 | `0xad2fea...e6a24b` | ⚠️ Unaudited |
| V3Migrator | unknown | project_anchor | own_supporting | 0 | bsc | unit-256956 | `0x9d19dd...9ca47f` | ⚠️ Unaudited |
| V3Migrator | unknown | project_anchor | own_supporting | 0 | base | unit-256985 | `0xbee320...543365` | ⚠️ Unaudited |
| V3Migrator | unknown | project_anchor | own_supporting | 0 | blast | unit-256975 | `0xa58659...b674ab` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (68)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256897 | `0x16fbb3...058788` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256898 | `0x202de6...b794a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256899 | `0x53616b...1dd62a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256900 | `0x5fbd88...a234c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256901 | `0x7ea21a...4a14bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256902 | `0x84ff9b...9f3898` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256903 | `0x89c061...266711` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256904 | `0xa1288b...f7c0ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256905 | `0xb124a8...83212e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256906 | `0xb61715...2ebb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256907 | `0xba34aa...35eef9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256908 | `0xbee320...543365` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256909 | `0xcf2a34...80ae3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256910 | `0xd43261...905b6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256911 | `0xd70eb1...d080f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256912 | `0xe58b1e...e144f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256913 | `0xea0069...da7fb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256914 | `0xee8f37...1299f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256915 | `0xf48d22...facacc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256916 | `0xfa6eb2...1e2f85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256948 | `0x48470d...8d6ddb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256957 | `0xa9712b...fb2e4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256958 | `0xc1fa2a...e217b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256960 | `0xe27875...620acf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256962 | `0xf6dcd5...8b9a87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1d9f43...3b6ac1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256917 | `0x369967...78d279` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256918 | `0x3a5800...982286` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256919 | `0x633faf...4714dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256920 | `0x6785dc...10ed4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6d3a3a...c8fd75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256921 | `0x7f5f5a...6fd4cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256922 | `0x8716f1...8715a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256923 | `0x87b104...749d09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256924 | `0xa2a1e6...482878` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256925 | `0xb00152...288fa2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256926 | `0xb3228e...9a7a19` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256927 | `0xb3a209...dd529e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb4286e...3b49c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256928 | `0xc49f63...71d25c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc566fb...17a5cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc589b6...c6061e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256929 | `0xecfa6b...99d229` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256930 | `0xee8f37...1299f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256931 | `0xff29b1...27c261` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-256978 | `0x202de6...b794a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-256983 | `0xb124a8...83212e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256932 | `0x055892...c0c671` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256933 | `0x110909...bc1abf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256934 | `0x11b701...be7d99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bc323...bb70e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256935 | `0x2e815e...94f39a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256936 | `0x3767e2...66aa9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6daafc...acf576` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256937 | `0x7da1ec...f9f620` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256938 | `0x824300...b78d1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x829ce7...464aee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256939 | `0x95e801...9fe902` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256940 | `0x9cbb06...a41691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9e236...da5dca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256941 | `0xba34aa...35eef9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256942 | `0xc639f1...8d90e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256943 | `0xd60507...b713aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256944 | `0xd6bd39...a83e64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256945 | `0xe58b1e...e144f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea0069...da7fb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256946 | `0xea6fd4...a68eed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-256972 | `0x87048e...e7e36a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf) | PeckShield | Audit | 2025-02 | aging | Direct | contract_name | matched | 3 | 0 | 0 | 5 | high |
| [www.cyberscope.io/audits/squadswap](https://www.cyberscope.io/audits/squadswap) | unknown | Audit | 2023-11 | stale | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [squadswap.pdf](https://github.com/cyberscope-io/audits/blob/main/squadswap/squadswap.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/squadswap/v1/audit.pdf) | unknown | Audit | 2023-11 | stale | Direct | n/a | matched | 0 | 0 | 0 | 0 | n/a |
| [PeckShield-Audit-Report-SquadSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SquadSwap-v1.0.pdf) | PeckShield | Audit | 2024-02 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3033] PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf — matched: Scope explicitly lists 8 contracts on page 5. Audit date is February 2, 2025 from cover page and version history.
- [3034] www.cyberscope.io/audits/squadswap — no match: Only one contract file mentioned in the audit report: contracts/Squad.sol. The audit date is inferred from 'Onboarded on 28/11/2023' and 'Iteration (28/11/2023)'.
- [3036] squadswap.pdf — matched: Extracted from source files table and overview sections. Audit date from 'Initial Audit 28 Dec 2023'.
- [3037] audit.pdf — matched: ambiguous_frozen_extraction_cache
- [3038] PeckShield-Audit-Report-SquadSwap-v1.0.pdf — matched: Contracts extracted from findings targets and code snippets. No explicit scope table, but contracts are clearly audited.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf | SquadswapFactory | own contract | SquadswapFactory (alternative) `0x4b599f...ad6551` — deployed 2024-06-27 17:52:53+03 — liveness: live (code_present_context)<br>SquadswapFactory (selected) `0x918adf...653dba` — deployed 2025-01-29 13:53:09+03 — liveness: live (code_present_context)<br>SquadswapFactory (alternative) `0xba34aa...35eef9` — deployed 2024-09-13 19:06:23+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-01-29 was 4d from audit; next candidate 142d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf | SquadswapPair | unmatched — not counted | — | listed in scope on page 5 | no |
| PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf | V2_5Migrator | unmatched — not counted | — | listed in scope on page 5 | no |
| PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf | SquadswapRouter02 | own contract | SquadswapRouter02 (selected) `0xcf870c...5ee48d` — deployed 2025-01-29 14:10:00+03 — liveness: live (code_present_context)<br>SquadswapRouter02 (alternative) `0xe58b1e...e144f1` — deployed 2024-09-13 19:07:05+03 — liveness: live (code_present_context)<br>SquadswapRouter02 (alternative) `0xa3f309...4e395c` — deployed 2024-06-27 18:02:53+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-01-29 was 4d from audit; next candidate 142d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf | SquadswapLibrary | unmatched — not counted | — | listed in scope on page 5 | no |
| PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf | V2SwapRouter | unmatched — not counted | — | listed in scope on page 5 | no |
| PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf | MixedRouteQuoterV1 | own contract | 0x16fbb3… (selected) `0x16fbb3...058788` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf | SmartRouterHelper | ambiguous — not counted | SmartRouterHelper (alternative) `0xf1a0c1...79a811` — deployed 2025-01-29 15:20:24+03 — liveness: live (current_address_book_code)<br>SmartRouterHelper (alternative) `0x7ea21a...4a14bb` — deployed 2024-09-13 21:02:57+03 — liveness: live (current_address_book_code)<br>SmartRouterHelper (alternative) `0xdfc40e...ef090f` — deployed 2024-07-04 16:06:29+03 — liveness: live (current_address_book_code)<br>0x7ea21a… (alternative) `0x7ea21a...4a14bb` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| www.cyberscope.io/audits/squadswap | Squad | unmatched — not counted | — | listed in scope | no |
| squadswap.pdf | SquadAirdrop | unmatched — not counted | — | listed in source files and overview | no |
| squadswap.pdf | SafeBEP20 | unmatched — not counted | — | listed in source files | no |
| squadswap.pdf | ReentrancyGuard | unmatched — not counted | — | listed in source files | no |
| squadswap.pdf | MasterChefV2 | own contract | 0xb61715… (selected) `0xb61715...2ebb48` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| squadswap.pdf | IMasterChef | unmatched — not counted | — | listed in source files | no |
| squadswap.pdf | IBEP20 | unmatched — not counted | — | listed in source files | no |
| squadswap.pdf | SquadProfile | unmatched — not counted | — | listed in source files and overview | no |
| squadswap.pdf | SmartChefInitializable | unmatched — not counted | — | listed in source files and overview | no |
| squadswap.pdf | SmartChefFactory | ambiguous — not counted | SmartChefFactory (alternative) `0x642782...52ec16` — deployed 2024-03-06 12:30:01+03 — liveness: live (current_address_book_code)<br>SmartChefFactory (alternative) `0x6d3a3a...c8fd75` — deployed 2024-06-28 00:52:25+03 — liveness: live (current_address_book_code)<br>SmartChefFactory (alternative) `0x29626c...c2af09` — deployed 2024-09-14 00:15:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| squadswap.pdf | IPancakeProfile | unmatched — not counted | — | listed in source files | no |
| PeckShield-Audit-Report-SquadSwap-v1.0.pdf | SquadV3LmPool | unmatched — not counted | — | Finding PVE-001 target | no |
| PeckShield-Audit-Report-SquadSwap-v1.0.pdf | MasterChefV2 | own contract | 0xb61715… (selected) `0xb61715...2ebb48` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-SquadSwap-v1.0.pdf | SmartChefInitializable | unmatched — not counted | — | Findings PVE-004 and PVE-005 target | no |
| PeckShield-Audit-Report-SquadSwap-v1.0.pdf | SquadswapPair | unmatched — not counted | — | Finding PVE-006 target | no |
| PeckShield-Audit-Report-SquadSwap-v1.0.pdf | SquadswapRouter02 | ambiguous — not counted | SquadswapRouter02 (alternative) `0xcf870c...5ee48d` — deployed 2025-01-29 14:10:00+03 — liveness: live (code_present_context)<br>SquadswapRouter02 (alternative) `0xe58b1e...e144f1` — deployed 2024-09-13 19:07:05+03 — liveness: live (code_present_context)<br>SquadswapRouter02 (alternative) `0xa3f309...4e395c` — deployed 2024-06-27 18:02:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-SquadSwap-v1.0.pdf | MasterChefV3 | own contract | 0x89c061… (selected) `0x89c061...266711` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x5af85b...424b00` | FeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xfa6eb2...1e2f85` | FeeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x34bc76...61f2b9` | FeeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6d705b...c7fee7` | LovelySwapInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x501535...1db7b4` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd70eb1...d080f8` | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x03439c...c8f7bb` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x388a6f...829150` | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xcf2a34...80ae3b` | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x7b7a8f...cb8172` | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x642782...52ec16` | SmartChefFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x29626c...c2af09` | SmartChefFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x6d3a3a...c8fd75` | SmartChefFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfb96f5...0b8b5b` | SmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf48d22...facacc` | SmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x152176...2c53dd` | SmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf1a0c1...79a811` | SmartRouterHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x7ea21a...4a14bb` | SmartRouterHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xdfc40e...ef090f` | SmartRouterHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xee8f37...1299f0` | SquadInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x02ce24...c4e691` | SquadInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x62490b...56aab9` | SquadLimitOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xba34aa...35eef9` | SquadswapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x4b599f...ad6551` | SquadswapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe58b1e...e144f1` | SquadswapRouter02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xa3f309...4e395c` | SquadswapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x10d861...6bc07b` | SquadV3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa1288b...f7c0ea` | SquadV3Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x6ea64b...34e8fd` | SquadV3Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x97eed6...a4bc8a` | SquadV3LmPoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x56956a...38ef70` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd43261...905b6a` | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x416a2c...ae4b0c` | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x7c9c92...0a6373` | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5fbd88...a234c9` | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xad2fea...e6a24b` | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9d19dd...9ca47f` | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xbee320...543365` | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xa58659...b674ab` | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 68 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 16 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: temporal_name=2, unique_name=10

Zero-match audit list:

- [3034] www.cyberscope.io/audits/squadswap

Fork inheritance lineage and inherited audits are included when available.
