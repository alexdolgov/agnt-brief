# Agentic Audit Brief: SMARDEX Ecosystem

## Project Overview

- Project: SMARDEX Ecosystem (`smardex-ecosystem`)
- Website: [https://smardex.io](https://smardex.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.384Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, base, bsc, ethereum, polygon
- Contract surface: 42 unique implementations (89 raw deployments)
- DeFi Llama TVL: $2,263,024.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 34 project-authored contract(s) across 4 chain(s); 1 ERC4626 vault, 10 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 1 common project-authored base contract(s) (initializablereentrancyguard). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 107; live-surface contracts included: 89 (89 live, 0 unknown).
- Excluded by liveness: 18 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/42 (9.5%)
- Deployed-live implementations: 42 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/42
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 42
- Raw deployments: 89
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BailSec | Tier 2 | 4 | 9.5% | 2025-03 |
| Guardian | Tier 2 | 2 | 4.8% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Rebalancer | adapter | ethereum | n/a | [`0xaebcc85a5594e687f6b302405e6e92d616826e03`](./contracts/ethereum-1/0xaebcc85a5594e687f6b302405e6e92d616826e03/) | ✅ Audited |
| UniversalRouter | adapter | ethereum | n/a | [`0x49f66b1616865b2a59caecb8352bbf2ac80983e1`](./contracts/ethereum-1/0x49f66b1616865b2a59caecb8352bbf2ac80983e1/) | ✅ Audited |
| Usdn | unknown | ethereum | n/a | [`0xde17a000ba631c5d7c2bd9fb692efea52d90dee2`](./contracts/ethereum-1/0xde17a000ba631c5d7c2bd9fb692efea52d90dee2/) | ✅ Audited |
| Wusdn | unknown | ethereum | n/a | [`0x99999999999999cc837c997b882957dafdcb1af9`](./contracts/ethereum-1/0x99999999999999cc837c997b882957dafdcb1af9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Accumulator | unknown | ethereum | n/a | [`0x48d19891158223530e336c2290fa977d935cbaf7`](./contracts/ethereum-1/0x48d19891158223530e336c2290fa977d935cbaf7/) | ⚠️ Unaudited |
| AiWhitelister | unknown | ethereum | n/a | [`0xd9e0b1b9156e27a55ea9d53e81380651443b737d`](./contracts/ethereum-1/0xd9e0b1b9156e27a55ea9d53e81380651443b737d/) | ⚠️ Unaudited |
| DoubleEndedQueue | unknown | ethereum | n/a | [`0x30246df2cb213d3522dd1ca1f1f8740d4e883f14`](./contracts/ethereum-1/0x30246df2cb213d3522dd1ca1f1f8740d4e883f14/) | ⚠️ Unaudited |
| ERC20 | unknown | polygon | n/a | 6 deployments: ethereum `0x49e9366c8733c96485632ba7f662d1bfd860dcce`; ethereum `0xe47f8ba48d155383e1b2c4654833bde2b0e8b44a`; bsc `0x7bc796aa36f462d98aea94c4be5859a5b176458c`; polygon [`0x2662b8b1bda7e5810c1f080f302cb8de0a81ad6c`](./contracts/polygon-137/0x2662b8b1bda7e5810c1f080f302cb8de0a81ad6c/); base `0xedd758d17175dc9131992ebd02f55cc4ebeb7b7c`; arbitrum `0x26727794764e66aaae50a4ec518e24a00544fcc9` | ⚠️ Unaudited |
| FarmingRange | unknown | ethereum | n/a | 4 deployments: ethereum [`0x7d85c0905a6e1ab5837a0b57cd94a419d3a77523`](./contracts/ethereum-1/0x7d85c0905a6e1ab5837a0b57cd94a419d3a77523/); bsc `0xb891aeb2130805171796644a2af76fc7ff25a0b9`; polygon `0x7db73a1e526db36c40e508b09428420c1fa8e46b`; base `0xa5d378c05192e3f1f365d6298921879c4d51c5a3` | ⚠️ Unaudited |
| FarmingRangeL2Arbitrum | unknown | arbitrum | n/a | [`0x53d165df0414bd02e91747775450934bf2257f69`](./contracts/arbitrum-42161/0x53d165df0414bd02e91747775450934bf2257f69/) | ⚠️ Unaudited |
| FarmingToken | unknown | ethereum | n/a | [`0xce1bc72a070349cb444743ec3b2b4d8bf398daf5`](./contracts/ethereum-1/0xce1bc72a070349cb444743ec3b2b4d8bf398daf5/) | ⚠️ Unaudited |
| LiquidationRewardsManager | unknown | ethereum | n/a | [`0x9514d3496f46572e8461da381b200812d5db202c`](./contracts/ethereum-1/0x9514d3496f46572e8461da381b200812d5db202c/) | ⚠️ Unaudited |
| PUMP | unknown | ethereum | n/a | 2 deployments: ethereum [`0x24575e1250467f1a90a1c16f1e921c1674b70e6e`](./contracts/ethereum-1/0x24575e1250467f1a90a1c16f1e921c1674b70e6e/); ethereum `0x44a7d8430464ba59d07f83d4fa6092b039fed13f` | ⚠️ Unaudited |
| RewardManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x25c4b95f00a01d3739815f026c52126f44034837`](./contracts/ethereum-1/0x25c4b95f00a01d3739815f026c52126f44034837/); ethereum `0xc049c7fe5eaa024095861212bd8a8e8df88a2b1f` | ⚠️ Unaudited |
| RewardManagerL2 | unknown | polygon | n/a | 3 deployments: bsc `0x8ef71fde0681f567d241a2cb7f2ae46d6d709d30`; polygon [`0x391becc8daaf32b9ba8e602e9527bf9da04c8deb`](./contracts/polygon-137/0x391becc8daaf32b9ba8e602e9527bf9da04c8deb/); base `0xd978bb7a7ae5b01116d1bd714fedd1b77ca9e75b` | ⚠️ Unaudited |
| RewardManagerL2Arbitrum | unknown | arbitrum | n/a | [`0x5c622dcc96b6d96ac6c154f99cf081815094cbc9`](./contracts/arbitrum-42161/0x5c622dcc96b6d96ac6c154f99cf081815094cbc9/) | ⚠️ Unaudited |
| RewardManagerWithdrawable | unknown | ethereum | n/a | 4 deployments: ethereum [`0x40a8ee345887c7e92a24c3cd57a191d1b2d6f3cf`](./contracts/ethereum-1/0x40a8ee345887c7e92a24c3cd57a191d1b2d6f3cf/); bsc `0xde0ceb9fca050f30f07a7187beffbbbe6a04055a`; polygon `0xab3699b71e89a53c529ec037c3389b5a2caf545a`; base `0xccfdbee02f8216e4f4da392a54e425285613cf2c` | ⚠️ Unaudited |
| RewardManagerWithdrawableArbitrum | unknown | arbitrum | n/a | [`0x863799a120edd11ca8718a3a93f1beb138a97c41`](./contracts/arbitrum-42161/0x863799a120edd11ca8718a3a93f1beb138a97c41/) | ⚠️ Unaudited |
| SmarDexDegen | unknown | ethereum | n/a | [`0x85bcb7da3cd1782489d5331bc24a4bc806ec16a5`](./contracts/ethereum-1/0x85bcb7da3cd1782489d5331bc24a4bc806ec16a5/) | ⚠️ Unaudited |
| SmardexFactory | unknown | ethereum | n/a | 8 deployments: ethereum [`0x3aedcb9e2f3d70f67f2116592f68f370c02d7e81`](./contracts/ethereum-1/0x3aedcb9e2f3d70f67f2116592f68f370c02d7e81/); ethereum `0x74333736a0ea8d1d3607a848a458618e1f882abb`; ethereum `0x7753f36e711b66a0350a753aba9f5651bae76a1d`; ethereum `0xb878dc600550367e14220d4916ff678fb284214f`; bsc `0xa8ef6fea013034e62e2c4a9ec1cdb059fe23af33`; polygon `0x9a1e1681f6d59ca051776410465afada6384398f`; base `0xdd4536dd9636564d891c919416880a3e250f975a`; arbitrum `0x41a00e3fbe7f479a99ba6822704d9c5deb611f22` | ⚠️ Unaudited |
| SmardexPair | unknown | ethereum | n/a | [`0xf3a4b8efe3e3049f6bc71b47ccb7ce6665420179`](./contracts/ethereum-1/0xf3a4b8efe3e3049f6bc71b47ccb7ce6665420179/) | ⚠️ Unaudited |
| SmardexRouter | unknown | ethereum | n/a | 15 deployments: ethereum [`0x3403868cd7368b3c12d03ec677fe1d5c9e8b1764`](./contracts/ethereum-1/0x3403868cd7368b3c12d03ec677fe1d5c9e8b1764/); ethereum `0x3cd4351ce89db404ca87457c3d7c89d2f9a5d13c`; ethereum `0x926c777c091a5a070dc24ac94ff498b5a556f92a`; ethereum `0x9a5132e149c547f254c73226da7f770d43d9ea44`; ethereum `0xb3ef1cd0069d15987b7ef8fc698ca2d3792245eb`; ethereum `0xc33984abcae20f47a754ef78f6526fef266c0c6f`; ethereum `0xef2f9b48d7ec80440ab4573df1a2abdbe06d3f60`; bsc `0x391becc8daaf32b9ba8e602e9527bf9da04c8deb`; bsc `0xab3699b71e89a53c529ec037c3389b5a2caf545a`; polygon `0xa8ef6fea013034e62e2c4a9ec1cdb059fe23af33`; polygon `0xedd758d17175dc9131992ebd02f55cc4ebeb7b7c`; base `0x5c622dcc96b6d96ac6c154f99cf081815094cbc9`; base `0xf03d133627364e5eddab8134fab3a030cf7b3020`; arbitrum `0xda3970a20cdc2b1269fc96c4e8d300e0fddb7b3d`; arbitrum `0xdd4536dd9636564d891c919416880a3e250f975a` | ⚠️ Unaudited |
| SmardexToken | unknown | ethereum | n/a | 12 deployments: ethereum [`0x037768ddeddb392201d1a31ce05f0b7013043a0c`](./contracts/ethereum-1/0x037768ddeddb392201d1a31ce05f0b7013043a0c/); ethereum `0x1b6476f672d0d00f8a7bb90d95056b9ed58a2670`; ethereum `0x337cdb4a10732b0e7a30f4e47dc94dc5ba83bc67`; ethereum `0x52e7b23e1faba6d83376725e2ccad75efbd8736e`; ethereum `0x5de8ab7e27f6e7a1fff3e5b337584aa43961beef`; ethereum `0x825f1c65dab9684db454e26030ea89e344e07fff`; ethereum `0xa333c0006ac21f0d934e9daaf3d5c61dc2fa1f3f`; ethereum `0xa8e3b78997b70c1dc702e36a6ca94dd1fa29b08b`; ethereum `0xc1d81e0da5fe0880271dadfe5f9b683fc07c63e9`; ethereum `0xd60c2ea8fa50fe7d8c8aca042378731832020848`; ethereum `0xd82b365f821e42009c217ec103941b5f1532da53`; ethereum `0xedcd18ff9a17dbc3485d7cb97a41a9b12d61f1ec` | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0x80497049b005fd236591c3cd431dbd6e06eb1a31`](./contracts/ethereum-1/0x80497049b005fd236591c3cd431dbd6e06eb1a31/) | ⚠️ Unaudited |
| TickMath | unknown | ethereum | n/a | [`0xea243413bf5674d5b674e97beaa505a26441e943`](./contracts/ethereum-1/0xea243413bf5674d5b674e97beaa505a26441e943/) | ⚠️ Unaudited |
| TokenImplementation | token | bsc | n/a | [`0xfdc66a08b0d0dc44c17bbd471b88f49f50cdd20f`](./contracts/bsc-56/0xfdc66a08b0d0dc44c17bbd471b88f49f50cdd20f/) | ⚠️ Unaudited |
| TokenImplementation | token | polygon | n/a | [`0x6899face15c14348e1759371049ab64a3a06bfa6`](./contracts/polygon-137/0x6899face15c14348e1759371049ab64a3a06bfa6/) | ⚠️ Unaudited |
| TokenImplementation | token | base | n/a | [`0xfd4330b0312fdeec6d4225075b82e00493ff2e3f`](./contracts/base-8453/0xfd4330b0312fdeec6d4225075b82e00493ff2e3f/) | ⚠️ Unaudited |
| TokenImplementation | token | arbitrum | n/a | [`0xabd587f2607542723b17f14d00d99b987c29b074`](./contracts/arbitrum-42161/0xabd587f2607542723b17f14d00d99b987c29b074/) | ⚠️ Unaudited |
| UsdnLongFarming | unknown | ethereum | n/a | [`0xf9d36078a248af249aa57ae1d5d0c1033d6bbe27`](./contracts/ethereum-1/0xf9d36078a248af249aa57ae1d5d0c1033d6bbe27/) | ⚠️ Unaudited |
| UsdnProtocolActionsLongLibrary | unknown | ethereum | n/a | [`0xffc37455f53cbc0360ef3f3cccb6a967e1ae2a45`](./contracts/ethereum-1/0xffc37455f53cbc0360ef3f3cccb6a967e1ae2a45/) | ⚠️ Unaudited |
| UsdnProtocolActionsUtilsLibrary | unknown | ethereum | n/a | [`0xaf13fa20fa5128b1ea37559d407285962a2b7ffe`](./contracts/ethereum-1/0xaf13fa20fa5128b1ea37559d407285962a2b7ffe/) | ⚠️ Unaudited |
| UsdnProtocolCoreLibrary | unknown | ethereum | n/a | [`0x0de8af2200c88a51b1a53d640729ed459acfba38`](./contracts/ethereum-1/0x0de8af2200c88a51b1a53d640729ed459acfba38/) | ⚠️ Unaudited |
| UsdnProtocolFallback | unknown | ethereum | n/a | [`0xd4e615ab327324e9f2bb492c42d47ee8213959c0`](./contracts/ethereum-1/0xd4e615ab327324e9f2bb492c42d47ee8213959c0/) | ⚠️ Unaudited |
| UsdnProtocolImpl | unknown | ethereum | n/a | [`0x271df5517a4daacb7cab988aa64d23debda4c498`](./contracts/ethereum-1/0x271df5517a4daacb7cab988aa64d23debda4c498/) | ⚠️ Unaudited |
| UsdnProtocolLongLibrary | unknown | ethereum | n/a | [`0x932a7755749879426925e7d977afa6baa64a3455`](./contracts/ethereum-1/0x932a7755749879426925e7d977afa6baa64a3455/) | ⚠️ Unaudited |
| UsdnProtocolSettersLibrary | unknown | ethereum | n/a | [`0xea10c7fceb16779234e0a5ebe7e963df2c7f136a`](./contracts/ethereum-1/0xea10c7fceb16779234e0a5ebe7e963df2c7f136a/) | ⚠️ Unaudited |
| UsdnProtocolVaultLibrary | unknown | ethereum | n/a | [`0x5a3b25f3de702ff2209ef4c11e80bd97bb6d53eb`](./contracts/ethereum-1/0x5a3b25f3de702ff2209ef4c11e80bd97bb6d53eb/) | ⚠️ Unaudited |
| Usdnr | unknown | ethereum | n/a | [`0x82957d600963ae0c529c3819ac7c349c4d49269b`](./contracts/ethereum-1/0x82957d600963ae0c529c3819ac7c349c4d49269b/) | ⚠️ Unaudited |
| VaultLib | core_logic | ethereum | n/a | [`0xf67e2dc041b8a3c39d066037d29f500757b1e886`](./contracts/ethereum-1/0xf67e2dc041b8a3c39d066037d29f500757b1e886/) | ⚠️ Unaudited |
| WstEthOracleMiddleware | unknown | ethereum | n/a | [`0xc1459fcfe23d5db9ddb04935ab7a426bd398eab0`](./contracts/ethereum-1/0xc1459fcfe23d5db9ddb04935ab7a426bd398eab0/) | ⚠️ Unaudited |
| WusdnVault | core_logic | ethereum | n/a | [`0xa6d14921219a7be3660268495275937eb324d967`](./contracts/ethereum-1/0xa6d14921219a7be3660268495275937eb324d967/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [12-18-2024_Smardex_USDN.pdf](https://github.com/GuardianAudits/Audits/blob/main/Smardex/12-18-2024_Smardex_USDN.pdf) | Guardian | Audit | 2024-12 | aging | Direct | contract_name | 2 | n/a |
| [bailsec.io](https://bailsec.io/) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Bailsec - Smardex USDN - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Smardex%20USDN%20-%20Final%20Report.pdf) | BailSec | Audit | 2024-05 | stale | Direct | contract_name | 3 | n/a |
| [Bailsec - Smardex Ecosystem - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Smardex%20Ecosystem%20-%20Final%20Report.pdf) | BailSec | Audit | 2025-01 | aging | Direct | contract_name | 1 | n/a |
| [Bailsec - Smardex - Router - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Smardex%20-%20Router%20-%20Final%20Report.pdf) | BailSec | Audit | 2025-03 | aging | Direct | contract_name | 1 | n/a |
| [Bailsec - SmarDex - P2P Lending - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20SmarDex%20-%20P2P%20Lending%20-%20Final%20Report.pdf) | Bailsec | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x48d19891158223530e336c2290fa977d935cbaf7`](./contracts/ethereum-1/0x48d19891158223530e336c2290fa977d935cbaf7/) | Accumulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9e0b1b9156e27a55ea9d53e81380651443b737d`](./contracts/ethereum-1/0xd9e0b1b9156e27a55ea9d53e81380651443b737d/) | AiWhitelister | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30246df2cb213d3522dd1ca1f1f8740d4e883f14`](./contracts/ethereum-1/0x30246df2cb213d3522dd1ca1f1f8740d4e883f14/) | DoubleEndedQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2662b8b1bda7e5810c1f080f302cb8de0a81ad6c`](./contracts/polygon-137/0x2662b8b1bda7e5810c1f080f302cb8de0a81ad6c/) | ERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d85c0905a6e1ab5837a0b57cd94a419d3a77523`](./contracts/ethereum-1/0x7d85c0905a6e1ab5837a0b57cd94a419d3a77523/) | FarmingRange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x53d165df0414bd02e91747775450934bf2257f69`](./contracts/arbitrum-42161/0x53d165df0414bd02e91747775450934bf2257f69/) | FarmingRangeL2Arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce1bc72a070349cb444743ec3b2b4d8bf398daf5`](./contracts/ethereum-1/0xce1bc72a070349cb444743ec3b2b4d8bf398daf5/) | FarmingToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9514d3496f46572e8461da381b200812d5db202c`](./contracts/ethereum-1/0x9514d3496f46572e8461da381b200812d5db202c/) | LiquidationRewardsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24575e1250467f1a90a1c16f1e921c1674b70e6e`](./contracts/ethereum-1/0x24575e1250467f1a90a1c16f1e921c1674b70e6e/) | PUMP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25c4b95f00a01d3739815f026c52126f44034837`](./contracts/ethereum-1/0x25c4b95f00a01d3739815f026c52126f44034837/) | RewardManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x391becc8daaf32b9ba8e602e9527bf9da04c8deb`](./contracts/polygon-137/0x391becc8daaf32b9ba8e602e9527bf9da04c8deb/) | RewardManagerL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5c622dcc96b6d96ac6c154f99cf081815094cbc9`](./contracts/arbitrum-42161/0x5c622dcc96b6d96ac6c154f99cf081815094cbc9/) | RewardManagerL2Arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40a8ee345887c7e92a24c3cd57a191d1b2d6f3cf`](./contracts/ethereum-1/0x40a8ee345887c7e92a24c3cd57a191d1b2d6f3cf/) | RewardManagerWithdrawable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x863799a120edd11ca8718a3a93f1beb138a97c41`](./contracts/arbitrum-42161/0x863799a120edd11ca8718a3a93f1beb138a97c41/) | RewardManagerWithdrawableArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x85bcb7da3cd1782489d5331bc24a4bc806ec16a5`](./contracts/ethereum-1/0x85bcb7da3cd1782489d5331bc24a4bc806ec16a5/) | SmarDexDegen | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3aedcb9e2f3d70f67f2116592f68f370c02d7e81`](./contracts/ethereum-1/0x3aedcb9e2f3d70f67f2116592f68f370c02d7e81/) | SmardexFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf3a4b8efe3e3049f6bc71b47ccb7ce6665420179`](./contracts/ethereum-1/0xf3a4b8efe3e3049f6bc71b47ccb7ce6665420179/) | SmardexPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3403868cd7368b3c12d03ec677fe1d5c9e8b1764`](./contracts/ethereum-1/0x3403868cd7368b3c12d03ec677fe1d5c9e8b1764/) | SmardexRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x037768ddeddb392201d1a31ce05f0b7013043a0c`](./contracts/ethereum-1/0x037768ddeddb392201d1a31ce05f0b7013043a0c/) | SmardexToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x80497049b005fd236591c3cd431dbd6e06eb1a31`](./contracts/ethereum-1/0x80497049b005fd236591c3cd431dbd6e06eb1a31/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea243413bf5674d5b674e97beaa505a26441e943`](./contracts/ethereum-1/0xea243413bf5674d5b674e97beaa505a26441e943/) | TickMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfdc66a08b0d0dc44c17bbd471b88f49f50cdd20f`](./contracts/bsc-56/0xfdc66a08b0d0dc44c17bbd471b88f49f50cdd20f/) | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6899face15c14348e1759371049ab64a3a06bfa6`](./contracts/polygon-137/0x6899face15c14348e1759371049ab64a3a06bfa6/) | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfd4330b0312fdeec6d4225075b82e00493ff2e3f`](./contracts/base-8453/0xfd4330b0312fdeec6d4225075b82e00493ff2e3f/) | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xabd587f2607542723b17f14d00d99b987c29b074`](./contracts/arbitrum-42161/0xabd587f2607542723b17f14d00d99b987c29b074/) | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf9d36078a248af249aa57ae1d5d0c1033d6bbe27`](./contracts/ethereum-1/0xf9d36078a248af249aa57ae1d5d0c1033d6bbe27/) | UsdnLongFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xffc37455f53cbc0360ef3f3cccb6a967e1ae2a45`](./contracts/ethereum-1/0xffc37455f53cbc0360ef3f3cccb6a967e1ae2a45/) | UsdnProtocolActionsLongLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf13fa20fa5128b1ea37559d407285962a2b7ffe`](./contracts/ethereum-1/0xaf13fa20fa5128b1ea37559d407285962a2b7ffe/) | UsdnProtocolActionsUtilsLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0de8af2200c88a51b1a53d640729ed459acfba38`](./contracts/ethereum-1/0x0de8af2200c88a51b1a53d640729ed459acfba38/) | UsdnProtocolCoreLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd4e615ab327324e9f2bb492c42d47ee8213959c0`](./contracts/ethereum-1/0xd4e615ab327324e9f2bb492c42d47ee8213959c0/) | UsdnProtocolFallback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x271df5517a4daacb7cab988aa64d23debda4c498`](./contracts/ethereum-1/0x271df5517a4daacb7cab988aa64d23debda4c498/) | UsdnProtocolImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x932a7755749879426925e7d977afa6baa64a3455`](./contracts/ethereum-1/0x932a7755749879426925e7d977afa6baa64a3455/) | UsdnProtocolLongLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea10c7fceb16779234e0a5ebe7e963df2c7f136a`](./contracts/ethereum-1/0xea10c7fceb16779234e0a5ebe7e963df2c7f136a/) | UsdnProtocolSettersLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a3b25f3de702ff2209ef4c11e80bd97bb6d53eb`](./contracts/ethereum-1/0x5a3b25f3de702ff2209ef4c11e80bd97bb6d53eb/) | UsdnProtocolVaultLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82957d600963ae0c529c3819ac7c349c4d49269b`](./contracts/ethereum-1/0x82957d600963ae0c529c3819ac7c349c4d49269b/) | Usdnr | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf67e2dc041b8a3c39d066037d29f500757b1e886`](./contracts/ethereum-1/0xf67e2dc041b8a3c39d066037d29f500757b1e886/) | VaultLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1459fcfe23d5db9ddb04935ab7a426bd398eab0`](./contracts/ethereum-1/0xc1459fcfe23d5db9ddb04935ab7a426bd398eab0/) | WstEthOracleMiddleware | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6d14921219a7be3660268495275937eb324d967`](./contracts/ethereum-1/0xa6d14921219a7be3660268495275937eb324d967/) | WusdnVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=7

Zero-match audit list:

- [2565] bailsec.io
- [2569] Bailsec - SmarDex - P2P Lending - Final Report.pdf

Fork inheritance lineage and inherited audits are included when available.
