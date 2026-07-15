# Agentic Audit Brief: Alchemix

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 12 (1 matched; 11 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 5.9% over 90 days

## Project Overview

- Project: Alchemix (`alchemix`)
- Website: [https://alchemix.fi/](https://alchemix.fi/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, fantom, optimism
- Contract surface: 513 unique implementations (838 raw deployments)
- Coverage basis: 1/12 confirmed own live verified implementations (8.3%); conservative 8.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $30,488,433.00
- On-chain TVL (included contracts): $294,431,043.44
- TVL by chain: Ethereum $261,573,121.74 | Optimism $31,653,197.24 | Arbitrum $1,204,724.45

## Project Description

This brief describes the observed EVM deployment and audit surface for Alchemix. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 25 contract row(s) across arbitrum, ethereum, fantom, optimism. Structural roles: 15 unclassified, 6 infra, 2 core, 2 supporting. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 25
- Structural roles: unclassified (15), infra (6), core (2), supporting (2)
- Contract kinds: contract (25)
- Detected standards: erc1967proxy (6), accesscontrol (1), erc20 (1), ownable (1)
- Frameworks: openzeppelin (10)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 25 contracts are derived from known codebases. 25 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1d28d4...cb388e`, chain 1)
- UnnamedContract (`0x5951f1...ea42eb`, chain 1)
- UnnamedContract (`0x7e30fc...9edb5b`, chain 1)
- UnnamedContract (`0xa7aa5b...13f193`, chain 1)
- UnnamedContract (`0xe974b9...d44125`, chain 10)
- AlchemistV2 (`0xf547b8...f4acfb`, chain 1)
- AlchemixToken (`0xdbdb4d...90c8df`, chain 1)
- NextAlchemicTokenV2 (`0x649020...56007e`, chain 42161)
- TransmuterBuffer (`0x0fba36...167f42`, chain 1)
- TransmuterBuffer (`0x437067...b5948f`, chain 1)
- TransmuterV2 (`0xad2a6c...220298`, chain 1)
- TransparentUpgradeableProxy (`0x033231...d64811`, chain 1)
- TransparentUpgradeableProxy (`0x062bf7...b13b5c`, chain 1)
- TransparentUpgradeableProxy (`0x49930a...24df55`, chain 1)
- TransparentUpgradeableProxy (`0x5c6374...dd94dd`, chain 1)
- TransparentUpgradeableProxy (`0xa840c7...a5197f`, chain 1)
- TransparentUpgradeableProxy (`0xfc3082...bdf5b9`, chain 1)
- WETHGateway (`0xa22a7e...76d67a`, chain 1)
- Whitelist (`0x211c74...25ef59`, chain 1)
- Whitelist (`0x35b2c1...78ade6`, chain 1)
- Whitelist (`0x3f950f...4b2096`, chain 1)
- Whitelist (`0x46f992...435ace`, chain 1)
- Whitelist (`0x78537a...8f1132`, chain 1)
- Whitelist (`0xa3dfcc...79e653`, chain 1)
- Whitelist (`0xdd8ac2...e83ff1`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 25; live-surface rows included: 25 (25 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/12 (8.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 496 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 123
- Confirmed-live implementations: 17 of 513 unique; 496 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/151
- Verified + Unaudited implementations: 150
- Verified by bytecode match: 0
- Unverified implementations: 362
- Unique implementations: 513
- Raw deployments: 838
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $6,906,906.57
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 9 fresh, 1 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $6,906,906.57 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 0.7% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| WETHGateway | token | project_anchor | own_supporting | 0 | ethereum | unit-378674 | `0xa22a7e...76d67a` | ✅ Audited |

### ⚠️ Verified + Unaudited (150)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FRAXStablecoin | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x853d95...75b99e` | ⚠️ Unaudited |
| OVMFiatToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7f5c76...c31607` | ⚠️ Unaudited |
| AlToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6da0...3660e9` | ⚠️ Unaudited |
| AlchemixToken | token | project_anchor | own_supporting | 0 | ethereum | unit-378678 | `0xdbdb4d...90c8df` | ⚠️ Unaudited |
| CrossChainCanonicalAlchemicTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 2 | optimism | n/a | 2 deployments: optimism `0x3e29d3...7c5f04`; optimism `0xcb8fa9...a3326a` | ⚠️ Unaudited |
| WstETHEthereumStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde44c2...e80681` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: optimism `0x124d69...91164e`; optimism `0x1ad06c...cbeaf0`; optimism `0x4d7959...21bb88`; optimism `0x60be3f...1170aa`; optimism `0x67c253...417ac3`; optimism `0xa10557...d6280a`; optimism `0xa5edb0...58a4f8`; optimism `0xaf03f5...6b0a29`; optimism `0xfa0947...658d76` | ⚠️ Unaudited |
| VPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 20 | ethereum | n/a | 20 deployments: ethereum `0x0538c8...9e36ee`; ethereum `0x252c80...aadff2`; ethereum `0x2b6c40...a3e324`; ethereum `0x35b225...7d516e`; ethereum `0x6f8d5f...53488c`; ethereum `0x8209f3...d5b402`; ethereum `0x83a99d...a0fecf`; ethereum `0x83c608...2d4495`; ethereum `0x8bcdd6...98db25`; ethereum `0x9b91ab...795663`; ethereum `0xa5bc6e...ac52ad`; ethereum `0xa8b607...a80452`; ethereum `0xabff8f...859ef0`; ethereum `0xb4edce...fd5f7d`; ethereum `0xba680a...f26e47`; ethereum `0xc14900...157ba5`; ethereum `0xe4fe64...805d93`; ethereum `0xebcf77...d75f49`; ethereum `0xef4f46...b475c1`; ethereum `0xff43c3...42c257` | ⚠️ Unaudited |
| CrossChainCanonicalAlchemicTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x175731...868b03`; arbitrum `0x37704b...4a1f16`; arbitrum `0xcb8fa9...a3326a` | ⚠️ Unaudited |
| FPIControllerPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x239732...43cf51` | ⚠️ Unaudited |
| StakingPools | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab8e74...d7deca` | ⚠️ Unaudited |
| VWBTC | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b2e76...b1a17b` | ⚠️ Unaudited |
| Stake_FXS_WETH | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa29367...1892b6`; ethereum `0xd87562...540d4f`; ethereum `0xda2c33...dd9bec` | ⚠️ Unaudited |
| BaseRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x02e215...41d5b3`; ethereum `0x26598e...741104`; ethereum `0x48bc30...fee410` | ⚠️ Unaudited |
| WstETHL2Strategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd77e2b...6572f8` | ⚠️ Unaudited |
| StaticATokenV3 | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: optimism `0x2680b5...76dd3b`; optimism `0x337b4b...049810`; optimism `0x4186eb...373cc4`; optimism `0x43a502...53abc6`; arbitrum `0x248a43...4100f5` | ⚠️ Unaudited |
| TwoPoolAssetManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x063787...2d3495` | ⚠️ Unaudited |
| ThreePoolAssetManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9735f7...fad31b` | ⚠️ Unaudited |
| WstethStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: ethereum `0x7da70f...353189`; optimism `0x4bd4fa...0288b4` | ⚠️ Unaudited |
| aeWETH | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x82af49...3fbab1` | ⚠️ Unaudited |
| AlchemistAllocator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 6 deployments: ethereum `0x23a3c2...450e7e`; ethereum `0x693b75...f5b281`; optimism `0x12114e...8e0be0`; optimism `0x143c21...906865`; arbitrum `0x12114e...8e0be0`; arbitrum `0x143c21...906865` | ⚠️ Unaudited |
| AlchemistCurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7d61e3...9302a4`; optimism `0xc8a2bd...aef20d`; arbitrum `0xc8a2bd...aef20d` | ⚠️ Unaudited |
| AlchemistEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8317b...40b73b` | ⚠️ Unaudited |
| AlchemistRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 6 deployments: ethereum `0x6733aa...6b00fd`; ethereum `0xdb8528...d086ab`; optimism `0x3c0546...2d8bbd`; optimism `0xc774f3...be3e5a`; arbitrum `0x3c0546...2d8bbd`; arbitrum `0xc774f3...be3e5a` | ⚠️ Unaudited |
| AlchemistStrategyClassifier | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: ethereum `0xdb7d25...7253cc`; optimism `0x3c28ba...ce3a70`; arbitrum `0x3c28ba...ce3a70` | ⚠️ Unaudited |
| AlchemistTokenVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 6 deployments: ethereum `0x5b1c71...0425ba`; ethereum `0x5fe396...93f9c1`; optimism `0x0a2dc3...ecd857`; optimism `0x347371...d83d50`; arbitrum `0x0a2dc3...ecd857`; arbitrum `0x347371...d83d50` | ⚠️ Unaudited |
| AlchemistV2 | unknown | project_anchor | own_supporting | 2 | ethereum | unit-378682 (2 proxies) | 2 deployments: ethereum `0x062bf7...b13b5c`; ethereum `0x5c6374...dd94dd` | ⚠️ Unaudited |
| AlchemistV2 | unknown | project_anchor | own_core | 0 | ethereum | unit-378680 | `0xf547b8...f4acfb` | ⚠️ Unaudited |
| AlchemistV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | optimism | n/a | 2 deployments: optimism `0x10294d...1484af`; optimism `0xe04bb5...69d5b4` | ⚠️ Unaudited |
| AlchemistV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x1bce0a...00a2f0`; optimism `0x673054...d75483` | ⚠️ Unaudited |
| AlchemistV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0dadc9...4e01d5`; arbitrum `0x84672c...b36d1e` | ⚠️ Unaudited |
| AlchemistV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 16 deployments: ethereum `0x938dba...7c0ed7`; ethereum `0xb678be...538c4c`; ethereum `0xd55c73...24ca6d`; ethereum `0xd6cd22...15bd30`; ethereum `0xde399d...bc7261`; ethereum `0xf747e9...84c50b`; ethereum `0xf7e137...20b438`; arbitrum `0x436473...964f06`; arbitrum `0x654e16...60703a`; arbitrum `0x755461...7d095c`; arbitrum `0x98cabf...b1f83b`; arbitrum `0xa40cff...245926`; arbitrum `0xb3058d...8e9ff5`; arbitrum `0xb46ee2...1ac66f`; arbitrum `0xbb2f5d...264293`; arbitrum `0xdd8888...0c7fc1` | ⚠️ Unaudited |
| AlchemistV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0xeb8311...587e3e`; ethereum `0xfa995b...bee26b` | ⚠️ Unaudited |
| AlchemistV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 7 deployments: ethereum `0x763f5d...423059`; ethereum `0xf700c7...f4ad33`; optimism `0x073598...20bd3c`; optimism `0xeb380d...64bf7a`; arbitrum `0x073598...20bd3c`; arbitrum `0x3ddf4a...70f6f7`; arbitrum `0xeb380d...64bf7a` | ⚠️ Unaudited |
| AlchemistV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | optimism | n/a | 2 deployments: optimism `0x930750...ffc1de`; optimism `0xded3a0...d28114` | ⚠️ Unaudited |
| AlchemistV3Position | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x15da4c...8a263d`; ethereum `0x872a03...719beb`; optimism `0x763f5d...423059`; optimism `0xf700c7...f4ad33`; arbitrum `0x763f5d...423059`; arbitrum `0xf700c7...f4ad33` | ⚠️ Unaudited |
| AlchemistV3PositionRenderer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x541fb2...c73463`; ethereum `0x5fb5a4...30f5ff`; optimism `0xeb8311...587e3e`; optimism `0xfa995b...bee26b`; arbitrum `0xeb8311...587e3e`; arbitrum `0xfa995b...bee26b` | ⚠️ Unaudited |
| AlchemixConnextGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x036609...e801a9`; arbitrum `0xb58609...cea90a`; arbitrum `0xb77750...a8321f`; arbitrum `0xb85efc...036a43`; arbitrum `0xfaafe7...165693` | ⚠️ Unaudited |
| AlchemixConnextGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x83adea...2a84a9`; arbitrum `0xd031bd...4ee55d` | ⚠️ Unaudited |
| AlchemixHarvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: ethereum `0x7879a9...034f91`; ethereum `0x9f3031...a4cd3d`; optimism `0x990162...0f2d0c`; optimism `0x99e7d4...21e1a0`; optimism `0xf0faf4...e04870`; arbitrum `0x52e4c3...e7fc0e`; arbitrum `0x9b2ef5...00ab11` | ⚠️ Unaudited |
| AlchemixTokenMath | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x80d6ea...4c5971`; ethereum `0xfb56f5...26d785`; ethereum `0xff7d5c...b37ee9` | ⚠️ Unaudited |
| ArbitrumRewardCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x34e390...ebdb8f`; arbitrum `0x6428f6...cb6c9b`; arbitrum `0xa05bea...86e6cf`; arbitrum `0xe10fff...5fe3ac`; arbitrum `0xf1d334...f6fc95` | ⚠️ Unaudited |
| ATokenGateway | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: ethereum `0x67ec82...39f4d3`; ethereum `0x6b6bd4...72166c`; ethereum `0xa067c8...384809`; ethereum `0xbea839...506401`; optimism `0x6076a6...5e7193`; optimism `0xba3e84...203afd`; arbitrum `0x07b8dd...d477db`; arbitrum `0x0bafd3...c66c03`; arbitrum `0x3e1ccc...daf304`; arbitrum `0xa8a74f...d85a80` | ⚠️ Unaudited |
| CommunalFarm_SaddleD4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x063907...4a5ca5` | ⚠️ Unaudited |
| CrossChainCanonicalAlchemicTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x57d45c...fa4f9a`; arbitrum `0x88e483...c4f053`; arbitrum `0x9d4c27...2715e1`; arbitrum `0xb9b47f...4822ad` | ⚠️ Unaudited |
| CrossChainCanonicalGALCX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x843b66...7fad92`; arbitrum `0x870d36...adee4f` | ⚠️ Unaudited |
| Dai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6b1754...271d0f`; optimism `0xda1000...000da1` | ⚠️ Unaudited |
| ERC20Bridged | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0fbcba...8e1921`; arbitrum `0x5979d7...800529` | ⚠️ Unaudited |
| ERC20BridgedPermit | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x1f32b1...194ebb` | ⚠️ Unaudited |
| ERC4626Strategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: ethereum `0x8aacc9...f35d87`; ethereum `0x968234...dd5d23`; ethereum `0xa8ccbf...7cc9b3`; ethereum `0xdfdc17...8ae220`; arbitrum `0x4bd4fa...0288b4`; arbitrum `0x5aa8e0...d60de2`; arbitrum `0xaeea02...3393d4` | ⚠️ Unaudited |
| EthAssetManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe761bf...933110` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xaf88d0...8e5831` | ⚠️ Unaudited |
| frxETHMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbafa44...9c1138` | ⚠️ Unaudited |
| Gauge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: optimism `0x13baec...fe1615`; optimism `0x610123...eab52f`; optimism `0xa68808...437a02`; optimism `0xa8e075...e3817c`; optimism `0xb715d2...82791e`; optimism `0xc16adb...0eee3c`; optimism `0xe8b219...cb8890`; optimism `0xfc0b9a...15e6c5` | ⚠️ Unaudited |
| Gauge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 3 deployments: arbitrum `0x43fbf3...e33cd7`; arbitrum `0x72b659...5d4b10`; arbitrum `0xc3f26d...005cdb` | ⚠️ Unaudited |
| GearboxTokenAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x653e76...add273`; arbitrum `0xc129bd...5dacb0` | ⚠️ Unaudited |
| GearboxTokenAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xb1cfd0...15bb86`; arbitrum `0xfcc143...b04617` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0xb29617...4284f9` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x7e1087...9ca043` | ⚠️ Unaudited |
| HarvestResolver | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: ethereum `0x9825f7...f15b49`; ethereum `0xe1be7d...66cf22`; optimism `0x91b5f8...015c2e`; optimism `0xe9044a...8a1e96`; optimism `0xf6dd52...7faa07`; arbitrum `0x0370ad...3ef754`; arbitrum `0xf91597...1d7a6b` | ⚠️ Unaudited |
| IdleTrancheAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0b20f9...38a1c5`; ethereum `0x215895...858434`; ethereum `0xa3d66d...2b6a5b`; ethereum `0xa3f16f...9c16d9` | ⚠️ Unaudited |
| JonesUSDCAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x87c4a2...f9bbe5`; arbitrum `0xd2385b...9f314b` | ⚠️ Unaudited |
| L2ERC20ExtendedTokensBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x8e0101...fb6957` | ⚠️ Unaudited |
| L2ERC20TokenGateway | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x07d469...331b82`; arbitrum `0xe75886...a4b0a7` | ⚠️ Unaudited |
| MerkleBox | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe67516...94bf73` | ⚠️ Unaudited |
| MigrationTool | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x1dff11...2645bd`; ethereum `0x7a88c7...d0fa45`; ethereum `0x88970e...7b5c47`; ethereum `0xe1f27a...97e1d3`; optimism `0x2c68d0...cb8126`; optimism `0x3892a5...2ca9e4`; optimism `0x7018cb...e5ced0`; optimism `0xbcf001...611cb9`; optimism `0xc56209...fb4302`; optimism `0xf87510...609a8c`; arbitrum `0x6e94c5...41bffb`; arbitrum `0x81b1d4...1705e8`; arbitrum `0xb6d30d...76910a`; arbitrum `0xececc1...f146a9` | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8392f6...57e225` | ⚠️ Unaudited |
| NextAlchemicToken | token | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x303241...d8faf3`; arbitrum `0x380cbf...7d2302`; arbitrum `0x49000f...08e498` | ⚠️ Unaudited |
| NextAlchemicToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x6e5780...a04483`; arbitrum `0xaf1168...15e386` | ⚠️ Unaudited |
| NextAlchemicTokenV2 | token | project_anchor | own_supporting | 1 | arbitrum | unit-378685 | 2 deployments: arbitrum `0x27b58d...815aa7`; arbitrum `0x649020...56007e` | ⚠️ Unaudited |
| optimismCompress | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x138e30...01a33d`; optimism `0x65c732...dae130`; optimism `0x9d15e5...918d35`; optimism `0xc58b2b...95533a`; optimism `0xd2b1d9...66650c` | ⚠️ Unaudited |
| Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 3 deployments: arbitrum `0x510a49...4cca58`; arbitrum `0xfb4fe9...ef6886`; arbitrum `0xfd599d...213010` | ⚠️ Unaudited |
| PoolAccountant | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 21 | ethereum | n/a | 21 deployments: ethereum `0x13c88a...91b1fd`; ethereum `0x2337c5...c442c0`; ethereum `0x4d25e0...2c5a24`; ethereum `0x4e713d...c80fe9`; ethereum `0x6f466f...aea70f`; ethereum `0x745c10...5bd70d`; ethereum `0x75619e...c0a737`; ethereum `0x7c6226...0e639e`; ethereum `0x7f896d...f2be93`; ethereum `0x85b694...ec6167`; ethereum `0x88df6a...d113dd`; ethereum `0x8b41b4...aecda1`; ethereum `0x92d102...f179ef`; ethereum `0x963a95...1f7074`; ethereum `0xa17f64...a6088c`; ethereum `0xa34dc8...825e72`; ethereum `0xa9af8f...eee400`; ethereum `0xa9e886...e33240`; ethereum `0xc0a7eb...30b212`; ethereum `0xe25d8f...fd844f`; ethereum `0xfb7fa7...24eb44` | ⚠️ Unaudited |
| PoolBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe66db0...1cdcb8` | ⚠️ Unaudited |
| PoolRewards | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x479a86...295f8d` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x20c572...d124cf`; ethereum `0xe0fc5c...46347d`; optimism `0xd4bd68...2eae85`; arbitrum `0x80c715...e0ff86`; arbitrum `0xa44f69...8beac6` | ⚠️ Unaudited |
| Redeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7915ce...7fb3e8` | ⚠️ Unaudited |
| RETHAdapterV1 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-378672 | `0x7a1728...614047` | ⚠️ Unaudited |
| RETHAdapterV1 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80ca99...e3739d` | ⚠️ Unaudited |
| RewardCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xd83208...b6b058`; optimism `0xf34517...f896f9` | ⚠️ Unaudited |
| RewardCollectorOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x1e0bd5...2831bd`; optimism `0x3fa562...a7d02d`; optimism `0xffd61c...922e9a` | ⚠️ Unaudited |
| RewardRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x2931b8...d58075`; optimism `0x2e0e6b...81bb47`; arbitrum `0x5ea092...c6b258`; arbitrum `0xabad1a...f1a6db`; arbitrum `0xae8e5e...21a881` | ⚠️ Unaudited |
| RocketTokenRETH | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae7873...fc6393` | ⚠️ Unaudited |
| SDLController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x06bf54...be53db`; ethereum `0x0992d9...373b7a`; ethereum `0x13ee9d...0c60e8`; ethereum `0x483a73...a65afc`; ethereum `0xa77b4e...588037` | ⚠️ Unaudited |
| SDLController | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6a1883...3050d1`; ethereum `0x851abe...35d028` | ⚠️ Unaudited |
| SDTController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x31e606...b75a46`; ethereum `0x52552a...17cc11`; ethereum `0x9543af...13db0c`; ethereum `0x9debb1...4c61be` | ⚠️ Unaudited |
| SDTController | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3216d2...6e6273` | ⚠️ Unaudited |
| SDTController | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x91bf16...c1a08c`; ethereum `0xbcd7fb...13699a` | ⚠️ Unaudited |
| sfrxETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac3e01...bbe38f` | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb81b8...a96da2` | ⚠️ Unaudited |
| StaticAToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x318334...fb416e`; ethereum `0x611345...563967`; ethereum `0xbc11de...94e315`; ethereum `0xce4a49...1688d8`; ethereum `0xf591d8...bae37a` | ⚠️ Unaudited |
| TetherToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac17f...831ec7` | ⚠️ Unaudited |
| TimeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x869d1b...ae8917` | ⚠️ Unaudited |
| TokeAutoStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x461081...83c188`; ethereum `0x467ec8...4908a5` | ⚠️ Unaudited |
| Transmuter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x073598...20bd3c`; ethereum `0x2584e8...410cb9`; optimism `0x2584e8...410cb9`; optimism `0x693b75...f5b281`; arbitrum `0x2584e8...410cb9`; arbitrum `0x693b75...f5b281` | ⚠️ Unaudited |
| TransmuterB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee69bd...b796e7` | ⚠️ Unaudited |
| TransmuterBuffer | unknown | project_anchor | own_supporting | 2 | ethereum | unit-378683 (2 proxies) | 3 deployments: ethereum `0x0fba36...167f42`; ethereum `0x1eed2d...f79bac`; ethereum `0xbc2fb2...c90b9e` | ⚠️ Unaudited |
| TransmuterBuffer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378668 | `0x437067...b5948f` | ⚠️ Unaudited |
| TransmuterBuffer | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | optimism | n/a | 6 deployments: optimism `0x143a08...b7a4e7`; optimism `0x36e8d1...440be5`; optimism `0x719fe4...be5e03`; optimism `0x7f5092...a28f68`; optimism `0x971c2d...0e2d6d`; optimism `0xe99a9a...beb3b9` | ⚠️ Unaudited |
| TransmuterBuffer | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x00e337...eeabcc`; arbitrum `0x752ca4...a22e2b`; arbitrum `0xecad08...8bb9d2` | ⚠️ Unaudited |
| TransmuterConduit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x440e92...0d2835`; ethereum `0x4ac237...cfb41c`; ethereum `0x8412d4...011eee`; ethereum `0xefc8a5...c4f20f`; ethereum `0xf65a1e...f7e424` | ⚠️ Unaudited |
| TransmuterEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8d513e...38f19f`; ethereum `0x9fd994...cfd4ac` | ⚠️ Unaudited |
| TransmuterV2 | unknown | project_anchor | own_supporting | 4 | ethereum | unit-378684 (4 proxies) | 4 deployments: ethereum `0x033231...d64811`; ethereum `0x49930a...24df55`; ethereum `0xa840c7...a5197f`; ethereum `0xfc3082...bdf5b9` | ⚠️ Unaudited |
| TransmuterV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378677 | `0xad2a6c...220298` | ⚠️ Unaudited |
| TransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe107fa...4262b2` | ⚠️ Unaudited |
| TransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | optimism | n/a | 4 deployments: optimism `0x4e7d21...4415fa`; optimism `0xa7ea9e...aab723`; optimism `0xb7c425...19491a`; optimism `0xfcd619...91bbb4` | ⚠️ Unaudited |
| TransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | arbitrum | n/a | 5 deployments: arbitrum `0x1b0361...ca4d19`; arbitrum `0x1eb7d7...a9c0d4`; arbitrum `0x2a8b5f...0755ed`; arbitrum `0xd6a557...b408e9`; arbitrum `0xe7ec71...940ea8` | ⚠️ Unaudited |
| TransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: ethereum `0x645ce9...bd65cb`; ethereum `0xe04bb5...69d5b4`; optimism `0x54aed3...36b6a1`; arbitrum `0x21cfa8...78ddff`; arbitrum `0x4be3d2...673011`; arbitrum `0xfaf833...65452e`; arbitrum `0xfd092e...6af5c6` | ⚠️ Unaudited |
| TransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x7037d4...3e6007`; arbitrum `0xb0a2db...8739dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0d994b...9d2f37`; ethereum `0x1435f2...908653` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 5 deployments: ethereum `0x210a3a...4e1766`; ethereum `0x407bdc...ef2764`; ethereum `0x6fb0fe...d1f72c`; ethereum `0x7d0038...040834`; ethereum `0xe4503e...402333` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x25bc1f...9aa14e`; ethereum `0x51c1a7...9e6142`; ethereum `0x77394f...c81eec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb7c425...19491a`; ethereum `0xcad336...561780` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x43cd4c...9b24ba`; arbitrum `0xa5b00d...37f771` | ⚠️ Unaudited |
| USDT | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x94b008...e58e58` | ⚠️ Unaudited |
| V1Deprecatooooor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb3928...23b4ec` | ⚠️ Unaudited |
| VaultV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: ethereum `0xdd56b0...c58984`; optimism `0x8c7c0c...c11ca2`; arbitrum `0x8c7c0c...c11ca2` | ⚠️ Unaudited |
| veFPISYieldDistributorV5 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6d31c...b802f6` | ⚠️ Unaudited |
| veFXSYieldDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a0a7...1d50f0` | ⚠️ Unaudited |
| veFXSYieldDistributorV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2647...e3d3fe` | ⚠️ Unaudited |
| veFXSYieldDistributorV4 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6764e...1fa872` | ⚠️ Unaudited |
| VesperAdapterV1 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x36033e...47fca5`; ethereum `0x54aed3...36b6a1`; ethereum `0xbc8003...810819`; ethereum `0xfcd619...91bbb4` | ⚠️ Unaudited |
| VETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x103cc1...e54d5e` | ⚠️ Unaudited |
| VETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd1c117...eb05f2` | ⚠️ Unaudited |
| VirtualDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb791a8...a47c7d` | ⚠️ Unaudited |
| VLINK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a27e9...93d40c` | ⚠️ Unaudited |
| VSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b4018...998421` | ⚠️ Unaudited |
| VUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x677ddb...da8619` | ⚠️ Unaudited |
| VUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c4906...bf113d` | ⚠️ Unaudited |
| VVSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba4cfe...ecf8fc` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x3669c4...fce737`; ethereum `0x707f91...963fc8`; ethereum `0x7da96a...8d87a7`; ethereum `0xa258c4...4d168c`; ethereum `0xa354f3...3dc4de`; ethereum `0xc8418a...adc5b0`; ethereum `0xda8164...970c95` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa2f987...b72bdf` | ⚠️ Unaudited |
| WETH9 | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: ethereum `0xc02aaa...756cc2`; optimism `0x420000...000006` | ⚠️ Unaudited |
| WETHGateway | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: ethereum `0x3b3636...0d4f9f`; optimism `0xdb3fe4...af3933`; arbitrum `0x39299e...4e5453`; arbitrum `0x7c679d...e98d8c` | ⚠️ Unaudited |
| Whitelist | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378664 | 7 deployments: ethereum `0x211c74...25ef59`; ethereum `0x35b2c1...78ade6`; ethereum `0x3f950f...4b2096`; ethereum `0x46f992...435ace`; ethereum `0x78537a...8f1132`; ethereum `0xa3dfcc...79e653`; ethereum `0xdd8ac2...e83ff1` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 14 deployments: optimism `0x36033e...47fca5`; optimism `0x56574e...87e06f`; optimism `0x89926e...2c0edb`; optimism `0xc33659...f6380f`; optimism `0xc5fe32...90a68f`; optimism `0xf911d8...005918`; optimism `0xfa6a5d...119e45`; arbitrum `0x2e76a6...aa668b`; arbitrum `0x5e06d7...351b80`; arbitrum `0x6996b4...665710`; arbitrum `0x85e851...27ec85`; arbitrum `0x8ab017...344fbb`; arbitrum `0xd691f5...197f99`; arbitrum `0xda94b6...2921db` | ⚠️ Unaudited |
| WithdrawalVault | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb9d793...7e293f` | ⚠️ Unaudited |
| WormholeUnwrapperAdapter | proxy | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 6 deployments: arbitrum `0x077b17...efc826`; arbitrum `0x0e52af...3fabd6`; arbitrum `0x0e9a17...9d0d21`; arbitrum `0x1944eb...13f262`; arbitrum `0x7a6c69...3ebac6`; arbitrum `0x9964aa...3d5e7c` | ⚠️ Unaudited |
| WstETH | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f39c5...5e2ca0` | ⚠️ Unaudited |
| WstETHAdapterArbitrum | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x10124e...cd00d6`; arbitrum `0x41bf48...d6a7ab`; arbitrum `0x576bc8...ca7e48`; arbitrum `0xa03162...e19c4a`; arbitrum `0xa68fa3...01c4f7`; arbitrum `0xa8c4da...a51698` | ⚠️ Unaudited |
| WstETHAdapterOptimism | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1f563a...586ed0` | ⚠️ Unaudited |
| WstETHAdapterV1 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-378666 | `0x3c2c6f...01bcf8` | ⚠️ Unaudited |
| WstETHAdapterV1 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x58846e...79fcc5`; ethereum `0x6999b6...4bb30c` | ⚠️ Unaudited |
| YearnStakingToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x059eaa...175eed`; optimism `0x0a86ad...730ecd`; optimism `0xe62dda...c59ce3` | ⚠️ Unaudited |
| YearnVaultAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb039ea...68214a` | ⚠️ Unaudited |
| YearnVaultAdapterEth | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x546e67...85b3bc` | ⚠️ Unaudited |
| YearnVaultAdapterWithIndirection | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fe02b...17f661` | ⚠️ Unaudited |
| YearnVaultAdapterWithIndirectionEth | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d7565...160132` | ⚠️ Unaudited |
| YTokenGateway | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: optimism `0xc02670...002a56`; optimism `0xede36d...2d9397`; arbitrum `0x736fa6...cfc4df`; arbitrum `0xd65520...906668` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (362)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00160b...8b8478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x011881...ca7128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0304a3...f0c00e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0363a3...8b8182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x042565...760213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057a48...f981df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05b143...c8b4b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0648e5...7957cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0827f1...dad19a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x084d7a...7440ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0879f1...e89542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x097ee0...6dafd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a46a9...9e10f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bb35d...e4a666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c712f...e29ce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c7a61...6d8e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d296e...3704c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d858d...cb754f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e2ba4...7faf49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e2ddf...4d3db4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f4192...7d508b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10dea9...d6d3bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11e21c...cc80ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x133ecd...882d8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13aecc...2d6f1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13b844...9b26ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x140ecd...2656df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16cdfe...055659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x175a78...df18ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17845e...f2656e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17eff8...4d417b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x187c51...12c0f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a02f...2798ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a3a83...22f12b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0151...da8a09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0b99...3882f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c282e...a3eaad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cd0f3...85cf08` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378663 | `0x1d28d4...cb388e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e8604...a7097f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ea632...f9fbbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fe9e0...0039c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x223809...13152c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x228cdf...b1b3d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x230f8f...0f7602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23140f...94db99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x233ada...958319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23c901...849175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x240023...c66df4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24e927...7865fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27723d...a3b2d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a135a...1f8d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a1b6f...bc94f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c3619...b87abf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c37fb...2773c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cd0b4...6bb10b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ce898...fc718f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dd1b4...b3b532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f59b0...cfeda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31b855...5e938c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31d9b0...8ee863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31fc48...0867d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x323e34...ecc995` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32fd3b...0c2fcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x334fa9...4cabd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x339b20...6b3b08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3405e8...eea320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x354fc6...10e189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36f9e7...5efdcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37b54f...60bb8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39450c...c4de19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a7644...d16653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b5180...dbbe6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e281c...44046f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e89f1...4b447d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f4681...58f380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x400509...4f0f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40971a...78b61f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41f4e1...f73eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x421efd...cbd9de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4279cc...c01106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ef34...34f841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x443d61...f0f4e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x452086...3d03dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45aba6...e5e94e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45ccd3...4293d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x463c83...e6a46f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x469c9f...400d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46a279...402921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46ca85...43b6c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x479dfa...2778ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x487f4f...9e9211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a29f4...b64545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a4a54...411101` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a5398...bd5486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a7ce5...951d5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b8a42...d807fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bc1a2...370599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bc77c...ff5ef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d71a0...e5d674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4da20a...bbcf29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e7300...38f0bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f193b...67a7a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52581e...74f4bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x525fd1...fd9e2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53d885...b80fab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56ee98...2e581b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59417c...9c097f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378670 | `0x5951f1...ea42eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59543a...ad29c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59928b...99c88c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a6aad...5f6314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d72a9...afca80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f5a65...c4c9a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fe5de...a45489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x603d9b...e05209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x612fd3...a55fb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x614020...98fa93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61bf33...56599b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62514f...e18438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6349e8...82aa83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x636a02...f54409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64a76d...3619b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x650845...f789e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x651e09...78c87d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656636...e1db6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67218f...5a42da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x672e58...20c881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x684647...d259df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68e031...cbb4cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x693c78...2b6cfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b9eb0...65e679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c2b3d...a54300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cb3b9...727fff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cf8b8...bcee2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d7746...e64153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70900c...982484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x715ae7...7d88c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72a7cb...a9945a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72dcf9...ff1b56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7465e3...ea733b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74cc5b...88a8af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75c1e2...1ffddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x762ff5...20380d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x777a78...49cf85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77898f...cb91f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7927fc...1816f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a75d9...273b1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b0729...829eef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b2db7...4484ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bceae...5864d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c1482...f11397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d1e43...eee6be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e198a...5c5dd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378673 | `0x7e30fc...9edb5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f0088...9d5c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f5092...a28f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x804cd6...7bc7ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x804f33...c82ea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80f1c4...c0379e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x813e89...902bd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817310...7371a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82bb18...f670f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x842547...06030e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x853f81...6a89d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85c786...547a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x861db1...71a0d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x881259...ba0257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a36f2...f6fbb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ad5b3...a62e0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b3ac0...6604d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b3c86...8e3639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b57bc...5dd0e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b609c...14b9d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c2d8b...8ec6f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c657a...c48770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d0b8e...f3e899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8eacba...89590b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92574e...fd066c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x935673...9dc738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94c7c5...334e7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95c0b3...13bdff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x968d60...199e94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x980e76...c8e697` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9852c6...8d86dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9abaea...5aecf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aec18...833715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b1107...f796d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b59f7...037f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b6ca9...36eaf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9da865...d5a26b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f29f0...9eae57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa163dc...7ad9ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3b031...29c772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4f167...bd0217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa60982...63e20e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa63f56...1a55f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa72054...a0bfaa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378676 | `0xa7aa5b...13f193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7ea9e...aab723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa89566...07d2b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa92951...5b2cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa92f21...befb65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa938b8...8caff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa95ccf...55bd4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabc648...bf8c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabfe39...80a6cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad680b...f440b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad947c...4a5e68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae0c89...f57c2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaff40f...f1a736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0582c...396d66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb075ab...893a7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0ea1d...66769d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1c0d6...3bcde5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1c4e5...916462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2205b...bfa8c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb436d8...8e0999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb440a6...dbefff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4e7cc...761b24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5e999...b218e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb76ec4...a641f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7bdd2...ab52fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7cec2...6d27bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8208c...c8906d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb92d60...e569e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc390a...68dff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd7ae7...64db39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdb0fb...5d93ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe3379...3574ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0497c...feb6b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1fe9a...d17749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3a483...9166b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc40ece...48112d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc48ea9...010174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4c81b...043018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5bdba...8e5a04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5c0d3...068c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5cdf8...c6bb54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6e550...c426d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7e98c...5fd6c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc88a0a...93c4b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9a679...f03a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca0c34...014d80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca9aee...2fdec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc9be1...ac0605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd6bf2...71fd35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce0ae5...e19659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd01062...b1de7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd11e67...b3be75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1738e...9c2562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3111a...2d8d28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd36aa4...33f3cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5579a...e32aa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd57a13...31fc75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd59996...0343b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd773ca...af168b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd81995...ee9268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd837f0...a93838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd87b3b...25b421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9a5df...cf51f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9e153...3336b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda5e6d...368b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda92f9...42cf04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc1046...5bc93c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc55f6...4d4efa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd3662...1117b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0222d...4a1e16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0ac0f...b8fa16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1d66c...a16be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2751f...acb121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe30521...a667e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3b3fe...fad906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4e3da...f39a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6cffe...76ff12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe82cec...2e7a9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe93428...657b33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe94046...1dfd1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9b31c...5d395f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea6c37...564791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebedfd...e29b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec5a0f...512a3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec8c44...6f0505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecc32e...d46641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecc4be...7524df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecf139...ca0bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedac70...35adfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeed0e5...1b94ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef5d81...f7a53a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef8737...a0e8c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef9a76...8ed35e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1d4eb...d99941` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf336f4...623b01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf350c6...722236` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4431b...963e90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4bb58...b53786` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf502d1...4602ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5a661...663825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6aa8d...9ccc9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8051d...bf4217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf858a3...fb40ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8ea0e...3f6067` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8ffaa...4f70bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf95fb6...6559bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9c786...b69c08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9fbc8...cc064c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa3552...a666f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb0df6...94561a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbcb0f...d6276f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd61f9...5794b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe711b...dfe007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff9799...bb0532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x10cf9d...586a69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1dc389...589f8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x23b96a...08f4c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x318334...fb416e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x393dd1...a5f204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x41125d...471602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4183c9...f688f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x485af4...aa68bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4b4968...790d85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x65d288...7a2157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6caeef...414018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7f7195...aac91e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x843b66...7fad92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x870d36...adee4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8ba1e9...16925a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x92834c...46538e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9d4c27...2715e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa44f69...8beac6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaf7ad0...c472de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb0269e...316fa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcd87ba...1f6cb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd24c4c...06e382` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-378681 | `0xe974b9...d44125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfb6c56...235a51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | 8 deployments: fantom `0x04068d...5d5b75`; fantom `0x049d68...3a3c7a`; fantom `0x148c05...54bc4c`; fantom `0x5a07d3...9fe5cf`; fantom `0x637ec6...892439`; fantom `0x76b2e3...6d3a0e`; fantom `0x8d11ec...8abf3e`; fantom `0xef0210...935607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0xdbdb4d...90c8df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x082b50...35dbc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e1793...b9cc06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x108464...20d840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17995b...98d163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d2be8...1c4962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x27423e...231ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ff291...aa38c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x718660...3ab333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7918da...52e43e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x853334...13bc0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x868f8e...567e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b36dc...6d7915` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x930750...ffc1de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaffd7f...b27d28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd05a08...41a2a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd65ebf...ef1bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9168e...f4da56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc8eb1...22fa0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xded3a0...d28114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa5cef...b86293` | ❓ Unverified |
| WormholeBridgeAdapter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x07a4d7...bd44df` | ❓ Unverified |
| WormholeBridgeAdapter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x19bede...836c85` | ❓ Unverified |
| WormholeBridgeAdapter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x353068...89bd74` | ❓ Unverified |
| WormholeBridgeAdapter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xf4a40b...2fc856` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [hackmd.io/@geistermeister/SkSZiU9ybe](https://hackmd.io/@geistermeister/SkSZiU9ybe) | Spearbit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [cantina.xyz/portfolio/f638950d-a8ad-4df8-a6ec-8b067e416d7b](https://cantina.xyz/portfolio/f638950d-a8ad-4df8-a6ec-8b067e416d7b) | Spearbit | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [v3-nethermind.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-nethermind.pdf) | unknown | Audit | 2026-02 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 23 | n/a |
| [v3-strategies-yaudit-followup.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-strategies-yaudit-followup.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [v3-strategies-yaudit.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-strategies-yaudit.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [v3-yearn.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-yearn.pdf) | unknown | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 43 | high |
| [Alchemix_v2.pdf](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/Alchemix_v2.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 12 | high |
| [View Report](https://drive.google.com/file/d/18LmIajwn6NOCbxKQJ49MVLyLSKb9gmD1/view) | Immunefi | Contest | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [View Report](https://docs.alchemix.fi/assets/files/v3-yearn-e44c37454c3ba188ea81d6d583c399aa.pdf) | yAudit | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 43 | high |
| [View Report](https://docs.alchemix.fi/assets/files/v3-nethermind-3195e302f55244d130f49ec41e6d1539.pdf) | Code4rena | Contest | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [Strategies report (April 15–17, 2026)](https://docs.alchemix.fi/assets/files/v3-strategies-yaudit-04e42747ec4fdfaad4f32799e6064a9a.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Strategies follow-up report (April 23–24, 2026)](https://docs.alchemix.fi/assets/files/v3-strategies-yaudit-followup-4183b2c1865b0f18d3cd22a6700337e9.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4306] hackmd.io/@geistermeister/SkSZiU9ybe — no match: No reason recorded
- [4307] cantina.xyz/portfolio/f638950d-a8ad-4df8-a6ec-8b067e416d7b — no match: No scope section or contract names found in the provided text.
- [9744] v3-nethermind.pdf — no match: No reason recorded
- [9745] v3-strategies-yaudit-followup.pdf — no match: No reason recorded
- [9746] v3-strategies-yaudit.pdf — no match: No reason recorded
- [9747] v3-yearn.pdf — no match: Extracted 42 contract names from the audit scope section listing all files under src/. Audit date derived from audit timeline: February 16 to March 18, 2026, using end date.
- [26436] Alchemix_v2.pdf — matched: Scope section explicitly lists 6 smart contracts and 7 libraries. Audit date is the 'Updated' date (2022-02-19) as the final version.
- [26438] View Report — no match: Scope section states 'target assets in scope for the Audit Competition were Alchemix’s smart contract assets' but does not list individual contracts. However, top findings reference specific contracts (Transmuter, AlchemistV3) as targets, indicating they are in scope. Audit competition ended 4 Nov 2025.
- [26440] View Report — no match: Extracted 42 contract names from the audit scope section listing all files in src/ directory. Audit date derived from audit timeline: February 16 to March 18, 2026, using end date.
- [26441] View Report — no match: Extracted 23 contract names from the 'Audited Files' section (pages 3-4) which lists all contracts in scope with file paths. The audit date is explicitly stated as 'Febuary 2, 2026' on the cover page and in the summary table.
- [26442] Strategies report (April 15–17, 2026) — no match: All 7 contracts listed in Audit Scope section with file paths.
- [26443] Strategies follow-up report (April 23–24, 2026) — no match: Audit scope explicitly lists 3 contracts: SimMigrateToWstethStrategy.s.sol, MYTTokenSwapper.sol, WstETHEthereumStrategy.sol. Audit date found at end of document: 'Completed 2026-04-24'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| hackmd.io/@geistermeister/SkSZiU9ybe | AlchemistV3 | unmatched — not counted | — | — | no |
| hackmd.io/@geistermeister/SkSZiU9ybe | Transmuter | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | AaveV3ARBUSDCStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | AaveV3ARBWETHStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | AaveV3OPUSDCStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | AlchemistAllocator | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | AlchemistCurator | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | AlchemistGate | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | EulerARBUSDCStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | EulerARBWETHStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | EulerUSDCStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | EulerWETHStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | FluidARBUSDCStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | IAlchemistCurator | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | IAllocator | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | MYTStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | MoonwellUSDCStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | MoonwellWETHStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | MorphoYearnOGWETH | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | PeapodsETH | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | PeapodsUSDC | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | PermissionedProxy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | TokeAutoEth | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | TokeAutoUSDStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | WstethMainnet | unmatched — not counted | — | — | no |
| v3-strategies-yaudit-followup.pdf | MYTTokenSwapper | unmatched — not counted | — | — | no |
| v3-strategies-yaudit-followup.pdf | SimMigrateToWstethStrategy | unmatched — not counted | — | — | no |
| v3-strategies-yaudit-followup.pdf | WstETHEthereumStrategy | unmatched — not counted | — | — | no |
| v3-strategies-yaudit.pdf | AlchemistRouter | unmatched — not counted | — | — | no |
| v3-strategies-yaudit.pdf | EtherfiEETHStrategy | unmatched — not counted | — | — | no |
| v3-strategies-yaudit.pdf | FrxEthEthDualOracleAggregatorAdapter | unmatched — not counted | — | — | no |
| v3-strategies-yaudit.pdf | OraclePricedSwapStrategy | unmatched — not counted | — | — | no |
| v3-strategies-yaudit.pdf | SFraxETHStrategy | unmatched — not counted | — | — | no |
| v3-strategies-yaudit.pdf | SiUSDStrategy | unmatched — not counted | — | — | no |
| v3-strategies-yaudit.pdf | WStethStrategy | unmatched — not counted | — | — | no |
| v3-yearn.pdf | AbstractFeeVault | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | EulerUSDCAdapter | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistAllocator | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistCurator | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistETHVault | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistGate | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistStrategyClassifier | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistTokenVault | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistV3 | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistV3Position | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistV3PositionRenderer | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | ErrorMessages | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | TransmuterErrors | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | FixedPointMath | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | NFTMetadataGenerator | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | SafeERC20 | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | Sets | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | StakingGraph | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | TokenUtils | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | MYTStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | PerpetualGauge | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AaveV3ARBUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AaveV3ARBWETHStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | EulerARBUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | EulerARBWETHStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | FluidARBUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | EulerUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | EulerWETHStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | MorphoYearnOGWETH | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | PeapodsETHStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | PeapodsUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | TokeAutoETHStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | TokeAutoUSDStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | WStethStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AaveV3OPUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | MoonwellUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | MoonwellWETHStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | Transmuter | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | PermissionedProxy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | Whitelist | ambiguous — not counted | Whitelist (alternative) `0x211c74...25ef59` — deployed 2022-02-24 06:49:05+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0x78537a...8f1132` — deployed 2022-02-24 03:07:10+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0x46f992...435ace` — deployed 2022-02-24 05:24:22+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0xa3dfcc...79e653` — deployed 2022-02-24 06:30:06+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0x3f950f...4b2096` — deployed 2022-03-18 17:05:56+03 — liveness: live (code_present_context)<br>Whitelist (alternative) `0x35b2c1...78ade6` — deployed 2022-02-24 05:23:31+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0xdd8ac2...e83ff1` — deployed 2022-02-24 03:07:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| v3-yearn.pdf | ZeroXSwapVerifier | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | AlchemistV2 | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x5c6374...dd94dd` — deployed 2022-02-24 05:00:40+03 — liveness: live (current_address_book_code)<br>AlchemistV2 (alternative) `0xf547b8...f4acfb` — deployed 2022-03-08 07:05:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x062bf7...b13b5c` — deployed 2022-02-24 06:37:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Alchemix_v2.pdf | AlchemicToken | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | TransmuterV2 | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x49930a...24df55` — deployed 2022-03-12 17:57:54+03 — liveness: live (current_address_book_code)<br>TransmuterV2 (alternative) `0xad2a6c...220298` — deployed 2022-03-14 02:39:01+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xa840c7...a5197f` — deployed 2022-03-12 17:50:46+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfc3082...bdf5b9` — deployed 2022-03-12 18:03:29+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x033231...d64811` — deployed 2022-03-12 18:29:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Alchemix_v2.pdf | TransmuterBuffer | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xbc2fb2...c90b9e` — deployed 2022-03-12 18:24:53+03 — liveness: live (current_address_book_code)<br>TransmuterBuffer (alternative) `0x437067...b5948f` — deployed 2022-03-12 17:43:49+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x1eed2d...f79bac` — deployed 2022-03-12 17:44:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Alchemix_v2.pdf | WETHGateway | own contract | WETHGateway (selected) `0xa22a7e...76d67a` — deployed 2022-03-18 17:07:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Alchemix_v2.pdf | YearnTokenAdapter | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | Limiters | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | LiquidityMath | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | ContractWhitelister | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | Sets | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | FixedPointMath | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | Tick | unmatched — not counted | — | listed in scope | no |
| View Report | Transmuter | unmatched — not counted | — | Target in top findings: https://github.com/alchemix-finance/v3-poc/blob/immunefi_audit/src/Transmuter.sol | no |
| View Report | AlchemistV3 | unmatched — not counted | — | Target in top findings: https://github.com/alchemix-finance/v3-poc/blob/immunefi_audit/src/AlchemistV3.sol | no |
| View Report | AbstractFeeVault | unmatched — not counted | — | listed in scope | no |
| View Report | EulerUSDCAdapter | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistAllocator | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistCurator | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistETHVault | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistGate | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistStrategyClassifier | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistTokenVault | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistV3 | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistV3Position | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistV3PositionRenderer | unmatched — not counted | — | listed in scope | no |
| View Report | ErrorMessages | unmatched — not counted | — | listed in scope | no |
| View Report | Errors | unmatched — not counted | — | listed in scope | no |
| View Report | TransmuterErrors | unmatched — not counted | — | listed in scope | no |
| View Report | FixedPointMath | unmatched — not counted | — | listed in scope | no |
| View Report | NFTMetadataGenerator | unmatched — not counted | — | listed in scope | no |
| View Report | SafeCast | unmatched — not counted | — | listed in scope | no |
| View Report | SafeERC20 | unmatched — not counted | — | listed in scope | no |
| View Report | Sets | unmatched — not counted | — | listed in scope | no |
| View Report | StakingGraph | unmatched — not counted | — | listed in scope | no |
| View Report | TokenUtils | unmatched — not counted | — | listed in scope | no |
| View Report | MYTStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | PerpetualGauge | unmatched — not counted | — | listed in scope | no |
| View Report | AaveV3ARBUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | AaveV3ARBWETHStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | EulerARBUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | EulerARBWETHStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | FluidARBUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | EulerUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | EulerWETHStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | MorphoYearnOGWETH | unmatched — not counted | — | listed in scope | no |
| View Report | PeapodsETHStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | PeapodsUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | TokeAutoETHStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | TokeAutoUSDStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | WStethStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | AaveV3OPUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | MoonwellUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | MoonwellWETHStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | Transmuter | unmatched — not counted | — | listed in scope | no |
| View Report | PermissionedProxy | unmatched — not counted | — | listed in scope | no |
| View Report | Whitelist | ambiguous — not counted | Whitelist (alternative) `0x211c74...25ef59` — deployed 2022-02-24 06:49:05+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0x78537a...8f1132` — deployed 2022-02-24 03:07:10+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0x46f992...435ace` — deployed 2022-02-24 05:24:22+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0xa3dfcc...79e653` — deployed 2022-02-24 06:30:06+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0x3f950f...4b2096` — deployed 2022-03-18 17:05:56+03 — liveness: live (code_present_context)<br>Whitelist (alternative) `0x35b2c1...78ade6` — deployed 2022-02-24 05:23:31+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0xdd8ac2...e83ff1` — deployed 2022-02-24 03:07:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| View Report | ZeroXSwapVerifier | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistCurator | unmatched — not counted | — | listed in scope table | no |
| View Report | AlchemistAllocator | unmatched — not counted | — | listed in scope table | no |
| View Report | PermissionedProxy | unmatched — not counted | — | listed in scope table | no |
| View Report | IAllocator | unmatched — not counted | — | listed in scope table | no |
| View Report | IAlchemistCurator | unmatched — not counted | — | listed in scope table | no |
| View Report | MYTStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | AlchemistGate | unmatched — not counted | — | listed in scope table | no |
| View Report | WstethMainnet | unmatched — not counted | — | listed in scope table | no |
| View Report | AaveV3OPUSDCStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | MoonwellUSDCStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | MoonwellWETHStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | FluidARBUSDCStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | EulerARBWETHStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | EulerARBUSDCStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | AaveV3ARBWETHStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | AaveV3ARBUSDCStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | PeapodsETH | unmatched — not counted | — | listed in scope table | no |
| View Report | EulerUSDCStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | EulerWETHStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | PeapodsUSDC | unmatched — not counted | — | listed in scope table | no |
| View Report | TokeAutoUSDStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | MorphoYearnOGWETH | unmatched — not counted | — | listed in scope table | no |
| View Report | TokeAutoEth | unmatched — not counted | — | listed in scope table | no |
| Strategies report (April 15–17, 2026) | FrxEthEthDualOracleAggregatorAdapter | unmatched — not counted | — | listed in scope | no |
| Strategies report (April 15–17, 2026) | AlchemistRouter | unmatched — not counted | — | listed in scope | no |
| Strategies report (April 15–17, 2026) | EtherfiEETHStrategy | unmatched — not counted | — | listed in scope | no |
| Strategies report (April 15–17, 2026) | OraclePricedSwapStrategy | unmatched — not counted | — | listed in scope | no |
| Strategies report (April 15–17, 2026) | SFraxETHStrategy | unmatched — not counted | — | listed in scope | no |
| Strategies report (April 15–17, 2026) | SiUSDStrategy | unmatched — not counted | — | listed in scope | no |
| Strategies report (April 15–17, 2026) | WStethStrategy | unmatched — not counted | — | listed in scope | no |
| Strategies follow-up report (April 23–24, 2026) | SimMigrateToWstethStrategy | unmatched — not counted | — | listed in Audit Scope section | no |
| Strategies follow-up report (April 23–24, 2026) | MYTTokenSwapper | unmatched — not counted | — | listed in Audit Scope section | no |
| Strategies follow-up report (April 23–24, 2026) | WstETHEthereumStrategy | unmatched — not counted | — | listed in Audit Scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xdbdb4d...90c8df` | AlchemixToken | token | $6,906,906.57 | Verified native implementation with $6,906,906.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf547b8...f4acfb` | AlchemistV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0fba36...167f42` | TransmuterBuffer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x437067...b5948f` | TransmuterBuffer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xad2a6c...220298` | TransmuterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x211c74...25ef59` | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3c2c6f...01bcf8` | WstETHAdapterV1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 100 |
| upstream | 26 |
| standard_library | 26 |
| needs_review | 361 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 5 ambiguous, 163 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=1
- Match method counts: unique_name=1

Zero-match audit list:

- [4306] hackmd.io/@geistermeister/SkSZiU9ybe
- [4307] cantina.xyz/portfolio/f638950d-a8ad-4df8-a6ec-8b067e416d7b
- [9744] v3-nethermind.pdf
- [9745] v3-strategies-yaudit-followup.pdf
- [9746] v3-strategies-yaudit.pdf
- [9747] v3-yearn.pdf
- [26438] View Report
- [26440] View Report
- [26441] View Report
- [26442] Strategies report (April 15–17, 2026)
- [26443] Strategies follow-up report (April 23–24, 2026)

Fork inheritance lineage and inherited audits are included when available.
