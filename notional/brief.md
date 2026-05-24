# Agentic Audit Brief: Notional

⚠️ Lifecycle status: DEAD - TVL dropped 13.8% over 90 days

## Project Overview

- Project: Notional (`notional`)
- Website: [https://notional.finance](https://notional.finance)
- Lifecycle: dead (Tier 0, 99.6% below peak)
- Generated: 2026-05-24T04:09:46.240Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, ethereum
- Contract surface: 79 unique implementations (351 raw deployments)
- DeFi Llama TVL: $3,585,621.00
- On-chain TVL (included contracts): $1,244,511.36
- TVL by chain: Ethereum $1,244,511.36

## Project Description

Notional is a decentralized lending and borrowing protocol that enables fixed-rate and variable-rate loans, leveraged yield farming, and liquidity provision across multiple chains. It uses a system of nTokens for liquidity, PrimeCash and PrimeDebt for money-market positions, and vaults for yield strategies.

### Architecture

The Core Lending family provides the base assets (nTokens, PrimeCash, PrimeDebt) that are used by Yield Vaults to execute strategies, while Routing contracts direct user flows and manage cross-chain operations. All families rely on shared proxy patterns (nBeaconProxy, nProxy) and upgradeable beacons for contract management.

## Audit Coverage Summary

- Verified implementations audited: 14/73 (19.2%)
- Verified + Unaudited implementations: 59
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 79
- Raw deployments: 351
- Audits discovered: 7
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $755,738.95
- Latest audit: 2026-03 (fresh)
- Staleness: 4 fresh, 0 aging, 2 stale, 1 unknown
- Tier 1 coverage: 19.2% (Sherlock)
- Note: This protocol is classified as [dead]. ASD of $755,738.95 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 14 | 19.2% | 2026-03 |
| yAudit | Tier 2 | 12 | 16.4% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StakingStrategy | core_logic | ethereum | 13 deployments: ethereum [`0x0409d3...206a3e`](./contracts/ethereum-1/0x0409d36ba4bad176ed62a97faf05253b6b206a3e/); ethereum `0x04b517...fad718`; ethereum `0x0fa90c...9d84de`; ethereum `0x2838f9...5135ba`; ethereum `0x48ba5c...002dab`; ethereum `0x4eed2b...767d93`; ethereum `0x5fdc7e...c41810`; ethereum `0x7f723f...a7d5ae`; ethereum `0x9fb579...b465e0`; ethereum `0xa9f31d...2e9b31`; ethereum `0xaa7c54...6efca0`; ethereum `0xaf14d0...d9c48b`; ethereum `0xc02b6d...dfd31f` | ✅ Audited |
| MidasStakingStrategy | core_logic | ethereum | 3 deployments: ethereum [`0x091356...9dd673`](./contracts/ethereum-1/0x091356e6793a0d960174eaab4d470e39a99dd673/); ethereum `0x2a5c94...092ce4`; ethereum `0x94f6cb...ec7e6e` | ✅ Audited |
| CurveConvex2Token | token | ethereum | [`0x271656...7f167f`](./contracts/ethereum-1/0x2716561755154eef59bc48eb13712510b27f167f/) | ✅ Audited |
| AddressRegistry | registry | ethereum | 4 deployments: ethereum [`0x46a237...5a2d74`](./contracts/ethereum-1/0x46a2373fb541a5049dc31fc740e8b4036a5a2d74/); ethereum `0x6a273b...a6f7bc`; ethereum `0xe335d3...63ec95`; ethereum `0xe569a3...8d49c8` | ✅ Audited |
| EthenaWithdrawRequestManager | operational_periphery | ethereum | [`0x8c7c9a...803c9f`](./contracts/ethereum-1/0x8c7c9a45916550c6fe04cdaa139672a1b5803c9f/) | ✅ Audited |
| EtherFiWithdrawRequestManager | operational_periphery | ethereum | [`0x71ba37...962f20`](./contracts/ethereum-1/0x71ba37c7c0eab9f86de6d8745771c66fd3962f20/) | ✅ Audited |
| GenericERC20WithdrawRequestManager | operational_periphery | ethereum | 2 deployments: ethereum [`0x2d8295...2a936c`](./contracts/ethereum-1/0x2d8295b1c42d9055596d5a5f4c6429baf02a936c/); ethereum `0xe854ce...d1d0ff` | ✅ Audited |
| InfiniFiWithdrawRequestManager | operational_periphery | ethereum | 2 deployments: ethereum [`0x46c423...3a9898`](./contracts/ethereum-1/0x46c423e27e88c002c3643e332d8f62b7513a9898/); ethereum `0xf72c1c...b79348` | ✅ Audited |
| MidasWithdrawRequestManager | operational_periphery | ethereum | 2 deployments: ethereum [`0x18f866...4ec10f`](./contracts/ethereum-1/0x18f86644781fc9f7b4641d371f377c96744ec10f/); ethereum `0xe4ebb6...da7268` | ✅ Audited |
| MorphoLendingRouter | adapter | ethereum | [`0x9a0c63...2ecaa0`](./contracts/ethereum-1/0x9a0c630c310030c4602d1a76583a3b16972ecaa0/) | ✅ Audited |
| OriginWithdrawRequestManager | operational_periphery | ethereum | [`0x59aa04...64b9fb`](./contracts/ethereum-1/0x59aa04b190ec76c95a1eb02d9a184b7fdd64b9fb/) | ✅ Audited |
| PendlePT_sUSDe | unknown | ethereum | [`0x0e61e8...f3f622`](./contracts/ethereum-1/0x0e61e810f0918081cbfd2ac8c97e5866daf3f622/) | ✅ Audited |
| StrategyUtils | core_logic | ethereum | [`0xe78d09...c67c67`](./contracts/ethereum-1/0xe78d09c8b6ccf9c1732d14353a708b75f6c67c67/) | ✅ Audited |
| TradingModule | unknown | ethereum | 4 deployments: ethereum [`0x179a2d...7dc823`](./contracts/ethereum-1/0x179a2d2408bfbc21b72d59c4a74e5010f07dc823/); ethereum `0x86bece...3908b0`; ethereum `0xf1dfc2...7dca3d`; arbitrum `0x514f95...64690f` | ✅ Audited |

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| NoteERC20 | token | ethereum | 2 deployments: ethereum [`0x95df7e...bd6ba3`](./contracts/ethereum-1/0x95df7e34403becd532f2be160cacda56f0bd6ba3/); ethereum `0xcfeaea...ef3ed5` | ⚠️ Unaudited |
| nwToken | token | ethereum | 8 deployments: ethereum [`0x0f12b8...960187`](./contracts/ethereum-1/0x0f12b85a331acb515e1626f707aade62e9960187/); ethereum `0x24b5ff...1e40f7`; ethereum `0x47b320...038640`; ethereum `0xaac514...965c9c`; ethereum `0xba43bf...3cdde0`; ethereum `0xc91864...fb492a`; ethereum `0xdbbb03...fa24d5`; ethereum `0xe8f28c...6e929b` | ⚠️ Unaudited |
| BalancerComposableAuraVault | core_logic | ethereum | 8 deployments: ethereum [`0x32d82a...1d52d1`](./contracts/ethereum-1/0x32d82a1c8618c7be7fe85b2f1c44357a871d52d1/); ethereum `0x914255...d278ca`; ethereum `0xeeb885...758f91`; ethereum `0xf94507...dc9cfb`; arbitrum `0x91b79f...bc8010`; arbitrum `0xa0d61c...f25857`; arbitrum `0xcac9c0...e97e68`; arbitrum `0xd7c3dc...dd1937` | ⚠️ Unaudited |
| AccountAction | unknown | ethereum | 8 deployments: ethereum [`0x5f11e9...b0227e`](./contracts/ethereum-1/0x5f11e94e0a69ac8490f45eb27a6478dcddb0227e/); ethereum `0x7f9536...35768c`; ethereum `0x8a096f...7f9a8c`; ethereum `0x922e6e...bc87d0`; ethereum `0x95ed51...cc94ae`; ethereum `0x97cc93...4b9af7`; ethereum `0xf9fdb6...69002a`; arbitrum `0xc2763a...7b03b7` | ⚠️ Unaudited |
| BatchAction | periphery | arbitrum | 11 deployments: ethereum `0x112170...59283f`; ethereum `0x1d1a53...f7dd46`; ethereum `0x3b8b09...0708af`; ethereum `0x4fc792...ebede9`; ethereum `0x53423d...a5c8a9`; ethereum `0x59074a...8e9d39`; ethereum `0x63757f...efcb93`; ethereum `0xb484dd...65f59f`; ethereum `0xb87afd...9a9263`; ethereum `0xdb7a1b...8762e1`; arbitrum [`0x0092a5...59707f`](./contracts/arbitrum-42161/0x0092a5552162f911ccf7f456e85f473ce259707f/) | ⚠️ Unaudited |
| CalculationViews | unknown | arbitrum | 4 deployments: ethereum `0x851a28...49c7f3`; ethereum `0xbe4aba...5f261e`; ethereum `0xc6f5ba...312a9e`; arbitrum [`0x280dec...16f423`](./contracts/arbitrum-42161/0x280decd520da16e5571a6f2fb803a57e0c16f423/) | ⚠️ Unaudited |
| cTokenAggregator | token | ethereum | 5 deployments: ethereum [`0x181900...c3c424`](./contracts/ethereum-1/0x181900d998a8a922e68b3fc186ce0fa525c3c424/); ethereum `0x1ce3d7...92c988`; ethereum `0x5fbf45...c450fc`; ethereum `0x913f57...7977d8`; ethereum `0xc7b9c5...79d2e9` | ⚠️ Unaudited |
| cTokenLegacyAggregator | token | ethereum | 2 deployments: ethereum [`0x612741...15c693`](./contracts/ethereum-1/0x612741825acedc6f88d8709319fe65bcb015c693/); ethereum `0x8e3d44...3cfad6` | ⚠️ Unaudited |
| cTokenV2Aggregator | token | ethereum | 4 deployments: ethereum [`0x39d959...13e69d`](./contracts/ethereum-1/0x39d9590721331b13c8e9a42941a2b961b513e69d/); ethereum `0x719993...f78e00`; ethereum `0x7b0cc1...597987`; ethereum `0xe329e8...e1abde` | ⚠️ Unaudited |
| Curve2TokenConvexVault | core_logic | ethereum | 9 deployments: ethereum [`0x30fba4...e553e2`](./contracts/ethereum-1/0x30fba4a7ec8591f25b4d37fd79943a4bb6e553e2/); ethereum `0x84e58d...5570b8`; ethereum `0x86b222...1ef538`; ethereum `0xba4eb3...26e9c6`; ethereum `0xe20048...32f848`; arbitrum `0x3533f0...baea10`; arbitrum `0x5c36a0...cdb643`; arbitrum `0xae04e4...5a1f4a`; arbitrum `0xf95441...34eedd` | ⚠️ Unaudited |
| Curve2TokenVault | core_logic | ethereum | 2 deployments: ethereum [`0xb1113c...d85172`](./contracts/ethereum-1/0xb1113cf888a019693b254da3d90f841072d85172/); ethereum `0xd6aa58...89f021` | ⚠️ Unaudited |
| EmptyProxy | unknown | arbitrum | 2 deployments: arbitrum [`0x90c3c4...41a4ff`](./contracts/arbitrum-42161/0x90c3c405716b8ff965dc905c91eee82a0b41a4ff/); arbitrum `0xcfeaea...ef3ed5` | ⚠️ Unaudited |
| ERC1155Action | token | ethereum | 4 deployments: ethereum [`0x518885...79aa10`](./contracts/ethereum-1/0x51888550902159f2eb7c43b8589dbe975379aa10/); ethereum `0xbf12d7...75bfa5`; ethereum `0xffd753...a341c9`; arbitrum `0xde14d5...d2a939` | ⚠️ Unaudited |
| ERC4626OracleAdapter | operational_periphery | ethereum | 2 deployments: ethereum [`0x227eb3...5bd330`](./contracts/ethereum-1/0x227eb3f8e867b4917553a616a550d629085bd330/); ethereum `0x5165b1...70cfa5` | ⚠️ Unaudited |
| FinalRouterV3_Arbitrum | adapter | arbitrum | 5 deployments: arbitrum [`0x1344a3...de0369`](./contracts/arbitrum-42161/0x1344a36a1b56144c3bc62e7757377d288fde0369/); arbitrum `0x1b3534...0292d7`; arbitrum `0x634a52...0d2cf7`; arbitrum `0xc3209c...b03574`; arbitrum `0xf3f7dd...c0dee7` | ⚠️ Unaudited |
| FinalRouterV3_Mainnet | adapter | ethereum | 2 deployments: ethereum [`0x15ce51...5b90fe`](./contracts/ethereum-1/0x15ce5192b844a7a45e13864ac9969dc4f95b90fe/); ethereum `0xfe2944...f6ea8e` | ⚠️ Unaudited |
| FinalV2Router | adapter | ethereum | 2 deployments: ethereum [`0x1344a3...de0369`](./contracts/ethereum-1/0x1344a36a1b56144c3bc62e7757377d288fde0369/); ethereum `0x5c424c...e8923f` | ⚠️ Unaudited |
| FlashLiquidator | operational_periphery | arbitrum | 11 deployments: ethereum `0x0a058e...ed3e76`; ethereum `0x430ea5...8f1a7b`; ethereum `0x572dcc...282f4e`; ethereum `0x61f1fb...3e645b`; ethereum `0x7e9819...195493`; ethereum `0x9bfc1c...f64395`; arbitrum [`0x0158fc...b888db`](./contracts/arbitrum-42161/0x0158fc072ff5dde8f7b9e2d00e8782093db888db/); arbitrum `0x326746...1e2ce1`; arbitrum `0x48a18d...120fd6`; arbitrum `0x53423d...a5c8a9`; arbitrum `0xa44a87...ff6c71` | ⚠️ Unaudited |
| FreeCollateralExternal | unknown | ethereum | 3 deployments: ethereum [`0x422a2e...59bb6a`](./contracts/ethereum-1/0x422a2e95009f11e9e144fe7fd1a7c7a9c759bb6a/); ethereum `0xea7aa6...c6fdf7`; arbitrum `0x72ec9d...940d4e` | ⚠️ Unaudited |
| GovernanceAction | unknown | arbitrum | 3 deployments: ethereum `0x514f95...64690f`; ethereum `0xd2b104...34253d`; arbitrum [`0x10aae3...c0f51d`](./contracts/arbitrum-42161/0x10aae34011c256a9e63ab5ac50154c2539c0f51d/) | ⚠️ Unaudited |
| GovernorAlpha | governance | ethereum | [`0x086b4e...06d7cb`](./contracts/ethereum-1/0x086b4ecd75c494dd36641195e89c25373e06d7cb/) | ⚠️ Unaudited |
| InitializeMarketsAction | unknown | ethereum | 6 deployments: ethereum [`0x280dec...16f423`](./contracts/ethereum-1/0x280decd520da16e5571a6f2fb803a57e0c16f423/); ethereum `0x6a3516...26881f`; ethereum `0x884b74...45c893`; ethereum `0xa44a87...ff6c71`; ethereum `0xf35431...2f6a09`; arbitrum `0x422a2e...59bb6a` | ⚠️ Unaudited |
| LeveragedNTokenAdapter | adapter | ethereum | [`0x25ee01...64cfcf`](./contracts/ethereum-1/0x25ee011b6af5537ecd520f40ca759899a064cfcf/) | ⚠️ Unaudited |
| LiquidateCurrencyAction | unknown | ethereum | 5 deployments: ethereum [`0x0ff45f...7284b0`](./contracts/ethereum-1/0x0ff45fd2ad282b7e6e29dc10dbe6b3fc907284b0/); ethereum `0x3abbd5...68a0b2`; ethereum `0x6b986a...392ce7`; ethereum `0x885d3d...7181a6`; arbitrum `0xdfb618...86832f` | ⚠️ Unaudited |
| LiquidatefCashAction | unknown | arbitrum | 3 deployments: ethereum `0xb12b08...d8ed70`; ethereum `0xf38a93...16a800`; arbitrum [`0x1c5107...6e4332`](./contracts/arbitrum-42161/0x1c510763432c0e65d86f313612d4e1e2d26e4332/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | 2 deployments: ethereum [`0x372808...5acc0c`](./contracts/ethereum-1/0x3728081cc9668b206665cae9dc2b43aff35acc0c/); ethereum `0xa40aed...7f1dd4` | ⚠️ Unaudited |
| MigrateIncentives | unknown | arbitrum | [`0x6085b0...d1e29b`](./contracts/arbitrum-42161/0x6085b0a8f4c7ffa2e8ca578037792d6535d1e29b/) | ⚠️ Unaudited |
| MigrateV2ToV3 | unknown | ethereum | [`0xa9f0fb...b8d437`](./contracts/ethereum-1/0xa9f0fb2528a8ada9b11be582ac1d13bdbfb8d437/) | ⚠️ Unaudited |
| NotionalV1ToNotionalV2 | unknown | ethereum | [`0xf47d71...8b7876`](./contracts/ethereum-1/0xf47d7192413ac6558f48594ecce6d2dfe38b7876/) | ⚠️ Unaudited |
| nTokenAction | token | ethereum | 3 deployments: ethereum [`0x1cd33f...a3c93a`](./contracts/ethereum-1/0x1cd33f81420bfce8a3622dc56bbd617b7fa3c93a/); ethereum `0x3533f0...baea10`; arbitrum `0x662f1b...975526` | ⚠️ Unaudited |
| nTokenERC20Proxy | token | arbitrum | 20 deployments: ethereum `0x0da210...8b210e`; ethereum `0x2920f9...77f97e`; ethereum `0x2f7350...b84afc`; ethereum `0x341046...c31fd3`; ethereum `0x87c478...703444`; ethereum `0x9499ad...650933`; ethereum `0x96be0c...2a5c6f`; ethereum `0xa2adbc...067da0`; ethereum `0xc4fd25...573db7`; ethereum `0xd62364...af9ce3`; ethereum `0xeb2577...fd8ec5`; arbitrum [`0x06d45e...37619a`](./contracts/arbitrum-42161/0x06d45ef1f8b3c37b0de66f156b11f10b4837619a/); arbitrum `0x0f13fb...986adc`; arbitrum `0x18b0fc...305a29`; arbitrum `0x2c4294...c9216f`; arbitrum `0x52602a...7f99d6`; arbitrum `0x696336...8a2f57`; arbitrum `0x6f6603...d45b8f`; arbitrum `0x809b43...0773bb`; arbitrum `0x9c0fbb...27f442` | ⚠️ Unaudited |
| nTokenMintAction | token | ethereum | 7 deployments: ethereum [`0x0092a5...59707f`](./contracts/ethereum-1/0x0092a5552162f911ccf7f456e85f473ce259707f/); ethereum `0x0e01db...003573`; ethereum `0x380cdf...e1ff55`; ethereum `0x65c23f...13ca2e`; ethereum `0xe5ae18...432de7`; ethereum `0xf95441...34eedd`; arbitrum `0x086b4e...06d7cb` | ⚠️ Unaudited |
| nTokenRedeemAction | token | ethereum | 5 deployments: ethereum [`0x1c5107...6e4332`](./contracts/ethereum-1/0x1c510763432c0e65d86f313612d4e1e2d26e4332/); ethereum `0x2f77cd...7ceb92`; ethereum `0x91b79f...bc8010`; ethereum `0xce3f1d...7a48d4`; arbitrum `0x95df7e...bd6ba3` | ⚠️ Unaudited |
| nUpgradeableBeacon | registry | ethereum | [`0xd676d7...2329dd`](./contracts/ethereum-1/0xd676d720e4e8b14f545f9116f0cad47af32329dd/) | ⚠️ Unaudited |
| PauseAdmin | unknown | ethereum | 2 deployments: ethereum [`0x078dc7...969d08`](./contracts/ethereum-1/0x078dc7e61b410e461328aba0022197ea6a969d08/); ethereum `0xee8086...0fba0d` | ⚠️ Unaudited |
| PauseRouter | adapter | ethereum | 6 deployments: ethereum [`0x0f9e06...0055f8`](./contracts/ethereum-1/0x0f9e06c4180418b781d2816914834710360055f8/); ethereum `0x7652d9...16b949`; ethereum `0x847051...0ef0f6`; ethereum `0xb15b2c...4e5ca1`; ethereum `0xbe401d...e0bd25`; arbitrum `0x6b986a...392ce7` | ⚠️ Unaudited |
| PendlePTGeneric | unknown | ethereum | 5 deployments: ethereum [`0x5fc3fc...00e1dd`](./contracts/ethereum-1/0x5fc3fc6263b16f665d78075784f5a6abed00e1dd/); ethereum `0xc87a90...7296b0`; ethereum `0xe47d15...3c282b`; arbitrum `0x851a28...49c7f3`; arbitrum `0x878c46...940b12` | ⚠️ Unaudited |
| PrimeCashProxy | unknown | arbitrum | 27 deployments: ethereum `0x1f6819...39a6a9`; ethereum `0x265329...57948f`; ethereum `0x39a1f8...f5cc95`; ethereum `0x4a9e28...dee9b8`; ethereum `0x4ebfc1...d305a6`; ethereum `0x54fa13...959974`; ethereum `0x7ef4d0...bf3dec`; ethereum `0x83706a...25d29d`; ethereum `0x92dc86...58a560`; ethereum `0xaeeafb...2de762`; ethereum `0xbb828e...33e878`; ethereum `0xf3c275...96cdf1`; ethereum `0xfbadc4...6788d1`; arbitrum [`0x051961...f75db7`](./contracts/arbitrum-42161/0x0519614643a019feb53b9f2c395b243253f75db7/); arbitrum `0x0ace2d...93b886`; arbitrum `0x1fd865...85d3aa`; arbitrum `0x63ffcf...c40650`; arbitrum `0x6d13d3...ed73c4`; arbitrum `0x6f28ca...e0f53d`; arbitrum `0x8652de...8febcc`; arbitrum `0x866eb0...840385`; arbitrum `0xa135d7...cf56bf`; arbitrum `0xabc07b...1b90d6`; arbitrum `0xb9bfbb...463192`; arbitrum `0xbc323e...402d6b`; arbitrum `0xd63ace...8081ac`; arbitrum `0xef3f53...9f547a` | ⚠️ Unaudited |
| PrimeDebtProxy | unknown | ethereum | 27 deployments: ethereum [`0x11de34...3eb2b6`](./contracts/ethereum-1/0x11de34ce32147ba4e913470a5013da80fe3eb2b6/); ethereum `0x161d33...44ddfa`; ethereum `0x19fe8c...7598a5`; ethereum `0x366d5b...6b178f`; ethereum `0x40bf20...33a057`; ethereum `0x794a78...bc423e`; ethereum `0x81a2b6...ce86d7`; ethereum `0xaa57dd...466a03`; ethereum `0xcc6fb2...cf747f`; ethereum `0xd5c341...bab6dc`; ethereum `0xda7f29...0a116b`; ethereum `0xdf0803...247640`; ethereum `0xe25d40...a1a13d`; arbitrum `0x2ddb08...e8e5dd`; arbitrum `0x3482db...88e707`; arbitrum `0x4068a4...673efe`; arbitrum `0x41be01...a3ba90`; arbitrum `0x452f5c...04cc56`; arbitrum `0x4ee657...92e081`; arbitrum `0x65ea9a...159a6c`; arbitrum `0x692749...46eaa0`; arbitrum `0x6ebce2...231818`; arbitrum `0x7366d1...5d13b3`; arbitrum `0xc12d27...9ff958`; arbitrum `0xc3882b...dd5d75`; arbitrum `0xc9c5e5...665ea3`; arbitrum `0xfbd9e8...644b56` | ⚠️ Unaudited |
| RebalanceHelper | periphery | arbitrum | [`0x366d5b...6b178f`](./contracts/arbitrum-42161/0x366d5b255d97c5fee2283561bd89fce5566b178f/) | ⚠️ Unaudited |
| Router | adapter | ethereum | 16 deployments: ethereum [`0x0158fc...b888db`](./contracts/ethereum-1/0x0158fc072ff5dde8f7b9e2d00e8782093db888db/); ethereum `0x123fca...5aa7e4`; ethereum `0x16ed13...189962`; ethereum `0x19152d...392b23`; ethereum `0x2c67b0...e981e0`; ethereum `0x2cc280...031cb0`; ethereum `0x3da72a...1ee555`; ethereum `0x42c74c...f6fb23`; ethereum `0x587843...1f96ca`; ethereum `0x878c46...940b12`; ethereum `0x9a419c...c2e0bd`; ethereum `0xd7c3dc...dd1937`; ethereum `0xed1546...23f4b0`; ethereum `0xfab3b2...15eaad`; ethereum `0xfea323...e9fa0a`; arbitrum `0xb12b08...d8ed70` | ⚠️ Unaudited |
| SecondaryRewarder | unknown | ethereum | [`0xbf3552...b3abb2`](./contracts/ethereum-1/0xbf35529d9333feee50c17aa0a39eeabea2b3abb2/) | ⚠️ Unaudited |
| SettleAssetsExternal | unknown | arbitrum | 3 deployments: ethereum `0xb15167...126e49`; ethereum `0xe10836...a44b21`; arbitrum [`0xa40aed...7f1dd4`](./contracts/arbitrum-42161/0xa40aedaac28f9574124d7c8eff59732cc77f1dd4/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | [`0x019be2...bc7bc1`](./contracts/arbitrum-42161/0x019be259bc299f3f653688c7655c87f998bc7bc1/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | 2 deployments: ethereum [`0x375eaf...643235`](./contracts/ethereum-1/0x375eafe4348c6aa851cdfa5f84ec268f73643235/); ethereum `0xad2078...75416b` | ⚠️ Unaudited |
| TimelockRouter | adapter | ethereum | 2 deployments: ethereum [`0x6e7058...e4263f`](./contracts/ethereum-1/0x6e7058c91f85e0f6db4fc9da2ca41241f5e4263f/); ethereum `0x7cfe98...7b0068` | ⚠️ Unaudited |
| TradingAction | unknown | ethereum | 6 deployments: ethereum [`0x111a2f...3cc5d7`](./contracts/ethereum-1/0x111a2f8b843b7a20d9b1a2535c837e6cc23cc5d7/); ethereum `0x5c36a0...cdb643`; ethereum `0x662f1b...975526`; ethereum `0xcac9c0...e97e68`; ethereum `0xf6b306...10761a`; arbitrum `0xca2848...b89b90` | ⚠️ Unaudited |
| TreasuryAction | operational_periphery | arbitrum | 2 deployments: ethereum `0x3965d7...b8bc68`; arbitrum [`0x1cd33f...a3c93a`](./contracts/arbitrum-42161/0x1cd33f81420bfce8a3622dc56bbd617b7fa3c93a/) | ⚠️ Unaudited |
| TreasuryManager | operational_periphery | arbitrum | 3 deployments: ethereum `0xe728ea...3b07b7`; ethereum `0xe801b5...ec5b0a`; arbitrum [`0x92dc86...58a560`](./contracts/arbitrum-42161/0x92dc86b93fb564131aa6f961a98465355d58a560/) | ⚠️ Unaudited |
| UnderlyingHoldingsOracle | operational_periphery | arbitrum | 18 deployments: ethereum `0x1d1c4b...131494`; ethereum `0x218af5...92ef29`; ethereum `0x25bbd3...a24067`; ethereum `0x269689...754549`; ethereum `0x3a0499...7d985f`; ethereum `0x7cb892...bce3f7`; ethereum `0x84edde...b73680`; ethereum `0x85ced2...9f01f0`; ethereum `0x99745f...2fc6aa`; ethereum `0xa7d226...acbf61`; ethereum `0xb8129e...1b4505`; ethereum `0xc0ab10...de9d25`; arbitrum [`0x0eae7b...91eb0e`](./contracts/arbitrum-42161/0x0eae7badef8f95de91fddb74a89a786cf891eb0e/); arbitrum `0x253b76...27ce13`; arbitrum `0x4af053...51207f`; arbitrum `0x614bc6...05c914`; arbitrum `0x913f57...7977d8`; arbitrum `0x96d2c6...cf1052` | ⚠️ Unaudited |
| VaultAccountAction | core_logic | ethereum | 6 deployments: ethereum [`0x1a751c...db1a78`](./contracts/ethereum-1/0x1a751cd714910929017ce1417ead6d0732db1a78/); ethereum `0x602f8e...68090b`; ethereum `0x8d3d71...b92cbd`; ethereum `0x941460...2b3c04`; ethereum `0xf8b25d...06021a`; arbitrum `0xabd096...f1b488` | ⚠️ Unaudited |
| VaultAccountHealth | core_logic | ethereum | 2 deployments: ethereum [`0x7d7646...b87052`](./contracts/ethereum-1/0x7d764650690e60a7a6647f2d12708f8434b87052/); arbitrum `0xffd753...a341c9` | ⚠️ Unaudited |
| VaultAction | core_logic | arbitrum | 4 deployments: ethereum `0x67e5f0...31aa75`; ethereum `0xae04e4...5a1f4a`; ethereum `0xd16273...4655f4`; arbitrum [`0x63757f...efcb93`](./contracts/arbitrum-42161/0x63757f772b8aab66f4de09617e8f257249efcb93/) | ⚠️ Unaudited |
| VaultLiquidationAction | core_logic | ethereum | 2 deployments: ethereum [`0x49d0e9...cff50c`](./contracts/ethereum-1/0x49d0e97ba2f4cf0e5e4f86c0d9c5c8acbacff50c/); arbitrum `0x5f11e9...b0227e` | ⚠️ Unaudited |
| VaultRewarderLib | core_logic | arbitrum | 5 deployments: ethereum `0x96b1eb...6c4974`; ethereum `0x9c7b86...c29d84`; arbitrum [`0x3965d7...b8bc68`](./contracts/arbitrum-42161/0x3965d75bfe40435246c22f75db2e170210b8bc68/); arbitrum `0x54bb21...e30a97`; arbitrum `0xf38a93...16a800` | ⚠️ Unaudited |
| Views | unknown | ethereum | 4 deployments: ethereum [`0x54bb21...e30a97`](./contracts/ethereum-1/0x54bb219281fe0eef1483bc4421e6502fe1e30a97/); ethereum `0xde14d5...d2a939`; ethereum `0xfebc56...f3dd1b`; arbitrum `0xb15167...126e49` | ⚠️ Unaudited |
| wfCashERC4626 | unknown | ethereum | 5 deployments: ethereum [`0x44919c...db8c48`](./contracts/ethereum-1/0x44919c298cc2dd295fd2b2de10e944491cdb8c48/); ethereum `0x895f06...e40fbf`; ethereum `0xebe1bf...338f66`; arbitrum `0x895f06...e40fbf`; arbitrum `0xd676d7...2329dd` | ⚠️ Unaudited |
| WrappedfCashFactory | registry | ethereum | 3 deployments: ethereum [`0x56408a...34d01b`](./contracts/ethereum-1/0x56408a51b96609c10b005a2fc599ee36b534d01b/); ethereum `0x5d051d...e27261`; arbitrum `0x5d051d...e27261` | ⚠️ Unaudited |
| wstETHOracleAdapter | operational_periphery | ethereum | [`0xa37a27...f74c35`](./contracts/ethereum-1/0xa37a279bcb057bcfc544de7d953f940599f74c35/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x72ec9d...940d4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x90c3c4...41a4ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc2763a...7b03b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x68225f...bc76b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdbbb03...fa24d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf1dfc2...7dca3d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Sherlock Audits | July 2025](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.07.18%20-%20Final%20-%20Notional%20Exponent%20Audit%20Report.pdf) | Sherlock | Contest | 2025-07 | fresh | Direct | contract_name | 31 | high |
| [Sherlock Audits | January 2026](https://sherlock-files.ams3.digitaloceanspaces.com/reports/2026.01.17%20-%20Final%20-%20Notional%20Collaborative%20Audit%20Report%201768611627.pdf) | Sherlock | Contest | 2026-01 | fresh | Direct | contract_name | 8 | high |
| [Sherlock Audits | September 2022](https://github.com/sherlock-audit/2022-09-notional-judging/blob/main/Audit_Report.pdf) | Sherlock | Contest | 2022-09 | stale | Direct | contract_name | 5 | high |
| [Sherlock Audits | March 2026](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.03.06%20-%20Final%20-%20Notional%20Collaborative%20Audit%20Report%201772819509.pdf) | Sherlock | Contest | 2026-03 | fresh | Direct | contract_name | 1 | high |
| [Notional v4 Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Notional%20Finance/Notional%20v4/Notional%20v4%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | contract_name | 31 | high |
| [DL audit link](https://www.openzeppelin.com/news/notional-audit) | OpenZeppelin | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |
| [DL audit link](https://audits.sherlock.xyz/contests/59) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x95df7e...bd6ba3`](./contracts/ethereum-1/0x95df7e34403becd532f2be160cacda56f0bd6ba3/) | NoteERC20 | token | $749,019.00 | Verified native implementation with $749,019.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f12b8...960187`](./contracts/ethereum-1/0x0f12b85a331acb515e1626f707aade62e9960187/) | nwToken | token | $5,374.67 | Verified native implementation with $5,374.67 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32d82a...1d52d1`](./contracts/ethereum-1/0x32d82a1c8618c7be7fe85b2f1c44357a871d52d1/) | BalancerComposableAuraVault | core_logic | $1,345.28 | Verified native implementation with $1,345.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f11e9...b0227e`](./contracts/ethereum-1/0x5f11e94e0a69ac8490f45eb27a6478dcddb0227e/) | AccountAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0092a5...59707f`](./contracts/arbitrum-42161/0x0092a5552162f911ccf7f456e85f473ce259707f/) | BatchAction | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x280dec...16f423`](./contracts/arbitrum-42161/0x280decd520da16e5571a6f2fb803a57e0c16f423/) | CalculationViews | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x181900...c3c424`](./contracts/ethereum-1/0x181900d998a8a922e68b3fc186ce0fa525c3c424/) | cTokenAggregator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x612741...15c693`](./contracts/ethereum-1/0x612741825acedc6f88d8709319fe65bcb015c693/) | cTokenLegacyAggregator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39d959...13e69d`](./contracts/ethereum-1/0x39d9590721331b13c8e9a42941a2b961b513e69d/) | cTokenV2Aggregator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30fba4...e553e2`](./contracts/ethereum-1/0x30fba4a7ec8591f25b4d37fd79943a4bb6e553e2/) | Curve2TokenConvexVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1113c...d85172`](./contracts/ethereum-1/0xb1113cf888a019693b254da3d90f841072d85172/) | Curve2TokenVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x90c3c4...41a4ff`](./contracts/arbitrum-42161/0x90c3c405716b8ff965dc905c91eee82a0b41a4ff/) | EmptyProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x518885...79aa10`](./contracts/ethereum-1/0x51888550902159f2eb7c43b8589dbe975379aa10/) | ERC1155Action | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x227eb3...5bd330`](./contracts/ethereum-1/0x227eb3f8e867b4917553a616a550d629085bd330/) | ERC4626OracleAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1344a3...de0369`](./contracts/arbitrum-42161/0x1344a36a1b56144c3bc62e7757377d288fde0369/) | FinalRouterV3_Arbitrum | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15ce51...5b90fe`](./contracts/ethereum-1/0x15ce5192b844a7a45e13864ac9969dc4f95b90fe/) | FinalRouterV3_Mainnet | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1344a3...de0369`](./contracts/ethereum-1/0x1344a36a1b56144c3bc62e7757377d288fde0369/) | FinalV2Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0158fc...b888db`](./contracts/arbitrum-42161/0x0158fc072ff5dde8f7b9e2d00e8782093db888db/) | FlashLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x422a2e...59bb6a`](./contracts/ethereum-1/0x422a2e95009f11e9e144fe7fd1a7c7a9c759bb6a/) | FreeCollateralExternal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x10aae3...c0f51d`](./contracts/arbitrum-42161/0x10aae34011c256a9e63ab5ac50154c2539c0f51d/) | GovernanceAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x086b4e...06d7cb`](./contracts/ethereum-1/0x086b4ecd75c494dd36641195e89c25373e06d7cb/) | GovernorAlpha | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x280dec...16f423`](./contracts/ethereum-1/0x280decd520da16e5571a6f2fb803a57e0c16f423/) | InitializeMarketsAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25ee01...64cfcf`](./contracts/ethereum-1/0x25ee011b6af5537ecd520f40ca759899a064cfcf/) | LeveragedNTokenAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ff45f...7284b0`](./contracts/ethereum-1/0x0ff45fd2ad282b7e6e29dc10dbe6b3fc907284b0/) | LiquidateCurrencyAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1c5107...6e4332`](./contracts/arbitrum-42161/0x1c510763432c0e65d86f313612d4e1e2d26e4332/) | LiquidatefCashAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x372808...5acc0c`](./contracts/ethereum-1/0x3728081cc9668b206665cae9dc2b43aff35acc0c/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6085b0...d1e29b`](./contracts/arbitrum-42161/0x6085b0a8f4c7ffa2e8ca578037792d6535d1e29b/) | MigrateIncentives | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9f0fb...b8d437`](./contracts/ethereum-1/0xa9f0fb2528a8ada9b11be582ac1d13bdbfb8d437/) | MigrateV2ToV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf47d71...8b7876`](./contracts/ethereum-1/0xf47d7192413ac6558f48594ecce6d2dfe38b7876/) | NotionalV1ToNotionalV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cd33f...a3c93a`](./contracts/ethereum-1/0x1cd33f81420bfce8a3622dc56bbd617b7fa3c93a/) | nTokenAction | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x06d45e...37619a`](./contracts/arbitrum-42161/0x06d45ef1f8b3c37b0de66f156b11f10b4837619a/) | nTokenERC20Proxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0092a5...59707f`](./contracts/ethereum-1/0x0092a5552162f911ccf7f456e85f473ce259707f/) | nTokenMintAction | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c5107...6e4332`](./contracts/ethereum-1/0x1c510763432c0e65d86f313612d4e1e2d26e4332/) | nTokenRedeemAction | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd676d7...2329dd`](./contracts/ethereum-1/0xd676d720e4e8b14f545f9116f0cad47af32329dd/) | nUpgradeableBeacon | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x078dc7...969d08`](./contracts/ethereum-1/0x078dc7e61b410e461328aba0022197ea6a969d08/) | PauseAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f9e06...0055f8`](./contracts/ethereum-1/0x0f9e06c4180418b781d2816914834710360055f8/) | PauseRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x051961...f75db7`](./contracts/arbitrum-42161/0x0519614643a019feb53b9f2c395b243253f75db7/) | PrimeCashProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11de34...3eb2b6`](./contracts/ethereum-1/0x11de34ce32147ba4e913470a5013da80fe3eb2b6/) | PrimeDebtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x366d5b...6b178f`](./contracts/arbitrum-42161/0x366d5b255d97c5fee2283561bd89fce5566b178f/) | RebalanceHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0158fc...b888db`](./contracts/ethereum-1/0x0158fc072ff5dde8f7b9e2d00e8782093db888db/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf3552...b3abb2`](./contracts/ethereum-1/0xbf35529d9333feee50c17aa0a39eeabea2b3abb2/) | SecondaryRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa40aed...7f1dd4`](./contracts/arbitrum-42161/0xa40aedaac28f9574124d7c8eff59732cc77f1dd4/) | SettleAssetsExternal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x019be2...bc7bc1`](./contracts/arbitrum-42161/0x019be259bc299f3f653688c7655c87f998bc7bc1/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e7058...e4263f`](./contracts/ethereum-1/0x6e7058c91f85e0f6db4fc9da2ca41241f5e4263f/) | TimelockRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x111a2f...3cc5d7`](./contracts/ethereum-1/0x111a2f8b843b7a20d9b1a2535c837e6cc23cc5d7/) | TradingAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1cd33f...a3c93a`](./contracts/arbitrum-42161/0x1cd33f81420bfce8a3622dc56bbd617b7fa3c93a/) | TreasuryAction | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x92dc86...58a560`](./contracts/arbitrum-42161/0x92dc86b93fb564131aa6f961a98465355d58a560/) | TreasuryManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0eae7b...91eb0e`](./contracts/arbitrum-42161/0x0eae7badef8f95de91fddb74a89a786cf891eb0e/) | UnderlyingHoldingsOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a751c...db1a78`](./contracts/ethereum-1/0x1a751cd714910929017ce1417ead6d0732db1a78/) | VaultAccountAction | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d7646...b87052`](./contracts/ethereum-1/0x7d764650690e60a7a6647f2d12708f8434b87052/) | VaultAccountHealth | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x63757f...efcb93`](./contracts/arbitrum-42161/0x63757f772b8aab66f4de09617e8f257249efcb93/) | VaultAction | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49d0e9...cff50c`](./contracts/ethereum-1/0x49d0e97ba2f4cf0e5e4f86c0d9c5c8acbacff50c/) | VaultLiquidationAction | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3965d7...b8bc68`](./contracts/arbitrum-42161/0x3965d75bfe40435246c22f75db2e170210b8bc68/) | VaultRewarderLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54bb21...e30a97`](./contracts/ethereum-1/0x54bb219281fe0eef1483bc4421e6502fe1e30a97/) | Views | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44919c...db8c48`](./contracts/ethereum-1/0x44919c298cc2dd295fd2b2de10e944491cdb8c48/) | wfCashERC4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56408a...34d01b`](./contracts/ethereum-1/0x56408a51b96609c10b005a2fc599ee36b534d01b/) | WrappedfCashFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa37a27...f74c35`](./contracts/ethereum-1/0xa37a279bcb057bcfc544de7d953f940599f74c35/) | wstETHOracleAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 66 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=76

Zero-match audit list:

- [2733] DL audit link
- [2734] DL audit link

Fork inheritance lineage and inherited audits are included when available.
