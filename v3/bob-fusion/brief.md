# Agentic Audit Brief: BOB Fusion

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 26 (0 matched; 26 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: BOB Fusion (`bob-fusion`)
- Website: [https://gobob.xyz](https://gobob.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, sepolia
- Contract surface: 121 unique implementations (123 raw deployments)
- Coverage basis: 0/12 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $285,350.48
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for BOB Fusion. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across ethereum, sepolia. Structural roles: 11 core, 1 supporting. 8 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: core (11), supporting (1)
- Contract kinds: contract (12)
- Detected standards: ownable (5), erc1967proxy (3), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (8), openzeppelin-upgradeable (7), solmate (3), solady (1)
- Upgradeable-pattern rows: 8

## Fork Lineage

This project reuses audited code from **BOB Bridge** (`bob-bridge`) in the KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame subsystem.
8 audits inherited from `bob-bridge`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Fork Analysis

1 of 31 contracts are derived from known codebases. 30 contracts have no detected origin.

### Forked Contracts

**L1StandardBridge** (`0x0b09ba...7d2a7a`, chain 1)
Origin: bob-bridge (`0x0b09ba...7d2a7a`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x37e15e...3cb76c`, chain 1)
- UnnamedContract (`0x3f6ce1...4ac1f7`, chain 1)
- UnnamedContract (`0x4da82a...7458e7`, chain 1)
- UnnamedContract (`0x5493f4...63988f`, chain 1)
- UnnamedContract (`0x555740...b09cb6`, chain 1)
- UnnamedContract (`0x5d5a09...033e8b`, chain 1)
- UnnamedContract (`0x5e40b9...ed3d9e`, chain 1)
- UnnamedContract (`0x7ae1d3...c98013`, chain 1)
- UnnamedContract (`0x8adee1...e65a3e`, chain 1)
- UnnamedContract (`0x96123d...9b1079`, chain 1)
- UnnamedContract (`0xa70ddf...703e1c`, chain 1)
- UnnamedContract (`0xacb886...1c5393`, chain 1)
- UnnamedContract (`0xb443da...0d6fb4`, chain 1)
- UnnamedContract (`0xe3bd00...38702a`, chain 1)
- UnnamedContract (`0xe3d981...547eda`, chain 1)
- UnnamedContract (`0xe92520...965c46`, chain 1)
- UnnamedContract (`0xe99af5...5fb895`, chain 1)
- UnnamedContract (`0xeba14d...e43fef`, chain 1)
- UnnamedContract (`0xf027f4...d15dc1`, chain 1)
- AddressManager (`0xf2dc77...3dfdc7`, chain 1)
- AnchorStateRegistry (`0x7b4653...d3f8d2`, chain 1)
- DisputeGameFactory (`0x4bba75...74e4a0`, chain 1)
- OPContractsManager (`0xdfe652...96ee3c`, chain 1)
- PreimageOracle (`0x1fb8cd...87add3`, chain 1)
- Proxy (`0x0dd8ed...bd97d2`, chain 1)
- Proxy (`0x3a1d54...ea3c13`, chain 1)
- Proxy (`0x5ff932...20d50a`, chain 1)
- ProxyAdmin (`0x0d9f41...957cd0`, chain 1)
- RiscZeroVerifierRouter (`0x8eab2d...93d319`, chain 1)
- SystemConfig (`0x340f92...ffe647`, chain 1)

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (12 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/58 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/12 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 29 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 63 discovered implementations excluded (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Deployed-live implementations: 29 of 121 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 121
- Raw deployments: 123
- Audits discovered: 26 (18 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 4 fresh, 11 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (35)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230820 | `0xf2dc77...3dfdc7` | ⚠️ Unaudited |
| AnchorStateRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230791 | `0x7b4653...d3f8d2` | ⚠️ Unaudited |
| BobToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52b5fb...5eb7e7` | ⚠️ Unaudited |
| DisputeGameFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230779 | `0x4bba75...74e4a0` | ⚠️ Unaudited |
| KailuaGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x296e7a...479444` | ⚠️ Unaudited |
| KailuaTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x993703...02ae53` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x237853...158c12` | ⚠️ Unaudited |
| L1StandardBridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230769 | `0x0b09ba...7d2a7a` | ⚠️ Unaudited |
| L2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59191b...229822` | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x003ea7...f15505` | ⚠️ Unaudited |
| MIPS64 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c64e...7195f7` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca11bd...76ca11` | ⚠️ Unaudited |
| NEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc80c0...b97a5e` | ⚠️ Unaudited |
| NectarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d5a41...05d98d` | ⚠️ Unaudited |
| OPContractsManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230805 | `0xdfe652...96ee3c` | ⚠️ Unaudited |
| OPSuccinctDisputeGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c2da5...2fea6d` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0640c9...5fbd76` | ⚠️ Unaudited |
| OptimismPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x994e3b...959fec` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c8776...c43287` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0605f3...8cb27c` | ⚠️ Unaudited |
| PreimageOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230773 | `0x1fb8cd...87add3` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x097f99...9d53cc` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230858 | 2 deployments: ethereum `0x0dd8ed...bd97d2`; ethereum `0x37e15e...3cb76c` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11c03c...5f8acf` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230859 | 2 deployments: ethereum `0x3a1d54...ea3c13`; ethereum `0x5e40b9...ed3d9e` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230860 | `0x5ff932...20d50a` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6b4997...d89c7c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230771 | `0x0d9f41...957cd0` | ⚠️ Unaudited |
| RiscZeroGroth16Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a9946...fd965e` | ⚠️ Unaudited |
| RiscZeroVerifierEmergencyStop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08aed6...056e87` | ⚠️ Unaudited |
| RiscZeroVerifierRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230795 | `0x8eab2d...93d319` | ⚠️ Unaudited |
| SystemConfig | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230775 | `0x340f92...ffe647` | ⚠️ Unaudited |
| TetherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e98db...fdba1b` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b144e...6fb711` | ⚠️ Unaudited |
| WrapperLockEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x991f0e...f3690e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (86)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e1623...d48880` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x345f46...f3404e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x377d69...fdf03a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37f330...484306` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x397443...5a1f25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b3505...96a2bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230777 | `0x3f6ce1...4ac1f7` | ❓ Unverified |
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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230781 | `0x4da82a...7458e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230783 | `0x5493f4...63988f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230785 | `0x555740...b09cb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5687b5...d62891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57e99f...41cf1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230787 | `0x5d5a09...033e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70675e...73bef3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70dee5...33de69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7444d4...d4bb2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75f48f...3d9a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a25d0...f1ecfb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230789 | `0x7ae1d3...c98013` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230793 | `0x8adee1...e65a3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230797 | `0x96123d...9b1079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98ba8b...669f57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fe7ef...ee9f41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa58898...0ef9a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230799 | `0xa70ddf...703e1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230801 | `0xacb886...1c5393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae6770...e0dde9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ebba...f03221` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230803 | `0xb443da...0d6fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb88164...b62d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaaf3b...72a799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfca47...54847c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230807 | `0xe3bd00...38702a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230809 | `0xe3d981...547eda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230812 | `0xe92520...965c46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230814 | `0xe99af5...5fb895` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230816 | `0xeba14d...e43fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee74fd...79fa7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230818 | `0xf027f4...d15dc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdce12...34c809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdfed8...cafb3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230822 | `0x0b09ba...7d2a7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230824 | `0x0e1623...d48880` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230825 | `0x17c64e...7195f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230827 | `0x340f92...ffe647` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230829 | `0x37e15e...3cb76c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230831 | `0x397443...5a1f25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230833 | `0x3b3505...96a2bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230835 | `0x44efe3...8d9d71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230836 | `0x4bba75...74e4a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230838 | `0x4da82a...7458e7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230839 | `0x5493f4...63988f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230840 | `0x5687b5...d62891` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230841 | `0x57e99f...41cf1d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230842 | `0x5d5a09...033e8b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230843 | `0x70675e...73bef3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230844 | `0x70dee5...33de69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230845 | `0x7444d4...d4bb2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230846 | `0x75f48f...3d9a2f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230847 | `0x7a25d0...f1ecfb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230848 | `0x7ae1d3...c98013` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230849 | `0x7b4653...d3f8d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230850 | `0x98ba8b...669f57` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230851 | `0xa58898...0ef9a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230852 | `0xb2ebba...f03221` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230853 | `0xb88164...b62d55` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230854 | `0xbaaf3b...72a799` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230855 | `0xbfca47...54847c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230856 | `0xee74fd...79fa7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230857 | `0xfdce12...34c809` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [BOB-Staking-security-review_2025-10-18.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Staking-security-review_2025-10-18.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf](https://docs.gobob.xyz/assets/files/BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [BOB-security-review-September.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-September.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [BOB-security-review_2025-03-17.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review_2025-03-17.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [BOB-security-review-August.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-August.pdf) | Pashov Audit Group | Audit | 2024-08 | aging | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [BOB-security-review-June.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-June.pdf) | Pashov Audit Group | Audit | 2024-06 | stale | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [BOB-Onramp-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Onramp-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [BOB-USDCBridge-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-USDCBridge-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Report](https://docs.gobob.xyz/assets/files/veridise-kailua-20250217-c317614d026618741e34d6a269c5f9e9.pdf) | yAudit | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Report](https://docs.gobob.xyz/assets/files/veridise-kailua-20250522-d1dff99d6a1be809bcb27c48671c8b46.pdf) | Code4rena | Contest | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Report](https://docs.gobob.xyz/assets/files/veridise-kailua-20250616-92721909a6b90ab336d6fae5365a76d4.pdf) | yAudit | Audit | 2025-06 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Report](https://docs.gobob.xyz/assets/files/BobToken-Pashov-Audit-Report-Feb-2025-9f199a39dec0967a6e789403c9fc896d.pdf) | Pashov Audit Group | Audit | 2025-02 | aging | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [Report](https://docs.gobob.xyz/assets/files/BobTokenV2-Pashov-Audit-Report-Oct-2025-0263f8b0c49bf2b75df5b6bcad9fbcc9.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Report](https://docs.gobob.xyz/assets/files/BobStaking-security-review_2025-10-18-f54577c242e3990575db4789a421c165.pdf) | Pashov | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Report](https://docs.gobob.xyz/assets/files/BOB-02-WP2-report-dcd81ac9bbd6f6efa2addaa189c9dc11.pdf) | Cure53 | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Report](https://docs.gobob.xyz/assets/files/Pashov-Audit-Report-2024-v1-82d2528b6e9e352b0d6972f399c0d425.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Report](https://docs.gobob.xyz/assets/files/Pashov-Audit-Report-2024-v2-86896538aa291f687a0f6a37446b84a1.pdf) | Pashov Audit Group | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [Report](https://docs.gobob.xyz/assets/files/Pashov-Audit-Report-2024-v3-a63f8cca35682dfec1fb6d814ecd2f42.pdf) | Pashov Audit Group | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Report](https://docs.gobob.xyz/assets/files/BOB-security-review_2025-03-17-3ab501a0f6519fc8f95c9f285481414b.pdf) | Pashov | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Report](https://docs.gobob.xyz/assets/files/Pashov-Audit-Report-2025-offramp-solver-e6126bcad381876b88a6550ddde8aa88.pdf) | Pashov Audit Group | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [BOB-02-WP1-report-b55c983036f11dd6d7c6eecd6a258957.pdf](https://docs.gobob.xyz/assets/files/BOB-02-WP1-report-b55c983036f11dd6d7c6eecd6a258957.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Report](https://docs.gobob.xyz/assets/files/BOB-USDCBridge-security-review-e97c3ee59cc234a9bd75876a86343b6b.pdf) | Pashov | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Report](https://docs.gobob.xyz/assets/files/FusionLock-Ottersec-023eec834a0e03cd844e312523e0a9a2.pdf) | Ottersec | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Report](https://docs.gobob.xyz/assets/files/FusionLock-Common_Prefix-7d4631fe0288ee12c628ae07a84f7076.pdf) | Common Prefix | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Report](https://docs.gobob.xyz/assets/files/FusionLock-Trail_of_Bits-4ce7aa57bbf6123a486f4dd2753d4fcd.pdf) | Trail of Bits | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [/URI ()>>](https://github.com/pashov/audits) | Pashov Audit Group | Audit | 2024 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18848] BOB-Staking-security-review_2025-10-18.pdf — no match: Scope explicitly lists BobStaking.sol and BonusWrapper.sol. Audit date from title: October 18th 2025 - October 21st 2025, using end date.
- [18849] BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf — no match: Scope section lists 5 contracts: BonusWrapper, SafeERC20Ext, UnbondableStake, Address, CurrencyTransferLib. Audit date is March 7th 2025 (end date of audit period).
- [18850] BOB-security-review-September.pdf — no match: Scope section explicitly lists 10 contracts. Audit date from 'September 5th - September 7th' uses end date.
- [18851] BOB-security-review_2025-03-17.pdf — no match: Scope section explicitly lists CommonStructs and OfframpRegistry as the smart contracts in scope.
- [18852] BOB-security-review-August.pdf — no match: Scope section lists 14 contracts/interfaces. Audit date is the end date of the engagement (August 12, 2024).
- [18853] BOB-security-review-June.pdf — no match: Scope section explicitly lists four contracts: OrdinalsNFT, Bridge, MultiSig, SigCollection. Audit date is June 26th 2024 (end date of engagement).
- [18854] BOB-Onramp-security-review.pdf — no match: Scope section explicitly lists OnrampFactory and Onramp as the only contracts in scope.
- [18855] BOB-USDCBridge-security-review.pdf — no match: Scope section explicitly lists 6 contracts. Audit date is the end date of the engagement (April 22th 2024).
- [19584] Report — no match: Extracted contract names from scope section and findings. Audit date from cover page: Feb. 18, 2025.
- [19585] Report — no match: Scope explicitly states four Solidity files in crates/contracts/foundry/src. Extracted contract names from file references and vulnerability locations.
- [19586] Report — no match: The audit scope explicitly excludes on-chain smart contracts and focuses only on off-chain zkVM application source files (Rust files). No smart contract names are in scope.
- [19587] Report — no match: Only one contract, BobToken, is explicitly listed in scope. The report mentions ERC20Permit and Nonces from OpenZeppelin but these are dependencies, not in-scope contracts.
- [19589] Report — no match: Scope explicitly lists BobTokenV2.sol and BobTokenV2Upgrade.sol. Audit date is the end date of the timeline (October 21st 2025).
- [19590] Report — no match: Scope explicitly lists BobStaking.sol and BonusWrapper.sol. Audit date from title: October 18th 2025 - October 21st 2025, using end date.
- [19591] Report — no match: The report explicitly lists the Onramp smart contracts and Rust codebase in scope. Two Solidity contracts (Onramp and OnrampFactory) are identified from the findings. The audit date is April 30, 2024, as stated on the cover page.
- [19593] Report — no match: Scope section explicitly lists OnrampFactory and Onramp as the only contracts in scope.
- [19594] Report — no match: Scope section lists 14 contracts/interfaces. Audit date is the end date of the engagement (August 12, 2024).
- [19595] Report — no match: Scope section explicitly lists 10 smart contracts. Audit date from 'September 5th - September 7th' uses end date.
- [19596] Report — no match: Scope section explicitly lists CommonStructs and OfframpRegistry as the smart contracts in scope.
- [19597] Report — no match: The audit report covers Rust source files (modules) rather than Solidity contracts. The scope section lists 7 files: api_client.rs, app.rs, error.rs, main.rs, models.rs, scan_and_process_orders.rs, utils.rs. The audit date is the end date of the engagement: August 30th 2025.
- [19598] BOB-02-WP1-report-b55c983036f11dd6d7c6eecd6a258957.pdf — no match: Extracted from scope section and affected files in findings. The report covers modified USDC bridge library including L1UsdcBridge, L2UsdcBridge, UsdcBridge, and UsdcManager.
- [19599] Report — no match: Scope section lists 6 contracts. Audit date is the end date of the engagement (April 22th 2024).
- [19600] Report — no match: Only one contract, FusionLock, is explicitly mentioned in the scope and findings.
- [19601] Report — no match: Only one contract, FusionLock.sol, is in scope. Audit date from title line.
- [19602] Report — no match: Only one contract, FusionLock, is in scope. The audit date is April 3, 2024, from the cover page.
- [19613] /URI ()>> — no match: The provided text is a GitHub repository README listing audit reports by project name and date, but does not contain any specific audit report with contract names or scope details.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| BOB-Staking-security-review_2025-10-18.pdf | BobStaking | unmatched — not counted | — | listed in scope section | no |
| BOB-Staking-security-review_2025-10-18.pdf | BonusWrapper | unmatched — not counted | — | listed in scope section | no |
| BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf | BonusWrapper | unmatched — not counted | — | listed in scope | no |
| BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf | SafeERC20Ext | unmatched — not counted | — | listed in scope | no |
| BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf | UnbondableStake | unmatched — not counted | — | listed in scope | no |
| BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf | Address | unmatched — not counted | — | listed in scope | no |
| BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf | CurrencyTransferLib | unmatched — not counted | — | listed in scope | no |
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
| BOB-security-review-August.pdf | IWH | unmatched — not counted | — | — | no |
| BOB-security-review-August.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| BOB-security-review-June.pdf | OrdinalsNFT | unmatched — not counted | — | listed in scope section | no |
| BOB-security-review-June.pdf | Bridge | unmatched — not counted | — | listed in scope section and mentioned in finding L-03 | no |
| BOB-security-review-June.pdf | MultiSig | unmatched — not counted | — | listed in scope section | no |
| BOB-security-review-June.pdf | SigCollection | unmatched — not counted | — | listed in scope section | no |
| BOB-Onramp-security-review.pdf | OnrampFactory | unmatched — not counted | — | listed in scope section | no |
| BOB-Onramp-security-review.pdf | Onramp | unmatched — not counted | — | listed in scope section | no |
| BOB-USDCBridge-security-review.pdf | IPartialUsdc | unmatched — not counted | — | listed in scope | no |
| BOB-USDCBridge-security-review.pdf | L1UsdcBridge | unmatched — not counted | — | listed in scope | no |
| BOB-USDCBridge-security-review.pdf | L2UsdcBridge | unmatched — not counted | — | listed in scope | no |
| BOB-USDCBridge-security-review.pdf | UsdcBridge | unmatched — not counted | — | listed in scope | no |
| BOB-USDCBridge-security-review.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| BOB-USDCBridge-security-review.pdf | UsdcManager | unmatched — not counted | — | listed in scope | no |
| Report | KailuaTournament | unmatched — not counted | — | Listed in scope and mentioned in findings (e.g., V-KLA-VUL-001, V-KLA-VUL-003, V-KLA-VUL-006). | no |
| Report | KailuaTreasury | unmatched — not counted | — | Listed in scope and mentioned in findings (e.g., V-KLA-VUL-003, V-KLA-VUL-004, V-KLA-VUL-007). | no |
| Report | KailuaLib | unmatched — not counted | — | Listed in scope and mentioned in findings (e.g., V-KLA-VUL-002, V-KLA-VUL-021, V-KLA-VUL-023, V-KLA-VUL-024). | no |
| Report | IKailuaTreasury | unmatched — not counted | — | Mentioned in finding V-KLA-VUL-024 as an interface. | no |
| Report | KailuaTournament | unmatched — not counted | — | listed in scope and vulnerability file references | no |
| Report | KailuaTreasury | unmatched — not counted | — | listed in scope and vulnerability file references | no |
| Report | KailuaGame | unmatched — not counted | — | mentioned in trust model and vulnerability references | no |
| Report | KailuaLib | unmatched — not counted | — | mentioned in vulnerability V-KLA-VUL-005 | no |
| Report | BobToken | unmatched — not counted | — | listed in scope table and deployment verification | no |
| Report | BobTokenV2 | unmatched — not counted | — | listed in scope section | no |
| Report | BobTokenV2Upgrade | unmatched — not counted | — | listed in scope section | no |
| Report | BobStaking | unmatched — not counted | — | listed in scope section | no |
| Report | BonusWrapper | unmatched — not counted | — | listed in scope section | no |
| Report | Onramp | unmatched — not counted | — | Listed in scope and referenced in findings as the main smart contract. | no |
| Report | OnrampFactory | unmatched — not counted | — | Mentioned in findings as the factory contract that creates Onramp instances. | no |
| Report | OnrampFactory | unmatched — not counted | — | listed in scope section | no |
| Report | Onramp | unmatched — not counted | — | listed in scope section | no |
| Report | OnrampV1 | unmatched — not counted | — | listed in scope | no |
| Report | OnrampFactoryV1 | unmatched — not counted | — | listed in scope | no |
| Report | Gateway | unmatched — not counted | — | listed in scope | no |
| Report | GatewayRegistry | unmatched — not counted | — | listed in scope | no |
| Report | ERC20Mintable | unmatched — not counted | — | listed in scope | no |
| Report | Constants | unmatched — not counted | — | listed in scope | no |
| Report | CommonStructs | unmatched — not counted | — | listed in scope | no |
| Report | IERC20Ext | unmatched — not counted | — | listed in scope | no |
| Report | IGateway | unmatched — not counted | — | listed in scope | no |
| Report | VelodromeSwapper | unmatched — not counted | — | listed in scope | no |
| Report | TestnetSwapper | unmatched — not counted | — | listed in scope | no |
| Report | ISwapper | unmatched — not counted | — | listed in scope | no |
| Report | IRouter | unmatched — not counted | — | listed in scope | no |
| Report | IETH | unmatched — not counted | — | listed in scope | no |
| Report | CommonStructs | unmatched — not counted | — | listed in scope | no |
| Report | Constants | unmatched — not counted | — | listed in scope | no |
| Report | Gateway | unmatched — not counted | — | listed in scope | no |
| Report | GatewayRegistry | unmatched — not counted | — | listed in scope | no |
| Report | GatewayRegistryV2 | unmatched — not counted | — | listed in scope | no |
| Report | BedrockStrategy | unmatched — not counted | — | listed in scope | no |
| Report | PellStrategy | unmatched — not counted | — | listed in scope | no |
| Report | SegmentStrategy | unmatched — not counted | — | listed in scope | no |
| Report | ShoebillStrategy | unmatched — not counted | — | listed in scope | no |
| Report | SolvStrategy | unmatched — not counted | — | listed in scope | no |
| Report | CommonStructs | unmatched — not counted | — | listed in scope | no |
| Report | OfframpRegistry | unmatched — not counted | — | listed in scope | no |
| Report | api_client | unmatched — not counted | — | listed in scope section | no |
| Report | app | unmatched — not counted | — | listed in scope section | no |
| Report | error | unmatched — not counted | — | listed in scope section | no |
| Report | main | unmatched — not counted | — | listed in scope section | no |
| Report | models | unmatched — not counted | — | listed in scope section | no |
| Report | scan_and_process_orders | unmatched — not counted | — | listed in scope section | no |
| Report | utils | unmatched — not counted | — | listed in scope section | no |
| BOB-02-WP1-report-b55c983036f11dd6d7c6eecd6a258957.pdf | L1UsdcBridge | unmatched — not counted | — | Affected file #1 in BOB-02-001 | no |
| BOB-02-WP1-report-b55c983036f11dd6d7c6eecd6a258957.pdf | L2UsdcBridge | unmatched — not counted | — | Affected file #2 in BOB-02-001 | no |
| BOB-02-WP1-report-b55c983036f11dd6d7c6eecd6a258957.pdf | UsdcBridge | unmatched — not counted | — | Affected file #3 in BOB-02-001 | no |
| BOB-02-WP1-report-b55c983036f11dd6d7c6eecd6a258957.pdf | UsdcManager | unmatched — not counted | — | Affected file in BOB-02-002 | no |
| Report | IPartialUsdc | unmatched — not counted | — | listed in scope | no |
| Report | L1UsdcBridge | unmatched — not counted | — | listed in scope | no |
| Report | L2UsdcBridge | unmatched — not counted | — | listed in scope | no |
| Report | UsdcBridge | unmatched — not counted | — | listed in scope | no |
| Report | Pausable | unmatched — not counted | — | listed in scope | no |
| Report | UsdcManager | unmatched — not counted | — | listed in scope | no |
| Report | FusionLock | unmatched — not counted | — | mentioned in scope description and findings | no |
| Report | FusionLock | unmatched — not counted | — | listed in scope and findings | no |
| Report | FusionLock | unmatched — not counted | — | Project Targets section lists 'FusionLock' as the target contract; executive summary mentions 'FusionLock contract'. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xf2dc77...3dfdc7` | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7b4653...d3f8d2` | AnchorStateRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4bba75...74e4a0` | DisputeGameFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0b09ba...7d2a7a` | L1StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdfe652...96ee3c` | OPContractsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1fb8cd...87add3` | PreimageOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8eab2d...93d319` | RiscZeroVerifierRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x340f92...ffe647` | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 9 |
| needs_review | 86 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 26
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 109 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=24, low=2
- Match method counts: n/a

Zero-match audit list:

- [18848] BOB-Staking-security-review_2025-10-18.pdf
- [18849] BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf
- [18850] BOB-security-review-September.pdf
- [18851] BOB-security-review_2025-03-17.pdf
- [18852] BOB-security-review-August.pdf
- [18853] BOB-security-review-June.pdf
- [18854] BOB-Onramp-security-review.pdf
- [18855] BOB-USDCBridge-security-review.pdf
- [19584] Report
- [19585] Report
- [19586] Report
- [19587] Report
- [19589] Report
- [19590] Report
- [19591] Report
- [19593] Report
- [19594] Report
- [19595] Report
- [19596] Report
- [19597] Report
- [19598] BOB-02-WP1-report-b55c983036f11dd6d7c6eecd6a258957.pdf
- [19599] Report
- [19600] Report
- [19601] Report
- [19602] Report
- [19613] /URI ()>>

Fork inheritance lineage and inherited audits are included when available.
