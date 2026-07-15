# Agentic Audit Brief: Inception

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 11 (3 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Inception (`inception`)
- Website: [https://www.inceptionlrt.com/](https://www.inceptionlrt.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, blast, bsc, ethereum, fraxtal, linea, mode, optimism, optimism-sepolia
- Contract surface: 104 unique implementations (104 raw deployments)
- Coverage basis: 2/16 confirmed own live verified implementations (12.5%); conservative 12.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,411,204.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Inception. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across arbitrum, arbitrum-sepolia, base, blast, bsc, ethereum, fraxtal, linea, mode, optimism, optimism-sepolia, sepolia. Structural roles: 10 core, 4 supporting, 1 infra, 1 unclassified. 12 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: core (10), supporting (4), infra (1), unclassified (1)
- Contract kinds: contract (16)
- Detected standards: ownable (9), erc20 (8), erc20permit (8), erc1967proxy (1), pausable (1)
- Frameworks: openzeppelin (13), openzeppelin-upgradeable (10), solmate (10)
- Upgradeable-pattern rows: 12

## Fork Analysis

0 of 94 contracts are derived from known codebases. 94 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x016e07...da2a5f`, chain 1)
- UnnamedContract (`0x07f869...c13b1e`, chain 1)
- UnnamedContract (`0x11e880...d5d3f3`, chain 1)
- UnnamedContract (`0x12181a...c6a07f`, chain 1)
- UnnamedContract (`0x1aa53b...d59f12`, chain 1)
- UnnamedContract (`0x1f2784...bffe8c`, chain 1)
- UnnamedContract (`0x20f6d8...f09c36`, chain 1)
- UnnamedContract (`0x295234...151161`, chain 1)
- UnnamedContract (`0x34241c...053c17`, chain 1)
- UnnamedContract (`0x343281...d5de39`, chain 1)
- UnnamedContract (`0x36b429...815e55`, chain 1)
- UnnamedContract (`0x46199c...15831a`, chain 1)
- UnnamedContract (`0x4878f6...f86bed`, chain 1)
- UnnamedContract (`0x50253d...4e3e4c`, chain 1)
- UnnamedContract (`0x57a5a0...5878f2`, chain 1)
- UnnamedContract (`0x5a7a18...b1d76d`, chain 1)
- UnnamedContract (`0x668308...f8041c`, chain 1)
- UnnamedContract (`0x69c59c...050eb1`, chain 1)
- UnnamedContract (`0x6e17a8...d93322`, chain 1)
- UnnamedContract (`0x74d198...3adadd`, chain 1)
- UnnamedContract (`0x7fa768...41cad5`, chain 1)
- UnnamedContract (`0x80d69e...8802e2`, chain 1)
- UnnamedContract (`0x814cc6...977d8d`, chain 1)
- UnnamedContract (`0x8bc731...174ddb`, chain 1)
- UnnamedContract (`0x8e0789...f6d552`, chain 1)
- UnnamedContract (`0x90e80e...9023c2`, chain 1)
- UnnamedContract (`0x9181f6...3e0e92`, chain 1)
- UnnamedContract (`0x94b888...7ca62e`, chain 1)
- UnnamedContract (`0x9efde4...bdbfe7`, chain 1)
- UnnamedContract (`0xa1bb72...3f7a45`, chain 1)
- UnnamedContract (`0xa22a7a...d57707`, chain 1)
- UnnamedContract (`0xa8211b...b360ae`, chain 1)
- UnnamedContract (`0xa9f8c7...c780ff`, chain 1)
- UnnamedContract (`0xae48b9...ceb632`, chain 1)
- UnnamedContract (`0xbd6000...a3b38b`, chain 1)
- UnnamedContract (`0xbf19ee...e8ab2e`, chain 1)
- UnnamedContract (`0xc00cd5...83b3ac`, chain 1)
- UnnamedContract (`0xc06609...e9a2b6`, chain 1)
- UnnamedContract (`0xc29783...406619`, chain 1)
- UnnamedContract (`0xc3ade5...bd6a9d`, chain 1)
- UnnamedContract (`0xc4181d...95321c`, chain 1)
- UnnamedContract (`0xc6cc13...778db4`, chain 1)
- UnnamedContract (`0xc73737...a31d18`, chain 1)
- UnnamedContract (`0xc88b97...0e391c`, chain 1)
- UnnamedContract (`0xd0ee89...426355`, chain 1)
- UnnamedContract (`0xd49641...85f529`, chain 1)
- UnnamedContract (`0xd6d553...1e9f66`, chain 1)
- UnnamedContract (`0xd812ba...2ba2fc`, chain 1)
- UnnamedContract (`0xd8554b...9162c2`, chain 1)
- UnnamedContract (`0xda9b11...8c5246`, chain 1)
- UnnamedContract (`0xebfa03...d1e721`, chain 1)
- UnnamedContract (`0xecf367...f6fbf9`, chain 1)
- UnnamedContract (`0xefaf12...49c2ba`, chain 1)
- UnnamedContract (`0xf07052...8641f9`, chain 1)
- UnnamedContract (`0xf073ba...10525c`, chain 1)
- UnnamedContract (`0xf21014...fb1e12`, chain 1)
- UnnamedContract (`0xf3207c...0fd59f`, chain 1)
- UnnamedContract (`0xf9d9f8...f5ec97`, chain 1)
- UnnamedContract (`0xfa2629...4d8b9d`, chain 1)
- UnnamedContract (`0xfd07fd...494336`, chain 1)
- UnnamedContract (`0xfe7153...735d5e`, chain 1)
- UnnamedContract (`0x3059a3...1d5519`, chain 56)
- UnnamedContract (`0x5a32d4...a8064a`, chain 56)
- UnnamedContract (`0x157743...450d41`, chain 252)
- UnnamedContract (`0xc00cd5...83b3ac`, chain 252)
- UnnamedContract (`0xc06609...e9a2b6`, chain 252)
- UnnamedContract (`0xda9b11...8c5246`, chain 252)
- UnnamedContract (`0xe16207...3bbaa4`, chain 252)
- UnnamedContract (`0xb65593...4c944e`, chain 8453)
- UnnamedContract (`0x5a32d4...a8064a`, chain 34443)
- UnnamedContract (`0x57a5a0...5878f2`, chain 42161)
- UnnamedContract (`0x971b35...9efe1a`, chain 42161)
- UnnamedContract (`0xc00cd5...83b3ac`, chain 42161)
- UnnamedContract (`0x5a32d4...a8064a`, chain 59144)
- UnnamedContract (`0xa365fb...864266`, chain 59144)
- UnnamedContract (`0xbf4730...222e84`, chain 59144)
- UnnamedContract (`0xc00cd5...83b3ac`, chain 59144)
- UnnamedContract (`0xc00cd5...83b3ac`, chain 81457)
- UnnamedContract (`0xc06609...e9a2b6`, chain 81457)
- InceptionBridge (`0xc00cd5...83b3ac`, chain 34443)
- InceptionToken (`0x1aee5e...7649e2`, chain 1)
- InitializableTransparentUpgradeableProxy (`0xc00cd5...83b3ac`, chain 10)
- InitializableTransparentUpgradeableProxy (`0xb2b446...6c5878`, chain 56)
- InitializableTransparentUpgradeableProxy (`0xc00cd5...83b3ac`, chain 56)
- InitializableTransparentUpgradeableProxy (`0xc00cd5...83b3ac`, chain 8453)
- XERC20 (`0x5a7a18...b1d76d`, chain 10)
- XERC20 (`0xd08c3f...9a4959`, chain 10)
- XERC20 (`0x5a7a18...b1d76d`, chain 56)
- XERC20 (`0x5a7a18...b1d76d`, chain 34443)
- XERC20 (`0x5a7a18...b1d76d`, chain 42161)
- XERC20 (`0xd08c3f...9a4959`, chain 42161)
- XERC20 (`0x5a7a18...b1d76d`, chain 59144)
- XERC20 (`0xd08c3f...9a4959`, chain 59144)
- XERC20 (`0x5a7a18...b1d76d`, chain 81457)

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 95/106 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/16 (12.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 95 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 8 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Deployed-live implementations: 95 of 104 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/16
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 79
- Unique implementations: 104
- Raw deployments: 104
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 6.3% | 2024-10 |
| Oxorio | Tier 2 | 1 | 6.3% | 2025-03 |
| Veridise | Tier 2 | 1 | 6.3% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| InceptionBridge | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-242550 | `0xc00cd5...83b3ac` | ✅ Audited |
| InceptionToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-242573 | `0x1aee5e...7649e2` | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| InceptionBridge | operational_periphery | project_anchor | own_supporting | 1 | optimism | unit-242574 | `0xc00cd5...83b3ac` | ⚠️ Unaudited |
| InceptionBridge | operational_periphery | project_anchor | own_supporting | 1 | bsc | unit-242575 | `0xc00cd5...83b3ac` | ⚠️ Unaudited |
| InceptionBridge | operational_periphery | project_anchor | own_supporting | 1 | base | unit-242577 | `0xc00cd5...83b3ac` | ⚠️ Unaudited |
| InETHRateProvider | unknown | project_anchor | own_supporting | 0 | mode | unit-242549 | `0x971b35...9efe1a` | ⚠️ Unaudited |
| XERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-242535 | `0x5a7a18...b1d76d` | ⚠️ Unaudited |
| XERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-242537 | `0xd08c3f...9a4959` | ⚠️ Unaudited |
| XERC20 | token | project_anchor | own_supporting | 0 | bsc | unit-242561 | `0x5a7a18...b1d76d` | ⚠️ Unaudited |
| XERC20 | token | project_anchor | own_supporting | 1 | bsc | unit-242576 | `0xb2b446...6c5878` | ⚠️ Unaudited |
| XERC20 | token | project_anchor | own_supporting | 0 | mode | unit-242548 | `0x5a7a18...b1d76d` | ⚠️ Unaudited |
| XERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-242553 | `0x5a7a18...b1d76d` | ⚠️ Unaudited |
| XERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-242557 | `0xd08c3f...9a4959` | ⚠️ Unaudited |
| XERC20 | token | project_anchor | own_supporting | 0 | linea | unit-242564 | `0x5a7a18...b1d76d` | ⚠️ Unaudited |
| XERC20 | token | project_anchor | own_supporting | 0 | linea | unit-242568 | `0xd08c3f...9a4959` | ⚠️ Unaudited |
| XERC20 | token | project_anchor | own_supporting | 0 | blast | unit-242569 | `0x5a7a18...b1d76d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (88)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242472 | `0x016e07...da2a5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242473 | `0x07f869...c13b1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242474 | `0x11e880...d5d3f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242475 | `0x12181a...c6a07f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242476 | `0x1aa53b...d59f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242477 | `0x1f2784...bffe8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242478 | `0x20f6d8...f09c36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242479 | `0x295234...151161` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242480 | `0x34241c...053c17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242481 | `0x343281...d5de39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242482 | `0x36b429...815e55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242483 | `0x46199c...15831a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242484 | `0x4878f6...f86bed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242485 | `0x50253d...4e3e4c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242486 | `0x57a5a0...5878f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242487 | `0x5a7a18...b1d76d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242488 | `0x668308...f8041c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242489 | `0x69c59c...050eb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242490 | `0x6e17a8...d93322` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242491 | `0x74d198...3adadd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242493 | `0x7fa768...41cad5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242494 | `0x80d69e...8802e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242495 | `0x814cc6...977d8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242496 | `0x8bc731...174ddb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242497 | `0x8e0789...f6d552` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242498 | `0x90e80e...9023c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242499 | `0x9181f6...3e0e92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242500 | `0x94b888...7ca62e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242501 | `0x9efde4...bdbfe7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242502 | `0xa1bb72...3f7a45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242503 | `0xa22a7a...d57707` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242504 | `0xa8211b...b360ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242505 | `0xa9f8c7...c780ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242506 | `0xae48b9...ceb632` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242507 | `0xbd6000...a3b38b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242508 | `0xbf19ee...e8ab2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242509 | `0xc00cd5...83b3ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242510 | `0xc06609...e9a2b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242511 | `0xc29783...406619` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242512 | `0xc3ade5...bd6a9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242513 | `0xc4181d...95321c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242514 | `0xc6cc13...778db4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242515 | `0xc73737...a31d18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242516 | `0xc88b97...0e391c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242518 | `0xd0ee89...426355` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242519 | `0xd49641...85f529` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242520 | `0xd6d553...1e9f66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242521 | `0xd812ba...2ba2fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242522 | `0xd8554b...9162c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242523 | `0xda9b11...8c5246` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242524 | `0xebfa03...d1e721` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242525 | `0xecf367...f6fbf9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242526 | `0xefaf12...49c2ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242527 | `0xf07052...8641f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242528 | `0xf073ba...10525c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242529 | `0xf21014...fb1e12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242530 | `0xf3207c...0fd59f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242531 | `0xf9d9f8...f5ec97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242532 | `0xfa2629...4d8b9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242533 | `0xfd07fd...494336` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242534 | `0xfe7153...735d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x983c22...1b2630` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-242559 | `0x3059a3...1d5519` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-242560 | `0x5a32d4...a8064a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x983c22...1b2630` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfea428...8b0415` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-242542 | `0x157743...450d41` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-242543 | `0xc00cd5...83b3ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-242544 | `0xc06609...e9a2b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-242545 | `0xda9b11...8c5246` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-242546 | `0xe16207...3bbaa4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-242572 | `0xb65593...4c944e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-242547 | `0x5a32d4...a8064a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242552 | `0x57a5a0...5878f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242554 | `0x971b35...9efe1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x983c22...1b2630` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242556 | `0xc00cd5...83b3ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcdea80...f2dc8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242563 | `0x5a32d4...a8064a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5d9447...f80a46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242565 | `0xa365fb...864266` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242566 | `0xbf4730...222e84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242567 | `0xc00cd5...83b3ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcdea80...f2dc8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x983c22...1b2630` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242570 | `0xc00cd5...83b3ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242571 | `0xc06609...e9a2b6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-242541 | `0x983c22...1b2630` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [InceptionV1_Veridise.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/InceptionV1_Veridise.pdf) | Halborn | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [InceptionV2_Halborn.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/InceptionV2_Halborn.pdf) | Halborn | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Inception_MellowV2_Symbiotic_Oxorio.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/Inception_MellowV2_Symbiotic_Oxorio.pdf) | Oxorio | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 30 | high |
| [VAR_inception_250210_smart_contracts_V3.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/VAR_inception_250210_smart_contracts_V3.pdf) | Veridise | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 7 | high |
| [InceptionBridge_Halborn.pdf](https://github.com/inceptionlrt/bridge/blob/master/audits/InceptionBridge_Halborn.pdf) | Halborn | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [InceptionBridge_Veridise.pdf](https://github.com/inceptionlrt/bridge/blob/master/audits/InceptionBridge_Veridise.pdf) | Veridise | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Inception_DiamondProxy_SymbioticVault_Halborn.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/Inception_DiamondProxy_SymbioticVault_Halborn.pdf) | Halborn | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Inception_FlashWithdrawal_Halborn.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/Inception_FlashWithdrawal_Halborn.pdf) | Halborn | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [VAR_GenesisLRT_231221-V1.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/VAR_GenesisLRT_231221-V1.pdf) | VAR | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Salus_final_report.pdf](https://github.com/AmphorProtocol/synthetic-vault/blob/main/audits/Salus_final_report.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Bailsec_final_report.pdf](https://github.com/AmphorProtocol/synthetic-vault/blob/main/audits/Bailsec_final_report.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2400] InceptionV1_Veridise.pdf — no match: Scope defined as 'contracts folder' with main contracts InceptionVault, EigenLayerHandler, InceptionAssetsHandler, and interface IInceptionAssetHandler.
- [2401] InceptionV2_Halborn.pdf — no match: Scope section lists contracts/Inception/vaults/InceptionVault.sol, contracts/Inception/eigenlayer-handler, contracts/Inception/restaker, and contracts/interfaces/*. Interfaces are not extracted as they are generic. The audit date is the end date of the engagement: May 1st, 2024.
- [2402] Inception_MellowV2_Symbiotic_Oxorio.pdf — matched: Extracted 32 contract names from the audited files table and findings breakdown. Audit date from cover page and timeline.
- [2403] VAR_inception_250210_smart_contracts_V3.pdf — matched: Extracted from scope section (Section 3.2) and file paths. AdapterHandler is out-of-scope but included as it is referenced in findings.
- [2404] InceptionBridge_Halborn.pdf — matched: Scope section explicitly lists 5 contracts in scope. Audit date is the end date of the engagement (April 29, 2024).
- [2405] InceptionBridge_Veridise.pdf — no match: Two contracts in scope: InceptionBridge and InceptionBridgeStorage. Audit date from cover page: May 20, 2024.
- [2406] Inception_DiamondProxy_SymbioticVault_Halborn.pdf — no match: Scope section lists 4 files. InceptionVault_EL is the EigenLayer diamond proxy contract. Audit date is end of engagement period (October 25, 2024).
- [2407] Inception_FlashWithdrawal_Halborn.pdf — no match: Scope section explicitly lists two files: InceptionLibrary.sol and InceptionVault.sol. Audit date is the end date of engagement: June 27th, 2024.
- [2408] VAR_GenesisLRT_231221-V1.pdf — no match: Scope explicitly defined as projects/liquid-restaking/contracts (excluding libraries sub-folder). All contracts mentioned in findings are within that folder.
- [15428] Salus_final_report.pdf — no match: Two contracts in scope from Appendix 1. Audit date from Project Dashboard: Date Oct312023.
- [15429] Bailsec_final_report.pdf — no match: The report covers a single contract, AmphorSyntheticVault, as the audit target. The date is derived from 'November 2023 (addition)' and the report title 'September 2023 November 2023 (addition)', indicating the audit period ended in November 2023. Using the last day of the month for November 2023.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| InceptionV1_Veridise.pdf | InceptionVault | unmatched — not counted | — | listed in scope and findings | no |
| InceptionV1_Veridise.pdf | EigenLayerHandler | unmatched — not counted | — | listed in findings | no |
| InceptionV1_Veridise.pdf | InceptionAssetsHandler | unmatched — not counted | — | listed in findings | no |
| InceptionV1_Veridise.pdf | IInceptionAssetHandler | unmatched — not counted | — | mentioned in finding V-INCP-VUL-013 | no |
| InceptionV2_Halborn.pdf | InceptionVault | unmatched — not counted | — | listed in scope | no |
| InceptionV2_Halborn.pdf | EigenLayerHandler | unmatched — not counted | — | listed in scope as directory | no |
| InceptionV2_Halborn.pdf | InceptionRestaker | unmatched — not counted | — | listed in scope as directory | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | InceptionAssetsHandler | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IInceptionRatioFeed | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IInceptionToken | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IInceptionVaultErrors | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IOwnable | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IRateProvider | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IrEth | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IStEth | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IIMellowRestaker | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IInceptionVault_S | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IMellowHandler | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IDefaultBondStrategy | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IMellowDefaultCollateral | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IMellowDepositWrapper | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IMellowPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IMellowRatiosOracle | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IMellowVault | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IMellowVaultConfigurator | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | ISymbioticVault | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | Convert | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | FullMath | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | InceptionLibrary | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | MellowHandler | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IMellowRestaker | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | InceptionToken | own proxy deployment | InceptionToken (proxy) (selected) `0x1aee5e...7649e2` — deployed 2024-10-04 15:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | InceptionVault_S | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | InVault_S_E2 | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | ISymbioticRestaker | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | SymbioticHandler | unmatched — not counted | — | listed in findings breakdown by file | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IBaseRestaker | unmatched — not counted | — | listed in findings breakdown by file | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | InceptionBasicStrategyVault | unmatched — not counted | — | listed in findings breakdown by file | no |
| VAR_inception_250210_smart_contracts_V3.pdf | InceptionVault_S | unmatched — not counted | — | listed in scope | no |
| VAR_inception_250210_smart_contracts_V3.pdf | InceptionEigenAdapterWrap | unmatched — not counted | — | listed in scope (file InceptionEigenAdapter.sol) | no |
| VAR_inception_250210_smart_contracts_V3.pdf | IMellowAdapter | unmatched — not counted | — | listed in scope | no |
| VAR_inception_250210_smart_contracts_V3.pdf | ISymbioticAdapter | unmatched — not counted | — | listed in scope | no |
| VAR_inception_250210_smart_contracts_V3.pdf | InceptionToken | own proxy deployment | InceptionToken (proxy) (selected) `0x1aee5e...7649e2` — deployed 2024-10-04 15:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR_inception_250210_smart_contracts_V3.pdf | InVault_S_E2 | unmatched — not counted | — | listed in scope | no |
| VAR_inception_250210_smart_contracts_V3.pdf | InceptionLibrary | unmatched — not counted | — | listed in scope | no |
| VAR_inception_250210_smart_contracts_V3.pdf | AdapterHandler | unmatched — not counted | — | mentioned as out-of-scope but referenced in findings | no |
| InceptionBridge_Halborn.pdf | InceptionBridge | own contract | InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xc00cd5...83b3ac` — deployed 2024-05-22 17:01:53+03 — liveness: live (current_address_book_code)<br>InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xc00cd5...83b3ac` — deployed 2024-10-10 13:48:33+03 — liveness: live (current_address_book_code)<br>InceptionBridge (selected) `0xc00cd5...83b3ac` — deployed 2024-04-30 11:47:35+03 — liveness: live (current_address_book_code)<br>InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xc00cd5...83b3ac` — deployed 2024-05-23 13:28:55+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-04-30 was 1d from audit; next candidate 23d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| InceptionBridge_Halborn.pdf | XERC20 | ambiguous — not counted | XERC20 (alternative) `0xd08c3f...9a4959` — deployed 2024-05-24 18:20:52+03 — liveness: live (current_address_book_code)<br>XERC20 (alternative) `0x5a7a18...b1d76d` — deployed 2024-05-23 13:30:13+03 — liveness: live (current_address_book_code)<br>XERC20 (alternative) `0x5a7a18...b1d76d` — deployed 2024-05-15 17:58:13+03 — liveness: live (current_address_book_code)<br>XERC20 (alternative) `0xd08c3f...9a4959` — deployed 2024-05-24 18:11:48+03 — liveness: live (current_address_book_code)<br>XERC20 (alternative) `0xd08c3f...9a4959` — deployed 2024-05-24 18:31:23+03 — liveness: live (current_address_book_code)<br>InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xb2b446...6c5878` — deployed 2024-10-17 18:28:34+03 — liveness: live (current_address_book_code)<br>XERC20 (alternative) `0x5a7a18...b1d76d` — deployed 2024-05-23 14:04:29+03 — liveness: live (current_address_book_code)<br>XERC20 (alternative) `0x5a7a18...b1d76d` — deployed 2024-04-30 11:57:21+03 — liveness: live (current_address_book_code)<br>XERC20 (alternative) `0x5a7a18...b1d76d` — deployed 2024-05-22 17:11:17+03 — liveness: live (current_address_book_code)<br>XERC20 (alternative) `0x5a7a18...b1d76d` — deployed 2024-04-30 11:51:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| InceptionBridge_Halborn.pdf | XERC20Lockbox | unmatched — not counted | — | listed in scope | no |
| InceptionBridge_Halborn.pdf | BridgeFactory | unmatched — not counted | — | listed in scope | no |
| InceptionBridge_Halborn.pdf | InitializableTransparentUpgradeableProxy | ambiguous — not counted | InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xc00cd5...83b3ac` — deployed 2024-05-22 17:01:53+03 — liveness: live (current_address_book_code)<br>InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xb2b446...6c5878` — deployed 2024-10-17 18:28:34+03 — liveness: live (current_address_book_code)<br>InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xc00cd5...83b3ac` — deployed 2024-10-10 13:48:33+03 — liveness: live (current_address_book_code)<br>InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xc00cd5...83b3ac` — deployed 2024-05-23 13:28:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| InceptionBridge_Veridise.pdf | InceptionBridge | ambiguous — not counted | InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xc00cd5...83b3ac` — deployed 2024-05-22 17:01:53+03 — liveness: live (current_address_book_code)<br>InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xc00cd5...83b3ac` — deployed 2024-10-10 13:48:33+03 — liveness: live (current_address_book_code)<br>InceptionBridge (alternative) `0xc00cd5...83b3ac` — deployed 2024-04-30 11:47:35+03 — liveness: live (current_address_book_code)<br>InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xc00cd5...83b3ac` — deployed 2024-05-23 13:28:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| InceptionBridge_Veridise.pdf | InceptionBridgeStorage | unmatched — not counted | — | listed in scope section 3.2 | no |
| Inception_DiamondProxy_SymbioticVault_Halborn.pdf | InceptionVault_S | unmatched — not counted | — | listed in scope | no |
| Inception_DiamondProxy_SymbioticVault_Halborn.pdf | IMellowRestaker | unmatched — not counted | — | listed in scope | no |
| Inception_DiamondProxy_SymbioticVault_Halborn.pdf | MellowHandler | unmatched — not counted | — | listed in scope | no |
| Inception_DiamondProxy_SymbioticVault_Halborn.pdf | InceptionVault_EL | unmatched — not counted | — | listed in scope as 'vaults/EigenLayer (Diamond Proxy)' | no |
| Inception_FlashWithdrawal_Halborn.pdf | InceptionLibrary | unmatched — not counted | — | listed in scope | no |
| Inception_FlashWithdrawal_Halborn.pdf | InceptionVault | unmatched — not counted | — | listed in scope | no |
| VAR_GenesisLRT_231221-V1.pdf | RestakingPool | unmatched — not counted | — | Listed in scope folder projects/liquid-restaking/contracts (excluding libraries sub-folder) and mentioned in findings. | no |
| VAR_GenesisLRT_231221-V1.pdf | RatioFeed | unmatched — not counted | — | Listed in scope folder and mentioned in findings. | no |
| VAR_GenesisLRT_231221-V1.pdf | ProtocolConfig | unmatched — not counted | — | Listed in scope folder and mentioned in findings. | no |
| VAR_GenesisLRT_231221-V1.pdf | RestakerDeployer | unmatched — not counted | — | Listed in scope folder and mentioned in findings. | no |
| VAR_GenesisLRT_231221-V1.pdf | Restaker | unmatched — not counted | — | Listed in scope folder and mentioned in findings. | no |
| VAR_GenesisLRT_231221-V1.pdf | cToken | unmatched — not counted | — | Listed in scope folder and mentioned in findings. | no |
| VAR_GenesisLRT_231221-V1.pdf | RestakerFacet | unmatched — not counted | — | Listed in scope folder and mentioned in findings. | no |
| Salus_final_report.pdf | AmphorSyntheticVault | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus_final_report.pdf | AmphorSyntheticVaultWithPermit | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Bailsec_final_report.pdf | AmphorSyntheticVault | unmatched — not counted | — | The report states 'This audit delves into a distinctive vault contract' and repeatedly refers to 'AmphorSyntheticVault.sol' and 'AmphorSyntheticVault' as the audited contract. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0xc00cd5...83b3ac` | InceptionBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc00cd5...83b3ac` | InceptionBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc00cd5...83b3ac` | InceptionBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x971b35...9efe1a` | InETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5a7a18...b1d76d` | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd08c3f...9a4959` | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5a7a18...b1d76d` | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xb2b446...6c5878` | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x5a7a18...b1d76d` | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5a7a18...b1d76d` | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd08c3f...9a4959` | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x5a7a18...b1d76d` | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xd08c3f...9a4959` | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x5a7a18...b1d76d` | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 88 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 63 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=11
- Match method counts: temporal_name=1, unique_name=2

Zero-match audit list:

- [2400] InceptionV1_Veridise.pdf
- [2401] InceptionV2_Halborn.pdf
- [2405] InceptionBridge_Veridise.pdf
- [2406] Inception_DiamondProxy_SymbioticVault_Halborn.pdf
- [2407] Inception_FlashWithdrawal_Halborn.pdf
- [2408] VAR_GenesisLRT_231221-V1.pdf
- [15428] Salus_final_report.pdf
- [15429] Bailsec_final_report.pdf

Fork inheritance lineage and inherited audits are included when available.
