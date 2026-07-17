# Agentic Audit Brief: Vaultedge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Vaultedge (`vaultedge`)
- Website: [https://www.vaultedge.fi/](https://www.vaultedge.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, plasma
- Contract surface: 64 unique implementations (64 raw deployments)
- Coverage basis: 0/39 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $261,996.32
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Vaultedge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 39 contract row(s) across base, plasma. Structural roles: 39 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 39
- Structural roles: unclassified (39)
- Contract kinds: contract (37), abstract (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 41 contracts are derived from known codebases. 41 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ActivePool (`0x1d3583dee04085e0ac941b46ce8e2550d4c8c5b0`, chain 8453)
- ActivePool (`0xf7b01eaeafa357eb7334b75a61b49a6dc78f337a`, chain 9745)
- AdminContract (`0xaf1be613be291ebc4672bdc42173181e1d1e9d9d`, chain 8453)
- AdminContract (`0x43a7ba8590fe4f128eb82a633c68929c52ad829a`, chain 9745)
- BorrowerOperations (`0xc967233790f9f9a7234f96c8eeca9b449e9901cd`, chain 8453)
- BorrowerOperations (`0xaa2d3cce277ee1e2f594724dadec8e656c770829`, chain 9745)
- CollSurplusPool (`0x659c04117f3cbc052072c10fc31e4bea03b70a90`, chain 8453)
- CollSurplusPool (`0x69b849e99d0e0bc72ac9ce89e4092a0f7633d9c6`, chain 9745)
- DebtToken (`0x0c6de2baebed16248b794d582cc694c97cfd8a92`, chain 8453)
- DebtToken (`0x50dd3d50379ca1e879376b0f112bb7a5b7436553`, chain 9745)
- DefaultPool (`0x33580387fa399f8b384fb5621c66265230338b4e`, chain 8453)
- DefaultPool (`0x76a3ff6f8f5279d2d936c36d5a9b5eabf5f4a979`, chain 9745)
- FlashArbExecutor (`0x506e5b74d2c420f77f736e638769110eb257401b`, chain 8453)
- GasPool (`0xaf336fc114a6e327df635e7bbb29daec542dd1d1`, chain 8453)
- GasPool (`0x386d364a52fbd44d1ed09b5c0176a7ecb8cc0838`, chain 9745)
- mRT Oracle (`0x0dbf7c87040f7aaf96a647fab5a49cab9c4177bb`, chain 8453)
- mRT Token (`0xa46246a5ab18c0d312f6e6a479e80848c024e5ec`, chain 8453)
- mSRT Oracle (`0x13e32ad756c6001e96a41693a16166865c0f67e0`, chain 8453)
- mSRT Token (`0xa9329edc0cd5af68536a9ce55c5054a0cb785687`, chain 8453)
- mUSD Oracle (`0xcf6d2594078f5e9bb57bc26c358f89a0ee4d7b8f`, chain 8453)
- mUSD Token (`0xc06636be41fac559c67b717261e1acbe83a2e7c0`, chain 8453)
- mvUSD Vault (`0x27fbc95d2a0af7ecc5692e9d6299b49491ce903b`, chain 8453)
- PegStabilityModule (`0xb2d6c53f4abcc9e063564bb58acdffa154a3e04d`, chain 9745)
- PegStabilityModuleWithStrategy (`0x514578a5a4711a3ed0920e68b5462b0d718602f6`, chain 8453)
- PegToken (`0x0d7e1ffde7e9df996db632ec9935b31f5aacdc83`, chain 9745)
- PriceFeedV2 (`0x1be23396974507f37fcb3eb8b1d635672f3a947b`, chain 8453)
- PriceFeedV2 (`0x46abb1f6d958fedb0557af55e77076f6906b6587`, chain 9745)
- ProxyAdmin (`0x0dfebd95ebea4e3824fabb4f60001ea1351ab146`, chain 8453)
- ProxyAdmin (`0xe424f3d39bbb8a599eaa7f6ece273566693331a0`, chain 9745)
- ProxyAdmin Timelocked One Day (`0x66e5adfcc4821edc64d4064d6c457d371168d4f8`, chain 8453)
- ProxyAdmin Timelocked Three Day (`0x07fe8c2704c51bf460c3f48351419c76724bb437`, chain 8453)
- SortedVessels (`0x0632081d274c7d7a32c6c661b449293a0f3048bb`, chain 8453)
- SortedVessels (`0xda9e80b75807954ba4962e6a9bc54ca8681fed89`, chain 9745)
- StabilityPool (`0x09cb815bce3922b2bd45576e07edb34fa67cfc34`, chain 8453)
- StabilityPool (`0xdeb916d0e35eb87e463705b605eab921e4da6f95`, chain 9745)
- Timelock One Day (`0xffef0f452fe6a6fdd5a8b65a7d000b9d309e7109`, chain 8453)
- Timelock Three Day (`0x64eb35eff983181a323441e4e0dd29ebd54d3e67`, chain 8453)
- VesselManager (`0x9abf6a80a1dbcb469c796e2983ce880421683054`, chain 8453)
- VesselManager (`0x5954d911cc26eccd336b213ba72014796e5f1e3a`, chain 9745)
- VesselManagerOperations (`0xc114942cce837543b8583619c61db3ca05735c9c`, chain 8453)
- VesselManagerOperations (`0x24ea2fb47ded42f87bfcd5121bc2a7ea7ca9387a`, chain 9745)

## Contract Surface Quality

- Logic-topography rows: 39; live-surface rows included: 39 (39 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 41/44 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/39 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 41 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 20 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 41 of 64 unique; 23 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/59
- Verified + Unaudited implementations: 59
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 64
- Raw deployments: 64
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActivePool | unknown | project_anchor | own_supporting | 0 | base | unit-395545 | `0x1d3583dee04085e0ac941b46ce8e2550d4c8c5b0` | ⚠️ Unaudited |
| ActivePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x8ceaba86d4ae89f582a52e020ecf7f1f2f3e2a78` | ⚠️ Unaudited |
| ActivePool | unknown | project_anchor | own_supporting | 0 | plasma | unit-395580 | `0xf7b01eaeafa357eb7334b75a61b49a6dc78f337a` | ⚠️ Unaudited |
| AdminContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2ad60d1d8bb39be30e06af25a90c66c9bd19eff5` | ⚠️ Unaudited |
| AdminContract | unknown | project_anchor | own_supporting | 0 | base | unit-395557 | `0xaf1be613be291ebc4672bdc42173181e1d1e9d9d` | ⚠️ Unaudited |
| AdminContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-395568 | `0x43a7ba8590fe4f128eb82a633c68929c52ad829a` | ⚠️ Unaudited |
| BorrowerOperations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac30987d30cfba18f564e9040d23fe38315587ea` | ⚠️ Unaudited |
| BorrowerOperations | unknown | project_anchor | own_supporting | 0 | base | unit-395562 | `0xc967233790f9f9a7234f96c8eeca9b449e9901cd` | ⚠️ Unaudited |
| BorrowerOperations | unknown | project_anchor | own_supporting | 0 | plasma | unit-395574 | `0xaa2d3cce277ee1e2f594724dadec8e656c770829` | ⚠️ Unaudited |
| CollSurplusPool | unknown | project_anchor | own_supporting | 0 | base | unit-395552 | `0x659c04117f3cbc052072c10fc31e4bea03b70a90` | ⚠️ Unaudited |
| CollSurplusPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc401d5b70ba613c57fa4316a86e74106616f86bc` | ⚠️ Unaudited |
| CollSurplusPool | unknown | project_anchor | own_supporting | 0 | plasma | unit-395572 | `0x69b849e99d0e0bc72ac9ce89e4092a0f7633d9c6` | ⚠️ Unaudited |
| DebtToken | unknown | project_anchor | own_supporting | 0 | base | unit-395540 | `0x0c6de2baebed16248b794d582cc694c97cfd8a92` | ⚠️ Unaudited |
| DebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbfcd661be34c99920036f176876746b9f5b68c26` | ⚠️ Unaudited |
| DebtToken | unknown | project_anchor | own_supporting | 0 | plasma | unit-395570 | `0x50dd3d50379ca1e879376b0f112bb7a5b7436553` | ⚠️ Unaudited |
| DefaultPool | unknown | project_anchor | own_supporting | 0 | base | unit-395547 | `0x33580387fa399f8b384fb5621c66265230338b4e` | ⚠️ Unaudited |
| DefaultPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x6673a757b4bd2005e6286a2b85e4313b37460ff1` | ⚠️ Unaudited |
| DefaultPool | unknown | project_anchor | own_supporting | 0 | plasma | unit-395573 | `0x76a3ff6f8f5279d2d936c36d5a9b5eabf5f4a979` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3842888cf4ec94b73a7622dcc4ff8d84b8366143` | ⚠️ Unaudited |
| FlashArbExecutor | unknown | project_anchor | own_supporting | 0 | base | unit-395549 | `0x506e5b74d2c420f77f736e638769110eb257401b` | ⚠️ Unaudited |
| FlashArbExecutor_Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x38eff9ae273b8d71684927112037f1eeb1b3ee21` | ⚠️ Unaudited |
| FlashArbRedemption_Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x9db37a53bbe5dcb221258122f307fc60a9d42dcc` | ⚠️ Unaudited |
| GasPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x110a56e6fa0fd09a89b182b73735e9f61750e697` | ⚠️ Unaudited |
| GasPool | unknown | project_anchor | own_supporting | 0 | base | unit-395558 | `0xaf336fc114a6e327df635e7bbb29daec542dd1d1` | ⚠️ Unaudited |
| GasPool | unknown | project_anchor | own_supporting | 0 | plasma | unit-395567 | `0x386d364a52fbd44d1ed09b5c0176a7ecb8cc0838` | ⚠️ Unaudited |
| mRT Oracle | unknown | project_anchor | own_supporting | 0 | base | unit-395541 | `0x0dbf7c87040f7aaf96a647fab5a49cab9c4177bb` | ⚠️ Unaudited |
| mRT Token | unknown | project_anchor | own_supporting | 0 | base | unit-395555 | `0xa46246a5ab18c0d312f6e6a479e80848c024e5ec` | ⚠️ Unaudited |
| mSRT Oracle | unknown | project_anchor | own_supporting | 0 | base | unit-395543 | `0x13e32ad756c6001e96a41693a16166865c0f67e0` | ⚠️ Unaudited |
| mSRT Token | unknown | project_anchor | own_supporting | 0 | base | unit-395556 | `0xa9329edc0cd5af68536a9ce55c5054a0cb785687` | ⚠️ Unaudited |
| mUSD Oracle | unknown | project_anchor | own_supporting | 0 | base | unit-395563 | `0xcf6d2594078f5e9bb57bc26c358f89a0ee4d7b8f` | ⚠️ Unaudited |
| mUSD Token | unknown | project_anchor | own_supporting | 0 | base | unit-395559 | `0xc06636be41fac559c67b717261e1acbe83a2e7c0` | ⚠️ Unaudited |
| mvUSD Vault | unknown | project_anchor | own_supporting | 0 | base | unit-395546 | `0x27fbc95d2a0af7ecc5692e9d6299b49491ce903b` | ⚠️ Unaudited |
| PegStabilityModule | unknown | project_anchor | own_supporting | 0 | plasma | unit-395575 | `0xb2d6c53f4abcc9e063564bb58acdffa154a3e04d` | ⚠️ Unaudited |
| PegStabilityModuleWithStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x422f315f82c28f577c663972daa2de6327a5e067` | ⚠️ Unaudited |
| PegStabilityModuleWithStrategy | unknown | project_anchor | own_supporting | 0 | base | unit-395550 | `0x514578a5a4711a3ed0920e68b5462b0d718602f6` | ⚠️ Unaudited |
| PegToken | unknown | project_anchor | own_supporting | 0 | plasma | unit-395565 | `0x0d7e1ffde7e9df996db632ec9935b31f5aacdc83` | ⚠️ Unaudited |
| PriceFeedV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x019ba6c927d0fd791f7b52fceca83f0e1ec8c2f8` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | base | unit-395542 | `0x0dfebd95ebea4e3824fabb4f60001ea1351ab146` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f24a08af929ffc25f91355b660c9983991c0199` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | plasma | unit-395578 | `0xe424f3d39bbb8a599eaa7f6ece273566693331a0` | ⚠️ Unaudited |
| ProxyAdmin Timelocked One Day | unknown | project_anchor | own_supporting | 0 | base | unit-395553 | `0x66e5adfcc4821edc64d4064d6c457d371168d4f8` | ⚠️ Unaudited |
| ProxyAdmin Timelocked Three Day | unknown | project_anchor | own_supporting | 0 | base | unit-395538 | `0x07fe8c2704c51bf460c3f48351419c76724bb437` | ⚠️ Unaudited |
| ProxyAdmin_TimelockedOneDay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x05a991ea8352655f997b2811aa4eafa5133cb50d` | ⚠️ Unaudited |
| ProxyAdmin_TimelockedThreeDay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcb9b3a0f114e07bee9cb91a4a1ff8d19a4e48b8d` | ⚠️ Unaudited |
| SortedVessels | unknown | project_anchor | own_supporting | 0 | base | unit-395537 | `0x0632081d274c7d7a32c6c661b449293a0f3048bb` | ⚠️ Unaudited |
| SortedVessels | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x8a34f260065594f574832360c7f92c65f0591d34` | ⚠️ Unaudited |
| SortedVessels | unknown | project_anchor | own_supporting | 0 | plasma | unit-395576 | `0xda9e80b75807954ba4962e6a9bc54ca8681fed89` | ⚠️ Unaudited |
| StabilityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0745cb7882ff382d7524a9fba21642180d047ac8` | ⚠️ Unaudited |
| StabilityPool | unknown | project_anchor | own_supporting | 0 | base | unit-395539 | `0x09cb815bce3922b2bd45576e07edb34fa67cfc34` | ⚠️ Unaudited |
| StabilityPool | unknown | project_anchor | own_supporting | 0 | plasma | unit-395577 | `0xdeb916d0e35eb87e463705b605eab921e4da6f95` | ⚠️ Unaudited |
| Timelock One Day | unknown | project_anchor | own_supporting | 0 | base | unit-395564 | `0xffef0f452fe6a6fdd5a8b65a7d000b9d309e7109` | ⚠️ Unaudited |
| Timelock Three Day | unknown | project_anchor | own_supporting | 0 | base | unit-395551 | `0x64eb35eff983181a323441e4e0dd29ebd54d3e67` | ⚠️ Unaudited |
| TimelockControllerEnumerable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa23daaed5e2c9955fdeee239723d132b899af14d` | ⚠️ Unaudited |
| VesselManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x14a93618e09f5201cb7837b83b1f282e564aca30` | ⚠️ Unaudited |
| VesselManager | unknown | project_anchor | own_supporting | 0 | base | unit-395554 | `0x9abf6a80a1dbcb469c796e2983ce880421683054` | ⚠️ Unaudited |
| VesselManager | unknown | project_anchor | own_supporting | 0 | plasma | unit-395571 | `0x5954d911cc26eccd336b213ba72014796e5f1e3a` | ⚠️ Unaudited |
| VesselManagerOperations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a9f91cff313a1e88c8e2f407b664de4cb3dbe78` | ⚠️ Unaudited |
| VesselManagerOperations | unknown | project_anchor | own_supporting | 0 | base | unit-395560 | `0xc114942cce837543b8583619c61db3ca05735c9c` | ⚠️ Unaudited |
| VesselManagerOperations | unknown | project_anchor | own_supporting | 0 | plasma | unit-395566 | `0x24ea2fb47ded42f87bfcd5121bc2a7ea7ca9387a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PriceFeedV2 | unknown | project_anchor | own_supporting | 0 | base | unit-395544 | `0x1be23396974507f37fcb3eb8b1d635672f3a947b` | ❓ Unverified |
| PriceFeedV2 | unknown | project_anchor | own_supporting | 0 | plasma | unit-395569 | `0x46abb1f6d958fedb0557af55e77076f6906b6587` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395548 | `0x339b88498caae105f50a5261d87f987e01a1b4ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-395561 | `0xc775ac5440312237248f992883eddc2f8119fd4b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | plasma | unit-395579 | `0xeecb147d2434b2bae6be43100170e1b30b01c23d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 44 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
