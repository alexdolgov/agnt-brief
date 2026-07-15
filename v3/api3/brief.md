# Agentic Audit Brief: Api3

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Api3 (`api3`)
- Website: [https://api3.org/](https://api3.org/)
- Lifecycle: active (Tier 0, 16.4% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: apechain, apechain-curtis, arbitrum, arbitrum-sepolia, avalanche, avalanche-fuji, base, base-sepolia, bob, bsc, bsc-testnet, chain-10200, chain-1114, chain-1439, chain-1946, chain-202601, chain-2221, chain-3441006, chain-4, chain-46630, chain-48898, chain-50312, chain-534351, chain-808813, chain-919, chain-998, core, ethereum, fraxtal, gnosis, hoodi, hyperliquid, injective-evm, katana, katana-bokuto, kava, linea, manta-pacific, mantle, mantle-sepolia, mode, moonbase-alpha, moonbeam, optimism, optimism-sepolia, polygon, polygon-amoy, robinhood, ronin, scroll, sei, sei-testnet, sepolia, somnia, soneium, sonic, sonic-testnet, taiko, taiko-hoodi, unichain, unichain-sepolia, world, world-sepolia, zircuit
- Contract surface: 558 unique implementations (560 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $43,286,735.41
- On-chain TVL (included contracts): $50,989,882.02
- TVL by chain: Ethereum $50,989,882.02

## Project Description

This brief describes the observed EVM deployment and audit surface for Api3. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across apechain, apechain-curtis, arbitrum, arbitrum-sepolia, avalanche, avalanche-fuji, base, base-sepolia, bob, bsc, bsc-testnet, chain-10200, chain-1114, chain-1439, chain-1946, chain-202601, chain-2221, chain-3441006, chain-4, chain-46630, chain-48898, chain-50312, chain-534351, chain-808813, chain-919, chain-998, core, ethereum, fraxtal, gnosis, hoodi, hyperliquid, injective-evm, katana, katana-bokuto, kava, linea, manta-pacific, mantle, mantle-sepolia, mode, moonbase-alpha, moonbeam, optimism, optimism-sepolia, polygon, polygon-amoy, robinhood, ronin, scroll, sei, sei-testnet, sepolia, somnia, soneium, sonic, sonic-testnet, taiko, taiko-hoodi, unichain, unichain-sepolia, world, world-sepolia, zircuit. Structural roles: 4 core, 1 supporting, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (4), supporting (1), unclassified (1)
- Contract kinds: contract (6)
- Detected standards: ownable (2), erc20 (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 269 contracts are derived from known codebases. 269 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1c8058...f26372`, chain 1)
- UnnamedContract (`0x1fe170...843381`, chain 1)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 1)
- UnnamedContract (`0x2e7876...e8303b`, chain 1)
- UnnamedContract (`0x32d228...c873ae`, chain 1)
- UnnamedContract (`0x3f5c77...c01811`, chain 1)
- UnnamedContract (`0x556ecb...723ce0`, chain 1)
- UnnamedContract (`0x709944...b3920a`, chain 1)
- UnnamedContract (`0x7b42df...1c8f12`, chain 1)
- UnnamedContract (`0x81bc85...21f9a6`, chain 1)
- UnnamedContract (`0xcd7df5...431730`, chain 1)
- UnnamedContract (`0xd9f80b...6704ae`, chain 1)
- UnnamedContract (`0xdb6c81...a5170b`, chain 1)
- UnnamedContract (`0xe7af7c...432099`, chain 1)
- UnnamedContract (`0xf26304...285611`, chain 1)
- UnnamedContract (`0x1fe170...843381`, chain 10)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 10)
- UnnamedContract (`0x2e7876...e8303b`, chain 10)
- UnnamedContract (`0x3f5c77...c01811`, chain 10)
- UnnamedContract (`0x709944...b3920a`, chain 10)
- UnnamedContract (`0x7b42df...1c8f12`, chain 10)
- UnnamedContract (`0x81bc85...21f9a6`, chain 10)
- UnnamedContract (`0xcd7df5...431730`, chain 10)
- UnnamedContract (`0x1fe170...843381`, chain 56)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 56)
- UnnamedContract (`0x2e7876...e8303b`, chain 56)
- UnnamedContract (`0x3f5c77...c01811`, chain 56)
- UnnamedContract (`0x709944...b3920a`, chain 56)
- UnnamedContract (`0x7b42df...1c8f12`, chain 56)
- UnnamedContract (`0x81bc85...21f9a6`, chain 56)
- UnnamedContract (`0xcd7df5...431730`, chain 56)
- UnnamedContract (`0x1fe170...843381`, chain 100)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 100)
- UnnamedContract (`0x2e7876...e8303b`, chain 100)
- UnnamedContract (`0x3f5c77...c01811`, chain 100)
- UnnamedContract (`0x709944...b3920a`, chain 100)
- UnnamedContract (`0x7b42df...1c8f12`, chain 100)
- UnnamedContract (`0x81bc85...21f9a6`, chain 100)
- UnnamedContract (`0xcd7df5...431730`, chain 100)
- UnnamedContract (`0x1fe170...843381`, chain 130)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 130)
- UnnamedContract (`0x2e7876...e8303b`, chain 130)
- UnnamedContract (`0x3f5c77...c01811`, chain 130)
- UnnamedContract (`0x709944...b3920a`, chain 130)
- UnnamedContract (`0x7b42df...1c8f12`, chain 130)
- UnnamedContract (`0x81bc85...21f9a6`, chain 130)
- UnnamedContract (`0xcd7df5...431730`, chain 130)
- UnnamedContract (`0x1fe170...843381`, chain 137)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 137)
- UnnamedContract (`0x2e7876...e8303b`, chain 137)
- UnnamedContract (`0x3f5c77...c01811`, chain 137)
- UnnamedContract (`0x709944...b3920a`, chain 137)
- UnnamedContract (`0x7b42df...1c8f12`, chain 137)
- UnnamedContract (`0x81bc85...21f9a6`, chain 137)
- UnnamedContract (`0xcd7df5...431730`, chain 137)
- UnnamedContract (`0x1fe170...843381`, chain 146)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 146)
- UnnamedContract (`0x2e7876...e8303b`, chain 146)
- UnnamedContract (`0x3f5c77...c01811`, chain 146)
- UnnamedContract (`0x709944...b3920a`, chain 146)
- UnnamedContract (`0x7b42df...1c8f12`, chain 146)
- UnnamedContract (`0x81bc85...21f9a6`, chain 146)
- UnnamedContract (`0xcd7df5...431730`, chain 146)
- UnnamedContract (`0x1fe170...843381`, chain 169)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 169)
- UnnamedContract (`0x2e7876...e8303b`, chain 169)
- UnnamedContract (`0x3f5c77...c01811`, chain 169)
- UnnamedContract (`0x709944...b3920a`, chain 169)
- UnnamedContract (`0x7b42df...1c8f12`, chain 169)
- UnnamedContract (`0x81bc85...21f9a6`, chain 169)
- UnnamedContract (`0xcd7df5...431730`, chain 169)
- UnnamedContract (`0x1fe170...843381`, chain 252)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 252)
- UnnamedContract (`0x2e7876...e8303b`, chain 252)
- UnnamedContract (`0x3f5c77...c01811`, chain 252)
- UnnamedContract (`0x709944...b3920a`, chain 252)
- UnnamedContract (`0x7b42df...1c8f12`, chain 252)
- UnnamedContract (`0x81bc85...21f9a6`, chain 252)
- UnnamedContract (`0xcd7df5...431730`, chain 252)
- UnnamedContract (`0x1fe170...843381`, chain 480)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 480)
- UnnamedContract (`0x2e7876...e8303b`, chain 480)
- UnnamedContract (`0x3f5c77...c01811`, chain 480)
- UnnamedContract (`0x709944...b3920a`, chain 480)
- UnnamedContract (`0x7b42df...1c8f12`, chain 480)
- UnnamedContract (`0x81bc85...21f9a6`, chain 480)
- UnnamedContract (`0xcd7df5...431730`, chain 480)
- UnnamedContract (`0x0b9024...bd7233`, chain 999)
- UnnamedContract (`0x132c10...162d93`, chain 999)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 999)
- UnnamedContract (`0x3625d7...ab2122`, chain 999)
- UnnamedContract (`0x3e6089...e53cff`, chain 999)
- UnnamedContract (`0x48c2c4...9fa257`, chain 999)
- UnnamedContract (`0xcd7df5...431730`, chain 999)
- UnnamedContract (`0xced815...8a445d`, chain 999)
- UnnamedContract (`0x1fe170...843381`, chain 1116)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 1116)
- UnnamedContract (`0x2e7876...e8303b`, chain 1116)
- UnnamedContract (`0x3f5c77...c01811`, chain 1116)
- UnnamedContract (`0x709944...b3920a`, chain 1116)
- UnnamedContract (`0x7b42df...1c8f12`, chain 1116)
- UnnamedContract (`0x81bc85...21f9a6`, chain 1116)
- UnnamedContract (`0xcd7df5...431730`, chain 1116)
- UnnamedContract (`0x1fe170...843381`, chain 1284)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 1284)
- UnnamedContract (`0x2e7876...e8303b`, chain 1284)
- UnnamedContract (`0x3f5c77...c01811`, chain 1284)
- UnnamedContract (`0x709944...b3920a`, chain 1284)
- UnnamedContract (`0x7b42df...1c8f12`, chain 1284)
- UnnamedContract (`0x81bc85...21f9a6`, chain 1284)
- UnnamedContract (`0xcd7df5...431730`, chain 1284)
- UnnamedContract (`0x1fe170...843381`, chain 1329)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 1329)
- UnnamedContract (`0x2e7876...e8303b`, chain 1329)
- UnnamedContract (`0x3f5c77...c01811`, chain 1329)
- UnnamedContract (`0x709944...b3920a`, chain 1329)
- UnnamedContract (`0x7b42df...1c8f12`, chain 1329)
- UnnamedContract (`0x81bc85...21f9a6`, chain 1329)
- UnnamedContract (`0xcd7df5...431730`, chain 1329)
- UnnamedContract (`0x0b9024...bd7233`, chain 1776)
- UnnamedContract (`0x132c10...162d93`, chain 1776)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 1776)
- UnnamedContract (`0x3625d7...ab2122`, chain 1776)
- UnnamedContract (`0x3e6089...e53cff`, chain 1776)
- UnnamedContract (`0x48c2c4...9fa257`, chain 1776)
- UnnamedContract (`0xcd7df5...431730`, chain 1776)
- UnnamedContract (`0xced815...8a445d`, chain 1776)
- UnnamedContract (`0x1fe170...843381`, chain 1868)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 1868)
- UnnamedContract (`0x2e7876...e8303b`, chain 1868)
- UnnamedContract (`0x3f5c77...c01811`, chain 1868)
- UnnamedContract (`0x709944...b3920a`, chain 1868)
- UnnamedContract (`0x7b42df...1c8f12`, chain 1868)
- UnnamedContract (`0x81bc85...21f9a6`, chain 1868)
- UnnamedContract (`0xcd7df5...431730`, chain 1868)
- UnnamedContract (`0x14a9e4...0bdd26`, chain 2020)
- UnnamedContract (`0x1dce40...98d1ce`, chain 2020)
- UnnamedContract (`0x25c6f3...13b086`, chain 2020)
- UnnamedContract (`0x2ab9f2...6f507d`, chain 2020)
- UnnamedContract (`0x2b4401...30f286`, chain 2020)
- UnnamedContract (`0x55cf10...2eb61d`, chain 2020)
- UnnamedContract (`0x55d72f...647c0d`, chain 2020)
- UnnamedContract (`0x5ab00e...574c24`, chain 2020)
- UnnamedContract (`0x1fe170...843381`, chain 2222)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 2222)
- UnnamedContract (`0x2e7876...e8303b`, chain 2222)
- UnnamedContract (`0x3f5c77...c01811`, chain 2222)
- UnnamedContract (`0x709944...b3920a`, chain 2222)
- UnnamedContract (`0x7b42df...1c8f12`, chain 2222)
- UnnamedContract (`0x81bc85...21f9a6`, chain 2222)
- UnnamedContract (`0xcd7df5...431730`, chain 2222)
- UnnamedContract (`0x0f52ee...f45a32`, chain 4663)
- UnnamedContract (`0x1b3f9f...026bc9`, chain 4663)
- UnnamedContract (`0x7d0c40...38bee1`, chain 4663)
- UnnamedContract (`0xbac8d5...bf06b5`, chain 4663)
- UnnamedContract (`0xbd5533...2f6e88`, chain 4663)
- UnnamedContract (`0xcd7df5...431730`, chain 4663)
- UnnamedContract (`0xea5f32...3287fe`, chain 4663)
- UnnamedContract (`0xefc588...0cb227`, chain 4663)
- UnnamedContract (`0x1fe170...843381`, chain 5000)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 5000)
- UnnamedContract (`0x2e7876...e8303b`, chain 5000)
- UnnamedContract (`0x3f5c77...c01811`, chain 5000)
- UnnamedContract (`0x709944...b3920a`, chain 5000)
- UnnamedContract (`0x7b42df...1c8f12`, chain 5000)
- UnnamedContract (`0x81bc85...21f9a6`, chain 5000)
- UnnamedContract (`0xcd7df5...431730`, chain 5000)
- UnnamedContract (`0x0b9024...bd7233`, chain 5031)
- UnnamedContract (`0x132c10...162d93`, chain 5031)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 5031)
- UnnamedContract (`0x3625d7...ab2122`, chain 5031)
- UnnamedContract (`0x3e6089...e53cff`, chain 5031)
- UnnamedContract (`0x48c2c4...9fa257`, chain 5031)
- UnnamedContract (`0xcd7df5...431730`, chain 5031)
- UnnamedContract (`0xced815...8a445d`, chain 5031)
- UnnamedContract (`0x1fe170...843381`, chain 8453)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 8453)
- UnnamedContract (`0x2e7876...e8303b`, chain 8453)
- UnnamedContract (`0x3f5c77...c01811`, chain 8453)
- UnnamedContract (`0x709944...b3920a`, chain 8453)
- UnnamedContract (`0x7b42df...1c8f12`, chain 8453)
- UnnamedContract (`0x81bc85...21f9a6`, chain 8453)
- UnnamedContract (`0xcd7df5...431730`, chain 8453)
- UnnamedContract (`0x1fe170...843381`, chain 33139)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 33139)
- UnnamedContract (`0x2e7876...e8303b`, chain 33139)
- UnnamedContract (`0x3f5c77...c01811`, chain 33139)
- UnnamedContract (`0x709944...b3920a`, chain 33139)
- UnnamedContract (`0x7b42df...1c8f12`, chain 33139)
- UnnamedContract (`0x81bc85...21f9a6`, chain 33139)
- UnnamedContract (`0xcd7df5...431730`, chain 33139)
- UnnamedContract (`0x1fe170...843381`, chain 34443)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 34443)
- UnnamedContract (`0x2e7876...e8303b`, chain 34443)
- UnnamedContract (`0x3f5c77...c01811`, chain 34443)
- UnnamedContract (`0x709944...b3920a`, chain 34443)
- UnnamedContract (`0x7b42df...1c8f12`, chain 34443)
- UnnamedContract (`0x81bc85...21f9a6`, chain 34443)
- UnnamedContract (`0xcd7df5...431730`, chain 34443)
- UnnamedContract (`0x1fe170...843381`, chain 42161)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 42161)
- UnnamedContract (`0x2e7876...e8303b`, chain 42161)
- UnnamedContract (`0x3f5c77...c01811`, chain 42161)
- UnnamedContract (`0x709944...b3920a`, chain 42161)
- UnnamedContract (`0x7b42df...1c8f12`, chain 42161)
- UnnamedContract (`0x81bc85...21f9a6`, chain 42161)
- UnnamedContract (`0xcd7df5...431730`, chain 42161)
- UnnamedContract (`0x1fe170...843381`, chain 43114)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 43114)
- UnnamedContract (`0x2e7876...e8303b`, chain 43114)
- UnnamedContract (`0x3f5c77...c01811`, chain 43114)
- UnnamedContract (`0x709944...b3920a`, chain 43114)
- UnnamedContract (`0x7b42df...1c8f12`, chain 43114)
- UnnamedContract (`0x81bc85...21f9a6`, chain 43114)
- UnnamedContract (`0xcd7df5...431730`, chain 43114)
- UnnamedContract (`0x1fe170...843381`, chain 48900)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 48900)
- UnnamedContract (`0x2e7876...e8303b`, chain 48900)
- UnnamedContract (`0x3f5c77...c01811`, chain 48900)
- UnnamedContract (`0x709944...b3920a`, chain 48900)
- UnnamedContract (`0x7b42df...1c8f12`, chain 48900)
- UnnamedContract (`0x81bc85...21f9a6`, chain 48900)
- UnnamedContract (`0xcd7df5...431730`, chain 48900)
- UnnamedContract (`0x1fe170...843381`, chain 59144)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 59144)
- UnnamedContract (`0x2e7876...e8303b`, chain 59144)
- UnnamedContract (`0x3f5c77...c01811`, chain 59144)
- UnnamedContract (`0x709944...b3920a`, chain 59144)
- UnnamedContract (`0x7b42df...1c8f12`, chain 59144)
- UnnamedContract (`0x81bc85...21f9a6`, chain 59144)
- UnnamedContract (`0xcd7df5...431730`, chain 59144)
- UnnamedContract (`0x1fe170...843381`, chain 60808)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 60808)
- UnnamedContract (`0x2e7876...e8303b`, chain 60808)
- UnnamedContract (`0x3f5c77...c01811`, chain 60808)
- UnnamedContract (`0x709944...b3920a`, chain 60808)
- UnnamedContract (`0x7b42df...1c8f12`, chain 60808)
- UnnamedContract (`0x81bc85...21f9a6`, chain 60808)
- UnnamedContract (`0xcd7df5...431730`, chain 60808)
- UnnamedContract (`0x0ca813...884082`, chain 167000)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 167000)
- UnnamedContract (`0x2ab9f2...6f507d`, chain 167000)
- UnnamedContract (`0x4dea31...ea7afe`, chain 167000)
- UnnamedContract (`0x55cf10...2eb61d`, chain 167000)
- UnnamedContract (`0xb331c8...914fdc`, chain 167000)
- UnnamedContract (`0xca69e3...25e4d9`, chain 167000)
- UnnamedContract (`0xf6d267...4fa418`, chain 167000)
- UnnamedContract (`0x1fe170...843381`, chain 534352)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 534352)
- UnnamedContract (`0x2e7876...e8303b`, chain 534352)
- UnnamedContract (`0x3f5c77...c01811`, chain 534352)
- UnnamedContract (`0x709944...b3920a`, chain 534352)
- UnnamedContract (`0x7b42df...1c8f12`, chain 534352)
- UnnamedContract (`0x81bc85...21f9a6`, chain 534352)
- UnnamedContract (`0xcd7df5...431730`, chain 534352)
- UnnamedContract (`0x0b9024...bd7233`, chain 747474)
- UnnamedContract (`0x132c10...162d93`, chain 747474)
- UnnamedContract (`0x2aae69...f2c9e8`, chain 747474)
- UnnamedContract (`0x3625d7...ab2122`, chain 747474)
- UnnamedContract (`0x3e6089...e53cff`, chain 747474)
- UnnamedContract (`0x48c2c4...9fa257`, chain 747474)
- UnnamedContract (`0xcd7df5...431730`, chain 747474)
- UnnamedContract (`0xced815...8a445d`, chain 747474)
- Api3Pool (`0x6dd655...c76d76`, chain 1)
- Api3Token (`0x0b3821...31b88a`, chain 1)
- AppProxyUpgradeable (`0x1e7ecc...f4195a`, chain 1)
- Convenience (`0x950872...c19636`, chain 1)
- KernelProxy (`0x593ea9...d06dba`, chain 1)
- TimelockManager (`0xfaef86...f02baa`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 269/525 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 269 own, 257 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 32 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 269 of 558 unique; 289 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/25
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 533
- Unique implementations: 558
- Raw deployments: 560
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $36,878,429.11
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Api3Token | token | project_anchor | own_supporting | 0 | ethereum | unit-380818 | `0x0b3821...31b88a` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x36cfe1...da2439`; ethereum `0x54210d...c6e3f4` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe2221a...a4e53b` | ⚠️ Unaudited |
| AccessControlRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92e512...3b6df1` | ⚠️ Unaudited |
| ACL | governance | project_anchor | own_supporting | 1 | ethereum | unit-381363 | `0x1e7ecc...f4195a` | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x870ac1...ba00bc` | ⚠️ Unaudited |
| AirnodeRrpV0DryRun | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e7682...75193f` | ⚠️ Unaudited |
| Api3CirculatingSupply | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5af02b...3a3fa7`; ethereum `0xcd34bc...8bd0a8` | ⚠️ Unaudited |
| Api3Pool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-380826 | `0x6dd655...c76d76` | ⚠️ Unaudited |
| Api3ReaderProxyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5b0cf2...9cd473` | ⚠️ Unaudited |
| Api3ReaderProxyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | `0x776e79...3be125` | ⚠️ Unaudited |
| Api3Voting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc215c6...b0521a` | ⚠️ Unaudited |
| Convenience | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380830 | `0x950872...c19636` | ⚠️ Unaudited |
| Kernel | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381362 | `0x593ea9...d06dba` | ⚠️ Unaudited |
| LockedApi3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf84b11...87608f` | ⚠️ Unaudited |
| Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbbbbb...eeffcb` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a7bb3...3ad766` | ⚠️ Unaudited |
| MorphoMarketV1AdapterV2Factory | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32bb1c...61ccc1` | ⚠️ Unaudited |
| MorphoVaultV1AdapterFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1b8e2...f63394` | ⚠️ Unaudited |
| RegistryList | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3696c5...d9364e` | ⚠️ Unaudited |
| RequesterAuthorizerWithAirnode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf18c10...9e6178` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5a9aa3...2677c2` | ⚠️ Unaudited |
| TimelockManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41ab01...ba1f03` | ⚠️ Unaudited |
| TimelockManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380836 | `0xfaef86...f02baa` | ⚠️ Unaudited |
| VaultV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1d94f...6c0405` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (533)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x156671...c9da27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18c7ce...de2994` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380819 | `0x1c8058...f26372` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380820 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380821 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380822 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380823 | `0x32d228...c873ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380824 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380825 | `0x556ecb...723ce0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c9e3c...05bb15` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380827 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7603fa...eb999d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380828 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bf904...87b416` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380829 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83ae72...464cfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x944018...4fd6e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f0566...31f75c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa20f2a...66dca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad738d...3bf5de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba26aa...85625a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1dba9...4cdacd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380831 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380832 | `0xd9f80b...6704ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380833 | `0xdb6c81...a5170b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380834 | `0xe7af7c...432099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef2abc...9a4af9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380835 | `0xf26304...285611` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4 | n/a | `0x000000...000001` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4 | unit-381093 | `0x269e1b...8c2672` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4 | unit-381094 | `0x2c5c65...42c1c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4 | unit-381095 | `0x36d09b...981ef9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4 | unit-381096 | `0x43e78f...551e2e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4 | unit-381097 | `0x51e973...a8d8b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4 | unit-381098 | `0xd3e7bc...c6f0c2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4 | unit-381099 | `0xef6115...67a782` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4 | unit-381100 | `0xf10952...33f173` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-380837 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-380838 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-380839 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-380840 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-380841 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-380842 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-380843 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-380844 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-381250 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-381251 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-381252 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-381253 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-381254 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-381255 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-381256 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-381257 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-381338 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-381339 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-381340 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-381341 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-381342 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-381343 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-381344 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-381345 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-380845 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-380846 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-380847 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-380848 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-380849 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-380850 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-380851 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-380852 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-380909 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-380910 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-380911 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-380912 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-380913 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-380914 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-380915 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-380916 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380941 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380942 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380943 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380944 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380945 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380946 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380947 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380948 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-380957 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-380958 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-380959 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-380960 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-380961 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-380962 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-380963 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-380964 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-380989 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-380990 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-380991 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-380992 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-380993 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-380994 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-380995 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-380996 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-381053 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-381054 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-381055 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-381056 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-381057 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-381058 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-381059 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-381060 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | world | unit-381149 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | world | unit-381150 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | world | unit-381151 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | world | unit-381152 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | world | unit-381153 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | world | unit-381154 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | world | unit-381155 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | world | unit-381156 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-919 | unit-381330 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-919 | unit-381331 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-919 | unit-381332 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-919 | unit-381333 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-919 | unit-381334 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-919 | unit-381335 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-919 | unit-381336 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-919 | unit-381337 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-998 | unit-381346 | `0x4b69e2...ebc4d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-998 | unit-381347 | `0x6ba5ac...94de7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-998 | unit-381348 | `0x73e5e4...84b32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-998 | unit-381349 | `0x75f5d5...390a21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-998 | unit-381350 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-998 | unit-381351 | `0x7adbf5...6418d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-998 | unit-381352 | `0xa4c9a0...70375d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-998 | unit-381353 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-381354 | `0x0b9024...bd7233` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-381355 | `0x132c10...162d93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-381356 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-381357 | `0x3625d7...ab2122` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-381358 | `0x3e6089...e53cff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-381359 | `0x48c2c4...9fa257` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-381360 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-381361 | `0xced815...8a445d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1114 | unit-380861 | `0x4b69e2...ebc4d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1114 | unit-380862 | `0x6ba5ac...94de7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1114 | unit-380863 | `0x73e5e4...84b32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1114 | unit-380864 | `0x75f5d5...390a21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1114 | unit-380865 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1114 | unit-380866 | `0x7adbf5...6418d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1114 | unit-380867 | `0xa4c9a0...70375d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1114 | unit-380868 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-380885 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-380886 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-380887 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-380888 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-380889 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-380890 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-380891 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-380892 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-380893 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-380894 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-380895 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-380896 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-380897 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-380898 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-380899 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-380900 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbase-alpha | unit-380901 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbase-alpha | unit-380902 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbase-alpha | unit-380903 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbase-alpha | unit-380904 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbase-alpha | unit-380905 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbase-alpha | unit-380906 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbase-alpha | unit-380907 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbase-alpha | unit-380908 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain-sepolia | unit-380917 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain-sepolia | unit-380918 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain-sepolia | unit-380919 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain-sepolia | unit-380920 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain-sepolia | unit-380921 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain-sepolia | unit-380922 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain-sepolia | unit-380923 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain-sepolia | unit-380924 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei-testnet | unit-380925 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei-testnet | unit-380926 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei-testnet | unit-380927 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei-testnet | unit-380928 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei-testnet | unit-380929 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei-testnet | unit-380930 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei-testnet | unit-380931 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei-testnet | unit-380932 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-380933 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-380934 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-380935 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-380936 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-380937 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-380938 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-380939 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-380940 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1439 | unit-380949 | `0x4b69e2...ebc4d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1439 | unit-380950 | `0x6ba5ac...94de7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1439 | unit-380951 | `0x73e5e4...84b32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1439 | unit-380952 | `0x75f5d5...390a21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1439 | unit-380953 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1439 | unit-380954 | `0x7adbf5...6418d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1439 | unit-380955 | `0xa4c9a0...70375d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1439 | unit-380956 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | injective-evm | unit-380997 | `0x0b9024...bd7233` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | injective-evm | unit-380998 | `0x132c10...162d93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | injective-evm | unit-380999 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | injective-evm | unit-381000 | `0x3625d7...ab2122` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | injective-evm | unit-381001 | `0x3e6089...e53cff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | injective-evm | unit-381002 | `0x48c2c4...9fa257` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | injective-evm | unit-381003 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | injective-evm | unit-381004 | `0xced815...8a445d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-381005 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-381006 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-381007 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-381008 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-381009 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-381010 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-381011 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-381012 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1946 | unit-381013 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1946 | unit-381014 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1946 | unit-381015 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1946 | unit-381016 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1946 | unit-381017 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1946 | unit-381018 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1946 | unit-381019 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1946 | unit-381020 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ronin | unit-381021 | `0x14a9e4...0bdd26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ronin | unit-381022 | `0x1dce40...98d1ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ronin | unit-381023 | `0x25c6f3...13b086` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ronin | unit-381024 | `0x2ab9f2...6f507d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ronin | unit-381025 | `0x2b4401...30f286` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ronin | unit-381026 | `0x55cf10...2eb61d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ronin | unit-381027 | `0x55d72f...647c0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ronin | unit-381028 | `0x5ab00e...574c24` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2221 | unit-381037 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2221 | unit-381038 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2221 | unit-381039 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2221 | unit-381040 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2221 | unit-381041 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2221 | unit-381042 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2221 | unit-381043 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2221 | unit-381044 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-381045 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-381046 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-381047 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-381048 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-381049 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-381050 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-381051 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-381052 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | robinhood | unit-381133 | `0x0f52ee...f45a32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | robinhood | unit-381134 | `0x1b3f9f...026bc9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | robinhood | unit-381135 | `0x7d0c40...38bee1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | robinhood | unit-381136 | `0xbac8d5...bf06b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | robinhood | unit-381137 | `0xbd5533...2f6e88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | robinhood | unit-381138 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | robinhood | unit-381139 | `0xea5f32...3287fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | robinhood | unit-381140 | `0xefc588...0cb227` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | world-sepolia | unit-381157 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | world-sepolia | unit-381158 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | world-sepolia | unit-381159 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | world-sepolia | unit-381160 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | world-sepolia | unit-381161 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | world-sepolia | unit-381162 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | world-sepolia | unit-381163 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | world-sepolia | unit-381164 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-381181 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-381182 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-381183 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-381184 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-381185 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-381186 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-381187 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-381188 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle-sepolia | unit-381189 | `0x0e9f46...3881dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle-sepolia | unit-381190 | `0x17c721...1b894a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle-sepolia | unit-381191 | `0x1dce40...98d1ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle-sepolia | unit-381192 | `0x2b4401...30f286` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle-sepolia | unit-381193 | `0x4cc805...ff8207` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle-sepolia | unit-381194 | `0x5ab00e...574c24` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle-sepolia | unit-381195 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle-sepolia | unit-381196 | `0xb5b684...d04656` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | somnia | unit-381197 | `0x0b9024...bd7233` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | somnia | unit-381199 | `0x132c10...162d93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | somnia | unit-381201 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | somnia | unit-381203 | `0x3625d7...ab2122` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | somnia | unit-381205 | `0x3e6089...e53cff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | somnia | unit-381207 | `0x48c2c4...9fa257` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | somnia | unit-381209 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | somnia | unit-381210 | `0xced815...8a445d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-381314 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-381315 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-381316 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-381317 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-381318 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-381319 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-381320 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-381321 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-10200 | unit-380853 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-10200 | unit-380854 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-10200 | unit-380855 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-10200 | unit-380856 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-10200 | unit-380857 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-10200 | unit-380858 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-10200 | unit-380859 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-10200 | unit-380860 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic-testnet | unit-380965 | `0x4b69e2...ebc4d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic-testnet | unit-380966 | `0x6ba5ac...94de7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic-testnet | unit-380967 | `0x73e5e4...84b32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic-testnet | unit-380968 | `0x75f5d5...390a21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic-testnet | unit-380969 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic-testnet | unit-380970 | `0x7adbf5...6418d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic-testnet | unit-380971 | `0xa4c9a0...70375d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic-testnet | unit-380972 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | apechain-curtis | unit-381061 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | apechain-curtis | unit-381062 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | apechain-curtis | unit-381063 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | apechain-curtis | unit-381064 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | apechain-curtis | unit-381065 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | apechain-curtis | unit-381066 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | apechain-curtis | unit-381067 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | apechain-curtis | unit-381068 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | apechain | unit-381069 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | apechain | unit-381070 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | apechain | unit-381071 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | apechain | unit-381072 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | apechain | unit-381073 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | apechain | unit-381074 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | apechain | unit-381075 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | apechain | unit-381076 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-381085 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-381086 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-381087 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-381088 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-381089 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-381090 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-381091 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-381092 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381101 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381102 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381103 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381104 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381105 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381106 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381107 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381108 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-381117 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-381118 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-381119 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-381120 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-381121 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-381122 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-381123 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-381124 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381125 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381126 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381127 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381128 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381129 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381130 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381131 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381132 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-46630 | unit-381141 | `0x04d32d...30a252` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-46630 | unit-381142 | `0x1d97c4...e6242d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-46630 | unit-381143 | `0x26b744...1a3552` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-46630 | unit-381144 | `0x67e2e4...b45099` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-46630 | unit-381145 | `0x86fb8b...35e7a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-46630 | unit-381146 | `0x89bff7...63c04f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-46630 | unit-381147 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-46630 | unit-381148 | `0xddf74c...2a9f06` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-48898 | unit-381165 | `0x4b69e2...ebc4d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-48898 | unit-381166 | `0x6ba5ac...94de7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-48898 | unit-381167 | `0x73e5e4...84b32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-48898 | unit-381168 | `0x75f5d5...390a21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-48898 | unit-381169 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-48898 | unit-381170 | `0x7adbf5...6418d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-48898 | unit-381171 | `0xa4c9a0...70375d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-48898 | unit-381172 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zircuit | unit-381173 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zircuit | unit-381174 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zircuit | unit-381175 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zircuit | unit-381176 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zircuit | unit-381177 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zircuit | unit-381178 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zircuit | unit-381179 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zircuit | unit-381180 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-50312 | unit-381212 | `0x4b69e2...ebc4d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-50312 | unit-381214 | `0x6ba5ac...94de7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-50312 | unit-381216 | `0x73e5e4...84b32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-50312 | unit-381217 | `0x75f5d5...390a21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-50312 | unit-381219 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-50312 | unit-381220 | `0x7adbf5...6418d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-50312 | unit-381222 | `0xa4c9a0...70375d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-50312 | unit-381224 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-381266 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-381267 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-381268 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-381269 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-381270 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-381271 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-381272 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-381273 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-381274 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-381275 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-381276 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-381277 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-381278 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-381279 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-381280 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-381281 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-381298 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-381299 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-381300 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-381301 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-381302 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-381303 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-381304 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-381305 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-381322 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-381323 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-381324 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-381325 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-381326 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-381327 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-381328 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-381329 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | taiko | unit-380973 | `0x0ca813...884082` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | taiko | unit-380974 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | taiko | unit-380975 | `0x2ab9f2...6f507d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | taiko | unit-380976 | `0x4dea31...ea7afe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | taiko | unit-380977 | `0x55cf10...2eb61d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | taiko | unit-380978 | `0xb331c8...914fdc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | taiko | unit-380979 | `0xca69e3...25e4d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | taiko | unit-380980 | `0xf6d267...4fa418` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | taiko-hoodi | unit-380981 | `0x4b69e2...ebc4d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | taiko-hoodi | unit-380982 | `0x6ba5ac...94de7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | taiko-hoodi | unit-380983 | `0x73e5e4...84b32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | taiko-hoodi | unit-380984 | `0x75f5d5...390a21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | taiko-hoodi | unit-380985 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | taiko-hoodi | unit-380986 | `0x7adbf5...6418d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | taiko-hoodi | unit-380987 | `0xa4c9a0...70375d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | taiko-hoodi | unit-380988 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-202601 | unit-381029 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-202601 | unit-381030 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-202601 | unit-381031 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-202601 | unit-381032 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-202601 | unit-381033 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-202601 | unit-381034 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-202601 | unit-381035 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-202601 | unit-381036 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-381109 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-381110 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-381111 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-381112 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-381113 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-381114 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-381115 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-381116 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-534351 | unit-381225 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-534351 | unit-381227 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-534351 | unit-381229 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-534351 | unit-381231 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-534351 | unit-381232 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-534351 | unit-381234 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-534351 | unit-381235 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-534351 | unit-381237 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-381239 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-381241 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-381243 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-381245 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-381246 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-381247 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-381248 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-381249 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hoodi | unit-381258 | `0x4b69e2...ebc4d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hoodi | unit-381259 | `0x6ba5ac...94de7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hoodi | unit-381260 | `0x73e5e4...84b32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hoodi | unit-381261 | `0x75f5d5...390a21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hoodi | unit-381262 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hoodi | unit-381263 | `0x7adbf5...6418d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hoodi | unit-381264 | `0xa4c9a0...70375d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hoodi | unit-381265 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | katana-bokuto | unit-381282 | `0x4b69e2...ebc4d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | katana-bokuto | unit-381283 | `0x6ba5ac...94de7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | katana-bokuto | unit-381284 | `0x73e5e4...84b32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | katana-bokuto | unit-381285 | `0x75f5d5...390a21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | katana-bokuto | unit-381286 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | katana-bokuto | unit-381287 | `0x7adbf5...6418d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | katana-bokuto | unit-381288 | `0xa4c9a0...70375d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | katana-bokuto | unit-381289 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | katana | unit-381290 | `0x0b9024...bd7233` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | katana | unit-381291 | `0x132c10...162d93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | katana | unit-381292 | `0x2aae69...f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | katana | unit-381293 | `0x3625d7...ab2122` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | katana | unit-381294 | `0x3e6089...e53cff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | katana | unit-381295 | `0x48c2c4...9fa257` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | katana | unit-381296 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | katana | unit-381297 | `0xced815...8a445d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-808813 | unit-381306 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-808813 | unit-381307 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-808813 | unit-381308 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-808813 | unit-381309 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-808813 | unit-381310 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-808813 | unit-381311 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-808813 | unit-381312 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-808813 | unit-381313 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-3441006 | unit-381077 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-3441006 | unit-381078 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-3441006 | unit-381079 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-3441006 | unit-381080 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-3441006 | unit-381081 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-3441006 | unit-381082 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-3441006 | unit-381083 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-3441006 | unit-381084 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-380869 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-380870 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-380871 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-380872 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-380873 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-380874 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-380875 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-380876 | `0xcd7df5...431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-380877 | `0x1fe170...843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-380878 | `0x2e7876...e8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-380879 | `0x3f5c77...c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-380880 | `0x709944...b3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-380881 | `0x795e74...48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-380882 | `0x7b42df...1c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-380883 | `0x81bc85...21f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-380884 | `0xcd7df5...431730` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2021-12-16 Sigma Prime.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2021-12-16%20Sigma%20Prime.pdf) | Sigma Prime | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [2022-03-30 Trail of Bits.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2022-03-30%20Trail%20of%20Bits.pdf) | Trail of Bits | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [2023-03-02 Sigma Prime.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2023-03-02%20Sigma%20Prime.pdf) | Sigma Prime | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [2023-12-20 Quantstamp.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2023-12-20%20Quantstamp.pdf) | Quantstamp | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2024-02-20 Quantstamp.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2024-02-20%20Quantstamp.pdf) | Quantstamp | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2024-10-24 Quantstamp.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2024-10-24%20Quantstamp.pdf) | Quantstamp | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 47 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14934] 2021-12-16 Sigma Prime.pdf — no match: Extracted contract names from findings and overview. Audit date inferred from 'December, 2021' on cover page.
- [14935] 2022-03-30 Trail of Bits.pdf — no match: Extracted contracts from Project Targets, Project Coverage, and Detailed Findings sections. Audit date from cover page: 'March 30, 2022'.
- [14936] 2023-03-02 Sigma Prime.pdf — no match: Extracted contract names from 'Asset' fields in findings and from the 'contracts/*' reference in finding API3-12. Audit date derived from 'March, 2023' on cover page.
- [14937] 2023-12-20 Quantstamp.pdf — no match: Scope section explicitly lists two contracts: interfaces/IOevAuctionHouse.sol and OevAuctionHouse.sol. Audit date is the final report date (2024-01-10) from changelog.
- [14938] 2024-02-20 Quantstamp.pdf — no match: Three contracts in scope: AirseekerRegistry.sol, API3Market.sol, HashRegistry.sol. API3ServerV1 explicitly excluded. Audit date from changelog: 2024-02-27 final report.
- [14939] 2024-10-24 Quantstamp.pdf — no match: Extracted all contract names from the 'Scope Files Included' section and file signatures appendix. Audit date from changelog: '2024-10-24 - Final report'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2021-12-16 Sigma Prime.pdf | AccessControlManagerProxy | unmatched — not counted | — | mentioned in findings API3-01 and API3-02 | no |
| 2021-12-16 Sigma Prime.pdf | AccessControlRegistry | ambiguous — not counted | 0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0x2ab9f2… (alternative) `0x2ab9f2...6f507d` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0x55d72f… (alternative) `0x55d72f...647c0d` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2021-12-16 Sigma Prime.pdf | RrpBeaconServer | unmatched — not counted | — | mentioned in findings API3-03, API3-06, API3-08 | no |
| 2021-12-16 Sigma Prime.pdf | AirnodeRrp | unmatched — not counted | — | mentioned in findings API3-06, API3-08 | no |
| 2021-12-16 Sigma Prime.pdf | Whitelist | unmatched — not counted | — | mentioned in finding API3-05 | no |
| 2021-12-16 Sigma Prime.pdf | WhitelistRolesWithAirnode | unmatched — not counted | — | mentioned in finding API3-07 | no |
| 2021-12-16 Sigma Prime.pdf | RoleDeriver | unmatched — not counted | — | mentioned in finding API3-08 | no |
| 2021-12-16 Sigma Prime.pdf | AccessControlClient | unmatched — not counted | — | mentioned in finding API3-08 | no |
| 2021-12-16 Sigma Prime.pdf | TemplateUtils | unmatched — not counted | — | mentioned in finding API3-07 | no |
| 2021-12-16 Sigma Prime.pdf | WithdrawalUtils | unmatched — not counted | — | mentioned in finding API3-08 | no |
| 2021-12-16 Sigma Prime.pdf | RrpRequester | unmatched — not counted | — | mentioned in Overview section | no |
| 2022-03-30 Trail of Bits.pdf | AirnodeProtocol | unmatched — not counted | — | Project Coverage section: 'protocol/ . The AirnodeProtocol contract...' | no |
| 2022-03-30 Trail of Bits.pdf | AccessControlRegistry | ambiguous — not counted | 0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0x2ab9f2… (alternative) `0x2ab9f2...6f507d` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0x55d72f… (alternative) `0x55d72f...647c0d` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2022-03-30 Trail of Bits.pdf | RequesterAuthorizerWhitelisterWithToken | unmatched — not counted | — | Project Coverage section: 'monetization/ . The monetization contracts...' and Finding TOB-API-3 target | no |
| 2022-03-30 Trail of Bits.pdf | RequesterAuthorizerWhitelisterWithTokenDeposit | unmatched — not counted | — | Finding TOB-API-4 target | no |
| 2022-03-30 Trail of Bits.pdf | RequesterAuthorizerWhitelisterWithTokenPayment | unmatched — not counted | — | Finding TOB-API-5 target | no |
| 2022-03-30 Trail of Bits.pdf | DapiServer | unmatched — not counted | — | Project Coverage section: 'dapis/ . The DapiServer contract...' and multiple findings | no |
| 2022-03-30 Trail of Bits.pdf | StorageUtils | unmatched — not counted | — | Finding TOB-API-1 target | no |
| 2022-03-30 Trail of Bits.pdf | AddressRegistry | unmatched — not counted | — | Code Quality Recommendations section mentions AddressRegistry.sol | no |
| 2022-03-30 Trail of Bits.pdf | RequesterAuthorizerRegistry | unmatched — not counted | — | Code Quality Recommendations section mentions RequesterAuthorizerRegistry.sol | no |
| 2022-03-30 Trail of Bits.pdf | Sort | unmatched — not counted | — | Code Quality Recommendations section mentions Sort.sol | no |
| 2022-03-30 Trail of Bits.pdf | Median | unmatched — not counted | — | Code Quality Recommendations section mentions Median.sol | no |
| 2023-03-02 Sigma Prime.pdf | DapiServer | unmatched — not counted | — | Listed as asset in findings API3-01, API3-02, API3-03 | no |
| 2023-03-02 Sigma Prime.pdf | AirnodeProtocol | unmatched — not counted | — | Listed as asset in findings API3-04, API3-11 | no |
| 2023-03-02 Sigma Prime.pdf | StorageUtils | unmatched — not counted | — | Listed as asset in finding API3-04 | no |
| 2023-03-02 Sigma Prime.pdf | DataFeedProxyWithOev | unmatched — not counted | — | Listed as asset in finding API3-05 | no |
| 2023-03-02 Sigma Prime.pdf | DapiProxyWithOev | unmatched — not counted | — | Listed as asset in finding API3-05 | no |
| 2023-03-02 Sigma Prime.pdf | AirnodeRequester | unmatched — not counted | — | Listed as asset in finding API3-06 | no |
| 2023-03-02 Sigma Prime.pdf | ExternalMulticall | unmatched — not counted | — | Listed as asset in findings API3-07, API3-09 | no |
| 2023-03-02 Sigma Prime.pdf | SelfMulticall | unmatched — not counted | — | Listed as asset in finding API3-08 | no |
| 2023-03-02 Sigma Prime.pdf | RequestAuthorizer | unmatched — not counted | — | Listed as asset in finding API3-10 | no |
| 2023-03-02 Sigma Prime.pdf | QuickSelect | unmatched — not counted | — | Mentioned in finding API3-12 gas optimizations | no |
| 2023-03-02 Sigma Prime.pdf | Allocator | unmatched — not counted | — | Mentioned in finding API3-12 gas optimizations | no |
| 2023-03-02 Sigma Prime.pdf | RequesterAuthorizer | unmatched — not counted | — | Mentioned in finding API3-12 gas optimizations | no |
| 2023-03-02 Sigma Prime.pdf | WithdrawalUtils | unmatched — not counted | — | Mentioned in finding API3-12 | no |
| 2023-12-20 Quantstamp.pdf | IOevAuctionHouse | unmatched — not counted | — | listed in scope section | no |
| 2023-12-20 Quantstamp.pdf | OevAuctionHouse | unmatched — not counted | — | listed in scope section | no |
| 2024-02-20 Quantstamp.pdf | AirseekerRegistry | ambiguous — not counted | 0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x48c2c4… (alternative) `0x48c2c4...9fa257` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x48c2c4… (alternative) `0x48c2c4...9fa257` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0xb331c8… (alternative) `0xb331c8...914fdc` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x48c2c4… (alternative) `0x48c2c4...9fa257` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x5ab00e… (alternative) `0x5ab00e...574c24` — liveness: live (current_address_book_code)<br>0xbd5533… (alternative) `0xbd5533...2f6e88` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x48c2c4… (alternative) `0x48c2c4...9fa257` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-02-20 Quantstamp.pdf | API3Market | unmatched — not counted | — | listed in scope files | no |
| 2024-02-20 Quantstamp.pdf | HashRegistry | unmatched — not counted | — | listed in scope files | no |
| 2024-10-24 Quantstamp.pdf | GnosisSafeWithoutProxy | ambiguous — not counted | 0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x14a9e4… (alternative) `0x14a9e4...0bdd26` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0xbac8d5… (alternative) `0xbac8d5...bf06b5` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae69...f2c9e8` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-10-24 Quantstamp.pdf | AccessControlRegistry | ambiguous — not counted | 0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0x2ab9f2… (alternative) `0x2ab9f2...6f507d` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0x55d72f… (alternative) `0x55d72f...647c0d` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df5...431730` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-10-24 Quantstamp.pdf | AccessControlRegistryAdminnedWithManager | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | RoleDeriver | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | HashRegistry | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | OwnableCallForwarder | ambiguous — not counted | 0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x3e6089… (alternative) `0x3e6089...e53cff` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0xf6d267… (alternative) `0xf6d267...4fa418` — liveness: live (current_address_book_code)<br>0x3e6089… (alternative) `0x3e6089...e53cff` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x0f52ee… (alternative) `0x0f52ee...f45a32` — liveness: live (current_address_book_code)<br>0x3e6089… (alternative) `0x3e6089...e53cff` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x25c6f3… (alternative) `0x25c6f3...13b086` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x3e6089… (alternative) `0x3e6089...e53cff` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85...21f9a6` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-10-24 Quantstamp.pdf | AccessControlRegistryAdminned | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IOwnable | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IOwnableCallForwarder | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IAccessControlRegistry | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IHashRegistry | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IAccessControlRegistryAdminned | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IAccessControlRegistryAdminnedWithManager | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | SelfMulticall | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | ExtendedSelfMulticall | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IExtendedSelfMulticall | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | ISelfMulticall | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | Median | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | QuickSelect | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | Sort | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | Api3MarketV2 | ambiguous — not counted | 0x2b4401… (alternative) `0x2b4401...30f286` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0xca69e3… (alternative) `0xca69e3...25e4d9` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3625d7… (alternative) `0x3625d7...ab2122` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3625d7… (alternative) `0x3625d7...ab2122` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3625d7… (alternative) `0x3625d7...ab2122` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3625d7… (alternative) `0x3625d7...ab2122` — liveness: live (current_address_book_code)<br>0x7d0c40… (alternative) `0x7d0c40...38bee1` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77...c01811` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-10-24 Quantstamp.pdf | BeaconUpdatesWithSignedData | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | DapiServer | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | AirseekerRegistry | ambiguous — not counted | 0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x48c2c4… (alternative) `0x48c2c4...9fa257` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x48c2c4… (alternative) `0x48c2c4...9fa257` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0xb331c8… (alternative) `0xb331c8...914fdc` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x48c2c4… (alternative) `0x48c2c4...9fa257` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x5ab00e… (alternative) `0x5ab00e...574c24` — liveness: live (current_address_book_code)<br>0xbd5533… (alternative) `0xbd5533...2f6e88` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x48c2c4… (alternative) `0x48c2c4...9fa257` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df...1c8f12` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-10-24 Quantstamp.pdf | OevDataFeedServer | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | Api3ServerV1OevExtension | ambiguous — not counted | 0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x4dea31… (alternative) `0x4dea31...ea7afe` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x132c10… (alternative) `0x132c10...162d93` — liveness: live (current_address_book_code)<br>0x132c10… (alternative) `0x132c10...162d93` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x55cf10… (alternative) `0x55cf10...2eb61d` — liveness: live (current_address_book_code)<br>0x132c10… (alternative) `0x132c10...162d93` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x132c10… (alternative) `0x132c10...162d93` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e7876...e8303b` — liveness: live (current_address_book_code)<br>0x1b3f9f… (alternative) `0x1b3f9f...026bc9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-10-24 Quantstamp.pdf | OevDapiServer | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | OevAuctionHouse | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | Api3ServerV1 | ambiguous — not counted | 0xced815… (alternative) `0xced815...8a445d` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0x55cf10… (alternative) `0x55cf10...2eb61d` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0xced815… (alternative) `0xced815...8a445d` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0xced815… (alternative) `0xced815...8a445d` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0xced815… (alternative) `0xced815...8a445d` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0x2ab9f2… (alternative) `0x2ab9f2...6f507d` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0xea5f32… (alternative) `0xea5f32...3287fe` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944...b3920a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-10-24 Quantstamp.pdf | DataFeedServer | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | Api3ReaderProxyV1 | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | Api3ReaderProxyV1Factory | ambiguous — not counted | 0xefc588… (alternative) `0xefc588...0cb227` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x1dce40… (alternative) `0x1dce40...98d1ce` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x0b9024… (alternative) `0x0b9024...bd7233` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x0b9024… (alternative) `0x0b9024...bd7233` — liveness: live (current_address_book_code)<br>0x0b9024… (alternative) `0x0b9024...bd7233` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x0b9024… (alternative) `0x0b9024...bd7233` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x0ca813… (alternative) `0x0ca813...884082` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170...843381` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-10-24 Quantstamp.pdf | IApi3ReaderProxyV1Factory | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IProxy | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IOevProxy | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IApi3ReaderProxyV1 | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IOevDataFeedServer | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IApi3MarketV2 | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IApi3ServerV1 | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IOevAuctionHouse | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IDapiServer | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IBeaconUpdatesWithSignedData | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IAirseekerRegistry | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IOevDapiServer | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IApi3ServerV1OevExtension | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IDataFeedServer | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IApi3ReaderProxy | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x0b3821...31b88a` | Api3Token | token | $36,878,429.11 | Verified native implementation with $36,878,429.11 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6dd655...c76d76` | Api3Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x950872...c19636` | Convenience | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfaef86...f02baa` | TimelockManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 4 |
| standard_library | 2 |
| needs_review | 533 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 11 ambiguous, 76 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: n/a

Zero-match audit list:

- [14934] 2021-12-16 Sigma Prime.pdf
- [14935] 2022-03-30 Trail of Bits.pdf
- [14936] 2023-03-02 Sigma Prime.pdf
- [14937] 2023-12-20 Quantstamp.pdf
- [14938] 2024-02-20 Quantstamp.pdf
- [14939] 2024-10-24 Quantstamp.pdf

Fork inheritance lineage and inherited audits are included when available.
