# Agentic Audit Brief: TG Casino

## Project Overview

- Project: TG Casino (`tg-casino`)
- Website: [https://token.tg.casino/staking](https://token.tg.casino/staking)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-10T20:59:17.455Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 15 unique implementations (20 raw deployments)
- DeFi Llama TVL: $1,201,303.77
- On-chain TVL (included contracts): $13,353,575.52
- TVL by chain: Ethereum $13,353,575.52

## Project Description

TG.Casino is a Telegram casino-associated project centered on the TGC token on Ethereum. The verified on-chain scope supports TGC token contracts and staking/profit-share related contracts, including staking and multi-staking components. Current evidence does not support describing the listed on-chain contracts as facilitating casino games or token-holder governance.

### Architecture

The TGC token is the central asset used across staking contracts. StakingManagerV5 and MultiStakingManagerV2 both interact with TGCToken, and are accessed via upgradeable proxies that share the same deployer cluster.

## Audit Coverage Summary

- Verified implementations audited: 1/15 (6.7%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 20
- Audits discovered: 761
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025 (aging)
- Staleness: 0 fresh, 103 aging, 81 stale, 577 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Coinsult | Tier 2 | 1 | 6.7% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TGCToken | token | ethereum | 2 deployments: ethereum [`0x14bc78...b547b0`](./contracts/ethereum-1/0x14bc78f0e6b9854da2a92f43a0526b31ceb547b0/); ethereum `0x25b4f5...7cb7cf` | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MultiStakingManagerV1 | governance | ethereum | [`0x8a876a...c8bae7`](./contracts/ethereum-1/0x8a876a89af8b0376b1fb0183a89728608bc8bae7/) | ⚠️ Unaudited |
| MultiStakingManagerV2 | governance | ethereum | 2 deployments: ethereum [`0x091656...409b47`](./contracts/ethereum-1/0x0916568854fc53b720186052d8013d62a0409b47/); ethereum `0x176bd8...b06732` | ⚠️ Unaudited |
| MultiStakingManagerV3 | governance | ethereum | [`0xca74e3...c36e80`](./contracts/ethereum-1/0xca74e32d5d5b78ccc0fa13e407872874dbc36e80/) | ⚠️ Unaudited |
| PresaleV1 | unknown | ethereum | [`0xa87e79...73009a`](./contracts/ethereum-1/0xa87e79652814a0239bf752d4d7be70f61b73009a/) | ⚠️ Unaudited |
| PresaleV2 | unknown | ethereum | [`0xa1f35d...0d47c4`](./contracts/ethereum-1/0xa1f35da94d3c25c1c130092122db690ff10d47c4/) | ⚠️ Unaudited |
| PresaleV3 | unknown | ethereum | [`0x665fa1...6643fd`](./contracts/ethereum-1/0x665fa1b41c5102ee62b6c23818c2b4f1316643fd/) | ⚠️ Unaudited |
| PresaleV4 | unknown | ethereum | 2 deployments: ethereum [`0x39fd3e...487f92`](./contracts/ethereum-1/0x39fd3e106fed3c80192d1849e13d900f45487f92/); ethereum `0x5188e2...77cc4a` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0x34813f...a7274e`](./contracts/ethereum-1/0x34813f4bc5e2a14c8fffb10bd43c59fa05a7274e/) | ⚠️ Unaudited |
| StakingManager | operational_periphery | ethereum | [`0x9307d5...b692bb`](./contracts/ethereum-1/0x9307d50caae1fa22a08b3352b493797a7ab692bb/) | ⚠️ Unaudited |
| StakingManagerV1 | governance | ethereum | [`0x21d6d6...540ae8`](./contracts/ethereum-1/0x21d6d6d6ffd8b68e94bf5159bb029635af540ae8/) | ⚠️ Unaudited |
| StakingManagerV2 | operational_periphery | ethereum | 2 deployments: ethereum [`0xb5b77c...bf1a0e`](./contracts/ethereum-1/0xb5b77c895bf3c4c060da327fbc953e7fbdbf1a0e/); ethereum `0xfad6ef...f77b42` | ⚠️ Unaudited |
| StakingManagerV3 | governance | ethereum | [`0xc2db0d...fdd262`](./contracts/ethereum-1/0xc2db0df8ba54715ff73691c8c934120168fdd262/) | ⚠️ Unaudited |
| StakingManagerV4 | governance | ethereum | [`0x700169...758cc8`](./contracts/ethereum-1/0x700169c3408f10e98c34ac1902e2b6ae89758cc8/) | ⚠️ Unaudited |
| StakingManagerV5 | governance | ethereum | 2 deployments: ethereum [`0x258c31...db764e`](./contracts/ethereum-1/0x258c3104388f8cd72c8b4336fc536033e6db764e/); ethereum `0x4bb67f...694085` | ⚠️ Unaudited |

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
| [Audit](https://github.com/Coinsult/solidity/blob/main/Coinsult_TG.Casino_0x25...b7cf_Audit.pdf) | Coinsult | Audit | 2023-09 | stale | Direct | contract_name | 2 | high |
| [Audit - SalamPresale.pdf](https://github.com/Coinsult/Audits/blob/main/Audit%20-%20SalamPresale.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CheesePad Locker - Audit.pdf](https://github.com/Coinsult/Audits/blob/main/CheesePad%20Locker%20-%20Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Cheesepad - Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Cheesepad%20-%20Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_AIGN_Presale_0xbC...077B_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_AIGN_Presale_0xbC...077B_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_AIGN_Token_0x91...f293_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_AIGN_Token_0x91...f293_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_AIOX_0xd7...c3ea_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_AIOX_0xd7...c3ea_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_APES_0xfB.46DE_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_APES_0xfB.46DE_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_APG_Token_0xa2...916c_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_APG_Token_0xa2...916c_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_APROZ_0x4a...6eb6_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_APROZ_0x4a...6eb6_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_ARK_TOKEN_0xDA...9787_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_ARK_TOKEN_0xDA...9787_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_AVILOM_0xbC...5AD0_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_AVILOM_0xbC...5AD0_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_AgentNet_0x2a...73d9_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_AgentNet_0x2a...73d9_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Agusto_0x59...63E7_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Agusto_0x59...63E7_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_AigentMesh_0x91...f293_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_AigentMesh_0x91...f293_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_AirdropElement_AVWM...wUYs_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_AirdropElement_AVWM...wUYs_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_AirdropSystem_0xE2...20e2_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_AirdropSystem_0xE2...20e2_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Alaxio_0x5f...da32_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Alaxio_0x5f...da32_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Algos_One_J3ck...9yxh_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Algos_One_J3ck...9yxh_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_America_is_Back_0xB3...30B6_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_America_is_Back_0xB3...30B6_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_AntiBullyCoin_5SSK...ZtGw_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_AntiBullyCoin_5SSK...ZtGw_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Apeing_0x16...0F0E_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Apeing_0x16...0F0E_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_ApexchainAI_0x21...0C59_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_ApexchainAI_0x21...0C59_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Archivas_0x44...c7dF_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Archivas_0x44...c7dF_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_AskNoel_0x57...0f20_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_AskNoel_0x57...0f20_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Aster_Doge_0x31...ea6c_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Aster_Doge_0x31...ea6c_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Audit_Ai_0x57...471f_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Audit_Ai_0x57...471f_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Aura_Farming_0x15...9aBe_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Aura_Farming_0x15...9aBe_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_BCBX_CJ3S...RF8A_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_BCBX_CJ3S...RF8A_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_BDOG_0x96...dd14_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_BDOG_0x96...dd14_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_BINGO_AQuR...XWiN_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_BINGO_AQuR...XWiN_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_BIt4K_0x2a...5F82_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_BIt4K_0x2a...5F82_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_BNB_Cz_Dog_0x3e...9b62_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_BNB_Cz_Dog_0x3e...9b62_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_BUTO_F8iT...XBSX_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_BUTO_F8iT...XBSX_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_BXTToken_0x71...52e3_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_BXTToken_0x71...52e3_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_BabyBUILDon_0x93...53de_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_BabyBUILDon_0x93...53de_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_BabyBuilder_0x36...4444_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_BabyBuilder_0x36...4444_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_BabyBuilder_0x8c...d864_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_BabyBuilder_0x8c...d864_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_BabyElonShark_5mab...df91_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_BabyElonShark_5mab...df91_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_BabyTST_0xe7...be91_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_BabyTST_0xe7...be91_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Baby_Aster_0xd0...fc37_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Baby_Aster_0xd0...fc37_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Baby_Elon_Grok_9e4e...HZQN_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Baby_Elon_Grok_9e4e...HZQN_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Baby_builder_staking_0x4c...b091_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Baby_builder_staking_0x4c...b091_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Based_Eggman_0x7f...a8ed_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Based_Eggman_0x7f...a8ed_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Baseforever_0x2b...8aE9_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Baseforever_0x2b...8aE9_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Batcoin_AI_9mZ8...a2UX_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Batcoin_AI_9mZ8...a2UX_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Bellarium_0x68...af72_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Bellarium_0x68...af72_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Besa_0xde...e40c_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Besa_0xde...e40c_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Bhovardhan_Community_Traders_0xfd...0294_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Bhovardhan_Community_Traders_0xfd...0294_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Biafra_Coin_0x69...9900_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Biafra_Coin_0x69...9900_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_BioByte_AI_Dt2j...hvKn_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_BioByte_AI_Dt2j...hvKn_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_BitSwapix_0x46...f142_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_BitSwapix_0x46...f142_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Bitcoin_Doge_0x1a...4d90_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Bitcoin_Doge_0x1a...4d90_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Bitcoin_Hyper_0x69...D09F_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Bitcoin_Hyper_0x69...D09F_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Bitcoin_Hyper_0xa8...702b_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Bitcoin_Hyper_0xa8...702b_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Bless_Kids_DTmN...Kids_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Bless_Kids_DTmN...Kids_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_BlockSACK_0x09...35b7_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_BlockSACK_0x09...35b7_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_BlockchainFX_0x87...83d2_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_BlockchainFX_0x87...83d2_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_BlorboX_HqdG...Awp6_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_BlorboX_HqdG...Awp6_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Blorp_0xba...24b7_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Blorp_0xba...24b7_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Bluzzie_DPXk...dRUN_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Bluzzie_DPXk...dRUN_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Bob_Marley_Meme_J3Az...seDd_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Bob_Marley_Meme_J3Az...seDd_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Bobbie_Goods_0x45...8ee5_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Bobbie_Goods_0x45...8ee5_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_BoilToken_0x24...27be_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_BoilToken_0x24...27be_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_BoilToken_0xA1...2083_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_BoilToken_0xA1...2083_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Bugs_Destroyer_0x05.B447_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Bugs_Destroyer_0x05.B447_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Bullionaire_BULL...qPNu_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Bullionaire_BULL...qPNu_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_ButtaCat_0x77...8777_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_ButtaCat_0x77...8777_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_CANOPY_0x34...06eF_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_CANOPY_0x34...06eF_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_CANOPY_0x34.06eF_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_CANOPY_0x34.06eF_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_CARTIS_COIN_5esk...1kxT_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_CARTIS_COIN_5esk...1kxT_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_CHISAI_0x21...071a_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_CHISAI_0x21...071a_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_CZ_Baby_Broccoli_0xDC...e121_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_CZ_Baby_Broccoli_0xDC...e121_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_CZuilders_0xcc...c8Fe_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_CZuilders_0xcc...c8Fe_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Cat_Duck_2cbd...KxMF_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Cat_Duck_2cbd...KxMF_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Chagy_75zE...vs7r_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Chagy_75zE...vs7r_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Chillpepe_0xF9...3CC3_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Chillpepe_0xF9...3CC3_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Chipmunks_of_Crypto_irNg...5V1W_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Chipmunks_of_Crypto_irNg...5V1W_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_ChowWow_AecA...ZyjC_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_ChowWow_AecA...ZyjC_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Clore_0xe6...e977_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Clore_0xe6...e977_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_CloudChain_AI_B41Z...BY4C_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_CloudChain_AI_B41Z...BY4C_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_CoinBros_0x08...9C2d_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_CoinBros_0x08...9C2d_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_CoinMarketTok_3Sq9...yvSD_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_CoinMarketTok_3Sq9...yvSD_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Coldware_0x52...5c83_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Coldware_0x52...5c83_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Core_AI_0x56...3d5a_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Core_AI_0x56...3d5a_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Crazzers_AI_8m6X...QhKK_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Crazzers_AI_8m6X...QhKK_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Crotch_0xaa...4048_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Crotch_0xaa...4048_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_CryptoTipX_0x14...Ab5d_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_CryptoTipX_0x14...Ab5d_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Cryptoroule_coin_0xDD...D5C7_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Cryptoroule_coin_0xDD...D5C7_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_CupGoalCoin_CjtU...7nYi_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_CupGoalCoin_CjtU...7nYi_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Cup_Final_2026_H2Fu...aRG7_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Cup_Final_2026_H2Fu...aRG7_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_DEPE_0x68...af34_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_DEPE_0x68...af34_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_DOGEBALL_0x57...db6a_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_DOGEBALL_0x57...db6a_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_DOGEMIND.EXE_0xad...0e50_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_DOGEMIND.EXE_0xad...0e50_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_DOGEPOKI_0xCc...63C7_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_DOGEPOKI_0xCc...63C7_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_DOPE_CAT_0xf6...3946_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_DOPE_CAT_0xf6...3946_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_DUCK_0x1A...6Abe_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_DUCK_0x1A...6Abe_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_DeXRP_0xbb...d4e4_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_DeXRP_0xbb...d4e4_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Decryptox_0x27...60E8_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Decryptox_0x27...60E8_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_DeepSeek_Token_HRNy...ZPVa_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_DeepSeek_Token_HRNy...ZPVa_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_DeepSnitch_0x1f...4622_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_DeepSnitch_0x1f...4622_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Degen_Fighters_0x6f...5e49_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Degen_Fighters_0x6f...5e49_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Demo_Token_0x1e...4a81_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Demo_Token_0x1e...4a81_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_DepeToken_0xCe.6404_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_DepeToken_0xCe.6404_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Diamond_Hands_0x10...D501_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Diamond_Hands_0x10...D501_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_DigiTap_0x4a...7d08_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_DigiTap_0x4a...7d08_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Disaster_0xd6...A695_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Disaster_0xd6...A695_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_DogeZillaArmy_zaZS...eFuC_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_DogeZillaArmy_zaZS...eFuC_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_DogelronCoin_ArUJ...EaXi_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_DogelronCoin_ArUJ...EaXi_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Dogx_Company_6ckS...SPiC_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Dogx_Company_6ckS...SPiC_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_DogyElon_Dz3h...BGNm_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_DogyElon_Dz3h...BGNm_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Doraemon_0x31...a082_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Doraemon_0x31...a082_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Ducky_0xaD...462f_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Ducky_0xaD...462f_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_DustFund_0xb2...79ee_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_DustFund_0xb2...79ee_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_EDMA_0xf6...5029_Audi.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_EDMA_0xf6...5029_Audi.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_ENDOCRYPTO_0xb8...5f20_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_ENDOCRYPTO_0xb8...5f20_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_ESCAPE_0x36...eAa6_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_ESCAPE_0x36...eAa6_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_ETHICS_0x69...00E9_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_ETHICS_0x69...00E9_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_ETH_Pepe_0x49...1B30_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_ETH_Pepe_0x49...1B30_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_EXOVUM_0x3e...8ff7_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_EXOVUM_0x3e...8ff7_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Earth_Version_2_0x68...8504_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Earth_Version_2_0x68...8504_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_EcoBuilt_0x10...1539_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_EcoBuilt_0x10...1539_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Elop_0x58...c76A_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Elop_0x58...c76A_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Emperor_Coin_FwMa...bcTT_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Emperor_Coin_FwMa...bcTT_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Emperor_Coin_GMkW...KinG_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Emperor_Coin_GMkW...KinG_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_EtherFloki_0xCf...6a2E_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_EtherFloki_0xCf...6a2E_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_FART_AGENT_AI_0x3b...ca55_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_FART_AGENT_AI_0x3b...ca55_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_FART_PIG_E2Kd...pump_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_FART_PIG_E2Kd...pump_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_FEPE_0xd8...6Aca_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_FEPE_0xd8...6Aca_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_FOXRPFUN_0x7e...cb52_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_FOXRPFUN_0x7e...cb52_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_FROGE_0x42...2df5_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_FROGE_0x42...2df5_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_FUTURESYNCX_0x05...6922_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_FUTURESYNCX_0x05...6922_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_FYBORG_8vyY...zj44_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_FYBORG_8vyY...zj44_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_F_0xd6...3b51_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_F_0xd6...3b51_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Fafo_Trump_0x02...3322_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Fafo_Trump_0x02...3322_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Favolo_3k25...PnxA_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Favolo_3k25...PnxA_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Finity_0x05...09C5_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Finity_0x05...09C5_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Flexafina_0xc6...b3a8_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Flexafina_0xc6...b3a8_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Fluxx_Fusion_0x9d...620f_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Fluxx_Fusion_0x9d...620f_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Frobo_0x56...faD3_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Frobo_0x56...faD3_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Furzy_Cat_evcD...9osH_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Furzy_Cat_evcD...9osH_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Future_Pepe_0x78...1387_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Future_Pepe_0x78...1387_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_GYM_BRO_COIN_0x85...9e5e_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_GYM_BRO_COIN_0x85...9e5e_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Giggle_Cat_0x11...3364_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Giggle_Cat_0x11...3364_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_GlasToken_(proxy)_0x8B...1DEf_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_GlasToken_(proxy)_0x8B...1DEf_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_GlasToken_0x3f...C390_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_GlasToken_0x3f...C390_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Glimmer_0x23...d219_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Glimmer_0x23...d219_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_GoldenRise_0xdb...4444_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_GoldenRise_0xdb...4444_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Green_Dollar_Coin_0x2b...76e8_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Green_Dollar_Coin_0x2b...76e8_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Grok3Ai_Ae99...dAeW_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Grok3Ai_Ae99...dAeW_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Grok_3_Elon_GM6i...PipU_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Grok_3_Elon_GM6i...PipU_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_GuardiansOfTheCar_Goc7...cfmd_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_GuardiansOfTheCar_Goc7...cfmd_Audit.pdf) | Guardian | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Guardians_Of_The_Car_CAR3...S5Nf_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Guardians_Of_The_Car_CAR3...S5Nf_Audit.pdf) | Guardian | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_HALLU_0xD6...E6f9_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_HALLU_0xD6...E6f9_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_HONGGILDONG_0x01...a220_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_HONGGILDONG_0x01...a220_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Habubu_0xdd...59ee_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Habubu_0xdd...59ee_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Happy_Village_0x5a...151f_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Happy_Village_0x5a...151f_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Hero_Villain_Republic_0xa5...837c_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Hero_Villain_Republic_0xa5...837c_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Hype_Dog_416v...qpG2_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Hype_Dog_416v...qpG2_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_HyperFx_0x69...9E12_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_HyperFx_0x69...9E12_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_ICOIN_0x5A...B156_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_ICOIN_0x5A...B156_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_INIZIO_47_0x02...68e0_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_INIZIO_47_0x02...68e0_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Indocia_0x13...d872_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Indocia_0x13...d872_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Influencer_Pepe_0x80...d4F7_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Influencer_Pepe_0x80...d4F7_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Invest4B_0x4b...144f_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Invest4B_0x4b...144f_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Investing_Usdt_0x7c...c679_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Investing_Usdt_0x7c...c679_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Ironhold_8zzy...iron_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Ironhold_8zzy...iron_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Jalapeno_Man_FHea...nyRX_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Jalapeno_Man_FHea...nyRX_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_KOALA_0x11...A0B7_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_KOALA_0x11...A0B7_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_KRAET_7Qe3...toHj_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_KRAET_7Qe3...toHj_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Kancler_Coin_FiDN...pump_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Kancler_Coin_FiDN...pump_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Kermit_The_Frog_0xd2...54d6_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Kermit_The_Frog_0xd2...54d6_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_King_Kong_0x01...b1bb_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_King_Kong_0x01...b1bb_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_King_Of_Stonks_0x29...5397_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_King_Of_Stonks_0x29...5397_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Kingz_0x70...5ea2_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Kingz_0x70...5ea2_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Kira_Nexus_0xCD...Ad45_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Kira_Nexus_0xCD...Ad45_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Kri_0xb3...1Ded_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Kri_0xb3...1Ded_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Kynzo_Token_Fux6...JqL3_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Kynzo_Token_Fux6...JqL3_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_LIMBO_THE_FROG_5kMm...LKVy_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_LIMBO_THE_FROG_5kMm...LKVy_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_LOLO_GBEV...tQZE_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_LOLO_GBEV...tQZE_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_LandWolf_BSC_0xb4...156e_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_LandWolf_BSC_0xb4...156e_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_LayerBTC_0x99...df41_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_LayerBTC_0x99...df41_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Layer_Brett_0x11...2610_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Layer_Brett_0x11...2610_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Layer_Brett_0xBD...6Ae9_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Layer_Brett_0xBD...6Ae9_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Liberlaunch_0x33...989e_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Liberlaunch_0x33...989e_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Lifti_0xbf.f3a1_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Lifti_0xbf.f3a1_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Linxir_0xd5...1584_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Linxir_0xd5...1584_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_LiquidChain_0x7a...bb16_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_LiquidChain_0x7a...bb16_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Loris_0x2d...3836_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Loris_0x2d...3836_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Lunis_0x26...5DD6_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Lunis_0x26...5DD6_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_LustAI_7ZDw...5M54_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_LustAI_7ZDw...5M54_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_MANGO_THE_SEAL_3H27...pump_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_MANGO_THE_SEAL_3H27...pump_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_MARLEY_0x04...0fa5_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_MARLEY_0x04...0fa5_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_MARLEY_0x42...b46f_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_MARLEY_0x42...b46f_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_MASH_AI_0x52.B575_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_MASH_AI_0x52.B575_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Manyu_BNB_0x61...abdb_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Manyu_BNB_0x61...abdb_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_MaoMao_0x15...83a2_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_MaoMao_0x15...83a2_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Masters_of_Trivia_motN...Bizt_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Masters_of_Trivia_motN...Bizt_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Masters_of_Trivia_motN...Fnwf_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Masters_of_Trivia_motN...Fnwf_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Maxi_Doge_0x96...3550_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Maxi_Doge_0x96...3550_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Mecca_Coin_4133...P4Ma_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Mecca_Coin_4133...P4Ma_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_MedLease_0x2c...e427_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_MedLease_0x2c...e427_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_MediTechX_0x5d...482c_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_MediTechX_0x5d...482c_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Meganet_0xDC...b98D_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Meganet_0xDC...b98D_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_MemePad_9DYy...mMPX_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_MemePad_9DYy...mMPX_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_MemeToro_0x44.cfff_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_MemeToro_0x44.cfff_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Meme_Punch_0x1d.3427_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Meme_Punch_0x1d.3427_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Memeseco_0x56...82e1_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Memeseco_0x56...82e1_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_MetaMemeVault_0x8e...089c_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_MetaMemeVault_0x8e...089c_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_MetaNewsToken_No c...ress_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_MetaNewsToken_No%20c...ress_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Meteor_Swap_0x0c...8fa6_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Meteor_Swap_0x0c...8fa6_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Milk_Mocha_0x7f...aeF2_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Milk_Mocha_0x7f...aeF2_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Milon_CYv7...hvMH_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Milon_CYv7...hvMH_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_MiniBonk_0xD2...4444_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_MiniBonk_0xD2...4444_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Mini_Manyu_0x67...e9b8_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Mini_Manyu_0x67...e9b8_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Mirror_0x30...3963_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Mirror_0x30...3963_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_MogDog_0xe8...9264_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_MogDog_0xe8...9264_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Monkana_sol_4aW4...bonk_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Monkana_sol_4aW4...bonk_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Monova_0xa7...0293_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Monova_0xa7...0293_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Moo_Shot_0xc4...E7AA_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Moo_Shot_0xc4...E7AA_Audit.pdf) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_MoonCoin_0x73...2215_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_MoonCoin_0x73...2215_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Moxxer_Coin_xXrj...zbsy_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Moxxer_Coin_xXrj...zbsy_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Mr_BOBO_FRgg...rbN8_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Mr_BOBO_FRgg...rbN8_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Mr_Vodka_Fchu...MYXS_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Mr_Vodka_Fchu...MYXS_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Mukbang_Molly_6fZu...pzPa_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Mukbang_Molly_6fZu...pzPa_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_My_Little_Pony_0xdd...8d0f_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_My_Little_Pony_0xdd...8d0f_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_NXS_0xD4...0757_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_NXS_0xD4...0757_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Neo_Pepe_0xa9...488a_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Neo_Pepe_0xa9...488a_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Neptune_NEPt...BHc2_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Neptune_NEPt...BHc2_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Nexdol_0xB4...378b_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Nexdol_0xB4...378b_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Nexora_0x58...0d94_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Nexora_0x58...0d94_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Noorung_(renounced)_0x2a...4889_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Noorung_(renounced)_0x2a...4889_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_NotFoundCoin_0x92...a327_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_NotFoundCoin_0x92...a327_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_NovaChargeX_Coin_0xf8...0792_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_NovaChargeX_Coin_0xf8...0792_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_NovaRWA_0x80...c056_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_NovaRWA_0x80...c056_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_OMINA_0x40...f848_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_OMINA_0x40...f848_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_OOJU_0x85...A244_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_OOJU_0x85...A244_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_OOJU_0xe8...2f47_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_OOJU_0xe8...2f47_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_OPTER_0xfb...2136_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_OPTER_0xfb...2136_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Official_FAFO_4vH4...r1gw_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Official_FAFO_4vH4...r1gw_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_OfflyFans_0x40...f7ac_Audit-min.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_OfflyFans_0x40...f7ac_Audit-min.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Oh_My_God_Coin_mntK...queo_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Oh_My_God_Coin_mntK...queo_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_OnlyUp_0x4a...1755_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_OnlyUp_0x4a...1755_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Orimex_AI_0x72...5ede_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Orimex_AI_0x72...5ede_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Ototocee_6mr4...Qdxk_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Ototocee_6mr4...Qdxk_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_PEPENODE_0xd2...9831_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_PEPENODE_0xd2...9831_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_PEPESNIX_0x28...286c_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_PEPESNIX_0x28...286c_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_PESC_Token_0x24...E68b_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_PESC_Token_0x24...E68b_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_PREDINO_0x7C...78fA_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_PREDINO_0x7C...78fA_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_PRIVA_0xCd...29c3_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_PRIVA_0xCd...29c3_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_PairPunk_6z9X...bonk_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_PairPunk_6z9X...bonk_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Papu_Coin_0x92...13c2_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Papu_Coin_0x92...13c2_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_ParchiX_0xfd...eb1b_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_ParchiX_0xfd...eb1b_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Peanut_0xD1...0dD1_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Peanut_0xD1...0dD1_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_PepeEmpire_0x92...b972_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_PepeEmpire_0x92...b972_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_PepePawn_Token_0x99...E57B_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_PepePawn_Token_0x99...E57B_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_PepeVandal_0x39...2F44_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_PepeVandal_0x39...2F44_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Pepe_Dollar_0x87...042e_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Pepe_Dollar_0x87...042e_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Pepe_Dollar_0xef...d5c1_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Pepe_Dollar_0xef...d5c1_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Pepe_ETH_Ico_No c...ress_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Pepe_ETH_Ico_No%20c...ress_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Pepe_Hockey_0xF2...A212_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Pepe_Hockey_0xF2...A212_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Pepe_Orion_0xA3...888A_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Pepe_Orion_0xA3...888A_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Pepe_Rider_0x99...88e9_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Pepe_Rider_0x99...88e9_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Pepe_The_Notorious_0x75...014e_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Pepe_The_Notorious_0x75...014e_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Pepe_The_Notorious_v2_0x83...630a_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Pepe_The_Notorious_v2_0x83...630a_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Pepe_Tribe_0xee...c9a6_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Pepe_Tribe_0xee...c9a6_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Pepe_Unchained_0x93...85d6_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Pepe_Unchained_0x93...85d6_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Perform_AI_0xdf...c2e0_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Perform_AI_0xdf...c2e0_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Perform_AI_0xe3...8eb2_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Perform_AI_0xe3...8eb2_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Pexebel_0x62...fd05_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Pexebel_0x62...fd05_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Pi_Network_Miners_C3CU...2agK_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Pi_Network_Miners_C3CU...2agK_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Pig_Coin_0x97...6e8c_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Pig_Coin_0x97...6e8c_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_PineX_Finance_Token_0x20...1769_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_PineX_Finance_Token_0x20...1769_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Polana_0xfe...E7b2_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Polana_0xfe...E7b2_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Poly_Truth_0xba.5f49_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Poly_Truth_0xba.5f49_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_PopAI_0x86...4444_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_PopAI_0x86...4444_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Project_HorusX_0xe2...124c_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Project_HorusX_0xe2...124c_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Protocol_AI_0x7f...2902_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Protocol_AI_0x7f...2902_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Pulse_Robot_FtbZ...ZU3F_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Pulse_Robot_FtbZ...ZU3F_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Pumpe_0xd6...2f93_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Pumpe_0xd6...2f93_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Punisher_0x87...bE36_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Punisher_0x87...bE36_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_QuanEx_0xeA...3888_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_QuanEx_0xeA...3888_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Quantum_X_0x65...D605_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Quantum_X_0x65...D605_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Quasar_Chain_0x43...fa7e_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Quasar_Chain_0x43...fa7e_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_REKT_4A8K...USrK_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_REKT_4A8K...USrK_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_REX_Token_0x58...5785_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_REX_Token_0x58...5785_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_RUDI_BSC_0x47...43e8_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_RUDI_BSC_0x47...43e8_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_RatCop_DxqD...Eysy_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_RatCop_DxqD...Eysy_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Refacta_AI_0x75...b813_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Refacta_AI_0x75...b813_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Republic_of_El_Salvador_ELTy...pump_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Republic_of_El_Salvador_ELTy...pump_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Rich_Pepe_0x65...be5f_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Rich_Pepe_0x65...be5f_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Rickroll_0xf8...5bad_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Rickroll_0xf8...5bad_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_SAFEMOON_Staking_0x01...a735_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_SAFEMOON_Staking_0x01...a735_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_SALAM_0x4a...b4a0_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_SALAM_0x4a...b4a0_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_SHIH_TZU_0x2f...dca2_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_SHIH_TZU_0x2f...dca2_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_SOKKERPRO_TOKEN_OFICIAL_0x13...475e_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_SOKKERPRO_TOKEN_OFICIAL_0x13...475e_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_SOKKERPRO_TOKEN_OFICIAL_0x6E...c9e7_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_SOKKERPRO_TOKEN_OFICIAL_0x6E...c9e7_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_SONAMI_0x1f...dd36_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_SONAMI_0x1f...dd36_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_SOSANA_49jd...YFMj_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_SOSANA_49jd...YFMj_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_STAKEREUM_0xA4...FF58_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_STAKEREUM_0xA4...FF58_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_STAKEREUM_0xb0...be4d_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_STAKEREUM_0xb0...be4d_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_SafeBSC_0xf8...5d80_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_SafeBSC_0xf8...5d80_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Satoshi_Yolo_0x75...6e63_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Satoshi_Yolo_0x75...6e63_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Satu_Wallet_EWnS...pump_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Satu_Wallet_EWnS...pump_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Scitus_0x8b...196a_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Scitus_0x8b...196a_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Scrooge_Bank_Ahg9...NcYx_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Scrooge_Bank_Ahg9...NcYx_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Secury_Wallet_0x9b...ca3e_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Secury_Wallet_0x9b...ca3e_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_ShamirCoin_8kvm...Ryth_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_ShamirCoin_8kvm...Ryth_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Sherex_0x24...64b9_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Sherex_0x24...64b9_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_ShieldGuard_Protocol_0x88...cf7f_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_ShieldGuard_Protocol_0x88...cf7f_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_ShimaNest_0x70...2a19_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_ShimaNest_0x70...2a19_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Sigma_Brett_0x88...F4a3_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Sigma_Brett_0x88...F4a3_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Simpsons_0xB7...aAff_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Simpsons_0xB7...aAff_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Smilek_to_the_Bank_0x4f.B997_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Smilek_to_the_Bank_0x4f.B997_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_SnakyWay_0x71...1B91_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_SnakyWay_0x71...1B91_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Snorter_0x21...EB53_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Snorter_0x21...EB53_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_SolAudit_AI_6WT3...ivds_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_SolAudit_AI_6WT3...ivds_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_SolFart_0x2b...837b_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_SolFart_0x2b...837b_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Solafi_HkXf...zAn6_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Solafi_HkXf...zAn6_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Solaverse_soLA...AVs9_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Solaverse_soLA...AVs9_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_SpaceXRP_0x72...bBFD_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_SpaceXRP_0x72...bBFD_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_SpaceX_E6if...pump_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_SpaceX_E6if...pump_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_StandUpAmerica_0x84...16cc_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_StandUpAmerica_0x84...16cc_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Stonk_Pepe_0x55...05Fa_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Stonk_Pepe_0x55...05Fa_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_StreetWall_Token_0x25...c35A_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_StreetWall_Token_0x25...c35A_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_SuiDex_0xC7...5eeC_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_SuiDex_0xC7...5eeC_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Suilife_0x27...1511_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Suilife_0x27...1511_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_SyncOrbit_0xaa...1431_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_SyncOrbit_0xaa...1431_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_TAPZI_0x53...9c74_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_TAPZI_0x53...9c74_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_TARIFF_0x5e...cf12_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_TARIFF_0x5e...cf12_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_THE_EYE_0x98...de30_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_THE_EYE_0x98...de30_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_TONDEX_0x11...38E5_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_TONDEX_0x11...38E5_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_TRD_Network_0xEa...9Ef9_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_TRD_Network_0xEa...9Ef9_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_TRUMP100X_ANg8...tzvu_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_TRUMP100X_ANg8...tzvu_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_TariffCoin_AHNu...QZuR_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_TariffCoin_AHNu...QZuR_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Tariff_Trump_DDsw...EpPy_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Tariff_Trump_DDsw...EpPy_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Tensora_0x44...0F3c_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Tensora_0x44...0F3c_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_TheLastDwarfs_EQCG...Xj5m_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_TheLastDwarfs_EQCG...Xj5m_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_The_Flash_AI_CYhN...azwZ_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_The_Flash_AI_CYhN...azwZ_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_TikTop_0x33...8512_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_TikTop_0x33...8512_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Token6900_0xDf...Df1e_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Token6900_0xDf...Df1e_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_TopOilNews_3mVV...2WBu_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_TopOilNews_3mVV...2WBu_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_TradeView_0x50...b466_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_TradeView_0x50...b466_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Troller_Cat_0xb9...627d_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Troller_Cat_0xb9...627d_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Trump_Stage_7LGo...MXo1_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Trump_Stage_7LGo...MXo1_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Trust_Inspect_0x1a...731d_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Trust_Inspect_0x1a...731d_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_TurboKoala_AI_DZb9...UCi5_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_TurboKoala_AI_DZb9...UCi5_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_USA_Gold_Card_6nSL...LBTC_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_USA_Gold_Card_6nSL...LBTC_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_USD_Treasure_Token_0x9c...fc33_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_USD_Treasure_Token_0x9c...fc33_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_UncleTrump_AI_BbQs...k7Xb_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_UncleTrump_AI_BbQs...k7Xb_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_UnitedFans_0x15...6a1a_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_UnitedFans_0x15...6a1a_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_United_nation_of_Memes_0x3e...32c8_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_United_nation_of_Memes_0x3e...32c8_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Unity_Software_0xfd...b2d9_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Unity_Software_0xfd...b2d9_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_V8.Markets_0xA9.7623_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_V8.Markets_0xA9.7623_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_VERDRA_0x4C...58aB_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_VERDRA_0x4C...58aB_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_VERDRA_0x6E...5582_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_VERDRA_0x6E...5582_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_VERONUM_0x58...f0d7_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_VERONUM_0x58...f0d7_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_VIOGRAM_v4VW...CVGT_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_VIOGRAM_v4VW...CVGT_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_VORTIX_0xC1...3529_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_VORTIX_0xC1...3529_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Venture_Card_9QNp...B1Br_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Venture_Card_9QNp...B1Br_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_ViFoxCoin_0xec...2540_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_ViFoxCoin_0xec...2540_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Voice_AI_9jJz...Pr36_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Voice_AI_9jJz...Pr36_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Voltryn_0x42...1b87_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Voltryn_0x42...1b87_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_WEJE_Token_0xB0...404d_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_WEJE_Token_0xB0...404d_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Wadoozie_0x8a.5d72_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Wadoozie_0x8a.5d72_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Waffle_0x17...4DaB_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Waffle_0x17...4DaB_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Wagerd_0x07...44C9_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Wagerd_0x07...44C9_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Wagerd_0x26...cf9E_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Wagerd_0x26...cf9E_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Wall_Street_Chain_0xdc...9aaa_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Wall_Street_Chain_0xdc...9aaa_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Wall_Street_Ponke_0x91...15ac_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Wall_Street_Ponke_0x91...15ac_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Wazaaa_waza...3N3U_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Wazaaa_waza...3N3U_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Web3Verse_Dyqf...YSLv_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Web3Verse_Dyqf...YSLv_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_White_Shark_0x60...42E6_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_White_Shark_0x60...42E6_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Wisecoin_52s2...GiYU_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Wisecoin_52s2...GiYU_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_XRPBANK_0x68...6d24_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_XRPBANK_0x68...6d24_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_YETI_0xbC...4ce2_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_YETI_0xbC...4ce2_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_YYAI_0x55...588E_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_YYAI_0x55...588E_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_YY_0xe6...2F0B_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_YY_0xe6...2F0B_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Yahoo_Token_0x32...537a_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Yahoo_Token_0x32...537a_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Yieltra_8oug...pYLT_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Yieltra_8oug...pYLT_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Zetarium_0x87...ded0_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Zetarium_0x87...ded0_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Zonke_Solana_Afcf...wmNL_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Zonke_Solana_Afcf...wmNL_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_Zyra_0x03...46f0_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_Zyra_0x03...46f0_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_baseperp_0xA8...52F5_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_baseperp_0xA8...52F5_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_degenwoj_0xd0...9F0d_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_degenwoj_0xd0...9F0d_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_doge秽土转生版真名_0xEE...579F_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_doge%E7%A7%BD%E5%9C%9F%E8%BD%AC%E7%94%9F%E7%89%88%E7%9C%9F%E5%90%8D_0xEE...579F_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_eksi_0xb8...4155_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_eksi_0xb8...4155_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_mtx-token_0x5d...482c_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_mtx-token_0x5d...482c_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_player_0xF6.1fd9_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_player_0xF6.1fd9_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_sealwifhat_0x57...487b_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_sealwifhat_0x57...487b_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Coinsult_xAI_GAMES_9xv4...cNtZ_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Coinsult_xAI_GAMES_9xv4...cNtZ_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Lifti Staking-audit-report.pdf](https://github.com/Coinsult/Audits/blob/main/Lifti%20Staking-audit-report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MedLeasePresale-audit-report_final.pdf](https://github.com/Coinsult/Audits/blob/main/MedLeasePresale-audit-report_final.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Proof of Assets - Minotaurus.pdf](https://github.com/Coinsult/Audits/blob/main/Proof%20of%20Assets%20-%20Minotaurus.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [QuasarChain_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/QuasarChain_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Sherex Dex Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Sherex%20Dex%20Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Sherex Staking.pdf](https://github.com/Coinsult/Audits/blob/main/Sherex%20Staking.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SoNamiLayer2.pdf](https://github.com/Coinsult/Audits/blob/main/SoNamiLayer2.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SuperCowNFT_Audit.pdf](https://github.com/Coinsult/Audits/blob/main/SuperCowNFT_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TONMEMEDAO_AUDIT.pdf](https://github.com/Coinsult/Audits/blob/main/TONMEMEDAO_AUDIT.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Wall Street Chain - Audit.pdf](https://github.com/Coinsult/Audits/blob/main/Wall%20Street%20Chain%20-%20Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Zylo Vortex _ Airdrop-audit-report (2).pdf](https://github.com/Coinsult/Audits/blob/main/Zylo%20Vortex%20_%20Airdrop-audit-report%20(2).pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Zylo Vortex _ Milestone-audit-report (2).pdf](https://github.com/Coinsult/Audits/blob/main/Zylo%20Vortex%20_%20Milestone-audit-report%20(2).pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Zylo Vortex _ PowerUp-audit-report (3).pdf](https://github.com/Coinsult/Audits/blob/main/Zylo%20Vortex%20_%20PowerUp-audit-report%20(3).pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [20230830_ASSUREDEFI_SHILLD_SHILLD_Audit.pdf](https://github.com/Assure-DeFi/Audits/blob/main/20230830_ASSUREDEFI_SHILLD_SHILLD_Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [20230830_ASSUREDEFI_SHILLD_SHILLD_Audit_230830_231102.pdf](https://github.com/Assure-DeFi/Audits/blob/main/20230830_ASSUREDEFI_SHILLD_SHILLD_Audit_230830_231102.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ABRAHAM_TOKEN_01_08_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ABRAHAM_TOKEN_01_08_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ABRAHAM_TOKEN_12_31_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ABRAHAM_TOKEN_12_31_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AIMBOT_TOKEN_02_28_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/AIMBOT_TOKEN_02_28_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AITAX_ADVANCED_04_28_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/AITAX_ADVANCED_04_28_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [AITAX_ADVANCED_05_05_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/AITAX_ADVANCED_05_05_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [AIToken_ADV_04_20_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/AIToken_ADV_04_20_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [AIToken_ADV_04_22_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/AIToken_ADV_04_22_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [ANYDEX_TOKEN_04_09_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ANYDEX_TOKEN_04_09_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ANYDEX_TOKEN_04_11_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ANYDEX_TOKEN_04_11_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ANYDEX_TOKEN_04_12_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ANYDEX_TOKEN_04_12_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ANYDEX_TOKEN_04_22_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ANYDEX_TOKEN_04_22_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ARCANE_ERC 20_01_18_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ARCANE_ERC%2020_01_18_2024.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ARCANE_ERC20 token_01_22_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ARCANE_ERC20%20token_01_22_2024.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ASSUREDEFI - KASPACOM AND NEXUS DRAINER INVESTIGATION.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ASSUREDEFI%20-%20KASPACOM%20AND%20NEXUS%20DRAINER%20INVESTIGATION.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ASSUREDEFI_CNDR_$CNDR_TOKEN_Audit_06_14_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ASSUREDEFI_CNDR_%24CNDR_TOKEN_Audit_06_14_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ASSUREDEFI_Good Trouble_GTRB_TOKEN_Audit_06_11_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ASSUREDEFI_Good%20Trouble_GTRB_TOKEN_Audit_06_11_2024.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ASSUREDEFI_JEJE_JJ_TOKEN_Audit_06_24_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ASSUREDEFI_JEJE_JJ_TOKEN_Audit_06_24_2024.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ASSUREDEFI_Nodez_NODE_TOKEN_Audit_Final_09_26_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ASSUREDEFI_Nodez_NODE_TOKEN_Audit_Final_09_26_2024.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ASSUREDEFI_Nodez_TOKEN_Audit _09_26_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ASSUREDEFI_Nodez_TOKEN_Audit%20_09_26_2024.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AURK_ADV_1_12_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/AURK_ADV_1_12_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Addon_ADV_01_20_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Addon_ADV_01_20_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Alpha City_ ERC 20 token_11_21_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Alpha%20City_%20ERC%2020%20token_11_21_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Alpha City_ ERC 20 token_11_23_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Alpha%20City_%20ERC%2020%20token_11_23_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Alpha City_ERC 20 Token_12_6_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Alpha%20City_ERC%2020%20Token_12_6_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Alpha City_ERC Token_25_11_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Alpha%20City_ERC%20Token_25_11_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Assure - AdvancedAudit - Narinu _ PASS_06_18_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Assure%20-%20AdvancedAudit%20-%20Narinu%20_%20PASS_06_18_2024.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [Assure - AdvancedAudit - Narinu _ PASS_v2_06_18_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Assure%20-%20AdvancedAudit%20-%20Narinu%20_%20PASS_v2_06_18_2024.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [Assure - SolanaAudit - HUND_PASS_KYCCOMPLETED_06_11_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Assure%20-%20SolanaAudit%20-%20HUND_PASS_KYCCOMPLETED_06_11_2024.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [Assure DeFi - AdvancedAudit - AeoN_X _ PASS_v3_kyc_06_27_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Assure%20DeFi%20-%20AdvancedAudit%20-%20AeoN_X%20_%20PASS_v3_kyc_06_27_2024.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [Assure DeFi- AdvancedAudit - Mullet _ PASS_06_06_2024_FinalReport.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Assure%20DeFi-%20AdvancedAudit%20-%20Mullet%20_%20PASS_06_06_2024_FinalReport.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [Assure DeFi- SolanaAudit - HUND_PASS_06_05_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Assure%20DeFi-%20SolanaAudit%20-%20HUND_PASS_06_05_2024.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [BASED MONSTA_ADV_12_28_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/BASED%20MONSTA_ADV_12_28_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BINK_TOKEN_04_09_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/BINK_TOKEN_04_09_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [BINK_TOKEN_04_12_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/BINK_TOKEN_04_12_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [BIONIC_ERC 20 Token_10_03_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/BIONIC_ERC%2020%20Token_10_03_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BLOCKBETS_TOKEN_04_05_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/BLOCKBETS_TOKEN_04_05_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BORNHUB_TOKEN_04_12_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/BORNHUB_TOKEN_04_12_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [BakedBeans_TOKEN_04_19_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/BakedBeans_TOKEN_04_19_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [BakedBeans_TOKEN_04_20_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/BakedBeans_TOKEN_04_20_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [BankPad_Platform Audit_Updated 1_23_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/BankPad_Platform%20Audit_Updated%201_23_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [BankPad_Platform_01_22_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/BankPad_Platform_01_22_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Bionic_ERC 20 Token_09_18_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Bionic_ERC%2020%20Token_09_18_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BlackCoachingIndia_ADV_04_03_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/BlackCoachingIndia_ADV_04_03_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BlackCoachingIndia_ADV_04_05_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/BlackCoachingIndia_ADV_04_05_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Blind Faith_SOL_03_20_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Blind%20Faith_SOL_03_20_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [BlindFaith_ADV2_08_12_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/BlindFaith_ADV2_08_12_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [BlindFaith_ADV3_08_12_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/BlindFaith_ADV3_08_12_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [BlindFaith_ADV_08_12_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/BlindFaith_ADV_08_12_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [BlindFaith_SOL_FinalAudit_03_26_2025.pdf](https://github.com/Assure-DeFi/Audits/blob/main/BlindFaith_SOL_FinalAudit_03_26_2025.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Blink Galaxy_ADV_12_6_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Blink%20Galaxy_ADV_12_6_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [BlinkGalaxy_ADV_12_5_25 .pdf](https://github.com/Assure-DeFi/Audits/blob/main/BlinkGalaxy_ADV_12_5_25%20.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Block Social Network_TOKEN_09_20_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Block%20Social%20Network_TOKEN_09_20_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BlockXpress_ ERC 20 token_11_03_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/BlockXpress_%20ERC%2020%20token_11_03_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BloodLoop_ERC 20 Token_09-09-2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/BloodLoop_ERC%2020%20Token_09-09-2023.pdf) | unknown | Audit | 2023 | stale | Direct | n/a | 0 | n/a |
| [BloxSIM_ADV2_10_08_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/BloxSIM_ADV2_10_08_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [BloxSIM_ADV_10_08_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/BloxSIM_ADV_10_08_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [CATE_ADV_09_18_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/CATE_ADV_09_18_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CELLEX_ADV_06_13_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/CELLEX_ADV_06_13_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [CHAIN BASED_TOKEN_11_27_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/CHAIN%20BASED_TOKEN_11_27_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CHAINSPIN_ST_05_23_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/CHAINSPIN_ST_05_23_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CLOAK_ADV_06_16_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/CLOAK_ADV_06_16_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [CNDR_TOKEN_07_02_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/CNDR_TOKEN_07_02_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CONAN_TOKEN_03_28_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/CONAN_TOKEN_03_28_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CRAFTEO_TOKEN_01_29_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/CRAFTEO_TOKEN_01_29_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CRAFTEO_TOKEN_01_30_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/CRAFTEO_TOKEN_01_30_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CRAZE_TOKEN_12_03_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/CRAZE_TOKEN_12_03_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CSWAP_TOKEN_03_28_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/CSWAP_TOKEN_03_28_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CYBONK_TOKEN_03_05_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/CYBONK_TOKEN_03_05_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CatDUCK_SOL_09_06_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/CatDUCK_SOL_09_06_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [CoinCreate_ADV_11_01_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/CoinCreate_ADV_11_01_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [CoinCreate_BTOKEN_11_04_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/CoinCreate_BTOKEN_11_04_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [CoinCreate_STAKENFT_11_04_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/CoinCreate_STAKENFT_11_04_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [CoinCreate_STOKEN_11_04_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/CoinCreate_STOKEN_11_04_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [CoinCreate_VESTING_11_04_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/CoinCreate_VESTING_11_04_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [Cygnus Network_Token_DAO_02_02_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Cygnus%20Network_Token_DAO_02_02_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DESTRA_TOKEN_03_13_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DESTRA_TOKEN_03_13_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DESTRA_TOKEN_03_14_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DESTRA_TOKEN_03_14_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DESTRA_TOKEN_03_28_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DESTRA_TOKEN_03_28_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DESTRA_TOKEN_03_29_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DESTRA_TOKEN_03_29_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DEVOUR_ETH_ADV_05_13_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DEVOUR_ETH_ADV_05_13_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [DEVOUR_ETH_ADV_05_16_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DEVOUR_ETH_ADV_05_16_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [DEVOUR_SOL_ADV2_05_13_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DEVOUR_SOL_ADV2_05_13_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [DEVOUR_SOL_ADV_05_13_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DEVOUR_SOL_ADV_05_13_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [DEVOUR_SOL_ADV_05_16_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DEVOUR_SOL_ADV_05_16_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [DROPS_ADVANCED_03_29_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DROPS_ADVANCED_03_29_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [DROPS_MARKETPLACE_03_30_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DROPS_MARKETPLACE_03_30_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [DROPS_MARKETPLACE_04_03_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DROPS_MARKETPLACE_04_03_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [DROPS_TOKEN_04_01_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DROPS_TOKEN_04_01_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [DROPS_TOKEN_04_03_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DROPS_TOKEN_04_03_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [DROPS_V6_04_07_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DROPS_V6_04_07_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [DRVN LABO_ADV_07_09_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DRVN%20LABO_ADV_07_09_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [DRVN LABO_ADV_08_06_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DRVN%20LABO_ADV_08_06_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [DRVN Labo_ADV_06_05_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DRVN%20Labo_ADV_06_05_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [DRVN_ADV_06_10_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DRVN_ADV_06_10_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [DRVN_ADV_06_27_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DRVN_ADV_06_27_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [DecenterAI_ST2_05_14_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DecenterAI_ST2_05_14_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [DecenterAI_ST_05_14_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DecenterAI_ST_05_14_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [DefiOne.VAC_ERC 20 Token_09_12_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/DefiOne.VAC_ERC%2020%20Token_09_12_2023.pdf) | unknown | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Deluge.Cash_Flash_Audit_12_16_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Deluge.Cash_Flash_Audit_12_16_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ELONTIX Audit_ERC20 Token_7_28_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ELONTIX%20Audit_ERC20%20Token_7_28_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EVA_FARM_09_28_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/EVA_FARM_09_28_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [EVA_FARM_09_29_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/EVA_FARM_09_29_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [EchoMetrix_ADV2_06_28_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/EchoMetrix_ADV2_06_28_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [EchoMetrix_ADV_06_28_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/EchoMetrix_ADV_06_28_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Embark_ERC 20 Token_10_20_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Embark_ERC%2020%20Token_10_20_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Embark_ERC 20 Token_10_31_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Embark_ERC%2020%20Token_10_31_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [FLEXIMINE_TOKEN_03_17_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/FLEXIMINE_TOKEN_03_17_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [FLOORISLAVA_ADV_1_19_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/FLOORISLAVA_ADV_1_19_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [FLOORISLAVA_ADV_1_23_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/FLOORISLAVA_ADV_1_23_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [FLOORISLAVA_ADV_1_9_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/FLOORISLAVA_ADV_1_9_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [FLOORISLAVA_V2_ADV_1_29_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/FLOORISLAVA_V2_ADV_1_29_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [FLOORISLAVA_V2_ADV_1_30_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/FLOORISLAVA_V2_ADV_1_30_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [FRAKTIA_ADV_06_18_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/FRAKTIA_ADV_06_18_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [GAMEDAY_ADV_08_21_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/GAMEDAY_ADV_08_21_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [GEMPAD_LOCKER_12_27_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/GEMPAD_LOCKER_12_27_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [GEMPAD_LOCK_12_23_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/GEMPAD_LOCK_12_23_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [GG_GUARDIAN - ADV_04_15_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/GG_GUARDIAN%20-%20ADV_04_15_26.pdf) | Guardian | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [GG_GUARDIAN_ADV_05_01_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/GG_GUARDIAN_ADV_05_01_26.pdf) | Guardian | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [GG_PROTOCOL - ADV_04_15_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/GG_PROTOCOL%20-%20ADV_04_15_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [GG_PROTOCOL_ADV_05_01_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/GG_PROTOCOL_ADV_05_01_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [GROKCAT_TOKEN_04_12_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/GROKCAT_TOKEN_04_12_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [GROKS TOKEN_ERC 20 TOKEN_12_18_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/GROKS%20TOKEN_ERC%2020%20TOKEN_12_18_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [GUARDIAN_ADV_05_26_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/GUARDIAN_ADV_05_26_24.pdf) | Guardian | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [GUARDIAN_ADV_05_30_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/GUARDIAN_ADV_05_30_24.pdf) | Guardian | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [Gempad_LOCKER_12_21_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Gempad_LOCKER_12_21_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [GeneAlphaAi_ADV_07_23_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/GeneAlphaAi_ADV_07_23_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [GnomeLand_NFT_02_09_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/GnomeLand_NFT_02_09_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [Gradient_ADV_06_02_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Gradient_ADV_06_02_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Gradient_ADV_4_09_20_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Gradient_ADV_4_09_20_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Gradient_Bundle_07_06_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Gradient_Bundle_07_06_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Gradient_Bundle_07_09_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Gradient_Bundle_07_09_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Gradient_Bundle_07_11_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Gradient_Bundle_07_11_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Gradient_OrderBook_ADV_06_12_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Gradient_OrderBook_ADV_06_12_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [GrokCAT_TOKEN_04_09_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/GrokCAT_TOKEN_04_09_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [GrokGrow_BSC_ERC 20 Token_12_18_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/GrokGrow_BSC_ERC%2020%20Token_12_18_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [GrokGrow_v1_ERC20 Token_12_06_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/GrokGrow_v1_ERC20%20Token_12_06_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [GrokGrow_v2_ERC 20 Token_12_06_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/GrokGrow_v2_ERC%2020%20Token_12_06_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [HINA_TOKEN_04_07_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/HINA_TOKEN_04_07_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [HINA_TOKEN_04_12_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/HINA_TOKEN_04_12_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [HedgeFi_ADV_06_18_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/HedgeFi_ADV_06_18_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [HedgeFi_ADV_06_19_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/HedgeFi_ADV_06_19_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [ICB Network_Vesting_04_18_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ICB%20Network_Vesting_04_18_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [INNOVIA_TOKEN_04_23_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/INNOVIA_TOKEN_04_23_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IOTAI_ADV_07_25_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/IOTAI_ADV_07_25_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [IronClad Security_ST_04_18_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/IronClad%20Security_ST_04_18_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IronClad Security_ST_04_21_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/IronClad%20Security_ST_04_21_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [JOI AI_ ERC 20 Token_12:5:23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/JOI%20AI_%20ERC%2020%20Token_12%3A5%3A23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [JOI AI_ERC 20 token_12_6_23.pdf.pdf](https://github.com/Assure-DeFi/Audits/blob/main/JOI%20AI_ERC%2020%20token_12_6_23.pdf.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [KENNY Audit_ERC20 Token_7_28_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/KENNY%20Audit_ERC20%20Token_7_28_23.pdf) | yAudit | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [KIMBERLITE_ST_10_26_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/KIMBERLITE_ST_10_26_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [LADA_TOKEN_02_20_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/LADA_TOKEN_02_20_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LANNetwork_ERC 20 Token_09_03_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/LANNetwork_ERC%2020%20Token_09_03_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LOOP_SOL_10_13_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/LOOP_SOL_10_13_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [LYNX TECH_Staking_12_19_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/LYNX%20TECH_Staking_12_19_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LYNX _Profit Sharing_10_13_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/LYNX%20_Profit%20Sharing_10_13_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LYNX _Profit Sharing_10_22_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/LYNX%20_Profit%20Sharing_10_22_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LYNX_ERC 20 Token_09_27_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/LYNX_ERC%2020%20Token_09_27_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Lynx Tech_$Lynx_Staking_Audit_12_14_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Lynx%20Tech_%24Lynx_Staking_Audit_12_14_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MAO_TOKEN_1_15_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MAO_TOKEN_1_15_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MAO_TOKEN_V2_1_15_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MAO_TOKEN_V2_1_15_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MARIOBURNBROS_TOKEN_05_04_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MARIOBURNBROS_TOKEN_05_04_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [MEME Alliance_SOL_09_09_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MEME%20Alliance_SOL_09_09_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [MEMELORDZ_BASE_10_22_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MEMELORDZ_BASE_10_22_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MEMELORDZ_BSC_10_22_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MEMELORDZ_BSC_10_22_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [METABOT_ADV_10_23_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/METABOT_ADV_10_23_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [METABRAWL_ADV_01_26_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/METABRAWL_ADV_01_26_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [METAZERO_ADVANCED_04_11_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/METAZERO_ADVANCED_04_11_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [METAZERO_STAKING_04_05_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/METAZERO_STAKING_04_05_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MEVDAO_ERC 20 Token_09_05_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MEVDAO_ERC%2020%20Token_09_05_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MEVDAO_ERC 20 Token_09_06_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MEVDAO_ERC%2020%20Token_09_06_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MLMX_ST_07_24_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MLMX_ST_07_24_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [MODUS_V3_02_12_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MODUS_V3_02_12_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [MOREPAD_ADV_12_19_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MOREPAD_ADV_12_19_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MOREPAD_ADV_12_24_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MOREPAD_ADV_12_24_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MOREPAD_ADV_12_28_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MOREPAD_ADV_12_28_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MQSALA_ADV_07_01_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MQSALA_ADV_07_01_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [MQSALA_ADV_07_04_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MQSALA_ADV_07_04_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [MUGA EARN_SOL_10_30_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MUGA%20EARN_SOL_10_30_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [MUNCH_TOKEN_07_17_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MUNCH_TOKEN_07_17_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MUNCH_TOKEN_07_23_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MUNCH_TOKEN_07_23_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MUNCH_TOKEN_07_26_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MUNCH_TOKEN_07_26_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ManaCoin_ERC 20 Token_09-21-2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ManaCoin_ERC%2020%20Token_09-21-2023.pdf) | unknown | Audit | 2023 | stale | Direct | n/a | 0 | n/a |
| [ManaCoin_MNC_Assure DeFi Audit.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ManaCoin_MNC_Assure%20DeFi%20Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Meme Alliance_ ERC 20 token_11_20_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Meme%20Alliance_%20ERC%2020%20token_11_20_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Meme Stars_ ERC 20 token_11_10_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Meme%20Stars_%20ERC%2020%20token_11_10_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MemeLordz_ADV_09_12_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MemeLordz_ADV_09_12_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [MetaHorseUnity_STAKING_02_25_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MetaHorseUnity_STAKING_02_25_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [Metabot_ADV_10_12_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Metabot_ADV_10_12_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [MileStoneMillions_ERC 20 Token_09_13_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MileStoneMillions_ERC%2020%20Token_09_13_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Modus_ERC 20_01_26_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Modus_ERC%2020_01_26_2024.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [MoonInu_ERC 20 Token_08_30_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MoonInu_ERC%2020%20Token_08_30_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Moonreum_ERC 20 Token_10_11_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Moonreum_ERC%2020%20Token_10_11_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MrLightSpeedCoin_ST_11_13_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/MrLightSpeedCoin_ST_11_13_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [NEURASWAP_TOKEN_01_12_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/NEURASWAP_TOKEN_01_12_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [NOMOEX_TOKEN_07_11_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/NOMOEX_TOKEN_07_11_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [NOMOEX_TOKEN_ADV_07_11_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/NOMOEX_TOKEN_ADV_07_11_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [NOREXA_ADV_07_24_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/NOREXA_ADV_07_24_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [NOREXA_YieldOptimizer_09_23_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/NOREXA_YieldOptimizer_09_23_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [NOREXA_YieldOptimizer_10_13_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/NOREXA_YieldOptimizer_10_13_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [NUMPAY_ADV_07_26_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/NUMPAY_ADV_07_26_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [NUMPAY_ADV_08_01_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/NUMPAY_ADV_08_01_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [ONCHAIN BATTLES_ADV_07_29_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ONCHAIN%20BATTLES_ADV_07_29_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [ONCHAIN BATTLES_ADV_07_31_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ONCHAIN%20BATTLES_ADV_07_31_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [ONLYPUMP_ADV_07_03_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ONLYPUMP_ADV_07_03_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [ONLYPUMP_ADV_08_05_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ONLYPUMP_ADV_08_05_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [OPAL_ADV_09_25_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/OPAL_ADV_09_25_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [OPAL_ADV_09_29_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/OPAL_ADV_09_29_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [OPAL_ADV_10_06_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/OPAL_ADV_10_06_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [OPTIMUS POOL MANAGER_ERC20_01_25_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/OPTIMUS%20POOL%20MANAGER_ERC20_01_25_2024.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OPTIMUS_MASTER_01_05_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/OPTIMUS_MASTER_01_05_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OPTIMUS_NR_12_25_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/OPTIMUS_NR_12_25_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OPTIMUS_PM_12_25_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/OPTIMUS_PM_12_25_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OPTIMUS_SP_12_25_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/OPTIMUS_SP_12_25_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OPTIMUS_TR_12_25_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/OPTIMUS_TR_12_25_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OcNest_ADV_02_06_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/OcNest_ADV_02_06_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OnlyPUMP_ADV_07_16_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/OnlyPUMP_ADV_07_16_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [OnlyPUMP_ADV_11_08_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/OnlyPUMP_ADV_11_08_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [OnlyPUMP_Fee Manager_10_16_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/OnlyPUMP_Fee%20Manager_10_16_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [OnlyPump_Fee Manager_10_25_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/OnlyPump_Fee%20Manager_10_25_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [OpTradeAi_ADV_03_02_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/OpTradeAi_ADV_03_02_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [OpTradeAi_ADV_03_04_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/OpTradeAi_ADV_03_04_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [PAYDAX_ST_09_19_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/PAYDAX_ST_09_19_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [PEPOCLOWN_DEPLOYER_10_21_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/PEPOCLOWN_DEPLOYER_10_21_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PETROBIT_ST_07_11_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/PETROBIT_ST_07_11_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [PIPE GDAO_ST_12_13_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/PIPE%20GDAO_ST_12_13_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [PLUTO_TOKEN_12_02_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/PLUTO_TOKEN_12_02_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [POLFEX_ERC 20 Token_08_27_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/POLFEX_ERC%2020%20Token_08_27_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PREDICTINGAI_ERC20 TOKEN_4_16_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/PREDICTINGAI_ERC20%20TOKEN_4_16_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [PRIVIX_L1_07_09_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/PRIVIX_L1_07_09_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [PRIVIX_L1_07_19_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/PRIVIX_L1_07_19_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [PROFIT-IQ_ADVANCED_04_17_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/PROFIT-IQ_ADVANCED_04_17_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [PROFIT-IQ_ADVANCED_04_23_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/PROFIT-IQ_ADVANCED_04_23_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [PROFIT-IQ_Advanced_04_14_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/PROFIT-IQ_Advanced_04_14_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [PepeArab_ADV_01_24_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/PepeArab_ADV_01_24_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Pepoclown_ADV_10_17_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Pepoclown_ADV_10_17_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PredictingAI_TOKEN_04_17_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/PredictingAI_TOKEN_04_17_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [Prophet Bots_Router_V2_01_19_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Prophet%20Bots_Router_V2_01_19_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [ProphetBots_Router_01_19_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ProphetBots_Router_01_19_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [ProphetBots_Router_V3_01_23_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ProphetBots_Router_V3_01_23_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [ProphetBots_Router_V4_REV 2_1_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ProphetBots_Router_V4_REV%202_1_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [RAYLINE_ST_04_05_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/RAYLINE_ST_04_05_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [README.md](https://github.com/Assure-DeFi/Audits/blob/main/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [REBIRTH_ERC 20 Token_09_30_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/REBIRTH_ERC%2020%20Token_09_30_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [REBIRTH_ERC 20 Token_10_04_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/REBIRTH_ERC%2020%20Token_10_04_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [REBIRTH_ERC 20 Token_10_20_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/REBIRTH_ERC%2020%20Token_10_20_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RIFTS_ADV_09_02_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/RIFTS_ADV_09_02_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [RIFTS_ADV_10_03_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/RIFTS_ADV_10_03_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [RIFTS_ADV_10_06_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/RIFTS_ADV_10_06_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [RIFTS_ADV_10_11_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/RIFTS_ADV_10_11_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [RIFTS_ADV_11_21_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/RIFTS_ADV_11_21_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [RIFTS_DAPP_ADV_1_2_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/RIFTS_DAPP_ADV_1_2_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RIFTS_DAPP_ADV_1_5_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/RIFTS_DAPP_ADV_1_5_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RIFTS_PROTOCOL_ADV_1_2_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/RIFTS_PROTOCOL_ADV_1_2_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RIFTS_PROTOCOL_ADV_1_5_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/RIFTS_PROTOCOL_ADV_1_5_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RIFTS_PROTOCOL_ADV_1_6_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/RIFTS_PROTOCOL_ADV_1_6_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ROAI_STAKING_06_14_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ROAI_STAKING_06_14_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [ROAI_STAKING_06_18_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ROAI_STAKING_06_18_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [ROAI_STAKING_06_19_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ROAI_STAKING_06_19_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [ROAI_STAKING_06_25_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ROAI_STAKING_06_25_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [ROLLBACK_ADV_08_23_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ROLLBACK_ADV_08_23_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [ROLLBACK_WALLET_08_18_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ROLLBACK_WALLET_08_18_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [ROLLBACK_WALLET_08_26_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ROLLBACK_WALLET_08_26_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Robinhood_ERC 20 Token_10_13_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Robinhood_ERC%2020%20Token_10_13_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SAFESUN_ADV_08_23_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SAFESUN_ADV_08_23_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [SAFESUN_ADV_TRON_08_20_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SAFESUN_ADV_TRON_08_20_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [SAFESUN_ADV_TRON_08_21_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SAFESUN_ADV_TRON_08_21_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [SENTINEL_ADV_08_22_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SENTINEL_ADV_08_22_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [SHARBI_API_07_28_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SHARBI_API_07_28_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [SHARBI_API_08_11_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SHARBI_API_08_11_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [SHARBI_APP_07_28_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SHARBI_APP_07_28_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [SHARBI_APP_08_11_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SHARBI_APP_08_11_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [SHARBI_CONTRACTS_07_28_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SHARBI_CONTRACTS_07_28_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [SHARBI_CONTRACTS_08_11_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SHARBI_CONTRACTS_08_11_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [SHILLD_ERC 20 Token_08_30_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SHILLD_ERC%2020%20Token_08_30_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SHIRO NEKO_ADV_08_16_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SHIRO%20NEKO_ADV_08_16_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [SILENSIO_ADV_06_26_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SILENSIO_ADV_06_26_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [SOLPAW_TOKEN_04_12_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SOLPAW_TOKEN_04_12_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [SOLPAW_TOKEN_04_13_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SOLPAW_TOKEN_04_13_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [SORRA_STAKING_12_18_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SORRA_STAKING_12_18_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [SORRA_Staking_Final_12_18_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SORRA_Staking_Final_12_18_2024.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [SPARK_FACTORY_02_22_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SPARK_FACTORY_02_22_24.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [SPARK_FACTORY_02_27_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SPARK_FACTORY_02_27_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [SPARK_TOKEN_02_11_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SPARK_TOKEN_02_11_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SPINLAUNCH_TOKEN_SOL_08_02_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SPINLAUNCH_TOKEN_SOL_08_02_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [SRS.Turbo_ERC 20 Token_07_21_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SRS.Turbo_ERC%2020%20Token_07_21_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Shibillionaire_SOL_04_16_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Shibillionaire_SOL_04_16_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Shibillionaire_SOL_04_20_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Shibillionaire_SOL_04_20_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Snoopy_ERC 20 Token_07_28_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Snoopy_ERC%2020%20Token_07_28_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Snoopy_ERC 20 Token_08_02_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Snoopy_ERC%2020%20Token_08_02_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SparkStarter_ADV_04_05_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SparkStarter_ADV_04_05_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Star Raiders_TOKEN_03_04_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Star%20Raiders_TOKEN_03_04_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Superman Coin_ERC 20 Token_10_13_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Superman%20Coin_ERC%2020%20Token_10_13_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SyntorAI_ADV_06_10_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SyntorAI_ADV_06_10_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [SyntorAI_ADV_06_12_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/SyntorAI_ADV_06_12_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [TAINET_ADV_10_04_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TAINET_ADV_10_04_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [TAINET_ADV_11_04_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TAINET_ADV_11_04_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [TEKNICAi_ADV_05_24_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TEKNICAi_ADV_05_24_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [TEKNICAi_ADV_05_25_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TEKNICAi_ADV_05_25_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [TENDR_TOKEN_09_22_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TENDR_TOKEN_09_22_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TGB_PRESALE_12_11_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_PRESALE_12_11_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TGB_PreSaleV1_01_12_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_PreSaleV1_01_12_2024.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TGB_STAKING MANAGER_12_11_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_STAKING%20MANAGER_12_11_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TGB_StakingManager_01_12_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_StakingManager_01_12_2024.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TGB_TOKEN_12_11_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_TOKEN_12_11_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TGB_TOKEN_12_28_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_TOKEN_12_28_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TGB_Token_01_12_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_Token_01_12_2024.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [THE MONEY FROG_ERC 20 Token_02_13_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/THE%20MONEY%20FROG_ERC%2020%20Token_02_13_2024.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TIXER_ADV_06_27_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TIXER_ADV_06_27_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [TIXER_ADV_06_28_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TIXER_ADV_06_28_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [TIXER_ADV_10_28_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TIXER_ADV_10_28_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Tainet_ADV_10_14_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Tainet_ADV_10_14_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [Tendr_ADV_09_20_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Tendr_ADV_09_20_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Tethereum_ERC 20 Token_09_02_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Tethereum_ERC%2020%20Token_09_02_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Tradelight_ADV_01_19_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Tradelight_ADV_01_19_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Trumpius Maximus_ADV_01_19_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Trumpius%20Maximus_ADV_01_19_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [USDE_ST_05_17_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/USDE_ST_05_17_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Uncle Don_SOL_10_31_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Uncle%20Don_SOL_10_31_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [VCASH_STAKING_11_27_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/VCASH_STAKING_11_27_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [VCASH_STAKING_11_28_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/VCASH_STAKING_11_28_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [VCASH_TOKEN_11_27_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/VCASH_TOKEN_11_27_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [VENKO_ADV_10_14_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/VENKO_ADV_10_14_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [VENKO_TOKEN_08_03_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/VENKO_TOKEN_08_03_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [VICE_ADV_08_21_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/VICE_ADV_08_21_24.pdf) | unknown | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [VITALIKMUMDOGE_ERC 20 Token_02_13_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/VITALIKMUMDOGE_ERC%2020%20Token_02_13_2024.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [VOLTAIC_ADV_12_27_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/VOLTAIC_ADV_12_27_25.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [VOLTAIC_ADV_12_29_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/VOLTAIC_ADV_12_29_25.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ViFoxCoin_ST_11_20_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ViFoxCoin_ST_11_20_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [ViFoxCoin_ST_11_24_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ViFoxCoin_ST_11_24_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [ViFoxCoin_ST_11_25_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ViFoxCoin_ST_11_25_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Virtue Finance_ADV_06_12_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Virtue%20Finance_ADV_06_12_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [VirtueFinance_ADV_06_12_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/VirtueFinance_ADV_06_12_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [VirtueFinance_ADV_07_05_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/VirtueFinance_ADV_07_05_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Voltaic_ADV_12_23_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Voltaic_ADV_12_23_25.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Website AI_Staking Contract_11_27_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/Website%20AI_Staking%20Contract_11_27_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [WebsiteAI_STAKING_02_17_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/WebsiteAI_STAKING_02_17_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [WiseTools_ERC 20 Token_12_14_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/WiseTools_ERC%2020%20Token_12_14_23.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [World Compute Network_TOKEN_10_29_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/World%20Compute%20Network_TOKEN_10_29_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [World Compute Network_TOKEN_11_01_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/World%20Compute%20Network_TOKEN_11_01_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [XBANKING_ST_05_17_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/XBANKING_ST_05_17_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [YIELDRONE_ERC 20 Token_02_13_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/YIELDRONE_ERC%2020%20Token_02_13_2024.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [YIELDRONE_ERC 20 Token_02_14_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/YIELDRONE_ERC%2020%20Token_02_14_2024.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ZEUSS_TOKEN_02_20_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ZEUSS_TOKEN_02_20_24.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [ZYDIO_TOKEN_05_14_24.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ZYDIO_TOKEN_05_14_24.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ZYGADEX_BACKEND&FRONTEND_ADV_02_16_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ZYGADEX_BACKEND%26FRONTEND_ADV_02_16_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ZYGADEX_BACKEND&FRONTEND_ADV_02_17_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ZYGADEX_BACKEND%26FRONTEND_ADV_02_17_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ZYGADEX_SMART CONTRACTS_ADV_02_16_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ZYGADEX_SMART%20CONTRACTS_ADV_02_16_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ZYPTO_ARB_ADV_04_28_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ZYPTO_ARB_ADV_04_28_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ZYPTO_BSC_ADV2_03_18_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ZYPTO_BSC_ADV2_03_18_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ZYPTO_BSC_ADV_03_18_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ZYPTO_BSC_ADV_03_18_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ZYPTO_SOL_ADV_04_01_26.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ZYPTO_SOL_ADV_04_01_26.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ZeroKnowledgeNetwork_ERC 20 Token_08_07_2023.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ZeroKnowledgeNetwork_ERC%2020%20Token_08_07_2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ZeussOne_ADV_02_28_25.pdf](https://github.com/Assure-DeFi/Audits/blob/main/ZeussOne_ADV_02_28_25.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [data-protection-analyst.md](https://github.com/Assure-DeFi/assure-uptime-monitor/blob/main/.claude/agents/security/data-protection-analyst.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [infra-security-reviewer.md](https://github.com/Assure-DeFi/assure-uptime-monitor/blob/main/.claude/agents/security/infra-security-reviewer.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [security-auditor.md](https://github.com/Assure-DeFi/assure-uptime-monitor/blob/main/.claude/agents/security/security-auditor.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8a876a...c8bae7`](./contracts/ethereum-1/0x8a876a89af8b0376b1fb0183a89728608bc8bae7/) | MultiStakingManagerV1 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca74e3...c36e80`](./contracts/ethereum-1/0xca74e32d5d5b78ccc0fa13e407872874dbc36e80/) | MultiStakingManagerV3 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa87e79...73009a`](./contracts/ethereum-1/0xa87e79652814a0239bf752d4d7be70f61b73009a/) | PresaleV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1f35d...0d47c4`](./contracts/ethereum-1/0xa1f35da94d3c25c1c130092122db690ff10d47c4/) | PresaleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x665fa1...6643fd`](./contracts/ethereum-1/0x665fa1b41c5102ee62b6c23818c2b4f1316643fd/) | PresaleV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9307d5...b692bb`](./contracts/ethereum-1/0x9307d50caae1fa22a08b3352b493797a7ab692bb/) | StakingManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21d6d6...540ae8`](./contracts/ethereum-1/0x21d6d6d6ffd8b68e94bf5159bb029635af540ae8/) | StakingManagerV1 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5b77c...bf1a0e`](./contracts/ethereum-1/0xb5b77c895bf3c4c060da327fbc953e7fbdbf1a0e/) | StakingManagerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2db0d...fdd262`](./contracts/ethereum-1/0xc2db0df8ba54715ff73691c8c934120168fdd262/) | StakingManagerV3 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x700169...758cc8`](./contracts/ethereum-1/0x700169c3408f10e98c34ac1902e2b6ae89758cc8/) | StakingManagerV4 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 760
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Zero-match audit list:

- [10512] Audit - SalamPresale.pdf
- [10513] CheesePad Locker - Audit.pdf
- [10514] Cheesepad - Audit.pdf
- [10515] Coinsult_AIGN_Presale_0xbC...077B_Audit.pdf
- [10516] Coinsult_AIGN_Token_0x91...f293_Audit.pdf
- [10517] Coinsult_AIOX_0xd7...c3ea_Audit.pdf
- [10518] Coinsult_APES_0xfB.46DE_Audit.pdf
- [10519] Coinsult_APG_Token_0xa2...916c_Audit.pdf
- [10520] Coinsult_APROZ_0x4a...6eb6_Audit.pdf
- [10521] Coinsult_ARK_TOKEN_0xDA...9787_Audit.pdf
- [10522] Coinsult_AVILOM_0xbC...5AD0_Audit.pdf
- [10523] Coinsult_AgentNet_0x2a...73d9_Audit.pdf
- [10524] Coinsult_Agusto_0x59...63E7_Audit.pdf
- [10525] Coinsult_AigentMesh_0x91...f293_Audit.pdf
- [10526] Coinsult_AirdropElement_AVWM...wUYs_Audit.pdf
- [10527] Coinsult_AirdropSystem_0xE2...20e2_Audit.pdf
- [10528] Coinsult_Alaxio_0x5f...da32_Audit.pdf
- [10529] Coinsult_Algos_One_J3ck...9yxh_Audit.pdf
- [10530] Coinsult_America_is_Back_0xB3...30B6_Audit.pdf
- [10531] Coinsult_AntiBullyCoin_5SSK...ZtGw_Audit.pdf
- [10532] Coinsult_Apeing_0x16...0F0E_Audit.pdf
- [10533] Coinsult_ApexchainAI_0x21...0C59_Audit.pdf
- [10534] Coinsult_Archivas_0x44...c7dF_Audit.pdf
- [10535] Coinsult_AskNoel_0x57...0f20_Audit.pdf
- [10536] Coinsult_Aster_Doge_0x31...ea6c_Audit.pdf
- [10537] Coinsult_Audit_Ai_0x57...471f_Audit.pdf
- [10538] Coinsult_Aura_Farming_0x15...9aBe_Audit.pdf
- [10539] Coinsult_BCBX_CJ3S...RF8A_Audit.pdf
- [10540] Coinsult_BDOG_0x96...dd14_Audit.pdf
- [10541] Coinsult_BINGO_AQuR...XWiN_Audit.pdf
- [10542] Coinsult_BIt4K_0x2a...5F82_Audit.pdf
- [10543] Coinsult_BNB_Cz_Dog_0x3e...9b62_Audit.pdf
- [10544] Coinsult_BUTO_F8iT...XBSX_Audit.pdf
- [10545] Coinsult_BXTToken_0x71...52e3_Audit.pdf
- [10546] Coinsult_BabyBUILDon_0x93...53de_Audit.pdf
- [10547] Coinsult_BabyBuilder_0x36...4444_Audit.pdf
- [10548] Coinsult_BabyBuilder_0x8c...d864_Audit.pdf
- [10549] Coinsult_BabyElonShark_5mab...df91_Audit.pdf
- [10550] Coinsult_BabyTST_0xe7...be91_Audit.pdf
- [10551] Coinsult_Baby_Aster_0xd0...fc37_Audit.pdf
- [10552] Coinsult_Baby_Elon_Grok_9e4e...HZQN_Audit.pdf
- [10553] Coinsult_Baby_builder_staking_0x4c...b091_Audit.pdf
- [10554] Coinsult_Based_Eggman_0x7f...a8ed_Audit.pdf
- [10555] Coinsult_Baseforever_0x2b...8aE9_Audit.pdf
- [10556] Coinsult_Batcoin_AI_9mZ8...a2UX_Audit.pdf
- [10557] Coinsult_Bellarium_0x68...af72_Audit.pdf
- [10558] Coinsult_Besa_0xde...e40c_Audit.pdf
- [10559] Coinsult_Bhovardhan_Community_Traders_0xfd...0294_Audit.pdf
- [10560] Coinsult_Biafra_Coin_0x69...9900_Audit.pdf
- [10561] Coinsult_BioByte_AI_Dt2j...hvKn_Audit.pdf
- [10562] Coinsult_BitSwapix_0x46...f142_Audit.pdf
- [10563] Coinsult_Bitcoin_Doge_0x1a...4d90_Audit.pdf
- [10564] Coinsult_Bitcoin_Hyper_0x69...D09F_Audit.pdf
- [10565] Coinsult_Bitcoin_Hyper_0xa8...702b_Audit.pdf
- [10566] Coinsult_Bless_Kids_DTmN...Kids_Audit.pdf
- [10567] Coinsult_BlockSACK_0x09...35b7_Audit.pdf
- [10568] Coinsult_BlockchainFX_0x87...83d2_Audit.pdf
- [10569] Coinsult_BlorboX_HqdG...Awp6_Audit.pdf
- [10570] Coinsult_Blorp_0xba...24b7_Audit.pdf
- [10571] Coinsult_Bluzzie_DPXk...dRUN_Audit.pdf
- [10572] Coinsult_Bob_Marley_Meme_J3Az...seDd_Audit.pdf
- [10573] Coinsult_Bobbie_Goods_0x45...8ee5_Audit.pdf
- [10574] Coinsult_BoilToken_0x24...27be_Audit.pdf
- [10575] Coinsult_BoilToken_0xA1...2083_Audit.pdf
- [10576] Coinsult_Bugs_Destroyer_0x05.B447_Audit.pdf
- [10577] Coinsult_Bullionaire_BULL...qPNu_Audit.pdf
- [10578] Coinsult_ButtaCat_0x77...8777_Audit.pdf
- [10579] Coinsult_CANOPY_0x34...06eF_Audit.pdf
- [10580] Coinsult_CANOPY_0x34.06eF_Audit.pdf
- [10581] Coinsult_CARTIS_COIN_5esk...1kxT_Audit.pdf
- [10582] Coinsult_CHISAI_0x21...071a_Audit.pdf
- [10583] Coinsult_CZ_Baby_Broccoli_0xDC...e121_Audit.pdf
- [10584] Coinsult_CZuilders_0xcc...c8Fe_Audit.pdf
- [10585] Coinsult_Cat_Duck_2cbd...KxMF_Audit.pdf
- [10586] Coinsult_Chagy_75zE...vs7r_Audit.pdf
- [10587] Coinsult_Chillpepe_0xF9...3CC3_Audit.pdf
- [10588] Coinsult_Chipmunks_of_Crypto_irNg...5V1W_Audit.pdf
- [10589] Coinsult_ChowWow_AecA...ZyjC_Audit.pdf
- [10590] Coinsult_Clore_0xe6...e977_Audit.pdf
- [10591] Coinsult_CloudChain_AI_B41Z...BY4C_Audit.pdf
- [10592] Coinsult_CoinBros_0x08...9C2d_Audit.pdf
- [10593] Coinsult_CoinMarketTok_3Sq9...yvSD_Audit.pdf
- [10594] Coinsult_Coldware_0x52...5c83_Audit.pdf
- [10595] Coinsult_Core_AI_0x56...3d5a_Audit.pdf
- [10596] Coinsult_Crazzers_AI_8m6X...QhKK_Audit.pdf
- [10597] Coinsult_Crotch_0xaa...4048_Audit.pdf
- [10598] Coinsult_CryptoTipX_0x14...Ab5d_Audit.pdf
- [10599] Coinsult_Cryptoroule_coin_0xDD...D5C7_Audit.pdf
- [10600] Coinsult_CupGoalCoin_CjtU...7nYi_Audit.pdf
- [10601] Coinsult_Cup_Final_2026_H2Fu...aRG7_Audit.pdf
- [10602] Coinsult_DEPE_0x68...af34_Audit.pdf
- [10603] Coinsult_DOGEBALL_0x57...db6a_Audit.pdf
- [10604] Coinsult_DOGEMIND.EXE_0xad...0e50_Audit.pdf
- [10605] Coinsult_DOGEPOKI_0xCc...63C7_Audit.pdf
- [10606] Coinsult_DOPE_CAT_0xf6...3946_Audit.pdf
- [10607] Coinsult_DUCK_0x1A...6Abe_Audit.pdf
- [10608] Coinsult_DeXRP_0xbb...d4e4_Audit.pdf
- [10609] Coinsult_Decryptox_0x27...60E8_Audit.pdf
- [10610] Coinsult_DeepSeek_Token_HRNy...ZPVa_Audit.pdf
- [10611] Coinsult_DeepSnitch_0x1f...4622_Audit.pdf
- [10612] Coinsult_Degen_Fighters_0x6f...5e49_Audit.pdf
- [10613] Coinsult_Demo_Token_0x1e...4a81_Audit.pdf
- [10614] Coinsult_DepeToken_0xCe.6404_Audit.pdf
- [10615] Coinsult_Diamond_Hands_0x10...D501_Audit.pdf
- [10616] Coinsult_DigiTap_0x4a...7d08_Audit.pdf
- [10617] Coinsult_Disaster_0xd6...A695_Audit.pdf
- [10618] Coinsult_DogeZillaArmy_zaZS...eFuC_Audit.pdf
- [10619] Coinsult_DogelronCoin_ArUJ...EaXi_Audit.pdf
- [10620] Coinsult_Dogx_Company_6ckS...SPiC_Audit.pdf
- [10621] Coinsult_DogyElon_Dz3h...BGNm_Audit.pdf
- [10622] Coinsult_Doraemon_0x31...a082_Audit.pdf
- [10623] Coinsult_Ducky_0xaD...462f_Audit.pdf
- [10624] Coinsult_DustFund_0xb2...79ee_Audit.pdf
- [10625] Coinsult_EDMA_0xf6...5029_Audi.pdf
- [10626] Coinsult_ENDOCRYPTO_0xb8...5f20_Audit.pdf
- [10627] Coinsult_ESCAPE_0x36...eAa6_Audit.pdf
- [10628] Coinsult_ETHICS_0x69...00E9_Audit.pdf
- [10629] Coinsult_ETH_Pepe_0x49...1B30_Audit.pdf
- [10630] Coinsult_EXOVUM_0x3e...8ff7_Audit.pdf
- [10631] Coinsult_Earth_Version_2_0x68...8504_Audit.pdf
- [10632] Coinsult_EcoBuilt_0x10...1539_Audit.pdf
- [10633] Coinsult_Elop_0x58...c76A_Audit.pdf
- [10634] Coinsult_Emperor_Coin_FwMa...bcTT_Audit.pdf
- [10635] Coinsult_Emperor_Coin_GMkW...KinG_Audit.pdf
- [10636] Coinsult_EtherFloki_0xCf...6a2E_Audit.pdf
- [10637] Coinsult_FART_AGENT_AI_0x3b...ca55_Audit.pdf
- [10638] Coinsult_FART_PIG_E2Kd...pump_Audit.pdf
- [10639] Coinsult_FEPE_0xd8...6Aca_Audit.pdf
- [10640] Coinsult_FOXRPFUN_0x7e...cb52_Audit.pdf
- [10641] Coinsult_FROGE_0x42...2df5_Audit.pdf
- [10642] Coinsult_FUTURESYNCX_0x05...6922_Audit.pdf
- [10643] Coinsult_FYBORG_8vyY...zj44_Audit.pdf
- [10644] Coinsult_F_0xd6...3b51_Audit.pdf
- [10645] Coinsult_Fafo_Trump_0x02...3322_Audit.pdf
- [10646] Coinsult_Favolo_3k25...PnxA_Audit.pdf
- [10647] Coinsult_Finity_0x05...09C5_Audit.pdf
- [10648] Coinsult_Flexafina_0xc6...b3a8_Audit.pdf
- [10649] Coinsult_Fluxx_Fusion_0x9d...620f_Audit.pdf
- [10650] Coinsult_Frobo_0x56...faD3_Audit.pdf
- [10651] Coinsult_Furzy_Cat_evcD...9osH_Audit.pdf
- [10652] Coinsult_Future_Pepe_0x78...1387_Audit.pdf
- [10653] Coinsult_GYM_BRO_COIN_0x85...9e5e_Audit.pdf
- [10654] Coinsult_Giggle_Cat_0x11...3364_Audit.pdf
- [10655] Coinsult_GlasToken_(proxy)_0x8B...1DEf_Audit.pdf
- [10656] Coinsult_GlasToken_0x3f...C390_Audit.pdf
- [10657] Coinsult_Glimmer_0x23...d219_Audit.pdf
- [10658] Coinsult_GoldenRise_0xdb...4444_Audit.pdf
- [10659] Coinsult_Green_Dollar_Coin_0x2b...76e8_Audit.pdf
- [10660] Coinsult_Grok3Ai_Ae99...dAeW_Audit.pdf
- [10661] Coinsult_Grok_3_Elon_GM6i...PipU_Audit.pdf
- [10662] Coinsult_GuardiansOfTheCar_Goc7...cfmd_Audit.pdf
- [10663] Coinsult_Guardians_Of_The_Car_CAR3...S5Nf_Audit.pdf
- [10664] Coinsult_HALLU_0xD6...E6f9_Audit.pdf
- [10665] Coinsult_HONGGILDONG_0x01...a220_Audit.pdf
- [10666] Coinsult_Habubu_0xdd...59ee_Audit.pdf
- [10667] Coinsult_Happy_Village_0x5a...151f_Audit.pdf
- [10668] Coinsult_Hero_Villain_Republic_0xa5...837c_Audit.pdf
- [10669] Coinsult_Hype_Dog_416v...qpG2_Audit.pdf
- [10670] Coinsult_HyperFx_0x69...9E12_Audit.pdf
- [10671] Coinsult_ICOIN_0x5A...B156_Audit.pdf
- [10672] Coinsult_INIZIO_47_0x02...68e0_Audit.pdf
- [10673] Coinsult_Indocia_0x13...d872_Audit.pdf
- [10674] Coinsult_Influencer_Pepe_0x80...d4F7_Audit.pdf
- [10675] Coinsult_Invest4B_0x4b...144f_Audit.pdf
- [10676] Coinsult_Investing_Usdt_0x7c...c679_Audit.pdf
- [10677] Coinsult_Ironhold_8zzy...iron_Audit.pdf
- [10678] Coinsult_Jalapeno_Man_FHea...nyRX_Audit.pdf
- [10679] Coinsult_KOALA_0x11...A0B7_Audit.pdf
- [10680] Coinsult_KRAET_7Qe3...toHj_Audit.pdf
- [10681] Coinsult_Kancler_Coin_FiDN...pump_Audit.pdf
- [10682] Coinsult_Kermit_The_Frog_0xd2...54d6_Audit.pdf
- [10683] Coinsult_King_Kong_0x01...b1bb_Audit.pdf
- [10684] Coinsult_King_Of_Stonks_0x29...5397_Audit.pdf
- [10685] Coinsult_Kingz_0x70...5ea2_Audit.pdf
- [10686] Coinsult_Kira_Nexus_0xCD...Ad45_Audit.pdf
- [10687] Coinsult_Kri_0xb3...1Ded_Audit.pdf
- [10688] Coinsult_Kynzo_Token_Fux6...JqL3_Audit.pdf
- [10689] Coinsult_LIMBO_THE_FROG_5kMm...LKVy_Audit.pdf
- [10690] Coinsult_LOLO_GBEV...tQZE_Audit.pdf
- [10691] Coinsult_LandWolf_BSC_0xb4...156e_Audit.pdf
- [10692] Coinsult_LayerBTC_0x99...df41_Audit.pdf
- [10693] Coinsult_Layer_Brett_0x11...2610_Audit.pdf
- [10694] Coinsult_Layer_Brett_0xBD...6Ae9_Audit.pdf
- [10695] Coinsult_Liberlaunch_0x33...989e_Audit.pdf
- [10696] Coinsult_Lifti_0xbf.f3a1_Audit.pdf
- [10697] Coinsult_Linxir_0xd5...1584_Audit.pdf
- [10698] Coinsult_LiquidChain_0x7a...bb16_Audit.pdf
- [10699] Coinsult_Loris_0x2d...3836_Audit.pdf
- [10700] Coinsult_Lunis_0x26...5DD6_Audit.pdf
- [10701] Coinsult_LustAI_7ZDw...5M54_Audit.pdf
- [10702] Coinsult_MANGO_THE_SEAL_3H27...pump_Audit.pdf
- [10703] Coinsult_MARLEY_0x04...0fa5_Audit.pdf
- [10704] Coinsult_MARLEY_0x42...b46f_Audit.pdf
- [10705] Coinsult_MASH_AI_0x52.B575_Audit.pdf
- [10706] Coinsult_Manyu_BNB_0x61...abdb_Audit.pdf
- [10707] Coinsult_MaoMao_0x15...83a2_Audit.pdf
- [10708] Coinsult_Masters_of_Trivia_motN...Bizt_Audit.pdf
- [10709] Coinsult_Masters_of_Trivia_motN...Fnwf_Audit.pdf
- [10710] Coinsult_Maxi_Doge_0x96...3550_Audit.pdf
- [10711] Coinsult_Mecca_Coin_4133...P4Ma_Audit.pdf
- [10712] Coinsult_MedLease_0x2c...e427_Audit.pdf
- [10713] Coinsult_MediTechX_0x5d...482c_Audit.pdf
- [10714] Coinsult_Meganet_0xDC...b98D_Audit.pdf
- [10715] Coinsult_MemePad_9DYy...mMPX_Audit.pdf
- [10716] Coinsult_MemeToro_0x44.cfff_Audit.pdf
- [10717] Coinsult_Meme_Punch_0x1d.3427_Audit.pdf
- [10718] Coinsult_Memeseco_0x56...82e1_Audit.pdf
- [10719] Coinsult_MetaMemeVault_0x8e...089c_Audit.pdf
- [10720] Coinsult_MetaNewsToken_No c...ress_Audit.pdf
- [10721] Coinsult_Meteor_Swap_0x0c...8fa6_Audit.pdf
- [10723] Coinsult_Milk_Mocha_0x7f...aeF2_Audit.pdf
- [10724] Coinsult_Milon_CYv7...hvMH_Audit.pdf
- [10725] Coinsult_MiniBonk_0xD2...4444_Audit.pdf
- [10726] Coinsult_Mini_Manyu_0x67...e9b8_Audit.pdf
- [10727] Coinsult_Mirror_0x30...3963_Audit.pdf
- [10728] Coinsult_MogDog_0xe8...9264_Audit.pdf
- [10729] Coinsult_Monkana_sol_4aW4...bonk_Audit.pdf
- [10730] Coinsult_Monova_0xa7...0293_Audit.pdf
- [10731] Coinsult_Moo_Shot_0xc4...E7AA_Audit.pdf
- [10732] Coinsult_MoonCoin_0x73...2215_Audit.pdf
- [10733] Coinsult_Moxxer_Coin_xXrj...zbsy_Audit.pdf
- [10734] Coinsult_Mr_BOBO_FRgg...rbN8_Audit.pdf
- [10735] Coinsult_Mr_Vodka_Fchu...MYXS_Audit.pdf
- [10736] Coinsult_Mukbang_Molly_6fZu...pzPa_Audit.pdf
- [10737] Coinsult_My_Little_Pony_0xdd...8d0f_Audit.pdf
- [10738] Coinsult_NXS_0xD4...0757_Audit.pdf
- [10739] Coinsult_Neo_Pepe_0xa9...488a_Audit.pdf
- [10740] Coinsult_Neptune_NEPt...BHc2_Audit.pdf
- [10741] Coinsult_Nexdol_0xB4...378b_Audit.pdf
- [10742] Coinsult_Nexora_0x58...0d94_Audit.pdf
- [10743] Coinsult_Noorung_(renounced)_0x2a...4889_Audit.pdf
- [10744] Coinsult_NotFoundCoin_0x92...a327_Audit.pdf
- [10745] Coinsult_NovaChargeX_Coin_0xf8...0792_Audit.pdf
- [10746] Coinsult_NovaRWA_0x80...c056_Audit.pdf
- [10747] Coinsult_OMINA_0x40...f848_Audit.pdf
- [10748] Coinsult_OOJU_0x85...A244_Audit.pdf
- [10749] Coinsult_OOJU_0xe8...2f47_Audit.pdf
- [10750] Coinsult_OPTER_0xfb...2136_Audit.pdf
- [10751] Coinsult_Official_FAFO_4vH4...r1gw_Audit.pdf
- [10752] Coinsult_OfflyFans_0x40...f7ac_Audit-min.pdf
- [10753] Coinsult_Oh_My_God_Coin_mntK...queo_Audit.pdf
- [10754] Coinsult_OnlyUp_0x4a...1755_Audit.pdf
- [10755] Coinsult_Orimex_AI_0x72...5ede_Audit.pdf
- [10756] Coinsult_Ototocee_6mr4...Qdxk_Audit.pdf
- [10757] Coinsult_PEPENODE_0xd2...9831_Audit.pdf
- [10758] Coinsult_PEPESNIX_0x28...286c_Audit.pdf
- [10759] Coinsult_PESC_Token_0x24...E68b_Audit.pdf
- [10760] Coinsult_PREDINO_0x7C...78fA_Audit.pdf
- [10761] Coinsult_PRIVA_0xCd...29c3_Audit.pdf
- [10762] Coinsult_PairPunk_6z9X...bonk_Audit.pdf
- [10763] Coinsult_Papu_Coin_0x92...13c2_Audit.pdf
- [10764] Coinsult_ParchiX_0xfd...eb1b_Audit.pdf
- [10765] Coinsult_Peanut_0xD1...0dD1_Audit.pdf
- [10766] Coinsult_PepeEmpire_0x92...b972_Audit.pdf
- [10767] Coinsult_PepePawn_Token_0x99...E57B_Audit.pdf
- [10768] Coinsult_PepeVandal_0x39...2F44_Audit.pdf
- [10769] Coinsult_Pepe_Dollar_0x87...042e_Audit.pdf
- [10770] Coinsult_Pepe_Dollar_0xef...d5c1_Audit.pdf
- [10771] Coinsult_Pepe_ETH_Ico_No c...ress_Audit.pdf
- [10772] Coinsult_Pepe_Hockey_0xF2...A212_Audit.pdf
- [10773] Coinsult_Pepe_Orion_0xA3...888A_Audit.pdf
- [10774] Coinsult_Pepe_Rider_0x99...88e9_Audit.pdf
- [10775] Coinsult_Pepe_The_Notorious_0x75...014e_Audit.pdf
- [10776] Coinsult_Pepe_The_Notorious_v2_0x83...630a_Audit.pdf
- [10777] Coinsult_Pepe_Tribe_0xee...c9a6_Audit.pdf
- [10778] Coinsult_Pepe_Unchained_0x93...85d6_Audit.pdf
- [10779] Coinsult_Perform_AI_0xdf...c2e0_Audit.pdf
- [10780] Coinsult_Perform_AI_0xe3...8eb2_Audit.pdf
- [10781] Coinsult_Pexebel_0x62...fd05_Audit.pdf
- [10782] Coinsult_Pi_Network_Miners_C3CU...2agK_Audit.pdf
- [10783] Coinsult_Pig_Coin_0x97...6e8c_Audit.pdf
- [10784] Coinsult_PineX_Finance_Token_0x20...1769_Audit.pdf
- [10785] Coinsult_Polana_0xfe...E7b2_Audit.pdf
- [10786] Coinsult_Poly_Truth_0xba.5f49_Audit.pdf
- [10787] Coinsult_PopAI_0x86...4444_Audit.pdf
- [10788] Coinsult_Project_HorusX_0xe2...124c_Audit.pdf
- [10789] Coinsult_Protocol_AI_0x7f...2902_Audit.pdf
- [10790] Coinsult_Pulse_Robot_FtbZ...ZU3F_Audit.pdf
- [10791] Coinsult_Pumpe_0xd6...2f93_Audit.pdf
- [10792] Coinsult_Punisher_0x87...bE36_Audit.pdf
- [10793] Coinsult_QuanEx_0xeA...3888_Audit.pdf
- [10794] Coinsult_Quantum_X_0x65...D605_Audit.pdf
- [10795] Coinsult_Quasar_Chain_0x43...fa7e_Audit.pdf
- [10796] Coinsult_REKT_4A8K...USrK_Audit.pdf
- [10797] Coinsult_REX_Token_0x58...5785_Audit.pdf
- [10798] Coinsult_RUDI_BSC_0x47...43e8_Audit.pdf
- [10799] Coinsult_RatCop_DxqD...Eysy_Audit.pdf
- [10800] Coinsult_Refacta_AI_0x75...b813_Audit.pdf
- [10801] Coinsult_Republic_of_El_Salvador_ELTy...pump_Audit.pdf
- [10802] Coinsult_Rich_Pepe_0x65...be5f_Audit.pdf
- [10803] Coinsult_Rickroll_0xf8...5bad_Audit.pdf
- [10804] Coinsult_SAFEMOON_Staking_0x01...a735_Audit.pdf
- [10805] Coinsult_SALAM_0x4a...b4a0_Audit.pdf
- [10806] Coinsult_SHIH_TZU_0x2f...dca2_Audit.pdf
- [10807] Coinsult_SOKKERPRO_TOKEN_OFICIAL_0x13...475e_Audit.pdf
- [10808] Coinsult_SOKKERPRO_TOKEN_OFICIAL_0x6E...c9e7_Audit.pdf
- [10809] Coinsult_SONAMI_0x1f...dd36_Audit.pdf
- [10810] Coinsult_SOSANA_49jd...YFMj_Audit.pdf
- [10811] Coinsult_STAKEREUM_0xA4...FF58_Audit.pdf
- [10812] Coinsult_STAKEREUM_0xb0...be4d_Audit.pdf
- [10814] Coinsult_SafeBSC_0xf8...5d80_Audit.pdf
- [10815] Coinsult_Satoshi_Yolo_0x75...6e63_Audit.pdf
- [10816] Coinsult_Satu_Wallet_EWnS...pump_Audit.pdf
- [10817] Coinsult_Scitus_0x8b...196a_Audit.pdf
- [10818] Coinsult_Scrooge_Bank_Ahg9...NcYx_Audit.pdf
- [10819] Coinsult_Secury_Wallet_0x9b...ca3e_Audit.pdf
- [10820] Coinsult_ShamirCoin_8kvm...Ryth_Audit.pdf
- [10821] Coinsult_Sherex_0x24...64b9_Audit.pdf
- [10822] Coinsult_ShieldGuard_Protocol_0x88...cf7f_Audit.pdf
- [10823] Coinsult_ShimaNest_0x70...2a19_Audit.pdf
- [10824] Coinsult_Sigma_Brett_0x88...F4a3_Audit.pdf
- [10825] Coinsult_Simpsons_0xB7...aAff_Audit.pdf
- [10826] Coinsult_Smilek_to_the_Bank_0x4f.B997_Audit.pdf
- [10827] Coinsult_SnakyWay_0x71...1B91_Audit.pdf
- [10828] Coinsult_Snorter_0x21...EB53_Audit.pdf
- [10829] Coinsult_SolAudit_AI_6WT3...ivds_Audit.pdf
- [10830] Coinsult_SolFart_0x2b...837b_Audit.pdf
- [10831] Coinsult_Solafi_HkXf...zAn6_Audit.pdf
- [10832] Coinsult_Solaverse_soLA...AVs9_Audit.pdf
- [10833] Coinsult_SpaceXRP_0x72...bBFD_Audit.pdf
- [10834] Coinsult_SpaceX_E6if...pump_Audit.pdf
- [10835] Coinsult_StandUpAmerica_0x84...16cc_Audit.pdf
- [10836] Coinsult_Stonk_Pepe_0x55...05Fa_Audit.pdf
- [10837] Coinsult_StreetWall_Token_0x25...c35A_Audit.pdf
- [10838] Coinsult_SuiDex_0xC7...5eeC_Audit.pdf
- [10839] Coinsult_Suilife_0x27...1511_Audit.pdf
- [10840] Coinsult_SyncOrbit_0xaa...1431_Audit.pdf
- [10841] Coinsult_TAPZI_0x53...9c74_Audit.pdf
- [10842] Coinsult_TARIFF_0x5e...cf12_Audit.pdf
- [10843] Coinsult_THE_EYE_0x98...de30_Audit.pdf
- [10844] Coinsult_TONDEX_0x11...38E5_Audit.pdf
- [10845] Coinsult_TRD_Network_0xEa...9Ef9_Audit.pdf
- [10846] Coinsult_TRUMP100X_ANg8...tzvu_Audit.pdf
- [10847] Coinsult_TariffCoin_AHNu...QZuR_Audit.pdf
- [10848] Coinsult_Tariff_Trump_DDsw...EpPy_Audit.pdf
- [10849] Coinsult_Tensora_0x44...0F3c_Audit.pdf
- [10850] Coinsult_TheLastDwarfs_EQCG...Xj5m_Audit.pdf
- [10851] Coinsult_The_Flash_AI_CYhN...azwZ_Audit.pdf
- [10852] Coinsult_TikTop_0x33...8512_Audit.pdf
- [10853] Coinsult_Token6900_0xDf...Df1e_Audit.pdf
- [10854] Coinsult_TopOilNews_3mVV...2WBu_Audit.pdf
- [10855] Coinsult_TradeView_0x50...b466_Audit.pdf
- [10856] Coinsult_Troller_Cat_0xb9...627d_Audit.pdf
- [10857] Coinsult_Trump_Stage_7LGo...MXo1_Audit.pdf
- [10858] Coinsult_Trust_Inspect_0x1a...731d_Audit.pdf
- [10859] Coinsult_TurboKoala_AI_DZb9...UCi5_Audit.pdf
- [10860] Coinsult_USA_Gold_Card_6nSL...LBTC_Audit.pdf
- [10861] Coinsult_USD_Treasure_Token_0x9c...fc33_Audit.pdf
- [10862] Coinsult_UncleTrump_AI_BbQs...k7Xb_Audit.pdf
- [10863] Coinsult_UnitedFans_0x15...6a1a_Audit.pdf
- [10864] Coinsult_United_nation_of_Memes_0x3e...32c8_Audit.pdf
- [10865] Coinsult_Unity_Software_0xfd...b2d9_Audit.pdf
- [10866] Coinsult_V8.Markets_0xA9.7623_Audit.pdf
- [10867] Coinsult_VERDRA_0x4C...58aB_Audit.pdf
- [10868] Coinsult_VERDRA_0x6E...5582_Audit.pdf
- [10869] Coinsult_VERONUM_0x58...f0d7_Audit.pdf
- [10870] Coinsult_VIOGRAM_v4VW...CVGT_Audit.pdf
- [10871] Coinsult_VORTIX_0xC1...3529_Audit.pdf
- [10872] Coinsult_Venture_Card_9QNp...B1Br_Audit.pdf
- [10873] Coinsult_ViFoxCoin_0xec...2540_Audit.pdf
- [10874] Coinsult_Voice_AI_9jJz...Pr36_Audit.pdf
- [10875] Coinsult_Voltryn_0x42...1b87_Audit.pdf
- [10876] Coinsult_WEJE_Token_0xB0...404d_Audit.pdf
- [10877] Coinsult_Wadoozie_0x8a.5d72_Audit.pdf
- [10878] Coinsult_Waffle_0x17...4DaB_Audit.pdf
- [10879] Coinsult_Wagerd_0x07...44C9_Audit.pdf
- [10880] Coinsult_Wagerd_0x26...cf9E_Audit.pdf
- [10881] Coinsult_Wall_Street_Chain_0xdc...9aaa_Audit.pdf
- [10882] Coinsult_Wall_Street_Ponke_0x91...15ac_Audit.pdf
- [10883] Coinsult_Wazaaa_waza...3N3U_Audit.pdf
- [10884] Coinsult_Web3Verse_Dyqf...YSLv_Audit.pdf
- [10885] Coinsult_White_Shark_0x60...42E6_Audit.pdf
- [10886] Coinsult_Wisecoin_52s2...GiYU_Audit.pdf
- [10887] Coinsult_XRPBANK_0x68...6d24_Audit.pdf
- [10888] Coinsult_YETI_0xbC...4ce2_Audit.pdf
- [10889] Coinsult_YYAI_0x55...588E_Audit.pdf
- [10890] Coinsult_YY_0xe6...2F0B_Audit.pdf
- [10891] Coinsult_Yahoo_Token_0x32...537a_Audit.pdf
- [10892] Coinsult_Yieltra_8oug...pYLT_Audit.pdf
- [10893] Coinsult_Zetarium_0x87...ded0_Audit.pdf
- [10894] Coinsult_Zonke_Solana_Afcf...wmNL_Audit.pdf
- [10895] Coinsult_Zyra_0x03...46f0_Audit.pdf
- [10896] Coinsult_baseperp_0xA8...52F5_Audit.pdf
- [10897] Coinsult_degenwoj_0xd0...9F0d_Audit.pdf
- [10898] Coinsult_doge秽土转生版真名_0xEE...579F_Audit.pdf
- [10899] Coinsult_eksi_0xb8...4155_Audit.pdf
- [10900] Coinsult_mtx-token_0x5d...482c_Audit.pdf
- [10901] Coinsult_player_0xF6.1fd9_Audit.pdf
- [10902] Coinsult_sealwifhat_0x57...487b_Audit.pdf
- [10903] Coinsult_xAI_GAMES_9xv4...cNtZ_Audit.pdf
- [10904] Lifti Staking-audit-report.pdf
- [10905] MedLeasePresale-audit-report_final.pdf
- [10906] Proof of Assets - Minotaurus.pdf
- [10907] QuasarChain_Audit.pdf
- [10908] Sherex Dex Audit.pdf
- [10909] Sherex Staking.pdf
- [10910] SoNamiLayer2.pdf
- [10911] SuperCowNFT_Audit.pdf
- [10912] TONMEMEDAO_AUDIT.pdf
- [10913] Wall Street Chain - Audit.pdf
- [10914] Zylo Vortex _ Airdrop-audit-report (2).pdf
- [10915] Zylo Vortex _ Milestone-audit-report (2).pdf
- [10916] Zylo Vortex _ PowerUp-audit-report (3).pdf
- [10917] 20230830_ASSUREDEFI_SHILLD_SHILLD_Audit.pdf
- [10918] 20230830_ASSUREDEFI_SHILLD_SHILLD_Audit_230830_231102.pdf
- [10920] ABRAHAM_TOKEN_01_08_23.pdf
- [10921] ABRAHAM_TOKEN_12_31_23.pdf
- [10922] AIMBOT_TOKEN_02_28_24.pdf
- [10923] AITAX_ADVANCED_04_28_24.pdf
- [10924] AITAX_ADVANCED_05_05_24.pdf
- [10925] AIToken_ADV_04_20_25.pdf
- [10927] AIToken_ADV_04_22_25.pdf
- [10928] ANYDEX_TOKEN_04_09_24.pdf
- [10929] ANYDEX_TOKEN_04_11_24.pdf
- [10930] ANYDEX_TOKEN_04_12_24.pdf
- [10931] ANYDEX_TOKEN_04_22_24.pdf
- [10932] ARCANE_ERC 20_01_18_2024.pdf
- [10933] ARCANE_ERC20 token_01_22_2024.pdf
- [10934] ASSUREDEFI - KASPACOM AND NEXUS DRAINER INVESTIGATION.pdf
- [10936] ASSUREDEFI_CNDR_$CNDR_TOKEN_Audit_06_14_2023.pdf
- [10937] ASSUREDEFI_Good Trouble_GTRB_TOKEN_Audit_06_11_2024.pdf
- [10938] ASSUREDEFI_JEJE_JJ_TOKEN_Audit_06_24_2024.pdf
- [10939] ASSUREDEFI_Nodez_NODE_TOKEN_Audit_Final_09_26_2024.pdf
- [10940] ASSUREDEFI_Nodez_TOKEN_Audit _09_26_2024.pdf
- [10941] AURK_ADV_1_12_26.pdf
- [10943] Addon_ADV_01_20_24.pdf
- [10944] Alpha City_ ERC 20 token_11_21_2023.pdf
- [10945] Alpha City_ ERC 20 token_11_23_2023.pdf
- [10946] Alpha City_ERC 20 Token_12_6_23.pdf
- [10947] Alpha City_ERC Token_25_11_23.pdf
- [10948] Assure - AdvancedAudit - Narinu _ PASS_06_18_2024.pdf
- [10949] Assure - AdvancedAudit - Narinu _ PASS_v2_06_18_2024.pdf
- [10950] Assure - SolanaAudit - HUND_PASS_KYCCOMPLETED_06_11_2024.pdf
- [10951] Assure DeFi - AdvancedAudit - AeoN_X _ PASS_v3_kyc_06_27_2024.pdf
- [10952] Assure DeFi- AdvancedAudit - Mullet _ PASS_06_06_2024_FinalReport.pdf
- [10953] Assure DeFi- SolanaAudit - HUND_PASS_06_05_2024.pdf
- [10954] BASED MONSTA_ADV_12_28_24.pdf
- [10955] BINK_TOKEN_04_09_25.pdf
- [10956] BINK_TOKEN_04_12_25.pdf
- [10957] BIONIC_ERC 20 Token_10_03_2023.pdf
- [10958] BLOCKBETS_TOKEN_04_05_24.pdf
- [10959] BORNHUB_TOKEN_04_12_24.pdf
- [10961] BakedBeans_TOKEN_04_19_24.pdf
- [10962] BakedBeans_TOKEN_04_20_24.pdf
- [10963] BankPad_Platform Audit_Updated 1_23_24.pdf
- [10964] BankPad_Platform_01_22_24.pdf
- [10965] Bionic_ERC 20 Token_09_18_2023.pdf
- [10966] BlackCoachingIndia_ADV_04_03_26.pdf
- [10967] BlackCoachingIndia_ADV_04_05_26.pdf
- [10968] Blind Faith_SOL_03_20_25.pdf
- [10969] BlindFaith_ADV2_08_12_25.pdf
- [10970] BlindFaith_ADV3_08_12_25.pdf
- [10971] BlindFaith_ADV_08_12_25.pdf
- [10972] BlindFaith_SOL_FinalAudit_03_26_2025.pdf
- [10973] Blink Galaxy_ADV_12_6_25.pdf
- [10974] BlinkGalaxy_ADV_12_5_25 .pdf
- [10975] Block Social Network_TOKEN_09_20_24.pdf
- [10976] BlockXpress_ ERC 20 token_11_03_2023.pdf
- [10977] BloodLoop_ERC 20 Token_09-09-2023.pdf
- [10978] BloxSIM_ADV2_10_08_24.pdf
- [10979] BloxSIM_ADV_10_08_24.pdf
- [10980] CATE_ADV_09_18_24.pdf
- [10981] CELLEX_ADV_06_13_25.pdf
- [10984] CHAIN BASED_TOKEN_11_27_24.pdf
- [10985] CHAINSPIN_ST_05_23_26.pdf
- [10986] CLOAK_ADV_06_16_25.pdf
- [10987] CNDR_TOKEN_07_02_24.pdf
- [10988] CONAN_TOKEN_03_28_24.pdf
- [10989] CRAFTEO_TOKEN_01_29_24.pdf
- [10990] CRAFTEO_TOKEN_01_30_24.pdf
- [10991] CRAZE_TOKEN_12_03_24.pdf
- [10992] CSWAP_TOKEN_03_28_24.pdf
- [10993] CYBONK_TOKEN_03_05_24.pdf
- [10994] CatDUCK_SOL_09_06_24.pdf
- [10995] CoinCreate_ADV_11_01_24.pdf
- [10996] CoinCreate_BTOKEN_11_04_24.pdf
- [10997] CoinCreate_STAKENFT_11_04_24.pdf
- [10998] CoinCreate_STOKEN_11_04_24.pdf
- [10999] CoinCreate_VESTING_11_04_24.pdf
- [11001] Cygnus Network_Token_DAO_02_02_24.pdf
- [11002] DESTRA_TOKEN_03_13_24.pdf
- [11003] DESTRA_TOKEN_03_14_24.pdf
- [11004] DESTRA_TOKEN_03_28_24.pdf
- [11005] DESTRA_TOKEN_03_29_24.pdf
- [11006] DEVOUR_ETH_ADV_05_13_24.pdf
- [11007] DEVOUR_ETH_ADV_05_16_24.pdf
- [11008] DEVOUR_SOL_ADV2_05_13_24.pdf
- [11009] DEVOUR_SOL_ADV_05_13_24.pdf
- [11010] DEVOUR_SOL_ADV_05_16_24.pdf
- [11011] DROPS_ADVANCED_03_29_24.pdf
- [11012] DROPS_MARKETPLACE_03_30_24.pdf
- [11013] DROPS_MARKETPLACE_04_03_24.pdf
- [11014] DROPS_TOKEN_04_01_24.pdf
- [11015] DROPS_TOKEN_04_03_24.pdf
- [11016] DROPS_V6_04_07_24.pdf
- [11017] DRVN LABO_ADV_07_09_25.pdf
- [11018] DRVN LABO_ADV_08_06_25.pdf
- [11019] DRVN Labo_ADV_06_05_25.pdf
- [11020] DRVN_ADV_06_10_25.pdf
- [11021] DRVN_ADV_06_27_25.pdf
- [11022] DecenterAI_ST2_05_14_25.pdf
- [11023] DecenterAI_ST_05_14_25.pdf
- [11024] DefiOne.VAC_ERC 20 Token_09_12_2023.pdf
- [11026] Deluge.Cash_Flash_Audit_12_16_23.pdf
- [11027] ELONTIX Audit_ERC20 Token_7_28_23.pdf
- [11031] EVA_FARM_09_28_24.pdf
- [11032] EVA_FARM_09_29_24.pdf
- [11033] EchoMetrix_ADV2_06_28_25.pdf
- [11034] EchoMetrix_ADV_06_28_25.pdf
- [11035] Embark_ERC 20 Token_10_20_2023.pdf
- [11036] Embark_ERC 20 Token_10_31_2023.pdf
- [11040] FLEXIMINE_TOKEN_03_17_24.pdf
- [11041] FLOORISLAVA_ADV_1_19_26.pdf
- [11042] FLOORISLAVA_ADV_1_23_26.pdf
- [11043] FLOORISLAVA_ADV_1_9_26.pdf
- [11044] FLOORISLAVA_V2_ADV_1_29_26.pdf
- [11045] FLOORISLAVA_V2_ADV_1_30_26.pdf
- [11046] FRAKTIA_ADV_06_18_25.pdf
- [11047] GAMEDAY_ADV_08_21_24.pdf
- [11048] GEMPAD_LOCKER_12_27_24.pdf
- [11049] GEMPAD_LOCK_12_23_24.pdf
- [11050] GG_GUARDIAN - ADV_04_15_26.pdf
- [11051] GG_GUARDIAN_ADV_05_01_26.pdf
- [11052] GG_PROTOCOL - ADV_04_15_26.pdf
- [11053] GG_PROTOCOL_ADV_05_01_26.pdf
- [11055] GROKCAT_TOKEN_04_12_24.pdf
- [11056] GROKS TOKEN_ERC 20 TOKEN_12_18_23.pdf
- [11057] GUARDIAN_ADV_05_26_24.pdf
- [11058] GUARDIAN_ADV_05_30_24.pdf
- [11059] Gempad_LOCKER_12_21_24.pdf
- [11060] GeneAlphaAi_ADV_07_23_25.pdf
- [11061] GnomeLand_NFT_02_09_24.pdf
- [11064] Gradient_ADV_06_02_25.pdf
- [11067] Gradient_ADV_4_09_20_25.pdf
- [11068] Gradient_Bundle_07_06_25.pdf
- [11069] Gradient_Bundle_07_09_25.pdf
- [11070] Gradient_Bundle_07_11_25.pdf
- [11071] Gradient_OrderBook_ADV_06_12_25.pdf
- [11072] GrokCAT_TOKEN_04_09_24.pdf
- [11073] GrokGrow_BSC_ERC 20 Token_12_18_23.pdf
- [11074] GrokGrow_v1_ERC20 Token_12_06_2023.pdf
- [11075] GrokGrow_v2_ERC 20 Token_12_06_2023.pdf
- [11076] HINA_TOKEN_04_07_24.pdf
- [11077] HINA_TOKEN_04_12_24.pdf
- [11078] HedgeFi_ADV_06_18_25.pdf
- [11079] HedgeFi_ADV_06_19_25.pdf
- [11080] ICB Network_Vesting_04_18_24.pdf
- [11083] INNOVIA_TOKEN_04_23_24.pdf
- [11084] IOTAI_ADV_07_25_25.pdf
- [11085] IronClad Security_ST_04_18_26.pdf
- [11086] IronClad Security_ST_04_21_26.pdf
- [11087] JOI AI_ ERC 20 Token_12:5:23.pdf
- [11088] JOI AI_ERC 20 token_12_6_23.pdf.pdf
- [11089] KENNY Audit_ERC20 Token_7_28_23.pdf
- [11090] KIMBERLITE_ST_10_26_25.pdf
- [11092] LADA_TOKEN_02_20_24.pdf
- [11093] LANNetwork_ERC 20 Token_09_03_2023.pdf
- [11094] LOOP_SOL_10_13_25.pdf
- [11095] LYNX TECH_Staking_12_19_23.pdf
- [11096] LYNX _Profit Sharing_10_13_2023.pdf
- [11097] LYNX _Profit Sharing_10_22_2023.pdf
- [11098] LYNX_ERC 20 Token_09_27_2023.pdf
- [11101] Lynx Tech_$Lynx_Staking_Audit_12_14_23.pdf
- [11102] MAO_TOKEN_1_15_24.pdf
- [11103] MAO_TOKEN_V2_1_15_24.pdf
- [11104] MARIOBURNBROS_TOKEN_05_04_24.pdf
- [11105] MEME Alliance_SOL_09_09_24.pdf
- [11106] MEMELORDZ_BASE_10_22_24.pdf
- [11107] MEMELORDZ_BSC_10_22_24.pdf
- [11109] METABOT_ADV_10_23_24.pdf
- [11110] METABRAWL_ADV_01_26_24.pdf
- [11111] METAZERO_ADVANCED_04_11_24.pdf
- [11112] METAZERO_STAKING_04_05_24.pdf
- [11113] MEVDAO_ERC 20 Token_09_05_2023.pdf
- [11114] MEVDAO_ERC 20 Token_09_06_2023.pdf
- [11115] MLMX_ST_07_24_25.pdf
- [11117] MODUS_V3_02_12_24.pdf
- [11120] MOREPAD_ADV_12_19_24.pdf
- [11121] MOREPAD_ADV_12_24_24.pdf
- [11122] MOREPAD_ADV_12_28_24.pdf
- [11124] MQSALA_ADV_07_01_25.pdf
- [11125] MQSALA_ADV_07_04_25.pdf
- [11126] MUGA EARN_SOL_10_30_25.pdf
- [11128] MUNCH_TOKEN_07_17_24.pdf
- [11129] MUNCH_TOKEN_07_23_24.pdf
- [11130] MUNCH_TOKEN_07_26_24.pdf
- [11131] ManaCoin_ERC 20 Token_09-21-2023.pdf
- [11132] ManaCoin_MNC_Assure DeFi Audit.pdf
- [11134] Meme Alliance_ ERC 20 token_11_20_2023.pdf
- [11135] Meme Stars_ ERC 20 token_11_10_2023.pdf
- [11136] MemeLordz_ADV_09_12_24.pdf
- [11137] MetaHorseUnity_STAKING_02_25_24.pdf
- [11138] Metabot_ADV_10_12_24.pdf
- [11139] MileStoneMillions_ERC 20 Token_09_13_2023.pdf
- [11140] Modus_ERC 20_01_26_2024.pdf
- [11142] MoonInu_ERC 20 Token_08_30_2023.pdf
- [11143] Moonreum_ERC 20 Token_10_11_2023.pdf
- [11144] MrLightSpeedCoin_ST_11_13_25.pdf
- [11145] NEURASWAP_TOKEN_01_12_24.pdf
- [11146] NOMOEX_TOKEN_07_11_24.pdf
- [11147] NOMOEX_TOKEN_ADV_07_11_24.pdf
- [11149] NOREXA_ADV_07_24_25.pdf
- [11150] NOREXA_YieldOptimizer_09_23_25.pdf
- [11151] NOREXA_YieldOptimizer_10_13_25.pdf
- [11153] NUMPAY_ADV_07_26_25.pdf
- [11154] NUMPAY_ADV_08_01_25.pdf
- [11157] ONCHAIN BATTLES_ADV_07_29_25.pdf
- [11158] ONCHAIN BATTLES_ADV_07_31_25.pdf
- [11159] ONLYPUMP_ADV_07_03_25.pdf
- [11160] ONLYPUMP_ADV_08_05_25.pdf
- [11161] OPAL_ADV_09_25_25.pdf
- [11162] OPAL_ADV_09_29_25.pdf
- [11163] OPAL_ADV_10_06_25.pdf
- [11164] OPTIMUS POOL MANAGER_ERC20_01_25_2024.pdf
- [11165] OPTIMUS_MASTER_01_05_23.pdf
- [11166] OPTIMUS_NR_12_25_23.pdf
- [11167] OPTIMUS_PM_12_25_23.pdf
- [11168] OPTIMUS_SP_12_25_23.pdf
- [11169] OPTIMUS_TR_12_25_23.pdf
- [11170] OcNest_ADV_02_06_24.pdf
- [11171] OnlyPUMP_ADV_07_16_25.pdf
- [11172] OnlyPUMP_ADV_11_08_25.pdf
- [11173] OnlyPUMP_Fee Manager_10_16_25.pdf
- [11174] OnlyPump_Fee Manager_10_25_25.pdf
- [11175] OpTradeAi_ADV_03_02_25.pdf
- [11176] OpTradeAi_ADV_03_04_25.pdf
- [11177] PAYDAX_ST_09_19_25.pdf
- [11178] PEPOCLOWN_DEPLOYER_10_21_24.pdf
- [11179] PETROBIT_ST_07_11_25.pdf
- [11180] PIPE GDAO_ST_12_13_25.pdf
- [11181] PLUTO_TOKEN_12_02_24.pdf
- [11182] POLFEX_ERC 20 Token_08_27_2023.pdf
- [11183] PREDICTINGAI_ERC20 TOKEN_4_16_24.pdf
- [11184] PRIVIX_L1_07_09_25.pdf
- [11185] PRIVIX_L1_07_19_25.pdf
- [11186] PROFIT-IQ_ADVANCED_04_17_24.pdf
- [11187] PROFIT-IQ_ADVANCED_04_23_24.pdf
- [11188] PROFIT-IQ_Advanced_04_14_24.pdf
- [11189] PepeArab_ADV_01_24_24.pdf
- [11190] Pepoclown_ADV_10_17_24.pdf
- [11191] PredictingAI_TOKEN_04_17_24.pdf
- [11192] Prophet Bots_Router_V2_01_19_24.pdf
- [11193] ProphetBots_Router_01_19_24.pdf
- [11194] ProphetBots_Router_V3_01_23_24.pdf
- [11195] ProphetBots_Router_V4_REV 2_1_24.pdf
- [11196] RAYLINE_ST_04_05_26.pdf
- [11197] README.md
- [11198] REBIRTH_ERC 20 Token_09_30_2023.pdf
- [11199] REBIRTH_ERC 20 Token_10_04_2023.pdf
- [11200] REBIRTH_ERC 20 Token_10_20_2023.pdf
- [11201] RIFTS_ADV_09_02_25.pdf
- [11202] RIFTS_ADV_10_03_25.pdf
- [11203] RIFTS_ADV_10_06_25.pdf
- [11204] RIFTS_ADV_10_11_25.pdf
- [11205] RIFTS_ADV_11_21_25.pdf
- [11206] RIFTS_DAPP_ADV_1_2_26.pdf
- [11207] RIFTS_DAPP_ADV_1_5_26.pdf
- [11208] RIFTS_PROTOCOL_ADV_1_2_26.pdf
- [11209] RIFTS_PROTOCOL_ADV_1_5_26.pdf
- [11210] RIFTS_PROTOCOL_ADV_1_6_26.pdf
- [11211] ROAI_STAKING_06_14_25.pdf
- [11212] ROAI_STAKING_06_18_25.pdf
- [11213] ROAI_STAKING_06_19_25.pdf
- [11214] ROAI_STAKING_06_25_25.pdf
- [11215] ROLLBACK_ADV_08_23_25.pdf
- [11216] ROLLBACK_WALLET_08_18_25.pdf
- [11217] ROLLBACK_WALLET_08_26_25.pdf
- [11218] Robinhood_ERC 20 Token_10_13_2023.pdf
- [11219] SAFESUN_ADV_08_23_24.pdf
- [11220] SAFESUN_ADV_TRON_08_20_24.pdf
- [11221] SAFESUN_ADV_TRON_08_21_24.pdf
- [11222] SENTINEL_ADV_08_22_24.pdf
- [11223] SHARBI_API_07_28_25.pdf
- [11224] SHARBI_API_08_11_25.pdf
- [11225] SHARBI_APP_07_28_25.pdf
- [11226] SHARBI_APP_08_11_25.pdf
- [11227] SHARBI_CONTRACTS_07_28_25.pdf
- [11228] SHARBI_CONTRACTS_08_11_25.pdf
- [11229] SHILLD_ERC 20 Token_08_30_2023.pdf
- [11230] SHIRO NEKO_ADV_08_16_25.pdf
- [11231] SILENSIO_ADV_06_26_25.pdf
- [11232] SOLPAW_TOKEN_04_12_24.pdf
- [11233] SOLPAW_TOKEN_04_13_24.pdf
- [11234] SORRA_STAKING_12_18_24.pdf
- [11235] SORRA_Staking_Final_12_18_2024.pdf
- [11236] SPARK_FACTORY_02_22_24.pdf
- [11237] SPARK_FACTORY_02_27_25.pdf
- [11238] SPARK_TOKEN_02_11_24.pdf
- [11239] SPINLAUNCH_TOKEN_SOL_08_02_24.pdf
- [11240] SRS.Turbo_ERC 20 Token_07_21_2023.pdf
- [11241] Shibillionaire_SOL_04_16_25.pdf
- [11242] Shibillionaire_SOL_04_20_25.pdf
- [11243] Snoopy_ERC 20 Token_07_28_2023.pdf
- [11244] Snoopy_ERC 20 Token_08_02_2023.pdf
- [11245] SparkStarter_ADV_04_05_25.pdf
- [11246] Star Raiders_TOKEN_03_04_24.pdf
- [11247] Superman Coin_ERC 20 Token_10_13_2023.pdf
- [11248] SyntorAI_ADV_06_10_25.pdf
- [11249] SyntorAI_ADV_06_12_25.pdf
- [11250] TAINET_ADV_10_04_24.pdf
- [11251] TAINET_ADV_11_04_24.pdf
- [11252] TEKNICAi_ADV_05_24_24.pdf
- [11253] TEKNICAi_ADV_05_25_24.pdf
- [11254] TENDR_TOKEN_09_22_24.pdf
- [11255] TGB_PRESALE_12_11_23.pdf
- [11256] TGB_PreSaleV1_01_12_2024.pdf
- [11257] TGB_STAKING MANAGER_12_11_23.pdf
- [11258] TGB_StakingManager_01_12_2024.pdf
- [11259] TGB_TOKEN_12_11_23.pdf
- [11260] TGB_TOKEN_12_28_23.pdf
- [11261] TGB_Token_01_12_2024.pdf
- [11262] THE MONEY FROG_ERC 20 Token_02_13_2024.pdf
- [11263] TIXER_ADV_06_27_25.pdf
- [11264] TIXER_ADV_06_28_25.pdf
- [11265] TIXER_ADV_10_28_25.pdf
- [11266] Tainet_ADV_10_14_24.pdf
- [11267] Tendr_ADV_09_20_24.pdf
- [11268] Tethereum_ERC 20 Token_09_02_2023.pdf
- [11269] Tradelight_ADV_01_19_24.pdf
- [11270] Trumpius Maximus_ADV_01_19_24.pdf
- [11271] USDE_ST_05_17_25.pdf
- [11272] Uncle Don_SOL_10_31_24.pdf
- [11273] VCASH_STAKING_11_27_24.pdf
- [11274] VCASH_STAKING_11_28_24.pdf
- [11275] VCASH_TOKEN_11_27_24.pdf
- [11276] VENKO_ADV_10_14_24.pdf
- [11277] VENKO_TOKEN_08_03_24.pdf
- [11278] VICE_ADV_08_21_24.pdf
- [11279] VITALIKMUMDOGE_ERC 20 Token_02_13_2024.pdf
- [11280] VOLTAIC_ADV_12_27_25.pdf
- [11281] VOLTAIC_ADV_12_29_25.pdf
- [11282] ViFoxCoin_ST_11_20_25.pdf
- [11283] ViFoxCoin_ST_11_24_25.pdf
- [11284] ViFoxCoin_ST_11_25_25.pdf
- [11285] Virtue Finance_ADV_06_12_25.pdf
- [11286] VirtueFinance_ADV_06_12_25.pdf
- [11287] VirtueFinance_ADV_07_05_25.pdf
- [11288] Voltaic_ADV_12_23_25.pdf
- [11289] Website AI_Staking Contract_11_27_23.pdf
- [11290] WebsiteAI_STAKING_02_17_24.pdf
- [11291] WiseTools_ERC 20 Token_12_14_23.pdf
- [11292] World Compute Network_TOKEN_10_29_24.pdf
- [11293] World Compute Network_TOKEN_11_01_24.pdf
- [11294] XBANKING_ST_05_17_25.pdf
- [11295] YIELDRONE_ERC 20 Token_02_13_2024.pdf
- [11296] YIELDRONE_ERC 20 Token_02_14_2024.pdf
- [11297] ZEUSS_TOKEN_02_20_24.pdf
- [11298] ZYDIO_TOKEN_05_14_24.pdf
- [11299] ZYGADEX_BACKEND&FRONTEND_ADV_02_16_26.pdf
- [11300] ZYGADEX_BACKEND&FRONTEND_ADV_02_17_26.pdf
- [11301] ZYGADEX_SMART CONTRACTS_ADV_02_16_26.pdf
- [11302] ZYPTO_ARB_ADV_04_28_26.pdf
- [11303] ZYPTO_BSC_ADV2_03_18_26.pdf
- [11304] ZYPTO_BSC_ADV_03_18_26.pdf
- [11305] ZYPTO_SOL_ADV_04_01_26.pdf
- [11306] ZeroKnowledgeNetwork_ERC 20 Token_08_07_2023.pdf
- [11307] ZeussOne_ADV_02_28_25.pdf
- [11308] data-protection-analyst.md
- [11309] infra-security-reviewer.md
- [11310] security-auditor.md

Fork inheritance lineage and inherited audits are included when available.
