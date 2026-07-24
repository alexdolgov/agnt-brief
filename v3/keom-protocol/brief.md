# Agentic Audit Brief: Keom Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Keom Protocol (`keom-protocol`)
- Website: [https://keom.io](https://keom.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: manta-pacific, polygon, polygon-zkevm
- Contract surface: 103 unique implementations (103 raw deployments)
- Coverage basis: 0/42 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $175,151.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Keom Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 42 contract row(s) across astar, manta-pacific, polygon, polygon-zkevm. Structural roles: 42 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 42
- Structural roles: unclassified (42)
- Contract kinds: contract (35), abstract (7)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 48 contracts are derived from known codebases. 48 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- API3 Oracle adapter (`0x19194261d8f0599bd079c52623c80c5150f010cf`, chain 1101)
- Comptroller (`0xc145700ac0d8a59b1f64dce35687dd7ca2beb26a`, chain 137)
- Comptroller (`0xbd5cd926eb73b48905091fff9996bba832feac71`, chain 169)
- Comptroller (`0x91e9e99ac7c39d5c057f83ef44136dfb1e7add7d`, chain 1101)
- fixedInterestRateModel (`0x19621d19b40c978a479bd35afb3740f90b7b0fe4`, chain 137)
- Interest Rate Model (`0x9008a044dde18afd4fffe0f9a17e32feaa684b09`, chain 1101)
- InterestRateModel (`0x5d3473bde2c8b408584ddb8cbbb8925f33c01fa7`, chain 137)
- InterestRateModel (`0x6ea32f626e3a5c41547235ebbdf861526e11f482`, chain 169)
- kAAVE/kCRV/kLINK (`0x24ce1320e96ec4f849ed62d7ff8a43d4ce28fe81`, chain 137)
- kDAI (`0x83f98471f6f5d0ad82b0fe99d2ce26f65995ef32`, chain 137)
- kDAI (`0x888b707a12205b52805d86123fe720ba119f0632`, chain 1101)
- kgDAI (`0x4da1cf31f15185efe7a0883ac805afd2e9543249`, chain 137)
- kjEUR (`0xa17e7765b38b9aff1fb8beb3ad865aff68ebda96`, chain 137)
- kMAI (`0x0edc2b1239d3d4ad03a2deb23517a50a406eb6d2`, chain 137)
- kMATIC (`0x8903dc1f4736d2fcb90c1497aebbaba133daac76`, chain 1101)
- kMaticX (`0x6b4c8e36cec677d68cfbaba375230f959199a673`, chain 137)
- kNative (`0xee1727f5074e747716637e1776b7f7c7133f16b1`, chain 1101)
- kNative ETH (`0x8903dc1f4736d2fcb90c1497aebbaba133daac76`, chain 169)
- kNative Logic (`0x4c6e83b9f7e8835f583be748de899c5881fbc403`, chain 1101)
- kNative MATIC (`0x7854d4cfa7d0b877e399bcbdffb49536d7a14fc7`, chain 137)
- kNativeLogic (`0xcf0bc6fc897195683315cd38454e933e9e21eaec`, chain 169)
- kstMATIC (`0x4bc6e73b215b7f1ddfce83b887525f72a53e1ed8`, chain 137)
- kToken Logic (`0x1eef85b09c8bc5e58a9ed81ff6b2e1420747857d`, chain 1101)
- kTokenLogic (`0x68d9baa40394da2e2c1ca05d30bf33f52823ee7b`, chain 169)
- kUSDC (`0xf5eca026809785165ad468171ce10e1da59ca866`, chain 137)
- kUSDC (`0xe371cdaf86482f07e7b2ea17f4ccd5b202f59f15`, chain 169)
- kUSDC (`0x68d9baa40394da2e2c1ca05d30bf33f52823ee7b`, chain 1101)
- kUSDC.e (`0x4ce75412dafcebb421e90e42b3fac6db795e4f85`, chain 1101)
- kUSDT (`0xce71f99c6b09ba50aea18f8132d674dc57fe0839`, chain 137)
- kUSDT (`0x4769222c2ba104623023de49188030f6f30a332f`, chain 169)
- kUSDT (`0xad41c77d99e282267c1492cdefe528d7d5044253`, chain 1101)
- kvGHST (`0x95b847bd54d151231f1c82bf2eecbe5c211bd9bc`, chain 137)
- kWBTC (`0x4e7d313918b9a8c32f18bc1df346c79e36d0f9dc`, chain 137)
- kWBTC (`0x503deabad9641c5b4015041eeb0f1263e415715d`, chain 1101)
- kWETH (`0x44010cbf1ec8b8d8275d86d8e28278c06dd07c48`, chain 137)
- kWETH (`0xbc59506a5ce024b892776d4f7dd450b0fb3584a2`, chain 1101)
- kwstETH (`0x0e9f5e4e8ec73e909830b67e3e61b5db70e3b2e9`, chain 137)
- Maximillion (`0x04626d431e069cb6706721288cd2e53be2ab1953`, chain 137)
- Maximillion (`0xbc81104207c160cfe48585cc8d753ad2c7031ff7`, chain 169)
- Maximillion (`0x19959010bd0d6600fedec721174c2e67153fbd63`, chain 1101)
- Multicall (`0x83e249f47d235120595a05b03557cfab5da2dfd2`, chain 169)
- Multicall (`0x8a6a007cdc89430317de917583b4746607884aaf`, chain 1101)
- Oracle (`0x828fb251167145f89cd479f9d71a5a762f23bf13`, chain 137)
- Oracle (`0x8a6a007cdc89430317de917583b4746607884aaf`, chain 169)
- Oracle (`0xbc81104207c160cfe48585cc8d753ad2c7031ff7`, chain 1101)
- Unitroller (`0x5b7136cffd40eee5b882678a5d02aa25a48d669f`, chain 137)
- Unitroller (`0x91e9e99ac7c39d5c057f83ef44136dfb1e7add7d`, chain 169)
- Unitroller (`0x6ea32f626e3a5c41547235ebbdf861526e11f482`, chain 1101)

## Contract Surface Quality

- Logic-topography rows: 42; live-surface rows included: 42 (42 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 48/60 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/42 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 48 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 54 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 48 of 103 unique; 55 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/42
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 61
- Unique implementations: 103
- Raw deployments: 103
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Comptroller | unknown | project_anchor | own_supporting | 0 | polygon | unit-388345 | `0xc145700ac0d8a59b1f64dce35687dd7ca2beb26a` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388356 | `0xbd5cd926eb73b48905091fff9996bba832feac71` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388322 | `0x91e9e99ac7c39d5c057f83ef44136dfb1e7add7d` | ⚠️ Unaudited |
| fixedInterestRateModel | unknown | project_anchor | own_supporting | 0 | polygon | unit-388331 | `0x19621d19b40c978a479bd35afb3740f90b7b0fe4` | ⚠️ Unaudited |
| Interest Rate Model | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388321 | `0x9008a044dde18afd4fffe0f9a17e32feaa684b09` | ⚠️ Unaudited |
| InterestRateModel | unknown | project_anchor | own_supporting | 0 | polygon | unit-388338 | `0x5d3473bde2c8b408584ddb8cbbb8925f33c01fa7` | ⚠️ Unaudited |
| InterestRateModel | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388350 | `0x6ea32f626e3a5c41547235ebbdf861526e11f482` | ⚠️ Unaudited |
| kAAVE/kCRV/kLINK | unknown | project_anchor | own_supporting | 0 | polygon | unit-388332 | `0x24ce1320e96ec4f849ed62d7ff8a43d4ce28fe81` | ⚠️ Unaudited |
| kDAI | unknown | project_anchor | own_supporting | 0 | polygon | unit-388342 | `0x83f98471f6f5d0ad82b0fe99d2ce26f65995ef32` | ⚠️ Unaudited |
| kgDAI | unknown | project_anchor | own_supporting | 0 | polygon | unit-388335 | `0x4da1cf31f15185efe7a0883ac805afd2e9543249` | ⚠️ Unaudited |
| kjEUR | unknown | project_anchor | own_supporting | 0 | polygon | unit-388344 | `0xa17e7765b38b9aff1fb8beb3ad865aff68ebda96` | ⚠️ Unaudited |
| kMAI | unknown | project_anchor | own_supporting | 0 | polygon | unit-388330 | `0x0edc2b1239d3d4ad03a2deb23517a50a406eb6d2` | ⚠️ Unaudited |
| kMATIC | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388319 | `0x8903dc1f4736d2fcb90c1497aebbaba133daac76` | ⚠️ Unaudited |
| kMaticX | unknown | project_anchor | own_supporting | 0 | polygon | unit-388339 | `0x6b4c8e36cec677d68cfbaba375230f959199a673` | ⚠️ Unaudited |
| kNative | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388327 | `0xee1727f5074e747716637e1776b7f7c7133f16b1` | ⚠️ Unaudited |
| kNative ETH | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388352 | `0x8903dc1f4736d2fcb90c1497aebbaba133daac76` | ⚠️ Unaudited |
| kNative Logic | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388313 | `0x4c6e83b9f7e8835f583be748de899c5881fbc403` | ⚠️ Unaudited |
| kNative MATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-388340 | `0x7854d4cfa7d0b877e399bcbdffb49536d7a14fc7` | ⚠️ Unaudited |
| kNativeLogic | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388357 | `0xcf0bc6fc897195683315cd38454e933e9e21eaec` | ⚠️ Unaudited |
| kstMATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-388334 | `0x4bc6e73b215b7f1ddfce83b887525f72a53e1ed8` | ⚠️ Unaudited |
| kToken Logic | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388312 | `0x1eef85b09c8bc5e58a9ed81ff6b2e1420747857d` | ⚠️ Unaudited |
| kTokenLogic | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388349 | `0x68d9baa40394da2e2c1ca05d30bf33f52823ee7b` | ⚠️ Unaudited |
| kUSDC | unknown | project_anchor | own_supporting | 0 | polygon | unit-388347 | `0xf5eca026809785165ad468171ce10e1da59ca866` | ⚠️ Unaudited |
| kUSDC | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388358 | `0xe371cdaf86482f07e7b2ea17f4ccd5b202f59f15` | ⚠️ Unaudited |
| kUSDT | unknown | project_anchor | own_supporting | 0 | polygon | unit-388346 | `0xce71f99c6b09ba50aea18f8132d674dc57fe0839` | ⚠️ Unaudited |
| kUSDT | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388348 | `0x4769222c2ba104623023de49188030f6f30a332f` | ⚠️ Unaudited |
| kUSDT | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388323 | `0xad41c77d99e282267c1492cdefe528d7d5044253` | ⚠️ Unaudited |
| kvGHST | unknown | project_anchor | own_supporting | 0 | polygon | unit-388343 | `0x95b847bd54d151231f1c82bf2eecbe5c211bd9bc` | ⚠️ Unaudited |
| kWBTC | unknown | project_anchor | own_supporting | 0 | polygon | unit-388336 | `0x4e7d313918b9a8c32f18bc1df346c79e36d0f9dc` | ⚠️ Unaudited |
| kWETH | unknown | project_anchor | own_supporting | 0 | polygon | unit-388333 | `0x44010cbf1ec8b8d8275d86d8e28278c06dd07c48` | ⚠️ Unaudited |
| kwstETH | unknown | project_anchor | own_supporting | 0 | polygon | unit-388329 | `0x0e9f5e4e8ec73e909830b67e3e61b5db70e3b2e9` | ⚠️ Unaudited |
| Maximillion | unknown | project_anchor | own_supporting | 0 | polygon | unit-388328 | `0x04626d431e069cb6706721288cd2e53be2ab1953` | ⚠️ Unaudited |
| Maximillion | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388355 | `0xbc81104207c160cfe48585cc8d753ad2c7031ff7` | ⚠️ Unaudited |
| Maximillion | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388311 | `0x19959010bd0d6600fedec721174c2e67153fbd63` | ⚠️ Unaudited |
| Multicall | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388351 | `0x83e249f47d235120595a05b03557cfab5da2dfd2` | ⚠️ Unaudited |
| Multicall | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388320 | `0x8a6a007cdc89430317de917583b4746607884aaf` | ⚠️ Unaudited |
| Oracle | unknown | project_anchor | own_supporting | 0 | polygon | unit-388341 | `0x828fb251167145f89cd479f9d71a5a762f23bf13` | ⚠️ Unaudited |
| Oracle | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388353 | `0x8a6a007cdc89430317de917583b4746607884aaf` | ⚠️ Unaudited |
| Oracle | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388326 | `0xbc81104207c160cfe48585cc8d753ad2c7031ff7` | ⚠️ Unaudited |
| Unitroller | unknown | project_anchor | own_supporting | 0 | polygon | unit-388337 | `0x5b7136cffd40eee5b882678a5d02aa25a48d669f` | ⚠️ Unaudited |
| Unitroller | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-388354 | `0x91e9e99ac7c39d5c057f83ef44136dfb1e7add7d` | ⚠️ Unaudited |
| Unitroller | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388317 | `0x6ea32f626e3a5c41547235ebbdf861526e11f482` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (61)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| API3 Oracle adapter | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388310 | `0x19194261d8f0599bd079c52623c80c5150f010cf` | ❓ Unverified |
| kDAI | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388318 | `0x888b707a12205b52805d86123fe720ba119f0632` | ❓ Unverified |
| kUSDC | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388316 | `0x68d9baa40394da2e2c1ca05d30bf33f52823ee7b` | ❓ Unverified |
| kUSDC.e | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388314 | `0x4ce75412dafcebb421e90e42b3fac6db795e4f85` | ❓ Unverified |
| kWBTC | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388315 | `0x503deabad9641c5b4015041eeb0f1263e415715d` | ❓ Unverified |
| kWETH | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-388324 | `0xbc59506a5ce024b892776d4f7dd450b0fb3584a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x176950054c5b691dc7b2698194a229a6861e7d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17fec0dd2c6bc438fd65a1d2c53319bea130befb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1eef85b09c8bc5e58a9ed81ff6b2e1420747857d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2eea2412f047d6ffacac38db72401fb9ddf25250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x327b2a4ea70f92d55648c1acc9bf404ca0454cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x407fe95a8b7e725eb6e486a2629a1ee3232be262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5293c40883167c7c6f42e85eba94f92cb71fa545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x544449e4ee629e92bf222cd4bb1eca172b1720d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a2b8d77d987b6458c065e139672aecee9b64dbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5fb40ba112a59c7f18953733998b1a2b5fc79a17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x62e84cdbe8470aa66317afe010c19da55c632fca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x68d9baa40394da2e2c1ca05d30bf33f52823ee7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x74eb60281ce12e4d09cfc4cd5d64248908e293e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7b6c3cc4312da404cc205bd2320436a09af159e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7d6c8f28ab2d6569adec790305a97b27bb17edc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8370e8a18b46229e11c01c9762780e06f24cebd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x843e777117919841ca1bdf684c7bfb39773c7fdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8903dc1f4736d2fcb90c1497aebbaba133daac76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x968d00c4b188db962250c1876204870487a514dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x99eb30fd397659d49ec8d2efd843801b4bc0ae1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaccbe990b60e26adfde05272f8a8c6e6e910907f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb4f51362d9681469c7565d7e9445cb8ef4e4d98b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc18f849f73cd7c41bc1b0e5bafe816ae700fb92d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc73e981ac7d0566349909dc155cb88aaeee7f4ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcd742ebaf21d9ed4e721f55d336ad1bd217938ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf0bc6fc897195683315cd38454e933e9e21eaec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd0edfe9df9505cc1bd7bf4cd0e2417e22c5015f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd773ffa79258f2d7458f1b74d075f4524ee3cca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdf34a9e2c79734d19000635ff854152d5b3b79d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe0266aef68eba19b22b6cc04d09d2cc572b1628e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe3c7a70a976060681700f3eed10a50e603ff4251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe85d531733fae6e8170a1c90f3675b02b7d6390f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xec882c302b34007cbf53512e18951ec9c386eae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xecf3e0f3c1cbc385e895f9c8d4f09fd5a9960ffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfcfe3cd0cc6ba5cf354b396e045721de7a009882` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x001c6f3944b327f15f509dc3172330576a5908b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x014991ec771ad943a487784ced965af214fd253c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x19621d19b40c978a479bd35afb3740f90b7b0fe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x1eef85b09c8bc5e58a9ed81ff6b2e1420747857d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x221d352eb75fcd1f04d83cb749deac5a6b4c9176` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x31827345dd4ac71fadb2527ea30a2b8f2c903cee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x48b6b9bd79a95fc65fc2c5c7fac68f4a64e425e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x4b9952e818265bfef67eb5e850bca3c914ee42ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x5a926eddd0dedd6c1556072ef19d58c4f4de9178` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x5e9fed51e6794da1603863dbc5d569d815a32ed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xaba45add07a976e674741b9c076ffcea5a061e16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xaf69c096f7e593987e0f4b0a3c3499ec8e96ef0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xbac1e5a0b14490dd0b32fe769eb5637183d8655d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xd01dc0711a7de394bec97dccaa41d7960dfd33ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xd3a720df8d2eb5b90a77d16b699e7085a3a27627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xd773ffa79258f2d7458f1b74d075f4524ee3cca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xdbd4a3d29316f4970165cc24442f22dd3802130c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xe103f824ed300053976bf810db824a8057914d87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xfd01946c35c98d71a355b8ff18d9e1697b2dd2ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-388325 | `0xbc71484f579564b380dc5580f6465dba076858c7` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 54
- Live contracts: 0
- Unknown liveness contracts: 54
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=54

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x176950054c5b691dc7b2698194a229a6861e7d7e` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x17fec0dd2c6bc438fd65a1d2c53319bea130befb` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x1eef85b09c8bc5e58a9ed81ff6b2e1420747857d` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x2eea2412f047d6ffacac38db72401fb9ddf25250` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x327b2a4ea70f92d55648c1acc9bf404ca0454cf9` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x407fe95a8b7e725eb6e486a2629a1ee3232be262` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x5293c40883167c7c6f42e85eba94f92cb71fa545` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x544449e4ee629e92bf222cd4bb1eca172b1720d8` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x5a2b8d77d987b6458c065e139672aecee9b64dbd` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x5fb40ba112a59c7f18953733998b1a2b5fc79a17` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x62e84cdbe8470aa66317afe010c19da55c632fca` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x68d9baa40394da2e2c1ca05d30bf33f52823ee7b` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x74eb60281ce12e4d09cfc4cd5d64248908e293e4` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x7b6c3cc4312da404cc205bd2320436a09af159e3` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x7d6c8f28ab2d6569adec790305a97b27bb17edc5` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x8370e8a18b46229e11c01c9762780e06f24cebd4` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x843e777117919841ca1bdf684c7bfb39773c7fdf` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x8903dc1f4736d2fcb90c1497aebbaba133daac76` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x968d00c4b188db962250c1876204870487a514dd` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x99eb30fd397659d49ec8d2efd843801b4bc0ae1f` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xaccbe990b60e26adfde05272f8a8c6e6e910907f` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xb4f51362d9681469c7565d7e9445cb8ef4e4d98b` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xc18f849f73cd7c41bc1b0e5bafe816ae700fb92d` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xc73e981ac7d0566349909dc155cb88aaeee7f4ec` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xcd742ebaf21d9ed4e721f55d336ad1bd217938ab` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xcf0bc6fc897195683315cd38454e933e9e21eaec` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xd0edfe9df9505cc1bd7bf4cd0e2417e22c5015f8` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xd773ffa79258f2d7458f1b74d075f4524ee3cca0` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xdf34a9e2c79734d19000635ff854152d5b3b79d7` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xe0266aef68eba19b22b6cc04d09d2cc572b1628e` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xe3c7a70a976060681700f3eed10a50e603ff4251` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xe85d531733fae6e8170a1c90f3675b02b7d6390f` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xec882c302b34007cbf53512e18951ec9c386eae6` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xecf3e0f3c1cbc385e895f9c8d4f09fd5a9960ffd` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xfcfe3cd0cc6ba5cf354b396e045721de7a009882` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x001c6f3944b327f15f509dc3172330576a5908b8` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x014991ec771ad943a487784ced965af214fd253c` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x19621d19b40c978a479bd35afb3740f90b7b0fe4` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x1eef85b09c8bc5e58a9ed81ff6b2e1420747857d` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x221d352eb75fcd1f04d83cb749deac5a6b4c9176` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x31827345dd4ac71fadb2527ea30a2b8f2c903cee` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x48b6b9bd79a95fc65fc2c5c7fac68f4a64e425e9` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x4b9952e818265bfef67eb5e850bca3c914ee42ed` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x5a926eddd0dedd6c1556072ef19d58c4f4de9178` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0x5e9fed51e6794da1603863dbc5d569d815a32ed8` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xaba45add07a976e674741b9c076ffcea5a061e16` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xaf69c096f7e593987e0f4b0a3c3499ec8e96ef0a` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xbac1e5a0b14490dd0b32fe769eb5637183d8655d` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xd01dc0711a7de394bec97dccaa41d7960dfd33ee` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xd3a720df8d2eb5b90a77d16b699e7085a3a27627` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xd773ffa79258f2d7458f1b74d075f4524ee3cca0` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xdbd4a3d29316f4970165cc24442f22dd3802130c` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xe103f824ed300053976bf810db824a8057914d87` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |
| unverified unclassified | UnnamedContract<br>`0xfd01946c35c98d71a355b8ff18d9e1697b2dd2ea` | non_address_book | unknown | unknown | unverified | n/a | `0x7a10033fb8f474f28c66cab7578f4af9e6dad37d` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [655cfb6b72ce872795f652d3_yAudit_KEOM_upgrade_report.pdf](https://uploads-ssl.webflow.com/64ef0efc368836241c571f09/655cfb6b72ce872795f652d3_yAudit_KEOM_upgrade_report.pdf) | yAudit | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13335] 655cfb6b72ce872795f652d3_yAudit_KEOM_upgrade_report.pdf — no match: Scope mentions two PRs (PR 60 and PR 62) but does not list specific contract files. Contract names extracted from findings: Comptroller and OToken. Audit date from review period: August 16-17, 2023.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 655cfb6b72ce872795f652d3_yAudit_KEOM_upgrade_report.pdf | Comptroller | ambiguous — not counted | Comptroller (alternative) `0xbd5cd926eb73b48905091fff9996bba832feac71` — deployed 2023-11-01 18:23:59+03 — liveness: live (current_address_book_code)<br>Comptroller (alternative) `0xc145700ac0d8a59b1f64dce35687dd7ca2beb26a` — deployed 2023-11-09 12:00:19+03 — liveness: live (current_address_book_code)<br>Comptroller (alternative) `0x91e9e99ac7c39d5c057f83ef44136dfb1e7add7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 655cfb6b72ce872795f652d3_yAudit_KEOM_upgrade_report.pdf | OToken | unmatched — not counted | — | mentioned in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 103 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [13335] 655cfb6b72ce872795f652d3_yAudit_KEOM_upgrade_report.pdf

Fork inheritance lineage and inherited audits are included when available.
