# Agentic Audit Brief: SquadSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 12 across 4 audit(s)
- Eligible audit results: 5 (4 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: SquadSwap (`squadswap`)
- Website: [https://squadswap.com/](https://squadswap.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, blast, bsc, optimism, polygon
- Contract surface: 321 unique implementations (664 raw deployments)
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

0 of 92 contracts are derived from known codebases. 92 contracts have no detected origin.

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
- NonfungibleTokenPositionDescriptorOffChain (`0x5a547c...6d8d59`, chain 56)
- NonfungibleTokenPositionDescriptorOffChain (`0xac5b61...6f72f3`, chain 8453)
- NonfungibleTokenPositionDescriptorOffChain (`0x64d6f4...ce3693`, chain 81457)
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

- Logic-topography rows: 44; live-surface rows included: 44 (44 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 99/99 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/41 (4.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 99 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 222 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 34
- Confirmed-live implementations: 99 of 321 unique; 222 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/86
- Verified + Unaudited implementations: 84
- Verified by bytecode match: 0
- Unverified implementations: 235
- Unique implementations: 321
- Raw deployments: 664
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
| PeckShield | Tier 2 | 2 | 2.3% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SquadswapFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-256955 | `0x918adf...653dba` | ✅ Audited |
| SquadswapRouter02 | adapter | project_anchor | own_supporting | 0 | bsc | unit-256959 | `0xcf870c...5ee48d` | ✅ Audited |

### ⚠️ Verified + Unaudited (84)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BinFeeManagerHook | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x0ec6a9...60ab86`; bsc `0x73e5fd...a58113`; base `0xd4db07...c6abdd`; base `0xda3eb4...019426` | ⚠️ Unaudited |
| CLFeeManagerHook | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x73c5c8...255c0a`; bsc `0x79a4be...4b0b18`; base `0x84863e...0a2598`; base `0xf397f1...e86c97` | ⚠️ Unaudited |
| CryptoV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 27 deployments: bsc `0x14af39...2eb28a`; bsc `0x211068...0ede52`; bsc `0x2d53ad...3380b7`; bsc `0x315223...df8140`; bsc `0x3874f3...21af19`; bsc `0x39f4d9...6f01e6`; bsc `0x41c9b3...756fd0`; bsc `0x423a83...11e6a7`; bsc `0x4645d4...b4a630`; bsc `0x4bb63a...54b572`; bsc `0x514fb3...7bf3b6`; bsc `0x817d75...b02cd1`; bsc `0x8e5c10...038826`; bsc `0x9199c3...0bbdd1`; bsc `0xa1f15e...844b1a`; bsc `0xa76cc2...ed40f5`; bsc `0xb24954...bf7eac`; bsc `0xb4feca...5290ec`; bsc `0xc1aa76...ef0cb9`; bsc `0xc7c00e...8f93e2`; bsc `0xcb2079...b46c45`; bsc `0xd51b46...01bd8d`; bsc `0xdd344b...faa980`; bsc `0xe4d849...afe50f`; bsc `0xe7745b...9bc32f`; bsc `0xeb0516...92322f`; bsc `0xf80812...70623c` | ⚠️ Unaudited |
| FarmBooster | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x52e2f8...cda89e`; bsc `0x672d60...08c9ca`; bsc `0x832c70...421099`; bsc `0x9ee6c6...08a820`; base `0x7f5f5a...6fd4cf`; base `0xc589b6...c6061e` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 28 deployments: bsc `0x0a0c8a...f5213b`; bsc `0x0bfbf7...5780d1`; bsc `0x140377...652975`; bsc `0x215f4b...83ad95`; bsc `0x32be40...436d7c`; bsc `0x368cf1...2f13c8`; bsc `0x37c1fc...fa0f7d`; bsc `0x4b70dc...e58077`; bsc `0x6777b9...607d92`; bsc `0x7a7d74...e528e9`; bsc `0x7f478b...d225a4`; bsc `0x87983b...f7fae7`; bsc `0x8e3c31...7f004f`; bsc `0x90cea4...0d8e3a`; bsc `0x9d8b42...cafb3c`; bsc `0xaeae15...5e61e5`; bsc `0xb520d5...06fa42`; bsc `0xc6f46f...c6a4e9`; bsc `0xccca34...5efc52`; bsc `0xd5a339...839939`; bsc `0xdb0e65...a45959`; bsc `0xf950c9...bff370`; bsc `0xfe30df...04d591`; bsc `0xffa78f...da9c9a`; base `0xc639f1...8d90e2`; blast `0x4969e5...6e7212`; blast `0x53616b...1dd62a`; blast `0xafedaf...c3abbc` | ⚠️ Unaudited |
| FeeManager | governance | project_anchor | own_supporting | 0 | bsc | unit-256950 | `0x5af85b...424b00` | ⚠️ Unaudited |
| FeeManager | unknown | project_anchor | own_supporting | 0 | base | unit-256991 | `0xfa6eb2...1e2f85` | ⚠️ Unaudited |
| FeeManager | unknown | project_anchor | own_supporting | 0 | blast | unit-256967 | `0x34bc76...61f2b9` | ⚠️ Unaudited |
| IFODeployerV10 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x05fff7...c5fb39`; base `0x143bc7...7d94d9` | ⚠️ Unaudited |
| LovelySwapInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 18 deployments: bsc `0x04df0e...e7ec09`; bsc `0x3e89de...cc42d5`; bsc `0x4543fa...38c3d5`; bsc `0x48f413...ff34f1`; bsc `0x572456...1b9635`; bsc `0x7230a2...59ad17`; bsc `0x77bec3...f1c351`; bsc `0x902dc5...72d38b`; bsc `0x96b68d...023a58`; bsc `0x997534...906b88`; bsc `0x9d758e...b43d74`; bsc `0xb148c1...9253ae`; bsc `0xb1d3bf...dc81ca`; bsc `0xb4b76b...f1a62c`; bsc `0xb66e73...5b8039`; bsc `0xc96bf5...e6229e`; bsc `0xd34fea...f7c4ab`; bsc `0xdf1996...b720ce` | ⚠️ Unaudited |
| LovelySwapInterfaceMulticall | unknown | project_anchor | own_supporting | 0 | bsc | unit-256953 | `0x6d705b...c7fee7` | ⚠️ Unaudited |
| MasterChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x2e881a...4879b4`; bsc `0x6316f6...22b82a`; bsc `0xec6743...7a76ca`; base `0xb3a209...dd529e`; base `0xb61715...2ebb48`; base `0xc49f63...71d25c`; blast `0xdee103...673063` | ⚠️ Unaudited |
| MasterChefV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 10 deployments: bsc `0x19bcd1...029359`; bsc `0x2ca14a...f96868`; bsc `0x44ec81...0202b5`; bsc `0x87dd4b...80200f`; base `0x87b104...749d09`; base `0x89c061...266711`; blast `0x16fbb3...058788`; blast `0x58fea8...178dc7`; blast `0xc639f1...8d90e2`; blast `0xda3840...ccff8b` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x84ff9b...9f3898` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 25 deployments: bsc `0x18825a...a5aa02`; bsc `0x1ad99e...e7d85b`; bsc `0x1db019...ef7f2a`; bsc `0x3e8d24...4dc0b7`; bsc `0x43d665...492a07`; bsc `0x4d9dff...f496a1`; bsc `0x4f0ece...eda1b8`; bsc `0x50b2f7...82f553`; bsc `0x5a2457...bcde2c`; bsc `0x652590...7c423c`; bsc `0x709d09...ce884d`; bsc `0x7bce43...9cd10c`; bsc `0x8b3aa3...7d0a02`; bsc `0x9e6b2d...0cb071`; bsc `0xba0035...3acf04`; bsc `0xc7b975...beea56`; bsc `0xc8ad44...62fadf`; bsc `0xdfc061...e9e9a0`; bsc `0xe5a7fe...ef0adf`; bsc `0xf3de35...ef037a`; bsc `0xfc008d...a4a37b`; base `0x933f97...a409b9`; blast `0x2c0126...fe2d7a`; blast `0x824300...b78d1c`; blast `0xac5b61...6f72f3` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | bsc | unit-256992 | `0x501535...1db7b4` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | project_anchor | own_supporting | 0 | base | unit-256987 | `0xd70eb1...d080f8` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | blast | unit-256965 | `0x03439c...c8f7bb` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | non_address_book | non_address_book_inventory (excluded) | 12 | bsc | n/a | 13 deployments: bsc `0x0a4224...377778`; bsc `0x20dcd7...4c0274`; bsc `0x2f314b...93d3b2`; bsc `0x3109db...5bfb4c`; bsc `0x35b936...2266fb`; bsc `0x4546db...bdb7a2`; bsc `0x5e4edd...52e377`; bsc `0x816e5d...c15f8b`; bsc `0x92008f...f88317`; bsc `0xa149f9...ddd4f8`; bsc `0xa4a858...d6b362`; bsc `0xa5fc80...3d0ba2`; bsc `0xd01a4a...0d071a` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | bsc | n/a | 7 deployments: bsc `0x26583d...792df4`; bsc `0x2bcb99...2cfdc4`; bsc `0x38197c...99727b`; bsc `0x499138...370360`; bsc `0x504eba...893295`; bsc `0xbb2731...9e310d`; bsc `0xdc3dd3...aa9be6` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x32d4a7...1d5c86`; bsc `0xac9240...18a7e1` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | project_anchor | own_supporting | 1 | bsc | unit-256993 | 2 deployments: bsc `0x388a6f...829150`; bsc `0x5a547c...6d8d59` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 2 deployments: bsc `0x6967cb...9ed648`; bsc `0x80ff20...cf17ed` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xcbdf56...968a00`; bsc `0xe5200b...cd915b` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | project_anchor | own_supporting | 1 | base | unit-256995 | 2 deployments: base `0xac5b61...6f72f3`; base `0xcf2a34...80ae3b` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xea6fd4...a68eed` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | blast | n/a | 3 deployments: blast `0x295f6a...1649c5`; blast `0x7da1ec...f9f620`; blast `0xd43261...905b6a` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | project_anchor | own_supporting | 1 | blast | unit-256994 | 2 deployments: blast `0x64d6f4...ce3693`; blast `0x7b7a8f...cb8172` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChainV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9cbbb3...00e365`; bsc `0xfa0c02...6c24d3` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: bsc `0x17f24a...b107f7`; bsc `0x622122...921769`; bsc `0x6c8d43...f1448a`; bsc `0xa313c4...41bf13`; bsc `0xa4af76...b3d7bf`; base `0x07fd20...838251`; blast `0x2149e9...9e1a9c` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 30 deployments: bsc `0x291b83...4b0b4b`; bsc `0x2a5d10...d266dd`; bsc `0x330dab...0f4310`; bsc `0x465cca...6ddff3`; bsc `0x516557...b9f714`; bsc `0x547b40...db23a2`; bsc `0x57e621...036bee`; bsc `0x629c12...197215`; bsc `0x699de5...7cc6a3`; bsc `0x72992f...2eab6e`; bsc `0x732431...199eeb`; bsc `0x81da0d...6f21e0`; bsc `0x86a3b5...ac70d7`; bsc `0x9c3ab9...89f1a0`; bsc `0xaabe3a...1e89b9`; bsc `0xaf78c3...7cfe7f`; bsc `0xcad9ec...6edad5`; bsc `0xce631c...3e61f9`; base `0x144403...cf27fc`; base `0x6785dc...10ed4c`; base `0x84ff9b...9f3898`; base `0xb00152...288fa2`; blast `0x061856...186a3d`; blast `0x59378a...c9ae42`; blast `0x7b8227...085b5c`; blast `0x7e9832...7c9a88`; blast `0x7ea21a...4a14bb`; blast `0x829ce7...464aee`; blast `0xd60507...b713aa`; blast `0xee8f37...1299f0` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x04e54d...9407f7`; bsc `0x28aa1b...2ce150`; base `0x7171ea...fea1a7` | ⚠️ Unaudited |
| SmartChefFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-256952 | `0x642782...52ec16` | ⚠️ Unaudited |
| SmartChefFactory | unknown | project_anchor | own_supporting | 0 | base | unit-256979 | `0x29626c...c2af09` | ⚠️ Unaudited |
| SmartChefFactory | unknown | project_anchor | own_supporting | 0 | blast | unit-256970 | `0x6d3a3a...c8fd75` | ⚠️ Unaudited |
| SmartChefInitializable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc566fb...17a5cb` | ⚠️ Unaudited |
| SmartRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-256963 | `0xfb96f5...0b8b5b` | ⚠️ Unaudited |
| SmartRouter | adapter | project_anchor | own_supporting | 0 | base | unit-256990 | `0xf48d22...facacc` | ⚠️ Unaudited |
| SmartRouter | adapter | project_anchor | own_supporting | 0 | blast | unit-256966 | `0x152176...2c53dd` | ⚠️ Unaudited |
| SmartRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 5 deployments: bsc `0x8b0c61...cc727b`; base `0xe55d12...524377`; blast `0x5fbd88...a234c9`; blast `0x95e801...9fe902`; blast `0xdeb0bf...2870c0` | ⚠️ Unaudited |
| SmartRouterHelper | unknown | project_anchor | own_supporting | 0 | bsc | unit-256961 | `0xf1a0c1...79a811` | ⚠️ Unaudited |
| SmartRouterHelper | unknown | project_anchor | own_supporting | 0 | base | unit-256981 | `0x7ea21a...4a14bb` | ⚠️ Unaudited |
| SmartRouterHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 5 deployments: bsc `0x5ba247...0d6ed3`; base `0x369967...78d279`; blast `0x1bc323...bb70e7`; blast `0x5dbbf7...53312f`; blast `0xbee320...543365` | ⚠️ Unaudited |
| SmartRouterHelper | unknown | project_anchor | own_supporting | 0 | blast | unit-256977 | `0xdfc40e...ef090f` | ⚠️ Unaudited |
| SquadAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 16 deployments: bsc `0x0faf03...a3ad11`; bsc `0x3234a2...2e4556`; bsc `0x344263...284381`; bsc `0x44b002...1fc5f0`; bsc `0x6c8d18...856954`; bsc `0x75dd15...cf72ab`; bsc `0x8dd8d2...45a9e8`; bsc `0xae6afd...28985a`; bsc `0xb34563...db6c21`; bsc `0xb9abf7...79ec24`; bsc `0xbce603...a294d1`; bsc `0xc47b5e...38a458`; bsc `0xd1ed24...6b3f83`; bsc `0xe51042...c130d5`; bsc `0xf48a35...c919d4`; bsc `0xf735d6...a90ba6` | ⚠️ Unaudited |
| SquadInterfaceMulticall | unknown | project_anchor | own_supporting | 0 | base | unit-256989 | `0xee8f37...1299f0` | ⚠️ Unaudited |
| SquadInterfaceMulticall | unknown | project_anchor | own_supporting | 0 | blast | unit-256964 | `0x02ce24...c4e691` | ⚠️ Unaudited |
| SquadInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 4 deployments: base `0xdee103...673063`; blast `0x07fd20...838251`; blast `0xd6bd39...a83e64`; blast `0xf90391...9834c9` | ⚠️ Unaudited |
| SquadLimitOrder | unknown | project_anchor | own_supporting | 0 | bsc | unit-256951 | `0x62490b...56aab9` | ⚠️ Unaudited |
| SquadOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x08ccb8...a68b7e`; blast `0x08ccb8...a68b7e` | ⚠️ Unaudited |
| SquadswapFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: bsc `0x1d9f43...3b6ac1`; base `0x11b701...be7d99`; base `0x1bc323...bb70e7`; base `0x4b599f...ad6551`; base `0xd6bd39...a83e64` | ⚠️ Unaudited |
| SquadswapFactory | unknown | project_anchor | own_supporting | 0 | base | unit-256984 | `0xba34aa...35eef9` | ⚠️ Unaudited |
| SquadswapFactory | unknown | project_anchor | own_supporting | 0 | blast | unit-256969 | `0x4b599f...ad6551` | ⚠️ Unaudited |
| SquadswapInterfaceMulticallV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4843b...67592d` | ⚠️ Unaudited |
| SquadSwapNftStake | token | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xb216ab...ac7e41` | ⚠️ Unaudited |
| SquadswapPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa773b9...4440d1` | ⚠️ Unaudited |
| SquadswapRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: bsc `0x850774...55611c`; base `0x3767e2...66aa9f`; base `0x95e801...9fe902`; base `0xa3f309...4e395c`; base `0xd60507...b713aa` | ⚠️ Unaudited |
| SquadswapRouter02 | unknown | project_anchor | own_supporting | 0 | base | unit-256988 | `0xe58b1e...e144f1` | ⚠️ Unaudited |
| SquadswapRouter02 | adapter | project_anchor | own_supporting | 0 | blast | unit-256974 | `0xa3f309...4e395c` | ⚠️ Unaudited |
| SquadToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d2567...2e310c` | ⚠️ Unaudited |
| SquadV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x009c4e...1367c3`; base `0x829ce7...464aee`; blast `0x2ea306...08ebb6`; blast `0xba34aa...35eef9`; blast `0xea0069...da7fb1` | ⚠️ Unaudited |
| SquadV3Factory | registry | project_anchor | own_supporting | 0 | bsc | unit-256947 | `0x10d861...6bc07b` | ⚠️ Unaudited |
| SquadV3Factory | unknown | project_anchor | own_supporting | 0 | base | unit-256982 | `0xa1288b...f7c0ea` | ⚠️ Unaudited |
| SquadV3Factory | unknown | project_anchor | own_supporting | 0 | blast | unit-256971 | `0x6ea64b...34e8fd` | ⚠️ Unaudited |
| SquadV3LmPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x182b98...578216`; bsc `0x8dae3d...f93a52`; blast `0x6785dc...10ed4c`; blast `0xa9e236...da5dca`; blast `0xc4e896...7ace3d` | ⚠️ Unaudited |
| SquadV3LmPoolDeployer | unknown | project_anchor | own_supporting | 0 | blast | unit-256973 | `0x97eed6...a4bc8a` | ⚠️ Unaudited |
| SquadV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x606d6f...534955`; bsc `0x9fb981...d0bd33`; bsc `0xa95d87...746dae`; bsc `0xb6bb74...3b577f`; bsc `0xefcb55...839f0d` | ⚠️ Unaudited |
| SquadV3PoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 40 deployments: bsc `0x031e47...75ae9f`; bsc `0x092f47...d43135`; bsc `0x127aa9...9144a4`; bsc `0x18b762...f2dd10`; bsc `0x2360f5...ed70c3`; bsc `0x2d9577...ef0097`; bsc `0x346821...1b1653`; bsc `0x38e09d...3b75ea`; bsc `0x3edaf9...90e5e7`; bsc `0x439430...084741`; bsc `0x45352e...fa96d1`; bsc `0x47cab1...3a90e2`; bsc `0x498e10...416e34`; bsc `0x4ee6a2...bfb1ea`; bsc `0x502cbb...fb61ad`; bsc `0x51cfd3...9d52e9`; bsc `0x53f10a...a3035e`; bsc `0x5a6f8e...3e646c`; bsc `0x6ce6cd...2e321a`; bsc `0x754489...b65bfa`; bsc `0x7cd988...c76a22`; bsc `0x7cf7f5...d7ff81`; bsc `0x7ddb13...3ecba7`; bsc `0xa7f93f...fd8e92`; bsc `0xb20049...95015c`; bsc `0xb65ce8...d7f659`; bsc `0xbf24ca...a11b81`; bsc `0xc28e76...8ca944`; bsc `0xd3f800...470692`; bsc `0xe156a7...e3cfdd`; bsc `0xe2973d...021cce`; bsc `0xf747c5...b10f76`; bsc `0xf89aa6...27e821`; bsc `0xfc8641...4b1617`; base `0x110909...bc1abf`; base `0x53616b...1dd62a`; blast `0x03ae53...4009f8`; blast `0x29626c...c2af09`; blast `0xf99185...dd4a35`; blast `0xfefa8e...710c08` | ⚠️ Unaudited |
| SquadV3PoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x391eaa...782ef5`; base `0x9cbb06...a41691` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 30 deployments: bsc `0x02190b...423a96`; bsc `0x0356d3...d32a0f`; bsc `0x06f136...e6d737`; bsc `0x275ed0...81f6de`; bsc `0x2b1a9d...bebf2a`; bsc `0x499fbc...2a092a`; bsc `0x4a56d1...0580d0`; bsc `0x4cdb0a...fe89c4`; bsc `0x71ddad...3615da`; bsc `0x882ebb...9f5f14`; bsc `0x8a99f9...c79d91`; bsc `0xa5605a...b1a438`; bsc `0xaf4b33...0bcbc0`; bsc `0xb0e18f...ee29b4`; bsc `0xb33395...cced5e`; bsc `0xc2fd30...037a45`; bsc `0xc30395...59e925`; bsc `0xc8b3d3...f8af5f`; bsc `0xcb3342...ef7c82`; bsc `0xcb497a...f70644`; bsc `0xd1d55d...c4ff5b`; bsc `0xe31ede...faed69`; bsc `0xe3b51b...1505db`; bsc `0xe40b58...011e09`; bsc `0xf0f06c...53df01`; bsc `0xff79ba...2265ba`; base `0x6daafc...acf576`; blast `0x8fb20c...8eb60e`; blast `0xafec6a...3a6b8c`; blast `0xfa6eb2...1e2f85` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-256949 | `0x56956a...38ef70` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 0 | base | unit-256986 | `0xd43261...905b6a` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 0 | blast | unit-256968 | `0x416a2c...ae4b0c` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 20 deployments: bsc `0x010508...79d332`; bsc `0x0441c3...dc09f4`; bsc `0x154a55...704507`; bsc `0x2bac1a...736d06`; bsc `0x32218b...2839cd`; bsc `0x330d5c...6f77d2`; bsc `0x469d09...e1f9b2`; bsc `0x5dee12...af14b1`; bsc `0x6162ec...a013a8`; bsc `0x835e78...48e861`; bsc `0xabe715...cd41fc`; bsc `0xcf0e4a...d18f14`; bsc `0xf34d8b...971d44`; bsc `0xfb7448...fee884`; bsc `0xfdadd8...c6b0b0`; bsc `0xff4432...c8e39d`; base `0x633faf...4714dc`; blast `0x3767e2...66aa9f`; blast `0xd5f7be...7669d7`; blast `0xd70eb1...d080f8` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | bsc | unit-256954 | `0x7c9c92...0a6373` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | base | unit-256980 | `0x5fbd88...a234c9` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | blast | unit-256976 | `0xad2fea...e6a24b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c577f...376ffb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x58fea8...178dc7`; base `0xc4e896...7ace3d` | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: bsc `0x27f233...d8cfaa`; base `0x13efb0...41560b` | ⚠️ Unaudited |
| V3Migrator | unknown | project_anchor | own_supporting | 0 | bsc | unit-256956 | `0x9d19dd...9ca47f` | ⚠️ Unaudited |
| V3Migrator | unknown | project_anchor | own_supporting | 0 | base | unit-256985 | `0xbee320...543365` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 21 deployments: bsc `0x129b14...c3227c`; bsc `0x29abee...467a43`; bsc `0x3bb5dd...75ebc5`; bsc `0x5c3969...6ff07d`; bsc `0x5d23d8...d0a0ba`; bsc `0x6308a2...c42749`; bsc `0x6cf90a...386c79`; bsc `0x791eed...50eb07`; bsc `0x7a6b59...f22927`; bsc `0x9e7625...b75b85`; bsc `0xa61086...8a9918`; bsc `0xc5d3c5...0f1571`; bsc `0xc8eb52...c652f7`; bsc `0xcdc7f8...87b47c`; bsc `0xe5bcbf...af8ee0`; bsc `0xf40de9...ee5e60`; bsc `0xf834c7...b6ec56`; base `0x6d3a3a...c8fd75`; blast `0x11b701...be7d99`; blast `0x6778d8...1a9c22`; blast `0xcf2a34...80ae3b` | ⚠️ Unaudited |
| V3Migrator | unknown | project_anchor | own_supporting | 0 | blast | unit-256975 | `0xa58659...b674ab` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (235)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0xc49355f78858b4143a25a4ad7e57e48d9f5e217f) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x29fb8f...fab69c`; base `0xc49355...5e217f` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x056ca1...ead913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08c39e...85828d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x098ca9...4b988f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a7048...b031c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0de41b...50ea1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e6a57...d59bb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0eea7b...d3b9e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10fd1f...df5d41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x120bc1...844fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x129790...0d387d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12b57e...e38a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x139ca0...2c0237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19bfb8...0b4b5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a0ce3...2de6aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ae30b...8e05bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c3fa0...6423fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d8027...040784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24b70e...506b95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x252b2a...e720cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27ee18...812965` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x286c0d...161bc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ca692...ac2db8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2cb040...57f6d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d7230...0e1618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2edc98...548e5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fa963...e2aca3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fe498...dce453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32780b...8f3a4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x329e3e...512a70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32c9a3...969740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32d735...b12697` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x336be6...e2d11c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x354c87...27e4de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36cdb4...290cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37a76e...aafd07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37ddd0...8b6b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x386c4f...4ac655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x395f4b...d3d5a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ccbf5...07ed78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40ada5...ccb51d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4123e9...53126a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41953d...695820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44d4ef...cf789f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46680d...dbcc6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256948 | `0x48470d...8d6ddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4962a1...05755f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b937c...81a94b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d77ef...6aea6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x511530...aaeac1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d7fab...d7e7d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f9341...91d0a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60efb4...99d0f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61ef63...a348c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x630f58...16c08b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6698e3...66c8a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x671d58...ec1294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68a5c7...05d821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b2663...4463ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6fd3de...080981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x739d61...24ef08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73b7e7...1d3cf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7473fa...d21313` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77d373...903929` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x799d14...bd2030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7cafae...11e924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7dc292...1f45fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x810c5d...3a5f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82847d...133758` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x831355...18c9d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86eb5e...0ce9bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x870ab6...479450` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8788d1...095b5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x896002...7e2431` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8973db...52dfef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b2e09...cc4855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e3169...5e06a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9070b5...3279fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92e56d...83c388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x936a39...152246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x956208...d52ff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9603e2...7253ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x983942...94f740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa10d28...e59e94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1551c...6e128e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256957 | `0xa9712b...fb2e4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xade16f...8c08b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaee2b8...db16cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1d753...108183` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb3ba27...188c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb651b2...f078a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6d43d...2b1198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb793db...089955` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb951c0...0ada88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9b1a1...6b8f0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9f43d...20235e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba2a8b...0f1a6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc9e03...d06dae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256958 | `0xc1fa2a...e217b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2c434...4ef5a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3fe3d...e591a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcbe6b9...6494b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd6f94...b0e7a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd9511...677442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce03c2...bb5847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfbb55...0a9666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd108e1...2918b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3d678...f3328a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd58ccf...cb62de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5ddc0...c7652c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd669fe...85bd2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd67021...2d482b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6ceae...1374a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd71dcd...326fa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd74848...17b3a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd81414...54082f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc946e...af6dfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe10a60...53de69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256960 | `0xe27875...620acf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3ca07...72098b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1fbb8...8d426f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2c8a9...b479de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf58290...afbec0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256962 | `0xf6dcd5...8b9a87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf9b3a7...82d695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa7fc5...0c780f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc600b...b129fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfcfc67...52b13d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd399f...7852bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd3bc2...545a2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfdde3e...b61000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfea79d...3306fc` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x061856...186a3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0bd703...6dcfbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x145e6b...874b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x16fbb3...058788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1f2436...bed21f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1f8939...773b7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-256978 | `0x202de6...b794a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2ec163...e12e10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31b8c6...662841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x340a67...d7b911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x344913...079639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x34bc76...61f2b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x35e49c...500fff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a5800...982286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51c97e...fe03a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x579da7...1867ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x58f001...1c1374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5d202a...122f5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5dbbf7...53312f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x67ccdf...3a9538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8496f2...581964` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8b39a3...ce2b0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x93c8b2...119f1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9627ea...236a0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x97f426...169fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9caf9c...89fd75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f4b97...1fdf5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2a1e6...482878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac47c0...cfed58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-256983 | `0xb124a8...83212e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc6c58...4596eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcd32cd...e1c49b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd39f3c...8659e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd9d71b...f5d10f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdeb0bf...2870c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xff29b1...27c261` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x110909...bc1abf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x29fb8f...fab69c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-256972 | `0x87048e...e7e36a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9ab779...02014a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9c486d...dfa96a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa37843...b7a111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf48d22...facacc` | ❓ Unverified |

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
| base | `0xac5b61...6f72f3` | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x64d6f4...ce3693` | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
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
| native | 83 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 236 |

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
