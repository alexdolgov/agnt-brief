# Agentic Audit Brief: SMARDEX Ecosystem

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 4 audit(s)
- Eligible audit results: 5 (4 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: SMARDEX Ecosystem (`smardex-ecosystem`)
- Website: [https://smardex.io](https://smardex.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, bsc, ethereum, polygon
- Contract surface: 58 unique implementations (107 raw deployments)
- Coverage basis: 6/9 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,263,024.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SMARDEX Ecosystem. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 31 contract row(s) across arbitrum, base, bsc, ethereum, polygon. Structural roles: 15 core, 9 unclassified, 7 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 31
- Structural roles: core (15), unclassified (9), supporting (7)
- Contract kinds: contract (31)
- Detected standards: ownable (7), erc165 (4), erc20 (4), erc20permit (3), ownable2step (2), accesscontrol (1)
- Frameworks: openzeppelin (22), solady (4), openzeppelin-upgradeable (3), solmate (1), uniswap (1), uniswap-v2 (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ERC1967Proxy (`0x656cb8c6d154aad29d8771384089be5b5141f01a`, chain 1)
- FarmingRange (`0x7d85c0905a6e1ab5837a0b57cd94a419d3a77523`, chain 1)
- Rebalancer (`0xaebcc85a5594e687f6b302405e6e92d616826e03`, chain 1)
- SmardexToken (`0x5de8ab7e27f6e7a1fff3e5b337584aa43961beef`, chain 1)
- UniversalRouter (`0x49f66b1616865b2a59caecb8352bbf2ac80983e1`, chain 1)
- Usdn (`0xde17a000ba631c5d7c2bd9fb692efea52d90dee2`, chain 1)
- UsdnLongFarming (`0xf9d36078a248af249aa57ae1d5d0c1033d6bbe27`, chain 1)
- VaultProxy (`0xf67e2dc041b8a3c39d066037d29f500757b1e886`, chain 1)
- Wusdn (`0x99999999999999cc837c997b882957dafdcb1af9`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 31; live-surface rows included: 31 (12 live, 19 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/30 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/9 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 21 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 28 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 11 of 58 unique; 47 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/58
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 58
- Raw deployments: 107
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BailSec | Tier 2 | 6 | 10.3% | 2025-03 |
| Guardian | Tier 2 | 4 | 6.9% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LiquidationRewardsManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254925 | `0x9514d3496f46572e8461da381b200812d5db202c` | ✅ Audited |
| Rebalancer | adapter | project_anchor | own_supporting | 0 | ethereum | unit-254927 | `0xaebcc85a5594e687f6b302405e6e92d616826e03` | ✅ Audited |
| UniversalRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-254921 | `0x49f66b1616865b2a59caecb8352bbf2ac80983e1` | ✅ Audited |
| Usdn | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254931 | `0xde17a000ba631c5d7c2bd9fb692efea52d90dee2` | ✅ Audited |
| WstEthOracleMiddleware | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254929 | `0xc1459fcfe23d5db9ddb04935ab7a426bd398eab0` | ✅ Audited |
| Wusdn | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254926 | `0x99999999999999cc837c997b882957dafdcb1af9` | ✅ Audited |

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Accumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48d19891158223530e336c2290fa977d935cbaf7` | ⚠️ Unaudited |
| AiWhitelister | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9e0b1b9156e27a55ea9d53e81380651443b737d` | ⚠️ Unaudited |
| AutoSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x346c0ca93354383a31d78d4944290d51f3b3f920`; ethereum `0x7e473d028b80ad6408eb9fc1a54b4584cad69231`; ethereum `0x865d61582abc2ccd85549774cee171280fe82e3e`; ethereum `0xf25768968b0de2e9973ae47bb3d79ad5c8f6a9d4` | ⚠️ Unaudited |
| AutoSwapperL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 9 deployments: ethereum `0x2d2a9a8b734eecfde916dbdf3a9850d903d384ed`; bsc `0x41a00e3fbe7f479a99ba6822704d9c5deb611f22`; bsc `0xcff24ade26ad0043f637279c08ed6f6959fa9835`; polygon `0x561a557737426ececc07c898e23fce571f52db32`; polygon `0x8ef71fde0681f567d241a2cb7f2ae46d6d709d30`; base `0x02fb6161eb60d653a951bf71993cda7bef9f3e02`; base `0x7240aac0f57fa0126c107673597ce3cd5b907e38`; arbitrum `0x89c64b435947bfc0bf74b645f088d67206f0cc54`; arbitrum `0xd978bb7a7ae5b01116d1bd714fedd1b77ca9e75b` | ⚠️ Unaudited |
| DoubleEndedQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30246df2cb213d3522dd1ca1f1f8740d4e883f14` | ⚠️ Unaudited |
| ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: ethereum `0x49e9366c8733c96485632ba7f662d1bfd860dcce`; ethereum `0xe47f8ba48d155383e1b2c4654833bde2b0e8b44a`; bsc `0x7bc796aa36f462d98aea94c4be5859a5b176458c`; polygon `0x2662b8b1bda7e5810c1f080f302cb8de0a81ad6c`; base `0xedd758d17175dc9131992ebd02f55cc4ebeb7b7c`; arbitrum `0x26727794764e66aaae50a4ec518e24a00544fcc9` | ⚠️ Unaudited |
| FarmingRange | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254923 | `0x7d85c0905a6e1ab5837a0b57cd94a419d3a77523` | ⚠️ Unaudited |
| FarmingRange | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254941 | `0xb891aeb2130805171796644a2af76fc7ff25a0b9` | ⚠️ Unaudited |
| FarmingRange | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-254933 | `0x7db73a1e526db36c40e508b09428420c1fa8e46b` | ⚠️ Unaudited |
| FarmingRange | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254942 | `0xa5d378c05192e3f1f365d6298921879c4d51c5a3` | ⚠️ Unaudited |
| FarmingRangeL2Arbitrum | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254937 | `0x53d165df0414bd02e91747775450934bf2257f69` | ⚠️ Unaudited |
| FarmingToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce1bc72a070349cb444743ec3b2b4d8bf398daf5` | ⚠️ Unaudited |
| PUMP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x24575e1250467f1a90a1c16f1e921c1674b70e6e`; ethereum `0x44a7d8430464ba59d07f83d4fa6092b039fed13f` | ⚠️ Unaudited |
| RewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x25c4b95f00a01d3739815f026c52126f44034837`; ethereum `0xc049c7fe5eaa024095861212bd8a8e8df88a2b1f` | ⚠️ Unaudited |
| RewardManagerL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: bsc `0x8ef71fde0681f567d241a2cb7f2ae46d6d709d30`; polygon `0x391becc8daaf32b9ba8e602e9527bf9da04c8deb`; base `0xd978bb7a7ae5b01116d1bd714fedd1b77ca9e75b` | ⚠️ Unaudited |
| RewardManagerL2Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c622dcc96b6d96ac6c154f99cf081815094cbc9` | ⚠️ Unaudited |
| RewardManagerWithdrawable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x40a8ee345887c7e92a24c3cd57a191d1b2d6f3cf`; bsc `0xde0ceb9fca050f30f07a7187beffbbbe6a04055a`; polygon `0xab3699b71e89a53c529ec037c3389b5a2caf545a`; base `0xccfdbee02f8216e4f4da392a54e425285613cf2c` | ⚠️ Unaudited |
| RewardManagerWithdrawableArbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x863799a120edd11ca8718a3a93f1beb138a97c41` | ⚠️ Unaudited |
| SmarDexDegen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x85bcb7da3cd1782489d5331bc24a4bc806ec16a5`; bsc `0xd48d45ca7f39811c2f9d8270e6af7ad9c0be78a7`; polygon `0x671e5ea2ae9efc707132cb82e27b9f78ab867837`; base `0x45f23f8ca9b5a4b6c22aaa451920be4566bc6d6e`; arbitrum `0x894abf02947e840ee3501fba393aedd50011b739` | ⚠️ Unaudited |
| SmardexFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3aedcb9e2f3d70f67f2116592f68f370c02d7e81`; ethereum `0x74333736a0ea8d1d3607a848a458618e1f882abb`; ethereum `0x7753f36e711b66a0350a753aba9f5651bae76a1d` | ⚠️ Unaudited |
| SmardexFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254928 | `0xb878dc600550367e14220d4916ff678fb284214f` | ⚠️ Unaudited |
| SmardexFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254939 | `0xa8ef6fea013034e62e2c4a9ec1cdb059fe23af33` | ⚠️ Unaudited |
| SmardexFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-254934 | `0x9a1e1681f6d59ca051776410465afada6384398f` | ⚠️ Unaudited |
| SmardexFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254943 | `0xdd4536dd9636564d891c919416880a3e250f975a` | ⚠️ Unaudited |
| SmardexFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254936 | `0x41a00e3fbe7f479a99ba6822704d9c5deb611f22` | ⚠️ Unaudited |
| SmardexPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3a4b8efe3e3049f6bc71b47ccb7ce6665420179` | ⚠️ Unaudited |
| SmardexRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x3403868cd7368b3c12d03ec677fe1d5c9e8b1764`; ethereum `0x3cd4351ce89db404ca87457c3d7c89d2f9a5d13c`; ethereum `0x926c777c091a5a070dc24ac94ff498b5a556f92a`; ethereum `0x9a5132e149c547f254c73226da7f770d43d9ea44`; ethereum `0xb3ef1cd0069d15987b7ef8fc698ca2d3792245eb`; ethereum `0xef2f9b48d7ec80440ab4573df1a2abdbe06d3f60`; bsc `0x391becc8daaf32b9ba8e602e9527bf9da04c8deb`; polygon `0xa8ef6fea013034e62e2c4a9ec1cdb059fe23af33`; base `0x5c622dcc96b6d96ac6c154f99cf081815094cbc9`; arbitrum `0xdd4536dd9636564d891c919416880a3e250f975a` | ⚠️ Unaudited |
| SmardexRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254930 | `0xc33984abcae20f47a754ef78f6526fef266c0c6f` | ⚠️ Unaudited |
| SmardexRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254940 | `0xab3699b71e89a53c529ec037c3389b5a2caf545a` | ⚠️ Unaudited |
| SmardexRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-254935 | `0xedd758d17175dc9131992ebd02f55cc4ebeb7b7c` | ⚠️ Unaudited |
| SmardexRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254944 | `0xf03d133627364e5eddab8134fab3a030cf7b3020` | ⚠️ Unaudited |
| SmardexRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254938 | `0xda3970a20cdc2b1269fc96c4e8d300e0fddb7b3d` | ⚠️ Unaudited |
| SmardexToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x037768ddeddb392201d1a31ce05f0b7013043a0c`; ethereum `0x1b6476f672d0d00f8a7bb90d95056b9ed58a2670`; ethereum `0x337cdb4a10732b0e7a30f4e47dc94dc5ba83bc67`; ethereum `0x52e7b23e1faba6d83376725e2ccad75efbd8736e`; ethereum `0x825f1c65dab9684db454e26030ea89e344e07fff`; ethereum `0xa333c0006ac21f0d934e9daaf3d5c61dc2fa1f3f`; ethereum `0xa8e3b78997b70c1dc702e36a6ca94dd1fa29b08b`; ethereum `0xc1d81e0da5fe0880271dadfe5f9b683fc07c63e9`; ethereum `0xd60c2ea8fa50fe7d8c8aca042378731832020848`; ethereum `0xd82b365f821e42009c217ec103941b5f1532da53`; ethereum `0xedcd18ff9a17dbc3485d7cb97a41a9b12d61f1ec` | ⚠️ Unaudited |
| SmardexToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254922 | `0x5de8ab7e27f6e7a1fff3e5b337584aa43961beef` | ⚠️ Unaudited |
| Staking | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254924 | `0x80497049b005fd236591c3cd431dbd6e06eb1a31` | ⚠️ Unaudited |
| TickMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea243413bf5674d5b674e97beaa505a26441e943` | ⚠️ Unaudited |
| TokenImplementation | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254949 | `0xfdc66a08b0d0dc44c17bbd471b88f49f50cdd20f` | ⚠️ Unaudited |
| TokenImplementation | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-254947 | `0x6899face15c14348e1759371049ab64a3a06bfa6` | ⚠️ Unaudited |
| TokenImplementation | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-254950 | `0xfd4330b0312fdeec6d4225075b82e00493ff2e3f` | ⚠️ Unaudited |
| TokenImplementation | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-254948 | `0xabd587f2607542723b17f14d00d99b987c29b074` | ⚠️ Unaudited |
| UsdnLongFarming | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254932 | `0xf9d36078a248af249aa57ae1d5d0c1033d6bbe27` | ⚠️ Unaudited |
| UsdnProtocolActionsLongLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffc37455f53cbc0360ef3f3cccb6a967e1ae2a45` | ⚠️ Unaudited |
| UsdnProtocolActionsUtilsLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf13fa20fa5128b1ea37559d407285962a2b7ffe` | ⚠️ Unaudited |
| UsdnProtocolCoreLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0de8af2200c88a51b1a53d640729ed459acfba38` | ⚠️ Unaudited |
| UsdnProtocolFallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4e615ab327324e9f2bb492c42d47ee8213959c0` | ⚠️ Unaudited |
| UsdnProtocolImpl | unknown | project_anchor | own_supporting | 1 | ethereum | unit-254945 | 2 deployments: ethereum `0x271df5517a4daacb7cab988aa64d23debda4c498`; ethereum `0x656cb8c6d154aad29d8771384089be5b5141f01a` | ⚠️ Unaudited |
| UsdnProtocolLongLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x932a7755749879426925e7d977afa6baa64a3455` | ⚠️ Unaudited |
| UsdnProtocolSettersLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea10c7fceb16779234e0a5ebe7e963df2c7f136a` | ⚠️ Unaudited |
| UsdnProtocolVaultLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a3b25f3de702ff2209ef4c11e80bd97bb6d53eb` | ⚠️ Unaudited |
| Usdnr | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82957d600963ae0c529c3819ac7c349c4d49269b` | ⚠️ Unaudited |
| VaultLib | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-254946 | `0xf67e2dc041b8a3c39d066037d29f500757b1e886` | ⚠️ Unaudited |
| WusdnVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6d14921219a7be3660268495275937eb324d967` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 75
- Live contracts: 4
- Unknown liveness contracts: 71
- Source-verified contracts: 75
- Currently scope-matched contracts retained as-is: 2
- Classification counts: currently scope matched=2, candidate review=55, contamination review=1, exact address book overlap=1, source verified unclassified=16

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | LiquidationRewardsManager<br>`0x9514d3496f46572e8461da381b200812d5db202c` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6ac005d9a24a22c3c95107466cf06f1c90b3ce42` |
| currently scope matched | WstEthOracleMiddleware<br>`0xc1459fcfe23d5db9ddb04935ab7a426bd398eab0` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6ac005d9a24a22c3c95107466cf06f1c90b3ce42` |
| candidate review | Accumulator<br>`0x48d19891158223530e336c2290fa977d935cbaf7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6ac005d9a24a22c3c95107466cf06f1c90b3ce42` |
| candidate review | DoubleEndedQueue<br>`0x30246df2cb213d3522dd1ca1f1f8740d4e883f14` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6ac005d9a24a22c3c95107466cf06f1c90b3ce42` |
| candidate review | ERC20<br>`0x49e9366c8733c96485632ba7f662d1bfd860dcce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcaec63ce78a0d4dab2b5112295789a542a0fdaee` |
| candidate review | ERC20<br>`0xe47f8ba48d155383e1b2c4654833bde2b0e8b44a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | FarmingToken<br>`0xce1bc72a070349cb444743ec3b2b4d8bf398daf5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6ac005d9a24a22c3c95107466cf06f1c90b3ce42` |
| candidate review | PUMP<br>`0x24575e1250467f1a90a1c16f1e921c1674b70e6e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcaec63ce78a0d4dab2b5112295789a542a0fdaee` |
| candidate review | PUMP<br>`0x44a7d8430464ba59d07f83d4fa6092b039fed13f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcaec63ce78a0d4dab2b5112295789a542a0fdaee` |
| candidate review | RewardManager<br>`0x25c4b95f00a01d3739815f026c52126f44034837` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcaec63ce78a0d4dab2b5112295789a542a0fdaee` |
| candidate review | RewardManager<br>`0xc049c7fe5eaa024095861212bd8a8e8df88a2b1f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcaec63ce78a0d4dab2b5112295789a542a0fdaee` |
| candidate review | RewardManagerWithdrawable<br>`0x40a8ee345887c7e92a24c3cd57a191d1b2d6f3cf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | SmardexFactory<br>`0x3aedcb9e2f3d70f67f2116592f68f370c02d7e81` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | SmardexFactory<br>`0x74333736a0ea8d1d3607a848a458618e1f882abb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | SmardexFactory<br>`0x7753f36e711b66a0350a753aba9f5651bae76a1d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcaec63ce78a0d4dab2b5112295789a542a0fdaee` |
| candidate review | SmardexFactory<br>`0xb878dc600550367e14220d4916ff678fb284214f` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | SmardexRouter<br>`0x3403868cd7368b3c12d03ec677fe1d5c9e8b1764` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | SmardexRouter<br>`0x3cd4351ce89db404ca87457c3d7c89d2f9a5d13c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | SmardexRouter<br>`0xb3ef1cd0069d15987b7ef8fc698ca2d3792245eb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcaec63ce78a0d4dab2b5112295789a542a0fdaee` |
| candidate review | SmardexRouter<br>`0xef2f9b48d7ec80440ab4573df1a2abdbe06d3f60` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcaec63ce78a0d4dab2b5112295789a542a0fdaee` |
| candidate review | SmardexToken<br>`0x037768ddeddb392201d1a31ce05f0b7013043a0c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcaec63ce78a0d4dab2b5112295789a542a0fdaee` |
| candidate review | SmardexToken<br>`0x1b6476f672d0d00f8a7bb90d95056b9ed58a2670` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcaec63ce78a0d4dab2b5112295789a542a0fdaee` |
| candidate review | SmardexToken<br>`0x337cdb4a10732b0e7a30f4e47dc94dc5ba83bc67` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcaec63ce78a0d4dab2b5112295789a542a0fdaee` |
| candidate review | SmardexToken<br>`0x825f1c65dab9684db454e26030ea89e344e07fff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcaec63ce78a0d4dab2b5112295789a542a0fdaee` |
| candidate review | SmardexToken<br>`0xa8e3b78997b70c1dc702e36a6ca94dd1fa29b08b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcaec63ce78a0d4dab2b5112295789a542a0fdaee` |
| candidate review | SmardexToken<br>`0xc1d81e0da5fe0880271dadfe5f9b683fc07c63e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcaec63ce78a0d4dab2b5112295789a542a0fdaee` |
| candidate review | SmardexToken<br>`0xd60c2ea8fa50fe7d8c8aca042378731832020848` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcaec63ce78a0d4dab2b5112295789a542a0fdaee` |
| candidate review | SmardexToken<br>`0xd82b365f821e42009c217ec103941b5f1532da53` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcaec63ce78a0d4dab2b5112295789a542a0fdaee` |
| candidate review | SmardexToken<br>`0xedcd18ff9a17dbc3485d7cb97a41a9b12d61f1ec` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xcaec63ce78a0d4dab2b5112295789a542a0fdaee` |
| candidate review | TickMath<br>`0xea243413bf5674d5b674e97beaa505a26441e943` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6ac005d9a24a22c3c95107466cf06f1c90b3ce42` |
| candidate review | UsdnProtocolActionsLongLibrary<br>`0xffc37455f53cbc0360ef3f3cccb6a967e1ae2a45` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6ac005d9a24a22c3c95107466cf06f1c90b3ce42` |
| candidate review | UsdnProtocolActionsUtilsLibrary<br>`0xaf13fa20fa5128b1ea37559d407285962a2b7ffe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6ac005d9a24a22c3c95107466cf06f1c90b3ce42` |
| candidate review | UsdnProtocolCoreLibrary<br>`0x0de8af2200c88a51b1a53d640729ed459acfba38` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6ac005d9a24a22c3c95107466cf06f1c90b3ce42` |
| candidate review | UsdnProtocolFallback<br>`0xd4e615ab327324e9f2bb492c42d47ee8213959c0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6ac005d9a24a22c3c95107466cf06f1c90b3ce42` |
| candidate review | UsdnProtocolImpl<br>`0x271df5517a4daacb7cab988aa64d23debda4c498` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x6ac005d9a24a22c3c95107466cf06f1c90b3ce42` |
| candidate review | UsdnProtocolLongLibrary<br>`0x932a7755749879426925e7d977afa6baa64a3455` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6ac005d9a24a22c3c95107466cf06f1c90b3ce42` |
| candidate review | UsdnProtocolSettersLibrary<br>`0xea10c7fceb16779234e0a5ebe7e963df2c7f136a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6ac005d9a24a22c3c95107466cf06f1c90b3ce42` |
| candidate review | UsdnProtocolVaultLibrary<br>`0x5a3b25f3de702ff2209ef4c11e80bd97bb6d53eb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6ac005d9a24a22c3c95107466cf06f1c90b3ce42` |
| candidate review | ERC20<br>`0x7bc796aa36f462d98aea94c4be5859a5b176458c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | RewardManagerL2<br>`0x8ef71fde0681f567d241a2cb7f2ae46d6d709d30` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | RewardManagerWithdrawable<br>`0xde0ceb9fca050f30f07a7187beffbbbe6a04055a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | SmardexFactory<br>`0xa8ef6fea013034e62e2c4a9ec1cdb059fe23af33` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | SmardexRouter<br>`0x391becc8daaf32b9ba8e602e9527bf9da04c8deb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | ERC20<br>`0x2662b8b1bda7e5810c1f080f302cb8de0a81ad6c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | RewardManagerL2<br>`0x391becc8daaf32b9ba8e602e9527bf9da04c8deb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | RewardManagerWithdrawable<br>`0xab3699b71e89a53c529ec037c3389b5a2caf545a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | SmardexFactory<br>`0x9a1e1681f6d59ca051776410465afada6384398f` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | SmardexRouter<br>`0xa8ef6fea013034e62e2c4a9ec1cdb059fe23af33` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | ERC20<br>`0xedd758d17175dc9131992ebd02f55cc4ebeb7b7c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | RewardManagerL2<br>`0xd978bb7a7ae5b01116d1bd714fedd1b77ca9e75b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | RewardManagerWithdrawable<br>`0xccfdbee02f8216e4f4da392a54e425285613cf2c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | SmardexFactory<br>`0xdd4536dd9636564d891c919416880a3e250f975a` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | ERC20<br>`0x26727794764e66aaae50a4ec518e24a00544fcc9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | RewardManagerL2Arbitrum<br>`0x5c622dcc96b6d96ac6c154f99cf081815094cbc9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | RewardManagerWithdrawableArbitrum<br>`0x863799a120edd11ca8718a3a93f1beb138a97c41` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | SmardexFactory<br>`0x41a00e3fbe7f479a99ba6822704d9c5deb611f22` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| candidate review | SmardexRouter<br>`0xdd4536dd9636564d891c919416880a3e250f975a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| contamination review | SmarDexDegen<br>`0x45f23f8ca9b5a4b6c22aaa451920be4566bc6d6e` | non_address_book | unknown | unknown | verified | n/a | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| exact address book overlap | ERC1967Proxy<br>`0x656cb8c6d154aad29d8771384089be5b5141f01a` | project_anchor | unknown | live | verified | n/a | `0x6ac005d9a24a22c3c95107466cf06f1c90b3ce42` |
| source verified unclassified | AutoSwapper<br>`0x346c0ca93354383a31d78d4944290d51f3b3f920` | non_address_book | unknown | unknown | verified | n/a | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| source verified unclassified | AutoSwapper<br>`0x7e473d028b80ad6408eb9fc1a54b4584cad69231` | non_address_book | unknown | unknown | verified | n/a | `0xcaec63ce78a0d4dab2b5112295789a542a0fdaee` |
| source verified unclassified | AutoSwapper<br>`0x865d61582abc2ccd85549774cee171280fe82e3e` | non_address_book | unknown | unknown | verified | n/a | `0xcaec63ce78a0d4dab2b5112295789a542a0fdaee` |
| source verified unclassified | AutoSwapper<br>`0xf25768968b0de2e9973ae47bb3d79ad5c8f6a9d4` | non_address_book | unknown | unknown | verified | n/a | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| source verified unclassified | AutoSwapperL2<br>`0x2d2a9a8b734eecfde916dbdf3a9850d903d384ed` | non_address_book | unknown | unknown | verified | n/a | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| source verified unclassified | AutoSwapperL2<br>`0x41a00e3fbe7f479a99ba6822704d9c5deb611f22` | non_address_book | unknown | unknown | verified | n/a | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| source verified unclassified | AutoSwapperL2<br>`0xcff24ade26ad0043f637279c08ed6f6959fa9835` | non_address_book | unknown | unknown | verified | n/a | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| source verified unclassified | SmarDexDegen<br>`0xd48d45ca7f39811c2f9d8270e6af7ad9c0be78a7` | non_address_book | unknown | unknown | verified | n/a | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| source verified unclassified | AutoSwapperL2<br>`0x561a557737426ececc07c898e23fce571f52db32` | non_address_book | unknown | unknown | verified | n/a | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| source verified unclassified | AutoSwapperL2<br>`0x8ef71fde0681f567d241a2cb7f2ae46d6d709d30` | non_address_book | unknown | unknown | verified | n/a | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| source verified unclassified | SmarDexDegen<br>`0x671e5ea2ae9efc707132cb82e27b9f78ab867837` | non_address_book | unknown | unknown | verified | n/a | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| source verified unclassified | AutoSwapperL2<br>`0x02fb6161eb60d653a951bf71993cda7bef9f3e02` | non_address_book | unknown | unknown | verified | n/a | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| source verified unclassified | AutoSwapperL2<br>`0x7240aac0f57fa0126c107673597ce3cd5b907e38` | non_address_book | unknown | unknown | verified | n/a | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| source verified unclassified | AutoSwapperL2<br>`0x89c64b435947bfc0bf74b645f088d67206f0cc54` | non_address_book | unknown | unknown | verified | n/a | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| source verified unclassified | AutoSwapperL2<br>`0xd978bb7a7ae5b01116d1bd714fedd1b77ca9e75b` | non_address_book | unknown | unknown | verified | n/a | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |
| source verified unclassified | SmarDexDegen<br>`0x894abf02947e840ee3501fba393aedd50011b739` | non_address_book | unknown | unknown | verified | n/a | `0x45c75bd8bb9cf5263539b914925eabbf0441eb14` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [12-18-2024_Smardex_USDN.pdf](https://github.com/GuardianAudits/Audits/blob/main/Smardex/12-18-2024_Smardex_USDN.pdf) | Guardian | Audit | 2024-12 | aging | Direct | n/a | matched | 4 | 0 | 0 | 10 | n/a |
| [Bailsec - Smardex USDN - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Smardex%20USDN%20-%20Final%20Report.pdf) | BailSec | Audit | 2024-05 | stale | Direct | n/a | matched | 5 | 0 | 0 | 11 | n/a |
| [Bailsec - Smardex Ecosystem - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Smardex%20Ecosystem%20-%20Final%20Report.pdf) | BailSec | Audit | 2025-01 | aging | Direct | n/a | matched | 3 | 0 | 0 | 10 | n/a |
| [Bailsec - Smardex - Router - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Smardex%20-%20Router%20-%20Final%20Report.pdf) | BailSec | Audit | 2025-03 | aging | Direct | n/a | matched | 1 | 0 | 0 | 21 | n/a |
| [Bailsec - SmarDex - P2P Lending - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20SmarDex%20-%20P2P%20Lending%20-%20Final%20Report.pdf) | Bailsec | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2564] 12-18-2024_Smardex_USDN.pdf — matched: No reason recorded
- [2566] Bailsec - Smardex USDN - Final Report.pdf — matched: No reason recorded
- [2567] Bailsec - Smardex Ecosystem - Final Report.pdf — matched: No reason recorded
- [2568] Bailsec - Smardex - Router - Final Report.pdf — matched: No reason recorded
- [2569] Bailsec - SmarDex - P2P Lending - Final Report.pdf — no match: The report covers two contracts: Spro (main lending contract) and SproLoan (NFT loan token). The audit date is inferred from 'February '2025' on the cover page, using the last day of the month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 12-18-2024_Smardex_USDN.pdf | LiquidationRewardsManager | own contract | LiquidationRewardsManager (selected) `0x9514d3496f46572e8461da381b200812d5db202c` — deployed 2025-01-21 17:56:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 12-18-2024_Smardex_USDN.pdf | PythOracle | unmatched — not counted | — | — | no |
| 12-18-2024_Smardex_USDN.pdf | Rebalancer | own contract | Rebalancer (selected) `0xaebcc85a5594e687f6b302405e6e92d616826e03` — deployed 2025-01-21 17:57:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 12-18-2024_Smardex_USDN.pdf | TickMath | unmatched — not counted | — | — | no |
| 12-18-2024_Smardex_USDN.pdf | Usdn | own contract | Usdn (selected) `0xde17a000ba631c5d7c2bd9fb692efea52d90dee2` — deployed 2024-12-19 16:54:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 12-18-2024_Smardex_USDN.pdf | UsdnProtocolActionsLibrary | unmatched — not counted | — | — | no |
| 12-18-2024_Smardex_USDN.pdf | UsdnProtocolActionsLongLibrary | unmatched — not counted | — | — | no |
| 12-18-2024_Smardex_USDN.pdf | UsdnProtocolActionsUtilsLibrary | unmatched — not counted | — | — | no |
| 12-18-2024_Smardex_USDN.pdf | UsdnProtocolCoreLibrary | unmatched — not counted | — | — | no |
| 12-18-2024_Smardex_USDN.pdf | UsdnProtocolFallback | unmatched — not counted | — | — | no |
| 12-18-2024_Smardex_USDN.pdf | UsdnProtocolLongLibrary | unmatched — not counted | — | — | no |
| 12-18-2024_Smardex_USDN.pdf | UsdnProtocolStorage | unmatched — not counted | — | — | no |
| 12-18-2024_Smardex_USDN.pdf | UsdnProtocolVaultLibrary | unmatched — not counted | — | — | no |
| 12-18-2024_Smardex_USDN.pdf | WstEthOracleMiddleware | own contract | WstEthOracleMiddleware (selected) `0xc1459fcfe23d5db9ddb04935ab7a426bd398eab0` — deployed 2025-01-21 17:56:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - Smardex USDN - Final Report.pdf | ActionsLong | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | ActionsVault | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | ChainlinkOracle | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | DoubleEndedQueue | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | HugeUint | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | LiquidationRewardsManager | own contract | LiquidationRewardsManager (selected) `0x9514d3496f46572e8461da381b200812d5db202c` — deployed 2025-01-21 17:56:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - Smardex USDN - Final Report.pdf | OracleMiddleWare | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | Permit2TokenBitfield | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | PythOracle | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | Rebalancer | own contract | Rebalancer (selected) `0xaebcc85a5594e687f6b302405e6e92d616826e03` — deployed 2025-01-21 17:57:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - Smardex USDN - Final Report.pdf | RedstoneOracle | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | SignedMath | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | TickMath | unmatched — not counted | — | — | no |
| Bailsec - Smardex USDN - Final Report.pdf | Usdn | own contract | Usdn (selected) `0xde17a000ba631c5d7c2bd9fb692efea52d90dee2` — deployed 2024-12-19 16:54:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - Smardex USDN - Final Report.pdf | WstEthOracleMiddleWare | own contract | WstEthOracleMiddleware (selected) `0xc1459fcfe23d5db9ddb04935ab7a426bd398eab0` — deployed 2025-01-21 17:56:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - Smardex USDN - Final Report.pdf | Wusdn | own contract | Wusdn (selected) `0x99999999999999cc837c997b882957dafdcb1af9` — deployed 2025-01-14 15:45:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - Smardex Ecosystem - Final Report.pdf | ActionsLongLibrary | unmatched — not counted | — | — | no |
| Bailsec - Smardex Ecosystem - Final Report.pdf | ActionsUtilsLibrary | unmatched — not counted | — | — | no |
| Bailsec - Smardex Ecosystem - Final Report.pdf | ChainlinkOracle | unmatched — not counted | — | — | no |
| Bailsec - Smardex Ecosystem - Final Report.pdf | ConstantsLibrary | unmatched — not counted | — | — | no |
| Bailsec - Smardex Ecosystem - Final Report.pdf | CoreLibrary | unmatched — not counted | — | — | no |
| Bailsec - Smardex Ecosystem - Final Report.pdf | DoubleEndedQueue | unmatched — not counted | — | — | no |
| Bailsec - Smardex Ecosystem - Final Report.pdf | LiquidationRewardsManager | own contract | LiquidationRewardsManager (selected) `0x9514d3496f46572e8461da381b200812d5db202c` — deployed 2025-01-21 17:56:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - Smardex Ecosystem - Final Report.pdf | LongLibrary | unmatched — not counted | — | — | no |
| Bailsec - Smardex Ecosystem - Final Report.pdf | OracleMiddleware | unmatched — not counted | — | — | no |
| Bailsec - Smardex Ecosystem - Final Report.pdf | PythOracle | unmatched — not counted | — | — | no |
| Bailsec - Smardex Ecosystem - Final Report.pdf | Rebalancer | own contract | Rebalancer (selected) `0xaebcc85a5594e687f6b302405e6e92d616826e03` — deployed 2025-01-21 17:57:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - Smardex Ecosystem - Final Report.pdf | TickMath | unmatched — not counted | — | — | no |
| Bailsec - Smardex Ecosystem - Final Report.pdf | WstEthOracleMiddleware | own contract | WstEthOracleMiddleware (selected) `0xc1459fcfe23d5db9ddb04935ab7a426bd398eab0` — deployed 2025-01-21 17:56:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - Smardex - Router - Final Report.pdf | BytesLib | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | Commands | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | Dispatcher | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | LidoImmutables | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | LidoRouter | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | LidoRouterLib | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | LockAndMap | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | Path | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | Payment | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | PaymentLib | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | RouterImmutables | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | SmardexImmutables | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | SmardexSwapRouter | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | SmardexSwapRouterLib | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | Sweep | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | TransientStorageLib | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | UniswapV2RouterLib | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | UniversalRouter | own contract | UniversalRouter (selected) `0x49f66b1616865b2a59caecb8352bbf2ac80983e1` — deployed 2025-01-21 19:21:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - Smardex - Router - Final Report.pdf | UsdnProtocolImmutables | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | UsdnProtocolRouter | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | UsdnProtocolRouterLib | unmatched — not counted | — | — | no |
| Bailsec - Smardex - Router - Final Report.pdf | V2SwapRouter | unmatched — not counted | — | — | no |
| Bailsec - SmarDex - P2P Lending - Final Report.pdf | Spro | unmatched — not counted | — | core contract for P2P lending, detailed in detection section | no |
| Bailsec - SmarDex - P2P Lending - Final Report.pdf | SproLoan | unmatched — not counted | — | manages loans as NFTs, detailed in detection section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xf9d36078a248af249aa57ae1d5d0c1033d6bbe27` | UsdnLongFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x271df5517a4daacb7cab988aa64d23debda4c498` | UsdnProtocolImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf67e2dc041b8a3c39d066037d29f500757b1e886` | VaultLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 58 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 54 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=13

Zero-match audit list:

- [2569] Bailsec - SmarDex - P2P Lending - Final Report.pdf

Fork inheritance lineage and inherited audits are included when available.
