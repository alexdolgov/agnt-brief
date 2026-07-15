# Agentic Audit Brief: BOB Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 9 (0 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 40.4% over 90 days

## Project Overview

- Project: BOB Bridge (`bob-bridge`)
- Website: [https://www.gobob.xyz](https://www.gobob.xyz)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, linea, sepolia
- Contract surface: 129 unique implementations (165 raw deployments)
- Coverage basis: 0/24 confirmed own live verified implementations (0.0%); conservative 0.0% with 1 needs-review implementation(s)
- DeFi Llama TVL: $2,343,275.74
- On-chain TVL (included contracts): $1,178,796.23
- TVL by chain: Ethereum $1,178,796.23

## Project Description

This brief describes the observed EVM deployment and audit surface for BOB Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 27 contract row(s) across ethereum, linea, sepolia. Structural roles: 15 unclassified, 9 supporting, 3 core. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 27
- Structural roles: unclassified (15), supporting (9), core (3)
- Contract kinds: contract (27)
- Detected standards: pausable (3), erc1967proxy (2), ownable (1), ownable2step (1)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (6), solmate (3), solady (1)
- Upgradeable-pattern rows: 6

## Fork Analysis

3 of 23 contracts are derived from known codebases. 20 contracts have no detected origin.

### Forked Contracts

**KailuaTreasury** (`0xe99af5...5fb895`, chain 1)
Origin: bob-fusion (`0x993703...02ae53`)
Containment: 80.9% - 35 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- claimEliminationBonds(uint256)

Removals (removed from original):
- claimEliminationRewards()
- createdAt()
- ELIMINATION_SPLIT_DENOM()
- ELIMINATION_SPLIT_PROVER_NUM()
- KAILUA_TREASURY()
- l2SequenceNumber()
- participationBond()
- provenAt(bytes32)
- resolvedAt()
- status()
- validChildSignature()
- wasRespectedGameTypeWhenCreated()

**L1StandardBridge** (`0x0b09ba...7d2a7a`, chain 1)
Origin: stcyber (`0x01b46e...d87997`)
Containment: 93.8% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- initialize(ICrossDomainMessenger,ISuperchainConfig)

Removals (removed from original):
- initialize(CrossDomainMessenger,SuperchainConfig)

**PermissionedDisputeGame** (`0xe3bd00...38702a`, chain 1)
Origin: unichain-bridge (`0x58bf35...43266a`)
Containment: 97.3% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- l2SequenceNumber()

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x37e15e...3cb76c`, chain 1)
- UnnamedContract (`0x3a1d54...ea3c13`, chain 1)
- UnnamedContract (`0x4da82a...7458e7`, chain 1)
- UnnamedContract (`0x5e40b9...ed3d9e`, chain 1)
- UnnamedContract (`0x7b4653...d3f8d2`, chain 1)
- UnnamedContract (`0xeba14d...e43fef`, chain 1)
- DisputeGameFactory (`0x4bba75...74e4a0`, chain 1)
- L1ChugSplashProxy (`0x3f6ce1...4ac1f7`, chain 1)
- L1CrossDomainMessenger (`0x5d5a09...033e8b`, chain 1)
- L1ERC721Bridge (`0x7ae1d3...c98013`, chain 1)
- MIPS64 (`0xf027f4...d15dc1`, chain 1)
- OPContractsManager (`0xdfe652...96ee3c`, chain 1)
- OptimismMintableERC20Factory (`0x5493f4...63988f`, chain 1)
- OptimismPortal2 (`0xb443da...0d6fb4`, chain 1)
- PreimageOracle (`0x1fb8cd...87add3`, chain 1)
- Proxy (`0x96123d...9b1079`, chain 1)
- Proxy (`0xe92520...965c46`, chain 1)
- ProxyAdmin (`0xa70ddf...703e1c`, chain 1)
- RiscZeroVerifierRouter (`0x8eab2d...93d319`, chain 1)
- SystemConfig (`0x340f92...ffe647`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 27; live-surface rows included: 27 (25 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 30/59 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/24 (0.0%)
- Coverage assessment: partial (medium confidence) — Coverage is calculated only over confirmed own address-book implementations; review inventory is reported separately and included in the conservative percentage where live and verified.
- Address-book implementation classification: 29 own, 29 exact-address-book context/dependencies excluded, 1 exact-address-book entries needing review
- Outside the address book: 70 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 18
- Confirmed-live implementations: 30 of 129 unique; 99 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/56
- Verified + Unaudited implementations: 56
- Verified by bytecode match: 0
- Unverified implementations: 73
- Unique implementations: 129
- Raw deployments: 165
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 4 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (56)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BobToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x52b5fb...5eb7e7`; ethereum `0xc9746f...46cedd` | ⚠️ Unaudited |
| SideToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xbdab72...b8f7a5`; ethereum `0xbdbb63...323dd1` | ⚠️ Unaudited |
| AddressManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230764 | `0xf2dc77...3dfdc7` | ⚠️ Unaudited |
| AnchorStateRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0216b...535431` | ⚠️ Unaudited |
| DisputeGameFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-230749 | `0x4bba75...74e4a0` | ⚠️ Unaudited |
| DisputeGameFactory | registry | project_anchor | own_supporting | 1 | ethereum | unit-230832 | `0x96123d...9b1079` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc91482...dc764e` | ⚠️ Unaudited |
| KailuaGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x296e7a...479444`; ethereum `0x4be239...a492ef`; ethereum `0xd37b0b...9e742b`; ethereum `0xe34577...9ca82a`; ethereum `0xe43415...7a053b` | ⚠️ Unaudited |
| KailuaTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x993703...02ae53`; ethereum `0x9b3e16...e9263c`; ethereum `0xc7eacd...52b336` | ⚠️ Unaudited |
| KailuaTreasury | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-230761 | `0xe99af5...5fb895` | ⚠️ Unaudited |
| KailuaVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6b4997...d89c7c`; ethereum `0x7fc721...f1cf29` | ⚠️ Unaudited |
| KailuaVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa23bf3...05b97d`; ethereum `0xf59da2...bfab4e` | ⚠️ Unaudited |
| KailuaVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc9934d...f28e43`; ethereum `0xdd26da...f5de59` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230819 | 2 deployments: ethereum `0x237853...158c12`; ethereum `0xe3d981...547eda` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230752 | `0x5d5a09...033e8b` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230830 | `0x5ff932...20d50a` | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-230754 | `0x7ae1d3...c98013` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa67fc0...734212` | ⚠️ Unaudited |
| L1StandardBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-230744 | `0x0b09ba...7d2a7a` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | project_anchor | own_supporting | 1 | ethereum | unit-230828 | `0x3f6ce1...4ac1f7` | ⚠️ Unaudited |
| L1StandardBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeafa1...3a8d31` | ⚠️ Unaudited |
| L2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59191b...229822` | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xdda53e...db11c1` | ⚠️ Unaudited |
| L2USDCBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x199810...5a5521` | ⚠️ Unaudited |
| MIPS64 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c64e...7195f7` | ⚠️ Unaudited |
| MIPS64 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230763 | `0xf027f4...d15dc1` | ⚠️ Unaudited |
| Multicall3 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca11bd...76ca11` | ⚠️ Unaudited |
| OPContractsManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-230759 | `0xdfe652...96ee3c` | ⚠️ Unaudited |
| OPSuccinctDisputeGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c2da5...2fea6d` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0640c9...5fbd76` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-230751 | `0x5493f4...63988f` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230834 | `0x555740...b09cb6` | ⚠️ Unaudited |
| OptimismPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x994e3b...959fec` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230826 | 2 deployments: ethereum `0x3c8776...c43287`; ethereum `0x8adee1...e65a3e` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b172b...415514` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230758 | `0xb443da...0d6fb4` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x0605f3...8cb27c`; ethereum `0x07e50a...1ab70b`; ethereum `0x1ffc35...e996a5`; ethereum `0x2dd081...6f15b2`; ethereum `0x33f9c5...a710a3`; ethereum `0x469593...e05dad`; ethereum `0x6753df...2f6776`; ethereum `0x6a3868...21b05e`; ethereum `0x703db8...4914ca`; ethereum `0x7342e0...3ec237`; ethereum `0x7fe001...7d87db`; ethereum `0x82e562...26c8e1`; ethereum `0xa5d58a...e39084`; ethereum `0xbcee72...16fb8b`; ethereum `0xc7bef1...8bc630` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230760 | `0xe3bd00...38702a` | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-230746 | `0x1fb8cd...87add3` | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee74fd...79fa7a` | ⚠️ Unaudited |
| ProtocolVersions | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230823 | 2 deployments: ethereum `0x0dd8ed...bd97d2`; ethereum `0x37e15e...3cb76c` | ⚠️ Unaudited |
| ProtocolVersions | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x87692b...b3eff2` | ⚠️ Unaudited |
| Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x11c03c...5f8acf`; ethereum `0xb9d8f5...17aad4` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230745 | `0x0d9f41...957cd0` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | needs_review (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x43ca78...89d12f`; ethereum `0xa70ddf...703e1c`; ethereum `0xb4899f...fad0b5` | ⚠️ Unaudited |
| RiscZeroGroth16Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5a9946...fd965e`; ethereum `0x94a468...43c622`; ethereum `0xf70aba...7de93c` | ⚠️ Unaudited |
| RiscZeroVerifierEmergencyStop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x08aed6...056e87`; ethereum `0x44c220...ea33e7`; ethereum `0xb839ea...3d74f7` | ⚠️ Unaudited |
| RiscZeroVerifierRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-230756 | `0x8eab2d...93d319` | ⚠️ Unaudited |
| SuperchainConfig | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x097f99...9d53cc` | ⚠️ Unaudited |
| SuperchainConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x554ffc...c5e667` | ⚠️ Unaudited |
| SuperchainConfig | governance | project_anchor | own_supporting | 1 | ethereum | unit-230837 | `0xe92520...965c46` | ⚠️ Unaudited |
| SystemConfig | governance | project_anchor | own_supporting | 0 | ethereum | unit-230747 | `0x340f92...ffe647` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0a1e...55b590` | ⚠️ Unaudited |
| SystemConfig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230821 | `0xacb886...1c5393` | ⚠️ Unaudited |
| TetherToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x687496...782f38` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0b144e...6fb711`; ethereum `0xdc986a...501d15` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (73)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e1623...d48880` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x345f46...f3404e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x377d69...fdf03a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37f330...484306` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x397443...5a1f25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230748 | `0x3a1d54...ea3c13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b3505...96a2bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...00000f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...00001a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44efe3...8d9d71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230750 | `0x4da82a...7458e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5687b5...d62891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57e99f...41cf1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230753 | `0x5e40b9...ed3d9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70675e...73bef3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70dee5...33de69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7444d4...d4bb2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75f48f...3d9a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a25d0...f1ecfb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230755 | `0x7b4653...d3f8d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98ba8b...669f57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fe7ef...ee9f41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa58898...0ef9a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae6770...e0dde9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ebba...f03221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb88164...b62d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaaf3b...72a799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfca47...54847c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230762 | `0xeba14d...e43fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdce12...34c809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdfed8...cafb3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230765 | `0x0b09ba...7d2a7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230766 | `0x0e1623...d48880` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230767 | `0x17c64e...7195f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230768 | `0x340f92...ffe647` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230770 | `0x37e15e...3cb76c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230772 | `0x397443...5a1f25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230774 | `0x3b3505...96a2bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230776 | `0x44efe3...8d9d71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230778 | `0x4bba75...74e4a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230780 | `0x4da82a...7458e7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230782 | `0x5493f4...63988f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230784 | `0x5687b5...d62891` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230786 | `0x57e99f...41cf1d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230788 | `0x5d5a09...033e8b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230790 | `0x70675e...73bef3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230792 | `0x70dee5...33de69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230794 | `0x7444d4...d4bb2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230796 | `0x75f48f...3d9a2f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230798 | `0x7a25d0...f1ecfb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230800 | `0x7ae1d3...c98013` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230802 | `0x7b4653...d3f8d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230804 | `0x98ba8b...669f57` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230806 | `0xa58898...0ef9a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230808 | `0xb2ebba...f03221` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230810 | `0xb88164...b62d55` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230811 | `0xbaaf3b...72a799` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230813 | `0xbfca47...54847c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230815 | `0xee74fd...79fa7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230817 | `0xfdce12...34c809` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf](https://docs.gobob.xyz/assets/files/BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [BOB-Onramp-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Onramp-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [BOB-Staking-security-review_2025-10-18.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Staking-security-review_2025-10-18.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [BOB-USDCBridge-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-USDCBridge-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [BOB-security-review-August.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-August.pdf) | Pashov Audit Group | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [BOB-security-review-June.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-June.pdf) | Pashov Audit Group | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [BOB-security-review-September.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-September.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [BOB-security-review_2025-03-17.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review_2025-03-17.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf](https://docs.gobob.xyz/assets/files/Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf) | Code4rena | Contest | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2704] BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf — no match: Scope section lists 5 contracts: BonusWrapper, SafeERC20Ext, UnbondableStake, Address, CurrencyTransferLib. Audit date is March 7th 2025 (end date of audit period).
- [2712] BOB-Onramp-security-review.pdf — no match: Scope section explicitly lists OnrampFactory and Onramp as the only contracts in scope.
- [2713] BOB-Staking-security-review_2025-10-18.pdf — no match: Scope section explicitly lists BobStaking.sol and BonusWrapper.sol. Audit date is the end date of the timeline: October 21st 2025.
- [2714] BOB-USDCBridge-security-review.pdf — no match: Scope section lists 6 contracts: IPartialUsdc, L1UsdcBridge, L2UsdcBridge, UsdcBridge, Pausable, UsdcManager. Audit date is April 22th 2024 (end date of range).
- [2715] BOB-security-review-August.pdf — no match: Scope section lists 14 contracts/interfaces. Audit date is the end date of the engagement (August 12, 2024).
- [2716] BOB-security-review-June.pdf — no match: Scope section explicitly lists four contracts: OrdinalsNFT, Bridge, MultiSig, SigCollection. Audit date is June 26th 2024 (end date of engagement).
- [2717] BOB-security-review-September.pdf — no match: Scope section explicitly lists 10 contracts. Audit date from header: September 5th - September 7th, using end date.
- [2718] BOB-security-review_2025-03-17.pdf — no match: Scope section explicitly lists CommonStructs and OfframpRegistry. Audit date is the end date of the engagement (March 20th 2025).
- [2719] Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf — no match: Two contracts in scope: OnRamp.sol and OnRampFactory.sol. Audit date from title.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf | BonusWrapper | unmatched — not counted | — | listed in scope | no |
| BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf | SafeERC20Ext | unmatched — not counted | — | listed in scope | no |
| BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf | UnbondableStake | unmatched — not counted | — | listed in scope | no |
| BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf | Address | unmatched — not counted | — | listed in scope | no |
| BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf | CurrencyTransferLib | unmatched — not counted | — | listed in scope | no |
| BOB-Onramp-security-review.pdf | OnrampFactory | unmatched — not counted | — | listed in scope section | no |
| BOB-Onramp-security-review.pdf | Onramp | unmatched — not counted | — | listed in scope section | no |
| BOB-Staking-security-review_2025-10-18.pdf | BobStaking | unmatched — not counted | — | listed in scope section | no |
| BOB-Staking-security-review_2025-10-18.pdf | BonusWrapper | unmatched — not counted | — | listed in scope section | no |
| BOB-USDCBridge-security-review.pdf | IPartialUsdc | unmatched — not counted | — | listed in scope | no |
| BOB-USDCBridge-security-review.pdf | L1UsdcBridge | unmatched — not counted | — | listed in scope | no |
| BOB-USDCBridge-security-review.pdf | L2UsdcBridge | unmatched — not counted | — | listed in scope | no |
| BOB-USDCBridge-security-review.pdf | UsdcBridge | unmatched — not counted | — | listed in scope | no |
| BOB-USDCBridge-security-review.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| BOB-USDCBridge-security-review.pdf | UsdcManager | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | OnrampV1 | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | OnrampFactoryV1 | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | Gateway | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | GatewayRegistry | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | ERC20Mintable | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | CommonStructs | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | IERC20Ext | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | IGateway | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | VelodromeSwapper | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | TestnetSwapper | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | ISwapper | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | IRouter | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-August.pdf | IETH | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-June.pdf | OrdinalsNFT | unmatched — not counted | — | listed in scope section | no |
| BOB-security-review-June.pdf | Bridge | unmatched — not counted | — | listed in scope section and mentioned in finding L-03 | no |
| BOB-security-review-June.pdf | MultiSig | unmatched — not counted | — | listed in scope section | no |
| BOB-security-review-June.pdf | SigCollection | unmatched — not counted | — | listed in scope section | no |
| BOB-security-review-September.pdf | CommonStructs | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-September.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-September.pdf | Gateway | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-September.pdf | GatewayRegistry | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-September.pdf | GatewayRegistryV2 | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-September.pdf | BedrockStrategy | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-September.pdf | PellStrategy | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-September.pdf | SegmentStrategy | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-September.pdf | ShoebillStrategy | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-September.pdf | SolvStrategy | unmatched — not counted | — | listed in scope | no |
| BOB-security-review_2025-03-17.pdf | CommonStructs | unmatched — not counted | — | listed in scope | no |
| BOB-security-review_2025-03-17.pdf | OfframpRegistry | unmatched — not counted | — | listed in scope | no |
| Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf | OnRamp | unmatched — not counted | — | listed in scope and findings | no |
| Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf | OnRampFactory | unmatched — not counted | — | listed in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xf2dc77...3dfdc7` | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4bba75...74e4a0` | DisputeGameFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe99af5...5fb895` | KailuaTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x237853...158c12` | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5ff932...20d50a` | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3f6ce1...4ac1f7` | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x555740...b09cb6` | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3c8776...c43287` | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb443da...0d6fb4` | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0dd8ed...bd97d2` | ProtocolVersions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x340f92...ffe647` | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xacb886...1c5393` | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 14 |
| standard_library | 8 |
| needs_review | 76 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 47 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9
- Match method counts: n/a

Zero-match audit list:

- [2704] BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf
- [2712] BOB-Onramp-security-review.pdf
- [2713] BOB-Staking-security-review_2025-10-18.pdf
- [2714] BOB-USDCBridge-security-review.pdf
- [2715] BOB-security-review-August.pdf
- [2716] BOB-security-review-June.pdf
- [2717] BOB-security-review-September.pdf
- [2718] BOB-security-review_2025-03-17.pdf
- [2719] Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf

Fork inheritance lineage and inherited audits are included when available.
