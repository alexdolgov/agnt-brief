# Agentic Audit Brief: Etherex

## Export Authority

- Production state: **published scope**
- Raw selected rows: 18 across 3 audit(s)
- Eligible audit results: 4 (3 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Etherex (`etherex`)
- Website: [https://etherex.finance/](https://etherex.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: linea
- Contract surface: 85 unique implementations (143 raw deployments)
- Coverage basis: 13/29 confirmed own live verified implementations (44.8%); conservative 44.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,361,034.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Etherex. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 31 contract row(s) across linea. Structural roles: 22 supporting, 6 core, 2 infra, 1 unclassified. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 31
- Structural roles: supporting (22), core (6), infra (2), unclassified (1)
- Contract kinds: contract (30), abstract (1)
- Detected standards: erc165 (4), erc20 (3), multicall (3), erc721 (2), accesscontrol (1), erc1967proxy (1), erc20permit (1), erc4626 (1), ownable (1), pausable (1)
- Frameworks: openzeppelin (22), openzeppelin-upgradeable (2), permit2 (1), solmate (1)
- Upgradeable-pattern rows: 5

## Fork Analysis

6 of 29 contracts are derived from known codebases. 23 contracts have no detected origin.

### Forked Contracts

**ClGaugeFactory** (`0x499aed...dd8fcb`, chain 59144)
Origin: autofinance (`0x499aed...dd8fcb`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PairFactory** (`0xc0b920...644592`, chain 59144)
Origin: autofinance (`0xc0b920...644592`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**RamsesV3Factory** (`0xae334f...cf80f1`, chain 59144)
Origin: autofinance (`0xae334f...cf80f1`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**REX33** (`0xe4eeb4...f051c4`, chain 59144)
Origin: autofinance (`0xc4b578...31509c`)
Containment: 100.0% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**VoteModule** (`0xedd7cb...9c15b1`, chain 59144)
Origin: autofinance (`0xf70dc8...631ee4`)
Containment: 100.0% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**XRex** (`0xc93b31...f366cc`, chain 59144)
Origin: autofinance (`0x58d034...146997`)
Containment: 100.0% - 24 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- Etherex (`0xefd81e...31e348`, chain 59144)
- FeeCollector (`0x532c15...54e0f3`, chain 59144)
- FeeDistributorFactory (`0xfde487...e6b7bf`, chain 59144)
- FeeRecipientFactory (`0x75430c...02d6a7`, chain 59144)
- Minter (`0x0b6d3b...ecc3eb`, chain 59144)
- MixedRouteQuoterV1 (`0x59037f...3712a6`, chain 59144)
- NonfungibleTokenPositionDescriptor (`0xfc65c6...8453c4`, chain 59144)
- ProxyAdmin (`0x3950d9...542dc3`, chain 59144)
- ProxyAdmin (`0xdc78e9...3d384e`, chain 59144)
- Quoter (`0xb593fa...4fe335`, chain 59144)
- QuoterV2 (`0xe660c9...aba037`, chain 59144)
- RamsesV3PoolDeployer (`0x80dca1...c7bec8`, chain 59144)
- RamsesV3PositionManager (`0xb56542...cd1798`, chain 59144)
- Router (`0x32db39...929c54`, chain 59144)
- SafeProxy (`0x007e78...539cce`, chain 59144)
- SafeProxy (`0xde4b22...d388f7`, chain 59144)
- SwapRouter (`0x8be024...a5052a`, chain 59144)
- TickLens (`0x432a52...e8e2b8`, chain 59144)
- TimeLock (`0xf9a153...d89944`, chain 59144)
- TransparentUpgradeableProxy (`0x683035...8ed5f3`, chain 59144)
- TransparentUpgradeableProxy (`0x942117...f889c1`, chain 59144)
- UniswapInterfaceMulticall (`0x1211fb...ee5b3e`, chain 59144)
- UniversalRouter (`0x859744...07826e`, chain 59144)

## Contract Surface Quality

- Logic-topography rows: 31; live-surface rows included: 31 (29 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/32 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 13/29 (44.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 54 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Confirmed-live implementations: 29 of 85 unique; 56 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 13/68
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 85
- Raw deployments: 143
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 13 match-unverified
- Tier 1 coverage: 44.8% (Code4rena, ConsenSys Diligence, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 13 | 19.1% | 2025-10 |
| Code4rena | Tier 1 | 3 | 4.4% | 2024-10 |
| Consensys Diligence | Tier 1 | 2 | 2.9% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessHub | unknown | project_anchor | own_supporting | 1 | linea | unit-385023 | `0x683035...8ed5f3` | ✅ Audited |
| Etherex | unknown | project_anchor | own_supporting | 0 | linea | unit-385017 | `0xefd81e...31e348` | ✅ Audited |
| FeeCollector | unknown | project_anchor | own_supporting | 0 | linea | unit-385001 | `0x532c15...54e0f3` | ✅ Audited |
| FeeDistributorFactory | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-385020 | `0xfde487...e6b7bf` | ✅ Audited |
| GaugeV3 | operational_periphery | project_anchor | own_supporting | 1 | linea | unit-385022 | `0x499aed...dd8fcb` | ✅ Audited |
| Minter | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-384996 | `0x0b6d3b...ecc3eb` | ✅ Audited |
| RamsesV3Factory | registry | project_anchor | own_supporting | 0 | linea | unit-385008 | `0xae334f...cf80f1` | ✅ Audited |
| RamsesV3PoolDeployer | core_logic | project_anchor | own_supporting | 0 | linea | unit-385005 | `0x80dca1...c7bec8` | ✅ Audited |
| RamsesV3PositionManager | governance | project_anchor | own_supporting | 1 | linea | unit-385026 | `0xb56542...cd1798` | ✅ Audited |
| REX33 | unknown | project_anchor | own_supporting | 0 | linea | unit-385014 | `0xe4eeb4...f051c4` | ✅ Audited |
| VoteModule | unknown | project_anchor | own_supporting | 0 | linea | unit-385016 | `0xedd7cb...9c15b1` | ✅ Audited |
| Voter | unknown | project_anchor | own_supporting | 1 | linea | unit-385025 | `0x942117...f889c1` | ✅ Audited |
| XRex | unknown | project_anchor | own_supporting | 0 | linea | unit-385011 | `0xc93b31...f366cc` | ✅ Audited |

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 26 deployments: linea `0x00cc29...423b67`; linea `0x09aaa5...fbea2a`; linea `0x09d128...fc72a3`; linea `0x0cc5a7...2d666c`; linea `0x0d8ff3...e66422`; linea `0x3fd55d...d6d071`; linea `0x44f551...22f508`; linea `0x51a269...e80006`; linea `0x55cab4...4b40b1`; linea `0x582f3f...031c7a`; linea `0x5aae85...da036b`; linea `0x5e2f4d...e4b4e7`; linea `0x6a0673...1c99c1`; linea `0x7026f9...8dd004`; linea `0x7ac793...8c9026`; linea `0x8af8a0...71b734`; linea `0x8e394f...5b49e1`; linea `0x93948c...4351ed`; linea `0x967a7a...37854c`; linea `0x9ce2fb...709346`; linea `0xb61396...31a7b6`; linea `0xb66d0c...9fd40b`; linea `0xbb100b...008e31`; linea `0xd434fe...06805e`; linea `0xe345ad...ddc6bc`; linea `0xe6d0d3...cb5298` | ⚠️ Unaudited |
| AutomatedFeeNotifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 8 deployments: linea `0x2e5c9e...7c10df`; linea `0x4bc655...6cb1f3`; linea `0x4dd0c2...ea2a4c`; linea `0x5ad9ec...b0e48c`; linea `0xb0b55d...af5939`; linea `0xbf0743...780d36`; linea `0xd7cb73...81ac2c`; linea `0xfd29fa...cf80e7` | ⚠️ Unaudited |
| BribeHolder | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf7a8b3...f9ea9b` | ⚠️ Unaudited |
| Etherex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0xbe8b8d...69f11d`; linea `0xf0c89c...0bd9eb` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x51a2a0...7f21a1` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc2b256...767b7c` | ⚠️ Unaudited |
| FeeDistributorFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x61c56a...6f3f6f` | ⚠️ Unaudited |
| FeeLiquidator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x3add83...ba039b`; linea `0xe78966...98e856` | ⚠️ Unaudited |
| FeeRecipientFactory | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-385004 | `0x75430c...02d6a7` | ⚠️ Unaudited |
| FrogAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x97b1b7...e38912`; linea `0xbe9d87...3a78c3` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | linea | unit-385012 | `0xd766d9...c4a200` | ⚠️ Unaudited |
| GaugeV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 5 deployments: linea `0x18068c...3b0b25`; linea `0x84b465...04201b`; linea `0x9270d3...f81a74`; linea `0x9d5c0e...dc9cb4`; linea `0xeba9eb...eacb40` | ⚠️ Unaudited |
| KingdomLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf9edb3...63fd87` | ⚠️ Unaudited |
| LGEHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x4c4190...b224ce`; linea `0x6b43ac...7c8812` | ⚠️ Unaudited |
| MevModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x614f11...703abd`; linea `0xdf2787...088d5b` | ⚠️ Unaudited |
| MevModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x90fc1f...b4940d` | ⚠️ Unaudited |
| MinimalizedFeePusher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x1b4e17...1c4efb`; linea `0x98af61...eb4a8c` | ⚠️ Unaudited |
| Minter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: linea `0x462e26...d2a966`; linea `0x76da79...da9f8f`; linea `0xf83962...0b6255` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | project_anchor | own_supporting | 0 | linea | unit-385002 | `0x59037f...3712a6` | ⚠️ Unaudited |
| NileLGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5b93eb...d5a605` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | linea | unit-385024 | `0xa04a9f...bb2f58` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | project_anchor | own_supporting | 0 | linea | unit-385019 | `0xfc65c6...8453c4` | ⚠️ Unaudited |
| Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x389df9...7e7d55` | ⚠️ Unaudited |
| Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8418e9...4d81d8` | ⚠️ Unaudited |
| PairFactory | registry | project_anchor | own_supporting | 0 | linea | unit-385010 | `0xc0b920...644592` | ⚠️ Unaudited |
| Position | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2832e1...bf9d6f` | ⚠️ Unaudited |
| ProtocolActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x34413f...3140fd` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | linea | unit-384999 | `0x3950d9...542dc3` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | linea | unit-385013 | `0xdc78e9...3d384e` | ⚠️ Unaudited |
| Quoter | periphery | project_anchor | own_supporting | 0 | linea | unit-385009 | `0xb593fa...4fe335` | ⚠️ Unaudited |
| QuoterV2 | periphery | project_anchor | own_supporting | 0 | linea | unit-385015 | `0xe660c9...aba037` | ⚠️ Unaudited |
| RamsesSwapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x222da5...1e158e` | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x020079...d3200e`; linea `0x0efaae...31693b` | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x15325a...5636a5` | ⚠️ Unaudited |
| RamsesV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x90e8a5...44914b` | ⚠️ Unaudited |
| RamsesV3PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4e710f...272bfb` | ⚠️ Unaudited |
| Revivoor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5da973...c5a3e9` | ⚠️ Unaudited |
| RewardValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x7930ec...b1e0fc`; linea `0xe57600...c0a97c` | ⚠️ Unaudited |
| REX33 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x312b67...433ec0`; linea `0xbf42f6...639dff`; linea `0xc4b578...31509c`; linea `0xccfc11...f15749` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | linea | unit-384998 | `0x32db39...929c54` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | linea | unit-385021 | `0xde4b22...d388f7` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 0 | linea | unit-384995 | `0x007e78...539cce` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | linea | unit-385007 | `0x8be024...a5052a` | ⚠️ Unaudited |
| TickLens | periphery | project_anchor | own_supporting | 0 | linea | unit-385000 | `0x432a52...e8e2b8` | ⚠️ Unaudited |
| TimeLock | governance | project_anchor | own_supporting | 0 | linea | unit-385018 | `0xf9a153...d89944` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0xf26431...1bb458` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | project_anchor | own_supporting | 0 | linea | unit-384997 | `0x1211fb...ee5b3e` | ⚠️ Unaudited |
| UniversalAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xae16b9...d13dcf` | ⚠️ Unaudited |
| UniversalRouter | adapter | project_anchor | own_supporting | 0 | linea | unit-385006 | `0x859744...07826e` | ⚠️ Unaudited |
| VeClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x9dec69...269cad`; linea `0xce65f3...2d4c6d` | ⚠️ Unaudited |
| VoteModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf70dc8...631ee4` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 8 deployments: linea `0x1dac11...a94046`; linea `0x4961f7...fc7679`; linea `0x5f26a6...06fc19`; linea `0x706e4a...f157e1`; linea `0x891d28...45141c`; linea `0xa0b937...d4f116`; linea `0xade917...9d56d1`; linea `0xe8e8e8...2f8468` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x56ebcf...dd256f`; linea `0x982c01...caa125` | ⚠️ Unaudited |
| XRex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x58d034...146997` | ⚠️ Unaudited |
| YieldFarmingIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0449ec...b6b631` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x05733c...ec3289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x09666e...d239c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0ed01d...750acc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1ddf72...7944b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x35e755...ad5a69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3f91dd...3e7ce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x471750...eb3e34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4f919b...af1415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7601df...7497b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x762e61...7ecb16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x88c987...d56756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x971634...461ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc0cd56...da1c2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcd73c9...635d61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd0dad8...1c3f5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf458a2...7f3d8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfb8561...c4950d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e](https://cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e) | Spearbit | Audit | 2025-10 | fresh | Direct | n/a | matched | 14 | 5 | 0 | 9 | n/a |
| [cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c](https://cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c) | Spearbit | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [diligence.security/audits/2024/08/ramses-v3](https://diligence.security/audits/2024/08/ramses-v3) | Consensys Diligence | Audit | 2024-08 | aging | Direct | n/a | matched | 2 | 0 | 0 | 15 | n/a |
| [code4rena.com/reports/2024-10-ramses-exchange](https://code4rena.com/reports/2024-10-ramses-exchange) | Code4rena | Contest | 2024-10 | aging | Direct | n/a | matched | 3 | 1 | 0 | 3 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2724] cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e — matched: No reason recorded
- [2725] cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c — no match: No scope section or contract names found in the provided text.
- [11903] diligence.security/audits/2024/08/ramses-v3 — matched: No reason recorded
- [11904] code4rena.com/reports/2024-10-ramses-exchange — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | AccessHub | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x683035...8ed5f3` — deployed 2025-07-25 04:42:22+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | ClGaugeFactory | own proxy deployment | ClGaugeFactory (proxy) (selected) `0x499aed...dd8fcb` — deployed 2025-08-04 06:55:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | ClGaugeFactoryStorage | unmatched — not counted | — | — | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Etherex | own contract | Etherex (selected) `0xefd81e...31e348` — deployed 2025-08-04 06:55:26+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | FeeCollector | own contract | FeeCollector (selected) `0x532c15...54e0f3` — deployed 2025-08-07 06:39:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | FeeDistributor | unmatched — not counted | — | — | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | FeeDistributorFactory | own contract | FeeDistributorFactory (selected) `0xfde487...e6b7bf` — deployed 2025-08-04 06:55:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Gauge | unmatched — not counted | — | — | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | GaugeV3 | own proxy deployment | ClGaugeFactory (proxy) (selected) `0x499aed...dd8fcb` — deployed 2025-08-04 06:55:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Minter | own contract | Minter (selected) `0x0b6d3b...ecc3eb` — deployed 2025-08-04 06:55:22+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | NonfungiblePositionManager | unmatched — not counted | — | — | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | PositionKey | unmatched — not counted | — | — | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | REX33 | own contract | REX33 (selected) `0xe4eeb4...f051c4` — deployed 2025-08-11 22:21:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesTreasuryHelper | unmatched — not counted | — | — | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesV3Factory | own contract | RamsesV3Factory (selected) `0xae334f...cf80f1` — deployed 2025-07-25 04:42:24+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesV3Pool | unmatched — not counted | — | — | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesV3PoolDeployer | own contract | RamsesV3PoolDeployer (selected) `0x80dca1...c7bec8` — deployed 2025-07-25 04:42:24+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesV3PositionManager | own proxy deployment | RamsesV3PositionManager (proxy) (selected) `0xb56542...cd1798` — deployed 2025-12-12 22:22:04+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RewardValidator | unmatched — not counted | — | — | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | VoteModule | own contract | VoteModule (selected) `0xedd7cb...9c15b1` — deployed 2025-08-04 06:55:30+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Voter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x942117...f889c1` — deployed 2025-08-04 06:55:30+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | VoterGovernanceActions | unmatched — not counted | — | — | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | XRex | own contract | XRex (selected) `0xc93b31...f366cc` — deployed 2025-08-04 06:55:30+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2024/08/ramses-v3 | IERC20Minimal | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | IRamsesV3Factory | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | IRamsesV3Pool | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | IRamsesV3PoolActions | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | IRamsesV3PoolDeployer | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | IRamsesV3PoolDerivedState | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | IRamsesV3PoolImmutables | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | IRamsesV3PoolOwnerActions | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | IRamsesV3PoolState | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | Oracle | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | PoolStorage | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | Position | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | ProtocolActions | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3Factory | own contract | RamsesV3Factory (selected) `0xae334f...cf80f1` — deployed 2025-07-25 04:42:24+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3Pool | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3PoolDeployer | own contract | RamsesV3PoolDeployer (selected) `0x80dca1...c7bec8` — deployed 2025-07-25 04:42:24+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2024/08/ramses-v3 | Tick | unmatched — not counted | — | — | no |
| code4rena.com/reports/2024-10-ramses-exchange | FeeCollector | own contract | FeeCollector (selected) `0x532c15...54e0f3` — deployed 2025-08-07 06:39:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | GaugeV3 | own proxy deployment | ClGaugeFactory (proxy) (selected) `0x499aed...dd8fcb` — deployed 2025-08-04 06:55:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | NonfungiblePositionManager | unmatched — not counted | — | — | no |
| code4rena.com/reports/2024-10-ramses-exchange | Oracle | unmatched — not counted | — | — | no |
| code4rena.com/reports/2024-10-ramses-exchange | RamsesV3Factory | own contract | RamsesV3Factory (selected) `0xae334f...cf80f1` — deployed 2025-07-25 04:42:24+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | RamsesV3Pool | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | `0x75430c...02d6a7` | FeeRecipientFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x59037f...3712a6` | MixedRouteQuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xfc65c6...8453c4` | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xc0b920...644592` | PairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xb593fa...4fe335` | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xe660c9...aba037` | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x32db39...929c54` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x8be024...a5052a` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x432a52...e8e2b8` | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xf9a153...d89944` | TimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x859744...07826e` | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 62 |
| upstream | 1 |
| standard_library | 5 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 19 own (6 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 27 unmatched
- Matched-own operational status: 19 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: unique_name=18

Zero-match audit list:

- [2725] cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c

Fork inheritance lineage and inherited audits are included when available.
