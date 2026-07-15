# Agentic Audit Brief: Gravita Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Gravita Protocol (`gravita-protocol`)
- Website: [https://docs.gravitaprotocol.com/gravita-docs](https://docs.gravitaprotocol.com/gravita-docs)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, linea, mantle, optimism, polygon-zkevm, zksync-era
- Contract surface: 122 unique implementations (122 raw deployments)
- Coverage basis: 0/9 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $281,914.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Gravita Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across arbitrum, ethereum, linea, mantle, optimism, polygon-zkevm, zksync-era. Structural roles: 5 infra, 3 core, 1 supporting. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: infra (5), core (3), supporting (1)
- Contract kinds: contract (9)
- Detected standards: erc1967proxy (5), ownable (3), erc20 (2), erc165 (1), erc20permit (1)
- Frameworks: openzeppelin (8), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 5

## Fork Analysis

1 of 98 contracts are derived from known codebases. 97 contracts have no detected origin.

### Forked Contracts

**GravitaDebtToken** (`0x894134...cb9487`, chain 10)
Origin: zerolend (`0x894134...cb9487`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2b0024...759dc9`, chain 1)
- UnnamedContract (`0x2bca03...9990e2`, chain 1)
- UnnamedContract (`0x4928c8...db3d14`, chain 1)
- UnnamedContract (`0x4f39f1...0356a6`, chain 1)
- UnnamedContract (`0x57a195...cd23cc`, chain 1)
- UnnamedContract (`0x844466...e72b35`, chain 1)
- UnnamedContract (`0x89f1ec...070351`, chain 1)
- UnnamedContract (`0xc49b73...c631d0`, chain 1)
- UnnamedContract (`0xdb5dac...ce0977`, chain 1)
- UnnamedContract (`0xf31d88...1d18ce`, chain 1)
- UnnamedContract (`0xf7cc67...3a1f53`, chain 1)
- UnnamedContract (`0x24ae02...8b09e7`, chain 10)
- UnnamedContract (`0x326398...cf3b27`, chain 10)
- UnnamedContract (`0x40e0e2...d45c20`, chain 10)
- UnnamedContract (`0x5bd5b4...5c92ee`, chain 10)
- UnnamedContract (`0x6adaa3...4046ca`, chain 10)
- UnnamedContract (`0x6b4258...850637`, chain 10)
- UnnamedContract (`0x82e34e...c94c5d`, chain 10)
- UnnamedContract (`0x8bbf5c...ca3e44`, chain 10)
- UnnamedContract (`0x9d8bb5...214b6d`, chain 10)
- UnnamedContract (`0xc818f8...0af15c`, chain 10)
- UnnamedContract (`0xc8a25e...53a9f8`, chain 10)
- UnnamedContract (`0x03569d...cadde9`, chain 324)
- UnnamedContract (`0x086d09...4dda31`, chain 324)
- UnnamedContract (`0x1b137f...d62dcf`, chain 324)
- UnnamedContract (`0x23d57c...eaed63`, chain 324)
- UnnamedContract (`0x285bc3...ba91e1`, chain 324)
- UnnamedContract (`0x3ec7a7...c5964c`, chain 324)
- UnnamedContract (`0x441f6b...3f805a`, chain 324)
- UnnamedContract (`0x48df38...d351ea`, chain 324)
- UnnamedContract (`0x4e5ec0...f95fe1`, chain 324)
- UnnamedContract (`0x5fc44e...2af709`, chain 324)
- UnnamedContract (`0x8d9cdd...dc6303`, chain 324)
- UnnamedContract (`0xd085fd...7a25bf`, chain 324)
- UnnamedContract (`0xdace04...ef5a0f`, chain 324)
- UnnamedContract (`0xe5b388...5ae48b`, chain 324)
- UnnamedContract (`0x0d2c4a...cb2a09`, chain 1101)
- UnnamedContract (`0x24ae02...8b09e7`, chain 1101)
- UnnamedContract (`0x40e0e2...d45c20`, chain 1101)
- UnnamedContract (`0x42865c...c3b1be`, chain 1101)
- UnnamedContract (`0x532e0c...f81b75`, chain 1101)
- UnnamedContract (`0x57a195...cd23cc`, chain 1101)
- UnnamedContract (`0x5bd5b4...5c92ee`, chain 1101)
- UnnamedContract (`0x5c3b45...d3f525`, chain 1101)
- UnnamedContract (`0x6b4258...850637`, chain 1101)
- UnnamedContract (`0x82e34e...c94c5d`, chain 1101)
- UnnamedContract (`0x9d8bb5...214b6d`, chain 1101)
- UnnamedContract (`0xc818f8...0af15c`, chain 1101)
- UnnamedContract (`0xc8a25e...53a9f8`, chain 1101)
- UnnamedContract (`0xca68ad...a3fe66`, chain 1101)
- UnnamedContract (`0x103087...516611`, chain 5000)
- UnnamedContract (`0x15f744...1eefe4`, chain 5000)
- UnnamedContract (`0x4f39f1...0356a6`, chain 5000)
- UnnamedContract (`0x532e0c...f81b75`, chain 5000)
- UnnamedContract (`0x53525a...2443e4`, chain 5000)
- UnnamedContract (`0x5c3b45...d3f525`, chain 5000)
- UnnamedContract (`0x6adaa3...4046ca`, chain 5000)
- UnnamedContract (`0x894134...cb9487`, chain 5000)
- UnnamedContract (`0xb7d276...02a783`, chain 5000)
- UnnamedContract (`0xc49b73...c631d0`, chain 5000)
- UnnamedContract (`0xdb5dac...ce0977`, chain 5000)
- UnnamedContract (`0xdc4409...f7fbfa`, chain 5000)
- UnnamedContract (`0xf31d88...1d18ce`, chain 5000)
- UnnamedContract (`0x15f744...1eefe4`, chain 42161)
- UnnamedContract (`0x4928c8...db3d14`, chain 42161)
- UnnamedContract (`0x4f39f1...0356a6`, chain 42161)
- UnnamedContract (`0x6adaa3...4046ca`, chain 42161)
- UnnamedContract (`0x844466...e72b35`, chain 42161)
- UnnamedContract (`0x894134...cb9487`, chain 42161)
- UnnamedContract (`0x89f1ec...070351`, chain 42161)
- UnnamedContract (`0x9d8bb5...214b6d`, chain 42161)
- UnnamedContract (`0xc49b73...c631d0`, chain 42161)
- UnnamedContract (`0xdb5dac...ce0977`, chain 42161)
- UnnamedContract (`0xf0e091...51b66a`, chain 42161)
- UnnamedContract (`0xf31d88...1d18ce`, chain 42161)
- UnnamedContract (`0x1a9942...5520a4`, chain 59144)
- UnnamedContract (`0x40e0e2...d45c20`, chain 59144)
- UnnamedContract (`0x42865c...c3b1be`, chain 59144)
- UnnamedContract (`0x53525a...2443e4`, chain 59144)
- UnnamedContract (`0x57a195...cd23cc`, chain 59144)
- UnnamedContract (`0x5bd5b4...5c92ee`, chain 59144)
- UnnamedContract (`0x894134...cb9487`, chain 59144)
- UnnamedContract (`0x9d8bb5...214b6d`, chain 59144)
- UnnamedContract (`0xad1b98...efbb2e`, chain 59144)
- UnnamedContract (`0xadea04...badd61`, chain 59144)
- UnnamedContract (`0xc818f8...0af15c`, chain 59144)
- UnnamedContract (`0xc8a25e...53a9f8`, chain 59144)
- UnnamedContract (`0xdc4409...f7fbfa`, chain 59144)
- UnnamedContract (`0xf0e091...51b66a`, chain 59144)
- CollSurplusPool (`0x09dfdf...cd3d7b`, chain 1)
- DebtToken (`0x15f744...1eefe4`, chain 1)
- ERC1967Proxy (`0x0a3137...b7bdfa`, chain 5000)
- GasPool (`0x40e0e2...d45c20`, chain 1)
- PriceFeedL2 (`0x15f744...1eefe4`, chain 10)
- SortedVessels (`0x0d2c4a...cb2a09`, chain 10)
- StabilityPool (`0x0a3137...b7bdfa`, chain 42161)
- Timelock (`0x09dfdf...cd3d7b`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 98/98 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/9 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 98 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 24 discovered implementations excluded (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Deployed-live implementations: 98 of 122 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 89
- Unique implementations: 122
- Raw deployments: 122
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x09dfdf...cd3d7b` | ⚠️ Unaudited |
| BorrowerOperations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x118e30...27d3a0` | ⚠️ Unaudited |
| CollSurplusPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-241537 | `0x09dfdf...cd3d7b` | ⚠️ Unaudited |
| ConstellationTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10a93d...4ed2f0` | ⚠️ Unaudited |
| DebtToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241444 | `0x15f744...1eefe4` | ⚠️ Unaudited |
| DefaultPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x24ae02...8b09e7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | mantle | unit-241541 | `0x0a3137...b7bdfa` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x0d2c4a...cb2a09` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d2c4a...cb2a09` | ⚠️ Unaudited |
| FixedPriceAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x118e30...27d3a0` | ⚠️ Unaudited |
| GasPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241447 | `0x40e0e2...d45c20` | ⚠️ Unaudited |
| gravETH_L2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17abbb...f2203b` | ⚠️ Unaudited |
| GravitaDebtToken | unknown | project_anchor | own_supporting | 0 | optimism | unit-241464 | `0x894134...cb9487` | ⚠️ Unaudited |
| GravitaProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8c6b0...7703a0` | ⚠️ Unaudited |
| MerkleClaimStreamer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x312717...65a04e` | ⚠️ Unaudited |
| NodeSetOperatorRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x087d8c...21804c` | ⚠️ Unaudited |
| OperatorDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x102809...fbabb9` | ⚠️ Unaudited |
| PoAConstellationOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x81c100...44cb07` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x725c68...4747d4` | ⚠️ Unaudited |
| PriceFeedL2 | unknown | project_anchor | own_supporting | 1 | optimism | unit-241539 | `0x15f744...1eefe4` | ⚠️ Unaudited |
| PriceFetcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6047fa...b06774` | ⚠️ Unaudited |
| RPLVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0aff8d...ba2b84` | ⚠️ Unaudited |
| SfrxEth2EthPriceAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03d9a5...6d35f3` | ⚠️ Unaudited |
| SortedVessels | unknown | project_anchor | own_supporting | 1 | optimism | unit-241538 | `0x0d2c4a...cb2a09` | ⚠️ Unaudited |
| StabilityPool | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-241540 | `0x0a3137...b7bdfa` | ⚠️ Unaudited |
| SuperNodeAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2a906f...ab6b29` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241497 | `0x09dfdf...cd3d7b` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x35e9a3...8833c9` | ⚠️ Unaudited |
| VesselManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d2c4a...cb2a09` | ⚠️ Unaudited |
| VesselManagerOperations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0a3137...b7bdfa` | ⚠️ Unaudited |
| WETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1c649f...5bf78b` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e6d3e...1169ad` | ⚠️ Unaudited |
| WstEth2UsdPriceAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8bbf5c...ca3e44` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (89)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241445 | `0x2b0024...759dc9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241446 | `0x2bca03...9990e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241448 | `0x4928c8...db3d14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241449 | `0x4f39f1...0356a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241450 | `0x57a195...cd23cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241451 | `0x844466...e72b35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241452 | `0x89f1ec...070351` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241453 | `0xc49b73...c631d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241454 | `0xdb5dac...ce0977` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241455 | `0xf31d88...1d18ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241456 | `0xf7cc67...3a1f53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241457 | `0x24ae02...8b09e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241458 | `0x326398...cf3b27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241459 | `0x40e0e2...d45c20` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241460 | `0x5bd5b4...5c92ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241461 | `0x6adaa3...4046ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241462 | `0x6b4258...850637` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241463 | `0x82e34e...c94c5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241465 | `0x8bbf5c...ca3e44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241466 | `0x9d8bb5...214b6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241467 | `0xc818f8...0af15c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-241468 | `0xc8a25e...53a9f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241483 | `0x03569d...cadde9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241484 | `0x086d09...4dda31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241485 | `0x1b137f...d62dcf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241486 | `0x23d57c...eaed63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241487 | `0x285bc3...ba91e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241488 | `0x3ec7a7...c5964c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241489 | `0x441f6b...3f805a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241490 | `0x48df38...d351ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241491 | `0x4e5ec0...f95fe1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241492 | `0x5fc44e...2af709` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241493 | `0x8d9cdd...dc6303` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241494 | `0xd085fd...7a25bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241495 | `0xdace04...ef5a0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-241496 | `0xe5b388...5ae48b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241469 | `0x0d2c4a...cb2a09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241470 | `0x24ae02...8b09e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241471 | `0x40e0e2...d45c20` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241472 | `0x42865c...c3b1be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241473 | `0x532e0c...f81b75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241474 | `0x57a195...cd23cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241475 | `0x5bd5b4...5c92ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241476 | `0x5c3b45...d3f525` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241477 | `0x6b4258...850637` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241478 | `0x82e34e...c94c5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241479 | `0x9d8bb5...214b6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241480 | `0xc818f8...0af15c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241481 | `0xc8a25e...53a9f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-241482 | `0xca68ad...a3fe66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241510 | `0x103087...516611` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241511 | `0x15f744...1eefe4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241512 | `0x4f39f1...0356a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241513 | `0x532e0c...f81b75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241514 | `0x53525a...2443e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241515 | `0x5c3b45...d3f525` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241516 | `0x6adaa3...4046ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241517 | `0x894134...cb9487` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241518 | `0xb7d276...02a783` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241519 | `0xc49b73...c631d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241520 | `0xdb5dac...ce0977` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241521 | `0xdc4409...f7fbfa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-241522 | `0xf31d88...1d18ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241498 | `0x15f744...1eefe4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241499 | `0x4928c8...db3d14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241500 | `0x4f39f1...0356a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241501 | `0x6adaa3...4046ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241502 | `0x844466...e72b35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241503 | `0x894134...cb9487` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241504 | `0x89f1ec...070351` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241505 | `0x9d8bb5...214b6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241506 | `0xc49b73...c631d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241507 | `0xdb5dac...ce0977` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241508 | `0xf0e091...51b66a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241509 | `0xf31d88...1d18ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241523 | `0x1a9942...5520a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241524 | `0x40e0e2...d45c20` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241525 | `0x42865c...c3b1be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241526 | `0x53525a...2443e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241527 | `0x57a195...cd23cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241528 | `0x5bd5b4...5c92ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241529 | `0x894134...cb9487` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241530 | `0x9d8bb5...214b6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241531 | `0xad1b98...efbb2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241532 | `0xadea04...badd61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241533 | `0xc818f8...0af15c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241534 | `0xc8a25e...53a9f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241535 | `0xdc4409...f7fbfa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-241536 | `0xf0e091...51b66a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [all Medium and Low findings were addressed.](https://hatsfinance.medium.com/gravita-audit-competition-final-writeup-dfb28463a0dc) | Hats Finance | Contest | 2023-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [- [Audits]()](https://docs.gravitaprotocol.com/gravita-docs/about-gravita-protocol/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17419] all Medium and Low findings were addressed. — no match: The document is a competition writeup, not a formal audit report. It mentions contract names like PriceFeed, VesselManagerOperations, StabilityPool, VesselManager, Timelock, SortedVessels, but these are not explicitly listed in a scope section. The date is the publication date of the writeup.
- [17420] - [Audits]() — no match: The provided text is a documentation page listing audit reports, not the audit reports themselves. No contract names or scope details are present.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x09dfdf...cd3d7b` | CollSurplusPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x15f744...1eefe4` | DebtToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x40e0e2...d45c20` | GasPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x894134...cb9487` | GravitaDebtToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x15f744...1eefe4` | PriceFeedL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0d2c4a...cb2a09` | SortedVessels | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0a3137...b7bdfa` | StabilityPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x09dfdf...cd3d7b` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 89 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=2
- Match method counts: n/a

Zero-match audit list:

- [17419] all Medium and Low findings were addressed.
- [17420] - [Audits]()

Fork inheritance lineage and inherited audits are included when available.
