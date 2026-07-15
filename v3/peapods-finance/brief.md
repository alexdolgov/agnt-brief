# Agentic Audit Brief: Peapods Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Peapods Finance (`peapods-finance`)
- Website: [https://peapods.finance](https://peapods.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, ethereum, mode, sonic
- Contract surface: 171 unique implementations (426 raw deployments)
- Coverage basis: 1/8 confirmed own live verified implementations (12.5%); conservative 12.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,268,642.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Peapods Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across arbitrum, base, berachain, ethereum, mode, sonic. Structural roles: 7 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (7), supporting (1)
- Contract kinds: contract (8)
- Detected standards: erc20 (1)
- Frameworks: uniswap-v3 (2), openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

2 of 13 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

**AlgebraPool** (`0x44cc8b...584a77`, chain 42161)
Origin: swapbased (`0x3ce99e...eae8c9`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AlgebraPool** (`0xcf7145...7bd6d5`, chain 42161)
Origin: swapbased (`0x3ce99e...eae8c9`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x44c95b...b044a3`, chain 1)
- UnnamedContract (`0x9af2bf...482606`, chain 1)
- UnnamedContract (`0x2787d7...f529d6`, chain 8453)
- UnnamedContract (`0xb0a65b...17309e`, chain 8453)
- UnnamedContract (`0x23d177...f3f8b2`, chain 42161)
- AlgebraPool (`0x54f0b2...1b9243`, chain 34443)
- CLPool (`0xd53398...98c37e`, chain 8453)
- PEAS (`0x02f928...2df875`, chain 1)
- UniswapV3Pool (`0x526800...c56b36`, chain 1)
- UniswapV3Pool (`0xae7505...d79160`, chain 1)
- UniswapV3Pool (`0x5abdb2...f5a72b`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/8 (12.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 158 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 30
- Confirmed-live implementations: 13 of 171 unique; 158 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/76
- Verified + Unaudited implementations: 75
- Verified by bytecode match: 0
- Unverified implementations: 95
- Unique implementations: 171
- Raw deployments: 426
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 1 | 1.3% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PEAS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251168 | `0x02f928...2df875` | ✅ Audited |

### ⚠️ Verified + Unaudited (75)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AerodromeDexAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x04595a...dfce35`; base `0xb9f885...1ff944`; base `0xf24f39...f9ca0f` | ⚠️ Unaudited |
| AlgebraPool | core_logic | project_anchor | own_supporting | 0 | mode | unit-251173 | `0x54f0b2...1b9243` | ⚠️ Unaudited |
| AlgebraPool | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-251175 | `0x44cc8b...584a77` | ⚠️ Unaudited |
| AlgebraPool | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-251176 | `0xcf7145...7bd6d5` | ⚠️ Unaudited |
| ArbitragePP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x26947f...944265`; ethereum `0x8a581e...7e016b` | ⚠️ Unaudited |
| aspTKNMinimalOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 21 deployments: ethereum `0x40b7b0...d275e2`; ethereum `0x62f95a...f8c621`; ethereum `0x7b68b5...30adbe`; ethereum `0x938afc...4ef794`; ethereum `0xa4bc13...5d827b`; sonic `0x26134a...7dadf9`; sonic `0x37a7fc...ee0764`; sonic `0x46f081...9f33d0`; base `0x25b9dd...0fdb8d`; base `0x39d284...58d2fb`; base `0xa24b7c...a068e2`; base `0xc2b0a3...e62374`; base `0xeed5e9...2d0a67`; mode `0xf29778...97d168`; arbitrum `0x5c9715...98305e`; arbitrum `0x73a97a...403c1c`; arbitrum `0x9c2ef6...256aa2`; arbitrum `0xcd64e9...213f5e`; arbitrum `0xd8eea1...d6759b`; berachain `0x903016...4fe622`; berachain `0xc2d75b...45e140` | ⚠️ Unaudited |
| AutoCompoundingPodLpFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xeec282...03faea` | ⚠️ Unaudited |
| CamelotDexAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: mode `0x77683b...af7f57`; mode `0x97be1f...b65a36`; mode `0xc38d42...56198f`; arbitrum `0x22dc5b...1aad7a`; arbitrum `0x83eccb...823f94`; arbitrum `0xac9d76...ceb10e` | ⚠️ Unaudited |
| CamelotV3SinglePriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48b50c...3888a1` | ⚠️ Unaudited |
| CLPool | core_logic | project_anchor | own_supporting | 0 | base | unit-251180 | `0xd53398...98c37e` | ⚠️ Unaudited |
| DIAMultiFeedConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b55d5...d4aa18` | ⚠️ Unaudited |
| DIAOracleV2SinglePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: ethereum `0xc815d4...e4466e`; sonic `0xa335cc...9df131`; sonic `0xb80510...a82d74`; base `0x420180...cbe179`; arbitrum `0x0d71e8...ac6653`; berachain `0x486d45...17d276` | ⚠️ Unaudited |
| ERC20Bridgeable | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x02f928...2df875`; base `0x02f928...2df875`; mode `0x02f928...2df875`; arbitrum `0x02f928...2df875`; berachain `0x02f928...2df875` | ⚠️ Unaudited |
| EulerFlashSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 3 deployments: berachain `0x17b55d...a5b610`; berachain `0x93121a...a567bc`; berachain `0xeec282...03faea` | ⚠️ Unaudited |
| HydrexV3SinglePriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x429fff...3ee7e0`; base `0x5d8290...2777f8`; base `0x87f6a1...4905ee`; base `0xa89283...5f2ca0` | ⚠️ Unaudited |
| IndexManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x0bb39b...b4ae6b`; ethereum `0x6effcf...b7666e`; ethereum `0xdb9dc6...4a3fa5`; sonic `0x301846...9660fd`; sonic `0x9e054f...166060`; base `0x0bb39b...b4ae6b`; base `0x556059...94ec30`; mode `0x0bb39b...b4ae6b`; mode `0x93121a...a567bc`; arbitrum `0x0bb39b...b4ae6b`; arbitrum `0x64511c...b14fd8`; berachain `0xc9260c...932f01` | ⚠️ Unaudited |
| IndexUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 23 deployments: ethereum `0x2bcca7...a1054c`; ethereum `0x521e24...bd03cc`; ethereum `0x88b6db...87d9b7`; ethereum `0x9a103a...7b8db6`; sonic `0x242325...0f5eca`; sonic `0x37e845...7a8390`; sonic `0xf29778...97d168`; base `0x37cd1f...659dde`; base `0x490b03...15826d`; base `0x59b730...a0a962`; base `0xa15cf7...5f0042`; mode `0x9e3417...e3400c`; mode `0x9e9350...efdbe6`; arbitrum `0x19f6bd...96724d`; arbitrum `0x1f422d...c9190b`; arbitrum `0x25648a...e83d2e`; arbitrum `0x36c5e5...e1ad83`; arbitrum `0x3e462a...e06c19`; arbitrum `0x4b6d3f...745e0d`; arbitrum `0x5c5c28...65f0c0`; arbitrum `0xa06439...350c10`; arbitrum `0xbb6f81...252bed`; berachain `0x40bd82...386717` | ⚠️ Unaudited |
| IndirectOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x14dec8...4e4965`; sonic `0x7d8c80...17755e`; base `0x14dec8...4e4965`; mode `0x14dec8...4e4965`; arbitrum `0x14dec8...4e4965`; berachain `0x14dec8...4e4965` | ⚠️ Unaudited |
| LendingAssetVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3717e3...e873aa` | ⚠️ Unaudited |
| LendingAssetVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 11 deployments: ethereum `0xa811d1...191875`; ethereum `0xbab29f...7912c6`; sonic `0x6786d3...b7a8ec`; sonic `0x898cc8...21d55c`; sonic `0xbf9d21...546855`; base `0x3cc2a9...875cfc`; base `0x48f39f...b7c31e`; mode `0xb7d368...c2b0a3`; arbitrum `0xa9a92c...e1c95e`; arbitrum `0xf252b0...3bda3a`; berachain `0x37cd1f...659dde` | ⚠️ Unaudited |
| LeverageFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x43b9d9...1939d3`; sonic `0xf2db5e...800f96`; base `0x459b54...f38d5f`; arbitrum `0x7225d7...4a1d2f`; berachain `0xe50d25...c87a72` | ⚠️ Unaudited |
| LeverageFeeProcessor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0xff673a...c8ae2b`; sonic `0xedd48a...d55544`; base `0x9698b9...097ae9`; arbitrum `0x97bbe6...beccb3` | ⚠️ Unaudited |
| LeverageManager | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x4e1086...ee403c`; ethereum `0x4e6ef3...c62d0b`; ethereum `0x8c3837...47f90e` | ⚠️ Unaudited |
| LeverageManager | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sonic | n/a | 3 deployments: sonic `0x0c4b19...118b61`; sonic `0x3c12e5...cc5f98`; sonic `0x588bf5...6faa35` | ⚠️ Unaudited |
| LeverageManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x138ce9...49c629`; sonic `0x550382...247cf6`; base `0x002373...fdc6c7`; arbitrum `0x55af47...40bf76` | ⚠️ Unaudited |
| LeverageManager | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x31e355...6ab82d`; base `0x62eadf...b05f2a`; base `0x817e65...a40edb` | ⚠️ Unaudited |
| LeverageManager | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x3f2257...e8e2b0`; arbitrum `0x77214f...31900b`; arbitrum `0xe89c47...a3ac46` | ⚠️ Unaudited |
| LeverageManager | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | berachain | n/a | 3 deployments: berachain `0x0ff519...bf5a69`; berachain `0x4cc453...13536f`; berachain `0x718964...2461a5` | ⚠️ Unaudited |
| LeveragePositions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf290d5...9beb16` | ⚠️ Unaudited |
| MyOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x801642...d9b433` | ⚠️ Unaudited |
| PodFlashMintSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: ethereum `0x12aa48...1a1eef`; ethereum `0x4c86a6...344350`; ethereum `0xc73c64...eda601`; sonic `0xacee05...a01ff5`; sonic `0xb2a28e...7679de`; base `0x1b59d4...af84a0`; base `0x67be5a...c101fd`; base `0xf59c79...4bcd1a`; arbitrum `0x0d9a03...cc83c7`; arbitrum `0x8cf3b7...6347e9`; berachain `0xab3104...a5c682` | ⚠️ Unaudited |
| PodUnwrapLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: ethereum `0xace71c...959d74`; sonic `0x02b7d3...9494b5`; base `0x76d6bb...6619c2`; arbitrum `0xcb19e5...ca8a3a`; berachain `0x4e4766...31bbac` | ⚠️ Unaudited |
| PodVaultUtility | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: ethereum `0x7f782f...0afeef`; ethereum `0xebebc4...159910`; sonic `0x08bafc...1de253`; base `0xaee454...757a5e`; arbitrum `0x06386d...440fc9` | ⚠️ Unaudited |
| ProtocolFeeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 11 deployments: ethereum `0x7d544d...1e949b`; ethereum `0x868797...11a5ff`; sonic `0x0d7a0f...9bc24e`; sonic `0xcb1843...d5bf7d`; base `0x45c4ad...572611`; base `0xabcafc...affcdb`; mode `0x9f8c3e...c92355`; mode `0xdbac33...9aa00f`; arbitrum `0x98bb5a...59fe39`; arbitrum `0xeebb4b...054ae2`; berachain `0x94a006...51d44e` | ⚠️ Unaudited |
| ProtocolFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: ethereum `0x26f6bf...a216c7`; ethereum `0xc2b0a3...e62374`; sonic `0x27d809...010f8a`; sonic `0xabcafc...affcdb`; base `0x301846...9660fd`; base `0x83eccb...823f94`; mode `0xc1081b...b67476`; mode `0xeaf725...e1955f`; arbitrum `0x2492fd...4ec8a2`; arbitrum `0xbf9d21...546855`; berachain `0xc0b947...c6ce10` | ⚠️ Unaudited |
| RewardsWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: ethereum `0x5cdad2...d14eea`; ethereum `0xec0eb4...e9450f`; sonic `0x1f422d...c9190b`; sonic `0x36c5e5...e1ad83`; base `0x0d7a0f...9bc24e`; base `0xfa9d58...e0296f`; mode `0x635f5b...11569a`; mode `0xdb9dc6...4a3fa5`; arbitrum `0x14940e...9396ba`; arbitrum `0xac4050...93cbf1`; berachain `0x4dd1a2...ae0ba0` | ⚠️ Unaudited |
| ShadowDexAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x4a7687...7dcc72`; sonic `0x515e7f...10a49b`; sonic `0x652ab0...a53ffc` | ⚠️ Unaudited |
| StakingPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x28cd26...cb0257`; ethereum `0x7c9c6c...88f91b` | ⚠️ Unaudited |
| StakingPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x006076...7114cc`; sonic `0x229874...272919` | ⚠️ Unaudited |
| StakingPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x9f8c3e...c92355`; sonic `0xeaf725...e1955f` | ⚠️ Unaudited |
| StakingPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x045769...3b63cf`; base `0x8a581e...7e016b` | ⚠️ Unaudited |
| StakingPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xe50d25...c87a72` | ⚠️ Unaudited |
| StakingPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1f8d9f...c31988`; arbitrum `0x211c85...134945` | ⚠️ Unaudited |
| StakingPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x0f7650...44471d`; berachain `0xa4f43c...e63044` | ⚠️ Unaudited |
| StakingVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0588b7...3fba45`; ethereum `0xb5482f...ba8b9b`; ethereum `0xdab175...7b1ecc` | ⚠️ Unaudited |
| TokenRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0a7734...0618cc`; ethereum `0x2d2d83...e0ca31` | ⚠️ Unaudited |
| TokenRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x635f5b...11569a`; sonic `0xc38d42...56198f` | ⚠️ Unaudited |
| TokenRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xb8f9e6...bec010`; sonic `0xc9ec2a...4a2fb0` | ⚠️ Unaudited |
| TokenRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7189b9...7573f5`; base `0xbd91d0...dde50e` | ⚠️ Unaudited |
| TokenRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 4 deployments: ethereum `0xba72a2...4a85e2`; base `0xaa2adb...a32a06`; mode `0x290e6d...787f7a`; arbitrum `0x37247d...3e4aae` | ⚠️ Unaudited |
| TokenRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xe74397...0005b1`; arbitrum `0xfcd30d...ae7fd8` | ⚠️ Unaudited |
| TokenRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x0663ab...6f38eb`; berachain `0x6116b4...952b38` | ⚠️ Unaudited |
| UniswapDexAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf05ef8...1727cd` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251170 | `0x526800...c56b36` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251172 | `0xae7505...d79160` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | base | unit-251178 | `0x5abdb2...f5a72b` | ⚠️ Unaudited |
| UnweightedIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x290e6d...787f7a`; ethereum `0x3c56ca...f5451c` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x21053b...e7a06e`; mode `0x30a1f8...bdb3a3`; mode `0x515e7f...10a49b` | ⚠️ Unaudited |
| V2ReservesCamelot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xec8a49...3eeaf8` | ⚠️ Unaudited |
| V3Locker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4abbe...003fba` | ⚠️ Unaudited |
| V3TwapAerodromeUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x024ff4...d5229d` | ⚠️ Unaudited |
| V3TwapCamelotUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: mode `0x948e2e...18ad48`; arbitrum `0x0b9d4c...60c32f`; arbitrum `0x88b6db...87d9b7`; arbitrum `0xe8869f...e11458` | ⚠️ Unaudited |
| V3TwapKimUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x0b9d4c...60c32f`; mode `0x17b55d...a5b610`; mode `0x903016...4fe622` | ⚠️ Unaudited |
| V3TwapKodiakUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0b025c...29adcc` | ⚠️ Unaudited |
| V3TwapShadowUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x041482...3a3f52`; sonic `0x694a36...f36635` | ⚠️ Unaudited |
| V3TwapUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x024ff4...d5229d`; ethereum `0x9de8aa...504533`; sonic `0xce4ab2...eb6b6e`; base `0x0b9d4c...60c32f`; base `0x920093...c9bdc0`; arbitrum `0x024ff4...d5229d`; arbitrum `0x948e2e...18ad48`; arbitrum `0xadb070...49466b` | ⚠️ Unaudited |
| VariableInterestRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 15 deployments: ethereum `0x4e8d33...28e888`; ethereum `0x638050...f8acd0`; ethereum `0x823e88...dfded0`; ethereum `0x8cec61...79bc27`; ethereum `0xa8afef...fe9c94`; base `0x11c96e...de5064`; base `0x4777f8...8df291`; base `0x5288e7...1ef07b`; base `0x544361...000a81`; base `0xb38177...450869`; arbitrum `0x28da3f...f0519d`; arbitrum `0x41799b...a48310`; arbitrum `0x769707...6ea044`; arbitrum `0x8b6018...fde9ca`; arbitrum `0xf0f08c...a8923a` | ⚠️ Unaudited |
| WeightedIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1e4567...2f2d8a`; ethereum `0x50d2ac...87491a` | ⚠️ Unaudited |
| WeightedIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x3c56ca...f5451c`; sonic `0xe4aff4...37bd3e` | ⚠️ Unaudited |
| WeightedIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x4081ba...b433d8`; sonic `0x7ca355...b9e569` | ⚠️ Unaudited |
| WeightedIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 35 deployments: ethereum `0x027ce4...f9b1c7`; ethereum `0x21eadf...ce8685`; ethereum `0x2556d7...0c0200`; ethereum `0x260e50...33b3a3`; ethereum `0x294067...9c324a`; ethereum `0x35e828...db4979`; ethereum `0x515e7f...10a49b`; ethereum `0x60f8bd...d2faaa`; ethereum `0x6d0ac9...39dab0`; ethereum `0x88e08a...2d1ca4`; ethereum `0xbe0eb5...87da55`; ethereum `0xc38d42...56198f`; ethereum `0xcd742f...ef5161`; ethereum `0xd41f97...6cd359`; ethereum `0xd75175...42b62d`; base `0x016c3f...2e02d0`; base `0x252dae...55ca3e`; base `0x4edabe...b727a6`; base `0x52c2cf...9ca0ac`; base `0x54ddb5...a60fd5`; base `0x6786d3...b7a8ec`; base `0xd1a4d1...296d5b`; base `0xe04257...a796d8`; mode `0x064efc...34f855`; mode `0xfe6d4d...1d0380`; arbitrum `0x04595a...dfce35`; arbitrum `0x185127...c09fb7`; arbitrum `0x288e94...c31f52`; arbitrum `0x491393...763d32`; arbitrum `0x4cf859...e24433`; arbitrum `0x5288e7...1ef07b`; arbitrum `0x60dc09...4a35ab`; arbitrum `0x6116b4...952b38`; arbitrum `0xce4ab2...eb6b6e`; arbitrum `0xf38009...e7e625` | ⚠️ Unaudited |
| WeightedIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x74e7cb...9a0e13`; base `0xb11fe7...b2c3fd` | ⚠️ Unaudited |
| WeightedIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xce354a...07bebd`; arbitrum `0xe519b7...fe6f50` | ⚠️ Unaudited |
| WeightedIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x4f325f...aa0320`; berachain `0xc96a6e...df3a4f` | ⚠️ Unaudited |
| WeightedIndexFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x1a3f5e...48b5cd`; sonic `0x983853...e2e971`; sonic `0xeebb4b...054ae2`; base `0x389ac6...5eee89`; mode `0x317531...8e2595`; arbitrum `0xae2cb5...46985c`; berachain `0xbd6e75...7ea680` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (95)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0xc96a6e07e044b70bb4d672f8737a7cbb1fdf3a4f) | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sonic | n/a | 3 deployments: sonic `0x4f325f...aa0320`; sonic `0xa4f43c...e63044`; sonic `0xc96a6e...df3a4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c4b19...118b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e0f52...d5c6fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x120109...8832d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x147946...571d77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1686b6...8ffc7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f422d...c9190b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24df48...6c71cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27d809...010f8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251169 | `0x44c95b...b044a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45c4ad...572611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48b50c...3888a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a7687...7dcc72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50e6f9...85301d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55af47...40bf76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6974a9...08ab8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7581f7...9f37ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84e4b1...42a1d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88c6ee...df3db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9acabc...a9d9d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251171 | `0x9af2bf...482606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb58556...d33c96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfb4ca...60f75c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc58941...e2cb7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb5cc2...1fd598` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb2d4c...ff3ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2315f...0361f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0f7650...44471d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x182ddd...bc5088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1ce46d...b4e8f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x21eadf...ce8685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x26947f...944265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x294067...9c324a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2d2d83...e0ca31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4dd1a2...ae0ba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x66d39b...daf291` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x87b05f...776cfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x87caed...46bacd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8e9b4d...4eeb4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa3d59c...9bb656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa922ad...d9c6dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbde78e...7f44f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc4ba49...1ae039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xef6ca1...601734` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf79e97...c598bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfc4c95...137ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x074686...db649a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d05d3...265a51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0fc6ca...6a608d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x14be87...1c853b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x264509...b96ed3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-251177 | `0x2787d7...f529d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x336836...35d16b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x363c8a...4e75fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37e845...7a8390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x50e6f9...85301d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x56427d...eb2c95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x62603f...34668c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x652ab0...a53ffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x667487...327e37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x694a36...f36635` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7b0079...125714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x87875d...d958c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88f19d...1625ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x915b8f...fb2268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x929f65...07eddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaad319...e3824c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac4050...93cbf1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-251179 | `0xb0a65b...17309e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc97938...253fb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcd8a57...a55797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf0de99...4a9750` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xbf9d21...546855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x027ce4...f9b1c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08bafc...1de253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17b55d...a5b610` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x182ddd...bc5088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x186dfe...3c2f80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251174 | `0x23d177...f3f8b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3a1bf8...53dd98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x700bad...c2d0cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8afee0...002caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb56fce...7b314f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2810e...55d24c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc91104...65fc6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdeb779...ed83d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4abbe...003fba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe7caed...dfc805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf79e47...1dd261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc4c95...137ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0ada7a...a13ed6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0d9d37...57b0cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x31e355...6ab82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4c7378...0ddc21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa415a0...957cdf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [sourcehat.com/audits/PeapodsFinance](https://sourcehat.com/audits/PeapodsFinance) | SourceHat | Audit | 2023-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 9 | n/a |
| [spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2FNepD2vC6ydmdzIX0TlkF%2FyAudit_report%20(2).pdf) | yAudit | Audit | 2024-10 | aging | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2FhIIhvk8ktnP28clIIAls%2FPeapods_Report.pdf) | SourceHat | Audit | 2024-11 | aging | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2F1H0oxy7m5JgiUvW4syJW%2FPeapods-security-review_2024-11-16%20(2).pdf) | SourceHat | Audit | 2024-12 | aging | Direct | n/a | matched | 1 | 0 | 0 | 53 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2198] sourcehat.com/audits/PeapodsFinance — matched: No reason recorded
- [2199] spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf — no match: No reason recorded
- [2200] spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf — no match: No reason recorded
- [2201] spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| sourcehat.com/audits/PeapodsFinance | IndexUtils | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | PEAS | own contract | PEAS (selected) `0x02f928...2df875` — deployed 2023-12-12 22:06:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/PeapodsFinance | ProtocolFeeRouter | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | ProtocolFees | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | StakingPoolToken | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | TokenRewards | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | UnweightedIndex | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | V3Locker | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | V3TwapUtilities | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | WeightedIndex | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | AutoCompoundingPodLp | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | AutoCompoundingPodLpFactory | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | BalancerFlashSource | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | ChainlinkSinglePriceOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | ConversionFactorPTKN | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | ConversionFactorSPTKN | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | FlashSourceBase | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | FraxlendPair | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | FraxlendPairAccessControl | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | FraxlendPairCore | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | LendingAssetVault | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | LeverageManager | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | LeverageManagerAccessControl | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | LeveragePositionCustodian | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | LeveragePositions | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | PodFlashSource | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | UniswapV3FlashSource | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | UniswapV3SinglePriceOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | VaultAccount | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | VotingPool | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | aspTKNMinimalOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | spTKNMinimalOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | AutoCompoundingPodLP | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | AutoCompoundingPodLp | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | ChainlinkSinglePriceOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | DecentralizedIndex | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | FraxlendPair | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | FraxlendPairCore | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | IndexUtils | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | LendingAssetVault | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | LeverageManager | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | PodFlashSource | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | StakingPoolToken | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | TokenRewards | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | UniswapDexAdapter | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | UniswapV3SinglePriceOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | V3AerodromeUtilities | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | V3TwapUtilities | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | VariableInterestRate | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | VotingPool | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | WeightedIndex | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | Zapper | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | aspTKNMinimalOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | spTKNMinimalOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | AerodromeCommands | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | AerodromeDexAdapter | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | AutoCompoundingPodLp | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | AutoCompoundingPodLpFactory | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | BalancerFlashSource | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | BokkyPooBahsDateTimeLibrary | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | BulkPodYieldProcess | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | CamelotDexAdapter | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | ChainlinkSinglePriceOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | ConversionFactorPTKN | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | ConversionFactorSPTKN | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | DIAOracleV2SinglePriceOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | DecentralizedIndex | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | ERC20Bridgeable | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | FlashSourceBase | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | FullMath | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | IndexManager | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | IndexUtils | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | LendingAssetVault | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | LendingAssetVaultFactory | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | LeverageManager | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | LeverageManagerAccessControl | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | LeveragePositionCustodian | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | LeveragePositions | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | PEAS | own contract | PEAS (selected) `0x02f928...2df875` — deployed 2023-12-12 22:06:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | PodFlashSource | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | PoolAddress | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | PoolAddressAlgebra | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | PoolAddressKimMode | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | PoolAddressSlipstream | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | ProtocolFeeRouter | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | ProtocolFees | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | RewardsWhitelist | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | StakingPoolToken | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | TickMath | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | TokenBridge | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | TokenRewards | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | TokenRouter | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | UniswapDexAdapter | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | UniswapV3FlashSource | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | UniswapV3SinglePriceOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | V2ReservesCamelot | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | V2ReservesUniswap | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | V3Locker | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | V3TwapAerodromeUtilities | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | V3TwapCamelotUtilities | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | V3TwapKimUtilities | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | V3TwapUtilities | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | VaultAccount | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | VotingPool | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | WeightedIndex | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | Zapper | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | aspTKNMinimalOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | spTKNMinimalOracle | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mode | `0x54f0b2...1b9243` | AlgebraPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x44cc8b...584a77` | AlgebraPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcf7145...7bd6d5` | AlgebraPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd53398...98c37e` | CLPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 70 |
| upstream | 3 |
| standard_library | 1 |
| needs_review | 97 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 106 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=2

Zero-match audit list:

- [2199] spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf
- [2200] spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
