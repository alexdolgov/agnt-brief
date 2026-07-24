# Agentic Audit Brief: Yuzu Money

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 3 audit(s)
- Eligible audit results: 6 (3 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Yuzu Money (`yuzu-money`)
- Website: [https://app.yuzu.money](https://app.yuzu.money)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, hyperliquid, monad, pharos, plasma
- Contract surface: 87 unique implementations (94 raw deployments)
- Coverage basis: 3/3 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $55,226,801.02
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Yuzu Money. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across ethereum, hyperliquid, monad, pharos, plasma. Structural roles: 5 unclassified, 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: unclassified (5), core (1)
- Contract kinds: contract (6)
- Detected standards: erc20 (1), erc20permit (1), erc4626 (1), ownable (1), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 14 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x387167e5c088468906bcd67c06746409a8e44aba`, chain 1)
- UnnamedContract (`0x6dff69eb720986e98bb3e8b26cb9e02ec1a35d12`, chain 1)
- UnnamedContract (`0xb2429ba2cfa6387c9a336da127d34480c069f851`, chain 1)
- UnnamedContract (`0x484be0540ad49f351eaa04eeb35df0f937d4e73f`, chain 143)
- UnnamedContract (`0xb37476cb1f6111cc682b107b747b8652f90b0984`, chain 143)
- UnnamedContract (`0xc9ea90692757831d98ac629f2a0140e02b80a7da`, chain 143)
- UnnamedContract (`0x34c07f50c4f55b322e85deeb265d278e6af112e4`, chain 999)
- UnnamedContract (`0x8cbafe7847606ff9ac5eb5e8dd54e5459e8dcc51`, chain 999)
- UnnamedContract (`0xf72ce39998d2075f6661cf4214cffe3cf38da72f`, chain 999)
- UnnamedContract (`0x54df79d8edf36d15cd83fbedbdd90807fc828934`, chain 1672)
- UnnamedContract (`0x0cddd7515586550f16dec1732e0386109e1859e8`, chain 9745)
- UnnamedContract (`0x57b2690bdee4740bcf40a9b52e7e5b8877bac5e5`, chain 9745)
- UnnamedContract (`0x9dcb0d17edde04d27f387c89fecb78654c373858`, chain 9745)
- StakedYuzuUSDV2 (`0xa3982582016375a0b25cb7d572379d3d49e5e9c8`, chain 9745)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/3 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 71 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Confirmed-live implementations: 16 of 87 unique; 71 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/11
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 76
- Unique implementations: 87
- Raw deployments: 94
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 6 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 3 | 27.3% | 2026-01 |
| Dedaub | Tier 2 | 2 | 18.2% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| StakedYuzuUSDV2 | unknown | project_anchor | own_supporting | 1 | plasma | unit-398369 | 2 deployments: plasma `0xa3982582016375a0b25cb7d572379d3d49e5e9c8`; plasma `0xc8a8df9b210243c55d31c73090f06787ad0a1bf6` | ✅ Audited |
| YuzuILPV2 | unknown | project_anchor | own_supporting | 1 | plasma | unit-398367 | 2 deployments: plasma `0x326839f792ba2ccf98a3ac28bb7de551539309bc`; plasma `0xebfc8c2fe73c431ef2a371aea9132110aab50dca` | ✅ Audited |
| YuzuUSDV2 | unknown | project_anchor | own_supporting | 1 | plasma | unit-398368 | 2 deployments: plasma `0x32d7d5bf842d6ae28c9dd4fac4c6662cf9bf5cfe`; plasma `0x6695c0f8706c5ace3bdf8995073179cca47926dc` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x44f6e9b5c0fef82158dc98282078068b9bfb7e71` | ⚠️ Unaudited |
| PSM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x2aa939b5c9cef10c170ad38c4b05a45f27199dea`; plasma `0x933069e8fc9502762fcceb3a28804a28b4c863b2` | ⚠️ Unaudited |
| PSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x7000b862257566245d8b28e905ae53cfb7957544` | ⚠️ Unaudited |
| StakedYuzuUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x3fdd8e2d2e9170a00f5406089720dae39cd9e589`; plasma `0xb14e7d488371d22d39aff1b0c0f07ed2b532160f` | ⚠️ Unaudited |
| StakedYuzuUSDV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x926b292f3b0fa2af6e6561c2bca28f0625130ec8` | ⚠️ Unaudited |
| TokenizedVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0x517677a19d8ae6ff600fb86c3c7bfccd651e3eec` | ⚠️ Unaudited |
| YuzuILP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x7e8bc59b4126415c86c9bf1f8cb277b9d9249281`; plasma `0xa5913fc4828f2750d24856e6b7bea3c16bb51531` | ⚠️ Unaudited |
| YuzuUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x8e6026ac788415d03f38a46008a2a75d7c9cc340`; plasma `0x90b1bc26e1ac873fc5043a9f658443daab674d85` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (76)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x056cde388223065ba0688c333c03723b80f31cbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f684d68cf284e2b0ce18da95d81dde038977f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10fed041988fba386fa69865b8eec992523424ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12f2757fd4a4e13079d2007cf8c60965ebba5e81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x166842e41cc6b5f50fad05199cff90f8ea58f824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2582c8a5b270d1b0ce83c89e2591d239ac836aa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28b0df44901e39f62b113422a0de021374aed0c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398354 | `0x387167e5c088468906bcd67c06746409a8e44aba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b28df50582f7a96efd89cb3737fd8a663c27cb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ce0647f4bff533c8dce1ef99be6b81e78fdf573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4083d3acae16b14d4b07915ce483b16615c78fae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5577b28604028310f4c699ec92b87a8ee7520ac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5adbc806020f53e0e58858c37780f77728b3e876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x621bbe2c7e0aa07b119a0cd1b3dd00ea0c9dfb1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398355 | `0x6dff69eb720986e98bb3e8b26cb9e02ec1a35d12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77e6c82034b8ce53f281bae4209c6d80ceecc415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab08de77a15ae9dc675eeeb89b3bd558069341a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398356 | `0xb2429ba2cfa6387c9a336da127d34480c069f851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6c9d2cda5fd3f92d1f891d27c4c3173628471a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbfe549b49be8b13920b85de7a33d86b538f1a58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x012247950ee154dc26d4514b84b3b60336c55ea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x075ec5e58f30cad0d859f000cf658e1f1a4b0da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x08aaae59dc60a433d03a8af1ed692038a4d1c258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x0cddd7515586550f16dec1732e0386109e1859e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x0e7b230413fc9c96156d51e7f9133cf0586a47e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-398357 | `0x484be0540ad49f351eaa04eeb35df0f937d4e73f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x4f94587412afac8a395778ef11d549386c54cf17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x6168dbc29a40ea617e2d5753982900b77688074e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x7040b88de8a8e63b9dffe2250f8062dcc1ca7331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x83a49fe476389f3c3857d32dbef57ff60728c3da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x885f78310cd561fc1c804f858367da94d7c003c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x9dcb0d17edde04d27f387c89fecb78654c373858` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xabafac41890422931f4f9eb0711b69d5f8066f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-398358 | `0xb37476cb1f6111cc682b107b747b8652f90b0984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xb77d45b09ec8e88782b7b0137cf65c33b065eed1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-398359 | `0xc9ea90692757831d98ac629f2a0140e02b80a7da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xcdcdd0613474dc4b1cbf8a70f33c2742cb720a45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xd32ab76a165f1a716986ba8c58344e3df4397f5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xd48ea6df9d3cdb6e3a68fb12fa6c62f66e2d9a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xd7b4cdf9a7646ded1af7d6ba756e3aa45859269e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xe536b80e7f859e72ad095d769da1da45b7312d53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x21ff38aa6dc38c99a487cb300c67535a25c9e5f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x2dae19680d5e9089180f7c94b768c43d90184e39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x319db3504334914fa43cbd711b8cc8701d3a160a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-398364 | `0x34c07f50c4f55b322e85deeb265d278e6af112e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x54df79d8edf36d15cd83fbedbdd90807fc828934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5dbaf4e7f73564d320e3caa38a3031616eb5e229` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-398365 | `0x8cbafe7847606ff9ac5eb5e8dd54e5459e8dcc51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x92f25bc7a14aa467a4cac18aa0fcd83aaa90b351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x9dcb0d17edde04d27f387c89fecb78654c373858` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa6c36642b8bd7cdec77e4ca503b9c09ac7924583` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc416e67e4315201ecca32c656deb9a5625fe6fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd32ab76a165f1a716986ba8c58344e3df4397f5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd48ea6df9d3cdb6e3a68fb12fa6c62f66e2d9a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd7b4cdf9a7646ded1af7d6ba756e3aa45859269e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xeff7f07420365829b00ec4484113a2d9b20c1217` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-398366 | `0xf72ce39998d2075f6661cf4214cffe3cf38da72f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf8dd5939a0d31c96f1a7f5c0799a5c5d15af7c94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-398360 | `0x54df79d8edf36d15cd83fbedbdd90807fc828934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x012247950ee154dc26d4514b84b3b60336c55ea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-398361 | `0x0cddd7515586550f16dec1732e0386109e1859e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x2130457539612ae9838e0314cda1a8abbdb7cfbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x31672de4726227feb22f2dfbcfa985c71bea86b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x460e4edd8534be11d875ce65035ac7dbfb9ccd21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x512b63cc647119d2f93259077d98facfea4ae404` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-398362 | `0x57b2690bdee4740bcf40a9b52e7e5b8877bac5e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x5f3d29ef17700f8658c566dac7fbd76e0d86b78c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x967dc2a07ee37143891ea039666dfa91f12a7d13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-398363 | `0x9dcb0d17edde04d27f387c89fecb78654c373858` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa6c36642b8bd7cdec77e4ca503b9c09ac7924583` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xabafac41890422931f4f9eb0711b69d5f8066f97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xcffe5b26d78954f11bd2134445587b637ca97443` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd48ea6df9d3cdb6e3a68fb12fa6c62f66e2d9a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd748f51fb5645b75c2dbd5713b3e8f2259c33771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd7b4cdf9a7646ded1af7d6ba756e3aa45859269e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfa1136bfb444efc5e1feea67f6510fe0c409933b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 77
- Live contracts: 6
- Unknown liveness contracts: 71
- Source-verified contracts: 14
- Currently scope-matched contracts retained as-is: 3
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=3, candidate auto own=2, candidate review=9, unverified unclassified=63

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x056cde388223065ba0688c333c03723b80f31cbf` | non_address_book | unknown | unknown | unverified | n/a | `0x07e8bc15723c1902158da1c7c41fb1eac144167e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0f684d68cf284e2b0ce18da95d81dde038977f99` | non_address_book | unknown | unknown | unverified | n/a | `0x07e8bc15723c1902158da1c7c41fb1eac144167e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x10fed041988fba386fa69865b8eec992523424ad` | non_address_book | unknown | unknown | unverified | n/a | `0x07e8bc15723c1902158da1c7c41fb1eac144167e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x12f2757fd4a4e13079d2007cf8c60965ebba5e81` | non_address_book | unknown | unknown | unverified | n/a | `0x07e8bc15723c1902158da1c7c41fb1eac144167e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x166842e41cc6b5f50fad05199cff90f8ea58f824` | non_address_book | unknown | unknown | unverified | n/a | `0x07e8bc15723c1902158da1c7c41fb1eac144167e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2582c8a5b270d1b0ce83c89e2591d239ac836aa8` | non_address_book | unknown | unknown | unverified | n/a | `0x07e8bc15723c1902158da1c7c41fb1eac144167e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x28b0df44901e39f62b113422a0de021374aed0c7` | non_address_book | unknown | unknown | unverified | n/a | `0x07e8bc15723c1902158da1c7c41fb1eac144167e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b28df50582f7a96efd89cb3737fd8a663c27cb9` | non_address_book | unknown | unknown | unverified | n/a | `0x07e8bc15723c1902158da1c7c41fb1eac144167e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ce0647f4bff533c8dce1ef99be6b81e78fdf573` | non_address_book | unknown | unknown | unverified | n/a | `0x07e8bc15723c1902158da1c7c41fb1eac144167e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4083d3acae16b14d4b07915ce483b16615c78fae` | non_address_book | unknown | unknown | unverified | n/a | `0x07e8bc15723c1902158da1c7c41fb1eac144167e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5577b28604028310f4c699ec92b87a8ee7520ac2` | non_address_book | unknown | unknown | unverified | n/a | `0x07e8bc15723c1902158da1c7c41fb1eac144167e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5adbc806020f53e0e58858c37780f77728b3e876` | non_address_book | unknown | unknown | unverified | n/a | `0x07e8bc15723c1902158da1c7c41fb1eac144167e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x621bbe2c7e0aa07b119a0cd1b3dd00ea0c9dfb1a` | non_address_book | unknown | unknown | unverified | n/a | `0x07e8bc15723c1902158da1c7c41fb1eac144167e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x77e6c82034b8ce53f281bae4209c6d80ceecc415` | non_address_book | unknown | unknown | unverified | n/a | `0x07e8bc15723c1902158da1c7c41fb1eac144167e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab08de77a15ae9dc675eeeb89b3bd558069341a9` | non_address_book | unknown | unknown | unverified | n/a | `0x07e8bc15723c1902158da1c7c41fb1eac144167e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc6c9d2cda5fd3f92d1f891d27c4c3173628471a8` | non_address_book | unknown | unknown | unverified | n/a | `0x07e8bc15723c1902158da1c7c41fb1eac144167e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdbfe549b49be8b13920b85de7a33d86b538f1a58` | non_address_book | unknown | unknown | unverified | n/a | `0x07e8bc15723c1902158da1c7c41fb1eac144167e` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x21ff38aa6dc38c99a487cb300c67535a25c9e5f4` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x2dae19680d5e9089180f7c94b768c43d90184e39` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x319db3504334914fa43cbd711b8cc8701d3a160a` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x54df79d8edf36d15cd83fbedbdd90807fc828934` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x5dbaf4e7f73564d320e3caa38a3031616eb5e229` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x92f25bc7a14aa467a4cac18aa0fcd83aaa90b351` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x9dcb0d17edde04d27f387c89fecb78654c373858` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xa6c36642b8bd7cdec77e4ca503b9c09ac7924583` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xc416e67e4315201ecca32c656deb9a5625fe6fc7` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xd32ab76a165f1a716986ba8c58344e3df4397f5e` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xd48ea6df9d3cdb6e3a68fb12fa6c62f66e2d9a38` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xd7b4cdf9a7646ded1af7d6ba756e3aa45859269e` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xeff7f07420365829b00ec4484113a2d9b20c1217` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xf8dd5939a0d31c96f1a7f5c0799a5c5d15af7c94` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| monad | unverified unclassified | UnnamedContract<br>`0x012247950ee154dc26d4514b84b3b60336c55ea5` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| monad | unverified unclassified | UnnamedContract<br>`0x075ec5e58f30cad0d859f000cf658e1f1a4b0da7` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| monad | unverified unclassified | UnnamedContract<br>`0x08aaae59dc60a433d03a8af1ed692038a4d1c258` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| monad | unverified unclassified | UnnamedContract<br>`0x0cddd7515586550f16dec1732e0386109e1859e8` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| monad | unverified unclassified | UnnamedContract<br>`0x0e7b230413fc9c96156d51e7f9133cf0586a47e6` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| monad | unverified unclassified | UnnamedContract<br>`0x4f94587412afac8a395778ef11d549386c54cf17` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| monad | unverified unclassified | UnnamedContract<br>`0x6168dbc29a40ea617e2d5753982900b77688074e` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| monad | unverified unclassified | UnnamedContract<br>`0x7040b88de8a8e63b9dffe2250f8062dcc1ca7331` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| monad | unverified unclassified | UnnamedContract<br>`0x83a49fe476389f3c3857d32dbef57ff60728c3da` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| monad | unverified unclassified | UnnamedContract<br>`0x885f78310cd561fc1c804f858367da94d7c003c2` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| monad | unverified unclassified | UnnamedContract<br>`0x9dcb0d17edde04d27f387c89fecb78654c373858` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| monad | unverified unclassified | UnnamedContract<br>`0xabafac41890422931f4f9eb0711b69d5f8066f97` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| monad | unverified unclassified | UnnamedContract<br>`0xb77d45b09ec8e88782b7b0137cf65c33b065eed1` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| monad | unverified unclassified | UnnamedContract<br>`0xcdcdd0613474dc4b1cbf8a70f33c2742cb720a45` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| monad | unverified unclassified | UnnamedContract<br>`0xd32ab76a165f1a716986ba8c58344e3df4397f5e` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| monad | unverified unclassified | UnnamedContract<br>`0xd48ea6df9d3cdb6e3a68fb12fa6c62f66e2d9a38` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| monad | unverified unclassified | UnnamedContract<br>`0xd7b4cdf9a7646ded1af7d6ba756e3aa45859269e` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| monad | unverified unclassified | UnnamedContract<br>`0xe536b80e7f859e72ad095d769da1da45b7312d53` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| plasma | unverified unclassified | UnnamedContract<br>`0x012247950ee154dc26d4514b84b3b60336c55ea5` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| plasma | unverified unclassified | UnnamedContract<br>`0x2130457539612ae9838e0314cda1a8abbdb7cfbc` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| plasma | unverified unclassified | UnnamedContract<br>`0x31672de4726227feb22f2dfbcfa985c71bea86b2` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| plasma | unverified unclassified | UnnamedContract<br>`0x460e4edd8534be11d875ce65035ac7dbfb9ccd21` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| plasma | unverified unclassified | UnnamedContract<br>`0x512b63cc647119d2f93259077d98facfea4ae404` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| plasma | unverified unclassified | UnnamedContract<br>`0x5f3d29ef17700f8658c566dac7fbd76e0d86b78c` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| plasma | unverified unclassified | UnnamedContract<br>`0x967dc2a07ee37143891ea039666dfa91f12a7d13` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| plasma | unverified unclassified | UnnamedContract<br>`0xa6c36642b8bd7cdec77e4ca503b9c09ac7924583` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| plasma | unverified unclassified | UnnamedContract<br>`0xabafac41890422931f4f9eb0711b69d5f8066f97` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| plasma | unverified unclassified | UnnamedContract<br>`0xcffe5b26d78954f11bd2134445587b637ca97443` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| plasma | unverified unclassified | UnnamedContract<br>`0xd48ea6df9d3cdb6e3a68fb12fa6c62f66e2d9a38` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| plasma | unverified unclassified | UnnamedContract<br>`0xd748f51fb5645b75c2dbd5713b3e8f2259c33771` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| plasma | unverified unclassified | UnnamedContract<br>`0xd7b4cdf9a7646ded1af7d6ba756e3aa45859269e` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| plasma | unverified unclassified | UnnamedContract<br>`0xfa1136bfb444efc5e1feea67f6510fe0c409933b` | non_address_book | unknown | unknown | unverified | n/a | `0x7e45a13f8fd70a797b1bf0b6a041a481c7cd4f99` |
| plasma | currently scope matched | TransparentUpgradeableProxy<br>`0x6695c0f8706c5ace3bdf8995073179cca47926dc` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x9e6d232309930ad7fdfc655097d059a2e9d7fbef` |
| plasma | currently scope matched | TransparentUpgradeableProxy<br>`0xc8a8df9b210243c55d31c73090f06787ad0a1bf6` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x9e6d232309930ad7fdfc655097d059a2e9d7fbef` |
| plasma | currently scope matched | TransparentUpgradeableProxy<br>`0xebfc8c2fe73c431ef2a371aea9132110aab50dca` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x9e6d232309930ad7fdfc655097d059a2e9d7fbef` |
| plasma | candidate auto own | PSM<br>`0x933069e8fc9502762fcceb3a28804a28b4c863b2` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x9e6d232309930ad7fdfc655097d059a2e9d7fbef` |
| plasma | candidate auto own | StakedYuzuUSDV2<br>`0xa3982582016375a0b25cb7d572379d3d49e5e9c8` | retained_scope_excluded_inventory | unknown | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x9e6d232309930ad7fdfc655097d059a2e9d7fbef` |
| plasma | candidate review | StakedYuzuUSD<br>`0xb14e7d488371d22d39aff1b0c0f07ed2b532160f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9e6d232309930ad7fdfc655097d059a2e9d7fbef` |
| plasma | candidate review | TransparentUpgradeableProxy<br>`0x2aa939b5c9cef10c170ad38c4b05a45f27199dea` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9e6d232309930ad7fdfc655097d059a2e9d7fbef` |
| plasma | candidate review | TransparentUpgradeableProxy<br>`0x3fdd8e2d2e9170a00f5406089720dae39cd9e589` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9e6d232309930ad7fdfc655097d059a2e9d7fbef` |
| plasma | candidate review | TransparentUpgradeableProxy<br>`0x8e6026ac788415d03f38a46008a2a75d7c9cc340` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9e6d232309930ad7fdfc655097d059a2e9d7fbef` |
| plasma | candidate review | TransparentUpgradeableProxy<br>`0xa5913fc4828f2750d24856e6b7bea3c16bb51531` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9e6d232309930ad7fdfc655097d059a2e9d7fbef` |
| plasma | candidate review | YuzuILP<br>`0x7e8bc59b4126415c86c9bf1f8cb277b9d9249281` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9e6d232309930ad7fdfc655097d059a2e9d7fbef` |
| plasma | candidate review | YuzuILPV2<br>`0x326839f792ba2ccf98a3ac28bb7de551539309bc` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x9e6d232309930ad7fdfc655097d059a2e9d7fbef` |
| plasma | candidate review | YuzuUSD<br>`0x90b1bc26e1ac873fc5043a9f658443daab674d85` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9e6d232309930ad7fdfc655097d059a2e9d7fbef` |
| plasma | candidate review | YuzuUSDV2<br>`0x32d7d5bf842d6ae28c9dd4fac4c6662cf9bf5cfe` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x9e6d232309930ad7fdfc655097d059a2e9d7fbef` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [YuzuUSD-security-review_2025-08-28.pdf](https://github.com/pashov/audits/blob/master/team/pdf/YuzuUSD-security-review_2025-08-28.pdf) | Pashov Audit Group | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [dedaub.com/audits/yuzu-money/yuzuusd-october-6-2025](https://dedaub.com/audits/yuzu-money/yuzuusd-october-6-2025) | Dedaub | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [YuzuUSD-security-review_2026-01-14.pdf](https://github.com/pashov/audits/blob/5911d22f3575a90650b2a6c22758a8f1712b8880/team/pdf/YuzuUSD-security-review_2026-01-14.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Direct | contract_name | matched | 3 | 3 | 0 | 21 | high |
| [dedaub.com/audits/yuzu-money/yuzuusd-psm-february-09-2026](https://dedaub.com/audits/yuzu-money/yuzuusd-psm-february-09-2026) | Dedaub | Audit | 2026-01 | fresh | Direct | contract_name | matched | 2 | 2 | 0 | 4 | high |
| [YuzuUSD-security-review_2025-08-28.md](https://github.com/pashov/audits/blob/master/team/md/YuzuUSD-security-review_2025-08-28.md) | Pashov Audit Group | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [YuzuUSD-security-review_2026-01-14.md](https://github.com/pashov/audits/blob/master/team/md/YuzuUSD-security-review_2026-01-14.md) | Pashov Audit Group | Audit | 2026-01 | fresh | Direct | contract_name | matched | 3 | 3 | 0 | 21 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11732] YuzuUSD-security-review_2025-08-28.pdf — no match: Scope section lists 6 contracts: YuzuUSD.sol, YuzuILP.sol, StakedYuzuUSD.sol, YuzuIssuer.sol, YuzuOrderBook.sol, YuzuProto.sol. Audit date is September 1st 2025 (end date of timeline).
- [11733] dedaub.com/audits/yuzu-money/yuzuusd-october-6-2025 — no match: Contracts extracted from audit report text; file paths not provided.
- [11734] YuzuUSD-security-review_2026-01-14.pdf — matched: All contracts listed in the Scope section of the audit report.
- [11735] dedaub.com/audits/yuzu-money/yuzuusd-psm-february-09-2026 — matched: Extracted contract names from findings and context; audit date from report submission date.
- [11736] YuzuUSD-security-review_2025-08-28.md — no match: Scope section lists 6 contracts and interfaces/ directory. No audit date found in the provided text.
- [11737] YuzuUSD-security-review_2026-01-14.md — matched: Scope section explicitly lists all contracts in scope. No audit date found in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| YuzuUSD-security-review_2025-08-28.pdf | YuzuUSD | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2025-08-28.pdf | YuzuILP | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2025-08-28.pdf | StakedYuzuUSD | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2025-08-28.pdf | YuzuIssuer | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2025-08-28.pdf | YuzuOrderBook | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2025-08-28.pdf | YuzuProto | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/yuzu-money/yuzuusd-october-6-2025 | YuzuUSD | unmatched — not counted | — | mentioned as main token contract | no |
| dedaub.com/audits/yuzu-money/yuzuusd-october-6-2025 | StakedYuzuUSD | unmatched — not counted | — | mentioned as ERC4626 vault | no |
| dedaub.com/audits/yuzu-money/yuzuusd-october-6-2025 | YuzuILP | unmatched — not counted | — | Insurance Liquidity Pool contract | no |
| dedaub.com/audits/yuzu-money/yuzuusd-october-6-2025 | YuzuProto | unmatched — not counted | — | base contract for token contracts | no |
| dedaub.com/audits/yuzu-money/yuzuusd-october-6-2025 | IYuzuILPDefinitions | unmatched — not counted | — | interface defining errors | no |
| YuzuUSD-security-review_2026-01-14.pdf | IYuzuIssuer | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IYuzuIssuerDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IYuzuOrderBookDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IYuzuProto | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IYuzuProtoDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IPSM | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IPSMDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IStakedYuzuUSD | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IStakedYuzuUSDDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IYuzuILP | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IYuzuILPDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IYuzuUSD | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | ProtoOVaultComposer | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | PSMOVaultComposer | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | YuzuIssuer | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | YuzuOrderBook | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | YuzuProto | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | YuzuProtoV2 | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | PSM | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | StakedYuzuUSD | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | StakedYuzuUSDV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc8a8df9b210243c55d31c73090f06787ad0a1bf6` — deployed 2025-10-10 16:10:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| YuzuUSD-security-review_2026-01-14.pdf | YuzuILP | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | YuzuILPV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xebfc8c2fe73c431ef2a371aea9132110aab50dca` — deployed 2025-10-10 16:10:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| YuzuUSD-security-review_2026-01-14.pdf | YuzuUSDV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6695c0f8706c5ace3bdf8995073179cca47926dc` — deployed 2025-10-10 16:10:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| dedaub.com/audits/yuzu-money/yuzuusd-psm-february-09-2026 | YuzuProtoV2 | unmatched — not counted | — | mentioned in L1 finding | no |
| dedaub.com/audits/yuzu-money/yuzuusd-psm-february-09-2026 | PSM | unmatched — not counted | — | mentioned in L1 finding and centralization note | no |
| dedaub.com/audits/yuzu-money/yuzuusd-psm-february-09-2026 | StakedYuzuUSD | unmatched — not counted | — | mentioned in L2 finding | no |
| dedaub.com/audits/yuzu-money/yuzuusd-psm-february-09-2026 | StakedYuzuUSDV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc8a8df9b210243c55d31c73090f06787ad0a1bf6` — deployed 2025-10-10 16:10:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| dedaub.com/audits/yuzu-money/yuzuusd-psm-february-09-2026 | YuzuUSDV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6695c0f8706c5ace3bdf8995073179cca47926dc` — deployed 2025-10-10 16:10:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| dedaub.com/audits/yuzu-money/yuzuusd-psm-february-09-2026 | IStakedYuzuUSDV2Definitions | unmatched — not counted | — | mentioned in L2 finding | no |
| YuzuUSD-security-review_2025-08-28.md | YuzuUSD | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2025-08-28.md | YuzuILP | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2025-08-28.md | StakedYuzuUSD | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2025-08-28.md | YuzuIssuer | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2025-08-28.md | YuzuOrderBook | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2025-08-28.md | YuzuProto | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IYuzuIssuer | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IYuzuIssuerDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IYuzuOrderBookDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IYuzuProto | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IYuzuProtoDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IPSM | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IPSMDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IStakedYuzuUSD | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IStakedYuzuUSDDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IYuzuILP | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IYuzuILPDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IYuzuUSD | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | ProtoOVaultComposer | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | PSMOVaultComposer | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | YuzuIssuer | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | YuzuOrderBook | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | YuzuProto | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | YuzuProtoV2 | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | PSM | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | StakedYuzuUSD | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | StakedYuzuUSDV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc8a8df9b210243c55d31c73090f06787ad0a1bf6` — deployed 2025-10-10 16:10:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| YuzuUSD-security-review_2026-01-14.md | YuzuILP | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | YuzuILPV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xebfc8c2fe73c431ef2a371aea9132110aab50dca` — deployed 2025-10-10 16:10:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| YuzuUSD-security-review_2026-01-14.md | YuzuUSDV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6695c0f8706c5ace3bdf8995073179cca47926dc` — deployed 2025-10-10 16:10:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 76 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 8 own (8 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 63 unmatched
- Matched-own operational status: 8 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: unique_name=8

Zero-match audit list:

- [11732] YuzuUSD-security-review_2025-08-28.pdf
- [11733] dedaub.com/audits/yuzu-money/yuzuusd-october-6-2025
- [11736] YuzuUSD-security-review_2025-08-28.md

Fork inheritance lineage and inherited audits are included when available.
