# Agentic Audit Brief: Hyperbeat

## Project Overview

- Project: Hyperbeat (`hyperbeat`)
- Website: [https://app.hyperbeat.org/earn?referral=5C37264D](https://app.hyperbeat.org/earn?referral=5C37264D)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:58.757Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: ethereum, hyperliquid
- Contract surface: 251 unique implementations (606 raw deployments)
- DeFi Llama TVL: $43,666,095.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Collateral Management. Structurally: 92 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 12 ERC20 tokens, 7 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 37 common project-authored base contract(s) (proxy, erc721holder, erc1155holder). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 613; live-surface contracts included: 514 (429 live, 85 unknown).
- Excluded by liveness: 99 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 19/195 (9.7%)
- Deployed-live implementations: 195 of 251 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 19/195
- Verified + Unaudited implementations: 176
- Verified by bytecode match: 0
- Unverified implementations: 56
- Unique implementations: 251
- Raw deployments: 606
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 6 fresh, 3 aging, 3 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 14 match-unverified
- Tier 1 coverage: 3.6% (Certora)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Nethermind | Tier 2 | 13 | 6.7% | 2025-10 |
| Certora | Tier 1 | 7 | 3.6% | 2025-10 |
| Pashov Audit Group | Tier 2 | 5 | 2.6% | 2025-09 |
| Hacken | Tier 2 | 3 | 1.5% | 2023-09 |
| yAudit | Tier 2 | 2 | 1.0% | 2025-01 |
| Zellic | Tier 2 | 1 | 0.5% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BeatPotWithdrawalQueue | operational_periphery | hyperliquid | n/a | 6 deployments: hyperliquid [`0x721066...0fb966`](./contracts/hyperliquid-999/0x721066bc8ef8211e04a43b78ca078bdfa60fb966/); hyperliquid `0x7e89ac...045e10`; hyperliquid `0x9cd033...84f46e`; hyperliquid `0xd1556d...9d9673`; hyperliquid `0xf11207...a976b6`; hyperliquid `0xf97271...c0e798` | ✅ Audited |
| BeHYPE | unknown | hyperliquid | n/a | [`0xd8fc8f...e5dda9`](./contracts/hyperliquid-999/0xd8fc8f0b03eba61f64d08b0bef69d80916e5dda9/) | ✅ Audited |
| BeHYPETimelock | governance | hyperliquid | n/a | [`0xa24af7...4d2de4`](./contracts/hyperliquid-999/0xa24af73eadd17997eeedbed36672e996544d2de4/) | ✅ Audited |
| DataFeed | unknown | hyperliquid | n/a | 7 deployments: hyperliquid [`0x0c59a0...ff4c70`](./contracts/hyperliquid-999/0x0c59a087922f21eb49ffa0fe33e0d17b62ff4c70/); hyperliquid `0x6231f1...990e3a`; hyperliquid `0x871550...ec9b98`; hyperliquid `0x8da4c7...55b21e`; hyperliquid `0xd81448...f996ef`; hyperliquid `0xe3c79b...fb3434`; hyperliquid `0xe66f27...1b55f0` | ✅ Audited |
| DataFeed | unknown | hyperliquid | n/a | 9 deployments: hyperliquid [`0x1cc42c...3d42e7`](./contracts/hyperliquid-999/0x1cc42c97e7c598a1d1b2e71c84a9c0ad9b3d42e7/); hyperliquid `0x289584...d56ea7`; hyperliquid `0x370703...9f5371`; hyperliquid `0x47fdde...b6dd74`; hyperliquid `0x5a5589...68a9e4`; hyperliquid `0xcb01c1...a985c2`; hyperliquid `0xcc10c5...4a3fa7`; hyperliquid `0xd28b1a...fd92c1`; hyperliquid `0xe1c769...0a4a75` | ✅ Audited |
| Depositor | unknown | hyperliquid | n/a | 29 deployments: hyperliquid [`0x0058fa...80b7a8`](./contracts/hyperliquid-999/0x0058fa9192f7829b52316096456e98d83980b7a8/); hyperliquid `0x0868a6...2da176`; hyperliquid `0x0f0d39...45c933`; hyperliquid `0x127c59...e464b9`; hyperliquid `0x205ac1...ae9201`; hyperliquid `0x223c4a...e451e0`; hyperliquid `0x315b70...838883`; hyperliquid `0x4c645e...96d51c`; hyperliquid `0x53dd0a...5967d1`; hyperliquid `0x5bfb09...4f9d60`; hyperliquid `0x60bb82...f9c893`; hyperliquid `0x60bf48...932c70`; hyperliquid `0x6261f3...6ac936`; hyperliquid `0x657c7f...1aaa4f`; hyperliquid `0x6ff429...24be21`; hyperliquid `0x76a48c...0defa8`; hyperliquid `0x8315ff...dbfd76`; hyperliquid `0x8b6bad...609b84`; hyperliquid `0x901beb...d666bf`; hyperliquid `0x929df5...5be4d0`; hyperliquid `0x93a970...ddbb4d`; hyperliquid `0x9eef6e...1dd4ed`; hyperliquid `0xa685ef...b6607c`; hyperliquid `0xafa7a5...12a1c5`; hyperliquid `0xb3060c...e6f2e0`; hyperliquid `0xbd3737...681698`; hyperliquid `0xccbc13...10d2d3`; hyperliquid `0xd40979...ed658b`; hyperliquid `0xd830bf...da71f5` | ✅ Audited |
| DepositReceiver | unknown | hyperliquid | n/a | 29 deployments: hyperliquid [`0x0126c0...715105`](./contracts/hyperliquid-999/0x0126c0bc7b1dca51e1b9c7293f393f57c0715105/); hyperliquid `0x1fc216...2151f8`; hyperliquid `0x21e099...dcdc8a`; hyperliquid `0x226acf...036f77`; hyperliquid `0x248b98...960d78`; hyperliquid `0x3067f8...ef0775`; hyperliquid `0x4f7bad...712a8b`; hyperliquid `0x4fe414...dcf1a9`; hyperliquid `0x5abfb1...c06a05`; hyperliquid `0x6c042e...c6fc6e`; hyperliquid `0x7abf6d...dc1c2a`; hyperliquid `0x8644fa...c738e6`; hyperliquid `0x9182b9...4dbc92`; hyperliquid `0x92dd15...6e03a4`; hyperliquid `0x93586b...53f736`; hyperliquid `0x95e89c...f265d2`; hyperliquid `0xa980d9...8aa59e`; hyperliquid `0xb3d7b9...df48ca`; hyperliquid `0xb3f15e...c70aec`; hyperliquid `0xb4cfbb...aca06b`; hyperliquid `0xbdc3d2...67297d`; hyperliquid `0xc0bd66...187969`; hyperliquid `0xc4dee7...ec3277`; hyperliquid `0xc74c98...fb1626`; hyperliquid `0xc8ca86...9ea14e`; hyperliquid `0xd52e5f...f92fbd`; hyperliquid `0xdcefcd...963884`; hyperliquid `0xe098e4...6280db`; hyperliquid `0xfd1fd8...fec16c` | ✅ Audited |
| DnCoreWriterVault | core_logic | hyperliquid | n/a | [`0x155783...113774`](./contracts/hyperliquid-999/0x1557835b3c6a5d6927f23c055f65482e70113774/) | ✅ Audited |
| ExchangeRateUpdater | unknown | hyperliquid | n/a | 13 deployments: hyperliquid [`0x22a66f...cbd78a`](./contracts/hyperliquid-999/0x22a66ffc6dd778aeaf90cc2e8522593aabcbd78a/); hyperliquid `0x2abeea...da8e38`; hyperliquid `0x4249c4...1a3c87`; hyperliquid `0x74717a...c3a28b`; hyperliquid `0x77ce3e...bc195b`; hyperliquid `0x88cf45...fa3049`; hyperliquid `0x891bab...f9030b`; hyperliquid `0x9fa8d2...7fd388`; hyperliquid `0xd08a65...eaf45a`; hyperliquid `0xdaaede...cb8c90`; hyperliquid `0xe24761...65171d`; hyperliquid `0xf13d61...0a1a1f`; hyperliquid `0xf2bc55...6cae23` | ✅ Audited |
| MidasAccessControl | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x594ff0...038420`](./contracts/hyperliquid-999/0x594ff09d8438f1fde62712d000250dd361038420/); hyperliquid `0x5fd65c...9f7c59`; hyperliquid `0xcc94f6...05e7a8` | ✅ Audited |
| OracleAggregator | operational_periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x5e1381...f52b73`](./contracts/hyperliquid-999/0x5e138194a3bf0ca723b7364d87c30b641bf52b73/); hyperliquid `0xb2ed7f...63c6ee` | ✅ Audited |
| Pricer | operational_periphery | hyperliquid | n/a | 30 deployments: hyperliquid [`0x059d7a...cf6ce6`](./contracts/hyperliquid-999/0x059d7a4d777aa7bd87edbea070c5dc5f88cf6ce6/); hyperliquid `0x0f1824...4b4738`; hyperliquid `0x1de596...77817b`; hyperliquid `0x3636a2...4c6579`; hyperliquid `0x3b55e3...698030`; hyperliquid `0x42db88...5f5322`; hyperliquid `0x5100ae...afed8d`; hyperliquid `0x52f131...0f4407`; hyperliquid `0x56a560...9930ea`; hyperliquid `0x58f613...a92ea6`; hyperliquid `0x5ed0ec...9b884b`; hyperliquid `0x6607f7...c30d57`; hyperliquid `0x725f73...29f756`; hyperliquid `0x7881b0...42c489`; hyperliquid `0x8cf469...2933d7`; hyperliquid `0x9081c2...89743b`; hyperliquid `0x90a0a6...6f8f11`; hyperliquid `0x988e3e...e1a597`; hyperliquid `0xa532a4...d338a8`; hyperliquid `0xaa3fd6...9b101a`; hyperliquid `0xb46eb7...467785`; hyperliquid `0xbeecd5...fec8c0`; hyperliquid `0xc23cdf...ac668b`; hyperliquid `0xc6090a...791db2`; hyperliquid `0xcb4561...c7b078`; hyperliquid `0xd2e5f0...3109dd`; hyperliquid `0xd52d1e...53f844`; hyperliquid `0xe0995a...763316`; hyperliquid `0xf21440...fb8236`; hyperliquid `0xf29f39...73042c` | ✅ Audited |
| RoleRegistry | registry | hyperliquid | n/a | [`0x901024...294f76`](./contracts/hyperliquid-999/0x90102473a816a01a9fb0809f2289438b2e294f76/) | ✅ Audited |
| StakingCore | unknown | hyperliquid | n/a | [`0xcead89...c38e0b`](./contracts/hyperliquid-999/0xcead893b162d38e714d82d06a7fe0b0dc3c38e0b/) | ✅ Audited |
| TokenizedAccount | core_logic | hyperliquid | n/a | [`0x96c6cb...44b1fb`](./contracts/hyperliquid-999/0x96c6cbb6251ee1c257b2162ca0f39aa5fa44b1fb/) | ✅ Audited |
| TokenizedAccount | core_logic | hyperliquid | n/a | [`0xc061d3...674f94`](./contracts/hyperliquid-999/0xc061d38903b99ac12713b550c2cb44b221674f94/) | ✅ Audited |
| VaultToken | core_logic | hyperliquid | n/a | 16 deployments: hyperliquid [`0x0d0f82...a29b5a`](./contracts/hyperliquid-999/0x0d0f8274e7a92cfc0fd2c358ff80440530a29b5a/); hyperliquid `0x130ee3...9bbb09`; hyperliquid `0x265b3c...ae0302`; hyperliquid `0x445515...b5b6f0`; hyperliquid `0x4cc221...1b9bba`; hyperliquid `0x52bc95...3355b8`; hyperliquid `0x842537...ff4b5a`; hyperliquid `0x9ddf96...10d9d2`; hyperliquid `0xa4cf00...5fd6c8`; hyperliquid `0xb78dcc...d435c3`; hyperliquid `0xb7956c...f365bb`; hyperliquid `0xc48448...3327e6`; hyperliquid `0xcd867e...94ada0`; hyperliquid `0xdf1fcd...9a1057`; hyperliquid `0xecde33...b7e744`; hyperliquid `0xfb5943...1aaad7` | ✅ Audited |
| WithdrawalQueue | operational_periphery | hyperliquid | n/a | 29 deployments: hyperliquid [`0x0d30b2...4b9e0e`](./contracts/hyperliquid-999/0x0d30b29042e2d6802689be6ade022a0c4d4b9e0e/); hyperliquid `0x0d7f3d...7aad82`; hyperliquid `0x0dfe20...bcb423`; hyperliquid `0x100242...438be3`; hyperliquid `0x1cc393...8e5869`; hyperliquid `0x1d749e...4fc4bf`; hyperliquid `0x202b34...a2511c`; hyperliquid `0x240e0b...45b1c6`; hyperliquid `0x261a2b...49f906`; hyperliquid `0x368995...2134d6`; hyperliquid `0x43cacc...8f8e8c`; hyperliquid `0x5236b7...6e5bd6`; hyperliquid `0x52784b...ba7c4a`; hyperliquid `0x667859...bec1b7`; hyperliquid `0x66d9be...7449f0`; hyperliquid `0x6b68c4...9c1089`; hyperliquid `0x70bc29...109f39`; hyperliquid `0x73905d...3d3949`; hyperliquid `0x788c7c...43a143`; hyperliquid `0x8b04cd...d09d98`; hyperliquid `0x9d90b2...a0e294`; hyperliquid `0xa03e0e...5a84fe`; hyperliquid `0xb62b28...bf085e`; hyperliquid `0xbc63a6...058dd1`; hyperliquid `0xbe2f89...8f16bc`; hyperliquid `0xc7becb...4b8225`; hyperliquid `0xda768e...157a38`; hyperliquid `0xdac07c...36094c`; hyperliquid `0xe73722...df7507` | ✅ Audited |
| WithdrawManager | operational_periphery | hyperliquid | n/a | [`0x9d0b08...822538`](./contracts/hyperliquid-999/0x9d0b0877b9f2204cf414ca7862e4f03506822538/) | ✅ Audited |

### ⚠️ Verified + Unaudited (176)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdaptiveCurveIrm | unknown | hyperliquid | n/a | [`0xd4a426...9b7483`](./contracts/hyperliquid-999/0xd4a426f010986dcad727e8dd6eed44ca4a9b7483/) | ⚠️ Unaudited |
| BeatPot | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x53f971...4c8425`](./contracts/hyperliquid-999/0x53f9715c91642da22ebdf6eaa45e86d5e94c8425/); hyperliquid `0x710d8a...ccd314` | ⚠️ Unaudited |
| BeatPotV2 | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x2f76ab...95ea89`](./contracts/hyperliquid-999/0x2f76abeb51eae96f5af615696a3b1eca5c95ea89/); hyperliquid `0xae9316...d0d319` | ⚠️ Unaudited |
| BeatUSDSolver | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x3a10f1...e35ea0`](./contracts/hyperliquid-999/0x3a10f1161ac13a13a620836b08ee442c61e35ea0/); hyperliquid `0xaea5b5...b080a3` | ⚠️ Unaudited |
| BeatUSDSolver | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x5121f2...63cae6`](./contracts/hyperliquid-999/0x5121f215d177422d84750262b33a97d33763cae6/); hyperliquid `0xa32870...893ac0` | ⚠️ Unaudited |
| BeatUSDSolver | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xbd7ee2...c1a4a9`](./contracts/hyperliquid-999/0xbd7ee2c6c3d6f1d966e9a1fe73d572090cc1a4a9/); hyperliquid `0xe83aaf...e19614` | ⚠️ Unaudited |
| BeHypeAdapter | adapter | hyperliquid | n/a | 2 deployments: hyperliquid [`0x18bd6f...2492ca`](./contracts/hyperliquid-999/0x18bd6ff6f1d1ab13702a743bbf3742cb512492ca/); hyperliquid `0x8c4bf0...542c01` | ⚠️ Unaudited |
| beHYPEBatchWithdrawalClaim | operational_periphery | hyperliquid | n/a | [`0xa86b7a...bef966`](./contracts/hyperliquid-999/0xa86b7a6942a1861e90baf713ad70308545bef966/) | ⚠️ Unaudited |
| beHYPEDepositAdapter | adapter | hyperliquid | n/a | [`0x696c55...021323`](./contracts/hyperliquid-999/0x696c558377dd0861696f1b80f33a5704a8021323/) | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | [`0x669abe...bc0cc1`](./contracts/ethereum-1/0x669abe85f96a9e3b34723f7be9bc6f250abc0cc1/) | ⚠️ Unaudited |
| CompositeDataFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x610cb8...499df3`](./contracts/hyperliquid-999/0x610cb88e101d9e7e8163ae7788b873d272499df3/); hyperliquid `0xa89fa5...50da86` | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeed | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x16947a...5a8483`](./contracts/hyperliquid-999/0x16947af5238d03910d134d1e5323247b925a8483/); hyperliquid `0x7f1f3e...a4fe09`; hyperliquid `0xe90348...c62637` | ⚠️ Unaudited |
| DnCoreWriter | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x00da21...235c96`](./contracts/hyperliquid-999/0x00da21d92f5f0536ff218b6c236252ed0a235c96/); hyperliquid `0xcdc991...4c5418` | ⚠️ Unaudited |
| DnCoreWriter | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x5f6c8c...282932`](./contracts/hyperliquid-999/0x5f6c8cecadf8ed28522abbcb1285e79a2c282932/); hyperliquid `0x67d8cc...1f7f56` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x06e655...8b5bb1`](./contracts/hyperliquid-999/0x06e65571600ecaab66280c7dd61d28057f8b5bb1/); hyperliquid `0x4d66bd...79a761` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x12ddd5...6c80c2`](./contracts/hyperliquid-999/0x12ddd5fc13380da99d41698ee9c533cdc26c80c2/); hyperliquid `0xf0b283...228c68` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x14f9b9...b4458b`](./contracts/hyperliquid-999/0x14f9b97eb4e1c634d04a3c8e26015ca8d5b4458b/); hyperliquid `0x80e9d0...060cbf` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1a877d...831d0e`](./contracts/hyperliquid-999/0x1a877d8b4857aaf7c346bf5ce3ddfa232e831d0e/); hyperliquid `0x75eac6...9bdc30` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1c43be...7ac99c`](./contracts/hyperliquid-999/0x1c43be6cf1ee27e4de5ed9f653940e42a57ac99c/); hyperliquid `0xf5ad07...8f130d` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x38a0ee...be97df`](./contracts/hyperliquid-999/0x38a0ee3d3e0602a8d6cb86cb033d62bfd1be97df/); hyperliquid `0x46e3b9...07ded5` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4074f9...a393ec`](./contracts/hyperliquid-999/0x4074f9720664dae8f4880d860ab1e36060a393ec/); hyperliquid `0x4604cf...234a20` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x46b72b...78b839`](./contracts/hyperliquid-999/0x46b72b3e2f9d27b4bfe5f2a20483089a2478b839/); hyperliquid `0x9e98a8...c05d90` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7d340d...9a4467`](./contracts/hyperliquid-999/0x7d340d319b29526d9491c0c2b16b2e5e4f9a4467/); hyperliquid `0xeaf97b...968a8f` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x81956f...3feb29`](./contracts/hyperliquid-999/0x81956faa91751046f33bfb2588c97f427b3feb29/); hyperliquid `0xc9f2cd...0394c0` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x86dce6...3ade57`](./contracts/hyperliquid-999/0x86dce613229baff90dae7c0e62df6f752e3ade57/); hyperliquid `0xc13c7c...ebdafc` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x925cdd...b8d359`](./contracts/hyperliquid-999/0x925cddddfdf07b9e06eddde8f64aa08b30b8d359/); hyperliquid `0xf81312...5d5120` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x9284b6...0276b4`](./contracts/hyperliquid-999/0x9284b6206260bb90293655182a3526746f0276b4/); hyperliquid `0xd33125...327892` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xd0f7a7...147b0e`](./contracts/hyperliquid-999/0xd0f7a75ee3450740c639619c681d6e3d3b147b0e/); hyperliquid `0xe69da0...9d7707` | ⚠️ Unaudited |
| dnETH | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x2540bd...d7ad78`](./contracts/hyperliquid-999/0x2540bddc5e854419496192688e8257c5ded7ad78/); hyperliquid `0xc3ce68...0c6c77` | ⚠️ Unaudited |
| DnEthCustomAggregatorFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x72a173...e463a5`](./contracts/hyperliquid-999/0x72a173dcbed0ac69421fef0e44cf763670e463a5/); hyperliquid `0xf213df...017fcc` | ⚠️ Unaudited |
| DnEthDataFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x43daa4...e1b1ad`](./contracts/hyperliquid-999/0x43daa49a0df14fb3d0066c5ec91aabd872e1b1ad/); hyperliquid `0xb1dd94...02e0a9` | ⚠️ Unaudited |
| DnEthDepositVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x6431a3...197382`](./contracts/hyperliquid-999/0x6431a3588e76af88cc6f12926ffcac7209197382/); hyperliquid `0xed760c...007f37` | ⚠️ Unaudited |
| DnEthRedemptionVaultWithSwapper | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1afc88...072874`](./contracts/hyperliquid-999/0x1afc880769833a981c01222066bf4a5572072874/); hyperliquid `0x94a9e6...c1c2f2` | ⚠️ Unaudited |
| dnFART | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4a8ba2...fcda11`](./contracts/hyperliquid-999/0x4a8ba2812246c40fa9e38e19d224e159b1fcda11/); hyperliquid `0xb39c20...6d012a` | ⚠️ Unaudited |
| DnFartCustomAggregatorFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x62e14d...1358c5`](./contracts/hyperliquid-999/0x62e14d2bed7467ede5cbbeb150288453f51358c5/); hyperliquid `0xfd8b96...e100a9` | ⚠️ Unaudited |
| DnFartDataFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1549fe...4edcb3`](./contracts/hyperliquid-999/0x1549fe10c3dd76e0f1a7da054e25d12b1d4edcb3/); hyperliquid `0xf60c25...923dc6` | ⚠️ Unaudited |
| DnFartDepositVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x5af514...dcfbad`](./contracts/hyperliquid-999/0x5af51418eb6b47b6398ad0240d1869cb3bdcfbad/); hyperliquid `0x979a53...1f956d` | ⚠️ Unaudited |
| DnFartRedemptionVaultWithSwapper | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x448e29...c6ebd3`](./contracts/hyperliquid-999/0x448e290f8090fe6bed36cb07340d43440ec6ebd3/); hyperliquid `0xa61db2...d620a6` | ⚠️ Unaudited |
| dnHYPE | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x949a72...3e6f29`](./contracts/hyperliquid-999/0x949a7250bb55eb79bc6bcc97fcd1c473db3e6f29/); hyperliquid `0xe4c53a...9c1891` | ⚠️ Unaudited |
| DNHypeAdapter | adapter | hyperliquid | n/a | 4 deployments: hyperliquid [`0x1ca0ad...4fd41c`](./contracts/hyperliquid-999/0x1ca0ad4f112d2484c2b87d64c6c24a1d984fd41c/); hyperliquid `0x1e73ed...f92b23`; hyperliquid `0x21f547...ecad48`; hyperliquid `0xc6c06b...cdcd2f` | ⚠️ Unaudited |
| DnHypeCustomAggregatorFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xd22f53...7b8c74`](./contracts/hyperliquid-999/0xd22f530414ec90cce84ed2150659dc43c87b8c74/); hyperliquid `0xeb3459...8aa469` | ⚠️ Unaudited |
| DnHypeDataFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4e250d...3a11a5`](./contracts/hyperliquid-999/0x4e250d83c4d5a3c5e78875ae0c2876e2563a11a5/); hyperliquid `0x6242fb...c2bf47` | ⚠️ Unaudited |
| DnHypeDepositVault | core_logic | hyperliquid | n/a | [`0x712eb0...1a3b38`](./contracts/hyperliquid-999/0x712eb0d313e99c8f6f33f2be4d7b6ce0091a3b38/) | ⚠️ Unaudited |
| DnHypeDepositVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xa4a6b8...51ff00`](./contracts/hyperliquid-999/0xa4a6b89354e278666fb908ccdb16276ae151ff00/); hyperliquid `0xb159d4...5477d2` | ⚠️ Unaudited |
| DnHypeRedemptionVaultWithSwapper | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7e5452...db98fd`](./contracts/hyperliquid-999/0x7e54526ccbc0e16c1d02cacd5227c01a1bdb98fd/); hyperliquid `0xbe61c1...616fff` | ⚠️ Unaudited |
| dnPUMP | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x8858a3...09c39b`](./contracts/hyperliquid-999/0x8858a307a85982c2b3cb2ace1720237f2f09c39b/); hyperliquid `0xce3f76...f1ceee` | ⚠️ Unaudited |
| DNPumpAdapter | adapter | hyperliquid | n/a | 3 deployments: hyperliquid [`0x0c83fa...a0d5fc`](./contracts/hyperliquid-999/0x0c83fab6b328137a7c37959c3052ca37a4a0d5fc/); hyperliquid `0x64b587...ec4f90`; hyperliquid `0xbbf26f...56bac6` | ⚠️ Unaudited |
| DnPumpCustomAggregatorFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x707e99...ec77fc`](./contracts/hyperliquid-999/0x707e99655f24747ceceb298b3aaf7fa721ec77fc/); hyperliquid `0x86ea55...48540b` | ⚠️ Unaudited |
| DnPumpDataFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xa26e15...d6b2de`](./contracts/hyperliquid-999/0xa26e1554741487e0c9ebe6f41004a83df7d6b2de/); hyperliquid `0xa7f455...cafb02` | ⚠️ Unaudited |
| DnPumpDepositVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x22cd29...980d96`](./contracts/hyperliquid-999/0x22cd29f97c8031d9c916a954de1f7f26a9980d96/); hyperliquid `0xaf8ffe...dbc66b` | ⚠️ Unaudited |
| DnPumpRedemptionVaultWithSwapper | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x8c3326...e88513`](./contracts/hyperliquid-999/0x8c3326546202a034578fa4940b4fc24aaae88513/); hyperliquid `0x9c915c...cbf0d7` | ⚠️ Unaudited |
| dnTEST | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x65f08f...d94a73`](./contracts/hyperliquid-999/0x65f08f8a8aab1334ad3852b231c812625bd94a73/); hyperliquid `0x80cae1...e7d6b2` | ⚠️ Unaudited |
| DnTestCustomAggregatorFeedGrowth | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0c459a...d4bd08`](./contracts/hyperliquid-999/0x0c459a098eb325fd7ea602cd7664ee43f1d4bd08/); hyperliquid `0xc4d238...9d867d` | ⚠️ Unaudited |
| DnTestDataFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1baf98...e5393d`](./contracts/hyperliquid-999/0x1baf98537e0c9cc2706d9ac13550df71ebe5393d/); hyperliquid `0xa7a8f3...0b4d0a` | ⚠️ Unaudited |
| DnTestDepositVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xd08f3e...fdd394`](./contracts/hyperliquid-999/0xd08f3e1fc2132d9b5a0d1b5115800b0e91fdd394/); hyperliquid `0xed51fe...8e8b19` | ⚠️ Unaudited |
| DnTestRedemptionVaultWithSwapper | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x35d44b...b84941`](./contracts/hyperliquid-999/0x35d44b87d6c786e9434da337eb59d373e8b84941/); hyperliquid `0xd5a395...5e0a68` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x05d702...f10723`](./contracts/hyperliquid-999/0x05d70282df356bbd873f6698b590426d37f10723/); hyperliquid `0x97894a...0fe5c4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x079b37...3d0afc`](./contracts/hyperliquid-999/0x079b37f64457f8332f632677db569515c43d0afc/); hyperliquid `0x94d9f7...74e3b7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0b87b0...5370a9`](./contracts/hyperliquid-999/0x0b87b0f533bbd37a8283bde2658d4549cd5370a9/); hyperliquid `0xf9bd6f...f64d33` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x2cad81...94bffa`](./contracts/hyperliquid-999/0x2cad81572335b024e47b2516c7d4049a4e94bffa/); hyperliquid `0xa075bc...ed21d9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x350bb1...7f7366`](./contracts/hyperliquid-999/0x350bb1c04d8035ecabf58f92f4190b8aab7f7366/); hyperliquid `0xf13f68...c538d2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4090f3...24acd7`](./contracts/hyperliquid-999/0x4090f3dbd84416a61782958732c92395b924acd7/); hyperliquid `0x852d95...5eb315` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x42ec6c...2a9d46`](./contracts/hyperliquid-999/0x42ec6c4bf166a91598ed91782876bf067d2a9d46/); hyperliquid `0x5b7cd0...03d789` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4e96a9...f0110b`](./contracts/hyperliquid-999/0x4e96a97845f6b95d3734be783d3811377cf0110b/); hyperliquid `0x724211...49369f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x5bd2bf...50a57c`](./contracts/hyperliquid-999/0x5bd2bfdf418ab795928514a50c0ff032ee50a57c/); hyperliquid `0x6bc6b8...841fe8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x60d49b...0f3a5e`](./contracts/hyperliquid-999/0x60d49b1a4b4997e24a8728f7f54c4fd6700f3a5e/); hyperliquid `0xd032d5...a7ca5e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x613cab...073ec2`](./contracts/hyperliquid-999/0x613cabc2c920e60683374564b642690737073ec2/); hyperliquid `0xecff2f...0f9cf2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x976270...9c64a4`](./contracts/hyperliquid-999/0x976270cb52f1e75f999776a4670b1991a59c64a4/); hyperliquid `0xb356b4...5e6239` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xa487ab...6297f1`](./contracts/hyperliquid-999/0xa487ab98304680ab7de1c87b95a9e4a4a96297f1/); hyperliquid `0xdb6a5a...3267fe` | ⚠️ Unaudited |
| hbUSDC | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x057ced...6e8a61`](./contracts/hyperliquid-999/0x057ced81348d57aad579a672d521d7b4396e8a61/); hyperliquid `0x76a201...c54871` | ⚠️ Unaudited |
| HBUsdcCustomAggregatorFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x64425d...c45d48`](./contracts/hyperliquid-999/0x64425d48183122e5c072178924cbcf5233c45d48/); hyperliquid `0xc82cad...b87462` | ⚠️ Unaudited |
| HBUsdcDataFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xb013a5...cc7a23`](./contracts/hyperliquid-999/0xb013a5956f8b838b7e668dfbdf1efa978ccc7a23/); hyperliquid `0xf8f519...d4241d` | ⚠️ Unaudited |
| HBUsdcDepositVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x02eb9f...6bebc3`](./contracts/hyperliquid-999/0x02eb9f2c66bb82239ea5fa44fbd43afa1e6bebc3/); hyperliquid `0xd202cf...8ebd1c` | ⚠️ Unaudited |
| HBUsdcDepositVault | core_logic | hyperliquid | n/a | [`0x73068e...3c82d7`](./contracts/hyperliquid-999/0x73068e63387d4a0ce5e39012ca957a130b3c82d7/) | ⚠️ Unaudited |
| HBUsdcRedemptionVaultWithSwapper | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x3bf417...75a28c`](./contracts/hyperliquid-999/0x3bf41767bc03cfd7850f0ba92d104c7ebc75a28c/); hyperliquid `0xbb820d...4c7a60` | ⚠️ Unaudited |
| hbUSDT | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x5e1052...2e61eb`](./contracts/hyperliquid-999/0x5e105266db42f78fa814322bce7f388b4c2e61eb/); hyperliquid `0x77b133...78e690` | ⚠️ Unaudited |
| HBUsdtCustomAggregatorFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xac3d81...79536a`](./contracts/hyperliquid-999/0xac3d811f5ff30aa3ab4b26760d0560faf379536a/); hyperliquid `0xfcf942...80257a` | ⚠️ Unaudited |
| HBUsdtDataFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x281207...eb2083`](./contracts/hyperliquid-999/0x2812076947e07ff85734afea2c438ba6dceb2083/); hyperliquid `0xec7fa7...e88e7d` | ⚠️ Unaudited |
| HBUsdtDepositVault | core_logic | hyperliquid | n/a | [`0x06a76e...2eb60d`](./contracts/hyperliquid-999/0x06a76e722ef59fe830db23feea1c475bfe2eb60d/) | ⚠️ Unaudited |
| HBUsdtDepositVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xbdae44...d3035c`](./contracts/hyperliquid-999/0xbdae44f48efccbd2b28e36a385b8c50b36d3035c/); hyperliquid `0xbe8a4f...8e6f19` | ⚠️ Unaudited |
| HBUsdtRedemptionVaultWithSwapper | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x371d04...e2bc1f`](./contracts/hyperliquid-999/0x371d046579d41dd5e0411d1db7e099d7f4e2bc1f/); hyperliquid `0xc00c5e...501662` | ⚠️ Unaudited |
| HBUsdtRedemptionVaultWithSwapper | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x873add...b13d59`](./contracts/hyperliquid-999/0x873addf809701d5f31946f47ef2a62a621b13d59/); hyperliquid `0xc898a5...fdf042` | ⚠️ Unaudited |
| hbXAUt | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x6eb672...dc05f8`](./contracts/hyperliquid-999/0x6eb6724d8d3d4ff9e24d872e8c38403169dc05f8/); hyperliquid `0x8211c4...ac1523` | ⚠️ Unaudited |
| HBXautCustomAggregatorFeed | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x8285a6...dd1f8b`](./contracts/hyperliquid-999/0x8285a68a3a181fb974af5a3437cdf843a7dd1f8b/); hyperliquid `0xf3db9f...20921d`; hyperliquid `0xf58960...8d858d` | ⚠️ Unaudited |
| HBXautDataFeed | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x5b3003...1c7279`](./contracts/hyperliquid-999/0x5b300312223c63846ebf45b94648b8cc911c7279/); hyperliquid `0xccc8b1...88bb8f`; hyperliquid `0xdb9817...6c3845` | ⚠️ Unaudited |
| HBXautDepositVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x2be064...2932e0`](./contracts/hyperliquid-999/0x2be06458b04a6a18bae3b8e98299bc83892932e0/); hyperliquid `0x79a93a...fceccb` | ⚠️ Unaudited |
| HBXautDepositVault | core_logic | hyperliquid | n/a | [`0x448897...1de8a6`](./contracts/hyperliquid-999/0x448897fec88d145e22ca8594f1a928c72e1de8a6/) | ⚠️ Unaudited |
| HBXautDepositVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x48fb10...da1c4e`](./contracts/hyperliquid-999/0x48fb106ef0c0c1a19eddc9c5d27a945e66da1c4e/); hyperliquid `0xef2aa0...dc354b` | ⚠️ Unaudited |
| HBXautRedemptionVaultWithSwapper | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x675814...4e625f`](./contracts/hyperliquid-999/0x67581417d7afe1e02d1da4abfd4fa6a2774e625f/); hyperliquid `0xd26bb9...ac50e7` | ⚠️ Unaudited |
| HBXautRedemptionVaultWithSwapper | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7ce2d1...445687`](./contracts/hyperliquid-999/0x7ce2d1f48dc1d9932c0543c5f7e8854f79445687/); hyperliquid `0x9feb6a...98960a` | ⚠️ Unaudited |
| HypeWrapHelper | periphery | hyperliquid | n/a | [`0xd201a8...f48f3f`](./contracts/hyperliquid-999/0xd201a8a958292db8efe6930a0bce0d188ff48f3f/) | ⚠️ Unaudited |
| kitBTC | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0bd8cf...c0e82c`](./contracts/hyperliquid-999/0x0bd8cf0f6926d551b8e7eacbb00e5ca5f6c0e82c/); hyperliquid `0x618969...8d3683` | ⚠️ Unaudited |
| KitBtcCustomAggregatorFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x6707d9...a60294`](./contracts/hyperliquid-999/0x6707d9630531debca91a353838f6e30bf1a60294/); hyperliquid `0xd2f570...8f76c7` | ⚠️ Unaudited |
| KitBtcDataFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xc4aec7...65c432`](./contracts/hyperliquid-999/0xc4aec7d3d0894b0a693a1f3601cc96bf4765c432/); hyperliquid `0xd57935...fd8ae8` | ⚠️ Unaudited |
| KitBtcDepositVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x12d55a...a26691`](./contracts/hyperliquid-999/0x12d55a84081ba2be659045b0381ef1d9b8a26691/); hyperliquid `0x210376...3d370e` | ⚠️ Unaudited |
| KitBtcRedemptionVaultWithSwapper | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1605f7...1803b0`](./contracts/hyperliquid-999/0x1605f7c0ff432ea4cf2b36a2e35076187a1803b0/); hyperliquid `0xbd1b1e...f06c81` | ⚠️ Unaudited |
| kitHYPE | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x47cfc1...37745d`](./contracts/hyperliquid-999/0x47cfc17962f302afbdd190bff22529ced437745d/); hyperliquid `0xaf801b...a5e248` | ⚠️ Unaudited |
| KitHypeCustomAggregatorFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x43e279...39c6a8`](./contracts/hyperliquid-999/0x43e27934819eb31d726d8a5c92c535e13239c6a8/); hyperliquid `0x9f4896...34752a` | ⚠️ Unaudited |
| KitHypeDataFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x8d28be...894513`](./contracts/hyperliquid-999/0x8d28bef01696e8bc533f219be482348cf9894513/); hyperliquid `0xb64eb4...802448` | ⚠️ Unaudited |
| KitHypeDepositVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x2ae9f6...b8ad9b`](./contracts/hyperliquid-999/0x2ae9f6e88cf1ab230e3d144bdd62186e49b8ad9b/); hyperliquid `0x89ab3b...a098a0` | ⚠️ Unaudited |
| KitHypeRedemptionVaultWithSwapper | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1cdd9b...8f271e`](./contracts/hyperliquid-999/0x1cdd9b3163c7549a89f436d1eb5c3476238f271e/); hyperliquid `0x73c4f5...33252b` | ⚠️ Unaudited |
| kitUSD | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x797d81...e54edb`](./contracts/hyperliquid-999/0x797d81727f9477f84f29d6131690e99cc3e54edb/); hyperliquid `0xd385ba...39ba4d` | ⚠️ Unaudited |
| KitUsdCustomAggregatorFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xbcfab3...35d7ac`](./contracts/hyperliquid-999/0xbcfab33b32f1aea737ed9cffea809bd42d35d7ac/); hyperliquid `0xebfc1f...b680ff` | ⚠️ Unaudited |
| KitUsdDataFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x2da71a...aeb7e2`](./contracts/hyperliquid-999/0x2da71ae5f0dd37ec57027de94c87065c87aeb7e2/); hyperliquid `0x46f5e7...ac70fe` | ⚠️ Unaudited |
| KitUsdDepositVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x6bd660...a749c1`](./contracts/hyperliquid-999/0x6bd6604df78c9b219980b85badae39b080a749c1/); hyperliquid `0xfaa662...82c20e` | ⚠️ Unaudited |
| KitUsdRedemptionVaultWithSwapper | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x86b748...7c6c38`](./contracts/hyperliquid-999/0x86b748a154e10cfc0acce16c7b5a30e3a67c6c38/); hyperliquid `0xd197a6...e4e5f8` | ⚠️ Unaudited |
| liquidHYPE | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x441794...489d29`](./contracts/hyperliquid-999/0x441794d6a8f9a3739f5d4e98a728937b33489d29/); hyperliquid `0x6d6849...71f585` | ⚠️ Unaudited |
| LiquidHypeCustomAggregatorFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1ceab7...9aca0f`](./contracts/hyperliquid-999/0x1ceab703956e24b18a0af6b272e0bf3f499aca0f/); hyperliquid `0x20a9bb...29bff8` | ⚠️ Unaudited |
| LiquidHypeDataFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x156286...fdb01e`](./contracts/hyperliquid-999/0x156286ed5ce3ac31f20ef501ad6a3de915fdb01e/); hyperliquid `0x705197...c907bd` | ⚠️ Unaudited |
| LiquidHypeDepositVault | core_logic | hyperliquid | n/a | [`0x0de56f...c0f2f2`](./contracts/hyperliquid-999/0x0de56f6dd79d85fd71efaf12d1a1d39ee2c0f2f2/) | ⚠️ Unaudited |
| LiquidHypeDepositVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x67efa4...87e37d`](./contracts/hyperliquid-999/0x67efa4990a0ba7a10cb8ea94ed8c32bb1787e37d/); hyperliquid `0xf53867...f6d8dc` | ⚠️ Unaudited |
| LiquidHypeRedemptionVaultWithSwapper | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x558806...87aa32`](./contracts/hyperliquid-999/0x558806a80b42cab4ed75c74bfb178edc9087aa32/); hyperliquid `0x679b43...0c806c` | ⚠️ Unaudited |
| LiquidHypeRedemptionVaultWithSwapper | adapter | hyperliquid | n/a | 2 deployments: hyperliquid [`0x6b1331...e2e137`](./contracts/hyperliquid-999/0x6b1331d4e885ae3143ee23726573acadabe2e137/); hyperliquid `0xa69ca6...825cd2` | ⚠️ Unaudited |
| lstHYPE | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7b5bd5...709d03`](./contracts/hyperliquid-999/0x7b5bd5a38677a5355a54adc9b3113c3023709d03/); hyperliquid `0x81e064...752a76` | ⚠️ Unaudited |
| LstHypeCustomAggregatorFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x2b959a...f31560`](./contracts/hyperliquid-999/0x2b959a9deb8e62faaea1b226f3bbcbcc0af31560/); hyperliquid `0x767807...66e013` | ⚠️ Unaudited |
| LstHypeDataFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7d876e...d59a27`](./contracts/hyperliquid-999/0x7d876e544f12bd3347b9e904f0fb2d83bed59a27/); hyperliquid `0xfcf86f...0b29ba` | ⚠️ Unaudited |
| LstHypeDepositVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x2b158d...c97737`](./contracts/hyperliquid-999/0x2b158d44eebb03a025f75b79f1d8b3004ac97737/); hyperliquid `0x60597a...0d865e` | ⚠️ Unaudited |
| LstHypeDepositVault | core_logic | hyperliquid | n/a | [`0x58d5c2...8dbd3b`](./contracts/hyperliquid-999/0x58d5c2068a61b8ad234f7280f0f94533418dbd3b/) | ⚠️ Unaudited |
| LstHypeRedemptionVaultWithSwapper | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1eff01...da5440`](./contracts/hyperliquid-999/0x1eff01e0784ae8d06a17af29a2300d2a9cda5440/); hyperliquid `0x3678ec...460b8d` | ⚠️ Unaudited |
| LstHypeRedemptionVaultWithSwapper | adapter | hyperliquid | n/a | [`0x75b6f0...bcfc16`](./contracts/hyperliquid-999/0x75b6f098a6fd7d50e21e903c7f246f04d2bcfc16/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x08c00f...ceadf3`](./contracts/hyperliquid-999/0x08c00f8279dff5b0cb5a04d349e7d79708ceadf3/); hyperliquid `0x264a06...856578`; hyperliquid `0x4851d4...dffd34` | ⚠️ Unaudited |
| MetaMorphoV1_1Factory | registry | ethereum | n/a | [`0x1897a8...535c24`](./contracts/ethereum-1/0x1897a8997241c1cd4bd0698647e4eb7213535c24/) | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | adapter | hyperliquid | n/a | 4 deployments: hyperliquid [`0x0aeeea...5a5e37`](./contracts/hyperliquid-999/0x0aeeea81c9da681b14ba492b775966b9185a5e37/); hyperliquid `0x5d6ffd...db3e10`; hyperliquid `0xd7d4b6...a31921`; hyperliquid `0xed6221...f11654` | ⚠️ Unaudited |
| MidasLzVaultComposerSync | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x159417...5e52a5`](./contracts/hyperliquid-999/0x15941745fce7acd9943821ff0ae39847495e52a5/); hyperliquid `0x4becf8...b0a7a7` | ⚠️ Unaudited |
| MidasTimelockController | governance | hyperliquid | n/a | [`0x76613b...c37d5f`](./contracts/hyperliquid-999/0x76613bddb3d89393b4bd70d6894b1c85f6c37d5f/) | ⚠️ Unaudited |
| MidasVaultComposerSync | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0b6e5d...2744cd`](./contracts/hyperliquid-999/0x0b6e5dd5bede87af12b37b8c1e49129afd2744cd/); hyperliquid `0x718c52...312457` | ⚠️ Unaudited |
| MockERC20 | token | hyperliquid | n/a | [`0x4f5fa9...4ab61f`](./contracts/hyperliquid-999/0x4f5fa9d9820a6ca224aebe1b1c39b3af904ab61f/) | ⚠️ Unaudited |
| Morpho | unknown | hyperliquid | n/a | [`0x68e37d...0c57cd`](./contracts/hyperliquid-999/0x68e37de8d93d3496ae143f2e900490f6280c57cd/) | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | operational_periphery | hyperliquid | n/a | [`0xeb476f...6f9af5`](./contracts/hyperliquid-999/0xeb476f124fad625178759d13557a72394a6f9af5/) | ⚠️ Unaudited |
| MorphoTokenEthereum | unknown | ethereum | n/a | [`0x58d97b...69c2b2`](./contracts/ethereum-1/0x58d97b57bb95320f9a05dc918aef65434969c2b2/) | ⚠️ Unaudited |
| MultiRolesAuthority | governance | hyperliquid | n/a | 40 deployments: hyperliquid [`0x060690...342312`](./contracts/hyperliquid-999/0x060690ec182a5a61f5cdfa0aefae058e04342312/); hyperliquid `0x164b7e...dccab0`; hyperliquid `0x16cc58...52bff9`; hyperliquid `0x1c9b0b...7d16b1`; hyperliquid `0x20790f...a0d156`; hyperliquid `0x2193fa...a903c9`; hyperliquid `0x22630f...f8630e`; hyperliquid `0x2cb0ec...c0fcdf`; hyperliquid `0x2e685e...9e9e09`; hyperliquid `0x304505...d56b10`; hyperliquid `0x342fb4...8c6fc1`; hyperliquid `0x36fad7...b28a5f`; hyperliquid `0x40f5b5...6cfc45`; hyperliquid `0x421d2d...f87c60`; hyperliquid `0x49943e...0d096c`; hyperliquid `0x4fe4ba...2ed10e`; hyperliquid `0x549baf...0713d9`; hyperliquid `0x54fff0...c35734`; hyperliquid `0x5a4015...1dadf1`; hyperliquid `0x614775...773160`; hyperliquid `0x621810...c0d6ba`; hyperliquid `0x6278d7...05099a`; hyperliquid `0x763ab4...bfa215`; hyperliquid `0x786108...42d523`; hyperliquid `0x79285f...7ae5b6`; hyperliquid `0x7b12a8...ff9fa2`; hyperliquid `0x829995...27c4eb`; hyperliquid `0x85717d...f8bad0`; hyperliquid `0x9cd4c8...665411`; hyperliquid `0xa105c5...9fef5e`; hyperliquid `0xa2321f...558280`; hyperliquid `0xa43bfa...b83597`; hyperliquid `0xa9d525...ba3275`; hyperliquid `0xb68a5b...3301b9`; hyperliquid `0xb7fc0b...5cb46f`; hyperliquid `0xd9b07f...b91a2a`; hyperliquid `0xe062f4...a265dc`; hyperliquid `0xf05dd2...fe00d2`; hyperliquid `0xf420df...7a9b47`; hyperliquid `0xf81795...c251cf` | ⚠️ Unaudited |
| obeatUSD | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4295e5...085391`](./contracts/hyperliquid-999/0x4295e58a4a784f1cc05d505e868d531061085391/); hyperliquid `0x94bf32...3ec9e6` | ⚠️ Unaudited |
| ObeatUsdCustomAggregatorFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x3c1682...b391ca`](./contracts/hyperliquid-999/0x3c16823833cdda2dde93dae77299223572b391ca/); hyperliquid `0x8407e1...c515c3` | ⚠️ Unaudited |
| ObeatUsdDataFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x3cdf50...81f28e`](./contracts/hyperliquid-999/0x3cdf50753d78a5fb386105f7799110783f81f28e/); hyperliquid `0x44219e...4062a3` | ⚠️ Unaudited |
| ObeatUsdDepositVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x302345...360e5f`](./contracts/hyperliquid-999/0x302345e06fc76b04ede5c2a5b5b626910d360e5f/); hyperliquid `0x65d0a1...c37458` | ⚠️ Unaudited |
| ObeatUsdLzElevatedMinterBurner | unknown | hyperliquid | n/a | [`0xe1cf4c...602f4b`](./contracts/hyperliquid-999/0xe1cf4c1b6aa1a8f133c14aef05d772c1b7602f4b/) | ⚠️ Unaudited |
| ObeatUsdRedemptionVaultWithSwapper | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x36094a...edc953`](./contracts/hyperliquid-999/0x36094abe5e589691b8f60505823a72f5fdedc953/); hyperliquid `0xf318c1...e89b77` | ⚠️ Unaudited |
| PendleBeHYPESY | unknown | hyperliquid | n/a | [`0x0cd51d...13a8be`](./contracts/hyperliquid-999/0x0cd51d93355f80e4185fb181b0ed5358e213a8be/) | ⚠️ Unaudited |
| PendleBeHYPESY | unknown | hyperliquid | n/a | [`0x2b91c4...42237c`](./contracts/hyperliquid-999/0x2b91c4e657571ab8f9ad379a4e333a4daf42237c/) | ⚠️ Unaudited |
| PendleBeHYPESY | unknown | hyperliquid | n/a | [`0xd887cd...a22528`](./contracts/hyperliquid-999/0xd887cd43e3f79d9d794858ba1df6742b64a22528/) | ⚠️ Unaudited |
| PendleHyperbeatMidasNoRedeemSY | unknown | hyperliquid | n/a | [`0xc027af...29c8e5`](./contracts/hyperliquid-999/0xc027af66fb6167cc8b7c88fe52142b8d5e29c8e5/) | ⚠️ Unaudited |
| PendleHyperbeatVaultSY | core_logic | hyperliquid | n/a | [`0x618b2c...631c0d`](./contracts/hyperliquid-999/0x618b2c320af0df4aed484e59c876b7841f631c0d/) | ⚠️ Unaudited |
| PendleHyperbeatVaultSY | core_logic | hyperliquid | n/a | [`0x9f0554...9ea3f3`](./contracts/hyperliquid-999/0x9f05549998d55595fc2d457367ea3ecec29ea3f3/) | ⚠️ Unaudited |
| PreLiquidationFactory | registry | ethereum | n/a | [`0x6ff336...f83476`](./contracts/ethereum-1/0x6ff33615e792e35ed1026ea7caccf42d9bf83476/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x857ff8...67acc0`](./contracts/ethereum-1/0x857ff845f9b11c19553b1d090b41c2255c67acc0/) | ⚠️ Unaudited |
| PublicAllocator | operational_periphery | ethereum | n/a | [`0xfd32fa...91c75d`](./contracts/ethereum-1/0xfd32fa2ca22c76dd6e550706ad913fc6ce91c75d/) | ⚠️ Unaudited |
| RelendUSDCOFT | unknown | hyperliquid | n/a | [`0x9ab96a...aa7b8d`](./contracts/hyperliquid-999/0x9ab96a4668456896d45c301bc3a15cee76aa7b8d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x02f6ca...302053`](./contracts/hyperliquid-999/0x02f6ca613773e04c115ff8625f44fd26a6302053/); hyperliquid `0x94a44e...88c43a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x07b528...535de9`](./contracts/hyperliquid-999/0x07b5287efc7f7390b141ba99f7e70b1b48535de9/); hyperliquid `0x2b3821...79c49a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x13d730...ef0c0f`](./contracts/hyperliquid-999/0x13d7308049ee35a7142a6c70e400933d94ef0c0f/); hyperliquid `0x945a22...654256` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x15ab8d...b2adba`](./contracts/hyperliquid-999/0x15ab8db6576d66e6ef68881256a2d6aa4bb2adba/); hyperliquid `0x7ceda4...d09697` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1d31d0...28fd13`](./contracts/hyperliquid-999/0x1d31d0513d457d59f8bfabe9f3425c9e4d28fd13/); hyperliquid `0x81e00e...645f87` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x2334a2...beeaf1`](./contracts/hyperliquid-999/0x2334a23c94c0992508d9272d5d398046ccbeeaf1/); hyperliquid `0x6de41c...4cc359` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x2ac694...bbbe91`](./contracts/hyperliquid-999/0x2ac6943c628fd49af6119ed5a9a8bb6211bbbe91/); hyperliquid `0xdc8d8d...a8b8c4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x2d5a18...0b29bc`](./contracts/hyperliquid-999/0x2d5a1823aeaa70319d03bc16f1ac71547a0b29bc/); hyperliquid `0xa9ffe6...91d31f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x466cbb...3c13b0`](./contracts/hyperliquid-999/0x466cbb98237874a71e3da5de742d5b87f03c13b0/); hyperliquid `0x816c3f...cc4552` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x5101e8...8085f6`](./contracts/hyperliquid-999/0x5101e880380317a6cf4e6ed690c6365bd68085f6/); hyperliquid `0xa1a3da...3f2cd2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x6233e7...8ed26c`](./contracts/hyperliquid-999/0x6233e7f87a56d40bf52e0c60bc312861028ed26c/); hyperliquid `0x908125...e6e37e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x63da1d...1c3ad8`](./contracts/hyperliquid-999/0x63da1d38b8d049686850248e7118f770a61c3ad8/); hyperliquid `0xa21f46...f2ff45` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x869224...366dc4`](./contracts/hyperliquid-999/0x8692247bdce19fe56fca8848c1c9aff268366dc4/); hyperliquid `0xde6602...f91a2c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x885719...ad9234`](./contracts/hyperliquid-999/0x8857199550e0b74ada77b95d414e2b74b0ad9234/); hyperliquid `0xcb3c66...1a65e2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x88940a...b6045d`](./contracts/hyperliquid-999/0x88940a15062166a050eceb60ec84488401b6045d/); hyperliquid `0xb16290...31f6ef` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xa97af0...9a457b`](./contracts/hyperliquid-999/0xa97af0bd934f728f74f48776d235113ca89a457b/); hyperliquid `0xd491b3...bdbcf5` | ⚠️ Unaudited |
| USDGWithdrawalHypeSponsor | operational_periphery | hyperliquid | n/a | [`0x67de62...248124`](./contracts/hyperliquid-999/0x67de622bc5ba753142f2599b66edb88b40248124/) | ⚠️ Unaudited |
| VaultFactoryLite | registry | hyperliquid | n/a | 3 deployments: hyperliquid [`0x1fc8c8...7b553f`](./contracts/hyperliquid-999/0x1fc8c8173ba807423f9a20d21b4d798a827b553f/); hyperliquid `0x4f2ba9...a1f038`; hyperliquid `0xe5aba3...a948d9` | ⚠️ Unaudited |
| VaultsSolverMidas | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x5e7eaa...303f05`](./contracts/hyperliquid-999/0x5e7eaadb625d0f2b4d7761621d70875baf303f05/); hyperliquid `0x60d6d5...97eb25` | ⚠️ Unaudited |
| wNLP | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x27bfb8...33a2a8`](./contracts/hyperliquid-999/0x27bfb8d29af693865e3926e752b2f56c7a33a2a8/); hyperliquid `0xece723...c8c98e` | ⚠️ Unaudited |
| WNlpCustomAggregatorFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7b593f...389553`](./contracts/hyperliquid-999/0x7b593fc72637c454749e4118259eaa14a4389553/); hyperliquid `0x96d609...c6e175` | ⚠️ Unaudited |
| WNlpDataFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x9109a7...ff6cf9`](./contracts/hyperliquid-999/0x9109a754707987db09c6fbd5069b3e1bf0ff6cf9/); hyperliquid `0xb697f1...a46c56` | ⚠️ Unaudited |
| WNlpDepositVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x13dea8...37e1b2`](./contracts/hyperliquid-999/0x13dea856eda9ae6d29317ef5644297639837e1b2/); hyperliquid `0xb379c3...e4a0e5` | ⚠️ Unaudited |
| WNlpRedemptionVaultWithSwapper | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x814e39...77eef2`](./contracts/hyperliquid-999/0x814e39febd0265d39e37ba469d0b40bd9c77eef2/); hyperliquid `0xce66b1...965b76` | ⚠️ Unaudited |
| wVLP | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x042e82...77ba34`](./contracts/hyperliquid-999/0x042e8217be08dac98aaaee834d47ea3a7f77ba34/); hyperliquid `0xd66d69...c4fd42` | ⚠️ Unaudited |
| WVLPDataFeed | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x765fa3...db26a6`](./contracts/hyperliquid-999/0x765fa39c3759408c383c18bb50f70efdcedb26a6/); hyperliquid `0xe2ba9a...808b67` | ⚠️ Unaudited |
| WVLPDepositVault | core_logic | hyperliquid | n/a | [`0x542d52...2bc828`](./contracts/hyperliquid-999/0x542d52f6a20ab42ed22b2e70c00dd700a42bc828/) | ⚠️ Unaudited |
| WVLPDepositVault | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x70dbda...cb725b`](./contracts/hyperliquid-999/0x70dbdaef7de8b2da94ff4342fa202b8717cb725b/); hyperliquid `0xc800f6...1b8a78` | ⚠️ Unaudited |
| WVLPRedemptionVaultWithSwapper | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x462b95...58aa06`](./contracts/hyperliquid-999/0x462b95575cb2d56de9d1aaaaab452279b058aa06/); hyperliquid `0xb0602a...aba9d2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (56)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x31daca...75a1bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5343d1...e279ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x561206...591555` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6b26e...ed21a2` | ❓ Unverified |
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
| UnnamedContract | unknown | hyperliquid | n/a | `0xe6b9f2...2c6ce4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xea67e7...39bbab` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xefd734...8a16d2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf2530f...212da4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf8db00...dff888` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audits (GitHub directory)](https://github.com/0xhyperbeat/Audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [docs.morpho.org/get-started/resources/audits](https://docs.morpho.org/get-started/resources/audits) | Morpho | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [Zellic.pdf](https://github.com/0xhyperbeat/Audits/blob/main/BeatPot/Zellic.pdf) | Zellic | Audit | 2025-01 | aging | Direct | contract_name | 1 | n/a |
| [Codespect.pdf](https://github.com/0xhyperbeat/Audits/blob/main/USD%2B/Codespect.pdf) | Codespect | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [Certora.pdf](https://github.com/0xhyperbeat/Audits/blob/main/Vault-Infra/Certora.pdf) | Certora | Audit | 2025-10 | fresh | Direct | contract_name | 7 | n/a |
| [Nethermind.pdf](https://github.com/0xhyperbeat/Audits/blob/main/Vault-Infra/Nethermind.pdf) | Nethermind | Audit | 2025-10 | fresh | Direct | contract_name | 13 | n/a |
| [Certora.pdf](https://github.com/0xhyperbeat/Audits/blob/main/beHYPE/Certora.pdf) | Pashov Audit Group | Audit | 2025-09 | fresh | Direct | contract_name | 5 | n/a |
| [Pashov.pdf](https://github.com/0xhyperbeat/Audits/blob/main/beHYPE/Pashov.pdf) | Pashov Audit Group | Audit | 2025-09 | fresh | Direct | contract_name | 5 | n/a |
| [spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf](https://2798104377-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FLaS0wfc7geC7DaOTDEn7%2Fuploads%2FsHxOMBpM7X3DSqcRNG82%2F24.08.09%20-%20SigmaPrime%20-%20Audit%20Report.pdf) | Sigma Prime | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf](https://2798104377-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FLaS0wfc7geC7DaOTDEn7%2Fuploads%2Fgf7igXLiz7gpv0FctQW8%2F25.01.21%20-%20ChainSecurity%20Audit.pdf) | yAudit | Audit | 2025-01 | aging | Direct | contract_name | 2 | high |
| [22.03.18 - Fractal Final Report.pdf](https://content.gitbook.com/content/LaS0wfc7geC7DaOTDEn7/blobs/3UeT78zGv53RD0ugoPeg/22.03.18%20-%20Fractal%20Final%20Report.pdf) | ChainSecurity | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf](https://2732961456-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsPjk0ggBxEJCCnVFFkDR%2Fuploads%2F1wxK6TgqaRsSgt3ixVMx%2FMidas_SC%20Audit%20Report_25092023_%5BSA-1833%5D%20-%20POST%20REMEDIATION.pdf) | Hacken | Audit | 2023-09 | stale | Direct | contract_name | 19 | high |
| [spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf](https://2732961456-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsPjk0ggBxEJCCnVFFkDR%2Fuploads%2F38N1bo36K8FLriRrPDXb%2FHacken_Midas_%5BSCA%5D%20Midas_Vault_Dec2023_P-2023-076_1_20240118%2016_22.pdf) | Hacken | Audit | 2023-01 | stale | Direct | contract_name | 19 | high |
| [audits.sherlock.xyz/contests/332](https://audits.sherlock.xyz/contests/332) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 251 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: contract_name=31, extraction_exact=40

Zero-match audit list:

- [3867] Audits (GitHub directory)
- [3868] docs.morpho.org/get-started/resources/audits
- [3870] Codespect.pdf
- [3880] spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf
- [3882] 22.03.18 - Fractal Final Report.pdf
- [3885] audits.sherlock.xyz/contests/332

Fork inheritance lineage and inherited audits are included when available.
