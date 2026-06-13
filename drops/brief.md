# Agentic Audit Brief: Drops

⚠️ Lifecycle status: DECLINING - TVL changed 13.7% over 90 days

## Project Overview

- Project: Drops (`drops`)
- Website: [https://drops.co](https://drops.co)
- Lifecycle: declining (Tier 0, 99.8% below peak)
- Generated: 2026-06-13T19:42:09.865Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-a865
- Chains: ethereum
- Contract surface: 85 unique implementations (255 raw deployments)
- DeFi Llama TVL: $2,790,252.23
- On-chain TVL (included contracts): $16,488,986.18
- TVL by chain: Ethereum $16,488,986.18

## Project Description

Drops is an Ethereum NFT and DeFi-asset lending protocol. Its contract surface includes Compound-style CErc20 and CEther liquidity markets for ERC20/ETH assets, CErc721 collateral markets for NFT-backed borrowing, and Unitroller/Comptroller risk-management components for market configuration, collateral, borrowing, and liquidation logic. Upgradeability should be described only for the relevant proxy-based components rather than as a pattern shared by all contracts.

### Architecture

The Drops family consists of multiple isolated lending pools, each with its own Unitroller proxy pointing to a Comptroller implementation that manages risk parameters and liquidations. CEther contracts serve as the interest-bearing receipt tokens for supplied ETH, while CErc721 variants handle NFT collateral, all sharing a common upgradeable proxy pattern.

## Audit Coverage Summary

- Verified implementations audited: 0/74 (0.0%)
- Verified + Unaudited implementations: 74
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 85
- Raw deployments: 255
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $16,488,986.18
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $16,488,986.18 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (74)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CErc20Immutable | token | ethereum | 32 deployments: ethereum [`0x0039fe...79013d`](./contracts/ethereum-1/0x0039fec5e1d91741e251d82d9e83859c8e79013d/); ethereum `0x03e1eb...21fa92`; ethereum `0x09dc75...758ebe`; ethereum `0x0a494b...a2d3b2`; ethereum `0x0eabea...26a2cc`; ethereum `0x140128...5b8920`; ethereum `0x28af5f...523b67`; ethereum `0x372489...3e3f5a`; ethereum `0x3bfe96...7f4d06`; ethereum `0x3fed9c...2e25e2`; ethereum `0x41b9db...25d198`; ethereum `0x54c312...a14793`; ethereum `0x5c8d6f...9cbbfd`; ethereum `0x67c06b...44a859`; ethereum `0x7489c6...1039f7`; ethereum `0x8486b5...65fbab`; ethereum `0x8b7cfb...383685`; ethereum `0x8f074d...9a0d77`; ethereum `0x92b9ca...962baf`; ethereum `0x985297...38dd03`; ethereum `0xaa0818...0d4683`; ethereum `0xb4f88d...e3c13a`; ethereum `0xbbfa20...c2fef2`; ethereum `0xbe8da6...1194ac`; ethereum `0xd4224b...39590e`; ethereum `0xdb6994...ab03be`; ethereum `0xdf55f9...f83198`; ethereum `0xe7d7b6...020674`; ethereum `0xf00de3...3daca7`; ethereum `0xf19e04...71c8df`; ethereum `0xfb0fce...956ecc`; ethereum `0xfba58f...05ec18` | ⚠️ Unaudited |
| NodeRunnersToken | token | ethereum | [`0x739763...55be53`](./contracts/ethereum-1/0x739763a258640919981f9ba610ae65492455be53/) | ⚠️ Unaudited |
| CErc20YearnDelegate | token | ethereum | 4 deployments: ethereum [`0x367144...f080ac`](./contracts/ethereum-1/0x367144a75577f7fbe80e69854046f6169ef080ac/); ethereum `0x72ab68...d87952`; ethereum `0xa3a1a7...bce7ec`; ethereum `0xf63f89...90e9cb` | ⚠️ Unaudited |
| NFTLiquidationG1 | token | ethereum | 7 deployments: ethereum [`0x113296...8562e3`](./contracts/ethereum-1/0x113296013d1d22c070381fd8a82a1ac3db8562e3/); ethereum `0x11ff91...b9b439`; ethereum `0x556664...7c5d95`; ethereum `0x6b7244...de6035`; ethereum `0xaa95c2...a23e23`; ethereum `0xdcbf67...d62041`; ethereum `0xfad844...175598` | ⚠️ Unaudited |
| AdvisoryTokenVesting | operational_periphery | ethereum | [`0x93532b...e94085`](./contracts/ethereum-1/0x93532bbda855716c2c16e77695589d78ffe94085/) | ⚠️ Unaudited |
| AmbassadorNFT | token | ethereum | 2 deployments: ethereum [`0x259c55...1a1858`](./contracts/ethereum-1/0x259c559181220b5cf4661c877caf3011941a1858/); ethereum `0x986010...c32846` | ⚠️ Unaudited |
| AuraLPMigration | operational_periphery | ethereum | 2 deployments: ethereum [`0x699382...31adbf`](./contracts/ethereum-1/0x699382d6f3d8bd7bb028d3d513907bc61231adbf/); ethereum `0x80d457...8d7bb1` | ⚠️ Unaudited |
| BridgedOracle | operational_periphery | ethereum | 12 deployments: ethereum [`0x1c26b3...5c0f08`](./contracts/ethereum-1/0x1c26b392cb3741fc0126d7d85d2ce5db8c5c0f08/); ethereum `0x24a57d...ebf7a7`; ethereum `0x2a5bbd...505498`; ethereum `0x4c46a9...0ee892`; ethereum `0x4d9b0b...6c21a6`; ethereum `0x79b994...19b5f6`; ethereum `0x90352f...3b7cfb`; ethereum `0x94eb0d...14cb46`; ethereum `0x967117...a2e575`; ethereum `0x97ffea...8fc47f`; ethereum `0xbb04b9...47f7a4`; ethereum `0xda12a2...7992e1` | ⚠️ Unaudited |
| BridgedOracleArtBlocks | operational_periphery | ethereum | 2 deployments: ethereum [`0x6734a1...23678d`](./contracts/ethereum-1/0x6734a196b66e21884c115f54dd7e28ee5c23678d/); ethereum `0xfde765...9bc2c6` | ⚠️ Unaudited |
| CErc20AuraDelegate | token | ethereum | 3 deployments: ethereum [`0x04a083...f7a7e7`](./contracts/ethereum-1/0x04a083c48eaac049964129e5a3ef7d48e0f7a7e7/); ethereum `0x1a8483...b6207e`; ethereum `0xa2edfd...dc19a8` | ⚠️ Unaudited |
| CErc20gOHMDelegate | token | ethereum | 2 deployments: ethereum [`0x6020d8...729bf6`](./contracts/ethereum-1/0x6020d8630dd312748023b5d0263a49f5de729bf6/); ethereum `0xb97a79...3ebca3` | ⚠️ Unaudited |
| CErc721ArtBlocksDelegate | token | ethereum | 2 deployments: ethereum [`0x30c402...2a82f5`](./contracts/ethereum-1/0x30c40201f7af91c1b1eef6c7b4504669602a82f5/); ethereum `0x58ff25...d63676` | ⚠️ Unaudited |
| CErc721ArtBlocksDelegator | token | ethereum | 2 deployments: ethereum [`0x21897f...376b00`](./contracts/ethereum-1/0x21897f9694d94f7f3ddcf60fd32b14db55376b00/); ethereum `0xef8f2d...92bb80` | ⚠️ Unaudited |
| CErc721Immutable | token | ethereum | 6 deployments: ethereum [`0x5f5df5...7ed23b`](./contracts/ethereum-1/0x5f5df50c011d527e19e50b1eac8a18e7827ed23b/); ethereum `0x8c1cfa...a7578f`; ethereum `0xd0f97b...3855be`; ethereum `0xd56c42...470179`; ethereum `0xdf6602...0cf645`; ethereum `0xf6dc34...98415b` | ⚠️ Unaudited |
| CErc721MoonbirdDelegate | token | ethereum | 2 deployments: ethereum [`0x397d11...e7c85b`](./contracts/ethereum-1/0x397d11f822578b37b10582db5bceb43bf6e7c85b/); ethereum `0xac2d3e...133228` | ⚠️ Unaudited |
| CErc721NoSupplyDelegate | token | ethereum | 2 deployments: ethereum [`0x9a045b...db4db4`](./contracts/ethereum-1/0x9a045b76beb1713f4bc5e28a2747d1d484db4db4/); ethereum `0xdb05d1...b773b0` | ⚠️ Unaudited |
| CErc721SandboxDelegate | token | ethereum | 2 deployments: ethereum [`0x518851...afc290`](./contracts/ethereum-1/0x5188510a48e8f716e80338c2a2ad4fc415afc290/); ethereum `0xb630f9...235ff2` | ⚠️ Unaudited |
| CErc721SandboxDelegator | token | ethereum | [`0x3d6013...ba07ca`](./contracts/ethereum-1/0x3d60134fa81876f5afbad18a7520aa8596ba07ca/) | ⚠️ Unaudited |
| CErc721V2Delegate | token | ethereum | 32 deployments: ethereum [`0x109d97...3e7c97`](./contracts/ethereum-1/0x109d97019eda5e32b31cd995ba3d29fc5a3e7c97/); ethereum `0x3786f8...5608fe`; ethereum `0x397a7e...5db896`; ethereum `0x432449...40fa1a`; ethereum `0x47919d...03daee`; ethereum `0x550a4a...385c1b`; ethereum `0x57789a...a94727`; ethereum `0x5a5d79...3a63d7`; ethereum `0x5c2cba...b444e0`; ethereum `0x5ce3d9...8bf2f0`; ethereum `0x5daabd...97cee4`; ethereum `0x65da0a...2c33be`; ethereum `0x69de3c...c93e23`; ethereum `0x6d2527...4d0854`; ethereum `0x777a91...e0fbb6`; ethereum `0x780f46...793dff`; ethereum `0x7da479...6f9591`; ethereum `0x833553...f9d99c`; ethereum `0x8d39b0...195d50`; ethereum `0x9a4c75...d69430`; ethereum `0xb49655...2283ba`; ethereum `0xb589a8...8718c4`; ethereum `0xc3d8e1...23b59a`; ethereum `0xce072a...88ec57`; ethereum `0xcfc8af...a96e83`; ethereum `0xda8c97...07b93d`; ethereum `0xe3c458...98d392`; ethereum `0xe63d39...22dec0`; ethereum `0xe751e2...ccdd3e`; ethereum `0xe9e374...506966`; ethereum `0xedafa6...ee8513`; ethereum `0xf1c97d...26cf99` | ⚠️ Unaudited |
| CEther | unknown | ethereum | 8 deployments: ethereum [`0x052319...6eb95b`](./contracts/ethereum-1/0x05231980914b702083b9ac08002325654f6eb95b/); ethereum `0x0a1ef7...d2fd9c`; ethereum `0x4ae741...f0e411`; ethereum `0x588c13...fee086`; ethereum `0x6b2a9d...cb2140`; ethereum `0x777ecc...2619a0`; ethereum `0xa56131...f3141b`; ethereum `0xd72929...ccb339` | ⚠️ Unaudited |
| CompoundLens | periphery | ethereum | [`0x460dc2...1f1eca`](./contracts/ethereum-1/0x460dc2778951b6e1743aaa95cf313fdfd61f1eca/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | 5 deployments: ethereum [`0x48e29b...d14abb`](./contracts/ethereum-1/0x48e29b9ddbf3fe6380d7d1ec5b415e97afd14abb/); ethereum `0x65a32c...02456b`; ethereum `0x7674cc...915a00`; ethereum `0xb81167...011d63`; ethereum `0xd9c86d...20902e` | ⚠️ Unaudited |
| ComptrollerG1 | unknown | ethereum | 3 deployments: ethereum [`0x69cb56...b6bcdc`](./contracts/ethereum-1/0x69cb567ace32c016ca6a389fef8fcee55ab6bcdc/); ethereum `0x79b56c...f96206`; ethereum `0xcec075...07596c` | ⚠️ Unaudited |
| ComptrollerG2 | unknown | ethereum | 3 deployments: ethereum [`0x3903e6...1f81c6`](./contracts/ethereum-1/0x3903e6ecd8bc610d5a01061b1dc31affd21f81c6/); ethereum `0x7312a3...fcde7f`; ethereum `0xbe1417...ea949d` | ⚠️ Unaudited |
| ComptrollerG3 | unknown | ethereum | [`0x1e50db...9aff6e`](./contracts/ethereum-1/0x1e50dbce6c928888a80046ccace7c2a5fd9aff6e/) | ⚠️ Unaudited |
| ComptrollerG3LiquidationMain | unknown | ethereum | 3 deployments: ethereum [`0x502806...811b40`](./contracts/ethereum-1/0x50280672f1734893895f1aeb7d7db7bc1b811b40/); ethereum `0xb70fb6...6ee2f5`; ethereum `0xe99ef1...8eb43a` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP2 | unknown | ethereum | [`0x5ce326...4e1da8`](./contracts/ethereum-1/0x5ce3269a34741c67c6a364b7312f80dd984e1da8/) | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP3 | unknown | ethereum | [`0x32e417...3e89c9`](./contracts/ethereum-1/0x32e41714dcce1c4be08cc1e896bbca56f93e89c9/) | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP4 | unknown | ethereum | [`0x42b747...ee0f3d`](./contracts/ethereum-1/0x42b747330b97b042b85ba5fbf3348e7966ee0f3d/) | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP5 | unknown | ethereum | 2 deployments: ethereum [`0x896b80...361e8b`](./contracts/ethereum-1/0x896b8019f5ea3caaab23cda0a09b405ed8361e8b/); ethereum `0x9ed0dc...d3b5d2` | ⚠️ Unaudited |
| ComptrollerG3Migration | operational_periphery | ethereum | 2 deployments: ethereum [`0x00635e...242571`](./contracts/ethereum-1/0x00635eeb0e3738e8a6d8c44a5dbdee32e0242571/); ethereum `0x9deb56...5f8bc7` | ⚠️ Unaudited |
| ComptrollerG3Paused | unknown | ethereum | [`0xb78bb3...6b98e4`](./contracts/ethereum-1/0xb78bb3068d16803c3d643d166b69f084f46b98e4/) | ⚠️ Unaudited |
| CTokenArtBlocksImmutable | token | ethereum | [`0xa7b06c...feb502`](./contracts/ethereum-1/0xa7b06c501e89a963ac9b33a41a571ad23ffeb502/) | ⚠️ Unaudited |
| CTokenMoonbirdImmutable | token | ethereum | 3 deployments: ethereum [`0x3cba08...5f899d`](./contracts/ethereum-1/0x3cba088c815319c2aa3ffcd4a1a48d078f5f899d/); ethereum `0x7bb678...bb2799`; ethereum `0xee2ed5...ea1fd5` | ⚠️ Unaudited |
| DAIInterestRateModelV3 | operational_periphery | ethereum | 2 deployments: ethereum [`0x08ffb4...f1f581`](./contracts/ethereum-1/0x08ffb4dee72b5abcb147c1f911cc75200bf1f581/); ethereum `0xc9c85e...6364eb` | ⚠️ Unaudited |
| Dop | unknown | ethereum | [`0x6bb612...1da2ef`](./contracts/ethereum-1/0x6bb61215298f296c55b19ad842d3df69021da2ef/) | ⚠️ Unaudited |
| DropsToken | token | ethereum | 2 deployments: ethereum [`0xc34568...02ce95`](./contracts/ethereum-1/0xc34568ae1f48db1fc9ba745e4fc614a7b402ce95/); ethereum `0xc80bf6...1e18ca` | ⚠️ Unaudited |
| ERC20CustomStaking | token | ethereum | 4 deployments: ethereum [`0x122402...b1892a`](./contracts/ethereum-1/0x122402df2f985f70277baf22ce9e67e2ceb1892a/); ethereum `0xb85337...580296`; ethereum `0xb9810c...f58ff2`; ethereum `0xc4b734...5d0262` | ⚠️ Unaudited |
| EthMenNftStaking | token | ethereum | [`0x8edc7c...6e85c1`](./contracts/ethereum-1/0x8edc7cdce7356f1fc9f498b1fa4a4b3c946e85c1/) | ⚠️ Unaudited |
| FinancialPunk | unknown | ethereum | [`0x458fcd...65ec95`](./contracts/ethereum-1/0x458fcd33ad32de55875578da8cf1248b8765ec95/) | ⚠️ Unaudited |
| FlashLoanProvider | unknown | ethereum | 6 deployments: ethereum [`0x677d18...a8a905`](./contracts/ethereum-1/0x677d18ab5cf3de962a88bff2945b69b1fba8a905/); ethereum `0x8cd5d2...4af7ac`; ethereum `0xcb19f0...778e49`; ethereum `0xcd3d61...bc3452`; ethereum `0xef6e27...6e6089`; ethereum `0xf2f600...9d7337` | ⚠️ Unaudited |
| FoundationTokenVesting | operational_periphery | ethereum | [`0xe5f10e...c4d7bb`](./contracts/ethereum-1/0xe5f10e1ab6c2cdc37476ec6c7460976c67c4d7bb/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0xcf67f2...d79e2d`](./contracts/ethereum-1/0xcf67f232ab46ea065052bbb3e34eee37bcd79e2d/) | ⚠️ Unaudited |
| GovernorAlpha | governance | ethereum | 4 deployments: ethereum [`0x3c194f...ade5f7`](./contracts/ethereum-1/0x3c194f3f36eceb630529adbe4ba4ed4210ade5f7/); ethereum `0x4936c7...571f79`; ethereum `0xd9113f...30fecc`; ethereum `0xff1858...e41986` | ⚠️ Unaudited |
| HashToken | token | ethereum | 2 deployments: ethereum [`0x300496...c305be`](./contracts/ethereum-1/0x300496a0352e2e302a3d6df66e66b08625c305be/); ethereum `0xf95bd3...b68e8c` | ⚠️ Unaudited |
| HeroFactory | registry | ethereum | [`0xe74e12...206c16`](./contracts/ethereum-1/0xe74e12e5b70346025e7fd95e68d6a6f8fd206c16/) | ⚠️ Unaudited |
| HeroStaking | unknown | ethereum | [`0x29326f...82da1e`](./contracts/ethereum-1/0x29326f9050be6df0ec285d55476df4906c82da1e/) | ⚠️ Unaudited |
| JumpRateModelV2 | operational_periphery | ethereum | 15 deployments: ethereum [`0x0177f9...8e532c`](./contracts/ethereum-1/0x0177f957ef65ec18ee59058ea0435a4b7e8e532c/); ethereum `0x23d760...fe0a31`; ethereum `0x3eec9c...b3f35d`; ethereum `0x432a4a...1f0b61`; ethereum `0x5134d4...b9863b`; ethereum `0x6ac9a6...a59e75`; ethereum `0x6c89a3...7172db`; ethereum `0x8866c3...e824e1`; ethereum `0x8edc55...a88dc0`; ethereum `0xb83372...3e5c02`; ethereum `0xc7fc03...b91ed2`; ethereum `0xd023a7...78ad4c`; ethereum `0xf5df66...8e4539`; ethereum `0xf724cd...f45d66`; ethereum `0xfac232...71aeb4` | ⚠️ Unaudited |
| LPStaking | unknown | ethereum | 3 deployments: ethereum [`0x0f5d42...98ce5d`](./contracts/ethereum-1/0x0f5d42b4837e27cc7a7f3a0c59d982ff5598ce5d/); ethereum `0x2c9274...2b22eb`; ethereum `0x7ece96...c6163c` | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | [`0x8a7801...554df9`](./contracts/ethereum-1/0x8a78011bf2c42df82cc05f198109ea024b554df9/) | ⚠️ Unaudited |
| Maximillion | unknown | ethereum | 2 deployments: ethereum [`0x12846d...6a8eb5`](./contracts/ethereum-1/0x12846dd1a5c2ea001044429ab91a4037b16a8eb5/); ethereum `0x408abe...4b78a0` | ⚠️ Unaudited |
| Mortgage | unknown | ethereum | 6 deployments: ethereum [`0x4132d1...1363a1`](./contracts/ethereum-1/0x4132d1ace559ad155d6d6b515d7a07f59c1363a1/); ethereum `0x6fc3d7...2e2399`; ethereum `0x70de78...08c74e`; ethereum `0xbcd6bd...00fb59`; ethereum `0xd5cbd5...b3bf46`; ethereum `0xe3715a...2bed82` | ⚠️ Unaudited |
| NFTCustomStaking | token | ethereum | 3 deployments: ethereum [`0x28f99f...a496be`](./contracts/ethereum-1/0x28f99f6242fe892a7a611c768c0007e5f3a496be/); ethereum `0x69b35e...a6b3fd`; ethereum `0xe7bc79...90a37f` | ⚠️ Unaudited |
| NFTLiquidationProxy | token | ethereum | [`0x17a78c...965b20`](./contracts/ethereum-1/0x17a78cea1abad58a4f6d87dc94a4a748f2965b20/) | ⚠️ Unaudited |
| NFTStaking | token | ethereum | 3 deployments: ethereum [`0x3bc614...def1a9`](./contracts/ethereum-1/0x3bc614ed268ea7fc30230c903706d0608bdef1a9/); ethereum `0x81b6a8...3e01e5`; ethereum `0x831fa7...f794b3` | ⚠️ Unaudited |
| NodeRunnersFactory | registry | ethereum | [`0xaf060b...ab265f`](./contracts/ethereum-1/0xaf060b67967c1865eb47b4b8dbfe9f8f65ab265f/) | ⚠️ Unaudited |
| NodeRunnersLiquidity | unknown | ethereum | [`0x4919b8...7420c4`](./contracts/ethereum-1/0x4919b8022e1a88c7a0e84b7acfe10175ae7420c4/) | ⚠️ Unaudited |
| NodeRunnersNFT | token | ethereum | 2 deployments: ethereum [`0x89ee76...71c26a`](./contracts/ethereum-1/0x89ee76cc25fcbf1714ed575faa6a10202b71c26a/); ethereum `0xf15fcf...7111cc` | ⚠️ Unaudited |
| NTFStaking | unknown | ethereum | [`0xf85372...b7421c`](./contracts/ethereum-1/0xf85372d78e46e34bbc7b265a334dae8052b7421c/) | ⚠️ Unaudited |
| PriceNode | operational_periphery | ethereum | [`0xde5d4d...120fe8`](./contracts/ethereum-1/0xde5d4d97737e2563d3a0d86bb13fea6040120fe8/) | ⚠️ Unaudited |
| Refinance | unknown | ethereum | 2 deployments: ethereum [`0x4c0793...5024ae`](./contracts/ethereum-1/0x4c079389a125eef20180a6886ca5c8da535024ae/); ethereum `0xf0d08f...629ece` | ⚠️ Unaudited |
| Snapshot | unknown | ethereum | [`0xe701bb...d46af8`](./contracts/ethereum-1/0xe701bb0290b26609e947d0e65591af0ac6d46af8/) | ⚠️ Unaudited |
| StakingErc721 | token | ethereum | [`0xbd0e5e...5d6bcd`](./contracts/ethereum-1/0xbd0e5ee54dbc97181e474d0206e472f1935d6bcd/) | ⚠️ Unaudited |
| Timelock | governance | ethereum | 4 deployments: ethereum [`0x0c44a5...a32221`](./contracts/ethereum-1/0x0c44a52854101be7d3299f1bfdbe695935a32221/); ethereum `0x2bf4c8...2ac1e9`; ethereum `0x565b4d...3c403e`; ethereum `0xd6069e...682209` | ⚠️ Unaudited |
| TokenLogic | token | ethereum | 2 deployments: ethereum [`0x366c72...353880`](./contracts/ethereum-1/0x366c727bd25d8479d8f799712f4deb1ff2353880/); ethereum `0x4ea4e7...2137b6` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | [`0x5b1392...e5da89`](./contracts/ethereum-1/0x5b13929da9fae9929aba25fc14014305f6e5da89/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | [`0x00aa1c...7ea1d1`](./contracts/ethereum-1/0x00aa1c57e894c4010fe44cb840ae56432d7ea1d1/) | ⚠️ Unaudited |
| Unitroller | proxy | ethereum | [`0xd9193a...f48e4e`](./contracts/ethereum-1/0xd9193ac2eca2b29ef3d05bf536f7821041f48e4e/) | ⚠️ Unaudited |
| Vesting | operational_periphery | ethereum | [`0x3758db...4f263f`](./contracts/ethereum-1/0x3758db4bdda0b770666c849d9a251df1c24f263f/) | ⚠️ Unaudited |
| VestingV2 | operational_periphery | ethereum | 2 deployments: ethereum [`0xe4e7ab...c8e0e0`](./contracts/ethereum-1/0xe4e7ab938a752aa8324a49a4098c491133c8e0e0/); ethereum `0xf3f769...792bc8` | ⚠️ Unaudited |
| VillainFactory | registry | ethereum | [`0xb3bbcc...9ef37d`](./contracts/ethereum-1/0xb3bbccac27cbf08ca4187ad6b840bdac5c9ef37d/) | ⚠️ Unaudited |
| VillainStaking | unknown | ethereum | [`0x335ed0...bddb6a`](./contracts/ethereum-1/0x335ed0f48715e6cf86d46d630dadddcf7cbddb6a/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 2 deployments: ethereum [`0x5ba476...cb61b6`](./contracts/ethereum-1/0x5ba476927ec72df1b7717c0cc321797d95cb61b6/); ethereum `0xef181d...0c9203` | ⚠️ Unaudited |
| YVTokenMigration | operational_periphery | ethereum | 4 deployments: ethereum [`0x32cf82...304968`](./contracts/ethereum-1/0x32cf82cd4c1f4d4a5062e9dac92ff4a9b6304968/); ethereum `0x862b4c...7923cb`; ethereum `0xa76400...9d60f3`; ethereum `0xef7c61...5ade6f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x089740...2c51d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3bfbfb...391355` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3d7711...26aa85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x52719d...e63635` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9ff498...53b47d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xab6061...af87d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb48be1...2b31f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbc183b...fde059` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd4d2fb...ab7b9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe35058...a84892` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf5a514...b884fa` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0039fe...79013d`](./contracts/ethereum-1/0x0039fec5e1d91741e251d82d9e83859c8e79013d/) | CErc20Immutable | token | $16,474,940.73 | Verified native implementation with $16,474,940.73 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x367144...f080ac`](./contracts/ethereum-1/0x367144a75577f7fbe80e69854046f6169ef080ac/) | CErc20YearnDelegate | token | $1,069.13 | Verified native implementation with $1,069.13 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x113296...8562e3`](./contracts/ethereum-1/0x113296013d1d22c070381fd8a82a1ac3db8562e3/) | NFTLiquidationG1 | token | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93532b...e94085`](./contracts/ethereum-1/0x93532bbda855716c2c16e77695589d78ffe94085/) | AdvisoryTokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x259c55...1a1858`](./contracts/ethereum-1/0x259c559181220b5cf4661c877caf3011941a1858/) | AmbassadorNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c26b3...5c0f08`](./contracts/ethereum-1/0x1c26b392cb3741fc0126d7d85d2ce5db8c5c0f08/) | BridgedOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6734a1...23678d`](./contracts/ethereum-1/0x6734a196b66e21884c115f54dd7e28ee5c23678d/) | BridgedOracleArtBlocks | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04a083...f7a7e7`](./contracts/ethereum-1/0x04a083c48eaac049964129e5a3ef7d48e0f7a7e7/) | CErc20AuraDelegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6020d8...729bf6`](./contracts/ethereum-1/0x6020d8630dd312748023b5d0263a49f5de729bf6/) | CErc20gOHMDelegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30c402...2a82f5`](./contracts/ethereum-1/0x30c40201f7af91c1b1eef6c7b4504669602a82f5/) | CErc721ArtBlocksDelegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21897f...376b00`](./contracts/ethereum-1/0x21897f9694d94f7f3ddcf60fd32b14db55376b00/) | CErc721ArtBlocksDelegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f5df5...7ed23b`](./contracts/ethereum-1/0x5f5df50c011d527e19e50b1eac8a18e7827ed23b/) | CErc721Immutable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x397d11...e7c85b`](./contracts/ethereum-1/0x397d11f822578b37b10582db5bceb43bf6e7c85b/) | CErc721MoonbirdDelegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a045b...db4db4`](./contracts/ethereum-1/0x9a045b76beb1713f4bc5e28a2747d1d484db4db4/) | CErc721NoSupplyDelegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x518851...afc290`](./contracts/ethereum-1/0x5188510a48e8f716e80338c2a2ad4fc415afc290/) | CErc721SandboxDelegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d6013...ba07ca`](./contracts/ethereum-1/0x3d60134fa81876f5afbad18a7520aa8596ba07ca/) | CErc721SandboxDelegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x109d97...3e7c97`](./contracts/ethereum-1/0x109d97019eda5e32b31cd995ba3d29fc5a3e7c97/) | CErc721V2Delegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x052319...6eb95b`](./contracts/ethereum-1/0x05231980914b702083b9ac08002325654f6eb95b/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48e29b...d14abb`](./contracts/ethereum-1/0x48e29b9ddbf3fe6380d7d1ec5b415e97afd14abb/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69cb56...b6bcdc`](./contracts/ethereum-1/0x69cb567ace32c016ca6a389fef8fcee55ab6bcdc/) | ComptrollerG1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3903e6...1f81c6`](./contracts/ethereum-1/0x3903e6ecd8bc610d5a01061b1dc31affd21f81c6/) | ComptrollerG2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e50db...9aff6e`](./contracts/ethereum-1/0x1e50dbce6c928888a80046ccace7c2a5fd9aff6e/) | ComptrollerG3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x502806...811b40`](./contracts/ethereum-1/0x50280672f1734893895f1aeb7d7db7bc1b811b40/) | ComptrollerG3LiquidationMain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ce326...4e1da8`](./contracts/ethereum-1/0x5ce3269a34741c67c6a364b7312f80dd984e1da8/) | ComptrollerG3LiquidationMainP2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32e417...3e89c9`](./contracts/ethereum-1/0x32e41714dcce1c4be08cc1e896bbca56f93e89c9/) | ComptrollerG3LiquidationMainP3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42b747...ee0f3d`](./contracts/ethereum-1/0x42b747330b97b042b85ba5fbf3348e7966ee0f3d/) | ComptrollerG3LiquidationMainP4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x896b80...361e8b`](./contracts/ethereum-1/0x896b8019f5ea3caaab23cda0a09b405ed8361e8b/) | ComptrollerG3LiquidationMainP5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00635e...242571`](./contracts/ethereum-1/0x00635eeb0e3738e8a6d8c44a5dbdee32e0242571/) | ComptrollerG3Migration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb78bb3...6b98e4`](./contracts/ethereum-1/0xb78bb3068d16803c3d643d166b69f084f46b98e4/) | ComptrollerG3Paused | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7b06c...feb502`](./contracts/ethereum-1/0xa7b06c501e89a963ac9b33a41a571ad23ffeb502/) | CTokenArtBlocksImmutable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3cba08...5f899d`](./contracts/ethereum-1/0x3cba088c815319c2aa3ffcd4a1a48d078f5f899d/) | CTokenMoonbirdImmutable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bb612...1da2ef`](./contracts/ethereum-1/0x6bb61215298f296c55b19ad842d3df69021da2ef/) | Dop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc34568...02ce95`](./contracts/ethereum-1/0xc34568ae1f48db1fc9ba745e4fc614a7b402ce95/) | DropsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x122402...b1892a`](./contracts/ethereum-1/0x122402df2f985f70277baf22ce9e67e2ceb1892a/) | ERC20CustomStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8edc7c...6e85c1`](./contracts/ethereum-1/0x8edc7cdce7356f1fc9f498b1fa4a4b3c946e85c1/) | EthMenNftStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x458fcd...65ec95`](./contracts/ethereum-1/0x458fcd33ad32de55875578da8cf1248b8765ec95/) | FinancialPunk | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x677d18...a8a905`](./contracts/ethereum-1/0x677d18ab5cf3de962a88bff2945b69b1fba8a905/) | FlashLoanProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe5f10e...c4d7bb`](./contracts/ethereum-1/0xe5f10e1ab6c2cdc37476ec6c7460976c67c4d7bb/) | FoundationTokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x300496...c305be`](./contracts/ethereum-1/0x300496a0352e2e302a3d6df66e66b08625c305be/) | HashToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29326f...82da1e`](./contracts/ethereum-1/0x29326f9050be6df0ec285d55476df4906c82da1e/) | HeroStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f5d42...98ce5d`](./contracts/ethereum-1/0x0f5d42b4837e27cc7a7f3a0c59d982ff5598ce5d/) | LPStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a7801...554df9`](./contracts/ethereum-1/0x8a78011bf2c42df82cc05f198109ea024b554df9/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12846d...6a8eb5`](./contracts/ethereum-1/0x12846dd1a5c2ea001044429ab91a4037b16a8eb5/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4132d1...1363a1`](./contracts/ethereum-1/0x4132d1ace559ad155d6d6b515d7a07f59c1363a1/) | Mortgage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28f99f...a496be`](./contracts/ethereum-1/0x28f99f6242fe892a7a611c768c0007e5f3a496be/) | NFTCustomStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17a78c...965b20`](./contracts/ethereum-1/0x17a78cea1abad58a4f6d87dc94a4a748f2965b20/) | NFTLiquidationProxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bc614...def1a9`](./contracts/ethereum-1/0x3bc614ed268ea7fc30230c903706d0608bdef1a9/) | NFTStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf060b...ab265f`](./contracts/ethereum-1/0xaf060b67967c1865eb47b4b8dbfe9f8f65ab265f/) | NodeRunnersFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4919b8...7420c4`](./contracts/ethereum-1/0x4919b8022e1a88c7a0e84b7acfe10175ae7420c4/) | NodeRunnersLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x89ee76...71c26a`](./contracts/ethereum-1/0x89ee76cc25fcbf1714ed575faa6a10202b71c26a/) | NodeRunnersNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf85372...b7421c`](./contracts/ethereum-1/0xf85372d78e46e34bbc7b265a334dae8052b7421c/) | NTFStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xde5d4d...120fe8`](./contracts/ethereum-1/0xde5d4d97737e2563d3a0d86bb13fea6040120fe8/) | PriceNode | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c0793...5024ae`](./contracts/ethereum-1/0x4c079389a125eef20180a6886ca5c8da535024ae/) | Refinance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd0e5e...5d6bcd`](./contracts/ethereum-1/0xbd0e5ee54dbc97181e474d0206e472f1935d6bcd/) | StakingErc721 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c44a5...a32221`](./contracts/ethereum-1/0x0c44a52854101be7d3299f1bfdbe695935a32221/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x366c72...353880`](./contracts/ethereum-1/0x366c727bd25d8479d8f799712f4deb1ff2353880/) | TokenLogic | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b1392...e5da89`](./contracts/ethereum-1/0x5b13929da9fae9929aba25fc14014305f6e5da89/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9193a...f48e4e`](./contracts/ethereum-1/0xd9193ac2eca2b29ef3d05bf536f7821041f48e4e/) | Unitroller | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3758db...4f263f`](./contracts/ethereum-1/0x3758db4bdda0b770666c849d9a251df1c24f263f/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe4e7ab...c8e0e0`](./contracts/ethereum-1/0xe4e7ab938a752aa8324a49a4098c491133c8e0e0/) | VestingV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3bbcc...9ef37d`](./contracts/ethereum-1/0xb3bbccac27cbf08ca4187ad6b840bdac5c9ef37d/) | VillainFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x335ed0...bddb6a`](./contracts/ethereum-1/0x335ed0f48715e6cf86d46d630dadddcf7cbddb6a/) | VillainStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 67 |
| upstream | 3 |
| standard_library | 4 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
