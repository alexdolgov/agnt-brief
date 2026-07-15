# Agentic Audit Brief: Camelot

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Camelot (`camelot`)
- Website: [https://camelot.exchange/](https://camelot.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum
- Contract surface: 140 unique implementations (214 raw deployments)
- Coverage basis: 4/19 confirmed own live verified implementations (21.1%); conservative 21.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $22,479,494.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Camelot. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 27 contract row(s) across arbitrum, sepolia. Structural roles: 14 supporting, 10 core, 3 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 27
- Structural roles: supporting (14), core (10), unclassified (3)
- Contract kinds: contract (27)
- Detected standards: ownable (9), erc165 (7), accesscontrol (5), multicall (4), erc20 (3), erc721 (2), erc1967proxy (1), ownable2step (1)
- Frameworks: openzeppelin (21)
- Upgradeable-pattern rows: 2

## Fork Analysis

1 of 23 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

**AlgebraFactory** (`0xbefc4b...7a2f37`, chain 42161)
Origin: supernova (`0x01f99c...3ade8c`)
Containment: 100.0% - 24 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1f9841...61f984`, chain 42161)
- UnnamedContract (`0x222f13...687a71`, chain 42161)
- AlgebraAdapter (`0x148688...c893a0`, chain 42161)
- AlgebraFactory (`0x1a3c9b...1fd35b`, chain 42161)
- AlgebraV2Adapter (`0x64c086...2947f3`, chain 42161)
- CamelotAdapter (`0xabc401...688dab`, chain 42161)
- CamelotMaster (`0x55401a...fc21f4`, chain 42161)
- CamelotRouter (`0xc873fe...b2448d`, chain 42161)
- CamelotYakRouter (`0x99d4e8...ddec5e`, chain 42161)
- DividendsV2 (`0x5422aa...ebd3bb`, chain 42161)
- GrailTokenV2 (`0x3d9907...0982d8`, chain 42161)
- Launchpad (`0x594fb2...c118a5`, chain 42161)
- NonfungiblePositionManager (`0x00c7f3...4dcd15`, chain 42161)
- NonfungiblePositionManager (`0xa602e7...dce9d8`, chain 42161)
- PositionHelper (`0xe45801...1b8175`, chain 42161)
- Quoter (`0x0fc730...4fa76e`, chain 42161)
- Quoter (`0xfe24b2...688f7b`, chain 42161)
- SwapRouter (`0x1f721e...339e18`, chain 42161)
- SwapRouter (`0x4ee153...675f53`, chain 42161)
- TransparentUpgradeableProxy (`0x82af49...3fbab1`, chain 42161)
- XGrailToken (`0x3caae2...3f496b`, chain 42161)
- YieldBooster (`0xd27c37...c0b1b1`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 27; live-surface rows included: 27 (21 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 22/41 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/19 (21.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 21 own, 9 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 110 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Confirmed-live implementations: 22 of 140 unique; 118 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/75
- Verified + Unaudited implementations: 71
- Verified by bytecode match: 0
- Unverified implementations: 65
- Unique implementations: 140
- Raw deployments: 214
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 4 | 5.3% | 2022-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CamelotRouter | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-231507 | 2 deployments: arbitrum `0xc873fe...b2448d`; arbitrum `0xe45801...1b8175` | ✅ Audited |
| GrailTokenV2 | token | project_anchor | own_supporting | 0 | arbitrum | unit-231484 | `0x3d9907...0982d8` | ✅ Audited |
| XGrailToken | token | project_anchor | own_supporting | 0 | arbitrum | unit-231483 | `0x3caae2...3f496b` | ✅ Audited |
| YieldBooster | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231500 | `0xd27c37...c0b1b1` | ✅ Audited |

### ⚠️ Verified + Unaudited (71)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| aeWETH | token | project_anchor | own_supporting | 1 | arbitrum | unit-231506 | `0x82af49...3fbab1` | ⚠️ Unaudited |
| AlgebraAdapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-231479 | `0x148688...c893a0` | ⚠️ Unaudited |
| AlgebraAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x46fca9...1780aa` | ⚠️ Unaudited |
| AlgebraCommunityVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x971ba9...3a5e5a`; arbitrum `0xe3c3e2...1da69e` | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf1849...aea3ef` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b3538...99db1b` | ⚠️ Unaudited |
| AlgebraFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-231480 | `0x1a3c9b...1fd35b` | ⚠️ Unaudited |
| AlgebraFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x1e3db3...8455ca`; arbitrum `0x6b692b...4e5bb8`; arbitrum `0x9a8ddc...aed592`; arbitrum `0xd3b4c3...5d6aea`; arbitrum `0xd490f2...f684dd`; arbitrum `0xd97b6e...db61d6`; arbitrum `0xe907d0...994ae3` | ⚠️ Unaudited |
| AlgebraFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-231498 | `0xbefc4b...7a2f37` | ⚠️ Unaudited |
| AlgebraPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x0f9dff...741870`; arbitrum `0x34f74f...c69bd2`; arbitrum `0x5e1e14...45ffe1`; arbitrum `0x6dd3fb...974f65`; arbitrum `0x89aee0...fff226`; arbitrum `0x8b5665...ca6f15`; arbitrum `0xd5143d...c4fa56`; arbitrum `0xf09c08...74af8d` | ⚠️ Unaudited |
| AlgebraStaticQuoter | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x4efc8a...f39e07`; arbitrum `0xe7a5ce...8204d1` | ⚠️ Unaudited |
| AlgebraV2Adapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x28901c...05d947`; arbitrum `0xd15996...db989f` | ⚠️ Unaudited |
| AlgebraV2Adapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-231490 | `0x64c086...2947f3` | ⚠️ Unaudited |
| AlgebraV2StaticQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x26d1e9...7414b6`; arbitrum `0xe04538...c5594f` | ⚠️ Unaudited |
| AlgebraVaultFactoryStub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1cb8ee...1333f6`; arbitrum `0x653658...32d540` | ⚠️ Unaudited |
| BasePluginV1Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe3ae84...cbd03d` | ⚠️ Unaudited |
| BondWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc1321...af34e5` | ⚠️ Unaudited |
| CamelotAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79ab95...b70f9b` | ⚠️ Unaudited |
| CamelotAdapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-231497 | `0xabc401...688dab` | ⚠️ Unaudited |
| CamelotExchangeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1be46c...268f25` | ⚠️ Unaudited |
| CamelotFactory | registry | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-231492 | `0x6eccab...43a652` | ⚠️ Unaudited |
| CamelotMaster | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-231487 | `0x55401a...fc21f4` | ⚠️ Unaudited |
| CamelotRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x4672f4...35d091`; arbitrum `0xdd8e1a...d8a453` | ⚠️ Unaudited |
| CamelotYakRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: arbitrum `0x17bcb7...105d5c`; arbitrum `0x728343...e5cc00`; arbitrum `0x762629...bed56d`; arbitrum `0x81e3a6...619cf8`; arbitrum `0x8b3bc3...3d6b74`; arbitrum `0x932235...a1d35a`; arbitrum `0x9c1e97...7922fb`; arbitrum `0xb1562f...662712`; arbitrum `0xe14b4f...adfee1`; arbitrum `0xe9f622...845152` | ⚠️ Unaudited |
| CamelotYakRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-231495 | `0x99d4e8...ddec5e` | ⚠️ Unaudited |
| CampaignFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x09fa9d...eb3ee1`; arbitrum `0x0afae9...595fe4`; arbitrum `0x44fac3...7feaa4` | ⚠️ Unaudited |
| CampaignFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x68c4a7...3b619b`; arbitrum `0xe8c0d2...f3e3c2` | ⚠️ Unaudited |
| DefiEdgeProxyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4eb9f...09c11f` | ⚠️ Unaudited |
| Distributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xb31263...ac5a01`; arbitrum `0xd4f3dc...47880c` | ⚠️ Unaudited |
| DividendsV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231486 | `0x5422aa...ebd3bb` | ⚠️ Unaudited |
| EXCLegacyToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x83bbc9...13c3b5` | ⚠️ Unaudited |
| FairAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 14 deployments: arbitrum `0x06b5c1...883362`; arbitrum `0x0ca4fc...f6c20b`; arbitrum `0x149ace...87975b`; arbitrum `0x232243...98bbb8`; arbitrum `0x2eb79e...36ffe1`; arbitrum `0x40bf24...4b47d4`; arbitrum `0x4a867f...4adca3`; arbitrum `0x7079ed...b58b66`; arbitrum `0x9c613a...5d7248`; arbitrum `0xb09a74...f6c88d`; arbitrum `0xb955cb...648a0c`; arbitrum `0xdac17c...09e54c`; arbitrum `0xe0e0b0...bbc1ec`; arbitrum `0xea0817...42cc73` | ⚠️ Unaudited |
| FarmingCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3eee90...342c46` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | arbitrum | unit-231505 | `0xaf88d0...8e5831` | ⚠️ Unaudited |
| GammaUniProxyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x851b3f...5a30f1` | ⚠️ Unaudited |
| Launchpad | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231488 | `0x594fb2...c118a5` | ⚠️ Unaudited |
| LiquidityManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x979bc6...be2520`; arbitrum `0xf23e24...edf363` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1e12aa...781dae`; arbitrum `0xff7da6...fb3a62` | ⚠️ Unaudited |
| NFTPoolFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-231491 | `0x6db1ef...1dbf6d` | ⚠️ Unaudited |
| NitroPoolFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-231501 | `0xe0a6b3...c24569` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | arbitrum | unit-231503 | `0x00c7f3...4dcd15` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x197de4...e8d31b`; arbitrum `0x368435...babbc8`; arbitrum `0x5c8d79...8c5905`; arbitrum `0xacdcc3...890db3`; arbitrum `0xe6988b...7a5383`; arbitrum `0xf41599...7020f9` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-231496 | `0xa602e7...dce9d8` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1ad8c5...e14abc`; arbitrum `0x52d2eb...b48325` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2d22aa...7606dc`; arbitrum `0x89a13b...b8a68a` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x49f598...32067c`; arbitrum `0x674d07...e7a7ef` | ⚠️ Unaudited |
| Presale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66ec1e...365d29` | ⚠️ Unaudited |
| ProtocolEarnings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a6383...ed1448` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x02102b...1b88ac`; arbitrum `0x27d3ce...fefe92`; arbitrum `0x32ab0c...54e73c`; arbitrum `0x6c78f2...bbc0bd`; arbitrum `0x9b7a7c...38c063`; arbitrum `0xaaf703...2eb3ac`; arbitrum `0xc50b12...9fe056`; arbitrum `0xd70dd6...63b955` | ⚠️ Unaudited |
| Quoter | periphery | project_anchor | own_supporting | 0 | arbitrum | unit-231478 | `0x0fc730...4fa76e` | ⚠️ Unaudited |
| Quoter | periphery | project_anchor | own_supporting | 0 | arbitrum | unit-231502 | `0xfe24b2...688f7b` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66d756...5e639b` | ⚠️ Unaudited |
| Refund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f31ce...0e36eb` | ⚠️ Unaudited |
| RvlPNP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x279427...5356af` | ⚠️ Unaudited |
| StakedUSDX | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7788a3...d87d92` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x17585d...640b50`; arbitrum `0x22535b...18ad98`; arbitrum `0x377b58...93c51d`; arbitrum `0x49c98f...1d951a`; arbitrum `0xa55582...839ef5`; arbitrum `0xad3a43...b64e12` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 1 | arbitrum | unit-231504 | `0x1f721e...339e18` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-231485 | `0x4ee153...675f53` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x22cb09...9b8034`; arbitrum `0x6e39cc...4bde38` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x2e9bdd...887a9f`; arbitrum `0x5846bf...7209b4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x5822a4...6bc460`; arbitrum `0xd8676f...0e34ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x903293...594c13` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xa76021...280b5c`; arbitrum `0xf4c88b...e7dd41` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xf53b4b...edd8c1`; arbitrum `0xfecbac...7e4321` | ⚠️ Unaudited |
| USDX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf3527e...a66cef` | ⚠️ Unaudited |
| USDXRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0eaf6f...d82f7b` | ⚠️ Unaudited |
| USDXSales | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x859834...e3065f`; arbitrum `0xb45c42...0a56d1` | ⚠️ Unaudited |
| VestingWallet | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-231494 | `0x8b4ee9...0cb155` | ⚠️ Unaudited |
| VestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x953bf6...683aaa` | ⚠️ Unaudited |
| VestingWallet2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a5a7c...294da3` | ⚠️ Unaudited |
| VestingWallet2 | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-231493 | `0x770066...df0f45` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (65)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08dff9...c2c3fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x105a04...80598e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ac737...74959d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cf9cf...e98a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f054c...46d8ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231481 | `0x1f9841...61f984` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231482 | `0x222f13...687a71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x259ba0...85ea3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x279fa5...ade413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c09fe...f14ec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f2a41...dcf861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3046cf...942dbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30a4bd...c8e230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30cea6...f943b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3fc3f7...d931af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x400bb7...81e231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4548ab...b04574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x46306b...4d8820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48813f...7caf33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b5348...8c72f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x586496...3b25f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x590655...553f34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x599999...80a9fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e11bb...f326ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e26ba...35897a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-231489 | `0x60a186...79e68b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x610934...0bc050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x61e69f...55c717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65fbb3...9efcb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67f9e2...abe545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f2ac9...78f09f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x763b38...fb51b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77025d...405aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x787c1a...1ada48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x790b6c...f049a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7d1b59...963389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7d8c6b...0d2db4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7dbc6c...3fdde7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x83bb60...c0d3e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84e5ba...06c9a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8aa8a6...6184fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c0971...33689b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8cc276...39b16e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9220d0...8b6245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92883a...fd8087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x955a70...2fedca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x99f28a...28893a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a6627...0a1621` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9dd655...abe2bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaedc4e...2025ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb0e01e...4606ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb2b2a9...273bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6156f...e25ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc12987...73ebcf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-231499 | `0xc216fc...7624b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc27d4d...5e5657` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc7585c...c60960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc96ff2...eb338d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf8d07...8e0ffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8f185...800ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4331d...304d36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf22808...a7a21b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf8644a...243c33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfdd069...2eb659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfeecfd...680e33` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [paladinsec.co/projects/camelot](https://paladinsec.co/projects/camelot) | Paladin | Audit | 2022-11 | stale | Direct | n/a | matched | 4 | 0 | 0 | 13 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1826] paladinsec.co/projects/camelot — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| paladinsec.co/projects/camelot | CamelotFactory | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | CamelotMaster | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | CamelotPair | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | CamelotRouter | own contract | PositionHelper (proxy) (alternative) `0xe45801...1b8175` — deployed 2022-11-19 17:46:33+03 — liveness: live (current_address_book_code)<br>CamelotRouter (selected) `0xc873fe...b2448d` — deployed 2022-11-04 01:24:28+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-11-04 was 3d from audit; next candidate 18d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/camelot | GrailTokenV2 | own contract | GrailTokenV2 (selected) `0x3d9907...0982d8` — deployed 2022-11-19 17:06:57+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/camelot | Math | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | NFTPool | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | NFTPoolFactory | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | NitroPool | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | NitroPoolFactory | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | Presale | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | SafeMath | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | UQ112x112 | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | UniswapV2ERC20 | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | UniswapV2Library | unmatched — not counted | — | — | no |
| paladinsec.co/projects/camelot | XGrailToken | own contract | XGrailToken (selected) `0x3caae2...3f496b` — deployed 2022-11-19 17:14:44+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/camelot | YieldBooster | own contract | YieldBooster (selected) `0xd27c37...c0b1b1` — deployed 2022-11-19 17:29:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x82af49...3fbab1` | aeWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x148688...c893a0` | AlgebraAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1a3c9b...1fd35b` | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbefc4b...7a2f37` | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x64c086...2947f3` | AlgebraV2Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xabc401...688dab` | CamelotAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x99d4e8...ddec5e` | CamelotYakRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5422aa...ebd3bb` | DividendsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x594fb2...c118a5` | Launchpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x00c7f3...4dcd15` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa602e7...dce9d8` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0fc730...4fa76e` | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xfe24b2...688f7b` | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1f721e...339e18` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4ee153...675f53` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 71 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 67 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 13 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: temporal_name=1, unique_name=3

Fork inheritance lineage and inherited audits are included when available.
