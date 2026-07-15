# Agentic Audit Brief: Snuggle

## Export Authority

- Production state: **published scope**
- Raw selected rows: 15 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Snuggle (`snuggle`)
- Website: [https://snuggle.fi/](https://snuggle.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base
- Contract surface: 112 unique implementations (186 raw deployments)
- Coverage basis: 14/14 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,426,344.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Snuggle. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across arbitrum, base. Structural roles: 11 supporting, 3 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: supporting (11), core (3)
- Contract kinds: contract (14)
- Detected standards: ownable (3), ownable2step (2)
- Frameworks: openzeppelin (11), uniswap-v3 (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x02415b...0224c0`, chain 8453)
- UnnamedContract (`0xd3923b...6b7470`, chain 8453)
- AerodromePositionAdapter (`0xe3efa7...f79589`, chain 8453)
- AerodromeRewardAdapter (`0xcb16cb...d77306`, chain 8453)
- FeeTransferHelper (`0x613ba8...28b1f3`, chain 8453)
- KeepersHelper (`0x60431b...563345`, chain 8453)
- PancakeSwapPositionAdapter (`0x0c0ba0...1b39e5`, chain 8453)
- PancakeSwapRewardAdapter (`0x63de14...18b1cf`, chain 8453)
- ProxyAdmin (`0x269dc2...cca86f`, chain 8453)
- ReferralTracker (`0x2536a7...68d9ee`, chain 8453)
- SnuggleRebalanceLib (`0xf84b57...1dcddc`, chain 8453)
- SnuggleVaultAdminSatellite (`0x5a332c...e4d271`, chain 8453)
- StakingManager (`0x3f928d...a270c1`, chain 8453)
- TreasurySplitter (`0x93d0d1...a9ec12`, chain 8453)
- UniswapV3Adapter (`0xf757c9...f33010`, chain 8453)
- ViewHelper (`0x298028...976a1c`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 14; live-surface rows included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 14/14 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 96 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Confirmed-live implementations: 16 of 112 unique; 96 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 14/76
- Verified + Unaudited implementations: 62
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 112
- Raw deployments: 186
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 15 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 14 | 18.4% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AerodromePositionAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392628 | `0xe3efa7...f79589` | ✅ Audited |
| AerodromeRewardAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392626 | `0xcb16cb...d77306` | ✅ Audited |
| FeeTransferHelper | periphery | project_anchor | own_supporting | 0 | base | unit-392623 | `0x613ba8...28b1f3` | ✅ Audited |
| KeepersHelper | operational_periphery | project_anchor | own_supporting | 0 | base | unit-392622 | `0x60431b...563345` | ✅ Audited |
| PancakeSwapPositionAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392616 | `0x0c0ba0...1b39e5` | ✅ Audited |
| PancakeSwapRewardAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-392624 | `0x63de14...18b1cf` | ✅ Audited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | base | unit-392618 | `0x269dc2...cca86f` | ✅ Audited |
| ReferralTracker | unknown | project_anchor | own_supporting | 0 | base | unit-392617 | `0x2536a7...68d9ee` | ✅ Audited |
| SnuggleRebalanceLib | unknown | project_anchor | own_supporting | 0 | base | unit-392630 | `0xf84b57...1dcddc` | ✅ Audited |
| SnuggleVaultAdminSatellite | core_logic | project_anchor | own_supporting | 0 | base | unit-392621 | `0x5a332c...e4d271` | ✅ Audited |
| StakingManager | governance | project_anchor | own_supporting | 0 | base | unit-392620 | `0x3f928d...a270c1` | ✅ Audited |
| TreasurySplitter | operational_periphery | project_anchor | own_supporting | 0 | base | unit-392625 | `0x93d0d1...a9ec12` | ✅ Audited |
| UniswapV3Adapter | adapter | project_anchor | own_supporting | 0 | base | unit-392629 | `0xf757c9...f33010` | ✅ Audited |
| ViewHelper | periphery | project_anchor | own_supporting | 0 | base | unit-392619 | `0x298028...976a1c` | ✅ Audited |

### ⚠️ Verified + Unaudited (62)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AerodromePositionAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0aedee...9794d1` | ⚠️ Unaudited |
| AlgebraCommunityVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x971ba9...3a5e5a`; arbitrum `0xe3c3e2...1da69e` | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf1849...aea3ef` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b3538...99db1b` | ⚠️ Unaudited |
| AlgebraFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x1a3c9b...1fd35b`; arbitrum `0x1e3db3...8455ca`; arbitrum `0x6b692b...4e5bb8`; arbitrum `0x9a8ddc...aed592`; arbitrum `0xd3b4c3...5d6aea`; arbitrum `0xd490f2...f684dd`; arbitrum `0xd97b6e...db61d6`; arbitrum `0xe907d0...994ae3` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac1ce7...bf44ea` | ⚠️ Unaudited |
| AlgebraPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x0f9dff...741870`; arbitrum `0x34f74f...c69bd2`; arbitrum `0x5e1e14...45ffe1`; arbitrum `0x6dd3fb...974f65`; arbitrum `0x89aee0...fff226`; arbitrum `0x8b5665...ca6f15`; arbitrum `0xd5143d...c4fa56`; arbitrum `0xf09c08...74af8d` | ⚠️ Unaudited |
| AlgebraVaultFactoryStub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1cb8ee...1333f6`; arbitrum `0x653658...32d540` | ⚠️ Unaudited |
| BasePluginV1Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe3ae84...cbd03d` | ⚠️ Unaudited |
| BatchAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7603a3...62c8ce` | ⚠️ Unaudited |
| CamelotPositionAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x19ec46...47f217`; arbitrum `0xbfbf7d...9a8956` | ⚠️ Unaudited |
| ConstantProductPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc79ae8...872787` | ⚠️ Unaudited |
| ConstantProductPoolFactoryHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x827179...866976` | ⚠️ Unaudited |
| Crowdsale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x120140...e55afe` | ⚠️ Unaudited |
| DutchAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x438a2b...8b8d43` | ⚠️ Unaudited |
| FarmingCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3eee90...342c46` | ⚠️ Unaudited |
| FeeTransferHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x59c2a1...349461`; arbitrum `0xbfd8cf...0cabae` | ⚠️ Unaudited |
| FixedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcaabdd...fe66f5` | ⚠️ Unaudited |
| KeepersHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x0e7edc...8f9869`; arbitrum `0x408229...ea716f`; arbitrum `0x71b55e...7f30f7`; arbitrum `0xc962c9...8ad7d6` | ⚠️ Unaudited |
| MasterDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0e1f9...8fe48d` | ⚠️ Unaudited |
| MiniChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4d733...bd62c3` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x0769fd...b2841f`; arbitrum `0x80c7dd...a314de` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x0367a6...d7f2c6`; arbitrum `0x1e12aa...781dae`; arbitrum `0xff7da6...fb3a62` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x00c7f3...4dcd15` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x197de4...e8d31b`; arbitrum `0x368435...babbc8`; arbitrum `0x5c8d79...8c5905`; arbitrum `0xacdcc3...890db3`; arbitrum `0xe6988b...7a5383`; arbitrum `0xf41599...7020f9` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x46a15b...7f4364` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xf0cbce...63ef49` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1ad8c5...e14abc`; arbitrum `0x52d2eb...b48325` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2d22aa...7606dc`; arbitrum `0x89a13b...b8a68a` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x49f598...32067c`; arbitrum `0x674d07...e7a7ef` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x96e045...c19385` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3d00cd...652227`; arbitrum `0xb099b4...456cff` | ⚠️ Unaudited |
| PancakeSwapPositionAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: base `0xad35ec...bf0a71`; arbitrum `0x78bb36...bd4589`; arbitrum `0xf20bc2...2b84d9` | ⚠️ Unaudited |
| PancakeSwapRewardAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x4cd1a0...62a065`; arbitrum `0x6af9c5...8d19a8`; arbitrum `0xb668e7...69f7c9` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x427bf5...5396c1`; arbitrum `0x8bca45...e037df`; arbitrum `0x999a74...a891de` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x02102b...1b88ac`; arbitrum `0x0fc730...4fa76e`; arbitrum `0x27d3ce...fefe92`; arbitrum `0x32ab0c...54e73c`; arbitrum `0x6c78f2...bbc0bd`; arbitrum `0x9b7a7c...38c063`; arbitrum `0xaaf703...2eb3ac`; arbitrum `0xc50b12...9fe056`; arbitrum `0xd70dd6...63b955` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x66d756...5e639b`; arbitrum `0xb048bb...e25997` | ⚠️ Unaudited |
| ReferralTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x6915b5...01cd00`; arbitrum `0xb52cca...e4705e` | ⚠️ Unaudited |
| RouteProcessor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x9c6522...e7dbe0`; arbitrum `0x9f1865...c6c12f` | ⚠️ Unaudited |
| RouteProcessor3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc506a...52d674` | ⚠️ Unaudited |
| RouteProcessor3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c1fba...852c82` | ⚠️ Unaudited |
| RouteProcessor3_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09bd2a...4a8e8c` | ⚠️ Unaudited |
| SliverConfig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe7b13b...e299f1` | ⚠️ Unaudited |
| SnuggleHedgeHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x8b3a79...03ef9f`; arbitrum `0xb1364a...feada7` | ⚠️ Unaudited |
| SnuggleVaultAdminSatellite | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1195c0...fe6dce`; arbitrum `0x454059...d7d3f4` | ⚠️ Unaudited |
| SnuggleVaultUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0d8039...da22da`; arbitrum `0x9da886...bab114` | ⚠️ Unaudited |
| SnuggleVaultUpgradeable | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x1638b6...894f9d`; arbitrum `0x572351...9cd430`; arbitrum `0xa86b81...a85c68` | ⚠️ Unaudited |
| SnuggleVaultUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x413ca9...2630f6`; arbitrum `0x4b1cbd...bcb07d` | ⚠️ Unaudited |
| StablePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2fb25...9a0288` | ⚠️ Unaudited |
| StakingManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x020ed2...9948bd`; arbitrum `0xd977c0...e2b40d` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x17585d...640b50`; arbitrum `0x1b81d6...13eb14`; arbitrum `0x22535b...18ad98`; arbitrum `0x377b58...93c51d`; arbitrum `0x49c98f...1d951a`; arbitrum `0xa55582...839ef5`; arbitrum `0xad3a43...b64e12` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x1f721e...339e18` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x22cb09...9b8034`; arbitrum `0x6e39cc...4bde38`; arbitrum `0x851694...016c9e`; arbitrum `0x9a4895...ae3796` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x5822a4...6bc460`; arbitrum `0xd8676f...0e34ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x903293...594c13` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xa76021...280b5c`; arbitrum `0xf4c88b...e7dd41` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xf53b4b...edd8c1`; arbitrum `0xfecbac...7e4321` | ⚠️ Unaudited |
| TreasurySplitter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x8c7d96...c176f6`; arbitrum `0xafe51c...84c92a` | ⚠️ Unaudited |
| TridentRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9988b...8e0523` | ⚠️ Unaudited |
| UniswapV3Adapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: base `0xca4cf9...debabd`; arbitrum `0x76bdb4...c44ef2`; arbitrum `0xa6e465...be082c` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc203d...ecc5c2` | ⚠️ Unaudited |
| ViewHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: base `0x286490...ce18bd`; arbitrum `0x0ef66d...3da5b6`; arbitrum `0x4a14af...a19df9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392615 | `0x02415b...0224c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392627 | `0xd3923b...6b7470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x011e52...e2e581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x145d82...522e6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1be211...7b1d6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c5771...0eb194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cf9cf...e98a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f054c...46d8ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x258f7e...38b788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x259ba0...85ea3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f6867...050066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3046cf...942dbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30cea6...f943b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x351447...0b0187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3db923...7cb9ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3fc3f7...d931af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x400bb7...81e231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48813f...7caf33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b5348...8c72f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5629ce...d851d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67468e...f70792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e9aed...a1bc56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x790b6c...f049a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8cc276...39b16e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8dacff...225d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92883a...fd8087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x933951...0ff328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9dd655...abe2bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd87be...1736d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc27d4d...5e5657` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdcd6a4...1232d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4331d...304d36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeae23c...c130ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf78031...cf9bef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf8644a...243c33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfdd069...2eb659` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Abyss.pdf](https://d3cny4im7ppv5.cloudfront.net/Abyss.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [www.snuggle.fi/security](https://www.snuggle.fi/security) | unknown | Audit | 2026-02 | fresh | Direct | n/a | matched | 15 | 0 | 0 | 1 | n/a |
| [valvessecurity.com](https://valvessecurity.com/) | yAudit | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3119] Abyss.pdf — no match: Scope table lists 5 source files. Audit dates: 10/11/2025 to 12/11/2025, so end date is 2025-11-12.
- [3121] www.snuggle.fi/security — matched: No reason recorded
- [11989] valvessecurity.com — no match: The document appears to be a marketing page for Valves Security, not an actual audit report. Only one contract name (VaultAudit) is mentioned in a code example, but no formal scope section or audit date is present.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Abyss.pdf | vault | unmatched — not counted | — | listed in scope table | no |
| Abyss.pdf | vault_registry | unmatched — not counted | — | listed in scope table | no |
| Abyss.pdf | fee_manager | unmatched — not counted | — | listed in scope table | no |
| Abyss.pdf | constants | unmatched — not counted | — | listed in scope table | no |
| Abyss.pdf | protocol_config | unmatched — not counted | — | listed in scope table | no |
| www.snuggle.fi/security | AdminSatellite | own contract | SnuggleVaultAdminSatellite (selected) `0x5a332c...e4d271` — deployed 2026-02-16 00:07:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | AerodromePositionAdapter | own contract | AerodromePositionAdapter (selected) `0xe3efa7...f79589` — deployed 2026-02-16 00:08:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | AerodromeRewardAdapter | own contract | AerodromeRewardAdapter (selected) `0xcb16cb...d77306` — deployed 2026-02-16 00:08:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | FeeTransferHelper | own contract | FeeTransferHelper (selected) `0x613ba8...28b1f3` — deployed 2026-02-16 00:07:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | KeepersHelper V3 | own contract | KeepersHelper (selected) `0x60431b...563345` — deployed 2026-02-16 16:29:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | PancakeSwapPositionAdapter | own contract | PancakeSwapPositionAdapter (selected) `0x0c0ba0...1b39e5` — deployed 2026-02-16 00:08:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | PancakeSwapRewardAdapter | own contract | PancakeSwapRewardAdapter (selected) `0x63de14...18b1cf` — deployed 2026-02-16 00:08:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | ProxyAdmin | own contract | ProxyAdmin (selected) `0x269dc2...cca86f` — deployed 2026-02-16 00:07:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | ReferralTracker | own contract | ReferralTracker (selected) `0x2536a7...68d9ee` — deployed 2026-02-16 00:07:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | SnuggleRebalanceLib | own contract | SnuggleRebalanceLib (selected) `0xf84b57...1dcddc` — deployed 2026-02-16 00:07:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | SnuggleVault | unmatched — not counted | — | — | no |
| www.snuggle.fi/security | SnuggleVault Implementation | own contract | 0x02415b… (selected) `0x02415b...0224c0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | StakingManager | own contract | StakingManager (selected) `0x3f928d...a270c1` — deployed 2026-02-16 00:07:51+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | TreasurySplitter | own contract | TreasurySplitter (selected) `0x93d0d1...a9ec12` — deployed 2026-02-16 00:07:39+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | UniswapV3Adapter | own contract | UniswapV3Adapter (selected) `0xf757c9...f33010` — deployed 2026-02-16 00:08:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.snuggle.fi/security | ViewHelper | own contract | ViewHelper (selected) `0x298028...976a1c` — deployed 2026-02-16 00:08:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| valvessecurity.com | VaultAudit | unmatched — not counted | — | Mentioned in code snippet as VaultAudit.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 69 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 38 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 15 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 7 unmatched
- Matched-own operational status: 15 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: unique_name=15

Zero-match audit list:

- [3119] Abyss.pdf
- [11989] valvessecurity.com

Fork inheritance lineage and inherited audits are included when available.
