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

**Bridge** (`0x5427fe...da1820`, chain 1)
Origin: stellaswap (`0x841ce4...d0738c`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Bridge** (`0x9d39fc...cc3401`, chain 10)
Origin: stellaswap (`0x841ce4...d0738c`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Bridge** (`0xdd90e5...81a1af`, chain 56)
Origin: stellaswap (`0x841ce4...d0738c`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Bridge** (`0x88dcdc...958a78`, chain 137)
Origin: stellaswap (`0x841ce4...d0738c`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Bridge** (`0x841ce4...d0738c`, chain 1284)
Origin: stellaswap (`0x841ce4...d0738c`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Bridge** (`0x841ce4...d0738c`, chain 1285)
Origin: stellaswap (`0x841ce4...d0738c`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Bridge** (`0x1619de...63feca`, chain 42161)
Origin: stellaswap (`0x841ce4...d0738c`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Bridge** (`0xef3c71...82e5d4`, chain 43114)
Origin: stellaswap (`0x841ce4...d0738c`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OriginalTokenVault** (`0xb37d31...518595`, chain 1)
Origin: mcdex (`0xea4b1b...a4a58b`)
Containment: 89.5% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- depositNative(uint256,uint64,address,uint64)
- setWrap(address)

**OriginalTokenVault** (`0xbcfef6...40aa11`, chain 10)
Origin: mcdex (`0xea4b1b...a4a58b`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OriginalTokenVault** (`0x78bc5e...ed02dc`, chain 56)
Origin: mcdex (`0xea4b1b...a4a58b`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OriginalTokenVault** (`0xc1a2d9...d51eea`, chain 137)
Origin: mcdex (`0xea4b1b...a4a58b`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OriginalTokenVault** (`0xfe31bf...040f76`, chain 42161)
Origin: mcdex (`0xea4b1b...a4a58b`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OriginalTokenVault** (`0x5427fe...da1820`, chain 43114)
Origin: mcdex (`0xea4b1b...a4a58b`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OriginalTokenVaultV2** (`0x751079...f2bae1`, chain 1)
Origin: mcdex (`0xea4b1b...a4a58b`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OriginalTokenVaultV2** (`0x6e380a...13be4f`, chain 10)
Origin: mcdex (`0xea4b1b...a4a58b`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OriginalTokenVaultV2** (`0x11a0c9...44a980`, chain 56)
Origin: mcdex (`0xea4b1b...a4a58b`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OriginalTokenVaultV2** (`0xea4b1b...a4a58b`, chain 42161)
Origin: mcdex (`0xea4b1b...a4a58b`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OriginalTokenVaultV2** (`0xb51541...4502bb`, chain 43114)
Origin: mcdex (`0xea4b1b...a4a58b`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PeggedTokenBridge** (`0x16365b...9b95eb`, chain 1)
Origin: stellaswap (`0xbb7684...1ad573`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PeggedTokenBridgeV2** (`0x52e4f2...4de084`, chain 1)
Origin: unifarm (`0x26c76f...1e1e4b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PeggedTokenBridgeV2** (`0xc3c5b9...d9699a`, chain 10)
Origin: unifarm (`0x26c76f...1e1e4b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PeggedTokenBridgeV2** (`0x26c76f...1e1e4b`, chain 56)
Origin: unifarm (`0x26c76f...1e1e4b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PeggedTokenBridgeV2** (`0xb51541...4502bb`, chain 137)
Origin: unifarm (`0x26c76f...1e1e4b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PeggedTokenBridgeV2** (`0x5471ea...a953e4`, chain 8453)
Origin: unifarm (`0x26c76f...1e1e4b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PeggedTokenBridgeV2** (`0xc72e7f...3aaf6b`, chain 42161)
Origin: unifarm (`0x26c76f...1e1e4b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PeggedTokenBridgeV2** (`0xb774c6...fed195`, chain 43114)
Origin: unifarm (`0x26c76f...1e1e4b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PeggedTokenBridgeV2** (`0x9bb46d...233f4d`, chain 59144)
Origin: unifarm (`0x26c76f...1e1e4b`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x9b36f1...8f3a1f`, chain 56)
- UnnamedContract (`0xf39e2d...f5dc4a`, chain 130)
- UnnamedContract (`0x4c882e...8a7c0c`, chain 137)
- UnnamedContract (`0xf5c682...3476f5`, chain 196)
- UnnamedContract (`0xf5c682...3476f5`, chain 204)
- UnnamedContract (`0x30f7aa...857fb9`, chain 250)
- UnnamedContract (`0x38d1e2...939e51`, chain 250)
- UnnamedContract (`0xc5ef66...9b23a6`, chain 288)
- UnnamedContract (`0x0d72be...c9ee46`, chain 324)
- UnnamedContract (`0x54069e...1cd66c`, chain 324)
- UnnamedContract (`0x7d43aa...42c0ad`, chain 999)
- UnnamedContract (`0x9bb46d...233f4d`, chain 999)
- UnnamedContract (`0xf5c682...3476f5`, chain 999)
- UnnamedContract (`0x3b53d2...492d88`, chain 1284)
- UnnamedContract (`0x0d71d1...cae69d`, chain 1285)
- UnnamedContract (`0xf8bf99...7088cb`, chain 2222)
- UnnamedContract (`0xa7c9fe...6f8154`, chain 7700)
- UnnamedContract (`0xd33289...500935`, chain 7700)
- UnnamedContract (`0xd46f8e...7388d1`, chain 7700)
- UnnamedContract (`0x4c882e...8a7c0c`, chain 8217)
- UnnamedContract (`0xb3833e...360e56`, chain 8217)
- UnnamedContract (`0x7d43aa...42c0ad`, chain 8453)
- UnnamedContract (`0x7d43aa...42c0ad`, chain 9745)
- UnnamedContract (`0x9b36f1...8f3a1f`, chain 9745)
- UnnamedContract (`0xbdd273...1de778`, chain 42161)
- UnnamedContract (`0x4b8904...2e8166`, chain 42170)
- UnnamedContract (`0xb3833e...360e56`, chain 42170)
- UnnamedContract (`0x841ce4...d0738c`, chain 81457)
- UnnamedContract (`0x2e8dd0...cc41ce`, chain 534352)
- UnnamedContract (`0x4384d5...3ad1bc`, chain 1313161554)
- UnnamedContract (`0x841ce4...d0738c`, chain 1313161554)
- UnnamedContract (`0xbcfef6...40aa11`, chain 1313161554)
- UnnamedContract (`0xbdd273...1de778`, chain 1313161554)
- UnnamedContract (`0xdd90e5...81a1af`, chain 1666600000)
- Bridge (`0x9b36f1...8f3a1f`, chain 59144)
- PeggedTokenBridge (`0x61f85f...2b5f41`, chain 10)
- PeggedTokenBridge (`0xd443fe...97580e`, chain 56)
- PeggedTokenBridge (`0xd4c058...db5975`, chain 100)
- PeggedTokenBridge (`0x4d58fd...426f7a`, chain 137)
- PeggedTokenBridge (`0x3bbadf...f85bb8`, chain 1088)
- PeggedTokenBridge (`0xbb7684...1ad573`, chain 1284)
- PeggedTokenBridge (`0x374b8a...1c57ef`, chain 1285)
- PeggedTokenBridge (`0x88dcdc...958a78`, chain 43114)
- TransferAgent (`0x9b274b...661a0b`, chain 1)
- TransferAgent (`0x3d85b5...5da541`, chain 56)
- UnnamedContract (`0x374b8a...1c57ef`, chain 250)
- UnnamedContract (`0x7d9160...8f03e9`, chain 250)
- UnnamedContract (`0xd46f8e...7388d1`, chain 1101)
- UnnamedContract (`0x78a21c...20ceec`, chain 1666600000)

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
| OriginalTokenVault | core_logic | project_anchor | own_supporting | 0 | optimism | unit-231888 | `0xbcfef6...40aa11` | ✅ Audited |

### ⚠️ Verified + Unaudited (193)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AmmVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | optimism | n/a | 3 deployments: optimism `0x43318d...649c83`; optimism `0x6c7fd4...bca29f`; optimism `0xb48402...196f93` | ⚠️ Unaudited |
| AmyFinanceToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8fbd42...f2389c` | ⚠️ Unaudited |
| Animal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38b0e3...f003e2` | ⚠️ Unaudited |
| ArbStip | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x403fd3...e72fb8` | ⚠️ Unaudited |
| AvocadoDAOToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa41f14...2f311f` | ⚠️ Unaudited |
| BlankToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaec7e1...c48966` | ⚠️ Unaudited |
| BOBA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42bbfa...53efbc` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf582ca...be0307` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-231875 | `0x5427fe...da1820` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-231887 | `0x9d39fc...cc3401` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-231970 | `0xdd90e5...81a1af` | ⚠️ Unaudited |
| Bridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 12 deployments: ethereum `0xc578cb...4ad062`; ethereum `0xd85e30...cc1965`; optimism `0x6de336...e148bb`; optimism `0x9b36f1...8f3a1f`; bsc `0x5d96d4...79bfc6`; gnosis `0x3795c3...b60283`; polygon `0xa251c4...d8ac5c`; polygon `0xb5df79...0f8733`; metis `0x841ce4...d0738c`; celo `0xbb7684...1ad573`; avalanche `0xbb7684...1ad573`; scroll `0x9b36f1...8f3a1f` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-231915 | `0x88dcdc...958a78` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | moonbeam | unit-231894 | `0x841ce4...d0738c` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | moonriver | unit-231900 | `0x841ce4...d0738c` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-231936 | `0x1619de...63feca` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-231958 | `0xef3c71...82e5d4` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-231971 | `0x9b36f1...8f3a1f` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 19 deployments: avalanche `0x19860c...8dde98`; avalanche `0x37b608...2e4f76`; avalanche `0x3bd2b1...5b2339`; avalanche `0x49d5c2...c10bab`; avalanche `0x50b754...87b218`; avalanche `0x5947bb...3227a3`; avalanche `0x596fa4...cde0d2`; avalanche `0x63a728...d386d9`; avalanche `0x88128f...b72d42`; avalanche `0x8a0cac...e85cb9`; avalanche `0x8ebaf2...ba8580`; avalanche `0x98443b...690588`; avalanche `0x9eaac1...2f52dc`; avalanche `0xabc954...58d083`; avalanche `0xbec243...4b209b`; avalanche `0xc3048e...6e2437`; avalanche `0xc71984...b95118`; avalanche `0xd50128...28f267`; avalanche `0xd586e7...9d8d70` | ⚠️ Unaudited |
| CBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x841ce4...d0738c`; bsc `0x841ce4...d0738c`; gnosis `0x841ce4...d0738c`; polygon `0x841ce4...d0738c` | ⚠️ Unaudited |
| CelerToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9254...81c667` | ⚠️ Unaudited |
| CGGToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fe24f...fa5e43` | ⚠️ Unaudited |
| ChainGuardiansToken900 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a2ad5...ff0379` | ⚠️ Unaudited |
| ClonableBeaconProxy | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x753d22...1d3dac`; arbitrum `0xf0a571...735fba` | ⚠️ Unaudited |
| CloutArtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x262b8a...02b728` | ⚠️ Unaudited |
| ContributorVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa99096...ce68c8` | ⚠️ Unaudited |
| ControllerV2BLP | governance | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xa300a8...d8bcf4` | ⚠️ Unaudited |
| ControllerV2BLP | governance | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x52eacd...025f37` | ⚠️ Unaudited |
| ControllerV2BLP | governance | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x8e7e9e...1e5408` | ⚠️ Unaudited |
| ConvergenceToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc834fa...aa8b50` | ⚠️ Unaudited |
| CrazyBunny | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f4564...213aae` | ⚠️ Unaudited |
| CrossProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x74e121...037c3a` | ⚠️ Unaudited |
| Cvp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e4ad...e7dca1` | ⚠️ Unaudited |
| DFProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5843f1...d1a1e8` | ⚠️ Unaudited |
| DODOToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43dfc4...7d4ddd` | ⚠️ Unaudited |
| DomiToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45c2f8...fef83f` | ⚠️ Unaudited |
| DSToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x431ad2...f7dbe0`; ethereum `0xeb2697...a83549` | ⚠️ Unaudited |
| EmiRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22b8cc...d79f01` | ⚠️ Unaudited |
| ERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a3db...c29666` | ⚠️ Unaudited |
| ESW | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5a75a0...18031d` | ⚠️ Unaudited |
| ESW | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xd2a2a3...4a7d8f` | ⚠️ Unaudited |
| ETHPlatform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5005e8...cf0e79`; ethereum `0xbe857e...52be72` | ⚠️ Unaudited |
| Farming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa22687...918c2d` | ⚠️ Unaudited |
| FarmingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: ethereum `0x61f85f...2b5f41`; ethereum `0xd916eb...a99d56`; optimism `0x06292d...b93e4c` | ⚠️ Unaudited |
| FINN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9a92b5...35a756` | ⚠️ Unaudited |
| FinnBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x37619c...c9210b` | ⚠️ Unaudited |
| GamerCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x728f30...b1387d` | ⚠️ Unaudited |
| Govern | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8c75ad...ba446c`; ethereum `0xea129a...641ba0` | ⚠️ Unaudited |
| GOVI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeaa40...6c6107` | ⚠️ Unaudited |
| GOVIETHSLPStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf05a6...8f466a` | ⚠️ Unaudited |
| GOVIETHStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x936dd3...975fb7` | ⚠️ Unaudited |
| HuckleberryFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1f4b76...e343e6` | ⚠️ Unaudited |
| HuhToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0x86d49f...5002ab`; polygon `0x086484...c37786` | ⚠️ Unaudited |
| iETHV2BLP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xa7a084...a7b3b4` | ⚠️ Unaudited |
| iETHV2BLP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x6a3fe5...678c74` | ⚠️ Unaudited |
| iETHV2BLP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xee3383...5dcc15` | ⚠️ Unaudited |
| iMSDV2BLP | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 2 deployments: arbitrum `0x5be49b...322021`; arbitrum `0xe8c85b...fea56c` | ⚠️ Unaudited |
| iMUSX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xabf7fc...213f07` | ⚠️ Unaudited |
| Imx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b35ce...764a00` | ⚠️ Unaudited |
| iTokenV2BLP | token | non_address_book | non_address_book_inventory (excluded) | 12 | optimism | n/a | 12 deployments: optimism `0x1f144c...8e2ed7`; optimism `0x24d302...06eb27`; optimism `0x4b3488...e09a16`; optimism `0x5bede6...78564c`; optimism `0x5d05c1...48fc44`; optimism `0x683236...4a6ce6`; optimism `0x7702dc...f1d725`; optimism `0x7e7e1d...44ce43`; optimism `0xb34479...1a2cc2`; optimism `0xd65a18...1288d5`; optimism `0xdd40bb...b28ece`; optimism `0xed3c20...aff36f` | ⚠️ Unaudited |
| iTokenV2BLP | token | non_address_book | non_address_book_inventory (excluded) | 10 | polygon | n/a | 10 deployments: polygon `0x0c9261...d81740`; polygon `0x159624...31ad6d`; polygon `0x38d0c4...1cd6f9`; polygon `0x5268b3...b65234`; polygon `0x7d86ee...691b68`; polygon `0x94a14b...45876a`; polygon `0xb3ab71...6a504e`; polygon `0xc171eb...a29882`; polygon `0xcb5d9b...f939b2`; polygon `0xec85f7...96d95b` | ⚠️ Unaudited |
| iTokenV2BLP | token | non_address_book | non_address_book_inventory (excluded) | 9 | arbitrum | n/a | 9 deployments: arbitrum `0x013ee4...9802c8`; arbitrum `0x0385f8...56cbaa`; arbitrum `0x46eca1...feb17a`; arbitrum `0x567554...3b0b8b`; arbitrum `0x8dc331...4d4ae0`; arbitrum `0xaea8e2...9c4a63`; arbitrum `0xd3204e...ee0acc`; arbitrum `0xf52f07...9692a9`; arbitrum `0xf69959...12b628` | ⚠️ Unaudited |
| izumiToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ad372...c5c200` | ⚠️ Unaudited |
| JonesAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x1f6fa7...eccb23`; arbitrum `0x537561...dce421`; arbitrum `0x662d0f...ac08a3`; arbitrum `0xf01886...b9ea19` | ⚠️ Unaudited |
| JonesERC20VaultV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8883e5...73f3f5` | ⚠️ Unaudited |
| JonesToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10393c...cd67da` | ⚠️ Unaudited |
| JonesWETHVaultV3Adapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbcb55b...6f3c2d` | ⚠️ Unaudited |
| Kromatika | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3af33b...a4d789` | ⚠️ Unaudited |
| L2CustomGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x096760...ef5562` | ⚠️ Unaudited |
| L2ERC20Gateway | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x09e922...351eee` | ⚠️ Unaudited |
| L2GatewayRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x5288c5...84f933` | ⚠️ Unaudited |
| L2StandardERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x9e1028...6840e0`; optimism `0xf98dcd...590b07` | ⚠️ Unaudited |
| L2WethGateway | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x6c411a...6c623b` | ⚠️ Unaudited |
| LandsaleNFT_ESTATE | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28cd29...8dc654` | ⚠️ Unaudited |
| LockedTokenVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e504d...673be4` | ⚠️ Unaudited |
| LockingContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6e1f65...53f3c2`; ethereum `0xee88e0...bfadb0` | ⚠️ Unaudited |
| LPStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x31a20e...c1f6bf` | ⚠️ Unaudited |
| LQTYStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb4387d...e1053c` | ⚠️ Unaudited |
| LQTYToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x094bd7...0fddcc` | ⚠️ Unaudited |
| LUSDToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4fbf04...066095` | ⚠️ Unaudited |
| Lyra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01ba67...5105bf` | ⚠️ Unaudited |
| LyraSafetyModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcb9f85...c77d49` | ⚠️ Unaudited |
| MaiBridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 2 deployments: moonriver `0x48421f...358271`; avalanche `0x61f85f...2b5f41` | ⚠️ Unaudited |
| MappingTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 6 deployments: moonriver `0x31d459...96c2d5`; moonriver `0x900f1e...802667`; avalanche `0x8d9dcc...eb70b6`; avalanche `0x9e529b...1448e5`; avalanche `0xd38bfd...21fff9`; avalanche `0xea6887...5cddef` | ⚠️ Unaudited |
| MaskToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69af81...623074` | ⚠️ Unaudited |
| MELOS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1afb69...19e647` | ⚠️ Unaudited |
| MessageBus | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4066d1...4e200c` | ⚠️ Unaudited |
| MessageBus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x3490a6...1c83cc`; optimism `0x7f6372...6eac0e` | ⚠️ Unaudited |
| MessageBus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x7d43aa...42c0ad`; optimism `0xf5c682...3476f5` | ⚠️ Unaudited |
| MessageBus | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x957148...aeea6b` | ⚠️ Unaudited |
| MessageBus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x08d1fd...0fde8d`; polygon `0xad65cd...1624aa` | ⚠️ Unaudited |
| MessageBus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x643017...68d393`; polygon `0xafdb9c...093fe6` | ⚠️ Unaudited |
| MessageBus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonriver | n/a | 2 deployments: moonriver `0x940daa...8cbe54`; moonriver `0xc5f4aa...c32396` | ⚠️ Unaudited |
| MessageBus | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 12 deployments: ethereum `0x7a8025...d2e8c9`; ethereum `0xdd9c64...80d39c`; optimism `0xf8bfea...ea26da`; bsc `0x7d5de3...12a896`; bsc `0xce50e2...7880cb`; polygon `0x16365b...9b95eb`; polygon `0xeb8bbe...08d6b9`; moonriver `0xb72a75...f59846`; avalanche `0x148c1e...e350b5`; avalanche `0x6c6e22...aa24ca`; linea `0x0dfabd...15674c`; linea `0x82b498...7d1213` | ⚠️ Unaudited |
| MessageBus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x6f2bd3...8c7c28`; linea `0xea716c...d9acbd` | ⚠️ Unaudited |
| MetavaultRefund | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x287bfe...d60b09` | ⚠️ Unaudited |
| MillinerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb94d19...0fd756` | ⚠️ Unaudited |
| MiniChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0aefad...6fac38` | ⚠️ Unaudited |
| MiniMeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8765b1...203656` | ⚠️ Unaudited |
| MintSwapCanonicalToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 94 deployments: ethereum `0x15eef5...5ca524`; ethereum `0x212137...4e8ae6`; ethereum `0x21c025...0027af`; ethereum `0x30a667...ac0c2f`; ethereum `0x33cce3...84e4cf`; ethereum `0x3d85b5...5da541`; ethereum `0x3f95e5...c5656e`; ethereum `0x5a9946...7f5f6b`; ethereum `0x94d2fd...642550`; ethereum `0xa9c125...b1f758`; ethereum `0xb4ed26...86563d`; ethereum `0xe593f3...083e8b`; ethereum `0xeb883d...9b63b9`; ethereum `0xf3c969...a6d0f6`; optimism `0x23c748...7472eb`; optimism `0x259479...87728c`; bsc `0x06fda0...074ec0`; bsc `0x07145a...b475a7`; bsc `0x0acc63...b9d4d3`; bsc `0x1305b2...619fd4`; bsc `0x16365b...9b95eb`; bsc `0x181002...102580`; bsc `0x19aa65...fccb3a`; bsc `0x3cc194...b4c02e`; bsc `0x426c58...71751c`; bsc `0x523d3e...6cebec`; bsc `0x6822a7...75cc82`; bsc `0x73afc2...9f950c`; bsc `0x79d104...b9c4e0`; bsc `0x81421a...26360c`; bsc `0x904d02...98ff0b`; bsc `0xa5a681...1c3c3e`; bsc `0xa7e592...66c9b2`; bsc `0xbcc128...04f867`; bsc `0xbd7b8e...e0e8d4`; bsc `0xd6705c...24722e`; bsc `0xea09cb...2476ae`; bsc `0xf23443...408108`; bsc `0xf8bfea...ea26da`; bsc `0xfef170...edad1f`; gnosis `0x8db213...073da0`; gnosis `0xd60636...6b8498`; polygon `0x17d9dd...4125b0`; polygon `0x4a52b8...ed4849`; polygon `0x5248fe...95a817`; polygon `0x7c83ca...d94107`; polygon `0xb65745...e7af28`; polygon `0xb98e16...91e60b`; polygon `0xbbca42...0ddc82`; metis `0x4a63af...ff9589`; metis `0x516e6d...3802ad`; metis `0x5d96d4...79bfc6`; metis `0x75364d...aff3b4`; moonbeam `0x3795c3...b60283`; moonbeam `0x695902...9e5375`; moonbeam `0x6a2d26...931d98`; moonbeam `0x800632...5c903a`; moonbeam `0x81ecac...85fe9c`; moonbeam `0x8a4b4c...a015ce`; moonbeam `0x8c75ad...ba446c`; moonbeam `0xcb4a75...5f8f9e`; moonriver `0x31d95c...a5741e`; moonriver `0x693b47...0066f3`; moonriver `0xad543f...a9d5ca`; moonriver `0xb74527...06182f`; moonriver `0xe9460b...74d37c`; moonriver `0xf6a939...955035`; arbitrum `0x4313dd...c878ca`; celo `0x1fbd28...cb8b78`; celo `0x48421f...358271`; celo `0x8a4b4c...a015ce`; celo `0xa8961b...eff5e0`; celo `0xb0d8cf...7c90dc`; celo `0xcb4a75...5f8f9e`; avalanche `0x2b9e10...8c0aa9`; avalanche `0x30a667...ac0c2f`; avalanche `0x63b0b8...3b3f80`; avalanche `0x70d302...e08cea`; avalanche `0x746ba4...b9c3dc`; avalanche `0x7af0a3...d43637`; avalanche `0x80b010...d603b3`; avalanche `0x90fbe9...99a13e`; avalanche `0xa4918c...367aa9`; avalanche `0xac8009...72b9eb`; avalanche `0xaedb70...694798`; avalanche `0xaf2d36...94e390`; avalanche `0xcd7d33...65119d`; avalanche `0xcda140...e8a818`; avalanche `0xda0019...7ee27b`; avalanche `0xde5384...5ff842`; avalanche `0xea4b1b...a4a58b`; avalanche `0xee396d...92e57d`; avalanche `0xfc6da9...861d3b`; avalanche `0xfcde4a...8b02f1` | ⚠️ Unaudited |
| MSNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf38ee8...833d32` | ⚠️ Unaudited |
| MToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e32b1...d6ed8e` | ⚠️ Unaudited |
| MultiBridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 22 deployments: ethereum `0x394d85...56849d`; ethereum `0x6cadd1...6db362`; ethereum `0xa719cb...e9de24`; ethereum `0xbade2a...6fb5a4`; optimism `0x0dbb98...f36cd7`; optimism `0x1f4f04...cb8dad`; optimism `0x83250f...3abe38`; optimism `0xf560ac...d17190`; bsc `0x09236a...31c51e`; bsc `0x2c30b4...7562a0`; bsc `0x443b4d...4a2bc6`; bsc `0x4b5f2b...254fcd`; bsc `0xa4918c...367aa9`; bsc `0xdd2612...8bbc55`; arbitrum `0x37596f...9cb0fd`; arbitrum `0x75e4fd...d15c5a`; celo `0x38d1e2...939e51`; celo `0xad543f...a9d5ca`; linea `0x265b25...7567e8`; linea `0x5471ea...a953e4`; linea `0x7d43aa...42c0ad`; linea `0xf5c682...3476f5` | ⚠️ Unaudited |
| Multicall2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 3 deployments: optimism `0x7e2dc2...90076b`; metis `0x32960f...d771ed`; arbitrum `0x842ec2...c54eb2` | ⚠️ Unaudited |
| OneTokenV1 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xca3753...deaf90` | ⚠️ Unaudited |
| OpenDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b484b...c0aee0` | ⚠️ Unaudited |
| OpenDAOMembershipNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd22f83...abc44d` | ⚠️ Unaudited |
| OpenDAOStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedd27c...90d7d1` | ⚠️ Unaudited |
| OpThales | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: ethereum `0x8947da...a8c3c5`; optimism `0x217d47...a5bb11` | ⚠️ Unaudited |
| OriginalTokenVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-231881 | `0xb37d31...518595` | ⚠️ Unaudited |
| OriginalTokenVault | unknown | project_anchor | own_supporting | 0 | bsc | unit-231967 | `0x78bc5e...ed02dc` | ⚠️ Unaudited |
| OriginalTokenVault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-231917 | `0xc1a2d9...d51eea` | ⚠️ Unaudited |
| OriginalTokenVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-231944 | `0xfe31bf...040f76` | ⚠️ Unaudited |
| OriginalTokenVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd9d103...66752c` | ⚠️ Unaudited |
| OriginalTokenVault | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-231950 | `0x5427fe...da1820` | ⚠️ Unaudited |
| OriginalTokenVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0db3b3...90e0d3` | ⚠️ Unaudited |
| OriginalTokenVaultV2 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-231877 | `0x751079...f2bae1` | ⚠️ Unaudited |
| OriginalTokenVaultV2 | core_logic | project_anchor | own_supporting | 0 | optimism | unit-231885 | `0x6e380a...13be4f` | ⚠️ Unaudited |
| OriginalTokenVaultV2 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-231962 | `0x11a0c9...44a980` | ⚠️ Unaudited |
| OriginalTokenVaultV2 | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-231942 | `0xea4b1b...a4a58b` | ⚠️ Unaudited |
| OriginalTokenVaultV2 | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-231954 | `0xb51541...4502bb` | ⚠️ Unaudited |
| PeggedTokenBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-231870 | `0x16365b...9b95eb` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | project_anchor | own_supporting | 0 | optimism | unit-231883 | `0x61f85f...2b5f41` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | project_anchor | own_supporting | 0 | bsc | unit-231969 | `0xd443fe...97580e` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | project_anchor | own_supporting | 0 | gnosis | unit-231890 | `0xd4c058...db5975` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | project_anchor | own_supporting | 0 | polygon | unit-231914 | `0x4d58fd...426f7a` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | project_anchor | own_supporting | 0 | metis | unit-231891 | `0x3bbadf...f85bb8` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-231895 | `0xbb7684...1ad573` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | project_anchor | own_supporting | 0 | moonriver | unit-231898 | `0x374b8a...1c57ef` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xda1dd6...d1162e` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | project_anchor | own_supporting | 0 | avalanche | unit-231952 | `0x88dcdc...958a78` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-231873 | `0x52e4f2...4de084` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-231889 | `0xc3c5b9...d9699a` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-231964 | `0x26c76f...1e1e4b` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-231916 | `0xb51541...4502bb` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-231979 | `0x5471ea...a953e4` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-231940 | `0xc72e7f...3aaf6b` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-231956 | `0xb774c6...fed195` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-231972 | `0x9bb46d...233f4d` | ⚠️ Unaudited |
| Perlin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeca821...860318` | ⚠️ Unaudited |
| Perpetual | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x220a9f...777f76` | ⚠️ Unaudited |
| PerpToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc3966...233447` | ⚠️ Unaudited |
| Platform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0437b...0bd1da` | ⚠️ Unaudited |
| Pluto | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfe3ac...ed5447` | ⚠️ Unaudited |
| PolkaExToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe6f143...206920` | ⚠️ Unaudited |
| PPTimedVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60842a...6b28b3` | ⚠️ Unaudited |
| PriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xf4aef2...6390dd` | ⚠️ Unaudited |
| PSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcafe00...7f3de5` | ⚠️ Unaudited |
| QiStablecoin | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3fa99...6997f1` | ⚠️ Unaudited |
| RamsesClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe14e75...1f75c6` | ⚠️ Unaudited |
| ReefToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe3e6a...735acf` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7a3909...fcab71` | ⚠️ Unaudited |
| Router01 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e1690...43127d` | ⚠️ Unaudited |
| SafeBoxBuyback | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x679c01...7c59e7` | ⚠️ Unaudited |
| SafleToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04b330...8ea126` | ⚠️ Unaudited |
| SGN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8d9827...286c50`; ethereum `0xcb4a75...5f8f9e` | ⚠️ Unaudited |
| SingleBridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: ethereum `0xeb6c39...b69312`; bsc `0x66acea...56f64f`; bsc `0xbbca42...0ddc82`; bsc `0xe46910...15b22b`; celo `0xb18358...b25560`; celo `0xd85e30...cc1965` | ⚠️ Unaudited |
| SmallToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fa384...23d2f2` | ⚠️ Unaudited |
| SportAMMLiquidityPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x842e89...e0eba5` | ⚠️ Unaudited |
| SportVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 4 | optimism | n/a | 4 deployments: optimism `0x43d198...16d98e`; optimism `0x5e2b49...632d3f`; optimism `0xbaac54...65fd5f`; optimism `0xc922f4...f6cecd` | ⚠️ Unaudited |
| StabilityPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7aed63...607522` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x8a4b4c...a015ce`; ethereum `0xa251c4...d8ac5c`; ethereum `0xdb3130...9beacb` | ⚠️ Unaudited |
| StakingPools | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37c7c2...36d6ee` | ⚠️ Unaudited |
| StakingReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1e6b1c...14e6ce`; ethereum `0xb01fd7...212b42` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x4aec98...83f4f8`; optimism `0xfe757a...986a4d` | ⚠️ Unaudited |
| Standard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9040e2...2b999d` | ⚠️ Unaudited |
| StandardArbERC20 | token | non_address_book | non_address_book_inventory (excluded) | 8 | arbitrum | n/a | 8 deployments: arbitrum `0x3a8b78...f345ab`; arbitrum `0x55ff62...a4bf70`; arbitrum `0x69eb4f...59a581`; arbitrum `0x9c67ee...7dd39c`; arbitrum `0xa72159...1e9b87`; arbitrum `0xae6aab...aba689`; arbitrum `0xcafcd8...efd07b`; arbitrum `0xe72ba9...a37333` | ⚠️ Unaudited |
| TaleOfThalesNFTs | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa9218c...be7021` | ⚠️ Unaudited |
| ThalesAMMLiquidityPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xc10a0a...85ea40` | ⚠️ Unaudited |
| Tickets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a58c0...736c71` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b79e1...7659ea` | ⚠️ Unaudited |
| TomVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd90a92...c00fe7` | ⚠️ Unaudited |
| TORN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77777f...6a116c` | ⚠️ Unaudited |
| TracerToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c4a42...22f050` | ⚠️ Unaudited |
| TransferAgent | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231879 | `0x9b274b...661a0b` | ⚠️ Unaudited |
| TransferAgent | unknown | project_anchor | own_supporting | 0 | bsc | unit-231966 | `0x3d85b5...5da541` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x70a354...413bd4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x99e835...fe372c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe31a0d...7c994f` | ⚠️ Unaudited |
| UChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x08c15f...47e0a3` | ⚠️ Unaudited |
| UChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x14af1f...63b83c` | ⚠️ Unaudited |
| UChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1b815d...a8c603` | ⚠️ Unaudited |
| UChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x60bb3d...c5bd05` | ⚠️ Unaudited |
| UChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xecc417...c4f09d` | ⚠️ Unaudited |
| Unipool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x308777...2fe874`; ethereum `0xdc7a84...9a8adc` | ⚠️ Unaudited |
| Viewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x580345...27853b`; ethereum `0xb18358...b25560` | ⚠️ Unaudited |
| Viewer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x329ba0...a69df0`; arbitrum `0x63fc93...87d253` | ⚠️ Unaudited |
| WirexToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa02120...b0e915` | ⚠️ Unaudited |
| WithdrawInbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: ethereum `0xd20fc4...14f5b2`; optimism `0x1b6a49...676f00`; bsc `0xf0ff98...7bf854`; polygon `0x0e6847...0e522e`; avalanche `0x03ab38...2be828` | ⚠️ Unaudited |
| WootradeNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x469193...945d4b` | ⚠️ Unaudited |
| xCVP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ae236...c2c204` | ⚠️ Unaudited |
| xIMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x363b2d...96bf59` | ⚠️ Unaudited |
| ZenlinkToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 2 deployments: moonbeam `0x3fd9b6...39100c`; moonriver `0x0f47ba...a1173b` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9b216a...b718bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231968 | `0x9b36f1...8f3a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | heco | n/a | 13 deployments: heco `0x4668e0...c0924b`; heco `0x5d96d4...79bfc6`; heco `0x779a81...1a8fdc`; heco `0xbb7684...1ad573`; fantom `0x6626c4...5e8d8a`; fantom `0x74b238...58c76d`; boba `0x4c882e...8a7c0c`; boba `0x5008f8...5a9610`; boba `0x841ce4...d0738c`; boba `0x8db213...073da0`; boba `0xce055e...be8197`; harmony `0x985458...9dfab4`; harmony `0xbd8064...7b8b96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-231902 | `0xf39e2d...f5dc4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-231912 | `0x4c882e...8a7c0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe3bd74...36be2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-231921 | `0xf5c682...3476f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-231922 | `0xf5c682...3476f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-231924 | `0x30f7aa...857fb9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-231925 | `0x374b8a...1c57ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-231926 | `0x38d1e2...939e51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-231928 | `0x7d9160...8f03e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | boba | unit-231930 | `0xc5ef66...9b23a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-231932 | `0x0d72be...c9ee46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-231934 | `0x54069e...1cd66c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-231983 | `0x7d43aa...42c0ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-231984 | `0x9bb46d...233f4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-231985 | `0xf5c682...3476f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0090eb...7c9081` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0253ee...44b331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x056e1e...e3e480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0aef44...5f4aa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x124f71...0adb9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x141133...19e3a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x234232...8bec28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2f57a0...aaf9f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x307dd1...f09716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x375ec6...6ddabb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3a7bff...99f603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4d7168...b4ec76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5b5ef5...0b4f19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x670cf2...bd7b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6dc265...82eae0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x722377...3c4cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x78d6c2...79bb43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x80620e...df67ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x813195...48388b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8347b8...100857` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8b3d37...3f0225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8f17b4...657fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x98b4b1...5ec533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x99965f...c14ca8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa0a9b4...b5bd57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa1341d...3269a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb1662f...6048a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb4938b...2c8633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbf4dd7...56a8a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbf5979...9f3912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc0012a...2148ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc12cac...6ee58e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc34372...ff2b92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xcc9b8e...df58fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xcdfd49...8a001e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd2d802...ba5f9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd9b5a5...911b9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdb19e9...9ce589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe0f5f1...ce2639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xed026c...aa067c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf4dde0...52d5b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf81bd6...bb8658` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfa68ba...ddca53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfc4e82...a8b67c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfc7611...5baebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfcc0a9...7d2d1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xfde96c...1c1a66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-231892 | `0xd46f8e...7388d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-231893 | `0x3b53d2...492d88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-231896 | `0x0d71d1...cae69d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x425880...a9e263` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-231923 | `0xf8bf99...7088cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-231973 | `0xa7c9fe...6f8154` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-231974 | `0xd33289...500935` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | canto | unit-231975 | `0xd46f8e...7388d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-231977 | `0x4c882e...8a7c0c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-231978 | `0xb3833e...360e56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-231980 | `0x7d43aa...42c0ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-231981 | `0x7d43aa...42c0ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-231982 | `0x9b36f1...8f3a1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231938 | `0xbdd273...1de778` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum-nova | unit-231946 | `0x4b8904...2e8166` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum-nova | unit-231948 | `0xb3833e...360e56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb58078...39aeef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xccf619...818e24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0866e...03047f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-231976 | `0x841ce4...d0738c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-231960 | `0x2e8dd0...cc41ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-231904 | `0x4384d5...3ad1bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-231906 | `0x841ce4...d0738c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-231908 | `0xbcfef6...40aa11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-231910 | `0xbdd273...1de778` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-231919 | `0x78a21c...20ceec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-231920 | `0xdd90e5...81a1af` | ❓ Unverified |

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
| CertiK_sgn_cbridge.pdf | Bridge | ambiguous — not counted | Bridge (alternative) `0x9b36f1...8f3a1f` — deployed 2023-07-14 11:57:52+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0xdd90e5...81a1af` — deployed 2021-12-01 11:25:00+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x5427fe...da1820` — deployed 2021-12-01 11:20:11+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x841ce4...d0738c` — deployed 2022-01-12 09:51:00+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x841ce4...d0738c` — deployed 2021-12-09 12:35:06+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0xef3c71...82e5d4` — deployed 2021-12-01 11:45:17+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x1619de...63feca` — deployed 2021-12-01 11:32:42+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x9d39fc...cc3401` — deployed 2021-12-01 11:31:35+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x88dcdc...958a78` — deployed 2021-12-01 11:38:30+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| PeckShield_pegged.pdf | OriginalTokenVault | own contract | OriginalTokenVault (alternative) `0xfe31bf...040f76` — deployed 2022-01-10 10:59:58+03 — liveness: live (current_address_book_code)<br>OriginalTokenVault (alternative) `0x78bc5e...ed02dc` — deployed 2021-12-29 06:55:16+03 — liveness: live (current_address_book_code)<br>OriginalTokenVault (alternative) `0xb37d31...518595` — deployed 2021-12-15 10:25:35+03 — liveness: live (current_address_book_code)<br>OriginalTokenVault (alternative) `0xc1a2d9...d51eea` — deployed 2021-12-27 21:01:59+03 — liveness: live (current_address_book_code)<br>OriginalTokenVault (alternative) `0x5427fe...da1820` — deployed 2022-01-04 11:16:44+03 — liveness: live (current_address_book_code)<br>OriginalTokenVault (selected) `0xbcfef6...40aa11` — deployed 2022-02-08 14:19:32+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-02-08 was 8d from audit; next candidate 37d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield_pegged.pdf | PeggedTokenBridge | ambiguous — not counted | PeggedTokenBridge (alternative) `0x88dcdc...958a78` — deployed 2021-12-24 11:26:51+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0xd443fe...97580e` — deployed 2021-12-15 10:28:39+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0x3bbadf...f85bb8` — deployed 2021-12-31 10:44:50+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0xd4c058...db5975` — deployed 2022-01-04 10:22:55+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0x4d58fd...426f7a` — deployed 2021-12-24 10:57:27+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0x16365b...9b95eb` — deployed 2021-12-15 18:18:54+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0xbb7684...1ad573` — deployed 2022-01-12 10:05:18+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0x61f85f...2b5f41` — deployed 2022-01-18 17:20:19+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0x374b8a...1c57ef` — deployed 2021-12-24 12:45:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield_pegged.pdf | MultiBridgeToken | unmatched — not counted | — | Listed as target in finding PVE-003 | no |
| PeckShield_pegged.pdf | MintSwapCanonicalToken | unmatched — not counted | — | Listed as target in finding PVE-003 | no |
| PeckShield_sgn_cbridge.pdf | Bridge | ambiguous — not counted | Bridge (alternative) `0x9b36f1...8f3a1f` — deployed 2023-07-14 11:57:52+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0xdd90e5...81a1af` — deployed 2021-12-01 11:25:00+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x5427fe...da1820` — deployed 2021-12-01 11:20:11+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x841ce4...d0738c` — deployed 2022-01-12 09:51:00+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x841ce4...d0738c` — deployed 2021-12-09 12:35:06+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0xef3c71...82e5d4` — deployed 2021-12-01 11:45:17+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x1619de...63feca` — deployed 2021-12-01 11:32:42+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x9d39fc...cc3401` — deployed 2021-12-01 11:31:35+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x88dcdc...958a78` — deployed 2021-12-01 11:38:30+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| SlowMist_pegged.pdf | OriginalTokenVault | ambiguous — not counted | OriginalTokenVault (alternative) `0xfe31bf...040f76` — deployed 2022-01-10 10:59:58+03 — liveness: live (current_address_book_code)<br>OriginalTokenVault (alternative) `0x78bc5e...ed02dc` — deployed 2021-12-29 06:55:16+03 — liveness: live (current_address_book_code)<br>OriginalTokenVault (alternative) `0xb37d31...518595` — deployed 2021-12-15 10:25:35+03 — liveness: live (current_address_book_code)<br>OriginalTokenVault (alternative) `0xc1a2d9...d51eea` — deployed 2021-12-27 21:01:59+03 — liveness: live (current_address_book_code)<br>OriginalTokenVault (alternative) `0x5427fe...da1820` — deployed 2022-01-04 11:16:44+03 — liveness: live (current_address_book_code)<br>OriginalTokenVault (alternative) `0xbcfef6...40aa11` — deployed 2022-02-08 14:19:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| SlowMist_pegged.pdf | PeggedTokenBridge | ambiguous — not counted | PeggedTokenBridge (alternative) `0x88dcdc...958a78` — deployed 2021-12-24 11:26:51+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0xd443fe...97580e` — deployed 2021-12-15 10:28:39+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0x3bbadf...f85bb8` — deployed 2021-12-31 10:44:50+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0xd4c058...db5975` — deployed 2022-01-04 10:22:55+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0x4d58fd...426f7a` — deployed 2021-12-24 10:57:27+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0x16365b...9b95eb` — deployed 2021-12-15 18:18:54+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0xbb7684...1ad573` — deployed 2022-01-12 10:05:18+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0x61f85f...2b5f41` — deployed 2022-01-18 17:20:19+03 — liveness: live (current_address_book_code)<br>PeggedTokenBridge (alternative) `0x374b8a...1c57ef` — deployed 2021-12-24 12:45:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| SlowMist_sgn_cbridge.pdf | Bridge | ambiguous — not counted | Bridge (alternative) `0x9b36f1...8f3a1f` — deployed 2023-07-14 11:57:52+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0xdd90e5...81a1af` — deployed 2021-12-01 11:25:00+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x5427fe...da1820` — deployed 2021-12-01 11:20:11+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x841ce4...d0738c` — deployed 2022-01-12 09:51:00+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x841ce4...d0738c` — deployed 2021-12-09 12:35:06+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0xef3c71...82e5d4` — deployed 2021-12-01 11:45:17+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x1619de...63feca` — deployed 2021-12-01 11:32:42+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x9d39fc...cc3401` — deployed 2021-12-01 11:31:35+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0x88dcdc...958a78` — deployed 2021-12-01 11:38:30+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| ethereum | `0x5427fe...da1820` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x9d39fc...cc3401` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xdd90e5...81a1af` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x88dcdc...958a78` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x841ce4...d0738c` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x841ce4...d0738c` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1619de...63feca` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xef3c71...82e5d4` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x9b36f1...8f3a1f` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb37d31...518595` | OriginalTokenVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x78bc5e...ed02dc` | OriginalTokenVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xc1a2d9...d51eea` | OriginalTokenVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xfe31bf...040f76` | OriginalTokenVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5427fe...da1820` | OriginalTokenVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x751079...f2bae1` | OriginalTokenVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x6e380a...13be4f` | OriginalTokenVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x11a0c9...44a980` | OriginalTokenVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xea4b1b...a4a58b` | OriginalTokenVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xb51541...4502bb` | OriginalTokenVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x16365b...9b95eb` | PeggedTokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x61f85f...2b5f41` | PeggedTokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd443fe...97580e` | PeggedTokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xd4c058...db5975` | PeggedTokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x4d58fd...426f7a` | PeggedTokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x3bbadf...f85bb8` | PeggedTokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xbb7684...1ad573` | PeggedTokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x374b8a...1c57ef` | PeggedTokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x88dcdc...958a78` | PeggedTokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x52e4f2...4de084` | PeggedTokenBridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xc3c5b9...d9699a` | PeggedTokenBridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x26c76f...1e1e4b` | PeggedTokenBridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xb51541...4502bb` | PeggedTokenBridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5471ea...a953e4` | PeggedTokenBridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc72e7f...3aaf6b` | PeggedTokenBridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xb774c6...fed195` | PeggedTokenBridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x9bb46d...233f4d` | PeggedTokenBridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9b274b...661a0b` | TransferAgent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3d85b5...5da541` | TransferAgent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
