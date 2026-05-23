# Agentic Audit Brief: SMARDEX Ecosystem

⚠️ Lifecycle status: DECLINING - TVL dropped 32.3% over 90 days

## Project Overview

- Project: SMARDEX Ecosystem (`smardex-ecosystem`)
- Website: [https://smardex.io](https://smardex.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-23T20:29:36.404Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, base, bsc, ethereum, polygon
- Contract surface: 39 unique implementations (105 raw deployments)
- DeFi Llama TVL: $4,563,498.00
- On-chain TVL (included contracts): $20,056,668.07
- TVL by chain: Ethereum $19,806,097.52 | Bsc $105,266.40 | Arbitrum $59,051.79 | Base $51,124.83 | Polygon $35,127.53

## Project Description

SMARDEX Ecosystem is a multi-chain DeFi protocol combining an automated market maker (AMM) for decentralized trading, a synthetic USD token (USDN) with staking and farming, and cross-chain token bridging. It enables users to swap assets, earn yield through liquidity provision and staking, and access leveraged positions via its USDN protocol.

### Architecture

The AMM and USDN families share the SMARDEX token (SmardexToken) and staking infrastructure (Staking, FarmingRange) on Ethereum, while the Bridge family enables cross-chain movement of tokens to support AMM liquidity and USDN usage on other chains. The USDN protocol relies on oracles and rebalancers that may interact with AMM pools for price feeds and liquidity.

## Audit Coverage Summary

- Verified implementations audited: 13/39 (33.3%)
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 39
- Raw deployments: 105
- Audits discovered: 6
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $20,056,668.07
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 4 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $20,056,668.07 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Guardian | Tier 2 | 10 | 25.6% | 2024-12 |
| BailSec | Tier 2 | 7 | 17.9% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DoubleEndedQueue | unknown | ethereum | [`0x30246d...883f14`](./contracts/ethereum-1/0x30246df2cb213d3522dd1ca1f1f8740d4e883f14/) | ✅ Audited |
| LiquidationRewardsManager | governance | ethereum | [`0x9514d3...db202c`](./contracts/ethereum-1/0x9514d3496f46572e8461da381b200812d5db202c/) | ✅ Audited |
| Rebalancer | adapter | ethereum | [`0xaebcc8...826e03`](./contracts/ethereum-1/0xaebcc85a5594e687f6b302405e6e92d616826e03/) | ✅ Audited |
| UniversalRouter | adapter | ethereum | [`0x49f66b...0983e1`](./contracts/ethereum-1/0x49f66b1616865b2a59caecb8352bbf2ac80983e1/) | ✅ Audited |
| Usdn | unknown | ethereum | [`0xde17a0...90dee2`](./contracts/ethereum-1/0xde17a000ba631c5d7c2bd9fb692efea52d90dee2/) | ✅ Audited |
| UsdnProtocolActionsLongLibrary | unknown | ethereum | [`0xffc374...ae2a45`](./contracts/ethereum-1/0xffc37455f53cbc0360ef3f3cccb6a967e1ae2a45/) | ✅ Audited |
| UsdnProtocolActionsUtilsLibrary | unknown | ethereum | [`0xaf13fa...2b7ffe`](./contracts/ethereum-1/0xaf13fa20fa5128b1ea37559d407285962a2b7ffe/) | ✅ Audited |
| UsdnProtocolCoreLibrary | unknown | ethereum | [`0x0de8af...cfba38`](./contracts/ethereum-1/0x0de8af2200c88a51b1a53d640729ed459acfba38/) | ✅ Audited |
| UsdnProtocolFallback | unknown | ethereum | [`0xd4e615...3959c0`](./contracts/ethereum-1/0xd4e615ab327324e9f2bb492c42d47ee8213959c0/) | ✅ Audited |
| UsdnProtocolLongLibrary | unknown | ethereum | [`0x932a77...4a3455`](./contracts/ethereum-1/0x932a7755749879426925e7d977afa6baa64a3455/) | ✅ Audited |
| UsdnProtocolVaultLibrary | core_logic | ethereum | [`0x5a3b25...6d53eb`](./contracts/ethereum-1/0x5a3b25f3de702ff2209ef4c11e80bd97bb6d53eb/) | ✅ Audited |
| WstEthOracleMiddleware | operational_periphery | ethereum | [`0xc1459f...98eab0`](./contracts/ethereum-1/0xc1459fcfe23d5db9ddb04935ab7a426bd398eab0/) | ✅ Audited |
| Wusdn | unknown | ethereum | [`0x999999...cb1af9`](./contracts/ethereum-1/0x99999999999999cc837c997b882957dafdcb1af9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SmardexToken | token | ethereum | 12 deployments: ethereum [`0x037768...043a0c`](./contracts/ethereum-1/0x037768ddeddb392201d1a31ce05f0b7013043a0c/); ethereum `0x1b6476...8a2670`; ethereum `0x337cdb...83bc67`; ethereum `0x52e7b2...d8736e`; ethereum `0x5de8ab...61beef`; ethereum `0x825f1c...e07fff`; ethereum `0xa333c0...fa1f3f`; ethereum `0xa8e3b7...29b08b`; ethereum `0xc1d81e...7c63e9`; ethereum `0xd60c2e...020848`; ethereum `0xd82b36...32da53`; ethereum `0xedcd18...61f1ec` | ⚠️ Unaudited |
| TokenImplementation | token | polygon | 4 deployments: bsc `0xfdc66a...cdd20f`; polygon [`0x6899fa...06bfa6`](./contracts/polygon-137/0x6899face15c14348e1759371049ab64a3a06bfa6/); base `0xfd4330...ff2e3f`; arbitrum `0xabd587...29b074` | ⚠️ Unaudited |
| Accumulator | unknown | ethereum | [`0x48d198...5cbaf7`](./contracts/ethereum-1/0x48d19891158223530e336c2290fa977d935cbaf7/) | ⚠️ Unaudited |
| AiWhitelister | unknown | ethereum | [`0xd9e0b1...3b737d`](./contracts/ethereum-1/0xd9e0b1b9156e27a55ea9d53e81380651443b737d/) | ⚠️ Unaudited |
| AutoSwapper | adapter | ethereum | 4 deployments: ethereum [`0x346c0c...b3f920`](./contracts/ethereum-1/0x346c0ca93354383a31d78d4944290d51f3b3f920/); ethereum `0x7e473d...d69231`; ethereum `0x865d61...e82e3e`; ethereum `0xf25768...f6a9d4` | ⚠️ Unaudited |
| AutoSwapperL2 | adapter | base | 9 deployments: ethereum `0x2d2a9a...d384ed`; bsc `0x41a00e...611f22`; bsc `0xcff24a...fa9835`; polygon `0x561a55...52db32`; polygon `0x8ef71f...709d30`; base [`0x02fb61...9f3e02`](./contracts/base-8453/0x02fb6161eb60d653a951bf71993cda7bef9f3e02/); base `0x7240aa...907e38`; arbitrum `0x89c64b...f0cc54`; arbitrum `0xd978bb...a9e75b` | ⚠️ Unaudited |
| ERC20 | token | polygon | 6 deployments: ethereum `0x49e936...60dcce`; ethereum `0xe47f8b...e8b44a`; bsc `0x7bc796...76458c`; polygon [`0x2662b8...81ad6c`](./contracts/polygon-137/0x2662b8b1bda7e5810c1f080f302cb8de0a81ad6c/); base `0xedd758...eb7b7c`; arbitrum `0x267277...44fcc9` | ⚠️ Unaudited |
| FarmingRange | unknown | ethereum | 4 deployments: ethereum [`0x7d85c0...a77523`](./contracts/ethereum-1/0x7d85c0905a6e1ab5837a0b57cd94a419d3a77523/); bsc `0xb891ae...25a0b9`; polygon `0x7db73a...a8e46b`; base `0xa5d378...51c5a3` | ⚠️ Unaudited |
| FarmingRangeL2Arbitrum | unknown | arbitrum | [`0x53d165...257f69`](./contracts/arbitrum-42161/0x53d165df0414bd02e91747775450934bf2257f69/) | ⚠️ Unaudited |
| FarmingToken | token | ethereum | [`0xce1bc7...98daf5`](./contracts/ethereum-1/0xce1bc72a070349cb444743ec3b2b4d8bf398daf5/) | ⚠️ Unaudited |
| PUMP | unknown | ethereum | 2 deployments: ethereum [`0x24575e...b70e6e`](./contracts/ethereum-1/0x24575e1250467f1a90a1c16f1e921c1674b70e6e/); ethereum `0x44a7d8...fed13f` | ⚠️ Unaudited |
| RewardManager | governance | ethereum | 2 deployments: ethereum [`0x25c4b9...034837`](./contracts/ethereum-1/0x25c4b95f00a01d3739815f026c52126f44034837/); ethereum `0xc049c7...8a2b1f` | ⚠️ Unaudited |
| RewardManagerL2 | governance | polygon | 3 deployments: bsc `0x8ef71f...709d30`; polygon [`0x391bec...4c8deb`](./contracts/polygon-137/0x391becc8daaf32b9ba8e602e9527bf9da04c8deb/); base `0xd978bb...a9e75b` | ⚠️ Unaudited |
| RewardManagerL2Arbitrum | governance | arbitrum | [`0x5c622d...94cbc9`](./contracts/arbitrum-42161/0x5c622dcc96b6d96ac6c154f99cf081815094cbc9/) | ⚠️ Unaudited |
| RewardManagerWithdrawable | operational_periphery | ethereum | 4 deployments: ethereum [`0x40a8ee...d6f3cf`](./contracts/ethereum-1/0x40a8ee345887c7e92a24c3cd57a191d1b2d6f3cf/); bsc `0xde0ceb...04055a`; polygon `0xab3699...af545a`; base `0xccfdbe...13cf2c` | ⚠️ Unaudited |
| RewardManagerWithdrawableArbitrum | operational_periphery | arbitrum | [`0x863799...a97c41`](./contracts/arbitrum-42161/0x863799a120edd11ca8718a3a93f1beb138a97c41/) | ⚠️ Unaudited |
| SmarDexDegen | unknown | base | 5 deployments: ethereum `0x85bcb7...ec16a5`; bsc `0xd48d45...be78a7`; polygon `0x671e5e...867837`; base [`0x45f23f...bc6d6e`](./contracts/base-8453/0x45f23f8ca9b5a4b6c22aaa451920be4566bc6d6e/); arbitrum `0x894abf...11b739` | ⚠️ Unaudited |
| SmardexFactory | registry | ethereum | 8 deployments: ethereum [`0x3aedcb...2d7e81`](./contracts/ethereum-1/0x3aedcb9e2f3d70f67f2116592f68f370c02d7e81/); ethereum `0x743337...882abb`; ethereum `0x7753f3...e76a1d`; ethereum `0xb878dc...84214f`; bsc `0xa8ef6f...23af33`; polygon `0x9a1e16...84398f`; base `0xdd4536...0f975a`; arbitrum `0x41a00e...611f22` | ⚠️ Unaudited |
| SmardexRouter | adapter | ethereum | 15 deployments: ethereum [`0x340386...8b1764`](./contracts/ethereum-1/0x3403868cd7368b3c12d03ec677fe1d5c9e8b1764/); ethereum `0x3cd435...a5d13c`; ethereum `0x926c77...56f92a`; ethereum `0x9a5132...d9ea44`; ethereum `0xb3ef1c...2245eb`; ethereum `0xc33984...6c0c6f`; ethereum `0xef2f9b...6d3f60`; bsc `0x391bec...4c8deb`; bsc `0xab3699...af545a`; polygon `0xa8ef6f...23af33`; polygon `0xedd758...eb7b7c`; base `0x5c622d...94cbc9`; base `0xf03d13...7b3020`; arbitrum `0xda3970...db7b3d`; arbitrum `0xdd4536...0f975a` | ⚠️ Unaudited |
| Staking | unknown | ethereum | [`0x804970...eb1a31`](./contracts/ethereum-1/0x80497049b005fd236591c3cd431dbd6e06eb1a31/) | ⚠️ Unaudited |
| UsdnLongFarming | unknown | ethereum | [`0xf9d360...6bbe27`](./contracts/ethereum-1/0xf9d36078a248af249aa57ae1d5d0c1033d6bbe27/) | ⚠️ Unaudited |
| UsdnProtocolImpl | unknown | ethereum | 2 deployments: ethereum [`0x271df5...a4c498`](./contracts/ethereum-1/0x271df5517a4daacb7cab988aa64d23debda4c498/); ethereum `0x656cb8...41f01a` | ⚠️ Unaudited |
| UsdnProtocolSettersLibrary | unknown | ethereum | [`0xea10c7...7f136a`](./contracts/ethereum-1/0xea10c7fceb16779234e0a5ebe7e963df2c7f136a/) | ⚠️ Unaudited |
| Usdnr | unknown | ethereum | [`0x82957d...49269b`](./contracts/ethereum-1/0x82957d600963ae0c529c3819ac7c349c4d49269b/) | ⚠️ Unaudited |
| VaultLib | core_logic | ethereum | [`0xf67e2d...b1e886`](./contracts/ethereum-1/0xf67e2dc041b8a3c39d066037d29f500757b1e886/) | ⚠️ Unaudited |
| WusdnVault | core_logic | ethereum | [`0xa6d149...24d967`](./contracts/ethereum-1/0xa6d14921219a7be3660268495275937eb324d967/) | ⚠️ Unaudited |

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
| [12-18-2024_Smardex_USDN.pdf](https://github.com/GuardianAudits/Audits/blob/main/Smardex/12-18-2024_Smardex_USDN.pdf) | Guardian | Audit | 2024-12 | aging | Direct | contract_name | 10 | high |
| [* USDN’s smart contracts have undergone multiple rigorous security audits conducted by [**Bailsec**]() and [**Guardian**](https://guardianaudits.com/) to ensure their reliability.](https://bailsec.io/) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Smardex%20USDN%20-%20Final%20Report.pdf) | BailSec | Audit | 2024-05 | stale | Direct | contract_name | 6 | high |
| [{% embed url="<>" %}](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Smardex%20Ecosystem%20-%20Final%20Report.pdf) | BailSec | Audit | 2025-01 | aging | Direct | contract_name | 4 | high |
| [{% embed url="<>" %}](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Smardex%20-%20Router%20-%20Final%20Report.pdf) | BailSec | Audit | 2025-03 | aging | Direct | contract_name | 1 | high |
| [Bailsec - SmarDex - P2P Lending - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20SmarDex%20-%20P2P%20Lending%20-%20Final%20Report.pdf) | Bailsec | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x037768...043a0c`](./contracts/ethereum-1/0x037768ddeddb392201d1a31ce05f0b7013043a0c/) | SmardexToken | token | $19,806,097.52 | Verified native implementation with $19,806,097.52 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6899fa...06bfa6`](./contracts/polygon-137/0x6899face15c14348e1759371049ab64a3a06bfa6/) | TokenImplementation | token | $250,570.55 | Verified native implementation with $250,570.55 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48d198...5cbaf7`](./contracts/ethereum-1/0x48d19891158223530e336c2290fa977d935cbaf7/) | Accumulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9e0b1...3b737d`](./contracts/ethereum-1/0xd9e0b1b9156e27a55ea9d53e81380651443b737d/) | AiWhitelister | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x346c0c...b3f920`](./contracts/ethereum-1/0x346c0ca93354383a31d78d4944290d51f3b3f920/) | AutoSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02fb61...9f3e02`](./contracts/base-8453/0x02fb6161eb60d653a951bf71993cda7bef9f3e02/) | AutoSwapperL2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d85c0...a77523`](./contracts/ethereum-1/0x7d85c0905a6e1ab5837a0b57cd94a419d3a77523/) | FarmingRange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x53d165...257f69`](./contracts/arbitrum-42161/0x53d165df0414bd02e91747775450934bf2257f69/) | FarmingRangeL2Arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce1bc7...98daf5`](./contracts/ethereum-1/0xce1bc72a070349cb444743ec3b2b4d8bf398daf5/) | FarmingToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24575e...b70e6e`](./contracts/ethereum-1/0x24575e1250467f1a90a1c16f1e921c1674b70e6e/) | PUMP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25c4b9...034837`](./contracts/ethereum-1/0x25c4b95f00a01d3739815f026c52126f44034837/) | RewardManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x391bec...4c8deb`](./contracts/polygon-137/0x391becc8daaf32b9ba8e602e9527bf9da04c8deb/) | RewardManagerL2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5c622d...94cbc9`](./contracts/arbitrum-42161/0x5c622dcc96b6d96ac6c154f99cf081815094cbc9/) | RewardManagerL2Arbitrum | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40a8ee...d6f3cf`](./contracts/ethereum-1/0x40a8ee345887c7e92a24c3cd57a191d1b2d6f3cf/) | RewardManagerWithdrawable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x863799...a97c41`](./contracts/arbitrum-42161/0x863799a120edd11ca8718a3a93f1beb138a97c41/) | RewardManagerWithdrawableArbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x45f23f...bc6d6e`](./contracts/base-8453/0x45f23f8ca9b5a4b6c22aaa451920be4566bc6d6e/) | SmarDexDegen | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3aedcb...2d7e81`](./contracts/ethereum-1/0x3aedcb9e2f3d70f67f2116592f68f370c02d7e81/) | SmardexFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x340386...8b1764`](./contracts/ethereum-1/0x3403868cd7368b3c12d03ec677fe1d5c9e8b1764/) | SmardexRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x804970...eb1a31`](./contracts/ethereum-1/0x80497049b005fd236591c3cd431dbd6e06eb1a31/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf9d360...6bbe27`](./contracts/ethereum-1/0xf9d36078a248af249aa57ae1d5d0c1033d6bbe27/) | UsdnLongFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x271df5...a4c498`](./contracts/ethereum-1/0x271df5517a4daacb7cab988aa64d23debda4c498/) | UsdnProtocolImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea10c7...7f136a`](./contracts/ethereum-1/0xea10c7fceb16779234e0a5ebe7e963df2c7f136a/) | UsdnProtocolSettersLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82957d...49269b`](./contracts/ethereum-1/0x82957d600963ae0c529c3819ac7c349c4d49269b/) | Usdnr | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf67e2d...b1e886`](./contracts/ethereum-1/0xf67e2dc041b8a3c39d066037d29f500757b1e886/) | VaultLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6d149...24d967`](./contracts/ethereum-1/0xa6d14921219a7be3660268495275937eb324d967/) | WusdnVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=21

Zero-match audit list:

- [2565] * USDN’s smart contracts have undergone multiple rigorous security audits conducted by [**Bailsec**]() and [**Guardian**](https://guardianaudits.com/) to ensure their reliability.
- [2569] Bailsec - SmarDex - P2P Lending - Final Report.pdf

Fork inheritance lineage and inherited audits are included when available.
