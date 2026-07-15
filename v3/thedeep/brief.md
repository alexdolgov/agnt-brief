# Agentic Audit Brief: TheDeep

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: TheDeep (`thedeep`)
- Website: [https://app.thedeep.ink/](https://app.thedeep.ink/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bsc, celo, chain-763373, ink, polygon
- Contract surface: 214 unique implementations (285 raw deployments)
- Coverage basis: 1/16 confirmed own live verified implementations (6.3%); conservative 6.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $6,543,580.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for TheDeep. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across base, bsc, celo, chain-763373, ink, polygon. Structural roles: 13 unclassified, 5 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: unclassified (13), core (5)
- Contract kinds: contract (18)
- Detected standards: ownable (2)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 25 contracts are derived from known codebases. 25 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- deep_vault / deployer (`0xcbd1f7...36e3e8`, chain 57073)
- deep_vault / depositGuard (`0x51339a...4fed93`, chain 57073)
- deep_vault / Pancakeswap / deployer (`0x05cc3c...bd5f12`, chain 56)
- deep_vault / Pancakeswap / deployer (`0x7d11de...76bfee`, chain 8453)
- deep_vault / Pancakeswap / depositGuard (`0x16edb1...348ef8`, chain 56)
- deep_vault / Pancakeswap / depositGuard (`0xfa196a...e5c234`, chain 8453)
- deep_vault / Pancakeswap / volatilityCheck (`0x2454e7...74359b`, chain 56)
- deep_vault / Pancakeswap / volatilityCheck (`0xeb8be5...42b5df`, chain 8453)
- deep_vault / Ubeswap / volatilityCheck (`0x178369...3000b3`, chain 42220)
- deep_vault / Uniswap V3 / deployer (`0x0768a7...2236ea`, chain 137)
- deep_vault / Uniswap V3 / deployer (`0xfacd9c...429a47`, chain 42220)
- deep_vault / Uniswap V3 / depositGuard (`0xec89a8...6712b3`, chain 8453)
- deep_vault / Uniswap V3 / volatilityCheck (`0xe83a69...33e8fc`, chain 137)
- deep_vault / Uniswap V3 / volatilityCheck (`0xe14209...5dbedd`, chain 8453)
- deep_vault / Uniswap V3 / volatilityCheck (`0xc9dcd7...53bb42`, chain 42220)
- deep_vault / volatilityCheck (`0x698e9f...9ceed0`, chain 57073)
- deep_velodrome_vault / Aerodrome / depositGuard (`0x4a094b...0f98c2`, chain 8453)
- deep_velodrome_vault / Aerodrome / volatilityCheck (`0xe00295...ab76f7`, chain 8453)
- deep_velodrome_vault / AerodromeV2 / depositGuard (`0xcde730...054b87`, chain 8453)
- deep_velodrome_vault / depositGuard (`0xe6d639...7657d1`, chain 57073)
- deep_velodrome_vault / volatilityCheck (`0xd3db08...947894`, chain 42220)
- ICHIVaultDepositGuard (`0x2b8ca8...76d4c6`, chain 137)
- ICHIVaultDepositGuard (`0x238394...4fbed8`, chain 42220)
- ICHIVaultDepositGuard (`0x62fd18...4774c2`, chain 42220)
- ICHIVaultDepositGuardExtendedForMFD (`0x141db8...1d9f25`, chain 42220)

## Contract Surface Quality

- Logic-topography rows: 18; live-surface rows included: 18 (16 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 25/35 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/16 (6.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 25 own, 10 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 179 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 17
- Confirmed-live implementations: 25 of 214 unique; 189 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/41
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 173
- Unique implementations: 214
- Raw deployments: 285
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 1 | 2.4% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ICHIVaultDepositGuard | core_logic | project_anchor | own_supporting | 0 | celo | unit-394038 | `0x238394...4fbed8` | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AegisVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 4 deployments: celo `0x289dc4...9df1cd`; celo `0x3586c6...ffa98f`; celo `0x8d6cdb...a9fc0d`; celo `0xf36abd...b851b6` | ⚠️ Unaudited |
| AegisVaultERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 4 deployments: celo `0x16dfbb...9fde29`; celo `0xd20feb...1f39a6`; celo `0xeecb7b...d9eb3c`; celo `0xf92ac7...dd3cdb` | ⚠️ Unaudited |
| AegisVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 4 deployments: celo `0x51a0d7...e57959`; celo `0xbeff79...34f6dd`; celo `0xe83a69...33e8fc`; celo `0xf39a4c...9b0298` | ⚠️ Unaudited |
| deep_vault / Pancakeswap / deployer | unknown | project_anchor | own_supporting | 0 | bsc | unit-394046 | `0x05cc3c...bd5f12` | ⚠️ Unaudited |
| deep_vault / Pancakeswap / deployer | unknown | project_anchor | own_supporting | 0 | base | unit-394061 | `0x7d11de...76bfee` | ⚠️ Unaudited |
| deep_vault / Pancakeswap / depositGuard | unknown | project_anchor | own_supporting | 0 | bsc | unit-394047 | `0x16edb1...348ef8` | ⚠️ Unaudited |
| deep_vault / Pancakeswap / depositGuard | unknown | project_anchor | own_supporting | 0 | base | unit-394067 | `0xfa196a...e5c234` | ⚠️ Unaudited |
| deep_vault / Pancakeswap / volatilityCheck | unknown | project_anchor | own_supporting | 0 | bsc | unit-394048 | `0x2454e7...74359b` | ⚠️ Unaudited |
| deep_vault / Uniswap V3 / deployer | unknown | project_anchor | own_supporting | 0 | polygon | unit-394033 | `0x0768a7...2236ea` | ⚠️ Unaudited |
| deep_vault / Uniswap V3 / deployer | unknown | project_anchor | own_supporting | 0 | celo | unit-394045 | `0xfacd9c...429a47` | ⚠️ Unaudited |
| deep_vault / Uniswap V3 / depositGuard | unknown | project_anchor | own_supporting | 0 | base | unit-394066 | `0xec89a8...6712b3` | ⚠️ Unaudited |
| deep_vault / Uniswap V3 / volatilityCheck | unknown | project_anchor | own_supporting | 0 | base | unit-394064 | `0xe14209...5dbedd` | ⚠️ Unaudited |
| deep_velodrome_vault / Aerodrome / depositGuard | unknown | project_anchor | own_supporting | 0 | base | unit-394059 | `0x4a094b...0f98c2` | ⚠️ Unaudited |
| deep_velodrome_vault / Aerodrome / volatilityCheck | unknown | project_anchor | own_supporting | 0 | base | unit-394063 | `0xe00295...ab76f7` | ⚠️ Unaudited |
| deep_velodrome_vault / AerodromeV2 / depositGuard | unknown | project_anchor | own_supporting | 0 | base | unit-394062 | `0xcde730...054b87` | ⚠️ Unaudited |
| ICHIVaultDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 9 deployments: polygon `0xd20feb...1f39a6`; base `0x065cb8...6ea031`; base `0x5507b5...98d8b7`; celo `0x544113...2756e1`; celo `0x561200...9fbd20`; celo `0xb78144...c8eb68`; celo `0xe3f26d...900dd4`; celo `0xfab743...7c068b`; celo `0xfbf389...607065` | ⚠️ Unaudited |
| ICHIVaultDepositGuard | core_logic | project_anchor | own_supporting | 0 | polygon | unit-394034 | `0x2b8ca8...76d4c6` | ⚠️ Unaudited |
| ICHIVaultDepositGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 7 deployments: polygon `0x7f659c...e3dc06`; polygon `0xeecb7b...d9eb3c`; polygon `0xfb6c43...bb4417`; base `0xbf38e4...599819`; base `0xe2381b...a31f26`; celo `0x4fa116...75a529`; celo `0xa19595...4d5a14` | ⚠️ Unaudited |
| ICHIVaultDepositGuard | core_logic | project_anchor | own_supporting | 0 | celo | unit-394039 | `0x62fd18...4774c2` | ⚠️ Unaudited |
| ICHIVaultDepositGuardExtendedForMFD | core_logic | project_anchor | own_supporting | 0 | celo | unit-394036 | `0x141db8...1d9f25` | ⚠️ Unaudited |
| ICHIVaultDepositGuardExtendedForMFD | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb066a0...9029c3` | ⚠️ Unaudited |
| ICHIVaultDepositGuardExtendedForMFD | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-394043 | `0xdb771e...d6fccc` | ⚠️ Unaudited |
| ICHIVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 12 deployments: polygon `0xf39a4c...9b0298`; base `0xabe5b5...8ab3b3`; base `0xbff23e...d17ad1`; base `0xf6b5ab...045fa6`; base `0xfbf389...607065`; celo `0x1f9563...0838e6`; celo `0x2f4b48...36d085`; celo `0x7df494...14e975`; celo `0x82dca6...e33870`; celo `0x8d05f6...3eb92a`; celo `0x9fab4b...d7418f`; celo `0xb3bf88...d3e5bf` | ⚠️ Unaudited |
| ICHIVaultMigrationGuard | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7ba715...90bb56` | ⚠️ Unaudited |
| MultiFeeDistributionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 5 deployments: celo `0x5ccf5a...581afd`; celo `0x772960...3790b3`; celo `0xb005d5...0002fc`; celo `0xe734a1...e73017`; celo `0xf251d0...38eb5a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x1b0ef0...a4cd63`; base `0xbbb97d...f46ad3`; celo `0x2fb241...d7a931`; celo `0xb978c5...f1a415` | ⚠️ Unaudited |
| QuoterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 4 deployments: celo `0x6d7fc9...e0b0c2`; celo `0xb1fa72...7bd171`; celo `0xc7ea64...02d9af`; celo `0xe1962f...0f8f85` | ⚠️ Unaudited |
| RebalancerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x2d2c72...a73fc0` | ⚠️ Unaudited |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xf8b3f6...ff765e` | ⚠️ Unaudited |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x101eb1...bfc879` | ⚠️ Unaudited |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x215d61...e3a50c` | ⚠️ Unaudited |
| RebalancerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xfa196a...e5c234` | ⚠️ Unaudited |
| SymbolLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 4 deployments: celo `0x52a60f...ce2471`; celo `0xa2969b...494db7`; celo `0xad8408...40b780`; celo `0xbed3ce...9de85e` | ⚠️ Unaudited |
| UV3Math | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 14 deployments: polygon `0x8d6cdb...a9fc0d`; base `0xb177cf...5a04e2`; base `0xbf60a8...e057a1`; celo `0x065cb8...6ea031`; celo `0x3b5fbc...4e0d3b`; celo `0x460812...898738`; celo `0x7a4ae8...8ede18`; celo `0x7f659c...e3dc06`; celo `0xa45a0a...3d883d`; celo `0xacdeab...35a3a6`; celo `0xafec07...dadf69`; celo `0xb9b42b...626dcc`; celo `0xf6b5ab...045fa6`; celo `0xfa0263...1b97c5` | ⚠️ Unaudited |
| VaultLocker | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 8 deployments: polygon `0x39db7d...38510a`; polygon `0x460812...898738`; polygon `0x6e2bbd...d1c814`; polygon `0x827cce...543047`; celo `0x0de3ba...31658c`; celo `0x2a8d03...d0e337`; celo `0x7f2eaf...ad8a65`; celo `0xd2c08d...5837b3` | ⚠️ Unaudited |
| VaultSlippageCheckV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x69bf65...d44e2a` | ⚠️ Unaudited |
| VaultSlippageCheckV2_1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xaa650b...157158` | ⚠️ Unaudited |
| VaultSlippageCheckV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xcec871...4b7da8` | ⚠️ Unaudited |
| VolatilityCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4eecd2...11d6da` | ⚠️ Unaudited |
| VolatilityCheck | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-394040 | `0x6c2e26...74e72e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (173)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| deep_vault / deployer | unknown | project_anchor | own_supporting | 0 | ink | unit-394054 | `0xcbd1f7...36e3e8` | ❓ Unverified |
| deep_vault / depositGuard | unknown | project_anchor | own_supporting | 0 | ink | unit-394051 | `0x51339a...4fed93` | ❓ Unverified |
| deep_vault / Pancakeswap / volatilityCheck | unknown | project_anchor | own_supporting | 0 | base | unit-394065 | `0xeb8be5...42b5df` | ❓ Unverified |
| deep_vault / Ubeswap / volatilityCheck | unknown | project_anchor | own_supporting | 0 | celo | unit-394037 | `0x178369...3000b3` | ❓ Unverified |
| deep_vault / Uniswap V3 / volatilityCheck | unknown | project_anchor | own_supporting | 0 | polygon | unit-394035 | `0xe83a69...33e8fc` | ❓ Unverified |
| deep_vault / Uniswap V3 / volatilityCheck | unknown | project_anchor | own_supporting | 0 | celo | unit-394041 | `0xc9dcd7...53bb42` | ❓ Unverified |
| deep_vault / volatilityCheck | unknown | project_anchor | own_supporting | 0 | ink | unit-394052 | `0x698e9f...9ceed0` | ❓ Unverified |
| deep_velodrome_vault / depositGuard | unknown | project_anchor | own_supporting | 0 | ink | unit-394055 | `0xe6d639...7657d1` | ❓ Unverified |
| deep_velodrome_vault / volatilityCheck | unknown | project_anchor | own_supporting | 0 | celo | unit-394042 | `0xd3db08...947894` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x08992f...009691` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x641da3...4a4cdc` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x67de64...c7b278` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x6d7fc9...e0b0c2` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x8cb886...35a23c` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xdbbdc2...8773b9` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xf1d63f...dbfac8` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xffaff1...130c34` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x16eb8e...b96483` | ❓ Unverified |
| RebalancerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x606332...016d05` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x83ee90...edc23f` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xe04ba7...cbbef3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x097cdb...a1255c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a13a8...67fb37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ac9e4...fd47f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0e22c7...085cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1566fe...1724d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x16dfbb...9fde29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x183e90...b79f91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c3eb3...ee8082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ff378...28c0ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x228e95...999808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x27e021...fd2d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2de071...bdf471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x318603...8f7002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c39f3...fded58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x46a572...8c6b17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x52a60f...ce2471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a3da4...22f841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5cfe73...bea1fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x62a7d1...265da1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x65cd1f...2074ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f4574...9bd199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f4f76...87d97e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x70af57...3a2190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x760801...db9c55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7b7fd5...1f257f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7debd5...5c3c34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e21f7...bf5459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x830d3c...5df95f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x924b26...bb596c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97bf8c...153037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa2969b...494db7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafcd97...05faf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1fa72...7bd171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb24a00...e00216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc0fe74...cc5cb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc808cf...c8a679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca3e89...c3fde1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb03e0...431fac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe35852...bd65c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe4a759...63f89d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe7961f...170500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe84f1c...177227` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe8709a...743549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xedf7a8...66b463` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xee22ad...d5bd30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xee64cb...d2ad52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf13de8...c0e4a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf36abd...b851b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfbdf07...ba5e0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfca3b4...867f03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfea6cc...211dd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0248b9...9cfe4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02f4a9...ccfcf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x101eb1...bfc879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2e76a8...7fedd6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-394060 | `0x5a6630...94c6f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6f85eb...31fd8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x921acc...cbb2aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdd2346...9dc72d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf3145e...380e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x05043e...87947b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0c551e...9da944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0e9a6b...d28a9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0ffba7...083b09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x130666...ab6788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x14380c...f2d796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1657a6...0e1a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x16edb1...348ef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x17f1a5...6fad11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1919c1...dc2163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x204f7c...25f0d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x22b2a7...57e875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x242cd1...ab65de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x278719...ffe90c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x288f5b...5313ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x34513e...2d8b5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x36a3f7...537b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3bc85a...d0e909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3c568f...835663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3e5685...ce1aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4238eb...1ab723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x48e263...54693f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4dc520...086497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4f5202...1e4d79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x500c17...a5ded8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x513844...e27987` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x535117...fab0f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x56326f...d3eaf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5df820...fe1001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x66854c...62eece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x683334...f9b689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6aad66...53524e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6b7ccf...27208a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6dbb1e...866fd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6dc696...ad61e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6f6b1b...90e106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7582ce...26809a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7a3bf3...10d04c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x808baa...5dd2ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x822b0b...093618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8244fd...8d11ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x838602...1c2119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x858405...0c78ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8e8aa5...2ad7e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x92b1ba...63629c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x945193...1d640a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x974ea7...7fc0ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x994969...44369c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x998f04...9ac395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x99fb98...4a8c8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9a0ebe...4dc8d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9bd308...241f76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9ff36c...5bf847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa21139...ba4f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa24c23...45fca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa287a2...13e9d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa8b1ba...4819dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xae7b34...f0b6c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb108b4...db86ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb5fb13...a8b025` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb838c2...4d07ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbb1385...6a6e01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbdd005...754dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc1de90...f475f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc2ddc7...2e261e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc4dcae...36b4ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xca1d96...0d87b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd39809...bedd4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd4d56d...d695e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd59966...8fe2aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd8322b...91b08c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xdeb87c...ccf879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xdf5fea...766529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe02768...0ce869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe14209...5dbedd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe1c415...a998e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe5fa9c...09a8da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe7948b...77ab55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe7cb9d...2e9e6d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-394044 | `0xed0819...3371df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf2bf7b...d32d5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf4113f...46c90a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf891c4...6db75d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xfaa2e7...a07f30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xfc7efd...4d5ed9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | unit-394049 | `0x2f4b48...36d085` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | unit-394050 | `0x388c3a...a708d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ink | n/a | 5 deployments: ink `0x5541bc...788348`; ink `0x64da1a...9a06d4`; ink `0x65cd1f...2074ac`; ink `0x822b0b...093618`; ink `0x9176b8...9f19b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | unit-394053 | `0xbf566e...7cf342` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | unit-394056 | `0xfea6cc...211dd1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-763373 | unit-394057 | `0xc5901f...2e4c3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-763373 | unit-394058 | `0xca8310...3cbb76` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Bailsec - ICHI - Vaults - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20ICHI%20-%20Vaults%20-%20Final%20Report.pdf) | yAudit | Audit | 2024-12 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 10 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11711] Bailsec - ICHI - Vaults - Final Report.pdf — matched: All contracts are explicitly listed in the report's scope sections. The audit date is inferred from 'December 2024' on the cover page, using the last day of the month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Bailsec - ICHI - Vaults - Final Report.pdf | Enum | unmatched — not counted | — | Listed in scope as a contract under 'Common Enum' section. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | ContractImports | unmatched — not counted | — | Listed in scope as 'External ContractImports'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | InterfaceImport | unmatched — not counted | — | Listed in scope as 'InterfaceImport'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | ICHIVaultDeployer | unmatched — not counted | — | Listed in scope as 'Lib ICHIVaultDeployer'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | OracleLibrary | unmatched — not counted | — | Listed in scope as 'OracleLibrary'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | UV3Math | unmatched — not counted | — | Listed in scope as 'UV3Math'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | ICHIVaultDepositGuard | own contract | ICHIVaultDepositGuard (alternative) `0x62fd18...4774c2` — deployed 2024-02-26 15:50:34+03 — liveness: live (current_address_book_code)<br>ICHIVaultDepositGuard (alternative) `0x2b8ca8...76d4c6` — deployed 2025-11-25 23:59:43+03 — liveness: live (current_address_book_code)<br>ICHIVaultDepositGuard (selected) `0x238394...4fbed8` — deployed 2024-09-19 23:34:19+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-09-19 was 103d from audit; next candidate 309d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - ICHI - Vaults - Final Report.pdf | ICHIVault | unmatched — not counted | — | Listed in scope as 'ICHIVault'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | VaultSlippageCheckV2_1 | unmatched — not counted | — | Listed in scope as 'VaultSlippageCheckV2_1'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | VaultSlippageCheckV2 | unmatched — not counted | — | Listed in scope as 'VaultSlippageCheckV2'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | ICHIVaultFactory | unmatched — not counted | — | Listed in scope as 'ICHIVaultFactory'. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0x2b8ca8...76d4c6` | ICHIVaultDepositGuard | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x62fd18...4774c2` | ICHIVaultDepositGuard | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x141db8...1d9f25` | ICHIVaultDepositGuardExtendedForMFD | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 185 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: temporal_name=1

Fork inheritance lineage and inherited audits are included when available.
