# Agentic Audit Brief: Carbon Defi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 3 audit(s)
- Eligible audit results: 4 (3 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Carbon Defi (`carbon-defi`)
- Website: [https://app.carbondefi.xyz/](https://app.carbondefi.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, blast, celo, ethereum, fantom, linea, mantle, sei, sepolia
- Contract surface: 182 unique implementations (320 raw deployments)
- Coverage basis: 3/14 confirmed own live verified implementations (21.4%); conservative 21.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,187,230.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Carbon Defi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 26 contract row(s) across base, blast, celo, ethereum, fantom, linea, mantle, sei, sepolia. Structural roles: 19 unclassified, 5 core, 2 supporting. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 26
- Structural roles: unclassified (19), core (5), supporting (2)
- Contract kinds: contract (24), abstract (2)
- Detected standards: accesscontrol (5), erc165 (5), erc1967proxy (2)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (7)
- Upgradeable-pattern rows: 7

## Fork Analysis

2 of 18 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

**CarbonVortex** (`0x4bbd9f...1b08a2`, chain 1329)
Origin: carbon-defi (`0xc56eb3...b03fbc`)
Containment: 100.0% - 38 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CarbonVortex** (`0x30dd96...af39f0`, chain 81457)
Origin: carbon-defi (`0xc56eb3...b03fbc`)
Containment: 100.0% - 38 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0f5409...a9bdaa`, chain 1)
- UnnamedContract (`0x31548b...6b2db0`, chain 1)
- UnnamedContract (`0x3e67d2...0f5de1`, chain 1)
- UnnamedContract (`0x4e0178...faca13`, chain 1)
- UnnamedContract (`0x59f210...4c84ea`, chain 1)
- UnnamedContract (`0x63e353...c97525`, chain 1)
- UnnamedContract (`0x4a0c4e...ad4130`, chain 250)
- UnnamedContract (`0xa60a60...59409e`, chain 250)
- UnnamedContract (`0xc56eb3...b03fbc`, chain 5000)
- UnnamedContract (`0x3f086f...623435`, chain 59144)
- UnnamedContract (`0x5bca33...b2482e`, chain 59144)
- CarbonVortex (`0xc56eb3...b03fbc`, chain 1)
- OptimizedTransparentUpgradeableProxy (`0x57cf0c...87ea05`, chain 1329)
- OptimizedTransparentUpgradeableProxy (`0x773b75...b05119`, chain 8453)
- VortexAcrossBridge (`0x31548b...6b2db0`, chain 81457)
- VortexOpStackBridge (`0xd9c6f8...afacdb`, chain 42220)

## Contract Surface Quality

- Logic-topography rows: 26; live-surface rows included: 26 (25 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/46 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/14 (21.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 156 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 57
- Confirmed-live implementations: 23 of 182 unique; 159 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/69
- Verified + Unaudited implementations: 66
- Verified by bytecode match: 0
- Unverified implementations: 113
- Unique implementations: 182
- Raw deployments: 320
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 14.3% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 3 | 4.3% | 2024-07 |
| ChainSecurity | Tier 1 | 2 | 2.9% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CarbonController | unknown | project_anchor | own_supporting | 1 | ethereum | unit-231647 | 2 deployments: ethereum `0x1e0804...32bf2c`; ethereum `0xc537e8...ea45e1` | ✅ Audited |
| CarbonController | unknown | project_anchor | own_supporting | 1 | sei | unit-231653 | 2 deployments: sei `0x8c05ea...ade636`; sei `0xe48166...1f1087` | ✅ Audited |
| Voucher | unknown | project_anchor | own_supporting | 1 | ethereum | unit-231650 | 2 deployments: ethereum `0x3660f0...8f554e`; ethereum `0x460cb0...109d0a` | ✅ Audited |

### ⚠️ Verified + Unaudited (66)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AutoCompoundingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x036f8b...6f6cdc` | ⚠️ Unaudited |
| BancorArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x08da38...65461c`; ethereum `0x2dd6b6...da75a7`; ethereum `0x2fde9e...85d1b2`; ethereum `0x45d2e2...5a7ac8`; ethereum `0x577552...ed5df7`; ethereum `0x68cd59...3fb810`; ethereum `0x6dbe10...74e912`; ethereum `0x770abf...d3c343`; ethereum `0xb04e45...1a1ee2`; ethereum `0xbd19f6...5d7e51`; ethereum `0xd80a40...1b0ada`; ethereum `0xdbcb8a...9af34a`; ethereum `0xe9a8e0...a0902d`; base `0x45d2e2...5a7ac8` | ⚠️ Unaudited |
| BancorNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x00bfa0...ca8e63`; ethereum `0x3006eb...2cfc75`; ethereum `0x751a3e...a10255`; ethereum `0x7a84b0...07b19e`; ethereum `0x835ebb...fc45c1`; ethereum `0x955a85...59e1e6`; ethereum `0xa21e1c...d8f4ea`; ethereum `0xe0cb1b...ffa4fb`; ethereum `0xe2a277...dcd1f7` | ⚠️ Unaudited |
| BancorNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2f1475...1638a3`; ethereum `0xeef417...9dd4fb` | ⚠️ Unaudited |
| BancorNetworkInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8e303d...d6e760`; ethereum `0xfd47c7...66ae7b` | ⚠️ Unaudited |
| BancorNetworkInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6e7e7...7cac13` | ⚠️ Unaudited |
| BancorPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9f292c...e133d5`; ethereum `0xe7e533...d274d4` | ⚠️ Unaudited |
| BancorPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe18bd2...1f88e2`; ethereum `0xf5de92...3d2b0f` | ⚠️ Unaudited |
| BancorV1Migration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd761d5...c3cc96` | ⚠️ Unaudited |
| BNTPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x02651e...95eaca`; ethereum `0xfb07a6...b1ffa3` | ⚠️ Unaudited |
| BNTPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9810e2...c07bd8`; ethereum `0xcc06b5...22af65` | ⚠️ Unaudited |
| CarbonBatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0199f3...4b7d4e`; ethereum `0x70ab82...25842a` | ⚠️ Unaudited |
| CarbonBatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x30dd96...af39f0`; sei `0xe375dd...2f952e` | ⚠️ Unaudited |
| CarbonBatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x482b27...7845e1`; celo `0xa97787...0718f7` | ⚠️ Unaudited |
| CarbonController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x16b9b6...79d72d`; ethereum `0x1a3122...c218cf`; ethereum `0x21f02a...c086ee`; ethereum `0x5ec3b3...4e5b20`; ethereum `0x6db6ee...8b12c1`; ethereum `0xd59bca...063ff8`; sei `0x8ce318...6ab749`; celo `0xbbaff3...c5b496` | ⚠️ Unaudited |
| CarbonController | unknown | project_anchor | own_supporting | 1 | celo | unit-231657 | 2 deployments: celo `0x51aa24...e36317`; celo `0x661987...29ed3a` | ⚠️ Unaudited |
| CarbonPOL | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x779b3b...4ab123`; ethereum `0xd06146...2bef46` | ⚠️ Unaudited |
| CarbonPOL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x945ac6...287105` | ⚠️ Unaudited |
| CarbonVortex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x2c0fa8...923502`; ethereum `0x55effb...f472ad`; ethereum `0x676b91...ce95c0`; ethereum `0x727170...f0fb9e`; sei `0x924ad5...cb5502`; sei `0xc95a9c...f977b0`; base `0xc7dd38...c5c55c`; base `0xe48166...1f1087`; celo `0x31548b...6b2db0`; celo `0x4fe1b7...15b4c1`; celo `0x8b6631...e1f3a0`; celo `0xfe19cb...b54d4d`; blast `0x59f210...4c84ea`; blast `0x5e994a...8dbf9a` | ⚠️ Unaudited |
| CarbonVortex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xba7d15...3c8f84`; ethereum `0xd241a7...be23ca` | ⚠️ Unaudited |
| CarbonVortex | unknown | project_anchor | own_supporting | 1 | ethereum | unit-231651 | 2 deployments: ethereum `0xc56eb3...b03fbc`; ethereum `0xd053dc...d79801` | ⚠️ Unaudited |
| CarbonVortex | unknown | project_anchor | own_supporting | 1 | sei | unit-231652 | 2 deployments: sei `0x4bbd9f...1b08a2`; sei `0x571520...eaf933` | ⚠️ Unaudited |
| CarbonVortex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xa4682a...eaf8d5`; base `0xb53f07...642a36` | ⚠️ Unaudited |
| CarbonVortex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x37a65d...7eec10`; celo `0xa15e32...01e562` | ⚠️ Unaudited |
| CarbonVortex | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-231643 | `0x6cd7f6...bc2fdc` | ⚠️ Unaudited |
| CarbonVortex | unknown | project_anchor | own_supporting | 1 | celo | unit-231656 | `0xd9d89e...764857` | ⚠️ Unaudited |
| CarbonVortex | unknown | project_anchor | own_supporting | 1 | blast | unit-231660 | 2 deployments: blast `0x0f5409...a9bdaa`; blast `0x30dd96...af39f0` | ⚠️ Unaudited |
| EtherToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc08294...2ce315`; ethereum `0xd76b5c...b746ae` | ⚠️ Unaudited |
| ExternalProtectionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xea4d66...61c27c`; ethereum `0xfd3166...2cad57` | ⚠️ Unaudited |
| ExternalRewardsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2a2a2b...a631e1`; ethereum `0x30cc28...c23b1e` | ⚠️ Unaudited |
| FeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4610fc...195445` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b869...06eb48` | ⚠️ Unaudited |
| LinkToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x514910...f986ca` | ⚠️ Unaudited |
| LiquidityProtection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x14d074...8ccfd5`; ethereum `0x633088...2b311a`; ethereum `0x843bd7...65d8e6`; ethereum `0x85cbbb...9001e5` | ⚠️ Unaudited |
| MasterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x649765...2bc373`; ethereum `0xf3b685...f10144` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x51aa24...e36317` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xe033be...dfe1cf` | ⚠️ Unaudited |
| NetworkSettings | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x51a6d0...1cebd1`; ethereum `0x83e181...09b14f` | ⚠️ Unaudited |
| NetworkSettings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x68e4f8...4ecd96`; ethereum `0x88d031...1e48ca` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0xa15e32...01e562`; blast `0xfe19cb...b54d4d` | ⚠️ Unaudited |
| PendingWithdrawals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0074f8...145f4a`; ethereum `0x5f8347...bb6acb`; ethereum `0xf59fd6...96958f` | ⚠️ Unaudited |
| PendingWithdrawals | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7f0506...bb92ce`; ethereum `0x857eb0...ba9b8a` | ⚠️ Unaudited |
| PoolCollection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x05e29f...c15bb8`; ethereum `0x395ed9...9d664b`; ethereum `0x5ce512...13a3d0`; ethereum `0x6f9124...9cb714`; ethereum `0xad3339...b813a7`; ethereum `0xb67d56...564c6c`; ethereum `0xb8d803...61da69`; ethereum `0xd2a572...d51558`; ethereum `0xd982e0...f642b4`; ethereum `0xde1b3c...d883e4`; ethereum `0xec9596...f261b3`; ethereum `0xf506b9...8f7ec7` | ⚠️ Unaudited |
| PoolMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1a1b00...66ee69`; ethereum `0x59340f...8a017d`; ethereum `0x85aa62...1d951d`; ethereum `0xc1c7ca...846219` | ⚠️ Unaudited |
| PoolMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x330ee7...4d198d`; ethereum `0x97cec0...e4a191` | ⚠️ Unaudited |
| PoolTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9e9129...8d9d5f`; ethereum `0xab4a0b...1f7108` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 21 deployments: ethereum `0x059d3d...2cf9a1`; ethereum `0x12388c...d118cb`; ethereum `0x642879...2f0034`; ethereum `0x8c05ea...ade636`; sei `0x45d2e2...5a7ac8`; sei `0x7fc12a...e17f06`; sei `0xcd8c6d...357772`; sei `0xdf1c3b...76b332`; sei `0xfea28d...fc23b5`; base `0x177dbf...36947e`; base `0xa15e32...01e562`; base `0xb0d399...cb4c26`; base `0xe033be...dfe1cf`; base `0xfe19cb...b54d4d`; celo `0x0f5409...a9bdaa`; celo `0x59f210...4c84ea`; celo `0xb2a2f1...3c9d2a`; celo `0xd0b82e...3bb921`; blast `0x8b6631...e1f3a0`; blast `0x8c05ea...ade636`; blast `0xe6d513...733611` | ⚠️ Unaudited |
| StakingRewardsClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6248e4...88af58` | ⚠️ Unaudited |
| StandardPoolConverterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc4a79...8126e6` | ⚠️ Unaudited |
| StandardRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9c0b29...78320d`; ethereum `0xa2647a...8a1947`; ethereum `0xe9f3bb...7a4b53` | ⚠️ Unaudited |
| StandardRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb0b958...00f372`; ethereum `0xdfe331...881f0d` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x31548b...6b2db0`; sei `0x63e353...c97525`; sei `0x8b6631...e1f3a0` | ⚠️ Unaudited |
| TransparentUpgradeableProxyImmutable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x41eeba...9488cb`; ethereum `0x9a1deb...a2296d` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60917e...2dadc4` | ⚠️ Unaudited |
| VortexAcrossBridge | unknown | project_anchor | own_supporting | 1 | blast | unit-231661 | 2 deployments: blast `0x31548b...6b2db0`; blast `0x63e353...c97525` | ⚠️ Unaudited |
| VortexBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8843f6...976748` | ⚠️ Unaudited |
| VortexOpStackBridge | unknown | project_anchor | own_supporting | 1 | celo | unit-231659 | 2 deployments: celo `0x753425...4d6aaf`; celo `0xd9c6f8...afacdb` | ⚠️ Unaudited |
| VortexStargateBridge | operational_periphery | project_anchor | own_supporting | 1 | sei | unit-231654 | `0x57cf0c...87ea05` | ⚠️ Unaudited |
| VortexStargateBridge | operational_periphery | project_anchor | own_supporting | 1 | base | unit-231662 | `0x773b75...b05119` | ⚠️ Unaudited |
| VortexWormholeBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x0f9df7...0f68e1` | ⚠️ Unaudited |
| Voucher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6b2f9...953997` | ⚠️ Unaudited |
| Voucher | unknown | project_anchor | own_supporting | 1 | sei | unit-231655 | 2 deployments: sei `0xa4682a...eaf8d5`; sei `0xb0d399...cb4c26` | ⚠️ Unaudited |
| Voucher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | `0xc7dd38...c5c55c` | ⚠️ Unaudited |
| Voucher | unknown | project_anchor | own_supporting | 1 | celo | unit-231658 | 2 deployments: celo `0x5bca33...b2482e`; celo `0x5e994a...8dbf9a` | ⚠️ Unaudited |
| WCELO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x773b75...b05119` | ⚠️ Unaudited |
| WETH9 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa...756cc2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (113)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x3e67d217325a7298c3f80385e9f9eff2dc0f5de1) | unknown | project_anchor | own_supporting | 1 | ethereum | unit-231649 | 2 deployments: ethereum `0x0f5409...a9bdaa`; ethereum `0x3e67d2...0f5de1` | ❓ Unverified |
| Proxy (impl: 0x77e925eebcc9ecb03b03e1fb2b1906e7bcf3c20d) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x20216f...b31271`; celo `0x77e925...f3c20d` | ❓ Unverified |
| Proxy (impl: 0xa977879684eece2015ae879dc120c8a1c00718f7) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x4a0c4e...ad4130`; blast `0xa97787...0718f7` | ❓ Unverified |
| Proxy (impl: 0xafa374dfab26d61b789b69cfad7bb481ef558502) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x0677bf...e3ea3d`; celo `0xafa374...558502` | ❓ Unverified |
| Proxy (impl: 0xbbaff3bf6ec4c15992c0fb37f12491fd62c5b496) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x661987...29ed3a`; sei `0xbbaff3...c5b496` | ❓ Unverified |
| Proxy (impl: 0xbca03b0b918bcdc78c3111ee242c7fec73e11669) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x31548b...6b2db0`; base `0xbca03b...e11669` | ❓ Unverified |
| Proxy (impl: 0xe92fd7a55f37cc175aae2e0a13bf401120fe5bcc) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x185340...04fa82`; celo `0xe92fd7...fe5bcc` | ❓ Unverified |
| Proxy (impl: 0xe97749fd20909213e287e6f39a72568edd40c899) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x94a04b...ad022c`; base `0xe97749...40c899` | ❓ Unverified |
| Proxy (impl: 0xf067013fefe758f179689bebefce8d2fac1f9829) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0xc56eb3...b03fbc`; sei `0xf06701...1f9829` | ❓ Unverified |
| Proxy (impl: 0xfea28d3a9994bc4e7851035764171a02c3fc23b5) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x37a65d...7eec10`; ethereum `0xfea28d...fc23b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x103607...25c031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x136593...412b89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x176707...9dde6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b5674...7263d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20bced...f4d8d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 1 | ethereum | unit-231648 | 2 deployments: ethereum `0x31548b...6b2db0`; ethereum `0x63e353...c97525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aafb6...874d13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231619 | `0x4e0178...faca13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231622 | `0x59f210...4c84ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b828a...997453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d883...f6c5ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e0dfd...ef7755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b6631...e1f3a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d634a...d3e639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x947766...892d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf5219...76e32c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca0907...6e9142` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd54fa...7467db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc7040...9646be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe19cb...b54d4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-231641 | `0x4a0c4e...ad4130` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-231642 | `0xa60a60...59409e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x177dbf...36947e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x253f62...1fdd10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x3e67d2...0f5de1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x3f086f...623435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x482b27...7845e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x4e0178...faca13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x5530eb...40b274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x5bca33...b2482e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x5e994a...8dbf9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x653e98...f232c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x6db97c...b71424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x773b75...b05119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x95fa9b...af5f23`; sei `0xb2a2f1...3c9d2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x9fac0f...2af35c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xaf5219...76e32c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xb4e1fc...9f807a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-231644 | `0xc56eb3...b03fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x19c6df...e21f6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20216f...b31271` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x253f62...1fdd10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37a65d...7eec10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ba67a...d5eee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4e0178...faca13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4f81e8...752f8b`; base `0x8e4965...59c063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51aa24...e36317` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5530eb...40b274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x59f210...4c84ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5bca33...b2482e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x661987...29ed3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6db97c...b71424`; base `0xd0b82e...3bb921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8b6631...e1f3a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94a63a...375a83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98d314...a25b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaeee7b...bf6f66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbbaff3...c5b496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc56eb3...b03fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcd8c6d...357772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeaa436...7a456c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x17e078...f32376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x2063a1...fecfd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x210760...abbe57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x27d59c...faf112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x30dd96...af39f0`; celo `0x8c05ea...ade636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x351b73...bf66e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3cbb34...bb9d0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x45d2e2...5a7ac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x45f7ea...ad8cf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4a0c4e...ad4130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4e0178...faca13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x653e98...f232c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6845b8...d23f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x70ff80...8dd1cf`; celo `0x75af20...e8a03e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x759db9...5d2352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8ce318...6ab749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9ceb88...a52341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9fac0f...2af35c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa4682a...eaf8d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0xb0d399...cb4c26`; celo `0xc7dd38...c5c55c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb4e1fc...9f807a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbca03b...e11669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbdfc7f...f5662f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xdf1c3b...76b332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe48166...1f1087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xee21c0...131d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf7c7d7...5709a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-231645 | `0x3f086f...623435` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-231646 | `0x5bca33...b2482e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x37a65d...7eec10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x45d2e2...5a7ac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x51aa24...e36317` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x571520...eaf933`; blast `0xc7dd38...c5c55c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x661987...29ed3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x759db9...5d2352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7fc12a...e17f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x94a63a...375a83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb0d399...cb4c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xdf1c3b...76b332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe033be...dfe1cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231638 | `0x3e67d2...0f5de1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231639 | `0x59f210...4c84ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231640 | `0x5bca33...b2482e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf) | PeckShield | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf) | PeckShield | Audit | 2024-05 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 3 | medium |
| [ChainSecurity_Carbon_Audit_Report.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/ChainSecurity_Carbon_Audit_Report.pdf) | ChainSecurity | Audit | 2023-04 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 4 | high |
| [PeckShield-Audit-Report-Carbon-v1.0.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Carbon-v1.0.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2737] PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf — no match: The report explicitly states 'this audit covers specifically the CarbonVortex contract' and lists it in the basic information table. No other contracts are named as in scope.
- [2738] PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf — matched: No explicit scope section; contracts extracted from findings targets and mentions.
- [2739] ChainSecurity_Carbon_Audit_Report.pdf — matched: Extracted from the audit report of Carbon by ChainSecurity. The scope section lists all files in contracts folder except helpers and fees. The main contracts are CarbonController, Voucher, MasterVault. Strategies, Pools, and MathEx are libraries/contracts referenced in findings.
- [2740] PeckShield-Audit-Report-Carbon-v1.0.pdf — matched: Audit report for Carbon protocol by PeckShield. Scope includes Strategies, CarbonController, and Voucher contracts. Audit date is April 4, 2023.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf | CarbonVortex | ambiguous — not counted | CarbonVortex (alternative) `0xc56eb3...b03fbc` — deployed 2026-05-14 17:31:23+03 — liveness: live (proxy_unit_reachable)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xd053dc...d79801` — deployed 2024-08-06 14:59:59+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xd9d89e...764857` — deployed 2026-05-14 18:14:42+03 — liveness: live (current_address_book_code)<br>0x5bca33… (alternative) `0x5bca33...b2482e` — liveness: live (current_address_book_code)<br>0x4a0c4e… (alternative) `0x4a0c4e...ad4130` — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x571520...eaf933` — deployed 2024-10-01 18:36:45+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x0f5409...a9bdaa` — deployed 2024-09-30 18:17:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf | CarbonPOL | unmatched — not counted | — | Target in findings PVE-001, PVE-002 | no |
| PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf | CarbonVortex | ambiguous — not counted | CarbonVortex (alternative) `0xc56eb3...b03fbc` — deployed 2026-05-14 17:31:23+03 — liveness: live (proxy_unit_reachable)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xd053dc...d79801` — deployed 2024-08-06 14:59:59+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xd9d89e...764857` — deployed 2026-05-14 18:14:42+03 — liveness: live (current_address_book_code)<br>0x5bca33… (alternative) `0x5bca33...b2482e` — liveness: live (current_address_book_code)<br>0x4a0c4e… (alternative) `0x4a0c4e...ad4130` — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x571520...eaf933` — deployed 2024-10-01 18:36:45+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x0f5409...a9bdaa` — deployed 2024-09-30 18:17:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf | Strategies | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf | CarbonController | own proxy deployment | OptimizedTransparentUpgradeableProxy (proxy) (selected) `0xe48166...1f1087` — deployed 2024-05-27 19:01:13+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xc537e8...ea45e1` — deployed 2023-04-20 14:20:59+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x661987...29ed3a` — deployed 2024-07-24 12:26:24+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-05-27 was 2d from audit; next candidate 56d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Carbon_Audit_Report.pdf | CarbonController | own proxy deployment | OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xe48166...1f1087` — deployed 2024-05-27 19:01:13+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (selected) `0xc537e8...ea45e1` — deployed 2023-04-20 14:20:59+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x661987...29ed3a` — deployed 2024-07-24 12:26:24+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-04-20 was 10d from audit; next candidate 413d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Carbon_Audit_Report.pdf | Voucher | own proxy deployment | OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xa4682a...eaf8d5` — deployed 2024-05-27 18:59:45+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (selected) `0x3660f0...8f554e` — deployed 2023-04-20 13:31:23+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x5e994a...8dbf9a` — deployed 2024-07-24 12:26:04+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-04-20 was 10d from audit; next candidate 413d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Carbon_Audit_Report.pdf | MasterVault | unmatched — not counted | — | described in scope and system overview | no |
| ChainSecurity_Carbon_Audit_Report.pdf | Strategies | unmatched — not counted | — | referenced in findings and notes | no |
| ChainSecurity_Carbon_Audit_Report.pdf | Pools | unmatched — not counted | — | referenced in findings | no |
| ChainSecurity_Carbon_Audit_Report.pdf | MathEx | unmatched — not counted | — | referenced in findings | no |
| PeckShield-Audit-Report-Carbon-v1.0.pdf | Strategies | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-004, PVE-005 | no |
| PeckShield-Audit-Report-Carbon-v1.0.pdf | CarbonController | own proxy deployment | OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xe48166...1f1087` — deployed 2024-05-27 19:01:13+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (selected) `0xc537e8...ea45e1` — deployed 2023-04-20 14:20:59+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x661987...29ed3a` — deployed 2024-07-24 12:26:24+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-04-20 was 16d from audit; next candidate 419d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Carbon-v1.0.pdf | Voucher | own proxy deployment | OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xa4682a...eaf8d5` — deployed 2024-05-27 18:59:45+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (selected) `0x3660f0...8f554e` — deployed 2023-04-20 13:31:23+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x5e994a...8dbf9a` — deployed 2024-07-24 12:26:04+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-04-20 was 16d from audit; next candidate 419d; normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | `0x51aa24...e36317` | CarbonController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc56eb3...b03fbc` | CarbonVortex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x4bbd9f...1b08a2` | CarbonVortex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xd9d89e...764857` | CarbonVortex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x0f5409...a9bdaa` | CarbonVortex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x31548b...6b2db0` | VortexAcrossBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x753425...4d6aaf` | VortexOpStackBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x57cf0c...87ea05` | VortexStargateBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x773b75...b05119` | VortexStargateBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0xa4682a...eaf8d5` | Voucher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x5bca33...b2482e` | Voucher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 66 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 113 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (5 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 7 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: temporal_name=5

Zero-match audit list:

- [2737] PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf

Fork inheritance lineage and inherited audits are included when available.
