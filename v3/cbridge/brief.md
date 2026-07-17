# Agentic Audit Brief: cBridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 12 (1 matched; 11 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: cBridge (`cbridge`)
- Website: [https://cbridge.celer.network/#/transfer](https://cbridge.celer.network/#/transfer)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-nova, aurora, avalanche, base, blast, boba, bsc, canto, celo, ethereum, fantom, gnosis, harmony, heco, hyperliquid, kaia, kava, linea, metis, moonbeam, moonriver, opbnb, optimism, plasma, polygon, polygon-zkevm, scroll, unichain, x-layer, zksync-era
- Contract surface: 286 unique implementations (541 raw deployments)
- Coverage basis: 1/39 confirmed own live verified implementations (2.6%); conservative 2.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $12,883,316.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for cBridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 39 contract row(s) across arbitrum, arbitrum-nova, aurora, avalanche, base, blast, boba, bsc, canto, celo, ethereum, fantom, gnosis, harmony, heco, hyperliquid, kaia, kava, linea, metis, moonbeam, moonriver, opbnb, optimism, plasma, polygon, polygon-zkevm, scroll, unichain, x-layer, zksync-era. Structural roles: 21 core, 18 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 39
- Structural roles: core (21), supporting (18)
- Contract kinds: contract (39)
- Detected standards: ownable (39), pausable (37)
- Frameworks: openzeppelin (39)
- Upgradeable-pattern rows: 4

## Fork Analysis

28 of 77 contracts are derived from known codebases. 49 contracts have no detected origin.

### Forked Contracts

**Bridge** (`0x5427fefa711eff984124bfbb1ab6fbf5e3da1820`, chain 1)
Origin: stellaswap (`0x841ce48f9446c8e281d3f1444cb859b4a6d0738c`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Bridge** (`0x9d39fc627a6d9d9f8c831c16995b209548cc3401`, chain 10)
Origin: stellaswap (`0x841ce48f9446c8e281d3f1444cb859b4a6d0738c`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Bridge** (`0xdd90e5e87a2081dcf0391920868ebc2ffb81a1af`, chain 56)
Origin: stellaswap (`0x841ce48f9446c8e281d3f1444cb859b4a6d0738c`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Bridge** (`0x88dcdc47d2f83a99cf0000fdf667a468bb958a78`, chain 137)
Origin: stellaswap (`0x841ce48f9446c8e281d3f1444cb859b4a6d0738c`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Bridge** (`0x841ce48f9446c8e281d3f1444cb859b4a6d0738c`, chain 1284)
Origin: stellaswap (`0x841ce48f9446c8e281d3f1444cb859b4a6d0738c`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Bridge** (`0x841ce48f9446c8e281d3f1444cb859b4a6d0738c`, chain 1285)
Origin: stellaswap (`0x841ce48f9446c8e281d3f1444cb859b4a6d0738c`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Bridge** (`0x1619de6b6b20ed217a58d00f37b9d47c7663feca`, chain 42161)
Origin: stellaswap (`0x841ce48f9446c8e281d3f1444cb859b4a6d0738c`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Bridge** (`0xef3c714c9425a8f3697a9c969dc1af30ba82e5d4`, chain 43114)
Origin: stellaswap (`0x841ce48f9446c8e281d3f1444cb859b4a6d0738c`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OriginalTokenVault** (`0xb37d31b2a74029b5951a2778f959282e2d518595`, chain 1)
Origin: mcdex (`0xea4b1b0aa3c110c55f650d28159ce4ad43a4a58b`)
Containment: 89.5% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- depositNative(uint256,uint64,address,uint64)
- setWrap(address)

**OriginalTokenVault** (`0xbcfef6bb4597e724d720735d32a9249e0640aa11`, chain 10)
Origin: mcdex (`0xea4b1b0aa3c110c55f650d28159ce4ad43a4a58b`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OriginalTokenVault** (`0x78bc5ee9f11d133a08b331c2e18fe81be0ed02dc`, chain 56)
Origin: mcdex (`0xea4b1b0aa3c110c55f650d28159ce4ad43a4a58b`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OriginalTokenVault** (`0xc1a2d967dfaa6a10f3461bc21864c23c1dd51eea`, chain 137)
Origin: mcdex (`0xea4b1b0aa3c110c55f650d28159ce4ad43a4a58b`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OriginalTokenVault** (`0xfe31bfc4f7c9b69246a6dc0087d91a91cb040f76`, chain 42161)
Origin: mcdex (`0xea4b1b0aa3c110c55f650d28159ce4ad43a4a58b`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OriginalTokenVault** (`0x5427fefa711eff984124bfbb1ab6fbf5e3da1820`, chain 43114)
Origin: mcdex (`0xea4b1b0aa3c110c55f650d28159ce4ad43a4a58b`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OriginalTokenVaultV2** (`0x7510792a3b1969f9307f3845ce88e39578f2bae1`, chain 1)
Origin: mcdex (`0xea4b1b0aa3c110c55f650d28159ce4ad43a4a58b`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OriginalTokenVaultV2** (`0x6e380ad5d15249ef2de576e3189fc49b5713be4f`, chain 10)
Origin: mcdex (`0xea4b1b0aa3c110c55f650d28159ce4ad43a4a58b`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OriginalTokenVaultV2** (`0x11a0c9270d88c99e221360bca50c2f6fda44a980`, chain 56)
Origin: mcdex (`0xea4b1b0aa3c110c55f650d28159ce4ad43a4a58b`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OriginalTokenVaultV2** (`0xea4b1b0aa3c110c55f650d28159ce4ad43a4a58b`, chain 42161)
Origin: mcdex (`0xea4b1b0aa3c110c55f650d28159ce4ad43a4a58b`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OriginalTokenVaultV2** (`0xb51541df05de07be38dcfc4a80c05389a54502bb`, chain 43114)
Origin: mcdex (`0xea4b1b0aa3c110c55f650d28159ce4ad43a4a58b`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PeggedTokenBridge** (`0x16365b45eb269b5b5dacb34b4a15399ec79b95eb`, chain 1)
Origin: stellaswap (`0xbb7684cc5408f4dd0921e5c2cadd547b8f1ad573`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PeggedTokenBridgeV2** (`0x52e4f244f380f8fa51816c8a10a63105dd4de084`, chain 1)
Origin: unifarm (`0x26c76f7fef00e02a5dd4b5cc8a0f717eb61e1e4b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PeggedTokenBridgeV2** (`0xc3c5b9474273113efb74e7da43b5aaba0cd9699a`, chain 10)
Origin: unifarm (`0x26c76f7fef00e02a5dd4b5cc8a0f717eb61e1e4b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PeggedTokenBridgeV2** (`0x26c76f7fef00e02a5dd4b5cc8a0f717eb61e1e4b`, chain 56)
Origin: unifarm (`0x26c76f7fef00e02a5dd4b5cc8a0f717eb61e1e4b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PeggedTokenBridgeV2** (`0xb51541df05de07be38dcfc4a80c05389a54502bb`, chain 137)
Origin: unifarm (`0x26c76f7fef00e02a5dd4b5cc8a0f717eb61e1e4b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PeggedTokenBridgeV2** (`0x5471ea8f739dd37e9b81be9c5c77754d8aa953e4`, chain 8453)
Origin: unifarm (`0x26c76f7fef00e02a5dd4b5cc8a0f717eb61e1e4b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PeggedTokenBridgeV2** (`0xc72e7fc220e650e93495622422f3c14fb03aaf6b`, chain 42161)
Origin: unifarm (`0x26c76f7fef00e02a5dd4b5cc8a0f717eb61e1e4b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PeggedTokenBridgeV2** (`0xb774c6f82d1d5dbd36894762330809e512fed195`, chain 43114)
Origin: unifarm (`0x26c76f7fef00e02a5dd4b5cc8a0f717eb61e1e4b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PeggedTokenBridgeV2** (`0x9bb46d5100d2db4608112026951c9c965b233f4d`, chain 59144)
Origin: unifarm (`0x26c76f7fef00e02a5dd4b5cc8a0f717eb61e1e4b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x9b36f165bab9ebe611d491180418d8de4b8f3a1f`, chain 56)
- UnnamedContract (`0xf39e2d6f40eeefbec021badc6ef5a4f201f5dc4a`, chain 130)
- UnnamedContract (`0x4c882ec256823ee773b25b414d36f92ef58a7c0c`, chain 137)
- UnnamedContract (`0xf5c6825015280cdfd0b56903f9f8b5a2233476f5`, chain 196)
- UnnamedContract (`0xf5c6825015280cdfd0b56903f9f8b5a2233476f5`, chain 204)
- UnnamedContract (`0x30f7aa65d04d289ce319e88193a33a8eb1857fb9`, chain 250)
- UnnamedContract (`0x38d1e20b0039bfbeef4096be00175227f8939e51`, chain 250)
- UnnamedContract (`0xc5ef662b833de914b9ba7a3532c6bb008a9b23a6`, chain 288)
- UnnamedContract (`0x0d72be73619e29a67fbd28348ac952288cc9ee46`, chain 324)
- UnnamedContract (`0x54069e96c4247b37c2fbd9559ca99f08cd1cd66c`, chain 324)
- UnnamedContract (`0x7d43aabc515c356145049227cee54b608342c0ad`, chain 999)
- UnnamedContract (`0x9bb46d5100d2db4608112026951c9c965b233f4d`, chain 999)
- UnnamedContract (`0xf5c6825015280cdfd0b56903f9f8b5a2233476f5`, chain 999)
- UnnamedContract (`0x3b53d2c7b44d40be05fa5e2309ffeb6eb2492d88`, chain 1284)
- UnnamedContract (`0x0d71d18126e03646eb09fec929e2ae87b7cae69d`, chain 1285)
- UnnamedContract (`0xf8bf9988206c4de87f52a3c24486e4367b7088cb`, chain 2222)
- UnnamedContract (`0xa7c9fede809b6af10dc52590804c69f40f6f8154`, chain 7700)
- UnnamedContract (`0xd33289644740ef5f488b0270f812f7b18b500935`, chain 7700)
- UnnamedContract (`0xd46f8e428a06789b5884df54e029e738277388d1`, chain 7700)
- UnnamedContract (`0x4c882ec256823ee773b25b414d36f92ef58a7c0c`, chain 8217)
- UnnamedContract (`0xb3833ecd19d4ff964fa7bc3f8ac070ad5e360e56`, chain 8217)
- UnnamedContract (`0x7d43aabc515c356145049227cee54b608342c0ad`, chain 8453)
- UnnamedContract (`0x7d43aabc515c356145049227cee54b608342c0ad`, chain 9745)
- UnnamedContract (`0x9b36f165bab9ebe611d491180418d8de4b8f3a1f`, chain 9745)
- UnnamedContract (`0xbdd2739ae69a054895be33a22b2d2ed71a1de778`, chain 42161)
- UnnamedContract (`0x4b8904945967fa7148b6f9677c2855081e2e8166`, chain 42170)
- UnnamedContract (`0xb3833ecd19d4ff964fa7bc3f8ac070ad5e360e56`, chain 42170)
- UnnamedContract (`0x841ce48f9446c8e281d3f1444cb859b4a6d0738c`, chain 81457)
- UnnamedContract (`0x2e8dd00e5793a316144cc77b59f80accf7cc41ce`, chain 534352)
- UnnamedContract (`0x4384d5a9d7354c65ce3aee411337bd40493ad1bc`, chain 1313161554)
- UnnamedContract (`0x841ce48f9446c8e281d3f1444cb859b4a6d0738c`, chain 1313161554)
- UnnamedContract (`0xbcfef6bb4597e724d720735d32a9249e0640aa11`, chain 1313161554)
- UnnamedContract (`0xbdd2739ae69a054895be33a22b2d2ed71a1de778`, chain 1313161554)
- UnnamedContract (`0xdd90e5e87a2081dcf0391920868ebc2ffb81a1af`, chain 1666600000)
- Bridge (`0x9b36f165bab9ebe611d491180418d8de4b8f3a1f`, chain 59144)
- PeggedTokenBridge (`0x61f85ff2a2f4289be4bb9b72fc7010b3142b5f41`, chain 10)
- PeggedTokenBridge (`0xd443fe6bf23a4c9b78312391a30ff881a097580e`, chain 56)
- PeggedTokenBridge (`0xd4c058380d268d85bc7c758072f561e8f2db5975`, chain 100)
- PeggedTokenBridge (`0x4d58fdc7d0ee9b674f49a0ade11f26c3c9426f7a`, chain 137)
- PeggedTokenBridge (`0x3bbadff9aeee4a74d3cf6da05c30868c9ff85bb8`, chain 1088)
- PeggedTokenBridge (`0xbb7684cc5408f4dd0921e5c2cadd547b8f1ad573`, chain 1284)
- PeggedTokenBridge (`0x374b8a9f3ec5eb2d97eca84ea27aca45aa1c57ef`, chain 1285)
- PeggedTokenBridge (`0x88dcdc47d2f83a99cf0000fdf667a468bb958a78`, chain 43114)
- TransferAgent (`0x9b274bc73940d92d0af292bde759cbfcce661a0b`, chain 1)
- TransferAgent (`0x3d85b598b734a0e7c8c1b62b00e972e9265da541`, chain 56)
- UnnamedContract (`0x374b8a9f3ec5eb2d97eca84ea27aca45aa1c57ef`, chain 250)
- UnnamedContract (`0x7d91603e79ea89149baf73c9038c51669d8f03e9`, chain 250)
- UnnamedContract (`0xd46f8e428a06789b5884df54e029e738277388d1`, chain 1101)
- UnnamedContract (`0x78a21c1d3ed53a82d4247b9ee5bf001f4620ceec`, chain 1666600000)

## Contract Surface Quality

- Logic-topography rows: 39; live-surface rows included: 39 (39 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 77/77 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/39 (2.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 77 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 209 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 86
- Confirmed-live implementations: 77 of 286 unique; 209 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/194
- Verified + Unaudited implementations: 193
- Verified by bytecode match: 0
- Unverified implementations: 92
- Unique implementations: 286
- Raw deployments: 541
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 12 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 0.5% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OriginalTokenVault | core_logic | project_anchor | own_supporting | 0 | optimism | unit-231888 | `0xbcfef6bb4597e724d720735d32a9249e0640aa11` | ✅ Audited |

### ⚠️ Verified + Unaudited (193)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AmmVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | optimism | n/a | 3 deployments: optimism `0x43318de9e8f65b591598f17add87ae7247649c83`; optimism `0x6c7fd4321183b542e81bcc7de4dfb88f9dbca29f`; optimism `0xb484027cb0c538538bad2be492714154f9196f93` | ⚠️ Unaudited |
| AmyFinanceToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8fbd420956fdd301f4493500fd0bcaaa80f2389c` | ⚠️ Unaudited |
| Animal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38b0e3a59183814957d83df2a97492aed1f003e2` | ⚠️ Unaudited |
| ArbStip | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x403fd39cbb6f1a1b5a842a29a88b2d262ce72fb8` | ⚠️ Unaudited |
| AvocadoDAOToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa41f142b6eb2b164f8164cae0716892ce02f311f` | ⚠️ Unaudited |
| BlankToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaec7e1f531bb09115103c53ba76829910ec48966` | ⚠️ Unaudited |
| BOBA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42bbfa2e77757c645eeaad1655e0911a7553efbc` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf582cae047853cbe7f0bc8f8321bef4a1ebe0307` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-231875 | `0x5427fefa711eff984124bfbb1ab6fbf5e3da1820` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-231887 | `0x9d39fc627a6d9d9f8c831c16995b209548cc3401` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-231970 | `0xdd90e5e87a2081dcf0391920868ebc2ffb81a1af` | ⚠️ Unaudited |
| Bridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 12 deployments: ethereum `0xc578cbaf5a411dfa9f0d227f97dadaa4074ad062`; ethereum `0xd85e30c5d372942810c86c4ac9d7b3bb24cc1965`; optimism `0x6de33698e9e9b787e09d3bd7771ef63557e148bb`; optimism `0x9b36f165bab9ebe611d491180418d8de4b8f3a1f`; bsc `0x5d96d4287d1ff115ee50fac0526cf43ecf79bfc6`; gnosis `0x3795c36e7d12a8c252a20c5a7b455f7c57b60283`; polygon `0xa251c4691c1ffd7d9b128874c023427513d8ac5c`; polygon `0xb5df797468e6e8f2cb293cd6e32939366e0f8733`; metis `0x841ce48f9446c8e281d3f1444cb859b4a6d0738c`; celo `0xbb7684cc5408f4dd0921e5c2cadd547b8f1ad573`; avalanche `0xbb7684cc5408f4dd0921e5c2cadd547b8f1ad573`; scroll `0x9b36f165bab9ebe611d491180418d8de4b8f3a1f` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-231915 | `0x88dcdc47d2f83a99cf0000fdf667a468bb958a78` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | moonbeam | unit-231894 | `0x841ce48f9446c8e281d3f1444cb859b4a6d0738c` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | moonriver | unit-231900 | `0x841ce48f9446c8e281d3f1444cb859b4a6d0738c` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-231936 | `0x1619de6b6b20ed217a58d00f37b9d47c7663feca` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-231958 | `0xef3c714c9425a8f3697a9c969dc1af30ba82e5d4` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-231971 | `0x9b36f165bab9ebe611d491180418d8de4b8f3a1f` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 19 deployments: avalanche `0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98`; avalanche `0x37b608519f91f70f2eeb0e5ed9af4061722e4f76`; avalanche `0x3bd2b1c7ed8d396dbb98ded3aebb41350a5b2339`; avalanche `0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab`; avalanche `0x50b7545627a5162f82a992c33b87adc75187b218`; avalanche `0x5947bb275c521040051d82396192181b413227a3`; avalanche `0x596fa47043f99a4e0f122243b841e55375cde0d2`; avalanche `0x63a72806098bd3d9520cc43356dd78afe5d386d9`; avalanche `0x88128fd4b259552a9a1d457f435a6527aab72d42`; avalanche `0x8a0cac13c7da965a312f08ea4229c37869e85cb9`; avalanche `0x8ebaf22b6f053dffeaf46f4dd9efa95d89ba8580`; avalanche `0x98443b96ea4b0858fdf3219cd13e98c7a4690588`; avalanche `0x9eaac1b23d935365bd7b542fe22ceee2922f52dc`; avalanche `0xabc9547b534519ff73921b1fba6e672b5f58d083`; avalanche `0xbec243c995409e6520d7c41e404da5deba4b209b`; avalanche `0xc3048e19e76cb9a3aa9d77d8c03c29fc906e2437`; avalanche `0xc7198437980c041c805a1edcba50c1ce5db95118`; avalanche `0xd501281565bf7789224523144fe5d98e8b28f267`; avalanche `0xd586e7f844cea2f87f50152665bcbc2c279d8d70` | ⚠️ Unaudited |
| CBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x841ce48f9446c8e281d3f1444cb859b4a6d0738c`; bsc `0x841ce48f9446c8e281d3f1444cb859b4a6d0738c`; gnosis `0x841ce48f9446c8e281d3f1444cb859b4a6d0738c`; polygon `0x841ce48f9446c8e281d3f1444cb859b4a6d0738c` | ⚠️ Unaudited |
| CelerToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9254c83eb525f9fcf346490bbb3ed28a81c667` | ⚠️ Unaudited |
| CGGToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fe24f25b1cf609b9c4e7e12d802e3640dfa5e43` | ⚠️ Unaudited |
| ChainGuardiansToken900 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a2ad5a2eacf35194d39afe1d727c39710ff0379` | ⚠️ Unaudited |
| ClonableBeaconProxy | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x753d224bcf9aafacd81558c32341416df61d3dac`; arbitrum `0xf0a5717ec0883ee56438932b0fe4a20822735fba` | ⚠️ Unaudited |
| CloutArtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x262b8aa7542004f023b0eb02bc6b96350a02b728` | ⚠️ Unaudited |
| ContributorVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa99096428f1bd2065dcaa141c59c46729cce68c8` | ⚠️ Unaudited |
| ControllerV2BLP | governance | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xa300a84d8970718dac32f54f61bd568142d8bcf4` | ⚠️ Unaudited |
| ControllerV2BLP | governance | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x52eacd19e38d501d006d2023c813d7e37f025f37` | ⚠️ Unaudited |
| ControllerV2BLP | governance | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x8e7e9ea9023b81457ae7e6d2a51b003d421e5408` | ⚠️ Unaudited |
| ConvergenceToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc834fa996fa3bec7aad3693af486ae53d8aa8b50` | ⚠️ Unaudited |
| CrazyBunny | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f4564b85cb77ce76cc725f29758cbfe20213aae` | ⚠️ Unaudited |
| CrossProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x74e121a34a66d54c33f3291f2cdf26b1cd037c3a` | ⚠️ Unaudited |
| Cvp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e4adb44ef08f22f5b5b76a8f0c2d0dcbe7dca1` | ⚠️ Unaudited |
| DFProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5843f1ccc5baa448528eb0e8bc567cda7ed1a1e8` | ⚠️ Unaudited |
| DODOToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43dfc4159d86f3a37a5a4b3d4580b888ad7d4ddd` | ⚠️ Unaudited |
| DomiToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45c2f8c9b4c0bdc76200448cc26c48ab6ffef83f` | ⚠️ Unaudited |
| DSToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x431ad2ff6a9c365805ebad47ee021148d6f7dbe0`; ethereum `0xeb269732ab75a6fd61ea60b06fe994cd32a83549` | ⚠️ Unaudited |
| EmiRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22b8ccdeeeacb1f3879e36e06af413d44fd79f01` | ⚠️ Unaudited |
| ERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a3dba3d677e573636ba691a70ff2d606c29666` | ⚠️ Unaudited |
| ESW | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5a75a093747b72a0e14056352751edf03518031d` | ⚠️ Unaudited |
| ESW | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xd2a2a353d28e4833faffc882f6649c9c884a7d8f` | ⚠️ Unaudited |
| ETHPlatform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5005e8dc0033e78af80cfc8d10f5163f2fcf0e79`; ethereum `0xbe857e635d7b2b471e5fe7c76e605878d252be72` | ⚠️ Unaudited |
| Farming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa226877393fc4e3b5f2b43a1bae3c5d72c918c2d` | ⚠️ Unaudited |
| FarmingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: ethereum `0x61f85ff2a2f4289be4bb9b72fc7010b3142b5f41`; ethereum `0xd916ebe244832b3fe5f1606009b51145cda99d56`; optimism `0x06292de88adb3b1557b034ebb1c367e65ab93e4c` | ⚠️ Unaudited |
| FINN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9a92b5ebf1f6f6f7d93696fcd44e5cf75035a756` | ⚠️ Unaudited |
| FinnBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x37619cc85325afea778830e184cb60a3abc9210b` | ⚠️ Unaudited |
| GamerCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x728f30fa2f100742c7949d1961804fa8e0b1387d` | ⚠️ Unaudited |
| Govern | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8c75adb1d9f38f6c2af54be8120f598b9dba446c`; ethereum `0xea129ae043c4cb73dcb241aaa074f9e667641ba0` | ⚠️ Unaudited |
| GOVI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeaa40b28a2d1b0b08f6f97bb1dd4b75316c6107` | ⚠️ Unaudited |
| GOVIETHSLPStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf05a60bcbc9c85cb2548dafdc444c666a8f466a` | ⚠️ Unaudited |
| GOVIETHStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x936dd3112a9d39af39adda798503d9e7e7975fb7` | ⚠️ Unaudited |
| HuckleberryFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1f4b7660b6adc3943b5038e3426b33c1c0e343e6` | ⚠️ Unaudited |
| HuhToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0x86d49fbd3b6f989d641e700a15599d3b165002ab`; polygon `0x08648471b5aad25feeeb853d6829048f3fc37786` | ⚠️ Unaudited |
| iETHV2BLP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xa7a084538de04d808f20c785762934dd5da7b3b4` | ⚠️ Unaudited |
| iETHV2BLP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x6a3fe5342a4bd09efcd44ac5b9387475a0678c74` | ⚠️ Unaudited |
| iETHV2BLP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xee338313f022caee84034253174fa562495dcc15` | ⚠️ Unaudited |
| iMSDV2BLP | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 2 deployments: arbitrum `0x5be49b2e04ac55a17c72ac37e3a85d9602322021`; arbitrum `0xe8c85b60cb3ba32369c699015621813fb2fea56c` | ⚠️ Unaudited |
| iMUSX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xabf7fc467846923a9e3c573725daa1e6fb213f07` | ⚠️ Unaudited |
| Imx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b35ce522cb72e4077baeb96cb923a5529764a00` | ⚠️ Unaudited |
| iTokenV2BLP | token | non_address_book | non_address_book_inventory (excluded) | 12 | optimism | n/a | 12 deployments: optimism `0x1f144cd63d7007945292ebcde14a6df8628e2ed7`; optimism `0x24d30216c07df791750081c8d77c83cc8b06eb27`; optimism `0x4b3488123649e8a671097071a02da8537fe09a16`; optimism `0x5bede655e2386abc49e2cc8303da6036bf78564c`; optimism `0x5d05c14d71909f4fe03e13d486cca2011148fc44`; optimism `0x6832364e9538db15655fa84a497f2927f74a6ce6`; optimism `0x7702dc73e8f8d9ae95cf50933adbee68e9f1d725`; optimism `0x7e7e1d8757b241aa6791c089314604027544ce43`; optimism `0xb344795f0e7cf65a55cb0dde1e866d46041a2cc2`; optimism `0xd65a18dae68c846297f3038c93deea0b181288d5`; optimism `0xdd40bba0fad6810a7a09e8ccca9bce1e48b28ece`; optimism `0xed3c20d047d2c57c3c6dd862c9fdd1b353aff36f` | ⚠️ Unaudited |
| iTokenV2BLP | token | non_address_book | non_address_book_inventory (excluded) | 10 | polygon | n/a | 10 deployments: polygon `0x0c92617df0753af1cab2d9cc6a56173970d81740`; polygon `0x15962427a9795005c640a6bf7f99c2ba1531ad6d`; polygon `0x38d0c498698a35fc52a6eb943e47e4a5471cd6f9`; polygon `0x5268b3c4afb0860d365a093c184985fcfcb65234`; polygon `0x7d86ee431fbaf60e86b5d3133233e478af691b68`; polygon `0x94a14ba6e59f4be36a77041ef5590fe24445876a`; polygon `0xb3ab7148cccaf66686ad6c1be24d83e58e6a504e`; polygon `0xc171ebe1a2873f042f1dddd9327d00527ca29882`; polygon `0xcb5d9b6a9ba8ea6fa82660faa9cc130586f939b2`; polygon `0xec85f77104ffa35a5411750d70edff8f1496d95b` | ⚠️ Unaudited |
| iTokenV2BLP | token | non_address_book | non_address_book_inventory (excluded) | 9 | arbitrum | n/a | 9 deployments: arbitrum `0x013ee4934ecbfa5723933c4b08ea5e47449802c8`; arbitrum `0x0385f851060c09a552f1a28ea3f612660256cbaa`; arbitrum `0x46eca1482fffb61934c4abca62abeb0b12feb17a`; arbitrum `0x5675546eb94c2c256e6d7c3f7dcab59bea3b0b8b`; arbitrum `0x8dc3312c68125a94916d62b97bb5d925f84d4ae0`; arbitrum `0xaea8e2e7c97c5b7cd545d3b152f669bae29c4a63`; arbitrum `0xd3204e4189becd9cd957046a8e4a643437ee0acc`; arbitrum `0xf52f079af080c9fb5afca57dde0f8b83d49692a9`; arbitrum `0xf6995955e4b0e5b287693c221f456951d612b628` | ⚠️ Unaudited |
| izumiToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ad37205d608b8b219e6a2573f922094cec5c200` | ⚠️ Unaudited |
| JonesAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x1f6fa7a58701b3773b08a1a16d06b656b0eccb23`; arbitrum `0x5375616bb6c52a90439ff96882a986d8fcdce421`; arbitrum `0x662d0f9ff837a51cf89a1fe7e0882a906dac08a3`; arbitrum `0xf018865b26ffab9cd1735dcca549d95b0cb9ea19` | ⚠️ Unaudited |
| JonesERC20VaultV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8883e5bb2920bbe766a2c9e86ad9aa45a573f3f5` | ⚠️ Unaudited |
| JonesToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10393c20975cf177a3513071bc110f7962cd67da` | ⚠️ Unaudited |
| JonesWETHVaultV3Adapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbcb55bdb669e756e982169c19c20c987c26f3c2d` | ⚠️ Unaudited |
| Kromatika | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3af33bef05c2dcb3c7288b77fe1c8d2aeba4d789` | ⚠️ Unaudited |
| L2CustomGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x096760f208390250649e3e8763348e783aef5562` | ⚠️ Unaudited |
| L2ERC20Gateway | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x09e9222e96e7b4ae2a407b98d48e330053351eee` | ⚠️ Unaudited |
| L2GatewayRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x5288c571fd7ad117bea99bf60fe0846c4e84f933` | ⚠️ Unaudited |
| L2StandardERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x9e1028f5f1d5ede59748ffcee5532509976840e0`; optimism `0xf98dcd95217e15e05d8638da4c91125e59590b07` | ⚠️ Unaudited |
| L2WethGateway | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x6c411ad3e74de3e7bd422b94a27770f5b86c623b` | ⚠️ Unaudited |
| LandsaleNFT_ESTATE | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28cd2990f34db387d011d7cc693a2bcedd8dc654` | ⚠️ Unaudited |
| LockedTokenVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e504d3e053885a82bd1cb5c29cbaae5b3673be4` | ⚠️ Unaudited |
| LockingContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6e1f655ee65bc554c4357daae391e2094053f3c2`; ethereum `0xee88e0ebde9aea52abe6cd2cc985dd137bbfadb0` | ⚠️ Unaudited |
| LPStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x31a20e5b7b1b067705419d57ab4f72e81cc1f6bf` | ⚠️ Unaudited |
| LQTYStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb4387d93b5a9392f64963cd44389e7d9d2e1053c` | ⚠️ Unaudited |
| LQTYToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x094bd7b2d99711a1486fb94d4395801c6d0fddcc` | ⚠️ Unaudited |
| LUSDToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4fbf0429599460d327bd5f55625e30e4fc066095` | ⚠️ Unaudited |
| Lyra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01ba67aac7f75f647d94220cc98fb30fcc5105bf` | ⚠️ Unaudited |
| LyraSafetyModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcb9f85730f57732fc899fb158164b9ed60c77d49` | ⚠️ Unaudited |
| MaiBridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 2 deployments: moonriver `0x48421ff1c6b93988138130865c4b7cce10358271`; avalanche `0x61f85ff2a2f4289be4bb9b72fc7010b3142b5f41` | ⚠️ Unaudited |
| MappingTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 6 deployments: moonriver `0x31d45973e7428251a69d767e077dc50bf696c2d5`; moonriver `0x900f1ec5819fa087d368877cd03b265bf1802667`; avalanche `0x8d9dcc422407f40bf105d8c777ccb365aceb70b6`; avalanche `0x9e529b128e3e3ffcb261ee35e10a3366f51448e5`; avalanche `0xd38bfdbfe7002ca56a1e05606e75aef5c521fff9`; avalanche `0xea6887e4a9cda1b77e70129e5fba830cdb5cddef` | ⚠️ Unaudited |
| MaskToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69af81e73a73b40adf4f3d4223cd9b1ece623074` | ⚠️ Unaudited |
| MELOS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1afb69dbc9f54d08dab1bd3436f8da1af819e647` | ⚠️ Unaudited |
| MessageBus | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4066d196a423b2b3b8b054f4f40efb47a74e200c` | ⚠️ Unaudited |
| MessageBus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x3490a659780016717b949281f334880f971c83cc`; optimism `0x7f63729ef58322a4605b192bea43d70c046eac0e` | ⚠️ Unaudited |
| MessageBus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x7d43aabc515c356145049227cee54b608342c0ad`; optimism `0xf5c6825015280cdfd0b56903f9f8b5a2233476f5` | ⚠️ Unaudited |
| MessageBus | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x95714818fdd7a5454f73da9c777b3ee6ebaeea6b` | ⚠️ Unaudited |
| MessageBus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x08d1fd6b563afdef29c9aa01c3ce3d589d0fde8d`; polygon `0xad65cd7346722d41cef04668f42785d0f71624aa` | ⚠️ Unaudited |
| MessageBus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x643017bf85ef399dd76aa8a46ed3c6e22a68d393`; polygon `0xafdb9c40c7144022811f034ee07ce2e110093fe6` | ⚠️ Unaudited |
| MessageBus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonriver | n/a | 2 deployments: moonriver `0x940daaba3f713abfabd79cdd991466fe698cbe54`; moonriver `0xc5f4aabaa2c3388678319b65cae5e8b5b6c32396` | ⚠️ Unaudited |
| MessageBus | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 12 deployments: ethereum `0x7a80254e5564ee7f7bb53b9da6c7f768a7d2e8c9`; ethereum `0xdd9c6479a44ff66c500b18a13d69b7245b80d39c`; optimism `0xf8bfeac18a838ace22110e499922623d54ea26da`; bsc `0x7d5de3efd5684f58ab6ea99626bad4663e12a896`; bsc `0xce50e2b925a7db4563a9c9b14a14aee7b37880cb`; polygon `0x16365b45eb269b5b5dacb34b4a15399ec79b95eb`; polygon `0xeb8bbe7599715d4a9b5bbcc53aef742fe008d6b9`; moonriver `0xb72a7567847aba28a2819b855d7fe679d4f59846`; avalanche `0x148c1e9a43358fbc59aa259e55c6b470f7e350b5`; avalanche `0x6c6e22b23e90795b886fd53dcf584aeb14aa24ca`; linea `0x0dfabdd2dc27cf93910f7bd4bc3860d5af15674c`; linea `0x82b4980ef43aaf5111d469792dea1621187d1213` | ⚠️ Unaudited |
| MessageBus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x6f2bd3dec1a8c4459c2acc318881f63a048c7c28`; linea `0xea716c3a13092711c3bc33e68289aae9e5d9acbd` | ⚠️ Unaudited |
| MetavaultRefund | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x287bfe9ee929842d1af340814332e7548ad60b09` | ⚠️ Unaudited |
| MillinerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb94d1959084081c5a11c460012ab522f5a0fd756` | ⚠️ Unaudited |
| MiniChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0aefad19aa454bcc1b1dd86e18a7d58d0a6fac38` | ⚠️ Unaudited |
| MiniMeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8765b1a0eb57ca49be7eacd35b24a574d0203656` | ⚠️ Unaudited |
| MintSwapCanonicalToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 94 deployments: ethereum `0x15eef5ad78c4d9e5f247e68978ca32b5d25ca524`; ethereum `0x212137adfabbc3525f73183022a403c70c4e8ae6`; ethereum `0x21c0251da69920414ec36c8f19fb61f3d50027af`; ethereum `0x30a667df8562a2460f45ac297d833a36feac0c2f`; ethereum `0x33cce3a8ba0bf7ec56b2ccd2ad9306748a84e4cf`; ethereum `0x3d85b598b734a0e7c8c1b62b00e972e9265da541`; ethereum `0x3f95e5099cf3a125145212afd53039b8d8c5656e`; ethereum `0x5a994686046982f6e855e41c9ae418df137f5f6b`; ethereum `0x94d2fdf684158875b99adabba8a5977730642550`; ethereum `0xa9c125bf4c8bb26f299c00969532b66732b1f758`; ethereum `0xb4ed26ddc6fe3a1ea5e83c3fe145ca00c086563d`; ethereum `0xe593f3509eb2a620dc61078bcdedba355f083e8b`; ethereum `0xeb883d9478af15c2c176030849d8fa31169b63b9`; ethereum `0xf3c96924d85566c031ddc48dbc63b2d71da6d0f6`; optimism `0x23c748fef17518b8de55065338d7fa20327472eb`; optimism `0x259479fbeb1cde194afa297f36f4216e9c87728c`; bsc `0x06fda0758c17416726f77cb11305eac94c074ec0`; bsc `0x07145ad7c7351c6fe86b6b841fc9bed74eb475a7`; bsc `0x0acc63843f9dd5c2a14ee7c2349859c526b9d4d3`; bsc `0x1305b25842778041c4ae0c9e7c264a617c619fd4`; bsc `0x16365b45eb269b5b5dacb34b4a15399ec79b95eb`; bsc `0x181002d60d504d30a39601ae13af3191cb102580`; bsc `0x19aa65f85a70ec127edd8a63b1932d1f63fccb3a`; bsc `0x3cc194cb21e3b9d86dd516b4d870b82fafb4c02e`; bsc `0x426c58f0a9733d874d9962ed59f529478771751c`; bsc `0x523d3e0dacd7c470ebe8880abe808161696cebec`; bsc `0x6822a778726cd2f0d4a1cfaca2d04654e575cc82`; bsc `0x73afc23510b40dcbeabc25ffbc8c2976ed9f950c`; bsc `0x79d1041327d8b2c13154831e8916594e25b9c4e0`; bsc `0x81421a49c2bb3f2f77a666f0686b4db47a26360c`; bsc `0x904d0221641232fb40f99dc92c1d59c35698ff0b`; bsc `0xa5a6817ac4c164f27df3254b71fe83904b1c3c3e`; bsc `0xa7e5924f406516995f6bcac83594ff019166c9b2`; bsc `0xbcc128d5221b518e50a1823d374310bdf404f867`; bsc `0xbd7b8e4de08d9b01938f7ff2058f110ee1e0e8d4`; bsc `0xd6705c0740e6002ce196b08129b2f0f23f24722e`; bsc `0xea09cbb3f286f7c1a377c4db825c1cefad2476ae`; bsc `0xf234437596b9c90231181a2e80c668c4e5408108`; bsc `0xf8bfeac18a838ace22110e499922623d54ea26da`; bsc `0xfef17032d5e87523acebfde6b3a8978b2bedad1f`; gnosis `0x8db213be5268a2b8b78af08468ff1ea422073da0`; gnosis `0xd606367757bc5e35f53e616ea50f3103ef6b8498`; polygon `0x17d9dd3f1f1e2e5f723edd26ebc14d042a4125b0`; polygon `0x4a52b891ec0670f547bedac5959ca3e9fded4849`; polygon `0x5248febc5130575f98a4ff285535b94a0595a817`; polygon `0x7c83caeb3166a53aee0681549e6452a1f5d94107`; polygon `0xb657457141db5d3ec564bdf778a2f5d367e7af28`; polygon `0xb98e169c37ce30dd47fdad1f9726fb832191e60b`; polygon `0xbbca42c60b5290f2c48871a596492f93ff0ddc82`; metis `0x4a63afc71427807586da190bb0d3adb461ff9589`; metis `0x516e6d96896aea92ce5e78b0348fd997f13802ad`; metis `0x5d96d4287d1ff115ee50fac0526cf43ecf79bfc6`; metis `0x75364d4f779d0bd0facd9a218c67f87dd9aff3b4`; moonbeam `0x3795c36e7d12a8c252a20c5a7b455f7c57b60283`; moonbeam `0x6959027f7850adf4916ff5fdc898d958819e5375`; moonbeam `0x6a2d262d56735dba19dd70682b39f6be9a931d98`; moonbeam `0x8006320739fc281da67ee62eb9b4ef8add5c903a`; moonbeam `0x81ecac0d6be0550a00ff064a4f9dd2400585fe9c`; moonbeam `0x8a4b4c2acadeaa7206df96f00052e41d74a015ce`; moonbeam `0x8c75adb1d9f38f6c2af54be8120f598b9dba446c`; moonbeam `0xcb4a7569a61300c50cf80a2be16329ad9f5f8f9e`; moonriver `0x31d95c7fc6b5520b4bdcd78efa689dd1cca5741e`; moonriver `0x693b47a7fc3d33ae9ebec15e5f42f2db480066f3`; moonriver `0xad543f18cff85c77e140e3e5e3c3392f6ba9d5ca`; moonriver `0xb74527786818ae18b69b6a823960bfaf3906182f`; moonriver `0xe9460bd2ffb12b668fa32919c785c239f974d37c`; moonriver `0xf6a939e773fa4a63fd53f86bbbb279caad955035`; arbitrum `0x4313dda7bc940f3f2b2dddacf568300165c878ca`; celo `0x1fbd282fdcf0c6fa9c77eb61f95535de3ccb8b78`; celo `0x48421ff1c6b93988138130865c4b7cce10358271`; celo `0x8a4b4c2acadeaa7206df96f00052e41d74a015ce`; celo `0xa8961be06550c09c1bc14c483f3932b969eff5e0`; celo `0xb0d8cf9560ef31b8fe6d9727708d19b31f7c90dc`; celo `0xcb4a7569a61300c50cf80a2be16329ad9f5f8f9e`; avalanche `0x2b9e10ba02fc97c8d2c99bb20a38fed9f38c0aa9`; avalanche `0x30a667df8562a2460f45ac297d833a36feac0c2f`; avalanche `0x63b0b80ee068d3cf46392c34025fa13a1f3b3f80`; avalanche `0x70d30270ccc356f47e5782a1a905ea85b9e08cea`; avalanche `0x746ba48fc973596d0077573bda6185ca3bb9c3dc`; avalanche `0x7af0a3f5bcd7b37439fa6b888617043d92d43637`; avalanche `0x80b010450fdaf6a3f8df033ee296e92751d603b3`; avalanche `0x90fbe9dfe76f6ef971c7a297641dfa397099a13e`; avalanche `0xa4918c50aadba9edcaf302562739c1b1c1367aa9`; avalanche `0xac80096d53c5965d9432592d28687c521472b9eb`; avalanche `0xaedb70d42161e6e135250150ea561dd77a694798`; avalanche `0xaf2d365e668baafedcfd256c0fbbe519e594e390`; avalanche `0xcd7d33c265c811ee12c956d28c0e91f32a65119d`; avalanche `0xcda140de9873e8f912f12c864be786442de8a818`; avalanche `0xda0019e7e50ee4990440b1aa5dffcac6e27ee27b`; avalanche `0xde53842f87c95362b2912db5dbba404e7d5ff842`; avalanche `0xea4b1b0aa3c110c55f650d28159ce4ad43a4a58b`; avalanche `0xee396d4ee16fd8c7d9bfb039d05f271d3c92e57d`; avalanche `0xfc6da929c031162841370af240dec19099861d3b`; avalanche `0xfcde4a87b8b6fa58326bb462882f1778158b02f1` | ⚠️ Unaudited |
| MSNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf38ee864e36650f8c0abd14622a55bb1f6833d32` | ⚠️ Unaudited |
| MToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e32b13ce7f2e80a01932b42553652e053d6ed8e` | ⚠️ Unaudited |
| MultiBridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 22 deployments: ethereum `0x394d854e577cf53609459c677fbdfc40c656849d`; ethereum `0x6cadd14a6ebd86ed42c6cdd94fe7a063ab6db362`; ethereum `0xa719cb79af39a9c10eda2755e0938bce35e9de24`; ethereum `0xbade2a874e27b5b0920da93efe6845036c6fb5a4`; optimism `0x0dbb98d24c2c5c4c66b3826858eb8e2120f36cd7`; optimism `0x1f4f04da5899a604fdb1ba77656bd1a365cb8dad`; optimism `0x83250ffec162e084a23e165434a8a110623abe38`; optimism `0xf560ac5b936649a6876db66513c3739aedd17190`; bsc `0x09236aff6b36a5dbf97b5030a5a650e06931c51e`; bsc `0x2c30b4cb4b3001afa5b8c43c5a7ca548067562a0`; bsc `0x443b4dd51751e38eecd9c426ec6b7655964a2bc6`; bsc `0x4b5f2b7eb28e27385d89c34adc0eb4f2e4254fcd`; bsc `0xa4918c50aadba9edcaf302562739c1b1c1367aa9`; bsc `0xdd2612c292431aaa727fe24d1a8afbe4928bbc55`; arbitrum `0x37596f20adef5cc9618c8b6ddfa9dcb6329cb0fd`; arbitrum `0x75e4fd0ab0e94f6b5e9907066b10829eb1d15c5a`; celo `0x38d1e20b0039bfbeef4096be00175227f8939e51`; celo `0xad543f18cff85c77e140e3e5e3c3392f6ba9d5ca`; linea `0x265b25e22bcd7f10a5bd6e6410f10537cc7567e8`; linea `0x5471ea8f739dd37e9b81be9c5c77754d8aa953e4`; linea `0x7d43aabc515c356145049227cee54b608342c0ad`; linea `0xf5c6825015280cdfd0b56903f9f8b5a2233476f5` | ⚠️ Unaudited |
| Multicall2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 3 deployments: optimism `0x7e2dc2b896b7aac98d6ee8e954d3f5bdcc90076b`; metis `0x32960f513727b54876d8974bcb3f107b07d771ed`; arbitrum `0x842ec2c7d803033edf55e478f461fc547bc54eb2` | ⚠️ Unaudited |
| OneTokenV1 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xca37530e7c5968627be470081d1c993eb1deaf90` | ⚠️ Unaudited |
| OpenDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b484b82567a09e2588a13d54d032153f0c0aee0` | ⚠️ Unaudited |
| OpenDAOMembershipNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd22f83e8a1502b1d41c0b40cf64b291a6eabc44d` | ⚠️ Unaudited |
| OpenDAOStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedd27c961ce6f79afc16fd287d934ee31a90d7d1` | ⚠️ Unaudited |
| OpThales | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: ethereum `0x8947da500eb47f82df21143d0c01a29862a8c3c5`; optimism `0x217d47011b23bb961eb6d93ca9945b7501a5bb11` | ⚠️ Unaudited |
| OriginalTokenVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-231881 | `0xb37d31b2a74029b5951a2778f959282e2d518595` | ⚠️ Unaudited |
| OriginalTokenVault | unknown | project_anchor | own_supporting | 0 | bsc | unit-231967 | `0x78bc5ee9f11d133a08b331c2e18fe81be0ed02dc` | ⚠️ Unaudited |
| OriginalTokenVault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-231917 | `0xc1a2d967dfaa6a10f3461bc21864c23c1dd51eea` | ⚠️ Unaudited |
| OriginalTokenVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-231944 | `0xfe31bfc4f7c9b69246a6dc0087d91a91cb040f76` | ⚠️ Unaudited |
| OriginalTokenVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd9d1034ef3d21221f008c7e96346ca999966752c` | ⚠️ Unaudited |
| OriginalTokenVault | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-231950 | `0x5427fefa711eff984124bfbb1ab6fbf5e3da1820` | ⚠️ Unaudited |
| OriginalTokenVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0db3b38383e87b03ac745b0d58d17434c890e0d3` | ⚠️ Unaudited |
| OriginalTokenVaultV2 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-231877 | `0x7510792a3b1969f9307f3845ce88e39578f2bae1` | ⚠️ Unaudited |
| OriginalTokenVaultV2 | core_logic | project_anchor | own_supporting | 0 | optimism | unit-231885 | `0x6e380ad5d15249ef2de576e3189fc49b5713be4f` | ⚠️ Unaudited |
| OriginalTokenVaultV2 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-231962 | `0x11a0c9270d88c99e221360bca50c2f6fda44a980` | ⚠️ Unaudited |
| OriginalTokenVaultV2 | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-231942 | `0xea4b1b0aa3c110c55f650d28159ce4ad43a4a58b` | ⚠️ Unaudited |
| OriginalTokenVaultV2 | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-231954 | `0xb51541df05de07be38dcfc4a80c05389a54502bb` | ⚠️ Unaudited |
| PeggedTokenBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-231870 | `0x16365b45eb269b5b5dacb34b4a15399ec79b95eb` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | project_anchor | own_supporting | 0 | optimism | unit-231883 | `0x61f85ff2a2f4289be4bb9b72fc7010b3142b5f41` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | project_anchor | own_supporting | 0 | bsc | unit-231969 | `0xd443fe6bf23a4c9b78312391a30ff881a097580e` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | project_anchor | own_supporting | 0 | gnosis | unit-231890 | `0xd4c058380d268d85bc7c758072f561e8f2db5975` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | project_anchor | own_supporting | 0 | polygon | unit-231914 | `0x4d58fdc7d0ee9b674f49a0ade11f26c3c9426f7a` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | project_anchor | own_supporting | 0 | metis | unit-231891 | `0x3bbadff9aeee4a74d3cf6da05c30868c9ff85bb8` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-231895 | `0xbb7684cc5408f4dd0921e5c2cadd547b8f1ad573` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | project_anchor | own_supporting | 0 | moonriver | unit-231898 | `0x374b8a9f3ec5eb2d97eca84ea27aca45aa1c57ef` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xda1dd66924b0470501ac7736372d4171cdd1162e` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | project_anchor | own_supporting | 0 | avalanche | unit-231952 | `0x88dcdc47d2f83a99cf0000fdf667a468bb958a78` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-231873 | `0x52e4f244f380f8fa51816c8a10a63105dd4de084` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-231889 | `0xc3c5b9474273113efb74e7da43b5aaba0cd9699a` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-231964 | `0x26c76f7fef00e02a5dd4b5cc8a0f717eb61e1e4b` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-231916 | `0xb51541df05de07be38dcfc4a80c05389a54502bb` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-231979 | `0x5471ea8f739dd37e9b81be9c5c77754d8aa953e4` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-231940 | `0xc72e7fc220e650e93495622422f3c14fb03aaf6b` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-231956 | `0xb774c6f82d1d5dbd36894762330809e512fed195` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-231972 | `0x9bb46d5100d2db4608112026951c9c965b233f4d` | ⚠️ Unaudited |
| Perlin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeca82185adce47f39c684352b0439f030f860318` | ⚠️ Unaudited |
| Perpetual | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x220a9f0dd581cbc58fcfb907de0454cbf3777f76` | ⚠️ Unaudited |
| PerpToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc396689893d065f41bc2c6ecbee5e0085233447` | ⚠️ Unaudited |
| Platform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0437beb5bb7cf980e90983f6029033d710bd1da` | ⚠️ Unaudited |
| Pluto | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfe3ac769b2d8e382cb86143e0b0b497e1ed5447` | ⚠️ Unaudited |
| PolkaExToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe6f143a0e0a8f24f6294ce3432ea10fad0206920` | ⚠️ Unaudited |
| PPTimedVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60842a6b44cca5eb7685d1135acf69b1336b28b3` | ⚠️ Unaudited |
| PriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xf4aef21d906992afadde7a9676e1db4feb6390dd` | ⚠️ Unaudited |
| PSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcafe001067cdef266afb7eb5a286dcfd277f3de5` | ⚠️ Unaudited |
| QiStablecoin | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3fa99a148fa48d14ed51d610c367c61876997f1` | ⚠️ Unaudited |
| RamsesClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe14e7506a70781bc36a6e72d46ef2b028d1f75c6` | ⚠️ Unaudited |
| ReefToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe3e6a25e6b192a42a44ecddcd13796471735acf` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7a3909c7996efe42d425cd932fc44e3840fcab71` | ⚠️ Unaudited |
| Router01 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e169082fff23cee6766062b96051a78c543127d` | ⚠️ Unaudited |
| SafeBoxBuyback | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x679c0174f6c288c4bcd5c95c9ec99d50357c59e7` | ⚠️ Unaudited |
| SafleToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04b33078ea1aef29bf3fb29c6ab7b200c58ea126` | ⚠️ Unaudited |
| SGN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8d982783040e3ccc0c04cc7b88b9637ce7286c50`; ethereum `0xcb4a7569a61300c50cf80a2be16329ad9f5f8f9e` | ⚠️ Unaudited |
| SingleBridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: ethereum `0xeb6c39a0b62ede31f4ae426c1202b27476b69312`; bsc `0x66acea0f41656711f58ff840c8857e3e5356f64f`; bsc `0xbbca42c60b5290f2c48871a596492f93ff0ddc82`; bsc `0xe46910336479f254723710d57e7b683f3315b22b`; celo `0xb1835871e00a587df6fa6b401973980811b25560`; celo `0xd85e30c5d372942810c86c4ac9d7b3bb24cc1965` | ⚠️ Unaudited |
| SmallToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fa38443e5caec9f8d9c3fc37cd1dae2a523d2f2` | ⚠️ Unaudited |
| SportAMMLiquidityPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x842e89b7a7ef8ce099540b3613264c933ce0eba5` | ⚠️ Unaudited |
| SportVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 4 | optimism | n/a | 4 deployments: optimism `0x43d19841d818b2ccc63a8b44ce8c7def8616d98e`; optimism `0x5e2b49c68f1fd68af1354c377eacec2f05632d3f`; optimism `0xbaac5464bf6e767c9af0e8d4677c01be2065fd5f`; optimism `0xc922f4cde42dd658a7d3ea852caf7eae47f6cecd` | ⚠️ Unaudited |
| StabilityPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7aed63385c03dc8ed2133f705bbb63e8ea607522` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x8a4b4c2acadeaa7206df96f00052e41d74a015ce`; ethereum `0xa251c4691c1ffd7d9b128874c023427513d8ac5c`; ethereum `0xdb3130952ed9b5fa7108dedaaa921ae8f59beacb` | ⚠️ Unaudited |
| StakingPools | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37c7c2ae51e968cefb82cff2102727256d36d6ee` | ⚠️ Unaudited |
| StakingReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1e6b1ceaf75936f153abb7b65fba57abae14e6ce`; ethereum `0xb01fd7bc0b3c433e313bf92dac09ff3942212b42` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x4aec980a0daef4905520a11b99971c7b9583f4f8`; optimism `0xfe757a40f3eda520845b339c698b321663986a4d` | ⚠️ Unaudited |
| Standard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9040e237c3bf18347bb00957dc22167d0f2b999d` | ⚠️ Unaudited |
| StandardArbERC20 | token | non_address_book | non_address_book_inventory (excluded) | 8 | arbitrum | n/a | 8 deployments: arbitrum `0x3a8b787f78d775aecfeea15706d4221b40f345ab`; arbitrum `0x55ff62567f09906a85183b866df84bf599a4bf70`; arbitrum `0x69eb4fa4a2fbd498c257c57ea8b7655a2559a581`; arbitrum `0x9c67ee39e3c4954396b9142010653f17257dd39c`; arbitrum `0xa72159fc390f0e3c6d415e658264c7c4051e9b87`; arbitrum `0xae6aab43c4f3e0cea4ab83752c278f8debaba689`; arbitrum `0xcafcd85d8ca7ad1e1c6f82f651fa15e33aefd07b`; arbitrum `0xe72ba9418b5f2ce0a6a40501fe77c6839aa37333` | ⚠️ Unaudited |
| TaleOfThalesNFTs | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa9218c6d51b87eb3ee74e14cb5d50bde00be7021` | ⚠️ Unaudited |
| ThalesAMMLiquidityPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xc10a0a6ff6496e0bd896f9f6da5a7b640b85ea40` | ⚠️ Unaudited |
| Tickets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a58c0be72be218b41c608b7fe7c5bb630736c71` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b79e11984514ece5b2db561f49c0466cc7659ea` | ⚠️ Unaudited |
| TomVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd90a92bd23b30dc3a69403e00651ff6d08c00fe7` | ⚠️ Unaudited |
| TORN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77777feddddffc19ff86db637967013e6c6a116c` | ⚠️ Unaudited |
| TracerToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c4a4204b79dd291d6b6571c5be8bbcd0622f050` | ⚠️ Unaudited |
| TransferAgent | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231879 | `0x9b274bc73940d92d0af292bde759cbfcce661a0b` | ⚠️ Unaudited |
| TransferAgent | unknown | project_anchor | own_supporting | 0 | bsc | unit-231966 | `0x3d85b598b734a0e7c8c1b62b00e972e9265da541` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x70a35414fad53752c9352401be211779ec413bd4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x99e8352d079326bc431633a61954f713aafe372c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe31a0da5e59df4c82c60d2dd14be64e7ec7c994f` | ⚠️ Unaudited |
| UChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x08c15fa26e519a78a666d19ce5c646d55047e0a3` | ⚠️ Unaudited |
| UChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x14af1f2f02dccb1e43402339099a05a5e363b83c` | ⚠️ Unaudited |
| UChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1b815d120b3ef02039ee11dc2d33de7aa4a8c603` | ⚠️ Unaudited |
| UChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x60bb3d364b765c497c8ce50ae0ae3f0882c5bd05` | ⚠️ Unaudited |
| UChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xecc4176b90613ed78185f01bd1e42c5640c4f09d` | ⚠️ Unaudited |
| Unipool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x308777ddec61f5000d8394626d55dbb0312fe874`; ethereum `0xdc7a844a45ef936497fb916f1c2ddb80f59a8adc` | ⚠️ Unaudited |
| Viewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5803457e3074e727fa7f9aed60454bf2f127853b`; ethereum `0xb1835871e00a587df6fa6b401973980811b25560` | ⚠️ Unaudited |
| Viewer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x329ba09997f91812a833039cce58411400a69df0`; arbitrum `0x63fc9330bc566f8966cf20fd5a31bce68387d253` | ⚠️ Unaudited |
| WirexToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa02120696c7b8fe16c09c749e4598819b2b0e915` | ⚠️ Unaudited |
| WithdrawInbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: ethereum `0xd20fc42e293734f58316e2106933b8d9fb14f5b2`; optimism `0x1b6a49b01176020b153d0cd5bc90ef2b75676f00`; bsc `0xf0ff9888a70f44eb12223a6a55c65976ba7bf854`; polygon `0x0e6847e732c0dfe40cc15216ac95e558960e522e`; avalanche `0x03ab38cf52173cc71be33b0d2779568f412be828` | ⚠️ Unaudited |
| WootradeNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4691937a7508860f876c9c0a2a617e7d9e945d4b` | ⚠️ Unaudited |
| xCVP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ae236653325b29d5ab4a2c8cb285e8059c2c204` | ⚠️ Unaudited |
| xIMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x363b2deac84f0100d63c7427335f8350f596bf59` | ⚠️ Unaudited |
| ZenlinkToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 2 deployments: moonbeam `0x3fd9b6c9a24e09f67b7b706d72864aebb439100c`; moonriver `0x0f47ba9d9bde3442b42175e51d6a367928a1173b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (92)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9b216ab6b6705b4e3f5a67b1b934532a40b718bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231968 | `0x9b36f165bab9ebe611d491180418d8de4b8f3a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | heco | n/a | 13 deployments: heco `0x4668e0e7cc545de886abf038067f81cd4dc0924b`; heco `0x5d96d4287d1ff115ee50fac0526cf43ecf79bfc6`; heco `0x779a8134750809f79cf0ba48ee0ff1a5c41a8fdc`; heco `0xbb7684cc5408f4dd0921e5c2cadd547b8f1ad573`; fantom `0x6626c47c00f1d87902fc13eecfac3ed06d5e8d8a`; fantom `0x74b23882a30290451a17c44f4f05243b6b58c76d`; boba `0x4c882ec256823ee773b25b414d36f92ef58a7c0c`; boba `0x5008f837883ea9a07271a1b5eb0658404f5a9610`; boba `0x841ce48f9446c8e281d3f1444cb859b4a6d0738c`; boba `0x8db213be5268a2b8b78af08468ff1ea422073da0`; boba `0xce055ea4f29ffb8bf35e852522b96ab67cbe8197`; harmony `0x985458e523db3d53125813ed68c274899e9dfab4`; harmony `0xbd8064cdb96c00a73540922504f989c64b7b8b96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-231902 | `0xf39e2d6f40eeefbec021badc6ef5a4f201f5dc4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-231912 | `0x4c882ec256823ee773b25b414d36f92ef58a7c0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe3bd747dd7934b069385aa058e670aa4f036be2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-231921 | `0xf5c6825015280cdfd0b56903f9f8b5a2233476f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-231922 | `0xf5c6825015280cdfd0b56903f9f8b5a2233476f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-231924 | `0x30f7aa65d04d289ce319e88193a33a8eb1857fb9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-231925 | `0x374b8a9f3ec5eb2d97eca84ea27aca45aa1c57ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-231926 | `0x38d1e20b0039bfbeef4096be00175227f8939e51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-231928 | `0x7d91603e79ea89149baf73c9038c51669d8f03e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | boba | unit-231930 | `0xc5ef662b833de914b9ba7a3532c6bb008a9b23a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-231932 | `0x0d72be73619e29a67fbd28348ac952288cc9ee46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-231934 | `0x54069e96c4247b37c2fbd9559ca99f08cd1cd66c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-231983 | `0x7d43aabc515c356145049227cee54b608342c0ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-231984 | `0x9bb46d5100d2db4608112026951c9c965b233f4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-231985 | `0xf5c6825015280cdfd0b56903f9f8b5a2233476f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0090ebf3232f81e3ecacc800157cdbc04b7c9081` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0253ee0a732fb3727e04edf3be4293729344b331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x056e1e2857c1f80cc1a9bf5a91018bb49be3e480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0aef446d2db35a83ee7a618a06b73a83985f4aa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x124f71d2417aeb02c313f02b826aa3261a0adb9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x141133fb6cc58451b903bc9007f43cd63c19e3a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x23423292396a37c0c2e4d384dce7ab67738bec28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2f57a0c58d7dc6e5c00c631f9efedaf23aaaf9f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x307dd12dc12720991b7ecf2fb3a27b4bcaf09716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x375ec65e75083ee8545fa9168257ac2a456ddabb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3a7bff385e5032a26aaf6d468aaf03919299f603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4d716870b3a00db3b28805a104f4f4d59bb4ec76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5b5ef52799b544ae715e092ad4dc33396a0b4f19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x670cf2628816d95b36b1a4db2dfba80eaebd7b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6dc2654c36001d3f10e2428a6c4509208882eae0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x722377a047e89ca735f09eb7cccab780943c4cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x78d6c2ca48de3469a70249630214c9367479bb43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x80620ef96c95a5d90cb131067b6d735222df67ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8131958348d53e39aeec6295538b43328048388b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8347b8a88c0cc6aad466d93b6533927ce8100857` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8b3d37b4c3013e5c43caf5b01a860f74ea3f0225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8f17b4e0c6aaad6b598c93ac67bcb5bf4f657fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x98b4b141649de391f76317aca066df4ac65ec533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x99965faca42486f5d2d57363d1442fe596c14ca8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa0a9b40a1de9a5b2e150dcad5ad1484b4fb5bd57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa1341dac752ce0d48c67ef205c577854553269a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb1662fc21a58847f2bcd9c3f0790124d9b6048a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb4938b1cfc5547be15d81f7af2172257382c8633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbf4dd73c9f90e9f2ddba56933ced7eafdf56a8a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbf5979c2ee9a1ab14f62e8b590122016f19f3912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc0012af36b09785c2d932ac83a5da9b2b72148ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc12cac7090baa48ec750cceec57c80768f6ee58e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc343726f8dce6ba2d3eea8f8e27da4122fff2b92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xcc9b8e319de5f076bc495855ef586d271cdf58fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xcdfd490003a407ad45ebf67265a6c676b68a001e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd2d8027a06a2757deacd2bbc977ce60a80ba5f9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd9b5a547eec9eaf01299e9c8bd0f2b2bac911b9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdb19e909eefbe4e2f96da6ddfd0c286a3f9ce589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe0f5f19934104da41d6cd52b1a6a5f7c25ce2639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xed026c59bc6d9eb8be2d96a07c38dd19d2aa067c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf4dde0ccb6115c40292266b3266866b50b52d5b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf81bd64b4b1d8095480092db8f540f3b3abb8658` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfa68baadbdcf014fa20bd1a4542967ae40ddca53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfc4e82b7113f269f2b6a8ae79409846c9ca8b67c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfc76114c5adebfa257153ea82b8594c3b25baebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfcc0a9ffee90611dc812fe57c7df99794e7d2d1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfde96cb76ac5fa3e7a38a2851674a211051c1a66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-231892 | `0xd46f8e428a06789b5884df54e029e738277388d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-231893 | `0x3b53d2c7b44d40be05fa5e2309ffeb6eb2492d88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-231896 | `0x0d71d18126e03646eb09fec929e2ae87b7cae69d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x42588054a46a074daf2adeec97cd419749a9e263` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-231923 | `0xf8bf9988206c4de87f52a3c24486e4367b7088cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-231973 | `0xa7c9fede809b6af10dc52590804c69f40f6f8154` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-231974 | `0xd33289644740ef5f488b0270f812f7b18b500935` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-231975 | `0xd46f8e428a06789b5884df54e029e738277388d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-231977 | `0x4c882ec256823ee773b25b414d36f92ef58a7c0c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-231978 | `0xb3833ecd19d4ff964fa7bc3f8ac070ad5e360e56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-231980 | `0x7d43aabc515c356145049227cee54b608342c0ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-231981 | `0x7d43aabc515c356145049227cee54b608342c0ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-231982 | `0x9b36f165bab9ebe611d491180418d8de4b8f3a1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231938 | `0xbdd2739ae69a054895be33a22b2d2ed71a1de778` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum-nova | unit-231946 | `0x4b8904945967fa7148b6f9677c2855081e2e8166` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum-nova | unit-231948 | `0xb3833ecd19d4ff964fa7bc3f8ac070ad5e360e56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb58078cbe44fb2cb51cdf59e02fc35072139aeef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xccf619a8a7a1557fbe3b61f551971309f4818e24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0866edc0cc43ff07bfe126f3cb2f94a0803047f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-231976 | `0x841ce48f9446c8e281d3f1444cb859b4a6d0738c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-231960 | `0x2e8dd00e5793a316144cc77b59f80accf7cc41ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-231904 | `0x4384d5a9d7354c65ce3aee411337bd40493ad1bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-231906 | `0x841ce48f9446c8e281d3f1444cb859b4a6d0738c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-231908 | `0xbcfef6bb4597e724d720735d32a9249e0640aa11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-231910 | `0xbdd2739ae69a054895be33a22b2d2ed71a1de778` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-231919 | `0x78a21c1d3ed53a82d4247b9ee5bf001f4620ceec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-231920 | `0xdd90e5e87a2081dcf0391920868ebc2ffb81a1af` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [CertiK_sgn_cbridge.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/CertiK_sgn_cbridge.pdf) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [PeckShield-Audit_Report-CbridgeSui-v1.0.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/PeckShield-Audit_Report-CbridgeSui-v1.0.pdf) | PeckShield | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [PeckShield_gov.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/PeckShield_gov.pdf) | PeckShield | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [PeckShield_message.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/PeckShield_message.pdf) | PeckShield | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [PeckShield_nft_bridge.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/PeckShield_nft_bridge.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [PeckShield_pegged.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/PeckShield_pegged.pdf) | PeckShield | Audit | 2022-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [PeckShield_sgn_cbridge.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/PeckShield_sgn_cbridge.pdf) | PeckShield | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [SlowMist_gov.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/SlowMist_gov.pdf) | SlowMist | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [SlowMist_message.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/SlowMist_message.pdf) | SlowMist | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | medium |
| [SlowMist_message_apps.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/SlowMist_message_apps.pdf) | SlowMist | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [SlowMist_pegged.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/SlowMist_pegged.pdf) | SlowMist | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [SlowMist_sgn_cbridge.pdf](https://github.com/celer-network/sgn-v2-contracts/blob/main/audit/SlowMist_sgn_cbridge.pdf) | SlowMist | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16865] CertiK_sgn_cbridge.pdf — no match: Extracted 21 contract names from the audit scope table and findings. Audit date found on cover page and delivery date.
- [16866] PeckShield-Audit_Report-CbridgeSui-v1.0.pdf — no match: No explicit scope table; contracts extracted from findings targets.
- [16867] PeckShield_gov.pdf — no match: Only one contract in scope: SimpleGovernance. Audit date from cover page and latest audit report date.
- [16868] PeckShield_message.pdf — no match: Scope explicitly includes contracts/message directory, excluding apps sub-directory. Three contracts identified: MessageBusSender, MessageBusReceiver, MessageBusAddress.
- [16869] PeckShield_nft_bridge.pdf — no match: Scope explicitly lists three contracts: NFTBridge.sol, NFTMCN.sol, NFTPeg.sol. MCNNFT is also a target in findings.
- [16870] PeckShield_pegged.pdf — matched: Audit scope explicitly limited to contracts/pegged/ directory. Five contracts identified from findings and code snippets.
- [16871] PeckShield_sgn_cbridge.pdf — no match: Contracts extracted from findings targets and mentions; no explicit scope table but report clearly indicates audited contracts.
- [16872] SlowMist_gov.pdf — no match: Only one contract, SimpleGovernance, is in scope. Audit date is the end date of the audit period.
- [16873] SlowMist_message.pdf — no match: No explicit scope section; contracts inferred from visibility description and code locations in findings.
- [16874] SlowMist_message_apps.pdf — no match: Audit scope explicitly lists NFTMCN.sol, NFTPeg.sol, NFTBridge.sol. Audit date from section 5: 2022.04.14 - 2022.04.18, using end date.
- [16875] SlowMist_pegged.pdf — no match: Audit scope defined by commit hash for contracts/pegged directory. Contracts extracted from visibility tables and findings.
- [16876] SlowMist_sgn_cbridge.pdf — no match: Contracts extracted from the 'Contracts Description' and 'Visibility Description' sections of the audit report. The audit date is the end date of the audit period (2021.10.25 - 2021.11.02).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| CertiK_sgn_cbridge.pdf | Bridge | ambiguous — not counted | Bridge (alternative) `0x9b36f165bab9ebe611d491180418d8de4b8f3a1f` — deployed 2023-07-14 11:57:52+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0xdd90e5e87a2081dcf0391920868ebc2ffb81a1af` — deployed 2021-12-01 11:25:00+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x5427fefa711eff984124bfbb1ab6fbf5e3da1820` — deployed 2021-12-01 11:20:11+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x841ce48f9446c8e281d3f1444cb859b4a6d0738c` — deployed 2022-01-12 09:51:00+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x841ce48f9446c8e281d3f1444cb859b4a6d0738c` — deployed 2021-12-09 12:35:06+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0xef3c714c9425a8f3697a9c969dc1af30ba82e5d4` — deployed 2021-12-01 11:45:17+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x1619de6b6b20ed217a58d00f37b9d47c7663feca` — deployed 2021-12-01 11:32:42+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x9d39fc627a6d9d9f8c831c16995b209548cc3401` — deployed 2021-12-01 11:31:35+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x88dcdc47d2f83a99cf0000fdf667a468bb958a78` — deployed 2021-12-01 11:38:30+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| CertiK_sgn_cbridge.pdf | FarmingRewards | unmatched — not counted | — | listed in scope table and findings | no |
| CertiK_sgn_cbridge.pdf | Govern | unmatched — not counted | — | listed in scope table and findings | no |
| CertiK_sgn_cbridge.pdf | Pool | unmatched — not counted | — | listed in scope table | no |
| CertiK_sgn_cbridge.pdf | SGN | unmatched — not counted | — | listed in scope table and findings | no |
| CertiK_sgn_cbridge.pdf | Signers | unmatched — not counted | — | listed in scope table and findings | no |
| CertiK_sgn_cbridge.pdf | Staking | unmatched — not counted | — | listed in scope table and findings | no |
| CertiK_sgn_cbridge.pdf | StakingReward | unmatched — not counted | — | listed in scope table and findings | no |
| CertiK_sgn_cbridge.pdf | Viewer | unmatched — not counted | — | listed in scope table and findings | no |
| CertiK_sgn_cbridge.pdf | Whitelist | unmatched — not counted | — | listed in scope table | no |
| CertiK_sgn_cbridge.pdf | ISigsVerifier | unmatched — not counted | — | listed in scope table | no |
| CertiK_sgn_cbridge.pdf | DataTypes | unmatched — not counted | — | listed in scope table | no |
| CertiK_sgn_cbridge.pdf | Pb | unmatched — not counted | — | listed in scope table and findings | no |
| CertiK_sgn_cbridge.pdf | PbBridge | unmatched — not counted | — | listed in scope table and findings | no |
| CertiK_sgn_cbridge.pdf | PbFarming | unmatched — not counted | — | listed in scope table and findings | no |
| CertiK_sgn_cbridge.pdf | PbPool | unmatched — not counted | — | listed in scope table and findings | no |
| CertiK_sgn_cbridge.pdf | PbSgn | unmatched — not counted | — | listed in scope table and findings | no |
| CertiK_sgn_cbridge.pdf | PbStaking | unmatched — not counted | — | listed in scope table and findings | no |
| CertiK_sgn_cbridge.pdf | Faucet | unmatched — not counted | — | listed in scope table | no |
| CertiK_sgn_cbridge.pdf | MintableERC20 | unmatched — not counted | — | listed in scope table | no |
| CertiK_sgn_cbridge.pdf | TestERC20 | unmatched — not counted | — | listed in scope table | no |
| PeckShield-Audit_Report-CbridgeSui-v1.0.pdf | vault | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit_Report-CbridgeSui-v1.0.pdf | admin_manager | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield_gov.pdf | SimpleGovernance | unmatched — not counted | — | listed in scope: 'this audit only covers the contracts/governed-owner/SimpleGovernance.sol contract' | no |
| PeckShield_message.pdf | MessageBusSender | unmatched — not counted | — | Listed in scope: contracts/message directory; findings target MessageBusSender | no |
| PeckShield_message.pdf | MessageBusReceiver | unmatched — not counted | — | Listed in scope: contracts/message directory; findings target MessageBusReceiver | no |
| PeckShield_message.pdf | MessageBusAddress | unmatched — not counted | — | Mentioned in finding PVE-003 as a contract with setMessageBus function | no |
| PeckShield_nft_bridge.pdf | NFTBridge | unmatched — not counted | — | listed in scope | no |
| PeckShield_nft_bridge.pdf | NFTMCN | unmatched — not counted | — | listed in scope | no |
| PeckShield_nft_bridge.pdf | NFTPeg | unmatched — not counted | — | listed in scope | no |
| PeckShield_nft_bridge.pdf | MCNNFT | unmatched — not counted | — | mentioned as target in finding PVE-001 | no |
| PeckShield_pegged.pdf | MaiBridgeToken | unmatched — not counted | — | Listed as target in finding PVE-001 | no |
| PeckShield_pegged.pdf | OriginalTokenVault | own contract | OriginalTokenVault (alternative) `0xfe31bfc4f7c9b69246a6dc0087d91a91cb040f76` — deployed 2022-01-10 10:59:58+03 — liveness: live (current_address_book_code)<br>OriginalTokenVault (alternative) `0x78bc5ee9f11d133a08b331c2e18fe81be0ed02dc` — deployed 2021-12-29 06:55:16+03 — liveness: live (current_address_book_code)<br>OriginalTokenVault (alternative) `0xb37d31b2a74029b5951a2778f959282e2d518595` — deployed 2021-12-15 10:25:35+03 — liveness: live (current_address_book_code)<br>OriginalTokenVault (alternative) `0xc1a2d967dfaa6a10f3461bc21864c23c1dd51eea` — deployed 2021-12-27 21:01:59+03 — liveness: live (current_address_book_code)<br>OriginalTokenVault (alternative) `0x5427fefa711eff984124bfbb1ab6fbf5e3da1820` — deployed 2022-01-04 11:16:44+03 — liveness: live (current_address_book_code)<br>OriginalTokenVault (selected) `0xbcfef6bb4597e724d720735d32a9249e0640aa11` — deployed 2022-02-08 14:19:32+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-02-08 was 8d from audit; next candidate 37d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield_pegged.pdf | PeggedTokenBridge | ambiguous — not counted | PeggedTokenBridge (alternative) `0x88dcdc47d2f83a99cf0000fdf667a468bb958a78` — deployed 2021-12-24 11:26:51+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0xd443fe6bf23a4c9b78312391a30ff881a097580e` — deployed 2021-12-15 10:28:39+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0x3bbadff9aeee4a74d3cf6da05c30868c9ff85bb8` — deployed 2021-12-31 10:44:50+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0xd4c058380d268d85bc7c758072f561e8f2db5975` — deployed 2022-01-04 10:22:55+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0x4d58fdc7d0ee9b674f49a0ade11f26c3c9426f7a` — deployed 2021-12-24 10:57:27+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0x16365b45eb269b5b5dacb34b4a15399ec79b95eb` — deployed 2021-12-15 18:18:54+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0xbb7684cc5408f4dd0921e5c2cadd547b8f1ad573` — deployed 2022-01-12 10:05:18+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0x61f85ff2a2f4289be4bb9b72fc7010b3142b5f41` — deployed 2022-01-18 17:20:19+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0x374b8a9f3ec5eb2d97eca84ea27aca45aa1c57ef` — deployed 2021-12-24 12:45:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield_pegged.pdf | MultiBridgeToken | unmatched — not counted | — | Listed as target in finding PVE-003 | no |
| PeckShield_pegged.pdf | MintSwapCanonicalToken | unmatched — not counted | — | Listed as target in finding PVE-003 | no |
| PeckShield_sgn_cbridge.pdf | Bridge | ambiguous — not counted | Bridge (alternative) `0x9b36f165bab9ebe611d491180418d8de4b8f3a1f` — deployed 2023-07-14 11:57:52+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0xdd90e5e87a2081dcf0391920868ebc2ffb81a1af` — deployed 2021-12-01 11:25:00+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x5427fefa711eff984124bfbb1ab6fbf5e3da1820` — deployed 2021-12-01 11:20:11+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x841ce48f9446c8e281d3f1444cb859b4a6d0738c` — deployed 2022-01-12 09:51:00+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x841ce48f9446c8e281d3f1444cb859b4a6d0738c` — deployed 2021-12-09 12:35:06+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0xef3c714c9425a8f3697a9c969dc1af30ba82e5d4` — deployed 2021-12-01 11:45:17+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x1619de6b6b20ed217a58d00f37b9d47c7663feca` — deployed 2021-12-01 11:32:42+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x9d39fc627a6d9d9f8c831c16995b209548cc3401` — deployed 2021-12-01 11:31:35+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x88dcdc47d2f83a99cf0000fdf667a468bb958a78` — deployed 2021-12-01 11:38:30+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield_sgn_cbridge.pdf | Viewer | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield_sgn_cbridge.pdf | Staking | unmatched — not counted | — | Target in finding PVE-005 | no |
| PeckShield_sgn_cbridge.pdf | FarmingRewards | unmatched — not counted | — | Mentioned in finding PVE-004 | no |
| PeckShield_sgn_cbridge.pdf | SGN | unmatched — not counted | — | Mentioned in finding PVE-004 | no |
| PeckShield_sgn_cbridge.pdf | StakingReward | unmatched — not counted | — | Mentioned in finding PVE-004 | no |
| SlowMist_gov.pdf | SimpleGovernance | unmatched — not counted | — | listed in scope | no |
| SlowMist_message.pdf | MessageBusAddress | unmatched — not counted | — | mentioned in visibility description | no |
| SlowMist_message.pdf | MessageReceiverApp | unmatched — not counted | — | mentioned in visibility description | no |
| SlowMist_message.pdf | MessageSenderApp | unmatched — not counted | — | mentioned in visibility description | no |
| SlowMist_message.pdf | MessageBus | unmatched — not counted | — | mentioned in visibility description | no |
| SlowMist_message.pdf | MessageBusSender | unmatched — not counted | — | mentioned in code locations | no |
| SlowMist_message.pdf | MessageBusReceiver | unmatched — not counted | — | mentioned in code locations | no |
| SlowMist_message_apps.pdf | NFTMCN | unmatched — not counted | — | listed in scope | no |
| SlowMist_message_apps.pdf | NFTPeg | unmatched — not counted | — | listed in scope | no |
| SlowMist_message_apps.pdf | NFTBridge | unmatched — not counted | — | listed in scope | no |
| SlowMist_pegged.pdf | FraxBridgeToken | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist_pegged.pdf | MintSwapCanonicalTokenPermit | unmatched — not counted | — | listed in visibility table | no |
| SlowMist_pegged.pdf | MintSwapCanonicalToken | unmatched — not counted | — | listed in visibility table | no |
| SlowMist_pegged.pdf | SingleBridgeTokenPermit | unmatched — not counted | — | listed in visibility table | no |
| SlowMist_pegged.pdf | SingleBridgeToken | unmatched — not counted | — | listed in visibility table | no |
| SlowMist_pegged.pdf | MultiBridgeToken | unmatched — not counted | — | listed in visibility table | no |
| SlowMist_pegged.pdf | SwapBridgeToken | unmatched — not counted | — | listed in visibility table and finding N1 | no |
| SlowMist_pegged.pdf | OriginalTokenVault | ambiguous — not counted | OriginalTokenVault (alternative) `0xfe31bfc4f7c9b69246a6dc0087d91a91cb040f76` — deployed 2022-01-10 10:59:58+03 — liveness: live (current_address_book_code)<br>OriginalTokenVault (alternative) `0x78bc5ee9f11d133a08b331c2e18fe81be0ed02dc` — deployed 2021-12-29 06:55:16+03 — liveness: live (current_address_book_code)<br>OriginalTokenVault (alternative) `0xb37d31b2a74029b5951a2778f959282e2d518595` — deployed 2021-12-15 10:25:35+03 — liveness: live (current_address_book_code)<br>OriginalTokenVault (alternative) `0xc1a2d967dfaa6a10f3461bc21864c23c1dd51eea` — deployed 2021-12-27 21:01:59+03 — liveness: live (current_address_book_code)<br>OriginalTokenVault (alternative) `0x5427fefa711eff984124bfbb1ab6fbf5e3da1820` — deployed 2022-01-04 11:16:44+03 — liveness: live (current_address_book_code)<br>OriginalTokenVault (alternative) `0xbcfef6bb4597e724d720735d32a9249e0640aa11` — deployed 2022-02-08 14:19:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| SlowMist_pegged.pdf | PeggedTokenBridge | ambiguous — not counted | PeggedTokenBridge (alternative) `0x88dcdc47d2f83a99cf0000fdf667a468bb958a78` — deployed 2021-12-24 11:26:51+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0xd443fe6bf23a4c9b78312391a30ff881a097580e` — deployed 2021-12-15 10:28:39+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0x3bbadff9aeee4a74d3cf6da05c30868c9ff85bb8` — deployed 2021-12-31 10:44:50+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0xd4c058380d268d85bc7c758072f561e8f2db5975` — deployed 2022-01-04 10:22:55+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0x4d58fdc7d0ee9b674f49a0ade11f26c3c9426f7a` — deployed 2021-12-24 10:57:27+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0x16365b45eb269b5b5dacb34b4a15399ec79b95eb` — deployed 2021-12-15 18:18:54+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0xbb7684cc5408f4dd0921e5c2cadd547b8f1ad573` — deployed 2022-01-12 10:05:18+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0x61f85ff2a2f4289be4bb9b72fc7010b3142b5f41` — deployed 2022-01-18 17:20:19+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0x374b8a9f3ec5eb2d97eca84ea27aca45aa1c57ef` — deployed 2021-12-24 12:45:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| SlowMist_sgn_cbridge.pdf | Bridge | ambiguous — not counted | Bridge (alternative) `0x9b36f165bab9ebe611d491180418d8de4b8f3a1f` — deployed 2023-07-14 11:57:52+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0xdd90e5e87a2081dcf0391920868ebc2ffb81a1af` — deployed 2021-12-01 11:25:00+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x5427fefa711eff984124bfbb1ab6fbf5e3da1820` — deployed 2021-12-01 11:20:11+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x841ce48f9446c8e281d3f1444cb859b4a6d0738c` — deployed 2022-01-12 09:51:00+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x841ce48f9446c8e281d3f1444cb859b4a6d0738c` — deployed 2021-12-09 12:35:06+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0xef3c714c9425a8f3697a9c969dc1af30ba82e5d4` — deployed 2021-12-01 11:45:17+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x1619de6b6b20ed217a58d00f37b9d47c7663feca` — deployed 2021-12-01 11:32:42+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x9d39fc627a6d9d9f8c831c16995b209548cc3401` — deployed 2021-12-01 11:31:35+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x88dcdc47d2f83a99cf0000fdf667a468bb958a78` — deployed 2021-12-01 11:38:30+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| SlowMist_sgn_cbridge.pdf | FarmingRewards | unmatched — not counted | — | listed in code overview | no |
| SlowMist_sgn_cbridge.pdf | Govern | unmatched — not counted | — | listed in code overview | no |
| SlowMist_sgn_cbridge.pdf | Pool | unmatched — not counted | — | listed in code overview | no |
| SlowMist_sgn_cbridge.pdf | SGN | unmatched — not counted | — | listed in code overview | no |
| SlowMist_sgn_cbridge.pdf | Signers | unmatched — not counted | — | listed in code overview | no |
| SlowMist_sgn_cbridge.pdf | Staking | unmatched — not counted | — | listed in code overview | no |
| SlowMist_sgn_cbridge.pdf | StakingReward | unmatched — not counted | — | listed in code overview | no |
| SlowMist_sgn_cbridge.pdf | Viewer | unmatched — not counted | — | listed in code overview | no |
| SlowMist_sgn_cbridge.pdf | Whitelist | unmatched — not counted | — | listed in code overview | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x5427fefa711eff984124bfbb1ab6fbf5e3da1820` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x9d39fc627a6d9d9f8c831c16995b209548cc3401` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xdd90e5e87a2081dcf0391920868ebc2ffb81a1af` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x88dcdc47d2f83a99cf0000fdf667a468bb958a78` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x841ce48f9446c8e281d3f1444cb859b4a6d0738c` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x841ce48f9446c8e281d3f1444cb859b4a6d0738c` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1619de6b6b20ed217a58d00f37b9d47c7663feca` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xef3c714c9425a8f3697a9c969dc1af30ba82e5d4` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x9b36f165bab9ebe611d491180418d8de4b8f3a1f` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb37d31b2a74029b5951a2778f959282e2d518595` | OriginalTokenVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x78bc5ee9f11d133a08b331c2e18fe81be0ed02dc` | OriginalTokenVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xc1a2d967dfaa6a10f3461bc21864c23c1dd51eea` | OriginalTokenVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xfe31bfc4f7c9b69246a6dc0087d91a91cb040f76` | OriginalTokenVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5427fefa711eff984124bfbb1ab6fbf5e3da1820` | OriginalTokenVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7510792a3b1969f9307f3845ce88e39578f2bae1` | OriginalTokenVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x6e380ad5d15249ef2de576e3189fc49b5713be4f` | OriginalTokenVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x11a0c9270d88c99e221360bca50c2f6fda44a980` | OriginalTokenVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xea4b1b0aa3c110c55f650d28159ce4ad43a4a58b` | OriginalTokenVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xb51541df05de07be38dcfc4a80c05389a54502bb` | OriginalTokenVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x16365b45eb269b5b5dacb34b4a15399ec79b95eb` | PeggedTokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x61f85ff2a2f4289be4bb9b72fc7010b3142b5f41` | PeggedTokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd443fe6bf23a4c9b78312391a30ff881a097580e` | PeggedTokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xd4c058380d268d85bc7c758072f561e8f2db5975` | PeggedTokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x4d58fdc7d0ee9b674f49a0ade11f26c3c9426f7a` | PeggedTokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x3bbadff9aeee4a74d3cf6da05c30868c9ff85bb8` | PeggedTokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xbb7684cc5408f4dd0921e5c2cadd547b8f1ad573` | PeggedTokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x374b8a9f3ec5eb2d97eca84ea27aca45aa1c57ef` | PeggedTokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x88dcdc47d2f83a99cf0000fdf667a468bb958a78` | PeggedTokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x52e4f244f380f8fa51816c8a10a63105dd4de084` | PeggedTokenBridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xc3c5b9474273113efb74e7da43b5aaba0cd9699a` | PeggedTokenBridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x26c76f7fef00e02a5dd4b5cc8a0f717eb61e1e4b` | PeggedTokenBridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xb51541df05de07be38dcfc4a80c05389a54502bb` | PeggedTokenBridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5471ea8f739dd37e9b81be9c5c77754d8aa953e4` | PeggedTokenBridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc72e7fc220e650e93495622422f3c14fb03aaf6b` | PeggedTokenBridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xb774c6f82d1d5dbd36894762330809e512fed195` | PeggedTokenBridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x9bb46d5100d2db4608112026951c9c965b233f4d` | PeggedTokenBridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9b274bc73940d92d0af292bde759cbfcce661a0b` | TransferAgent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3d85b598b734a0e7c8c1b62b00e972e9265da541` | TransferAgent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 189 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 92 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 6 ambiguous, 64 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=10, medium=2
- Match method counts: temporal_name=1

Zero-match audit list:

- [16865] CertiK_sgn_cbridge.pdf
- [16866] PeckShield-Audit_Report-CbridgeSui-v1.0.pdf
- [16867] PeckShield_gov.pdf
- [16868] PeckShield_message.pdf
- [16869] PeckShield_nft_bridge.pdf
- [16871] PeckShield_sgn_cbridge.pdf
- [16872] SlowMist_gov.pdf
- [16873] SlowMist_message.pdf
- [16874] SlowMist_message_apps.pdf
- [16875] SlowMist_pegged.pdf
- [16876] SlowMist_sgn_cbridge.pdf

Fork inheritance lineage and inherited audits are included when available.
