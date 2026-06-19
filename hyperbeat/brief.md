# Agentic Audit Brief: Hyperbeat

## Project Overview

- Project: Hyperbeat (`hyperbeat`)
- Website: [https://app.hyperbeat.org/earn?referral=5C37264D](https://app.hyperbeat.org/earn?referral=5C37264D)
- Lifecycle: active (Tier 0, 89.8% below peak)
- Generated: 2026-06-19T06:13:54.994Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: ethereum, hyperliquid
- Contract surface: 103 unique implementations (302 raw deployments)
- DeFi Llama TVL: $33,760,694.00
- On-chain TVL (included contracts): $8,573,751.33
- TVL by chain: Hyperliquid $8,367,858.39 | Ethereum $205,892.94

## Project Description

Hyperbeat is a Hyperliquid-focused DeFi and money application spanning liquid staking, yield and Meta-Yield vaults, borrow/lend money markets, swap, payments, fiat-crypto conversion, high-yield accounts, credit-card functionality, and strategies such as delta-neutral yield. Its on-chain HyperEVM/Hyperliquid deployments include HYPE liquid staking tokens such as lstHYPE and related vault/account infrastructure, with integrations to external protocols where supported by current contracts or documentation.

### Architecture

Hyperbeat Earn vaults on Ethereum feed into HyperEVM Vaults via TokenizedAccount proxies, enabling cross-chain yield aggregation. The Morpho integration supplies lending markets for vault strategies, while beHYPE provides staking infrastructure that may be utilized by other product families.

## Contract Surface Quality

- Indexed contracts: 603; live-surface contracts included: 302 (300 live, 2 unknown).
- Excluded by liveness: 4 inactive, 297 singleton, 0 uninitialized.
- Deployment units: 13/158 live.
- Detected codebases: none
- Dependencies extracted: 4; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 14/52 (26.9%)
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 51
- Unique implementations: 103
- Raw deployments: 302
- Audits discovered: 14
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $8,573,751.33
- Latest audit: 2025-12 (fresh)
- Staleness: 5 fresh, 1 aging, 1 stale, 7 unknown
- Tier 1 coverage: 13.5% (Certora)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Nethermind | Tier 2 | 13 | 25.0% | 2025-10 |
| Certora | Tier 1 | 7 | 13.5% | 2025-10 |
| Pashov Audit Group | Tier 2 | 5 | 9.6% | 2025-09 |
| Zellic | Tier 2 | 1 | 1.9% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BeatPotWithdrawalQueue | operational_periphery | hyperliquid | n/a | 6 deployments: hyperliquid [`0x721066...0fb966`](./contracts/hyperliquid-999/0x721066bc8ef8211e04a43b78ca078bdfa60fb966/); hyperliquid `0x7e89ac...045e10`; hyperliquid `0x9cd033...84f46e`; hyperliquid `0xd1556d...9d9673`; hyperliquid `0xf11207...a976b6`; hyperliquid `0xf97271...c0e798` | ✅ Audited |
| BeHYPE | unknown | hyperliquid | unit-36646 | [`0xd8fc8f...e5dda9`](./contracts/hyperliquid-999/0xd8fc8f0b03eba61f64d08b0bef69d80916e5dda9/) | ✅ Audited |
| BeHYPETimelock | governance | hyperliquid | n/a | [`0xa24af7...4d2de4`](./contracts/hyperliquid-999/0xa24af73eadd17997eeedbed36672e996544d2de4/) | ✅ Audited |
| Depositor | unknown | hyperliquid | n/a | 29 deployments: hyperliquid [`0x0058fa...80b7a8`](./contracts/hyperliquid-999/0x0058fa9192f7829b52316096456e98d83980b7a8/); hyperliquid `0x0868a6...2da176`; hyperliquid `0x0f0d39...45c933`; hyperliquid `0x127c59...e464b9`; hyperliquid `0x205ac1...ae9201`; hyperliquid `0x223c4a...e451e0`; hyperliquid `0x315b70...838883`; hyperliquid `0x4c645e...96d51c`; hyperliquid `0x53dd0a...5967d1`; hyperliquid `0x5bfb09...4f9d60`; hyperliquid `0x60bb82...f9c893`; hyperliquid `0x60bf48...932c70`; hyperliquid `0x6261f3...6ac936`; hyperliquid `0x657c7f...1aaa4f`; hyperliquid `0x6ff429...24be21`; hyperliquid `0x76a48c...0defa8`; hyperliquid `0x8315ff...dbfd76`; hyperliquid `0x8b6bad...609b84`; hyperliquid `0x901beb...d666bf`; hyperliquid `0x929df5...5be4d0`; hyperliquid `0x93a970...ddbb4d`; hyperliquid `0x9eef6e...1dd4ed`; hyperliquid `0xa685ef...b6607c`; hyperliquid `0xafa7a5...12a1c5`; hyperliquid `0xb3060c...e6f2e0`; hyperliquid `0xbd3737...681698`; hyperliquid `0xccbc13...10d2d3`; hyperliquid `0xd40979...ed658b`; hyperliquid `0xd830bf...da71f5` | ✅ Audited |
| DepositReceiver | unknown | hyperliquid | n/a | 29 deployments: hyperliquid [`0x0126c0...715105`](./contracts/hyperliquid-999/0x0126c0bc7b1dca51e1b9c7293f393f57c0715105/); hyperliquid `0x1fc216...2151f8`; hyperliquid `0x21e099...dcdc8a`; hyperliquid `0x226acf...036f77`; hyperliquid `0x248b98...960d78`; hyperliquid `0x3067f8...ef0775`; hyperliquid `0x4f7bad...712a8b`; hyperliquid `0x4fe414...dcf1a9`; hyperliquid `0x5abfb1...c06a05`; hyperliquid `0x6c042e...c6fc6e`; hyperliquid `0x7abf6d...dc1c2a`; hyperliquid `0x8644fa...c738e6`; hyperliquid `0x9182b9...4dbc92`; hyperliquid `0x92dd15...6e03a4`; hyperliquid `0x93586b...53f736`; hyperliquid `0x95e89c...f265d2`; hyperliquid `0xa980d9...8aa59e`; hyperliquid `0xb3d7b9...df48ca`; hyperliquid `0xb3f15e...c70aec`; hyperliquid `0xb4cfbb...aca06b`; hyperliquid `0xbdc3d2...67297d`; hyperliquid `0xc0bd66...187969`; hyperliquid `0xc4dee7...ec3277`; hyperliquid `0xc74c98...fb1626`; hyperliquid `0xc8ca86...9ea14e`; hyperliquid `0xd52e5f...f92fbd`; hyperliquid `0xdcefcd...963884`; hyperliquid `0xe098e4...6280db`; hyperliquid `0xfd1fd8...fec16c` | ✅ Audited |
| DnCoreWriterVault | core_logic | hyperliquid | n/a | [`0x155783...113774`](./contracts/hyperliquid-999/0x1557835b3c6a5d6927f23c055f65482e70113774/) | ✅ Audited |
| ExchangeRateUpdater | unknown | hyperliquid | n/a | 13 deployments: hyperliquid [`0x22a66f...cbd78a`](./contracts/hyperliquid-999/0x22a66ffc6dd778aeaf90cc2e8522593aabcbd78a/); hyperliquid `0x2abeea...da8e38`; hyperliquid `0x4249c4...1a3c87`; hyperliquid `0x74717a...c3a28b`; hyperliquid `0x77ce3e...bc195b`; hyperliquid `0x88cf45...fa3049`; hyperliquid `0x891bab...f9030b`; hyperliquid `0x9fa8d2...7fd388`; hyperliquid `0xd08a65...eaf45a`; hyperliquid `0xdaaede...cb8c90`; hyperliquid `0xe24761...65171d`; hyperliquid `0xf13d61...0a1a1f`; hyperliquid `0xf2bc55...6cae23` | ✅ Audited |
| OracleAggregator | operational_periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x5e1381...f52b73`](./contracts/hyperliquid-999/0x5e138194a3bf0ca723b7364d87c30b641bf52b73/); hyperliquid `0xb2ed7f...63c6ee` | ✅ Audited |
| Pricer | operational_periphery | hyperliquid | n/a | 30 deployments: hyperliquid [`0x059d7a...cf6ce6`](./contracts/hyperliquid-999/0x059d7a4d777aa7bd87edbea070c5dc5f88cf6ce6/); hyperliquid `0x0f1824...4b4738`; hyperliquid `0x1de596...77817b`; hyperliquid `0x3636a2...4c6579`; hyperliquid `0x3b55e3...698030`; hyperliquid `0x42db88...5f5322`; hyperliquid `0x5100ae...afed8d`; hyperliquid `0x52f131...0f4407`; hyperliquid `0x56a560...9930ea`; hyperliquid `0x58f613...a92ea6`; hyperliquid `0x5ed0ec...9b884b`; hyperliquid `0x6607f7...c30d57`; hyperliquid `0x725f73...29f756`; hyperliquid `0x7881b0...42c489`; hyperliquid `0x8cf469...2933d7`; hyperliquid `0x9081c2...89743b`; hyperliquid `0x90a0a6...6f8f11`; hyperliquid `0x988e3e...e1a597`; hyperliquid `0xa532a4...d338a8`; hyperliquid `0xaa3fd6...9b101a`; hyperliquid `0xb46eb7...467785`; hyperliquid `0xbeecd5...fec8c0`; hyperliquid `0xc23cdf...ac668b`; hyperliquid `0xc6090a...791db2`; hyperliquid `0xcb4561...c7b078`; hyperliquid `0xd2e5f0...3109dd`; hyperliquid `0xd52d1e...53f844`; hyperliquid `0xe0995a...763316`; hyperliquid `0xf21440...fb8236`; hyperliquid `0xf29f39...73042c` | ✅ Audited |
| RoleRegistry | registry | hyperliquid | unit-36591 | [`0x901024...294f76`](./contracts/hyperliquid-999/0x90102473a816a01a9fb0809f2289438b2e294f76/) | ✅ Audited |
| StakingCore | unknown | hyperliquid | unit-36634 | [`0xcead89...c38e0b`](./contracts/hyperliquid-999/0xcead893b162d38e714d82d06a7fe0b0dc3c38e0b/) | ✅ Audited |
| VaultToken | core_logic | hyperliquid | n/a | 16 deployments: hyperliquid [`0x0d0f82...a29b5a`](./contracts/hyperliquid-999/0x0d0f8274e7a92cfc0fd2c358ff80440530a29b5a/); hyperliquid `0x130ee3...9bbb09`; hyperliquid `0x265b3c...ae0302`; hyperliquid `0x445515...b5b6f0`; hyperliquid `0x4cc221...1b9bba`; hyperliquid `0x52bc95...3355b8`; hyperliquid `0x842537...ff4b5a`; hyperliquid `0x9ddf96...10d9d2`; hyperliquid `0xa4cf00...5fd6c8`; hyperliquid `0xb78dcc...d435c3`; hyperliquid `0xb7956c...f365bb`; hyperliquid `0xc48448...3327e6`; hyperliquid `0xcd867e...94ada0`; hyperliquid `0xdf1fcd...9a1057`; hyperliquid `0xecde33...b7e744`; hyperliquid `0xfb5943...1aaad7` | ✅ Audited |
| WithdrawalQueue | operational_periphery | hyperliquid | n/a | 29 deployments: hyperliquid [`0x0d30b2...4b9e0e`](./contracts/hyperliquid-999/0x0d30b29042e2d6802689be6ade022a0c4d4b9e0e/); hyperliquid `0x0d7f3d...7aad82`; hyperliquid `0x0dfe20...bcb423`; hyperliquid `0x100242...438be3`; hyperliquid `0x1cc393...8e5869`; hyperliquid `0x1d749e...4fc4bf`; hyperliquid `0x202b34...a2511c`; hyperliquid `0x240e0b...45b1c6`; hyperliquid `0x261a2b...49f906`; hyperliquid `0x368995...2134d6`; hyperliquid `0x43cacc...8f8e8c`; hyperliquid `0x5236b7...6e5bd6`; hyperliquid `0x52784b...ba7c4a`; hyperliquid `0x667859...bec1b7`; hyperliquid `0x66d9be...7449f0`; hyperliquid `0x6b68c4...9c1089`; hyperliquid `0x70bc29...109f39`; hyperliquid `0x73905d...3d3949`; hyperliquid `0x788c7c...43a143`; hyperliquid `0x8b04cd...d09d98`; hyperliquid `0x9d90b2...a0e294`; hyperliquid `0xa03e0e...5a84fe`; hyperliquid `0xb62b28...bf085e`; hyperliquid `0xbc63a6...058dd1`; hyperliquid `0xbe2f89...8f16bc`; hyperliquid `0xc7becb...4b8225`; hyperliquid `0xda768e...157a38`; hyperliquid `0xdac07c...36094c`; hyperliquid `0xe73722...df7507` | ✅ Audited |
| WithdrawManager | operational_periphery | hyperliquid | unit-36602 | [`0x9d0b08...822538`](./contracts/hyperliquid-999/0x9d0b0877b9f2204cf414ca7862e4f03506822538/) | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TokenizedAccount | core_logic | hyperliquid | unit-36597 | [`0x96c6cb...44b1fb`](./contracts/hyperliquid-999/0x96c6cbb6251ee1c257b2162ca0f39aa5fa44b1fb/) | ⚠️ Unaudited |
| TokenizedAccount | core_logic | hyperliquid | unit-36625 | [`0xc061d3...674f94`](./contracts/hyperliquid-999/0xc061d38903b99ac12713b550c2cb44b221674f94/) | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | [`0x669abe...bc0cc1`](./contracts/ethereum-1/0x669abe85f96a9e3b34723f7be9bc6f250abc0cc1/) | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | hyperliquid | n/a | [`0xd4a426...9b7483`](./contracts/hyperliquid-999/0xd4a426f010986dcad727e8dd6eed44ca4a9b7483/) | ⚠️ Unaudited |
| BeHypeAdapter | adapter | hyperliquid | n/a | 2 deployments: hyperliquid [`0x18bd6f...2492ca`](./contracts/hyperliquid-999/0x18bd6ff6f1d1ab13702a743bbf3742cb512492ca/); hyperliquid `0x8c4bf0...542c01` | ⚠️ Unaudited |
| beHYPEBatchWithdrawalClaim | operational_periphery | hyperliquid | n/a | [`0xa86b7a...bef966`](./contracts/hyperliquid-999/0xa86b7a6942a1861e90baf713ad70308545bef966/) | ⚠️ Unaudited |
| beHYPEDepositAdapter | adapter | hyperliquid | n/a | [`0x696c55...021323`](./contracts/hyperliquid-999/0x696c558377dd0861696f1b80f33a5704a8021323/) | ⚠️ Unaudited |
| DNHypeAdapter | adapter | hyperliquid | n/a | 4 deployments: hyperliquid [`0x1ca0ad...4fd41c`](./contracts/hyperliquid-999/0x1ca0ad4f112d2484c2b87d64c6c24a1d984fd41c/); hyperliquid `0x1e73ed...f92b23`; hyperliquid `0x21f547...ecad48`; hyperliquid `0xc6c06b...cdcd2f` | ⚠️ Unaudited |
| DnHypeDepositVault | core_logic | hyperliquid | n/a | [`0x712eb0...1a3b38`](./contracts/hyperliquid-999/0x712eb0d313e99c8f6f33f2be4d7b6ce0091a3b38/) | ⚠️ Unaudited |
| DNPumpAdapter | adapter | hyperliquid | n/a | 3 deployments: hyperliquid [`0x0c83fa...a0d5fc`](./contracts/hyperliquid-999/0x0c83fab6b328137a7c37959c3052ca37a4a0d5fc/); hyperliquid `0x64b587...ec4f90`; hyperliquid `0xbbf26f...56bac6` | ⚠️ Unaudited |
| HBUsdcDepositVault | core_logic | hyperliquid | n/a | [`0x73068e...3c82d7`](./contracts/hyperliquid-999/0x73068e63387d4a0ce5e39012ca957a130b3c82d7/) | ⚠️ Unaudited |
| HBUsdtDepositVault | core_logic | hyperliquid | n/a | [`0x06a76e...2eb60d`](./contracts/hyperliquid-999/0x06a76e722ef59fe830db23feea1c475bfe2eb60d/) | ⚠️ Unaudited |
| HBXautDepositVault | core_logic | hyperliquid | n/a | [`0x448897...1de8a6`](./contracts/hyperliquid-999/0x448897fec88d145e22ca8594f1a928c72e1de8a6/) | ⚠️ Unaudited |
| HypeWrapHelper | periphery | hyperliquid | n/a | [`0xd201a8...f48f3f`](./contracts/hyperliquid-999/0xd201a8a958292db8efe6930a0bce0d188ff48f3f/) | ⚠️ Unaudited |
| LiquidHypeDepositVault | core_logic | hyperliquid | n/a | [`0x0de56f...c0f2f2`](./contracts/hyperliquid-999/0x0de56f6dd79d85fd71efaf12d1a1d39ee2c0f2f2/) | ⚠️ Unaudited |
| LiquidHypeRedemptionVaultWithSwapper | adapter | hyperliquid | n/a | 2 deployments: hyperliquid [`0x6b1331...e2e137`](./contracts/hyperliquid-999/0x6b1331d4e885ae3143ee23726573acadabe2e137/); hyperliquid `0xa69ca6...825cd2` | ⚠️ Unaudited |
| LstHypeDepositVault | core_logic | hyperliquid | n/a | [`0x58d5c2...8dbd3b`](./contracts/hyperliquid-999/0x58d5c2068a61b8ad234f7280f0f94533418dbd3b/) | ⚠️ Unaudited |
| LstHypeRedemptionVaultWithSwapper | adapter | hyperliquid | n/a | [`0x75b6f0...bcfc16`](./contracts/hyperliquid-999/0x75b6f098a6fd7d50e21e903c7f246f04d2bcfc16/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x08c00f...ceadf3`](./contracts/hyperliquid-999/0x08c00f8279dff5b0cb5a04d349e7d79708ceadf3/); hyperliquid `0x264a06...856578`; hyperliquid `0x4851d4...dffd34` | ⚠️ Unaudited |
| MetaMorphoV1_1Factory | registry | ethereum | n/a | [`0x1897a8...535c24`](./contracts/ethereum-1/0x1897a8997241c1cd4bd0698647e4eb7213535c24/) | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | adapter | hyperliquid | n/a | 4 deployments: hyperliquid [`0x0aeeea...5a5e37`](./contracts/hyperliquid-999/0x0aeeea81c9da681b14ba492b775966b9185a5e37/); hyperliquid `0x5d6ffd...db3e10`; hyperliquid `0xd7d4b6...a31921`; hyperliquid `0xed6221...f11654` | ⚠️ Unaudited |
| MidasTimelockController | governance | hyperliquid | n/a | [`0x76613b...c37d5f`](./contracts/hyperliquid-999/0x76613bddb3d89393b4bd70d6894b1c85f6c37d5f/) | ⚠️ Unaudited |
| MockERC20 | token | hyperliquid | n/a | [`0x4f5fa9...4ab61f`](./contracts/hyperliquid-999/0x4f5fa9d9820a6ca224aebe1b1c39b3af904ab61f/) | ⚠️ Unaudited |
| Morpho | unknown | hyperliquid | n/a | [`0x68e37d...0c57cd`](./contracts/hyperliquid-999/0x68e37de8d93d3496ae143f2e900490f6280c57cd/) | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | operational_periphery | hyperliquid | n/a | [`0xeb476f...6f9af5`](./contracts/hyperliquid-999/0xeb476f124fad625178759d13557a72394a6f9af5/) | ⚠️ Unaudited |
| MultiRolesAuthority | governance | hyperliquid | n/a | 40 deployments: hyperliquid [`0x060690...342312`](./contracts/hyperliquid-999/0x060690ec182a5a61f5cdfa0aefae058e04342312/); hyperliquid `0x164b7e...dccab0`; hyperliquid `0x16cc58...52bff9`; hyperliquid `0x1c9b0b...7d16b1`; hyperliquid `0x20790f...a0d156`; hyperliquid `0x2193fa...a903c9`; hyperliquid `0x22630f...f8630e`; hyperliquid `0x2cb0ec...c0fcdf`; hyperliquid `0x2e685e...9e9e09`; hyperliquid `0x304505...d56b10`; hyperliquid `0x342fb4...8c6fc1`; hyperliquid `0x36fad7...b28a5f`; hyperliquid `0x40f5b5...6cfc45`; hyperliquid `0x421d2d...f87c60`; hyperliquid `0x49943e...0d096c`; hyperliquid `0x4fe4ba...2ed10e`; hyperliquid `0x549baf...0713d9`; hyperliquid `0x54fff0...c35734`; hyperliquid `0x5a4015...1dadf1`; hyperliquid `0x614775...773160`; hyperliquid `0x621810...c0d6ba`; hyperliquid `0x6278d7...05099a`; hyperliquid `0x763ab4...bfa215`; hyperliquid `0x786108...42d523`; hyperliquid `0x79285f...7ae5b6`; hyperliquid `0x7b12a8...ff9fa2`; hyperliquid `0x829995...27c4eb`; hyperliquid `0x85717d...f8bad0`; hyperliquid `0x9cd4c8...665411`; hyperliquid `0xa105c5...9fef5e`; hyperliquid `0xa2321f...558280`; hyperliquid `0xa43bfa...b83597`; hyperliquid `0xa9d525...ba3275`; hyperliquid `0xb68a5b...3301b9`; hyperliquid `0xb7fc0b...5cb46f`; hyperliquid `0xd9b07f...b91a2a`; hyperliquid `0xe062f4...a265dc`; hyperliquid `0xf05dd2...fe00d2`; hyperliquid `0xf420df...7a9b47`; hyperliquid `0xf81795...c251cf` | ⚠️ Unaudited |
| PendleBeHYPESY | unknown | hyperliquid | unit-36507 | [`0x0cd51d...13a8be`](./contracts/hyperliquid-999/0x0cd51d93355f80e4185fb181b0ed5358e213a8be/) | ⚠️ Unaudited |
| PendleBeHYPESY | unknown | hyperliquid | unit-36527 | [`0x2b91c4...42237c`](./contracts/hyperliquid-999/0x2b91c4e657571ab8f9ad379a4e333a4daf42237c/) | ⚠️ Unaudited |
| PendleBeHYPESY | unknown | hyperliquid | unit-36645 | [`0xd887cd...a22528`](./contracts/hyperliquid-999/0xd887cd43e3f79d9d794858ba1df6742b64a22528/) | ⚠️ Unaudited |
| PendleHyperbeatMidasNoRedeemSY | unknown | hyperliquid | unit-36624 | [`0xc027af...29c8e5`](./contracts/hyperliquid-999/0xc027af66fb6167cc8b7c88fe52142b8d5e29c8e5/) | ⚠️ Unaudited |
| PendleHyperbeatVaultSY | core_logic | hyperliquid | unit-36562 | [`0x618b2c...631c0d`](./contracts/hyperliquid-999/0x618b2c320af0df4aed484e59c876b7841f631c0d/) | ⚠️ Unaudited |
| PendleHyperbeatVaultSY | core_logic | hyperliquid | unit-36603 | [`0x9f0554...9ea3f3`](./contracts/hyperliquid-999/0x9f05549998d55595fc2d457367ea3ecec29ea3f3/) | ⚠️ Unaudited |
| PreLiquidationFactory | registry | ethereum | n/a | [`0x6ff336...f83476`](./contracts/ethereum-1/0x6ff33615e792e35ed1026ea7caccf42d9bf83476/) | ⚠️ Unaudited |
| PublicAllocator | operational_periphery | ethereum | n/a | [`0xfd32fa...91c75d`](./contracts/ethereum-1/0xfd32fa2ca22c76dd6e550706ad913fc6ce91c75d/) | ⚠️ Unaudited |
| RelendUSDCOFT | unknown | hyperliquid | n/a | [`0x9ab96a...aa7b8d`](./contracts/hyperliquid-999/0x9ab96a4668456896d45c301bc3a15cee76aa7b8d/) | ⚠️ Unaudited |
| USDGWithdrawalHypeSponsor | operational_periphery | hyperliquid | n/a | [`0x67de62...248124`](./contracts/hyperliquid-999/0x67de622bc5ba753142f2599b66edb88b40248124/) | ⚠️ Unaudited |
| VaultFactoryLite | registry | hyperliquid | n/a | 3 deployments: hyperliquid [`0x1fc8c8...7b553f`](./contracts/hyperliquid-999/0x1fc8c8173ba807423f9a20d21b4d798a827b553f/); hyperliquid `0x4f2ba9...a1f038`; hyperliquid `0xe5aba3...a948d9` | ⚠️ Unaudited |
| WVLPDepositVault | core_logic | hyperliquid | n/a | [`0x542d52...2bc828`](./contracts/hyperliquid-999/0x542d52f6a20ab42ed22b2e70c00dd700a42bc828/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (51)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | hyperliquid | n/a | `0x018fad...0ca12f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x072e75...3e9a20` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0d82ab...c891e2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0f7ce5...867086` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x11400d...6a9266` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1bd141...565a30` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x215adb...2e9349` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x21ff55...96143b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x28c2b2...86831f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2eb2c0...aa85b8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x316fb3...d881ad` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3b325a...ed06d4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3fec2c...1a463f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x410f32...119cf6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x49e74f...e3bccb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4eeb7e...8ba332` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x53734f...bc0d3a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x60e221...f17d75` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x628338...6abf27` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6ba0bd...af9697` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6c6f64...2050d9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x73d901...25074a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x74cbaf...33c825` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7b367e...c947da` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x80b7af...e4e2d7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x82e272...d96b03` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8a14c9...875f0e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9095e5...049aba` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x929e58...037bec` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x93590e...10c121` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa4a3a7...a9267d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa6658d...652dd1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa8f36e...5c648f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xafcf37...296a82` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb41bdd...cdb232` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbb1721...5252d8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbc8c56...001fa3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc59a5e...b02604` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc6c005...ab2c7c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcc4c1d...0becf3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd4b705...a50e6f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd4d067...133bb4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd71665...500061` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdc347f...69c024` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe0ca28...7cb50c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe34034...263565` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe3941a...4a56ee` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xea67e7...39bbab` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xefd734...8a16d2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf2530f...212da4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf8db00...dff888` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit reports](https://github.com/0xhyperbeat/Audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Audit reports](https://docs.morpho.org/get-started/resources/audits) | Morpho | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Zellic.pdf (also discovered via alternate URL)](https://github.com/0xhyperbeat/Audits/blob/main/BeatPot/Zellic.pdf) | Zellic | Audit | 2025-01 | aging | Direct | contract_name|n/a | 6 | high |
| [Codespect.pdf (also discovered via alternate URL)](https://github.com/0xhyperbeat/Audits/blob/main/USD%2B/Codespect.pdf) | Codespect | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [Certora.pdf](https://github.com/0xhyperbeat/Audits/blob/main/Vault-Infra/Certora.pdf) | Certora | Audit | 2025-10 | fresh | Direct | contract_name | 148 | high |
| [Nethermind.pdf (also discovered via alternate URL)](https://github.com/0xhyperbeat/Audits/blob/main/Vault-Infra/Nethermind.pdf) | Nethermind | Audit | 2025-10 | fresh | Direct | contract_name|n/a | 154 | high |
| [* [Certora]()&#x20;](https://github.com/0xhyperbeat/Audits/blob/main/beHYPE/Certora.pdf) | Pashov Audit Group | Audit | 2025-09 | fresh | Direct | contract_name | 5 | high |
| [Pashov.pdf](https://github.com/0xhyperbeat/Audits/blob/main/beHYPE/Pashov.pdf) | Pashov Audit Group | Audit | 2025-09 | fresh | Direct | contract_name | 5 | high |
| [spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf](https://2798104377-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FLaS0wfc7geC7DaOTDEn7%2Fuploads%2FsHxOMBpM7X3DSqcRNG82%2F24.08.09%20-%20SigmaPrime%20-%20Audit%20Report.pdf) | Sigma Prime | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf](https://2798104377-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FLaS0wfc7geC7DaOTDEn7%2Fuploads%2Fgf7igXLiz7gpv0FctQW8%2F25.01.21%20-%20ChainSecurity%20Audit.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Yes, the vault is audited by [Zelic](), [Sigma Prime](https://2798104377-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FLaS0wfc7geC7DaOTDEn7%2Fuploads%2FsHxOMBpM7X3DSqcRNG82%2F24.08.09%20-%20SigmaPrime%20-%20Audit%20Report.pdf?alt=media\&token=5ebfa56d-9b3f-4e6f-9ec0-037b8d8af1b4) and [ChainSecurity.](https://2798104377-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FLaS0wfc7geC7DaOTDEn7%2Fuploads%2Fgf7igXLiz7gpv0FctQW8%2F25.01.21%20-%20ChainSecurity%20Audit.pdf?alt=media\&token=c696298c-e3e8-49a2-baf5-745a99c62eac)](https://content.gitbook.com/content/LaS0wfc7geC7DaOTDEn7/blobs/3UeT78zGv53RD0ugoPeg/22.03.18%20-%20Fractal%20Final%20Report.pdf) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf](https://2732961456-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsPjk0ggBxEJCCnVFFkDR%2Fuploads%2F1wxK6TgqaRsSgt3ixVMx%2FMidas_SC%20Audit%20Report_25092023_%5BSA-1833%5D%20-%20POST%20REMEDIATION.pdf) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf](https://2732961456-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsPjk0ggBxEJCCnVFFkDR%2Fuploads%2F38N1bo36K8FLriRrPDXb%2FHacken_Midas_%5BSCA%5D%20Midas_Vault_Dec2023_P-2023-076_1_20240118%2016_22.pdf) | Hacken | Audit | 2023 | stale | Direct | n/a | 0 | n/a |
| [Yes, three times, twice by Hacken ([1](https://2732961456-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsPjk0ggBxEJCCnVFFkDR%2Fuploads%2F1wxK6TgqaRsSgt3ixVMx%2FMidas_SC%20Audit%20Report_25092023_%5BSA-1833%5D%20-%20POST%20REMEDIATION.pdf?alt=media\&token=cdcf6533-7366-42db-9d3b-224efac85b9a), [2](https://2732961456-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsPjk0ggBxEJCCnVFFkDR%2Fuploads%2F38N1bo36K8FLriRrPDXb%2FHacken_Midas_%5BSCA%5D%20Midas_Vault_Dec2023_P-2023-076_1_20240118%2016_22.pdf?alt=media\&token=2c58f6f7-889e-4c64-ac84-35bad59eb51a)) and once by [Sherlock]().](https://audits.sherlock.xyz/contests/332) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x669abe...bc0cc1`](./contracts/ethereum-1/0x669abe85f96a9e3b34723f7be9bc6f250abc0cc1/) | BoringVault | core_logic | $205,892.94 | Verified native implementation with $205,892.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x18bd6f...2492ca`](./contracts/hyperliquid-999/0x18bd6ff6f1d1ab13702a743bbf3742cb512492ca/) | BeHypeAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x696c55...021323`](./contracts/hyperliquid-999/0x696c558377dd0861696f1b80f33a5704a8021323/) | beHYPEDepositAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x712eb0...1a3b38`](./contracts/hyperliquid-999/0x712eb0d313e99c8f6f33f2be4d7b6ce0091a3b38/) | DnHypeDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0c83fa...a0d5fc`](./contracts/hyperliquid-999/0x0c83fab6b328137a7c37959c3052ca37a4a0d5fc/) | DNPumpAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x73068e...3c82d7`](./contracts/hyperliquid-999/0x73068e63387d4a0ce5e39012ca957a130b3c82d7/) | HBUsdcDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x06a76e...2eb60d`](./contracts/hyperliquid-999/0x06a76e722ef59fe830db23feea1c475bfe2eb60d/) | HBUsdtDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x448897...1de8a6`](./contracts/hyperliquid-999/0x448897fec88d145e22ca8594f1a928c72e1de8a6/) | HBXautDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xd201a8...f48f3f`](./contracts/hyperliquid-999/0xd201a8a958292db8efe6930a0bce0d188ff48f3f/) | HypeWrapHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0de56f...c0f2f2`](./contracts/hyperliquid-999/0x0de56f6dd79d85fd71efaf12d1a1d39ee2c0f2f2/) | LiquidHypeDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x6b1331...e2e137`](./contracts/hyperliquid-999/0x6b1331d4e885ae3143ee23726573acadabe2e137/) | LiquidHypeRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x75b6f0...bcfc16`](./contracts/hyperliquid-999/0x75b6f098a6fd7d50e21e903c7f246f04d2bcfc16/) | LstHypeRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x76613b...c37d5f`](./contracts/hyperliquid-999/0x76613bddb3d89393b4bd70d6894b1c85f6c37d5f/) | MidasTimelockController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x4f5fa9...4ab61f`](./contracts/hyperliquid-999/0x4f5fa9d9820a6ca224aebe1b1c39b3af904ab61f/) | MockERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x67de62...248124`](./contracts/hyperliquid-999/0x67de622bc5ba753142f2599b66edb88b40248124/) | USDGWithdrawalHypeSponsor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 7 |
| standard_library | 6 |
| needs_review | 41 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=348

Zero-match audit list:

- [3867] Audit reports
- [3868] Audit reports
- [3870] Codespect.pdf
- [3880] spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf
- [3881] spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf
- [3882] Yes, the vault is audited by [Zelic](), [Sigma Prime](https://2798104377-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FLaS0wfc7geC7DaOTDEn7%2Fuploads%2FsHxOMBpM7X3DSqcRNG82%2F24.08.09%20-%20SigmaPrime%20-%20Audit%20Report.pdf?alt=media\&token=5ebfa56d-9b3f-4e6f-9ec0-037b8d8af1b4) and [ChainSecurity.](https://2798104377-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FLaS0wfc7geC7DaOTDEn7%2Fuploads%2Fgf7igXLiz7gpv0FctQW8%2F25.01.21%20-%20ChainSecurity%20Audit.pdf?alt=media\&token=c696298c-e3e8-49a2-baf5-745a99c62eac)
- [3883] spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf
- [3884] spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf
- [3885] Yes, three times, twice by Hacken ([1](https://2732961456-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsPjk0ggBxEJCCnVFFkDR%2Fuploads%2F1wxK6TgqaRsSgt3ixVMx%2FMidas_SC%20Audit%20Report_25092023_%5BSA-1833%5D%20-%20POST%20REMEDIATION.pdf?alt=media\&token=cdcf6533-7366-42db-9d3b-224efac85b9a), [2](https://2732961456-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsPjk0ggBxEJCCnVFFkDR%2Fuploads%2F38N1bo36K8FLriRrPDXb%2FHacken_Midas_%5BSCA%5D%20Midas_Vault_Dec2023_P-2023-076_1_20240118%2016_22.pdf?alt=media\&token=2c58f6f7-889e-4c64-ac84-35bad59eb51a)) and once by [Sherlock]().

Fork inheritance lineage and inherited audits are included when available.
