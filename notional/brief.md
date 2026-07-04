# Agentic Audit Brief: Notional

## Project Overview

- Project: Notional (`notional`)
- Website: [https://notional.finance](https://notional.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.828Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: arbitrum, ethereum
- Contract surface: 107 unique implementations (271 raw deployments)
- DeFi Llama TVL: $3,098,834.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Leveraged Farming. Structurally: 79 project-authored contract(s) across 2 chain(s); 2 ERC4626 vaults, 5 ERC20 tokens, 1 ERC1155 multi-token, 7 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 10 common project-authored base contract(s) (storagelayoutv1, erc1967upgrade, storagelayoutv2). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 329; live-surface contracts included: 263 (254 live, 9 unknown).
- Excluded by liveness: 66 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/68 (7.4%)
- Deployed-live implementations: 98 of 107 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 9/98
- Verified + Unaudited implementations: 89
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 107
- Raw deployments: 271
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 3 fresh, 1 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 7.4% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 9 | 9.2% | 2026-03 |
| yAudit | Tier 2 | 7 | 7.1% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0x46a237...5a2d74`](./contracts/ethereum-1/0x46a2373fb541a5049dc31fc740e8b4036a5a2d74/); ethereum `0x6a273b...a6f7bc` | ✅ Audited |
| CurveConvex2Token | token | ethereum | n/a | [`0x271656...7f167f`](./contracts/ethereum-1/0x2716561755154eef59bc48eb13712510b27f167f/) | ✅ Audited |
| EthenaWithdrawRequestManager | operational_periphery | ethereum | n/a | [`0x8c7c9a...803c9f`](./contracts/ethereum-1/0x8c7c9a45916550c6fe04cdaa139672a1b5803c9f/) | ✅ Audited |
| EtherFiWithdrawRequestManager | operational_periphery | ethereum | n/a | [`0x71ba37...962f20`](./contracts/ethereum-1/0x71ba37c7c0eab9f86de6d8745771c66fd3962f20/) | ✅ Audited |
| MorphoLendingRouter | adapter | ethereum | n/a | [`0x9a0c63...2ecaa0`](./contracts/ethereum-1/0x9a0c630c310030c4602d1a76583a3b16972ecaa0/) | ✅ Audited |
| PendlePT_sUSDe | unknown | ethereum | n/a | [`0x0e61e8...f3f622`](./contracts/ethereum-1/0x0e61e810f0918081cbfd2ac8c97e5866daf3f622/) | ✅ Audited |
| StakingStrategy | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x04b517...fad718`](./contracts/ethereum-1/0x04b5179ea1ce7b3bf69e05bb7082f11af9fad718/); ethereum `0x0fa90c...9d84de`; ethereum `0x5fdc7e...c41810`; ethereum `0xaa7c54...6efca0`; ethereum `0xc02b6d...dfd31f` | ✅ Audited |
| StrategyUtils | unknown | ethereum | n/a | [`0xe78d09...c67c67`](./contracts/ethereum-1/0xe78d09c8b6ccf9c1732d14353a708b75f6c67c67/) | ✅ Audited |
| TradingModule | unknown | ethereum | n/a | 4 deployments: ethereum [`0x179a2d...7dc823`](./contracts/ethereum-1/0x179a2d2408bfbc21b72d59c4a74e5010f07dc823/); ethereum `0x86bece...3908b0`; ethereum `0xf1dfc2...7dca3d`; arbitrum `0x514f95...64690f` | ✅ Audited |

### ⚠️ Verified + Unaudited (89)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountAction | unknown | ethereum | n/a | 8 deployments: ethereum [`0x5f11e9...b0227e`](./contracts/ethereum-1/0x5f11e94e0a69ac8490f45eb27a6478dcddb0227e/); ethereum `0x7f9536...35768c`; ethereum `0x8a096f...7f9a8c`; ethereum `0x922e6e...bc87d0`; ethereum `0x95ed51...cc94ae`; ethereum `0x97cc93...4b9af7`; ethereum `0xf9fdb6...69002a`; arbitrum `0xc2763a...7b03b7` | ⚠️ Unaudited |
| AddressRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe335d3...63ec95`](./contracts/ethereum-1/0xe335d314bd4ef7dd44f103dc124fefb7ce63ec95/); ethereum `0xe569a3...8d49c8` | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | ethereum | n/a | [`0x32d82a...1d52d1`](./contracts/ethereum-1/0x32d82a1c8618c7be7fe85b2f1c44357a871d52d1/) | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | ethereum | n/a | [`0x914255...d278ca`](./contracts/ethereum-1/0x914255c0c289aea36e378ebb5e28293b5ed278ca/) | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | ethereum | n/a | [`0xeeb885...758f91`](./contracts/ethereum-1/0xeeb885af7c8075aa3b93e2f95e1c0bd51c758f91/) | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | ethereum | n/a | [`0xf94507...dc9cfb`](./contracts/ethereum-1/0xf94507f3dece4cc4c73b6cf228912b85eadc9cfb/) | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | arbitrum | n/a | [`0x91b79f...bc8010`](./contracts/arbitrum-42161/0x91b79f4081d3522af2760b7698810d501ebc8010/) | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | arbitrum | n/a | [`0xa0d61c...f25857`](./contracts/arbitrum-42161/0xa0d61c08e642103158fc6a1495e7ff82baf25857/) | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | arbitrum | n/a | [`0xcac9c0...e97e68`](./contracts/arbitrum-42161/0xcac9c01d1207e5d06bb0fd5b854832f35fe97e68/) | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | arbitrum | n/a | [`0xd7c3dc...dd1937`](./contracts/arbitrum-42161/0xd7c3dc1c36d19cf4e8cea4ea143a2f4458dd1937/) | ⚠️ Unaudited |
| BatchAction | unknown | arbitrum | n/a | 11 deployments: ethereum `0x112170...59283f`; ethereum `0x1d1a53...f7dd46`; ethereum `0x3b8b09...0708af`; ethereum `0x4fc792...ebede9`; ethereum `0x53423d...a5c8a9`; ethereum `0x59074a...8e9d39`; ethereum `0x63757f...efcb93`; ethereum `0xb484dd...65f59f`; ethereum `0xb87afd...9a9263`; ethereum `0xdb7a1b...8762e1`; arbitrum [`0x0092a5...59707f`](./contracts/arbitrum-42161/0x0092a5552162f911ccf7f456e85f473ce259707f/) | ⚠️ Unaudited |
| CalculationViews | unknown | arbitrum | n/a | 4 deployments: ethereum `0x851a28...49c7f3`; ethereum `0xbe4aba...5f261e`; ethereum `0xc6f5ba...312a9e`; arbitrum [`0x280dec...16f423`](./contracts/arbitrum-42161/0x280decd520da16e5571a6f2fb803a57e0c16f423/) | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | ethereum | n/a | [`0x30fba4...e553e2`](./contracts/ethereum-1/0x30fba4a7ec8591f25b4d37fd79943a4bb6e553e2/) | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | ethereum | n/a | [`0x84e58d...5570b8`](./contracts/ethereum-1/0x84e58d8faa4e3b74d55d9fc762230f15d95570b8/) | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | ethereum | n/a | [`0x86b222...1ef538`](./contracts/ethereum-1/0x86b222d44ac6cc56e75b3df01fdad5dc371ef538/) | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | ethereum | n/a | [`0xba4eb3...26e9c6`](./contracts/ethereum-1/0xba4eb30f7f2e378249cf94e08f581e704326e9c6/) | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | ethereum | n/a | [`0xe20048...32f848`](./contracts/ethereum-1/0xe20048fa0f165a49b780dfa9a8caba845332f848/) | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | arbitrum | n/a | [`0x3533f0...baea10`](./contracts/arbitrum-42161/0x3533f05b2c54ce1c2321cfe3c6f693a3cbbaea10/) | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | arbitrum | n/a | [`0x5c36a0...cdb643`](./contracts/arbitrum-42161/0x5c36a0deab3531d29d848e684e8bdf5f81cdb643/) | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | arbitrum | n/a | [`0xae04e4...5a1f4a`](./contracts/arbitrum-42161/0xae04e4887cbf5f25c05ac1384bcd0b7e885a1f4a/) | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | arbitrum | n/a | [`0xf95441...34eedd`](./contracts/arbitrum-42161/0xf95441f348eb2fd3d5d82f9b7b961137a734eedd/) | ⚠️ Unaudited |
| Curve2TokenVault | unknown | ethereum | n/a | [`0xb1113c...d85172`](./contracts/ethereum-1/0xb1113cf888a019693b254da3d90f841072d85172/) | ⚠️ Unaudited |
| Curve2TokenVault | unknown | ethereum | n/a | [`0xd6aa58...89f021`](./contracts/ethereum-1/0xd6aa58cf21a0edb33375d6c0434b8bb5b589f021/) | ⚠️ Unaudited |
| EmptyProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x90c3c4...41a4ff`](./contracts/arbitrum-42161/0x90c3c405716b8ff965dc905c91eee82a0b41a4ff/); arbitrum `0xcfeaea...ef3ed5` | ⚠️ Unaudited |
| ERC1155Action | unknown | ethereum | n/a | 4 deployments: ethereum [`0x518885...79aa10`](./contracts/ethereum-1/0x51888550902159f2eb7c43b8589dbe975379aa10/); ethereum `0xbf12d7...75bfa5`; ethereum `0xffd753...a341c9`; arbitrum `0xde14d5...d2a939` | ⚠️ Unaudited |
| FinalRouterV3_Arbitrum | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1344a3...de0369`](./contracts/arbitrum-42161/0x1344a36a1b56144c3bc62e7757377d288fde0369/); arbitrum `0xc3209c...b03574` | ⚠️ Unaudited |
| FinalRouterV3_Arbitrum | adapter | arbitrum | n/a | 3 deployments: arbitrum [`0x1b3534...0292d7`](./contracts/arbitrum-42161/0x1b3534ca262343e57e837a351100a6db9e0292d7/); arbitrum `0x634a52...0d2cf7`; arbitrum `0xf3f7dd...c0dee7` | ⚠️ Unaudited |
| FinalRouterV3_Mainnet | adapter | ethereum | n/a | 2 deployments: ethereum [`0x15ce51...5b90fe`](./contracts/ethereum-1/0x15ce5192b844a7a45e13864ac9969dc4f95b90fe/); ethereum `0xfe2944...f6ea8e` | ⚠️ Unaudited |
| FinalV2Router | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1344a3...de0369`](./contracts/ethereum-1/0x1344a36a1b56144c3bc62e7757377d288fde0369/); ethereum `0x5c424c...e8923f` | ⚠️ Unaudited |
| FlashLiquidator | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0a058e...ed3e76`](./contracts/ethereum-1/0x0a058e89b904a701063fec9d0e770ba087ed3e76/); ethereum `0x7e9819...195493`; ethereum `0x9bfc1c...f64395`; arbitrum `0x326746...1e2ce1`; arbitrum `0x48a18d...120fd6` | ⚠️ Unaudited |
| FreeCollateralExternal | unknown | ethereum | n/a | 3 deployments: ethereum [`0x422a2e...59bb6a`](./contracts/ethereum-1/0x422a2e95009f11e9e144fe7fd1a7c7a9c759bb6a/); ethereum `0xea7aa6...c6fdf7`; arbitrum `0x72ec9d...940d4e` | ⚠️ Unaudited |
| GenericERC20WithdrawRequestManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2d8295...2a936c`](./contracts/ethereum-1/0x2d8295b1c42d9055596d5a5f4c6429baf02a936c/); ethereum `0xe854ce...d1d0ff` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x02479b...cb0909`](./contracts/ethereum-1/0x02479bfc7dce53a02e26fe7baea45a0852cb0909/) | ⚠️ Unaudited |
| GovernanceAction | unknown | arbitrum | n/a | 3 deployments: ethereum `0x514f95...64690f`; ethereum `0xd2b104...34253d`; arbitrum [`0x10aae3...c0f51d`](./contracts/arbitrum-42161/0x10aae34011c256a9e63ab5ac50154c2539c0f51d/) | ⚠️ Unaudited |
| GovernorAlpha | unknown | ethereum | n/a | [`0x086b4e...06d7cb`](./contracts/ethereum-1/0x086b4ecd75c494dd36641195e89c25373e06d7cb/) | ⚠️ Unaudited |
| InfiniFiOracle | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7ee5ff...f151f6`](./contracts/ethereum-1/0x7ee5ffa27debf9f94e00dac79bc498ea98f151f6/); ethereum `0xb3b111...e14761`; ethereum `0xbecf0e...8d2d79` | ⚠️ Unaudited |
| InfiniFiWithdrawRequestManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x46c423...3a9898`](./contracts/ethereum-1/0x46c423e27e88c002c3643e332d8f62b7513a9898/); ethereum `0x49b194...da20ec` | ⚠️ Unaudited |
| InfiniFiWithdrawRequestManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x955580...24c133`](./contracts/ethereum-1/0x955580c99a4c64055e8cb592d1e471f72c24c133/); ethereum `0xf72c1c...b79348` | ⚠️ Unaudited |
| InitializeMarketsAction | unknown | ethereum | n/a | 6 deployments: ethereum [`0x280dec...16f423`](./contracts/ethereum-1/0x280decd520da16e5571a6f2fb803a57e0c16f423/); ethereum `0x6a3516...26881f`; ethereum `0x884b74...45c893`; ethereum `0xa44a87...ff6c71`; ethereum `0xf35431...2f6a09`; arbitrum `0x422a2e...59bb6a` | ⚠️ Unaudited |
| LeveragedNTokenAdapter | adapter | ethereum | n/a | [`0x25ee01...64cfcf`](./contracts/ethereum-1/0x25ee011b6af5537ecd520f40ca759899a064cfcf/) | ⚠️ Unaudited |
| LiquidateCurrencyAction | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0ff45f...7284b0`](./contracts/ethereum-1/0x0ff45fd2ad282b7e6e29dc10dbe6b3fc907284b0/); ethereum `0x3abbd5...68a0b2`; ethereum `0x6b986a...392ce7`; ethereum `0x885d3d...7181a6`; arbitrum `0xdfb618...86832f` | ⚠️ Unaudited |
| LiquidatefCashAction | unknown | arbitrum | n/a | 3 deployments: ethereum `0xb12b08...d8ed70`; ethereum `0xf38a93...16a800`; arbitrum [`0x1c5107...6e4332`](./contracts/arbitrum-42161/0x1c510763432c0e65d86f313612d4e1e2d26e4332/) | ⚠️ Unaudited |
| MidasOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3cda35...914e5d`](./contracts/ethereum-1/0x3cda3599cfe80ea1c74d6d77a5857ada83914e5d/); ethereum `0xde9b77...7dcd6c` | ⚠️ Unaudited |
| MidasStakingStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x091356...9dd673`](./contracts/ethereum-1/0x091356e6793a0d960174eaab4d470e39a99dd673/); ethereum `0x780e28...48deaa` | ⚠️ Unaudited |
| MidasStakingStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2a5c94...092ce4`](./contracts/ethereum-1/0x2a5c94fe8fa6c0c8d2a87e5c71ad628caa092ce4/); ethereum `0x3519ba...da467d` | ⚠️ Unaudited |
| MidasStakingStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x496135...7f4ad0`](./contracts/ethereum-1/0x496135b4421304872974cc0c01c5f0e59b7f4ad0/); ethereum `0xb9cd42...4f5d42` | ⚠️ Unaudited |
| MidasStakingStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x769720...b17fa4`](./contracts/ethereum-1/0x7697202a29acd384c889f879dfbffb6dcab17fa4/); ethereum `0x94f6cb...ec7e6e` | ⚠️ Unaudited |
| MidasWithdrawRequestManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x18f866...4ec10f`](./contracts/ethereum-1/0x18f86644781fc9f7b4641d371f377c96744ec10f/); ethereum `0x6e4471...bacdb0` | ⚠️ Unaudited |
| MidasWithdrawRequestManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe4ebb6...da7268`](./contracts/ethereum-1/0xe4ebb6ea270a70491c3af06376a5862a0fda7268/); ethereum `0xefb950...341014` | ⚠️ Unaudited |
| MigrateIncentives | unknown | arbitrum | n/a | [`0x6085b0...d1e29b`](./contracts/arbitrum-42161/0x6085b0a8f4c7ffa2e8ca578037792d6535d1e29b/) | ⚠️ Unaudited |
| NoteERC20 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x95df7e...bd6ba3`](./contracts/ethereum-1/0x95df7e34403becd532f2be160cacda56f0bd6ba3/); ethereum `0xcfeaea...ef3ed5` | ⚠️ Unaudited |
| nTokenAction | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1cd33f...a3c93a`](./contracts/ethereum-1/0x1cd33f81420bfce8a3622dc56bbd617b7fa3c93a/); ethereum `0x3533f0...baea10`; arbitrum `0x662f1b...975526` | ⚠️ Unaudited |
| nTokenERC20Proxy | unknown | ethereum | n/a | [`0xeb2577...fd8ec5`](./contracts/ethereum-1/0xeb2577109a7c636f0e65b75d2c1cb55a54fd8ec5/) | ⚠️ Unaudited |
| nTokenERC20Proxy | token | arbitrum | n/a | 9 deployments: arbitrum [`0x06d45e...37619a`](./contracts/arbitrum-42161/0x06d45ef1f8b3c37b0de66f156b11f10b4837619a/); arbitrum `0x0f13fb...986adc`; arbitrum `0x18b0fc...305a29`; arbitrum `0x2c4294...c9216f`; arbitrum `0x52602a...7f99d6`; arbitrum `0x696336...8a2f57`; arbitrum `0x6f6603...d45b8f`; arbitrum `0x809b43...0773bb`; arbitrum `0x9c0fbb...27f442` | ⚠️ Unaudited |
| nTokenMintAction | unknown | ethereum | n/a | 7 deployments: ethereum [`0x0092a5...59707f`](./contracts/ethereum-1/0x0092a5552162f911ccf7f456e85f473ce259707f/); ethereum `0x0e01db...003573`; ethereum `0x380cdf...e1ff55`; ethereum `0x65c23f...13ca2e`; ethereum `0xe5ae18...432de7`; ethereum `0xf95441...34eedd`; arbitrum `0x086b4e...06d7cb` | ⚠️ Unaudited |
| nTokenRedeemAction | unknown | ethereum | n/a | 5 deployments: ethereum [`0x1c5107...6e4332`](./contracts/ethereum-1/0x1c510763432c0e65d86f313612d4e1e2d26e4332/); ethereum `0x2f77cd...7ceb92`; ethereum `0x91b79f...bc8010`; ethereum `0xce3f1d...7a48d4`; arbitrum `0x95df7e...bd6ba3` | ⚠️ Unaudited |
| nwToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0f12b8...960187`](./contracts/ethereum-1/0x0f12b85a331acb515e1626f707aade62e9960187/); ethereum `0x24b5ff...1e40f7` | ⚠️ Unaudited |
| nwToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x47b320...038640`](./contracts/ethereum-1/0x47b320b42b9cbbe256010388c97acd88f5038640/); ethereum `0xaac514...965c9c` | ⚠️ Unaudited |
| nwToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0xba43bf...3cdde0`](./contracts/ethereum-1/0xba43bf371a615ffabc215596b4212628833cdde0/); ethereum `0xdbbb03...fa24d5` | ⚠️ Unaudited |
| nwToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc91864...fb492a`](./contracts/ethereum-1/0xc91864be1b097c9c85565cdb013ba2307ffb492a/); ethereum `0xe8f28c...6e929b` | ⚠️ Unaudited |
| OriginWithdrawRequestManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0bc6d6...bb7251`](./contracts/ethereum-1/0x0bc6d6c4f7ca318c07de9ce75bbad6cc0fbb7251/); ethereum `0x59aa04...64b9fb` | ⚠️ Unaudited |
| PauseAdmin | unknown | ethereum | n/a | 2 deployments: ethereum [`0x078dc7...969d08`](./contracts/ethereum-1/0x078dc7e61b410e461328aba0022197ea6a969d08/); ethereum `0xee8086...0fba0d` | ⚠️ Unaudited |
| PauseRouter | unknown | arbitrum | n/a | [`0x6b986a...392ce7`](./contracts/arbitrum-42161/0x6b986a60216aca687457782adfa0b002ad392ce7/) | ⚠️ Unaudited |
| PendlePTGeneric | unknown | ethereum | n/a | [`0x5fc3fc...00e1dd`](./contracts/ethereum-1/0x5fc3fc6263b16f665d78075784f5a6abed00e1dd/) | ⚠️ Unaudited |
| PendlePTGeneric | unknown | ethereum | n/a | [`0xc87a90...7296b0`](./contracts/ethereum-1/0xc87a900078f04c45b7f14e46c520d4a6f37296b0/) | ⚠️ Unaudited |
| PendlePTGeneric | unknown | ethereum | n/a | [`0xe47d15...3c282b`](./contracts/ethereum-1/0xe47d1584a6dbb98cc889bb1c9cbe5387173c282b/) | ⚠️ Unaudited |
| PendlePTGeneric | unknown | arbitrum | n/a | [`0x851a28...49c7f3`](./contracts/arbitrum-42161/0x851a28260227f9a8e6bf39a5fa3b5132fa49c7f3/) | ⚠️ Unaudited |
| PendlePTGeneric | unknown | arbitrum | n/a | [`0x878c46...940b12`](./contracts/arbitrum-42161/0x878c46978ac67e43d9d27e510f98e087e9940b12/) | ⚠️ Unaudited |
| PrimeCashProxy | unknown | arbitrum | n/a | 14 deployments: arbitrum [`0x051961...f75db7`](./contracts/arbitrum-42161/0x0519614643a019feb53b9f2c395b243253f75db7/); arbitrum `0x0ace2d...93b886`; arbitrum `0x1fd865...85d3aa`; arbitrum `0x63ffcf...c40650`; arbitrum `0x6d13d3...ed73c4`; arbitrum `0x6f28ca...e0f53d`; arbitrum `0x8652de...8febcc`; arbitrum `0x866eb0...840385`; arbitrum `0xa135d7...cf56bf`; arbitrum `0xabc07b...1b90d6`; arbitrum `0xb9bfbb...463192`; arbitrum `0xbc323e...402d6b`; arbitrum `0xd63ace...8081ac`; arbitrum `0xef3f53...9f547a` | ⚠️ Unaudited |
| PrimeDebtProxy | unknown | arbitrum | n/a | 14 deployments: arbitrum [`0x2ddb08...e8e5dd`](./contracts/arbitrum-42161/0x2ddb08f2757909537bdf2d2eb2bd4f7a64e8e5dd/); arbitrum `0x3482db...88e707`; arbitrum `0x4068a4...673efe`; arbitrum `0x41be01...a3ba90`; arbitrum `0x452f5c...04cc56`; arbitrum `0x4ee657...92e081`; arbitrum `0x65ea9a...159a6c`; arbitrum `0x692749...46eaa0`; arbitrum `0x6ebce2...231818`; arbitrum `0x7366d1...5d13b3`; arbitrum `0xc12d27...9ff958`; arbitrum `0xc3882b...dd5d75`; arbitrum `0xc9c5e5...665ea3`; arbitrum `0xfbd9e8...644b56` | ⚠️ Unaudited |
| RebalanceHelper | periphery | arbitrum | n/a | [`0x366d5b...6b178f`](./contracts/arbitrum-42161/0x366d5b255d97c5fee2283561bd89fce5566b178f/) | ⚠️ Unaudited |
| Router | unknown | ethereum | n/a | 16 deployments: ethereum [`0x0158fc...b888db`](./contracts/ethereum-1/0x0158fc072ff5dde8f7b9e2d00e8782093db888db/); ethereum `0x123fca...5aa7e4`; ethereum `0x16ed13...189962`; ethereum `0x19152d...392b23`; ethereum `0x2c67b0...e981e0`; ethereum `0x2cc280...031cb0`; ethereum `0x3da72a...1ee555`; ethereum `0x42c74c...f6fb23`; ethereum `0x587843...1f96ca`; ethereum `0x878c46...940b12`; ethereum `0x9a419c...c2e0bd`; ethereum `0xd7c3dc...dd1937`; ethereum `0xed1546...23f4b0`; ethereum `0xfab3b2...15eaad`; ethereum `0xfea323...e9fa0a`; arbitrum `0xb12b08...d8ed70` | ⚠️ Unaudited |
| SettleAssetsExternal | unknown | arbitrum | n/a | 3 deployments: ethereum `0xb15167...126e49`; ethereum `0xe10836...a44b21`; arbitrum [`0xa40aed...7f1dd4`](./contracts/arbitrum-42161/0xa40aedaac28f9574124d7c8eff59732cc77f1dd4/) | ⚠️ Unaudited |
| StakingStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0409d3...206a3e`](./contracts/ethereum-1/0x0409d36ba4bad176ed62a97faf05253b6b206a3e/); ethereum `0xa9f31d...2e9b31` | ⚠️ Unaudited |
| StakingStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2838f9...5135ba`](./contracts/ethereum-1/0x2838f999c23b480324314ac8d0c1f84d795135ba/); ethereum `0xaf14d0...d9c48b` | ⚠️ Unaudited |
| StakingStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x48ba5c...002dab`](./contracts/ethereum-1/0x48ba5c2ef57b45de7736345f7f4db67818002dab/); ethereum `0x9fb579...b465e0` | ⚠️ Unaudited |
| StakingStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4eed2b...767d93`](./contracts/ethereum-1/0x4eed2b20f63e3bc38e804535982f8c70a6767d93/); ethereum `0x7f723f...a7d5ae` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0x019be2...bc7bc1`](./contracts/arbitrum-42161/0x019be259bc299f3f653688c7655c87f998bc7bc1/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | 2 deployments: ethereum [`0x375eaf...643235`](./contracts/ethereum-1/0x375eafe4348c6aa851cdfa5f84ec268f73643235/); ethereum `0xad2078...75416b` | ⚠️ Unaudited |
| TradingAction | unknown | ethereum | n/a | 6 deployments: ethereum [`0x111a2f...3cc5d7`](./contracts/ethereum-1/0x111a2f8b843b7a20d9b1a2535c837e6cc23cc5d7/); ethereum `0x5c36a0...cdb643`; ethereum `0x662f1b...975526`; ethereum `0xcac9c0...e97e68`; ethereum `0xf6b306...10761a`; arbitrum `0xca2848...b89b90` | ⚠️ Unaudited |
| TreasuryAction | unknown | arbitrum | n/a | [`0x1cd33f...a3c93a`](./contracts/arbitrum-42161/0x1cd33f81420bfce8a3622dc56bbd617b7fa3c93a/) | ⚠️ Unaudited |
| TreasuryManager | unknown | arbitrum | n/a | 3 deployments: ethereum `0xe728ea...3b07b7`; ethereum `0xe801b5...ec5b0a`; arbitrum [`0x92dc86...58a560`](./contracts/arbitrum-42161/0x92dc86b93fb564131aa6f961a98465355d58a560/) | ⚠️ Unaudited |
| VaultAccountAction | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1a751c...db1a78`](./contracts/ethereum-1/0x1a751cd714910929017ce1417ead6d0732db1a78/); ethereum `0x602f8e...68090b`; ethereum `0x8d3d71...b92cbd`; ethereum `0x941460...2b3c04`; ethereum `0xf8b25d...06021a`; arbitrum `0xabd096...f1b488` | ⚠️ Unaudited |
| VaultAccountHealth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7d7646...b87052`](./contracts/ethereum-1/0x7d764650690e60a7a6647f2d12708f8434b87052/); arbitrum `0xffd753...a341c9` | ⚠️ Unaudited |
| VaultAction | unknown | arbitrum | n/a | 4 deployments: ethereum `0x67e5f0...31aa75`; ethereum `0xae04e4...5a1f4a`; ethereum `0xd16273...4655f4`; arbitrum [`0x63757f...efcb93`](./contracts/arbitrum-42161/0x63757f772b8aab66f4de09617e8f257249efcb93/) | ⚠️ Unaudited |
| VaultLiquidationAction | unknown | ethereum | n/a | 2 deployments: ethereum [`0x49d0e9...cff50c`](./contracts/ethereum-1/0x49d0e97ba2f4cf0e5e4f86c0d9c5c8acbacff50c/); arbitrum `0x5f11e9...b0227e` | ⚠️ Unaudited |
| Views | unknown | ethereum | n/a | 2 deployments: ethereum [`0x54bb21...e30a97`](./contracts/ethereum-1/0x54bb219281fe0eef1483bc4421e6502fe1e30a97/); ethereum `0xfebc56...f3dd1b` | ⚠️ Unaudited |
| Views | unknown | arbitrum | n/a | 2 deployments: ethereum `0xde14d5...d2a939`; arbitrum [`0xb15167...126e49`](./contracts/arbitrum-42161/0xb15167fff26202aa3d20ecfd7f46a34fa4126e49/) | ⚠️ Unaudited |
| WrappedfCashFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5d051d...e27261`](./contracts/ethereum-1/0x5d051deb5db151c2172dcdccd42e6a2953e27261/); arbitrum [`0x5d051d...e27261`](./contracts/arbitrum-42161/0x5d051deb5db151c2172dcdccd42e6a2953e27261/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x5b3dd2...0095d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69e7f6...f0037b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72ec9d...940d4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90c3c4...41a4ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2763a...7b03b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc38170...a21e1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x68225f...bc76b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdbbb03...fa24d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1dfc2...7dca3d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025.07.18 - Final - Notional Exponent Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.07.18%20-%20Final%20-%20Notional%20Exponent%20Audit%20Report.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | contract_name | 7 | n/a |
| [2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf](https://sherlock-files.ams3.digitaloceanspaces.com/reports/2026.01.17%20-%20Final%20-%20Notional%20Collaborative%20Audit%20Report%201768611627.pdf) | Sherlock | Contest | 2026-01 | fresh | Direct | contract_name | 2 | n/a |
| [Audit_Report.pdf](https://github.com/sherlock-audit/2022-09-notional-judging/blob/main/Audit_Report.pdf) | Sherlock | Contest | 2022-09 | stale | Direct | contract_name | 5 | high |
| [2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.03.06%20-%20Final%20-%20Notional%20Collaborative%20Audit%20Report%201772819509.pdf) | Sherlock | Contest | 2026-03 | fresh | Direct | contract_name | 1 | n/a |
| [www.openzeppelin.com/news/notional-audit](https://www.openzeppelin.com/news/notional-audit) | OpenZeppelin | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |
| [audits.sherlock.xyz/contests/59](https://audits.sherlock.xyz/contests/59) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Notional v4 Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Notional%20Finance/Notional%20v4/Notional%20v4%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | contract_name | 7 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5f11e9...b0227e`](./contracts/ethereum-1/0x5f11e94e0a69ac8490f45eb27a6478dcddb0227e/) | AccountAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe335d3...63ec95`](./contracts/ethereum-1/0xe335d314bd4ef7dd44f103dc124fefb7ce63ec95/) | AddressRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0092a5...59707f`](./contracts/arbitrum-42161/0x0092a5552162f911ccf7f456e85f473ce259707f/) | BatchAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x280dec...16f423`](./contracts/arbitrum-42161/0x280decd520da16e5571a6f2fb803a57e0c16f423/) | CalculationViews | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x90c3c4...41a4ff`](./contracts/arbitrum-42161/0x90c3c405716b8ff965dc905c91eee82a0b41a4ff/) | EmptyProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x518885...79aa10`](./contracts/ethereum-1/0x51888550902159f2eb7c43b8589dbe975379aa10/) | ERC1155Action | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1344a3...de0369`](./contracts/arbitrum-42161/0x1344a36a1b56144c3bc62e7757377d288fde0369/) | FinalRouterV3_Arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1b3534...0292d7`](./contracts/arbitrum-42161/0x1b3534ca262343e57e837a351100a6db9e0292d7/) | FinalRouterV3_Arbitrum | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15ce51...5b90fe`](./contracts/ethereum-1/0x15ce5192b844a7a45e13864ac9969dc4f95b90fe/) | FinalRouterV3_Mainnet | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1344a3...de0369`](./contracts/ethereum-1/0x1344a36a1b56144c3bc62e7757377d288fde0369/) | FinalV2Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a058e...ed3e76`](./contracts/ethereum-1/0x0a058e89b904a701063fec9d0e770ba087ed3e76/) | FlashLiquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x422a2e...59bb6a`](./contracts/ethereum-1/0x422a2e95009f11e9e144fe7fd1a7c7a9c759bb6a/) | FreeCollateralExternal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d8295...2a936c`](./contracts/ethereum-1/0x2d8295b1c42d9055596d5a5f4c6429baf02a936c/) | GenericERC20WithdrawRequestManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x10aae3...c0f51d`](./contracts/arbitrum-42161/0x10aae34011c256a9e63ab5ac50154c2539c0f51d/) | GovernanceAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x086b4e...06d7cb`](./contracts/ethereum-1/0x086b4ecd75c494dd36641195e89c25373e06d7cb/) | GovernorAlpha | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ee5ff...f151f6`](./contracts/ethereum-1/0x7ee5ffa27debf9f94e00dac79bc498ea98f151f6/) | InfiniFiOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46c423...3a9898`](./contracts/ethereum-1/0x46c423e27e88c002c3643e332d8f62b7513a9898/) | InfiniFiWithdrawRequestManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x955580...24c133`](./contracts/ethereum-1/0x955580c99a4c64055e8cb592d1e471f72c24c133/) | InfiniFiWithdrawRequestManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x280dec...16f423`](./contracts/ethereum-1/0x280decd520da16e5571a6f2fb803a57e0c16f423/) | InitializeMarketsAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25ee01...64cfcf`](./contracts/ethereum-1/0x25ee011b6af5537ecd520f40ca759899a064cfcf/) | LeveragedNTokenAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ff45f...7284b0`](./contracts/ethereum-1/0x0ff45fd2ad282b7e6e29dc10dbe6b3fc907284b0/) | LiquidateCurrencyAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1c5107...6e4332`](./contracts/arbitrum-42161/0x1c510763432c0e65d86f313612d4e1e2d26e4332/) | LiquidatefCashAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3cda35...914e5d`](./contracts/ethereum-1/0x3cda3599cfe80ea1c74d6d77a5857ada83914e5d/) | MidasOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x091356...9dd673`](./contracts/ethereum-1/0x091356e6793a0d960174eaab4d470e39a99dd673/) | MidasStakingStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a5c94...092ce4`](./contracts/ethereum-1/0x2a5c94fe8fa6c0c8d2a87e5c71ad628caa092ce4/) | MidasStakingStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x496135...7f4ad0`](./contracts/ethereum-1/0x496135b4421304872974cc0c01c5f0e59b7f4ad0/) | MidasStakingStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x769720...b17fa4`](./contracts/ethereum-1/0x7697202a29acd384c889f879dfbffb6dcab17fa4/) | MidasStakingStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18f866...4ec10f`](./contracts/ethereum-1/0x18f86644781fc9f7b4641d371f377c96744ec10f/) | MidasWithdrawRequestManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe4ebb6...da7268`](./contracts/ethereum-1/0xe4ebb6ea270a70491c3af06376a5862a0fda7268/) | MidasWithdrawRequestManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6085b0...d1e29b`](./contracts/arbitrum-42161/0x6085b0a8f4c7ffa2e8ca578037792d6535d1e29b/) | MigrateIncentives | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95df7e...bd6ba3`](./contracts/ethereum-1/0x95df7e34403becd532f2be160cacda56f0bd6ba3/) | NoteERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cd33f...a3c93a`](./contracts/ethereum-1/0x1cd33f81420bfce8a3622dc56bbd617b7fa3c93a/) | nTokenAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb2577...fd8ec5`](./contracts/ethereum-1/0xeb2577109a7c636f0e65b75d2c1cb55a54fd8ec5/) | nTokenERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x06d45e...37619a`](./contracts/arbitrum-42161/0x06d45ef1f8b3c37b0de66f156b11f10b4837619a/) | nTokenERC20Proxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0092a5...59707f`](./contracts/ethereum-1/0x0092a5552162f911ccf7f456e85f473ce259707f/) | nTokenMintAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c5107...6e4332`](./contracts/ethereum-1/0x1c510763432c0e65d86f313612d4e1e2d26e4332/) | nTokenRedeemAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f12b8...960187`](./contracts/ethereum-1/0x0f12b85a331acb515e1626f707aade62e9960187/) | nwToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47b320...038640`](./contracts/ethereum-1/0x47b320b42b9cbbe256010388c97acd88f5038640/) | nwToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba43bf...3cdde0`](./contracts/ethereum-1/0xba43bf371a615ffabc215596b4212628833cdde0/) | nwToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc91864...fb492a`](./contracts/ethereum-1/0xc91864be1b097c9c85565cdb013ba2307ffb492a/) | nwToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bc6d6...bb7251`](./contracts/ethereum-1/0x0bc6d6c4f7ca318c07de9ce75bbad6cc0fbb7251/) | OriginWithdrawRequestManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x078dc7...969d08`](./contracts/ethereum-1/0x078dc7e61b410e461328aba0022197ea6a969d08/) | PauseAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6b986a...392ce7`](./contracts/arbitrum-42161/0x6b986a60216aca687457782adfa0b002ad392ce7/) | PauseRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x051961...f75db7`](./contracts/arbitrum-42161/0x0519614643a019feb53b9f2c395b243253f75db7/) | PrimeCashProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2ddb08...e8e5dd`](./contracts/arbitrum-42161/0x2ddb08f2757909537bdf2d2eb2bd4f7a64e8e5dd/) | PrimeDebtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x366d5b...6b178f`](./contracts/arbitrum-42161/0x366d5b255d97c5fee2283561bd89fce5566b178f/) | RebalanceHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0158fc...b888db`](./contracts/ethereum-1/0x0158fc072ff5dde8f7b9e2d00e8782093db888db/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa40aed...7f1dd4`](./contracts/arbitrum-42161/0xa40aedaac28f9574124d7c8eff59732cc77f1dd4/) | SettleAssetsExternal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0409d3...206a3e`](./contracts/ethereum-1/0x0409d36ba4bad176ed62a97faf05253b6b206a3e/) | StakingStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2838f9...5135ba`](./contracts/ethereum-1/0x2838f999c23b480324314ac8d0c1f84d795135ba/) | StakingStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48ba5c...002dab`](./contracts/ethereum-1/0x48ba5c2ef57b45de7736345f7f4db67818002dab/) | StakingStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4eed2b...767d93`](./contracts/ethereum-1/0x4eed2b20f63e3bc38e804535982f8c70a6767d93/) | StakingStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x019be2...bc7bc1`](./contracts/arbitrum-42161/0x019be259bc299f3f653688c7655c87f998bc7bc1/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x111a2f...3cc5d7`](./contracts/ethereum-1/0x111a2f8b843b7a20d9b1a2535c837e6cc23cc5d7/) | TradingAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1cd33f...a3c93a`](./contracts/arbitrum-42161/0x1cd33f81420bfce8a3622dc56bbd617b7fa3c93a/) | TreasuryAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x92dc86...58a560`](./contracts/arbitrum-42161/0x92dc86b93fb564131aa6f961a98465355d58a560/) | TreasuryManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a751c...db1a78`](./contracts/ethereum-1/0x1a751cd714910929017ce1417ead6d0732db1a78/) | VaultAccountAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d7646...b87052`](./contracts/ethereum-1/0x7d764650690e60a7a6647f2d12708f8434b87052/) | VaultAccountHealth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x63757f...efcb93`](./contracts/arbitrum-42161/0x63757f772b8aab66f4de09617e8f257249efcb93/) | VaultAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49d0e9...cff50c`](./contracts/ethereum-1/0x49d0e97ba2f4cf0e5e4f86c0d9c5c8acbacff50c/) | VaultLiquidationAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54bb21...e30a97`](./contracts/ethereum-1/0x54bb219281fe0eef1483bc4421e6502fe1e30a97/) | Views | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb15167...126e49`](./contracts/arbitrum-42161/0xb15167fff26202aa3d20ecfd7f46a34fa4126e49/) | Views | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d051d...e27261`](./contracts/ethereum-1/0x5d051deb5db151c2172dcdccd42e6a2953e27261/) | WrappedfCashFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 68 |
| upstream | 28 |
| standard_library | 2 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=17, extraction_exact=5

Zero-match audit list:

- [2733] www.openzeppelin.com/news/notional-audit
- [2734] audits.sherlock.xyz/contests/59

Fork inheritance lineage and inherited audits are included when available.
