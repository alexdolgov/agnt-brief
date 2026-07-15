# Agentic Audit Brief: Impermax Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 9 (0 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Impermax Finance (`impermax-finance`)
- Website: [https://impermax.finance/](https://impermax.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, blast, canto, ethereum, fantom, linea, mantle, moonriver, optimism, polygon, scroll, sonic, unichain, zksync-era
- Contract surface: 473 unique implementations (516 raw deployments)
- Coverage basis: 0/15 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $730,737.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Impermax Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 15 contract row(s) across arbitrum, avalanche, base, blast, canto, ethereum, fantom, linea, moonriver, optimism, polygon, scroll, sonic, unichain, zksync-era. Structural roles: 9 supporting, 6 core. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 15
- Structural roles: supporting (9), core (6)
- Contract kinds: contract (15)
- Detected standards: erc20 (4), erc165 (2), ownable (2), erc1967proxy (1)
- Frameworks: openzeppelin (10), openzeppelin-upgradeable (2), solmate (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

2 of 35 contracts are derived from known codebases. 33 contracts have no detected origin.

### Forked Contracts

**Router01** (`0x5e1690...43127d`, chain 1)
Origin: cbridge (`0x5e1690...43127d`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Router02** (`0x7c79a1...a83ba0`, chain 137)
Origin: tarot (`0xa516b9...84405f`)
Containment: 87.0% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- impermaxBorrow(address,address,uint256,bytes)
- impermaxRedeem(address,uint256,bytes)
- isStakedLPToken(address)

Removals (removed from original):
- isVaultToken(address)
- tarotBorrow(address,address,uint256,bytes)
- tarotRedeem(address,uint256,bytes)

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x5671b2...12ba7d`, chain 1)
- UnnamedContract (`0x8c3736...5b767b`, chain 1)
- UnnamedContract (`0xbb6bba...eecc82`, chain 10)
- UnnamedContract (`0x846019...6a38c4`, chain 137)
- UnnamedContract (`0x89703c...8c6f7b`, chain 137)
- UnnamedContract (`0xbb9227...4064d6`, chain 137)
- UnnamedContract (`0xcb30a6...8bb6cf`, chain 137)
- UnnamedContract (`0xbe9f8c...47991d`, chain 324)
- UnnamedContract (`0x8ab356...ded78d`, chain 1285)
- UnnamedContract (`0x958876...211256`, chain 1285)
- UnnamedContract (`0x270250...afce68`, chain 42161)
- UnnamedContract (`0x4ae891...053466`, chain 42161)
- UnnamedContract (`0x5475ae...eb086f`, chain 42161)
- UnnamedContract (`0x99cf05...3451f5`, chain 42161)
- UnnamedContract (`0x16ed59...461282`, chain 43114)
- UnnamedContract (`0x58fde5...93dce2`, chain 43114)
- UnnamedContract (`0x29c714...41d62f`, chain 81457)
- UnnamedContract (`0x7b816c...f6ef87`, chain 81457)
- BeaconProxy (`0xcf0f95...7c3841`, chain 59144)
- ClonableBeaconProxy (`0x566592...a2d57b`, chain 42161)
- Ibex (`0xf655c8...161dc6`, chain 1)
- IBEX (`0x9f04b6...188e6a`, chain 81457)
- ImpermaxChef (`0xd299d5...4a7caa`, chain 1285)
- MultiBridgeToken (`0x089d3d...f0c824`, chain 43114)
- OptimismMintableERC20 (`0xb8a9a9...dec24f`, chain 8453)
- Router02 (`0x3039c2...9f461f`, chain 43114)
- Router03 (`0x447b4e...713a02`, chain 81457)
- ScrollStandardERC20 (`0x78ab77...1ead5b`, chain 534352)
- SimpleUniswapOracle (`0x3271cc...fa05d5`, chain 137)
- SimpleUniswapOracle (`0xc12e00...47fb6c`, chain 43114)
- UChildERC20Proxy (`0xf972da...b298f6`, chain 137)
- UnnamedContract (`0x60ae5f...624556`, chain 250)
- UnnamedContract (`0xb9f341...cf94fc`, chain 250)

## Contract Surface Quality

- Logic-topography rows: 15; live-surface rows included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 35/35 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/15 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 35 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 438 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 35 of 473 unique; 438 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/41
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 432
- Unique implementations: 473
- Raw deployments: 516
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 3 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x5ed5b9...90f133` | ⚠️ Unaudited |
| BridgedToken | operational_periphery | project_anchor | own_supporting | 1 | linea | unit-242471 | `0xcf0f95...7c3841` | ⚠️ Unaudited |
| CDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x8921c4...bf5ba9` | ⚠️ Unaudited |
| Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: polygon `0x7f7ad5...febcd3`; sonic `0x26fca5...112b91`; base `0x66ca66...7c2d9f`; avalanche `0xc7f24f...492739`; linea `0x7a9212...8ee746` | ⚠️ Unaudited |
| FactoryStable | registry | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: sonic `0x6e1e98...062564`; linea `0x0d5433...130675` | ⚠️ Unaudited |
| Ibex | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242440 | `0xf655c8...161dc6` | ⚠️ Unaudited |
| IBEX | unknown | project_anchor | own_supporting | 0 | blast | unit-242467 | `0x9f04b6...188e6a` | ⚠️ Unaudited |
| ImpermaxChef | unknown | project_anchor | own_supporting | 0 | moonriver | unit-242444 | `0xd299d5...4a7caa` | ⚠️ Unaudited |
| ImpermaxConfigManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x1a3e33...73b37e`; base `0x9acafc...5dce7c`; linea `0x3a65e7...f1796a` | ⚠️ Unaudited |
| ImpermaxV2SolidlyRouter01 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 4 deployments: sonic `0xb3b140...129331`; base `0x98b55c...8b78cd`; linea `0x6e658a...5caf31`; blast `0x4891a7...5732fb` | ⚠️ Unaudited |
| ImpermaxV2UniV2Router01 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x46b9b1...b699df`; arbitrum `0x8f4065...0970fb`; arbitrum `0xf09d8f...1c2232` | ⚠️ Unaudited |
| ImpermaxV3Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | 2 deployments: unichain `0x50e711...c15e14`; base `0x870fd2...9fc120` | ⚠️ Unaudited |
| ImpermaxV3UniV3Router01 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | 2 deployments: unichain `0x58c5ca...c822c5`; arbitrum `0xe8cd0d...ac8459` | ⚠️ Unaudited |
| InitializedDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf82ee...8a87ab` | ⚠️ Unaudited |
| LendingVaultV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: unichain `0xb0771d...59377c`; base `0x77fb0f...dd9c8d` | ⚠️ Unaudited |
| LendingVaultWatcher01 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x638855...70d1ed` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c7213...984aba` | ⚠️ Unaudited |
| MultiBridgeToken | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-242458 | `0x089d3d...f0c824` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-242468 | `0xb8a9a9...dec24f` | ⚠️ Unaudited |
| PoolTokenRouter01 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: unichain `0xe3fe59...34e4ec`; arbitrum `0x544dac...690cd8`; linea `0x1c44fd...30aad0`; blast `0xe0ea1c...27a9ff` | ⚠️ Unaudited |
| Router01 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-242438 | `0x5e1690...43127d` | ⚠️ Unaudited |
| Router02 | adapter | project_anchor | own_supporting | 0 | polygon | unit-242446 | `0x7c79a1...a83ba0` | ⚠️ Unaudited |
| Router02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3271cc...fa05d5` | ⚠️ Unaudited |
| Router02 | adapter | project_anchor | own_supporting | 0 | avalanche | unit-242460 | `0x3039c2...9f461f` | ⚠️ Unaudited |
| Router03 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 13 deployments: ethereum `0x6271c6...d44e4f`; optimism `0x6c2198...3b776a`; polygon `0x697673...a06333`; polygon `0xf117a3...40a9c2`; sonic `0xac72b4...cc87c8`; sonic `0xcbdf79...f09654`; base `0x21d9d4...281ebf`; base `0xc5d6cb...bc58f7`; arbitrum `0x58d966...f076d3`; arbitrum `0x9655c5...8b60b7`; avalanche `0xa8567d...11e4cf`; linea `0xc8bbc4...b468bc`; linea `0xeb81da...58926f` | ⚠️ Unaudited |
| Router03 | adapter | project_anchor | own_supporting | 0 | blast | unit-242465 | `0x447b4e...713a02` | ⚠️ Unaudited |
| Router03Solidly | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: polygon `0xd7f63a...956ac9`; base `0x1ebc3b...bdb49f`; arbitrum `0x3b0368...97dd56`; avalanche `0xd18d2b...f5b8b8` | ⚠️ Unaudited |
| ScrollStandardERC20 | token | project_anchor | own_supporting | 0 | scroll | unit-242463 | `0x78ab77...1ead5b` | ⚠️ Unaudited |
| SimpleUniswapOracle | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-242445 | `0x3271cc...fa05d5` | ⚠️ Unaudited |
| SimpleUniswapOracle | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-242462 | `0xc12e00...47fb6c` | ⚠️ Unaudited |
| StakedLPToken0212 | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x677dce...4821a6`; avalanche `0xc532a2...bad1b1` | ⚠️ Unaudited |
| StakedLPTokenFactorySolidlyBase1 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2a3221...0b62e8` | ⚠️ Unaudited |
| StakedLPTokenFactorySolidlyBase4 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5b0694...00e86b` | ⚠️ Unaudited |
| StakedLPTokenFactorySolidlyBase5 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x543cc9...355d83` | ⚠️ Unaudited |
| StakedLPTokenFactorySolidlyBase7 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x032bea...e1c92e` | ⚠️ Unaudited |
| StakedLPTokenFactorySolidlyStable5 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0e5f23...3fe70f` | ⚠️ Unaudited |
| StakedLPTokenSolidlyBase1 | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x96f1f1...440ec1` | ⚠️ Unaudited |
| StakingRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb323c5...0679b0` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-242470 | `0x566592...a2d57b` | ⚠️ Unaudited |
| UChildERC20 | token | project_anchor | own_supporting | 1 | polygon | unit-242469 | `0xf972da...b298f6` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x08650b...5b3293`; ethereum `0x8dcba0...79dd13`; ethereum `0xa00d47...847c91`; polygon `0x5f819f...26f8f5`; arbitrum `0xb7e5e7...6cc6c5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (432)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03f75e...17e3c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x064aa6...d17fc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06eecf...adbf77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x073271...72214e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a5a31...dac31d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e1a3b...1323d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e60b6...d5b67e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f528f...fec29e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x113414...7c0e4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18011c...5a2aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18cb23...7b55ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c813c...16e9c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e4cf6...498dc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2011b5...9e3c1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29d5ce...f1ddea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31864b...6de9eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3271cc...fa05d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34c8f7...99de59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x352527...343a16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x363b2d...96bf59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x434547...b7686c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44121f...91e83d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5287ca...264b69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242437 | `0x5671b2...12ba7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58fde5...93dce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59af72...3ba8a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b87c4...fa839f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ce1a9...f4f84d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6032e0...ed0bfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6418bd...e3ab5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69cc62...61a8ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69de2d...01f24e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x718cd1...9a0c98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72fe32...6c6a47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75218d...f59b3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7aff0b...72ee9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b35ce...764a00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8485e1...85e420` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87da8b...c2a845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a966c...336335` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242439 | `0x8c3736...5b767b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ce9fd...c51d53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99cf05...3451f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b2ab7...d6c297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6d3da...fa6fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6f3c2...fb3160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb10ae9...8506e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2a139...9029bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5c04c...11596c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb9227...4064d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc12e00...47fb6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc65d78...e40bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccb284...9376c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccddd7...0d12a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf6d10...44db79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf8a53...21363c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd13fbc...932da9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc4baf...296f60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde1439...88440f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde182e...c86266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeac319...b88ec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf14f98...269cff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa3eb9...0fc2ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcdf28...6e145c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x481684...b1a80c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7c87fa...eb1fa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x81a77a...4c3c0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa8f216...72dc44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaea67e...407055` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-242441 | `0xbb6bba...eecc82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x367c0f...5d5694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x3ee621...9e684f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x732113...fc0448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xdaa6ea...671f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xf0b166...9e334d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x06607c...605ec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08db22...2deba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a3001...c03565` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c4aed...318f92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x113414...7c0e4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x142304...ff1bbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x14f11f...51422f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x163816...b6ed02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x174e4d...73ccdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18011c...5a2aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x19d8a5...b7e3b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a645b...155fe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c813c...16e9c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1d0d87...82639b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e4cf6...498dc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2011b5...9e3c1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x23d197...202c60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2585d1...cc8053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x25a7ee...fac9bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x285a9f...e557c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x30d508...8b6790` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x385338...6fe25f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3a9067...d9316a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3fdb0c...ff5c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40aa8c...0d194b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x42f325...e02cf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x45e0ee...65531c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x462bce...ed23ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4ae11d...6ca85e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4e25d9...4388d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4e69cf...434736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x50d6b3...a4fc3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x528e02...c5c02c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5671b2...12ba7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x57efd4...481187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5dd327...44dd65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5eaa5d...0cae95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x60f57c...8966c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x61522e...f96fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x616993...c6a826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x62c8a8...67e738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6659a9...b4dcd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x66cda0...b009e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x67c270...b0af39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6cff38...6478a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x718cd1...9a0c98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x748a6e...ae80e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x750d0c...8c52ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ce2f6...d05a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ed6ef...9c7ac2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242447 | `0x846019...6a38c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8485e1...85e420` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242448 | `0x89703c...8c6f7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8c3736...5b767b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8d17eb...11b74b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8e4562...7b5899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x963432...bccad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x963add...b146e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9993fc...141992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x99cf05...3451f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9b2ab7...d6c297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9b4ae9...7a945b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c18ad...05aa2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9cd422...de7874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9cef7f...fea685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9d2d08...104bb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9ee87b...a79974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa6d3da...fa6fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa876f9...168252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xae8dcd...946161` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaf82ee...8a87ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb07c75...4ba78e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb116e5...0d8eb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb2a139...9029bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb440b6...e02b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb44dc3...c9ab17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb5a0d8...afa3c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb843a5...4b7d3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb9de27...f35fae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb65e4...f4e858` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242449 | `0xbb9227...4064d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbfd646...cca6e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc12e00...47fb6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc35d2e...c30743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc4505c...9259a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc6e017...fa0f77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc75094...c40937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc81327...3a9174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc8474d...96f080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcaf3fb...bee209` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242450 | `0xcb30a6...8bb6cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb779e...e7f7e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf16ff...8db126` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd129cc...5b9e31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd13fbc...932da9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd1cf8a...e82458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4bc18...f75af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd7219c...e5ba68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb7631...03a4e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdbdf5c...346c6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdc57f7...7364e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe17bd9...140c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe2d46b...b55820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe564d3...a186aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe63fd1...210484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf0f25a...f86c30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf1e302...d442df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf4298f...0274e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf47b65...af04f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf61d89...a9bc9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf683dc...066173` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf88a7f...5a7534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf9221c...58862e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa3378...07f829` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa3eb9...0fc2ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfb1f0f...8c4872` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfb8bd4...4932e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfbd9e5...c7157b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xff5d1a...c1face` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0680ad...da3b2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1d3258...748cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x26c37d...760dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x323f07...8e9cfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x34dcf5...1843b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x55d1d7...fd3920` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x58fe05...920907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x66ae73...dc79aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6ad28b...08ad57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6f9d1f...05d2ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7a9212...8ee746` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa39d28...0a4b19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa40312...8a24d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb84bba...0cde2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe770c8...03c6a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe8d69d...99dfb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xeb81da...58926f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf8be0f...f94787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfe7ca6...80ab9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-242451 | `0x60ae5f...624556` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-242452 | `0xb9f341...cf94fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-242453 | `0xbe9f8c...47991d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x31864b...6de9eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x352527...343a16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5671b2...12ba7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x772a82...bda66e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-242442 | `0x8ab356...ded78d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8c3736...5b767b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-242443 | `0x958876...211256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb9f341...cf94fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xbb9227...4064d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc12e00...47fb6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | canto | n/a | 6 deployments: fantom `0x877a33...73eb1c`; fantom `0x958876...211256`; fantom `0x9b4ae9...7a945b`; fantom `0xb97b6e...e6c696`; canto `0x6ce1a2...b46e36`; canto `0x9708e0...d898e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02d059...c22789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x053ed4...732284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x098783...4b8da5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x099b4b...01f3f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x09f651...4daca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c77aa...ab01bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0dc6f1...d02ef6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x125b0f...0b03f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x158ce1...2d8cb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x168ed1...03c743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x175712...a47685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c379e...be748f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c7910...b2beda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1cf6c3...847286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x207075...cf60fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x22c69f...40b65f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25308e...0fd7a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c9b43...2aa2d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x336820...cd3f5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33d9c3...795b40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3406bb...dc7a07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d461d...a3ff19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d90e9...3f55e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3e9323...5d2693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3fecf5...fe0fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4189ea...6a2294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x43632c...fd2001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x47183b...67cd00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x47d568...afb198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4fa795...39a83c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x52915e...aa8829` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x536475...41c8b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x562398...6be460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x57ef32...aa9ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x585886...1c4288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5e2bb3...dc7957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6851fc...771b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6878c4...d4c4ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x69b906...c6b4ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x731318...f8bca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x73c222...54f31f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x83146a...bc0f5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88d363...06c45c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8adc5f...8b9d86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e7aab...d8eace` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8f50a6...eebafb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9111b8...4c52c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9a80a0...fe368c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa20ba6...d92cf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2a97a...3e17a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa33366...5fbc63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa4a488...6dc0b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa57537...866f9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa78bcf...063587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa83a38...8a76dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaea22d...ae24fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaf4723...af87fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb0b8c9...09c9da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb2d7e9...f0a854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb93cef...4fc137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd218d...a4808e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc0e036...878efc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc10d01...138458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc197e1...936fba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc123c...0f1fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xccaf24...6e33d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd29fcf...d89b56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd3a261...740b1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd4173e...296062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5e448...76ef00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd971c3...a91cbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd9b43f...808042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdad9a6...b1e624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdeb4f0...dabff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdf07d0...73b1aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdfe624...c289e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6eaf2...2fe574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb2739...5250a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec982e...a7a8cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xecec58...83a6d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed204b...b65ed3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf00850...78f1e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf14e7f...8e897c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf60f5d...b5f0f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfa13d3...fddf6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfa9487...c854b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02f5cc...badfef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09d5b2...9f1510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b13be...6ff623` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x111eee...46e5d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cb9db...8d322a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x268bb0...6b0b2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242454 | `0x270250...afce68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x272056...4ea78f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b1adf...59437b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30d7ef...116bb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3373fa...e4af20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3415c5...c8d678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3be7b5...d47b37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4073f6...b16ecd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ae11d...6ca85e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242455 | `0x4ae891...053466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4dc48b...2ec1df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ff326...bf7eb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242456 | `0x5475ae...eb086f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5671b2...12ba7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63be5e...f27ccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e6a0c...978869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x716dbb...4fd7cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78a225...894708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7972d5...620408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ce2f6...d05a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c3736...5b767b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9708e0...d898e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97bc7f...8771c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x990144...c3c40f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242457 | `0x99cf05...3451f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa4a8d7...93912f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf82ee...8a87ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb09aad...eb0be2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8b6f1...28e774` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc1bb9...2a0cac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbce93e...ece45f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf16ff...8db126` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0543e...154bd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9aca9...ede063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdbea7c...290653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd7ac6...59da0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1b9cd...78d86e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe668a9...1d2021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8d14b...208f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf540e9...bf86ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf655c8...161dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf6d20b...ee207c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf82e30...a6f5c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb8bd4...4932e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc637e...d3b9f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ad3e5...766fd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242459 | `0x16ed59...461282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21a7ec...376bba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2514a2...a37043` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x31864b...6de9eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3271cc...fa05d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x462bce...ed23ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5475ae...eb086f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5671b2...12ba7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242461 | `0x58fde5...93dce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e1690...43127d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7ce2f6...d05a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7eb705...bc619c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x87da8b...c2a845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b07b0...864d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c3736...5b767b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9141b3...03a201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x958876...211256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9708e0...d898e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xad5871...5d8f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf82ee...8a87ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb9f341...cf94fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb9227...4064d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc1bb9...2a0cac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc596f6...91e295` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xca45c0...8d0f49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe611a9...46c4e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf655c8...161dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb48b6...88ad63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x121f8c...f15d80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1a3e33...73b37e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x39d0b5...b07a84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x50bd4c...8cf0b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x543cc9...355d83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6180cf...055205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x67a76a...d8e4d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9a7299...ffd10b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb03787...036ca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc3a05f...778bc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcbdf79...f09654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd2a146...d57e64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe589c9...96c19b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfe7ca6...80ab9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x078288...05005e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0ec372...676849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x143688...6296cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x18548c...cd85f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x264bf8...eaafb6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242464 | `0x29c714...41d62f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3d0b5a...c32c4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x53e326...e8fa0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x57f928...45fd20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5833c2...f5b288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5de4c7...e30cb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6b39b9...63390d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x77ab0b...3ba42f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242466 | `0x7b816c...f6ef87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x87b339...b32577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8c95c1...7aa31b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xab2c17...d4f99b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb33f0f...d4a2f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb3c80c...d89f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd02db9...9da3d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe16f15...6ed236` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xebb23f...ea3a40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf0354f...42692d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf33e32...1cac45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xfff3c0...b97be1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025-02-08_Impermax.pdf](https://github.com/GuardianAudits/Audits/blob/main/Impermax/2025-02-08_Impermax.pdf) | Guardian | Audit | 2025-02 | aging | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |
| [Bailsec - Impermax - V3 Core - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Impermax%20-%20V3%20Core%20-%20Final%20Report.pdf) | unknown | Audit | 2024-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 25 | n/a |
| [CertiK Audit Report for impermax-x-uniswapv2-core.pdf](https://github.com/Impermax-Finance/impermax-x-uniswapv2-core/blob/main/audit/CertiK%20Audit%20Report%20for%20impermax-x-uniswapv2-core.pdf) | CertiK | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 28 | high |
| [SC_impermax_core.pdf](https://github.com/Impermax-Finance/impermax-x-uniswapv2-core/blob/main/audit/SC_impermax_core.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [spaces/ZSqnl0TPTc6pWBHLuHur/uploads/QLbxcYMLJhQNoWJKXQo6/Impermax Tokenized Aerodrome Report.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZSqnl0TPTc6pWBHLuHur%2Fuploads%2FQLbxcYMLJhQNoWJKXQo6%2FImpermax%20Tokenized%20Aerodrome%20Report.pdf?alt=media) | Guardian | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZSqnl0TPTc6pWBHLuHur%2Fuploads%2Fc5KfXIpov0BrQvrkHSFU%2FImpermax-Report.pdf?alt=media) | Guardian, Bailsec, Cantina | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [CertiK Audit Report for IMX.pdf](https://github.com/Impermax-Finance/IMX/blob/main/audit/CertiK%20Audit%20Report%20for%20IMX.pdf) | CertiK | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 17 | n/a |
| [SC_impermax_periphery.pdf](https://github.com/Impermax-Finance/impermax-x-uniswapv2-periphery/blob/main/audit/SC_impermax_periphery.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [SC_impermax_oracle.pdf](https://github.com/Impermax-Finance/simple-uniswap-oracle/blob/main/audit/SC_impermax_oracle.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13286] 2025-02-08_Impermax.pdf — no match: No reason recorded
- [13287] Bailsec - Impermax - V3 Core - Final Report.pdf — no match: No reason recorded
- [16479] CertiK Audit Report for impermax-x-uniswapv2-core.pdf — no match: Extracted 28 contract names from the audit scope table. Audit date inferred from 'Apr 30th, 2021' in the header.
- [16480] SC_impermax_core.pdf — no match: The provided text is garbled and does not contain any identifiable contract names, scope sections, or audit date.
- [16483] spaces/ZSqnl0TPTc6pWBHLuHur/uploads/QLbxcYMLJhQNoWJKXQo6/Impermax Tokenized Aerodrome Report.pdf — no match: Scope table lists only TokenizedAeroCLPosition.sol; NfpmAeroInteractions and ImpermaxERC721 are referenced in findings but not explicitly in scope table.
- [16484] spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf — no match: Scope section 2.1 lists 11 core contracts with file paths. Audit date is June 30, 2025 from cover page and headers.
- [16485] CertiK Audit Report for IMX.pdf — no match: No reason recorded
- [16486] SC_impermax_periphery.pdf — no match: The provided text is incomplete and does not contain any contract names, scope sections, or audit date.
- [16487] SC_impermax_oracle.pdf — no match: The provided text does not contain any audit report content; it appears to be a fragment of a document with page numbers and a URL.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025-02-08_Impermax.pdf | BInterestRateModel | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | BSetter | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | CSetter | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | ITokenizedUniswapV3Position | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | IUniswapV3AC01 | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | ImpermaxV3Borrowable | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | ImpermaxV3Collateral | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | ImpermaxV3Factory | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | TokenizedUniswapV3Factory | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | TokenizedUniswapV3Position | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | UniswapV3AC01 | unmatched — not counted | — | — | no |
| 2025-02-08_Impermax.pdf | UniswapV3CollateralMath | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | BAllowance | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | BDeployer | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | BInterestRateModel | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | BSetter | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | BStorage | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | CDeployer | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | CSetter | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | CStorage | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | CollateralMath | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | ImpermaxERC20 | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | ImpermaxERC721 | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | ImpermaxV3Borrowable | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | ImpermaxV3Collateral | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | ImpermaxV3Factory | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | ImpermaxV3OracleChainlink | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | PoolToken | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | TokenizedUniswapV3Deployer | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | TokenizedUniswapV3Factory | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | TokenizedUniswapV3Position | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | TokenizedV3Factory | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | UniswapV3CollateralMath | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | UniswapV3OracleTwap | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | UniswapV3Position | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | UniswapV3WeightedOracleLibrary | unmatched — not counted | — | — | no |
| Bailsec - Impermax - V3 Core - Final Report.pdf | V3Factory | unmatched — not counted | — | — | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | BAllowance | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | BDeployer | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | InterestRateModel | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | BSetter | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | BStorage | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | Borrowable | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | CDeployer | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | CSetter | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | CStorage | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | Collateral | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | Factory | ambiguous — not counted | UnnamedContract (alternative) `0x60ae5f...624556` — liveness: live (current_address_book_code)<br>0x7b816c… (alternative) `0x7b816c...f6ef87` — deployed 2024-03-22 13:13:43+03 — liveness: live (current_address_book_code)<br>0x8c3736… (alternative) `0x8c3736...5b767b` — deployed 2021-02-27 18:56:01+03 — liveness: live (current_address_book_code)<br>0xbb9227… (alternative) `0xbb9227...4064d6` — deployed 2021-05-24 12:14:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | ImpermaxERC20 | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | PoolToken | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | IBDeployer | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | IBorrowTracker | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | IBorrowable | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | ICDeployer | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | ICollateral | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | IERC20 | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | IFactory | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | IImpermaxCallee | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | IPoolToken | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | ISimpleUniswapOracle | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | IUniswapV2Factory | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | IUniswapV2Pair | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | Math | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | SafeMath | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for impermax-x-uniswapv2-core.pdf | UQ112x112 | unmatched — not counted | — | listed in scope table | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/QLbxcYMLJhQNoWJKXQo6/Impermax Tokenized Aerodrome Report.pdf | TokenizedAeroCLPosition | unmatched — not counted | — | listed in scope table | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/QLbxcYMLJhQNoWJKXQo6/Impermax Tokenized Aerodrome Report.pdf | NfpmAeroInteractions | unmatched — not counted | — | mentioned in findings (L-02) | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/QLbxcYMLJhQNoWJKXQo6/Impermax Tokenized Aerodrome Report.pdf | ImpermaxERC721 | unmatched — not counted | — | mentioned in findings (L-03) | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | CollateralMath | unmatched — not counted | — | listed in scope section 2.1 | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | ImpermaxV3OracleChainlink | unmatched — not counted | — | listed in scope section 2.1 | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | TokenizedUniswapV3Position | unmatched — not counted | — | listed in scope section 2.1 | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | BAllowance | unmatched — not counted | — | listed in scope section 2.1 | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | BSetter | unmatched — not counted | — | listed in scope section 2.1 | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | BStorage | unmatched — not counted | — | listed in scope section 2.1 | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | CSetter | unmatched — not counted | — | listed in scope section 2.1 | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | CStorage | unmatched — not counted | — | listed in scope section 2.1 | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | ImpermaxV3Borrowable | unmatched — not counted | — | listed in scope section 2.1 | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | ImpermaxV3Collateral | unmatched — not counted | — | listed in scope section 2.1 | no |
| spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf | PoolToken | unmatched — not counted | — | listed in scope section 2.1 | no |
| CertiK Audit Report for IMX.pdf | ClaimAggregator | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | Distributor | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | FarmingPool | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | IBorrowTracker | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | IBorrowable | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | IClaimable | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | IFarmingPool | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | IImx | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | IVester | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | Imx | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | InitializedDistributor | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | Math | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | OwnedDistributor | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | SafeMath | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | Vester | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | VesterSale | unmatched — not counted | — | — | no |
| CertiK Audit Report for IMX.pdf | VesterStepped | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | `0xcf0f95...7c3841` | BridgedToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf655c8...161dc6` | Ibex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x9f04b6...188e6a` | IBEX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xd299d5...4a7caa` | ImpermaxChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x089d3d...f0c824` | MultiBridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb8a9a9...dec24f` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5e1690...43127d` | Router01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7c79a1...a83ba0` | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x3039c2...9f461f` | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x447b4e...713a02` | Router03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3271cc...fa05d5` | SimpleUniswapOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xc12e00...47fb6c` | SimpleUniswapOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x566592...a2d57b` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xf972da...b298f6` | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 432 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 95 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=3
- Match method counts: n/a

Zero-match audit list:

- [13286] 2025-02-08_Impermax.pdf
- [13287] Bailsec - Impermax - V3 Core - Final Report.pdf
- [16479] CertiK Audit Report for impermax-x-uniswapv2-core.pdf
- [16480] SC_impermax_core.pdf
- [16483] spaces/ZSqnl0TPTc6pWBHLuHur/uploads/QLbxcYMLJhQNoWJKXQo6/Impermax Tokenized Aerodrome Report.pdf
- [16484] spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf
- [16485] CertiK Audit Report for IMX.pdf
- [16486] SC_impermax_periphery.pdf
- [16487] SC_impermax_oracle.pdf

Fork inheritance lineage and inherited audits are included when available.
