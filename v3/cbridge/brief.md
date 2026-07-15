# Agentic Audit Brief: cBridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 12 (1 matched; 11 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: cBridge (`cbridge`)
- Website: [https://cbridge.celer.network/#/transfer](https://cbridge.celer.network/#/transfer)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-nova, aurora, avalanche, base, blast, boba, bsc, canto, ethereum, fantom, gnosis, harmony, hyperliquid, kaia, kava, linea, metis, moonbeam, moonriver, opbnb, optimism, plasma, polygon, polygon-zkevm, scroll, unichain, x-layer, zksync-era
- Contract surface: 77 unique implementations (77 raw deployments)
- Coverage basis: 1/39 confirmed own live verified implementations (2.6%); conservative 2.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $12,883,316.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for cBridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 39 contract row(s) across arbitrum, arbitrum-nova, aurora, avalanche, base, blast, boba, bsc, canto, ethereum, fantom, gnosis, harmony, hyperliquid, kaia, kava, linea, metis, moonbeam, moonriver, opbnb, optimism, plasma, polygon, polygon-zkevm, scroll, unichain, x-layer, zksync-era. Structural roles: 21 core, 18 supporting. 4 row(s) use upgradeable patterns.

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

- Indexed contracts: 39; live-surface contracts included: 39 (39 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 77/77 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/39 (2.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 77 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 77 of 77 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/39
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 38
- Unique implementations: 77
- Raw deployments: 77
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
| PeckShield | Tier 2 | 1 | 2.6% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OriginalTokenVault | core_logic | project_anchor | own_supporting | 0 | optimism | unit-231888 | `0xbcfef6...40aa11` | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-231875 | `0x5427fe...da1820` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-231887 | `0x9d39fc...cc3401` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-231970 | `0xdd90e5...81a1af` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-231915 | `0x88dcdc...958a78` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | moonbeam | unit-231894 | `0x841ce4...d0738c` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | moonriver | unit-231900 | `0x841ce4...d0738c` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-231936 | `0x1619de...63feca` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-231958 | `0xef3c71...82e5d4` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-231971 | `0x9b36f1...8f3a1f` | ⚠️ Unaudited |
| OriginalTokenVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-231881 | `0xb37d31...518595` | ⚠️ Unaudited |
| OriginalTokenVault | unknown | project_anchor | own_supporting | 0 | bsc | unit-231967 | `0x78bc5e...ed02dc` | ⚠️ Unaudited |
| OriginalTokenVault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-231917 | `0xc1a2d9...d51eea` | ⚠️ Unaudited |
| OriginalTokenVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-231944 | `0xfe31bf...040f76` | ⚠️ Unaudited |
| OriginalTokenVault | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-231950 | `0x5427fe...da1820` | ⚠️ Unaudited |
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
| PeggedTokenBridge | unknown | project_anchor | own_supporting | 0 | avalanche | unit-231952 | `0x88dcdc...958a78` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-231873 | `0x52e4f2...4de084` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-231889 | `0xc3c5b9...d9699a` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-231964 | `0x26c76f...1e1e4b` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-231916 | `0xb51541...4502bb` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-231979 | `0x5471ea...a953e4` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-231940 | `0xc72e7f...3aaf6b` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-231956 | `0xb774c6...fed195` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-231972 | `0x9bb46d...233f4d` | ⚠️ Unaudited |
| TransferAgent | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231879 | `0x9b274b...661a0b` | ⚠️ Unaudited |
| TransferAgent | unknown | project_anchor | own_supporting | 0 | bsc | unit-231966 | `0x3d85b5...5da541` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (38)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231968 | `0x9b36f1...8f3a1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-231902 | `0xf39e2d...f5dc4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-231912 | `0x4c882e...8a7c0c` | ❓ Unverified |
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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-231892 | `0xd46f8e...7388d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-231893 | `0x3b53d2...492d88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-231896 | `0x0d71d1...cae69d` | ❓ Unverified |
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
| native | 39 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 38 |

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
