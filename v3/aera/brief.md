# Agentic Audit Brief: Aera

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Aera (`aera`)
- Website: [https://www.aera.finance](https://www.aera.finance)
- Lifecycle: active (Tier 0, 22.5% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 240 unique implementations (530 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $126,119,552.00
- On-chain TVL (included contracts): $15,620.29
- TVL by chain: Polygon $11,402.24 | Ethereum $4,104.66 | Base $113.39

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Aera in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x833589...a02913`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 239 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 66
- Confirmed-live implementations: 1 of 240 unique; 239 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/163
- Verified + Unaudited implementations: 161
- Verified by bytecode match: 2
- Unverified implementations: 77
- Unique implementations: 240
- Raw deployments: 530
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (161)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SecuritizeVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x7cbc5a...5b40fc`; polygon `0x9d6094...09f9a7`; polygon `0xa482be...791c5c` | ⚠️ Unaudited |
| ATokenVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 5 deployments: polygon `0x1408fc...4918be`; polygon `0x24a73d...e29e4d`; polygon `0x8ecc82...3cf102`; polygon `0xb33166...1c8c4b`; polygon `0xc16323...d6dfc2` | ⚠️ Unaudited |
| ATokenVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2e603c...273c70`; ethereum `0x2f79d4...ded54d` | ⚠️ Unaudited |
| PoolInstance | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x87870b...4fa4e2` | ⚠️ Unaudited |
| ATokenVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 4 deployments: polygon `0x1f1e7b...adea61`; polygon `0x5e5057...316d18`; polygon `0xbf4374...38d289`; polygon `0xdcb1bd...e5ea7d` | ⚠️ Unaudited |
| L2PoolInstance | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xa238dd...98d1c5` | ⚠️ Unaudited |
| SecuritizeVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x4c1e5e...22b830`; polygon `0x6a3187...6b754e` | ⚠️ Unaudited |
| PoolInstance | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x794a61...4814ad` | ⚠️ Unaudited |
| AeraVaultV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: ethereum `0x8a7c03...8327c9`; ethereum `0xbebb92...04ee56`; polygon `0x3c1480...b4dafe` | ⚠️ Unaudited |
| ATokenVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2c616f...11254a`; polygon `0xba8665...bb440e` | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x7b4eb5...a138a3`; polygon `0x69fa68...310654`; base `0x2d8a3c...df38ac`; arbitrum `0x6b4e26...9ff93e` | ⚠️ Unaudited |
| AaveV3PositionOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4237b...d49043` | ⚠️ Unaudited |
| AeraFlashLoanRecipient | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x49342b...efbade`; polygon `0x54218f...8e6a19` | ⚠️ Unaudited |
| AeraV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 10 deployments: ethereum `0x38896b...f1797d`; ethereum `0x950094...c27191`; polygon `0x101aee...cb8d82`; polygon `0x49b428...5e30ec`; polygon `0xa1c908...db3094`; polygon `0xdd65ca...832ceb`; base `0x5cd0cb...5c53e1`; arbitrum `0x49b428...5e30ec`; arbitrum `0xaf2762...65cd46`; arbitrum `0xf626e2...80d2fb` | ⚠️ Unaudited |
| AeraVaultModulesFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0fb605...792ff4`; ethereum `0x54438c...bf04aa`; polygon `0x7744f4...6e40c5`; polygon `0x8c3a80...89e3a8`; polygon `0xaa13c2...ca5795`; base `0x1b76b1...47ea4f`; arbitrum `0x7744f4...6e40c5`; arbitrum `0xd01517...fd3c28` | ⚠️ Unaudited |
| AeraVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14c79c...8f5a98` | ⚠️ Unaudited |
| AllowanceLiquiditySource | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x441605...faa688` | ⚠️ Unaudited |
| ArbitrumBridgeReceiver | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42480c...d38068` | ⚠️ Unaudited |
| ArrakisV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 6 deployments: ethereum `0x1d91f6...8759b6`; ethereum `0x7f346f...e6df38`; polygon `0x1d91f6...8759b6`; polygon `0x7f346f...e6df38`; arbitrum `0x1d91f6...8759b6`; arbitrum `0x7f346f...e6df38` | ⚠️ Unaudited |
| ArrakisV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0xaf0f96...7b134d`; ethereum `0xb5c3b2...6b09ba`; polygon `0xaf0f96...7b134d`; polygon `0xb5c3b2...6b09ba`; arbitrum `0xaf0f96...7b134d`; arbitrum `0xb5c3b2...6b09ba` | ⚠️ Unaudited |
| ArrakisV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1d91f6...8759b6`; base `0x7f346f...e6df38` | ⚠️ Unaudited |
| ArrakisV2Beacon | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x891e7e...63b8b3`; polygon `0x891e7e...63b8b3`; arbitrum `0x891e7e...63b8b3` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 6 deployments: ethereum `0x055b6d...273a88`; ethereum `0x453f7d...53857c`; polygon `0x055b6d...273a88`; polygon `0x453f7d...53857c`; arbitrum `0x055b6d...273a88`; arbitrum `0x453f7d...53857c` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 12 deployments: ethereum `0x26673a...b3b775`; ethereum `0xecb8ff...6c8288`; ethereum `0xf90aaf...be865d`; polygon `0x26673a...b3b775`; polygon `0xecb8ff...6c8288`; polygon `0xf90aaf...be865d`; base `0x26673a...b3b775`; base `0xecb8ff...6c8288`; base `0xf90aaf...be865d`; arbitrum `0x26673a...b3b775`; arbitrum `0xecb8ff...6c8288`; arbitrum `0xf90aaf...be865d` | ⚠️ Unaudited |
| ArrakisV2Helper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x07d2ce...64449f`; ethereum `0x89e4be...7f07d6`; ethereum `0xccee73...5c8d9c`; polygon `0x07d2ce...64449f`; polygon `0x89e4be...7f07d6`; polygon `0xccee73...5c8d9c`; base `0x89e4be...7f07d6`; arbitrum `0x07d2ce...64449f`; arbitrum `0x89e4be...7f07d6`; arbitrum `0xccee73...5c8d9c` | ⚠️ Unaudited |
| ArrakisV2Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x8897f8...ddf5f5`; arbitrum `0x96b912...4ff88c` | ⚠️ Unaudited |
| ArrakisV2Resolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x4bc385...f905f5`; ethereum `0x535c5f...1cc7b8`; ethereum `0xb11bb8...c1f193`; polygon `0x4bc385...f905f5`; polygon `0x535c5f...1cc7b8`; polygon `0xb11bb8...c1f193`; base `0x535c5f...1cc7b8`; arbitrum `0x4bc385...f905f5`; arbitrum `0x535c5f...1cc7b8`; arbitrum `0xb11bb8...c1f193` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6ac8ba...f61b94`; ethereum `0xfe3d83...f15e3d` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x6ac8ba...f61b94`; polygon `0xfe3d83...f15e3d` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6ac8ba...f61b94`; base `0xfe3d83...f15e3d` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6ac8ba...f61b94`; arbitrum `0xfe3d83...f15e3d` | ⚠️ Unaudited |
| AToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1be179...50786a`; arbitrum `0xe88fb4...b5f449` | ⚠️ Unaudited |
| BaseBulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x59e242...7f7cd6`; base `0x78d067...212a8c`; arbitrum `0xbde8f3...7b372d` | ⚠️ Unaudited |
| BorrowLogic | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xa25d9f...fcfddd`; arbitrum `0xd1b3e2...ddcfa3` | ⚠️ Unaudited |
| BridgeLogic | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe7636...5401e4` | ⚠️ Unaudited |
| BucketTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x1582e7...08408e`; arbitrum `0x653b33...43addb`; arbitrum `0x8a36b7...f29c7e`; arbitrum `0xd83672...65e0e5` | ⚠️ Unaudited |
| BucketTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3f5901...819344`; arbitrum `0xa83825...3a29b2` | ⚠️ Unaudited |
| Bulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74a81f...8d80c3` | ⚠️ Unaudited |
| CapsPlusRiskSteward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xadf86b...7e82a7` | ⚠️ Unaudited |
| Comet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x88730d...9f7fae`; polygon `0xb21b06...ad3775` | ⚠️ Unaudited |
| Comet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x50cb5e...4d634e`; polygon `0x27c348...8df4ae`; base `0x1f9d71...b74de4`; base `0xf25212...246445` | ⚠️ Unaudited |
| CometExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x285617...8d45b0`; ethereum `0xe2c1f5...09f030`; polygon `0xa5edbd...905dca`; polygon `0xbde8f3...7b372d`; base `0x2f9e39...29125b`; base `0x8495af...614798`; base `0x88bb8c...2c9c17` | ⚠️ Unaudited |
| CometFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1c1853...db1ae7`; polygon `0x2f9e39...29125b`; polygon `0x8495af...614798`; base `0x27c348...8df4ae` | ⚠️ Unaudited |
| CometProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: ethereum `0x1ec63b...2e8779`; polygon `0x14d2c9...5239c6`; polygon `0xd712ac...b975f9`; base `0xa5edbd...905dca`; base `0xbde8f3...7b372d` | ⚠️ Unaudited |
| CometRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x1b0e76...885a40`; polygon `0x459396...31e581`; polygon `0x8a6ba3...04c6f7`; base `0x123964...00a6b1`; arbitrum `0x88730d...9f7fae` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa17581...93ae94` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc3d688...84cdc3` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xf25212...246445` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x46e6b2...0970bf` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x9c4ec7...ff58bf` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xb125e6...15eb2f` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x9c4ec7...ff58bf` | ⚠️ Unaudited |
| CompoundV3PositionOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77ca11...4fb4a0` | ⚠️ Unaudited |
| Configurator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x316f97...d336e3`; ethereum `0xcfc1fa...80df4f` | ⚠️ Unaudited |
| Configurator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x3b6f1f...8db8b4`; polygon `0xf41274...e964f0` | ⚠️ Unaudited |
| Configurator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x83e0f7...26e738`; polygon `0x9c4ec7...ff58bf` | ⚠️ Unaudited |
| Configurator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x459396...31e581`; base `0x83e0f7...26e738` | ⚠️ Unaudited |
| ConfiguratorLogic | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa84d4...54aaa9` | ⚠️ Unaudited |
| ConstantPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0xd72ac1...4ce0ab`; base `0x9f4856...3bd1cf` | ⚠️ Unaudited |
| EModeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70bf6e...510b5e` | ⚠️ Unaudited |
| esXai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d6c06...f19d6b` | ⚠️ Unaudited |
| esXai2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x5b4116...4e91c9`; arbitrum `0xb38e2e...7b55df` | ⚠️ Unaudited |
| esXai3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x275e64...ed92a3` | ⚠️ Unaudited |
| esXai4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x4c749d...76700c`; arbitrum `0x4efc74...401a62` | ⚠️ Unaudited |
| EsXaiPositionOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x9c0031...736efb`; arbitrum `0xf261d6...7b871a` | ⚠️ Unaudited |
| FeeCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x537708...87f91d` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d69c4...9fc553` | ⚠️ Unaudited |
| GasSubsidy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf20879...bece6a` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x794a61...4814ad` | ⚠️ Unaudited |
| L2Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x15196d...f3ad1f`; arbitrum `0xbcb167...f8813b` | ⚠️ Unaudited |
| LiquidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x398808...21bc6e` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61c66...a81fa3` | ⚠️ Unaudited |
| LlamaPayRouterOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x004e25...c79a8a`; arbitrum `0x0ad0c8...37cfeb`; arbitrum `0x4a0554...551778`; arbitrum `0x73d623...b9f5d1`; arbitrum `0x9c442d...1905b8`; arbitrum `0xe3e278...261cab`; arbitrum `0xff8e5a...298df2` | ⚠️ Unaudited |
| MainnetBulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa397a8...4b00c7` | ⚠️ Unaudited |
| Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0xbbbbbb...eeffcb`; polygon `0x1bf0c2...a25f67`; base `0xbbbbbb...eeffcb`; arbitrum `0x6c247b...518f5e` | ⚠️ Unaudited |
| MultiDepositorVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x29722c...b90b4f`; base `0x29722c...b90b4f` | ⚠️ Unaudited |
| MultiplicativePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x468767...76752c`; base `0x8a6ba3...04c6f7`; base `0xe2aa51...484ae9` | ⚠️ Unaudited |
| NodeLicense | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf76545...4c8c71` | ⚠️ Unaudited |
| NodeLicense10 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x249b8a...343fb6` | ⚠️ Unaudited |
| NodeLicense2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x471f1a...d754ec` | ⚠️ Unaudited |
| NodeLicense3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x60cbd0...3dc4a1`; arbitrum `0x6d9610...be9f4a`; arbitrum `0x9f314b...833941`; arbitrum `0xbee74d...b8a47b`; arbitrum `0xc2b691...8395b2` | ⚠️ Unaudited |
| NodeLicense4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaed4af...cb9b10` | ⚠️ Unaudited |
| NodeLicense5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd6bb9...278734` | ⚠️ Unaudited |
| NodeLicense6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2815b...97ddd1` | ⚠️ Unaudited |
| NodeLicense7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6e535...695be8` | ⚠️ Unaudited |
| NodeLicense8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x14e6e5...76db49`; arbitrum `0xc6bcca...1e2aa0` | ⚠️ Unaudited |
| NodeLicense9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe72b00...876c7f` | ⚠️ Unaudited |
| OptimismBridgeReceiver | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x18281d...3c468a`; base `0xb21b06...ad3775`; base `0xd10b40...4d715e`; base `0xf41274...e964f0` | ⚠️ Unaudited |
| PALMManager | governance | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 6 deployments: ethereum `0x0a7d53...b3013e`; ethereum `0xecf6a0...69c38f`; polygon `0x0a7d53...b3013e`; polygon `0xecf6a0...69c38f`; arbitrum `0x0a7d53...b3013e`; arbitrum `0xecf6a0...69c38f` | ⚠️ Unaudited |
| PALMManager | governance | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 8 deployments: ethereum `0x880d0a...b1c4e8`; ethereum `0x8eebba...92856e`; ethereum `0xf82069...862a89`; ethereum `0xf90ec8...b8877e`; polygon `0x8eebba...92856e`; polygon `0xf90ec8...b8877e`; arbitrum `0x8eebba...92856e`; arbitrum `0xf90ec8...b8877e` | ⚠️ Unaudited |
| PALMManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x8e0cfa...b3d511`; polygon `0x8e0cfa...b3d511`; arbitrum `0x8e0cfa...b3d511` | ⚠️ Unaudited |
| PALMManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0a7d53...b3013e`; base `0x8e0cfa...b3d511` | ⚠️ Unaudited |
| PALMTerms | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 6 deployments: ethereum `0x50763a...2d2890`; ethereum `0xbd39e8...7ce78e`; polygon `0x50763a...2d2890`; polygon `0xbd39e8...7ce78e`; arbitrum `0x50763a...2d2890`; arbitrum `0xbd39e8...7ce78e` | ⚠️ Unaudited |
| PALMTerms | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 6 deployments: ethereum `0x65b87a...95c515`; ethereum `0xb041f6...fad3ee`; polygon `0x65b87a...95c515`; polygon `0xb041f6...fad3ee`; arbitrum `0x65b87a...95c515`; arbitrum `0xb041f6...fad3ee` | ⚠️ Unaudited |
| PALMTerms | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x65b87a...95c515`; base `0xb041f6...fad3ee` | ⚠️ Unaudited |
| ParaSwapDebtSwapAdapterV3 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf85ff...3f69de` | ⚠️ Unaudited |
| PolygonBridgeReceiver | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x18281d...3c468a`; polygon `0xd10b40...4d715e` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x4cd412...cfab84`; ethereum `0xca0e1b...e96a25`; polygon `0x4cd412...cfab84`; polygon `0xca0e1b...e96a25`; base `0xca0e1b...e96a25`; arbitrum `0x4cd412...cfab84`; arbitrum `0xca0e1b...e96a25` | ⚠️ Unaudited |
| PoolBeacon | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x6bc4e6...a5d02b`; arbitrum `0xfb93c2...42d39a` | ⚠️ Unaudited |
| PoolConfigurator | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x04a8d4...205b12`; arbitrum `0x3e05eb...d73fbd` | ⚠️ Unaudited |
| PoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21eec6...61e89e` | ⚠️ Unaudited |
| PoolFactory2 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x2095fe...4a560d`; arbitrum `0x5bfd44...9e1ab3`; arbitrum `0xec287a...ef9715` | ⚠️ Unaudited |
| PoolFactory3 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7f1f9...975e24` | ⚠️ Unaudited |
| PoolLogic | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8be473...ea2e74` | ⚠️ Unaudited |
| PoolProxyDeployer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6773d...eeeec7` | ⚠️ Unaudited |
| Position | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x8638fb...e49642`; ethereum `0xf7cb77...1faf44`; polygon `0x8638fb...e49642`; polygon `0xf7cb77...1faf44`; base `0x8638fb...e49642`; arbitrum `0x8638fb...e49642`; arbitrum `0xf7cb77...1faf44` | ⚠️ Unaudited |
| ProductOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: base `0xaf2762...65cd46`; arbitrum `0x1c4322...2916b3`; arbitrum `0x22f421...5ec6e0`; arbitrum `0x7bfd54...c267fc`; arbitrum `0xc542ec...b86470`; arbitrum `0xef599b...a75cd0` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 23 deployments: ethereum `0x89dc63...2c9ca0`; ethereum `0xc00e8a...9b7b19`; ethereum `0xd0db41...9c0d8a`; ethereum `0xdf4433...d8d8dd`; ethereum `0xe1de7b...5b4baf`; ethereum `0xec0634...8a6fa7`; polygon `0x89dc63...2c9ca0`; polygon `0xc00e8a...9b7b19`; polygon `0xd0db41...9c0d8a`; polygon `0xdf4433...d8d8dd`; polygon `0xe1de7b...5b4baf`; polygon `0xec0634...8a6fa7`; base `0x89dc63...2c9ca0`; base `0xc00e8a...9b7b19`; base `0xd0db41...9c0d8a`; base `0xdf4433...d8d8dd`; arbitrum `0x89dc63...2c9ca0`; arbitrum `0xc00e8a...9b7b19`; arbitrum `0xd0db41...9c0d8a`; arbitrum `0xd88c8e...6b1723`; arbitrum `0xdf4433...d8d8dd`; arbitrum `0xe1de7b...5b4baf`; arbitrum `0xec0634...8a6fa7` | ⚠️ Unaudited |
| QuotientOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xc5973f...8d513e`; base `0xd01517...fd3c28` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x382dfd...a1cdf4` | ⚠️ Unaudited |
| RedStoneNavProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x6336b0...533cd9`; polygon `0x6c4bde...73a161`; polygon `0x72cbe3...6a1097` | ⚠️ Unaudited |
| Referee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29a7b9...35a3b6` | ⚠️ Unaudited |
| Referee10 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1f122b...27955e`; arbitrum `0x4f1894...ce47c4` | ⚠️ Unaudited |
| Referee11 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x206cd4...eb6c97`; arbitrum `0x9e3e14...621baf`; arbitrum `0xf8aaa0...b239c7` | ⚠️ Unaudited |
| Referee2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x411025...dad474` | ⚠️ Unaudited |
| Referee3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10eda4...3236c1` | ⚠️ Unaudited |
| Referee4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x254954...f496c1` | ⚠️ Unaudited |
| Referee5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x553862...0eb4cd` | ⚠️ Unaudited |
| Referee6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x680f4a...0c837c` | ⚠️ Unaudited |
| Referee7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff38aa...1d021c` | ⚠️ Unaudited |
| Referee8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x23173c...edb9d8`; arbitrum `0x2336b6...61eb6f`; arbitrum `0x609152...b049fe`; arbitrum `0x7fbbc1...225e3b`; arbitrum `0xcd1717...1d9c13`; arbitrum `0xf83de4...fec66f` | ⚠️ Unaudited |
| Referee9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x119b21...5a70dc`; arbitrum `0xfca265...1d2d40` | ⚠️ Unaudited |
| RefereeCalculations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x148859...a00c1e`; arbitrum `0x5a1959...ebc3e2` | ⚠️ Unaudited |
| RewardsController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f4d15...452731` | ⚠️ Unaudited |
| ScalingPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x23a982...bb5549`; base `0x59e242...7f7cd6` | ⚠️ Unaudited |
| SecuritizeInternalNavProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x8636eb...8a14fc`; polygon `0xe3b18d...d990f2` | ⚠️ Unaudited |
| Settlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8f1a71...1ecd6a` | ⚠️ Unaudited |
| SimpleManager | governance | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 6 deployments: ethereum `0x3522df...c811e1`; ethereum `0x64ab6c...d9a9fa`; polygon `0x3522df...c811e1`; polygon `0x64ab6c...d9a9fa`; arbitrum `0x3522df...c811e1`; arbitrum `0x64ab6c...d9a9fa` | ⚠️ Unaudited |
| SimpleManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3522df...c811e1`; base `0x64ab6c...d9a9fa` | ⚠️ Unaudited |
| SingleDepositorVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x8f1fdb...e25aeb`; base `0x8f1fdb...e25aeb`; arbitrum `0xaec411...de1524`; arbitrum `0xcb437d...f4873c`; arbitrum `0xe65865...6005bb`; arbitrum `0xe8b4b4...49b3c1`; arbitrum `0xef9979...640d93` | ⚠️ Unaudited |
| StableDebtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x0c2c95...e6c4f7`; arbitrum `0x82dccf...ae7778` | ⚠️ Unaudited |
| StakingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x599c84...a29443` | ⚠️ Unaudited |
| StakingPool3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x5f9d16...0087c7`; arbitrum `0xdfe837...be6b83` | ⚠️ Unaudited |
| StataOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd61bf9...00e5cb` | ⚠️ Unaudited |
| StataTokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb4c71...ba83c7` | ⚠️ Unaudited |
| StataTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86b752...a9eb52` | ⚠️ Unaudited |
| StaticATokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x1f39d9...07521d`; arbitrum `0x764594...251460`; arbitrum `0x79b5e9...3d4e93`; arbitrum `0xe9e520...ba2a54` | ⚠️ Unaudited |
| StaticATokenLM | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x4c0633...51c70a`; arbitrum `0x729b3e...f06766`; arbitrum `0x9bf9df...62981e`; arbitrum `0xc026f5...8d996b` | ⚠️ Unaudited |
| SupplyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb04280...ba86d2` | ⚠️ Unaudited |
| SwapPermissionsPayload | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x209ad9...a0023b` | ⚠️ Unaudited |
| TempProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x880d0a...b1c4e8` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: polygon `0x1b2e88...8437e9`; polygon `0xcc3e7c...dd4a02`; base `0x1b2e88...8437e9`; base `0x3b6f1f...8db8b4`; base `0x88730d...9f7fae`; base `0xcc3e7c...dd4a02` | ⚠️ Unaudited |
| TinyKeysAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0209a0...6c7eb0`; arbitrum `0x765fa6...aa1577` | ⚠️ Unaudited |
| TinyKeysAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa670bb...d42c5b` | ⚠️ Unaudited |
| TransparentProxyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b643d...318429` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x4cb9a7...8c9d66`; arbitrum `0x68d78d...1af4fd`; arbitrum `0x94f4ab...183c97`; arbitrum `0x9d9c7d...453a21`; arbitrum `0xa5edbd...905dca`; arbitrum `0xbc14d8...0b6b66`; arbitrum `0xcd6236...d5e95f`; arbitrum `0xf9e086...38b8e5`; arbitrum `0xfd4104...671198` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a8d4d...e2e5db` | ⚠️ Unaudited |
| Underlying | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x39b989...3b780a`; ethereum `0x3b8d59...bc0988`; ethereum `0x92cb4f...7c2bd2`; polygon `0x39b989...3b780a`; polygon `0x3b8d59...bc0988`; polygon `0x92cb4f...7c2bd2`; base `0x39b989...3b780a`; arbitrum `0x39b989...3b780a`; arbitrum `0x3b8d59...bc0988`; arbitrum `0x92cb4f...7c2bd2` | ⚠️ Unaudited |
| UpgradePayload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x13f331...9a9b18`; arbitrum `0x19ed0c...9d2df2`; arbitrum `0x4daf1a...fb371d`; arbitrum `0x713bea...ad0849`; arbitrum `0xaddb96...1d1f74`; arbitrum `0xb660d9...966a32`; arbitrum `0xf5ea8a...a6397a` | ⚠️ Unaudited |
| V301UpgradePayload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3cd1df...d81e0a` | ⚠️ Unaudited |
| VariableDebtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x5e76e9...523f39`; arbitrum `0xe427fc...da87a0` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ab6a9...ba0d2d` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x1401bf...cf6df6`; arbitrum `0x5283be...4264ff`; arbitrum `0x5760e3...99f8c3`; arbitrum `0xecd4bd...f1fafb` | ⚠️ Unaudited |
| WstETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f67e4...f48e79` | ⚠️ Unaudited |
| Xai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3fb787...42e6af` | ⚠️ Unaudited |
| Xai2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd00c1a...969f35` | ⚠️ Unaudited |
| XaiGaslessClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x149107...abafe0`; arbitrum `0x3be022...61772d` | ⚠️ Unaudited |
| XaiGaslessClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb13f33...8d627d` | ⚠️ Unaudited |
| XaiRedEnvelope | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x080c2e...380ff2`; arbitrum `0xf26af8...eeb70f` | ⚠️ Unaudited |
| XaiVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc051f0...b1f84f` | ⚠️ Unaudited |
| XaiVoting2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5fb7f...dde7f3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RouterSwapExecutor | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x25e9b0...dd7b96`; polygon `0x25e9b0...dd7b96`; base `0x25e9b0...dd7b96`; arbitrum `0x25e9b0...dd7b96` | ⚠️ Unaudited (bytecode match) |
| RouterSwapResolver | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2ce9e8...9fda51`; polygon `0x2ce9e8...9fda51`; base `0x2ce9e8...9fda51`; arbitrum `0x2ce9e8...9fda51` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (77)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x001b7f...2e71e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x032c7e...45603e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c1f49...5e8d5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1395c3...e77b09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x277e02...66933c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44b0e0...6f6335` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c3c50...39d124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5003e9...b6fa2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x574b57...0156e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x633715...59db4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b8d44...5ea404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d2727...f8a999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84adef...d7c527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8be29e...822f7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2c7a7...2e9084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4babd...d9ae15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc61490...554ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1eb72...aa229d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9e4ee...a1cae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5f375...c0fa47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefb835...30ef02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00be76...fa4648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01bc0c...3cf69f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08fa32...9d4ec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a2415...55ad25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a593d...4fefae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a8463...b84d16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1bce25...ec4820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e76ba...447097` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x267226...41ca2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x27df45...836097` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x34bd60...0f0c2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40c7ea...7c4dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x482ccf...2afa70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x505079...32283a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5bc881...bc9436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6116a7...159086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x655641...4f7529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x673ff9...4dfb3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6e9c88...5def12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x787e41...f1c71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7c5809...c2e958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7dc2a9...e2bbb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7dc2df...4470a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e5c3b...a40d61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f74d3...c47ff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83780e...637d1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83cd3d...cfd9b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x89eb01...c5607c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x92dbc1...d6af17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x94491d...25c233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97449b...11f7a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9b7b11...0f1852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xace21f...d09e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb3059c...5db286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb97b1d...3b05fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc542ec...b86470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc6a2c9...32e923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca4acb...62a8f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc7c85...93af61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf9b6c...4aa831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd1eb72...aa229d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd5afab...220619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd9a442...306a72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe6002e...7c9d09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeaf479...3cb379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa6295...3c50ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7e334d...8dd004` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378464 | `0x833589...a02913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b76b1...47ea4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d4cfe...4c81f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b3400...94bdfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5cd0cb...5c53e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85b3a2...9d876e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a3a63...f44b37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5973f...8d513e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde7c8e...b41a10` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2023-09-22.pdf](https://github.com/aera-finance/aera-contracts-public/blob/main/v2/audits/spearbit/2023-09-22.pdf) | Spearbit | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [634d46596f6b027c1bb27d92_Aera Report.pdf](https://cdn.prod.website-files.com/62cd150e5e9efc960319c44d/634d46596f6b027c1bb27d92_Aera%20Report.pdf) | Unknown | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf](https://cdn.prod.website-files.com/62cd150e5e9efc960319c44d/652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf) | Spearbit | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view](https://drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view?usp=sharing) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 41 | high |
| [2024-05-15.pdf](https://github.com/aera-finance/aera-contracts-public/blob/main/v2/audits/openzeppelin/2024-05-15.pdf) | OpenZeppelin | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12621] 2023-09-22.pdf — no match: Extracted from Executive Summary and findings context. Audit date from cover page: September 22, 2023.
- [12622] 634d46596f6b027c1bb27d92_Aera Report.pdf — no match: Extracted from executive summary and findings; report date is October 16, 2022.
- [12623] 652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf — no match: Extracted from Executive Summary and findings context. Audit date from report cover page.
- [12624] drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view — no match: Extracted contract names from findings context, test files, and PoC. No explicit scope section found; audit date from report header.
- [12625] 2024-05-15.pdf — no match: All files listed in the Scope section are extracted. The audit date is from the document header: 'May 15, 2024'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2023-09-22.pdf | AeraVaultV2 | unmatched — not counted | — | listed in scope | no |
| 2023-09-22.pdf | AeraVaultAssetRegistry | unmatched — not counted | — | listed in scope | no |
| 2023-09-22.pdf | AeraVaultHooks | unmatched — not counted | — | listed in scope | no |
| 2023-09-22.pdf | AeraVaultV2Factory | unmatched — not counted | — | listed in scope | no |
| 634d46596f6b027c1bb27d92_Aera Report.pdf | AeraVaultV1 | unmatched — not counted | — | listed in scope and findings | no |
| 634d46596f6b027c1bb27d92_Aera Report.pdf | PermissiveWithdrawalValidator | unmatched — not counted | — | listed in findings | no |
| 634d46596f6b027c1bb27d92_Aera Report.pdf | IWithdrawalValidator | unmatched — not counted | — | listed in findings | no |
| 634d46596f6b027c1bb27d92_Aera Report.pdf | IManagerAPI | unmatched — not counted | — | listed in findings | no |
| 634d46596f6b027c1bb27d92_Aera Report.pdf | IAeraVaultV1 | unmatched — not counted | — | listed in findings | no |
| 652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf | AeraVaultV2 | unmatched — not counted | — | listed in scope | no |
| 652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf | AeraVaultAssetRegistry | unmatched — not counted | — | listed in scope | no |
| 652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf | AeraVaultHooks | unmatched — not counted | — | listed in scope | no |
| 652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf | AeraVaultV2Factory | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | BaseSlippageHooks | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | BaseVault | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | CallbackHandler | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | CCTPHooks | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | OracleRegistry | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Provisioner | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | SingleDepositorVault | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | FeeVault | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | BaseFeeCalculator | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | PriceAndFeeCalculator | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | DelayedFeeCalculator | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | MultiDepositorVault | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Auth2Step | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Auth | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | TransferWhitelistHooks | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | TransferBlacklistHooks | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | BasicMerkleRootProvider | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | CalldataReaderLib | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | HooksLibrary | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Whitelist | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Forwarder | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Constants | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | OracleDataLibrary | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | IOracle | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | IBaseVault | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Types | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | UniswapV3DexHooks | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | MockUniswapV3DexHooks | unmatched — not counted | — | mentioned in test file | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | MockFeeVaultFactory | unmatched — not counted | — | mentioned in test file | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | MockERC20 | unmatched — not counted | — | mentioned in test file | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | AttackERC20 | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | NestedSwapForkTest | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | TestForkBaseHooks | unmatched — not counted | — | mentioned in test file | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | IMetaAggregationRouterV2 | unmatched — not counted | — | mentioned in findings context | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | ISwapRouter | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | IUniswapV3Pool | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | IUniswapV3Factory | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | INonfungiblePositionManager | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | ICallee | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | MerkleHelper | unmatched — not counted | — | mentioned in PoC | no |
| drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view | Encoder | unmatched — not counted | — | mentioned in PoC | no |
| 2024-05-15.pdf | ILlamaPayRouterOracle | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | IExecutor | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | IAeraV2Oracle | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | ILlamaPayRouterOracleTypes | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | LlamaPayRouterOracle | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | Executor | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | AbstractAssetOracle | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 125 |
| upstream | 22 |
| standard_library | 30 |
| needs_review | 63 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 61 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: n/a

Zero-match audit list:

- [12621] 2023-09-22.pdf
- [12622] 634d46596f6b027c1bb27d92_Aera Report.pdf
- [12623] 652fe9fa1c0d6f6c0e0876d6_Aera-Spearbit-Security-Review-Aug2023.pdf
- [12624] drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view
- [12625] 2024-05-15.pdf

Fork inheritance lineage and inherited audits are included when available.
