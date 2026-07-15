# Agentic Audit Brief: Bunni

## Export Authority

- Production state: **published scope**
- Raw selected rows: 20 across 4 audit(s)
- Eligible audit results: 7 (4 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Bunni (`bunni`)
- Website: [https://bunni.xyz](https://bunni.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, optimism, polygon, sepolia, unichain
- Contract surface: 160 unique implementations (160 raw deployments)
- Coverage basis: 8/18 confirmed own live verified implementations (44.4%); conservative 44.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $325,902.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Bunni. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across arbitrum, base, bsc, ethereum, sepolia, unichain. Structural roles: 16 core, 1 supporting, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: core (16), supporting (1), unclassified (1)
- Contract kinds: contract (17), unclassified (1)
- Detected standards: ownable (11), erc20 (3), erc20permit (3), eip1271 (1)
- Frameworks: solady (16), openzeppelin (7), permit2 (3), solmate (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 70 contracts are derived from known codebases. 70 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x000000...8a2d05`, chain 1)
- UnnamedContract (`0x000000...e2124f`, chain 1)
- UnnamedContract (`0x000000...6ae55c`, chain 1)
- UnnamedContract (`0x000000...ce1442`, chain 1)
- UnnamedContract (`0x000000...b765f1`, chain 56)
- UnnamedContract (`0x000000...8adb93`, chain 56)
- UnnamedContract (`0x000000...429e0d`, chain 56)
- UnnamedContract (`0x000000...151edb`, chain 56)
- UnnamedContract (`0x000000...7aa1f6`, chain 56)
- UnnamedContract (`0x000000...8a2d05`, chain 56)
- UnnamedContract (`0x000000...e2124f`, chain 56)
- UnnamedContract (`0x000000...0b8760`, chain 56)
- UnnamedContract (`0x000000...6ae55c`, chain 56)
- UnnamedContract (`0x000000...0a14ea`, chain 56)
- UnnamedContract (`0x000000...9e78b0`, chain 56)
- UnnamedContract (`0x000000...1345b3`, chain 56)
- UnnamedContract (`0x000052...791888`, chain 56)
- UnnamedContract (`0x000000...b765f1`, chain 130)
- UnnamedContract (`0x000000...8adb93`, chain 130)
- UnnamedContract (`0x000000...429e0d`, chain 130)
- UnnamedContract (`0x000000...151edb`, chain 130)
- UnnamedContract (`0x000000...7aa1f6`, chain 130)
- UnnamedContract (`0x000000...8a2d05`, chain 130)
- UnnamedContract (`0x000000...e2124f`, chain 130)
- UnnamedContract (`0x000000...0b8760`, chain 130)
- UnnamedContract (`0x000000...6ae55c`, chain 130)
- UnnamedContract (`0x000000...0a14ea`, chain 130)
- UnnamedContract (`0x000000...9e78b0`, chain 130)
- UnnamedContract (`0x000052...791888`, chain 130)
- UnnamedContract (`0x000000...b765f1`, chain 8453)
- UnnamedContract (`0x000000...8adb93`, chain 8453)
- UnnamedContract (`0x000000...429e0d`, chain 8453)
- UnnamedContract (`0x000000...151edb`, chain 8453)
- UnnamedContract (`0x000000...7aa1f6`, chain 8453)
- UnnamedContract (`0x000000...8a2d05`, chain 8453)
- UnnamedContract (`0x000000...e2124f`, chain 8453)
- UnnamedContract (`0x000000...0b8760`, chain 8453)
- UnnamedContract (`0x000000...6ae55c`, chain 8453)
- UnnamedContract (`0x000000...0a14ea`, chain 8453)
- UnnamedContract (`0x000000...c45ba9`, chain 8453)
- UnnamedContract (`0x000000...9e78b0`, chain 8453)
- UnnamedContract (`0x000000...7d0d59`, chain 8453)
- UnnamedContract (`0x000052...791888`, chain 8453)
- UnnamedContract (`0x000000...b765f1`, chain 42161)
- UnnamedContract (`0x000000...8adb93`, chain 42161)
- UnnamedContract (`0x000000...6ae55c`, chain 42161)
- UnnamedContract (`0x000000...0a14ea`, chain 42161)
- UnnamedContract (`0x000000...c45ba9`, chain 42161)
- UnnamedContract (`0x000000...9e78b0`, chain 42161)
- UnnamedContract (`0x000000...1345b3`, chain 42161)
- UnnamedContract (`0x000000...7d0d59`, chain 42161)
- UnnamedContract (`0x0000eb...a71888`, chain 42161)
- BUNNI (`0x000000...1345b3`, chain 1)
- BunniHook (`0x000052...791888`, chain 1)
- BunniHookOracle (`0x000000...c45ba9`, chain 1)
- BunniHub (`0x000000...b765f1`, chain 1)
- BunniZapIn (`0x000000...8adb93`, chain 1)
- BunniZone (`0x000000...0a14ea`, chain 1)
- CarpetedDoubleGeometricDistribution (`0x000000...429e0d`, chain 1)
- CarpetedGeometricDistribution (`0x000000...7aa1f6`, chain 1)
- DoubleGeometricDistribution (`0x000000...151edb`, chain 1)
- FeeDistributor (`0x000000...4b70e8`, chain 1)
- L2BUNNI (`0x000000...1345b3`, chain 8453)
- MasterBunni (`0x000000...9e78b0`, chain 1)
- OptionsToken (`0x000000...7d0d59`, chain 1)
- OracleUniGeoDistribution (`0x000000...f0c33c`, chain 1)
- TokenMigrator (`0x000000...7ad811`, chain 1)
- UniformDistribution (`0x000000...0b8760`, chain 1)
- VeAirdrop (`0x000000...5375f0`, chain 1)
- Voting Escrow (`0x000000...a1bf77`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 18; live-surface rows included: 18 (18 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 70/123 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 8/18 (44.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 70 own, 21 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 69 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 70 of 160 unique; 90 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 8/24
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 136
- Unique implementations: 160
- Raw deployments: 160
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 44.4% (Cyfrin, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 7 | 29.2% | 2024-09 |
| Trail of Bits | Tier 1 | 7 | 29.2% | 2025-01 |
| Cyfrin | Tier 1 | 4 | 16.7% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BunniHook | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231337 | `0x000052...791888` | ✅ Audited |
| BunniHub | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231317 | `0x000000...b765f1` | ✅ Audited |
| BunniZone | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231327 | `0x000000...0a14ea` | ✅ Audited |
| CarpetedDoubleGeometricDistribution | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231319 | `0x000000...429e0d` | ✅ Audited |
| CarpetedGeometricDistribution | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231321 | `0x000000...7aa1f6` | ✅ Audited |
| DoubleGeometricDistribution | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231320 | `0x000000...151edb` | ✅ Audited |
| OracleUniGeoDistribution | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231323 | `0x000000...f0c33c` | ✅ Audited |
| UniformDistribution | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231325 | `0x000000...0b8760` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BUNNI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231334 | `0x000000...1345b3` | ⚠️ Unaudited |
| BunniHookOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231328 | `0x000000...c45ba9` | ⚠️ Unaudited |
| BunniLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb73f30...fbfd19` | ⚠️ Unaudited |
| BunniQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...b7a767` | ⚠️ Unaudited |
| BunniZapIn | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231318 | `0x000000...8adb93` | ⚠️ Unaudited |
| BuyTheDipGeometricDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...636936` | ⚠️ Unaudited |
| FeeDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231336 | `0x000000...4b70e8` | ⚠️ Unaudited |
| GeometricDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...9d2069` | ⚠️ Unaudited |
| L2BUNNI | unknown | project_anchor | own_supporting | 0 | base | unit-231440 | `0x000000...1345b3` | ⚠️ Unaudited |
| MasterBunni | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231331 | `0x000000...9e78b0` | ⚠️ Unaudited |
| OptionsToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231335 | `0x000000...7d0d59` | ⚠️ Unaudited |
| PermissionedBunniZone | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...90d0b0` | ⚠️ Unaudited |
| TimelessToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd0205...b4c341` | ⚠️ Unaudited |
| TokenMigrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231333 | `0x000000...7ad811` | ⚠️ Unaudited |
| VeAirdrop | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231330 | `0x000000...5375f0` | ⚠️ Unaudited |
| Voting Escrow | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231329 | `0x000000...a1bf77` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (136)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...18e0fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231322 | `0x000000...8a2d05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...a1e37a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231324 | `0x000000...e2124f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...76aea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231326 | `0x000000...6ae55c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...af8b47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...5880db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...90d0b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...0dbe0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...101e8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...51642f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...db21ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...afef88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...ce683d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...f1c5b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231332 | `0x000000...ce1442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...335aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...de5493` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000fe...f81888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0010d0...a41888` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231410 | `0x000000...b765f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231411 | `0x000000...8adb93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231412 | `0x000000...429e0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...b7a767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...9d2069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...636936` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231413 | `0x000000...151edb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...18e0fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231414 | `0x000000...7aa1f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231415 | `0x000000...8a2d05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...a1e37a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231416 | `0x000000...e2124f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...76aea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231417 | `0x000000...0b8760` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231418 | `0x000000...6ae55c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...af8b47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231419 | `0x000000...0a14ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...5880db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...0dbe0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...101e8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...ad4ce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...75b335` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...08a6c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...7781ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...51642f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...9ebbc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...db21ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...afef88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...ce683d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...8d2f19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...741ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...7b92e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231421 | `0x000000...9e78b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...13ca1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...968354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...f0462d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...f1c5b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231422 | `0x000000...1345b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...c8ba9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...89909f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...6bffec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...335aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...b134a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...63d8b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...de5493` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...636e30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...7ef3b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000000...330884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00001f...951888` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231424 | `0x000052...791888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0000fe...f81888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0010d0...a41888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x005af7...211888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x022eb8...f008a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-231380 | `0x000000...b765f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-231381 | `0x000000...8adb93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-231382 | `0x000000...429e0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-231383 | `0x000000...151edb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-231384 | `0x000000...7aa1f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-231385 | `0x000000...8a2d05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-231386 | `0x000000...e2124f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-231387 | `0x000000...0b8760` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-231388 | `0x000000...6ae55c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-231389 | `0x000000...0a14ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x000000...7781ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x000000...9ebbc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x000000...7b92e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-231391 | `0x000000...9e78b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x000000...89909f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-231394 | `0x000052...791888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x005af7...211888` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-231425 | `0x000000...b765f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-231426 | `0x000000...8adb93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-231428 | `0x000000...429e0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-231430 | `0x000000...151edb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-231432 | `0x000000...7aa1f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-231433 | `0x000000...8a2d05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-231434 | `0x000000...e2124f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-231435 | `0x000000...0b8760` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-231436 | `0x000000...6ae55c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-231437 | `0x000000...0a14ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-231438 | `0x000000...c45ba9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-231439 | `0x000000...9e78b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-231441 | `0x000000...7d0d59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-231442 | `0x000052...791888` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231395 | `0x000000...b765f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231396 | `0x000000...8adb93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231397 | `0x000000...6ae55c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231398 | `0x000000...0a14ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231399 | `0x000000...c45ba9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231402 | `0x000000...9e78b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231405 | `0x000000...1345b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231407 | `0x000000...7d0d59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231409 | `0x0000eb...a71888` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231338 | `0x000000...b7a767` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231339 | `0x000000...9d2069` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231340 | `0x000000...636936` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231341 | `0x000000...18e0fe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231342 | `0x000000...a1e37a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231343 | `0x000000...76aea5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231344 | `0x000000...af8b47` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231347 | `0x000000...0dbe0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231350 | `0x000000...75b335` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231351 | `0x000000...08a6c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231359 | `0x000000...741ac5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231362 | `0x000000...968354` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231365 | `0x000000...c8ba9a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231367 | `0x000000...6bffec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231369 | `0x000000...b134a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231371 | `0x000000...de5493` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231373 | `0x000000...7ef3b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231374 | `0x000000...330884` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231375 | `0x00001f...951888` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231376 | `0x0000fe...f81888` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231379 | `0x022eb8...f008a0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://reports.yaudit.dev/08-2022-Bunni) | yAudit | Audit | 2022 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [reports.yaudit.dev/reports/03-2022-Bunni-Zap](https://reports.yaudit.dev/03-2022-Bunni-Zap) | yAudit | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [reports.yaudit.dev/reports/05-2023-timeless-gauges](https://reports.yaudit.dev/05-2023-timeless-gauges) | yAudit | Audit | 2023-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Pashov Audit Group -- Bunni v2.1](https://github.com/pashov/audits/blob/master/team/pdf/Bunni-security-review-August.pdf) | Pashov Audit Group | Audit | 2024-09 | aging | Direct | contract_name | matched | 7 | 0 | 0 | 33 | high |
| [Trail of Bits -- Bunni v2.1](https://github.com/trailofbits/publications/blob/master/reviews/2025-01-bacon-labs-bunniv2-securityreview.pdf) | Trail of Bits | Audit | 2025-01 | aging | Direct | contract_name | matched | 7 | 0 | 0 | 11 | high |
| [Cyfrin -- Bunni v2.1](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-06-10-cyfrin-bunni-v2.1.pdf) | Cyfrin | Audit | 2025-06 | aging | Direct | contract_name | matched | 4 | 0 | 0 | 30 | high |
| [Cyfrin -- Bunni Fee Override Hooklet](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-07-19-cyfrin-bunni-fee-override-hooklet-v2.0.pdf) | Cyfrin | Audit | 2025-07 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19620] DL audit link — no match: The provided text is a navigation header with no contract names or audit details.
- [19621] reports.yaudit.dev/reports/03-2022-Bunni-Zap — no match: Only the report title 'Bunni Zap' is available; no explicit scope section or file paths found.
- [19622] reports.yaudit.dev/reports/05-2023-timeless-gauges — no match: The provided text is a footer/header snippet from an audit report page, not the full report content. No contract names or scope section are present.
- [19623] Pashov Audit Group -- Bunni v2.1 — matched: Extracted 39 contract names from the scope table on page 7. Audit date is the end date of the engagement period (September 22th).
- [19624] Trail of Bits -- Bunni v2.1 — matched: Extracted contract names from scope section, file paths, and detailed findings. Audit date from cover page.
- [19625] Cyfrin -- Bunni v2.1 — matched: Extracted contract names from scope section (src directory excluding interfaces and some lib/base files) and from findings. Audit date from cover page: June 11, 2025.
- [19626] Cyfrin -- Bunni Fee Override Hooklet — matched: Audit scope explicitly states 'limited to src/FeeOverrideHooklet.sol', but other contracts are referenced in findings as part of the broader system. Only FeeOverrideHooklet is in scope per the scope section.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| reports.yaudit.dev/reports/03-2022-Bunni-Zap | BunniZap | unmatched — not counted | — | Report title: 'Bunni Zap' | no |
| Pashov Audit Group -- Bunni v2.1 | BaseHook | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | Constants | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | ERC20Referrer | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | Errors | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | Permit2Enabled | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | ReentrancyGuard | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | SharedStructs | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | BuyTheDipGeometricDistribution | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | CarpetedDoubleGeometricDistribution | own contract | CarpetedDoubleGeometricDistribution (selected) `0x000000...429e0d` — deployed 2025-06-12 02:13:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pashov Audit Group -- Bunni v2.1 | CarpetedGeometricDistribution | own contract | CarpetedGeometricDistribution (selected) `0x000000...7aa1f6` — deployed 2025-06-12 02:13:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pashov Audit Group -- Bunni v2.1 | DoubleGeometricDistribution | own contract | DoubleGeometricDistribution (selected) `0x000000...151edb` — deployed 2025-06-12 02:12:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pashov Audit Group -- Bunni v2.1 | GeometricDistribution | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | LibBuyTheDipGeometricDistribution | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | LibCarpetedDoubleGeometricDistribution | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | LibCarpetedGeometricDistribution | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | LibDoubleGeometricDistribution | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | LibGeometricDistribution | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | LibUniformDistribution | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | ShiftMode | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | UniformDistribution | own contract | UniformDistribution (selected) `0x000000...0b8760` — deployed 2025-06-12 02:13:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pashov Audit Group -- Bunni v2.1 | AdditionalCurrencyLib | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | AmAmmPayload | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | BunniHookLogic | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | BunniHubLogic | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | BunniSwapMath | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | ExpMath | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | FeeMath | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | HookletLib | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | Math | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | Oracle | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | QueryLDF | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | QueryTWAP | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | VaultMath | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | BunniQuoter | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | PoolState | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | BunniHook | own contract | BunniHook (selected) `0x000052...791888` — deployed 2025-06-12 02:26:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pashov Audit Group -- Bunni v2.1 | BunniHub | own contract | BunniHub (selected) `0x000000...b765f1` — deployed 2025-06-12 02:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pashov Audit Group -- Bunni v2.1 | BunniToken | unmatched — not counted | — | listed in scope table | no |
| Pashov Audit Group -- Bunni v2.1 | BunniZone | own contract | BunniZone (selected) `0x000000...0a14ea` — deployed 2025-06-12 02:18:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pashov Audit Group -- Bunni v2.1 | AmAmm | unmatched — not counted | — | listed in scope table | no |
| Trail of Bits -- Bunni v2.1 | BunniHub | own contract | BunniHub (selected) `0x000000...b765f1` — deployed 2025-06-12 02:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trail of Bits -- Bunni v2.1 | BunniHubLogic | unmatched — not counted | — | listed in scope and detailed findings | no |
| Trail of Bits -- Bunni v2.1 | BunniHook | own contract | BunniHook (selected) `0x000052...791888` — deployed 2025-06-12 02:26:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trail of Bits -- Bunni v2.1 | BunniHookLogic | unmatched — not counted | — | listed in scope and detailed findings | no |
| Trail of Bits -- Bunni v2.1 | BunniToken | unmatched — not counted | — | listed in scope and detailed findings | no |
| Trail of Bits -- Bunni v2.1 | BunniQuoter | unmatched — not counted | — | listed in scope | no |
| Trail of Bits -- Bunni v2.1 | Oracle | unmatched — not counted | — | listed in scope | no |
| Trail of Bits -- Bunni v2.1 | AmAmm | unmatched — not counted | — | listed in scope and detailed findings | no |
| Trail of Bits -- Bunni v2.1 | BunniSwapMath | unmatched — not counted | — | listed in scope and detailed findings | no |
| Trail of Bits -- Bunni v2.1 | UniformDistribution | own contract | UniformDistribution (selected) `0x000000...0b8760` — deployed 2025-06-12 02:13:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trail of Bits -- Bunni v2.1 | GeometricDistribution | unmatched — not counted | — | listed in scope and automated testing | no |
| Trail of Bits -- Bunni v2.1 | CarpetedGeometricDistribution | own contract | CarpetedGeometricDistribution (selected) `0x000000...7aa1f6` — deployed 2025-06-12 02:13:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trail of Bits -- Bunni v2.1 | DoubleGeometricDistribution | own contract | DoubleGeometricDistribution (selected) `0x000000...151edb` — deployed 2025-06-12 02:12:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trail of Bits -- Bunni v2.1 | CarpetedDoubleGeometricDistribution | own contract | CarpetedDoubleGeometricDistribution (selected) `0x000000...429e0d` — deployed 2025-06-12 02:13:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trail of Bits -- Bunni v2.1 | BuyTheDipGeometricDistribution | unmatched — not counted | — | mentioned in testing section | no |
| Trail of Bits -- Bunni v2.1 | SwapMath | unmatched — not counted | — | detailed findings | no |
| Trail of Bits -- Bunni v2.1 | BunniZone | own contract | BunniZone (selected) `0x000000...0a14ea` — deployed 2025-06-12 02:18:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trail of Bits -- Bunni v2.1 | AmAmmPayload | unmatched — not counted | — | detailed findings | no |
| Cyfrin -- Bunni v2.1 | BunniHub | own contract | BunniHub (selected) `0x000000...b765f1` — deployed 2025-06-12 02:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cyfrin -- Bunni v2.1 | BunniToken | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | BunniHook | own contract | BunniHook (selected) `0x000052...791888` — deployed 2025-06-12 02:26:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cyfrin -- Bunni v2.1 | BunniHookLogic | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | BunniQuoter | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | AmAmm | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | UniformDistribution | own contract | UniformDistribution (selected) `0x000000...0b8760` — deployed 2025-06-12 02:13:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cyfrin -- Bunni v2.1 | LibUniformDistribution | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | LibBuyTheDipGeometricDistribution | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | GeometricDistributionLDF | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | OracleUniGeoDistribution | own contract | OracleUniGeoDistribution (selected) `0x000000...f0c33c` — deployed 2025-06-12 02:15:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cyfrin -- Bunni v2.1 | ERC20Referrer | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | QueryLDF | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | IdleBalanceLibrary | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | LibMulticaller | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | HookletLib | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | BunniOracle | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | RebalanceLogic | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | FloodPlain | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | Hooks | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | IFulfiller | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | IAmAmm | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | IHooklet | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | ILiquidityDensityFunction | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | IPoolManager | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | IPermit2 | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | ERC4626 | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | WETH | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | MockLDF | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | ERC4626Mock | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | MaliciousERC4626 | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | CustomHook | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | ThirdPartyFulfiller | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni v2.1 | FloodPlainPoC | unmatched — not counted | — | listed in scope | no |
| Cyfrin -- Bunni Fee Override Hooklet | FeeOverrideHooklet | unmatched — not counted | — | Audit scope: 'The scope of this audit is limited to src/FeeOverrideHooklet.sol' | no |
| Cyfrin -- Bunni Fee Override Hooklet | IHooklet | unmatched — not counted | — | Referenced in findings (e.g., IHooklet::afterSwap) | no |
| Cyfrin -- Bunni Fee Override Hooklet | HookletLib | unmatched — not counted | — | Referenced in findings (e.g., HookletLib::hookletBeforeSwap) | no |
| Cyfrin -- Bunni Fee Override Hooklet | BunniQuoter | unmatched — not counted | — | Referenced in findings (e.g., BunniQuoter::quoteSwap) | no |
| Cyfrin -- Bunni Fee Override Hooklet | BunniHookLogic | unmatched — not counted | — | Referenced in findings (e.g., BunniHookLogic::beforeSwap) | no |
| Cyfrin -- Bunni Fee Override Hooklet | BunniHook | own contract | BunniHook (selected) `0x000052...791888` — deployed 2025-06-12 02:26:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cyfrin -- Bunni Fee Override Hooklet | BunniToken | unmatched — not counted | — | Referenced in findings (e.g., BunniToken ownership) | no |
| Cyfrin -- Bunni Fee Override Hooklet | BunniHub | own contract | BunniHub (selected) `0x000000...b765f1` — deployed 2025-06-12 02:10:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x000000...1345b3` | BUNNI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x000000...c45ba9` | BunniHookOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x000000...8adb93` | BunniZapIn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x000000...4b70e8` | FeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x000000...1345b3` | L2BUNNI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x000000...9e78b0` | MasterBunni | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x000000...7d0d59` | OptionsToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x000000...7ad811` | TokenMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x000000...5375f0` | VeAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x000000...a1bf77` | Voting Escrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 136 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 20 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 81 unmatched
- Matched-own operational status: 20 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=3
- Match method counts: unique_name=20

Zero-match audit list:

- [19620] DL audit link
- [19621] reports.yaudit.dev/reports/03-2022-Bunni-Zap
- [19622] reports.yaudit.dev/reports/05-2023-timeless-gauges

Fork inheritance lineage and inherited audits are included when available.
