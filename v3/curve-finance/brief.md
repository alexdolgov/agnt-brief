# Agentic Audit Brief: Curve Finance

## Project Overview

- Project: Curve Finance (`curve-finance`)
- Website: [https://curve.finance](https://curve.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:25:22.677Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, aurora, avalanche, base, bsc, celo, ethereum, fraxtal, gnosis, mantle, optimism, plasma, polygon, sonic, unichain
- Contract surface: 241 unique implementations (241 raw deployments)
- DeFi Llama TVL: $1,618,703,513.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 115 project-authored contract(s) across 14 chain(s); 32 ERC20 tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 23 common project-authored base contract(s) (aurabalstrategybase, handlerbase, genericdistributor). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 241; live-surface contracts included: 241 (236 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 20/236 (8.5%)
- Deployed-live implementations: 236 of 241 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 20/241
- Verified + Unaudited implementations: 221
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 241
- Raw deployments: 241
- Audits discovered: 21 (21 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 13
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 2 fresh, 4 aging, 14 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 20 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 5.9% (ChainSecurity, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 13 | 5.4% | 2025-09 |
| yAudit | Tier 2 | 7 | 2.9% | 2023-11 |
| StateMind | Tier 2 | 3 | 1.2% | 2024-02 |
| TrailOfBits | Tier 1 | 1 | 0.4% | 2020-07 |

## Contract Surface

### ✅ Verified + Audited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CryptoFromPool | unknown | fraxtal | n/a | [`0x0cd5a1...37155b`](./contracts/fraxtal-252/0x0cd5a1e9e19af1f1b910ac3c3452a16b2b37155b/) | ✅ Audited |
| CurveStableswapFactoryNG | unknown | polygon | n/a | [`0x1764ee...594585`](./contracts/polygon-137/0x1764ee18e8b3cca4787249ceb249356192594585/) | ✅ Audited |
| CurveStableSwapMetaNG | unknown | mantle | n/a | [`0x1764ee...594585`](./contracts/mantle-5000/0x1764ee18e8b3cca4787249ceb249356192594585/) | ✅ Audited |
| CurveStableSwapNG | unknown | fraxtal | n/a | [`0x1764ee...594585`](./contracts/fraxtal-252/0x1764ee18e8b3cca4787249ceb249356192594585/) | ✅ Audited |
| CurveStableSwapNGMath | unknown | bsc | n/a | [`0x166c40...0d45c5`](./contracts/bsc-56/0x166c4084ad2434e8f2425c64dabfe6875a0d45c5/) | ✅ Audited |
| CurveStableSwapNGViews | unknown | arbitrum | n/a | [`0x3bba97...f26e95`](./contracts/arbitrum-42161/0x3bba971980a721c7a33cef62ce01c0d744f26e95/) | ✅ Audited |
| CurveTricryptoFactory | unknown | ethereum | n/a | [`0x0c0e5f...4b4963`](./contracts/ethereum-1/0x0c0e5f2ff0ff18a3be9b835635039256dc4b4963/) | ✅ Audited |
| CurveTricryptoOptimizedWETH | unknown | polygon | n/a | [`0x0c59d3...03baef`](./contracts/polygon-137/0x0c59d36b23f809f8b6c7cb4c8c590a0ac103baef/) | ✅ Audited |
| FastBridgeL2 | unknown | arbitrum | n/a | [`0x1f2af2...80dae1`](./contracts/arbitrum-42161/0x1f2af270029d028400265ce1dd0919ba8780dae1/) | ✅ Audited |
| FastBridgeVault | unknown | ethereum | n/a | [`0x5ef620...21b9ec`](./contracts/ethereum-1/0x5ef620631aa46e7d2f6f963b6be4f6823521b9ec/) | ✅ Audited |
| FeeSplitter | unknown | ethereum | n/a | [`0x2dfd89...c064f2`](./contracts/ethereum-1/0x2dfd89449faff8a532790667bab21cf733c064f2/) | ✅ Audited |
| L2MessengerLZ | unknown | arbitrum | n/a | [`0x14e11c...cf79ff`](./contracts/arbitrum-42161/0x14e11c1b8f04a7de306a7b5bf21bbca0d5cf79ff/) | ✅ Audited |
| MessageDigestVerifier | unknown | bsc | n/a | [`0x22d490...f81e64`](./contracts/bsc-56/0x22d490a4e8710252793df769ca01fa619af81e64/) | ✅ Audited |
| Minter | unknown | bsc | n/a | [`0x458599...3726bf`](./contracts/bsc-56/0x458599f83764ae9d0528301c1b6cb18de63726bf/) | ✅ Audited |
| OneWayLendingFactory | unknown | sonic | n/a | [`0x30d185...933993`](./contracts/sonic-146/0x30d1859dad5a52ae03b6e259d1b48c4b12933993/) | ✅ Audited |
| PegKeeper | unknown | ethereum | n/a | [`0x1ef89e...4dccae`](./contracts/ethereum-1/0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae/) | ✅ Audited |
| StablecoinLens | unknown | ethereum | n/a | [`0xe24e2d...01ecd7`](./contracts/ethereum-1/0xe24e2db9f6bb40bbe7c1c025bc87104f5401ecd7/) | ✅ Audited |
| Vault | unknown | ethereum | n/a | [`0x044ac5...ba5ced`](./contracts/ethereum-1/0x044ac5160e5a04e09ebae06d786fc151f2ba5ced/) | ✅ Audited |
| VaultMessengerLZ | unknown | ethereum | n/a | [`0x159455...e3e6d9`](./contracts/ethereum-1/0x15945526b5c32d963391343e9bc080838fe3e6d9/) | ✅ Audited |
| Voting | unknown | ethereum | n/a | [`0xbcff8b...330399`](./contracts/ethereum-1/0xbcff8b0b9419b9a88c44546519b1e909cf330399/) | ✅ Audited |

### ⚠️ Verified + Unaudited (221)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressQueueStorage | unknown | ethereum | n/a | [`0x44e319...e2ebd8`](./contracts/ethereum-1/0x44e31944e1a6f3b8f805e105b130f8bdb7e2ebd8/) | ⚠️ Unaudited |
| AddressSetStorage | unknown | ethereum | n/a | [`0xd4ae25...1c6a16`](./contracts/ethereum-1/0xd4ae2511df21f367792ba4d67c6eb032171c6a16/) | ⚠️ Unaudited |
| Agent | unknown | base | n/a | [`0x2c163f...4c8b80`](./contracts/base-8453/0x2c163fe0f079d138b9c04f780d735289344c8b80/) | ⚠️ Unaudited |
| AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD | unknown | ethereum | n/a | [`0x18672b...0e4e62`](./contracts/ethereum-1/0x18672b1b0c623a30089a280ed9256379fb0e4e62/) | ⚠️ Unaudited |
| AirdropDistributor | unknown | ethereum | n/a | [`0x8e6d5c...f1baa4`](./contracts/ethereum-1/0x8e6d5cf9b9659d4f8e68ee040bf26e728ef1baa4/) | ⚠️ Unaudited |
| AlToken | unknown | ethereum | n/a | [`0xbc6da0...3660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | ⚠️ Unaudited |
| AssetRegistry | unknown | ethereum | n/a | [`0xcfa23b...0d1873`](./contracts/ethereum-1/0xcfa23b8f9062369b21049b9f4a4ce79d640d1873/) | ⚠️ Unaudited |
| AuraBalStrategy | unknown | ethereum | n/a | [`0x4b0987...ee5077`](./contracts/ethereum-1/0x4b0987bef3f966354c6ecd22f6d844d621ee5077/) | ⚠️ Unaudited |
| AuraBalVault | unknown | ethereum | n/a | [`0x77e5bb...af7328`](./contracts/ethereum-1/0x77e5bb2c91cac7c7a8a74c38804fdb372baf7328/) | ⚠️ Unaudited |
| AuraBalZaps | unknown | ethereum | n/a | [`0x06ee5f...947363`](./contracts/ethereum-1/0x06ee5f2c2690c3b03718e662dd14282cb9947363/) | ⚠️ Unaudited |
| AuraHandler | unknown | ethereum | n/a | [`0x09ee25...85940e`](./contracts/ethereum-1/0x09ee25e4f85826705b385ab863e6f1701a85940e/) | ⚠️ Unaudited |
| BBUSDHandler | unknown | ethereum | n/a | [`0x1d2fc9...6c8e37`](./contracts/ethereum-1/0x1d2fc9222633d33271f03255b56e7e50636c8e37/) | ⚠️ Unaudited |
| BBUSDHandlerv2 | unknown | ethereum | n/a | [`0xe33ed4...98d4a8`](./contracts/ethereum-1/0xe33ed45c38a1def9c0bfb592d6b4f9788898d4a8/) | ⚠️ Unaudited |
| Block Hash Oracle | unknown | bsc | n/a | [`0x7cde6e...62ba37`](./contracts/bsc-56/0x7cde6ef7e2e2fd3b6355637f1303586d7262ba37/) | ⚠️ Unaudited |
| Block Header Verifier | unknown | optimism | n/a | [`0xb10cde...b83385`](./contracts/optimism-10/0xb10cdec0de69c88a47c280a97a5aeca8b0b83385/) | ⚠️ Unaudited |
| Block Oracle | unknown | optimism | n/a | [`0xb10cfa...bd86b8`](./contracts/optimism-10/0xb10cface69821ff7b245cf5f28f3e714fdbd86b8/) | ⚠️ Unaudited |
| CCIPBlockHashSender | unknown | ethereum | n/a | [`0x51a00f...5d9e61`](./contracts/ethereum-1/0x51a00f38cb1c055ebbbe380d3ba3d27cae5d9e61/) | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | ethereum | n/a | [`0x48759f...e4166a`](./contracts/ethereum-1/0x48759f220ed983db51fa7a8c0d2aab8f3ce4166a/) | ⚠️ Unaudited |
| CErc20 | unknown | ethereum | n/a | [`0x39aa39...5e7563`](./contracts/ethereum-1/0x39aa39c021dfbae8fac545936693ac917d5e7563/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x5d3a53...8e3643`](./contracts/ethereum-1/0x5d3a536e4d6dbd6114cc1ead35777bab948e3643/) | ⚠️ Unaudited |
| CErc20Immutable | unknown | ethereum | n/a | [`0xc528b0...dd7760`](./contracts/ethereum-1/0xc528b0571d0be4153aeb8ddb8cceee63c3dd7760/) | ⚠️ Unaudited |
| Child Liquidity Gauge Factory | unknown | gnosis | n/a | [`0x06471e...7b004f`](./contracts/gnosis-100/0x06471ed238306a427241b3ea81352244e77b004f/) | ⚠️ Unaudited |
| cow_harvester | unknown | ethereum | n/a | [`0xb0a21a...d6acd3`](./contracts/ethereum-1/0xb0a21aca8b04f852fd70c928ad9c3ece97d6acd3/) | ⚠️ Unaudited |
| CowSwapBurner | unknown | gnosis | n/a | [`0x566b9f...7eda83`](./contracts/gnosis-100/0x566b9f24200a9b51b76792d4e81b569af27eda83/) | ⚠️ Unaudited |
| crvUSD Controller | unknown | arbitrum | n/a | [`0x2287b7...920775`](./contracts/arbitrum-42161/0x2287b7b2bf3d82c3ecc11ca176f4b4f35f920775/) | ⚠️ Unaudited |
| crvUSD FlashLender | unknown | ethereum | n/a | [`0x26de78...0e9ee1`](./contracts/ethereum-1/0x26de7861e213a5351f6ed767d00e0839930e9ee1/) | ⚠️ Unaudited |
| crvUSDControllerFactory | unknown | ethereum | n/a | [`0xc9332f...0738bc`](./contracts/ethereum-1/0xc9332fdcb1c491dcc683bae86fe3cb70360738bc/) | ⚠️ Unaudited |
| crvUSDStablecoin | unknown | ethereum | n/a | [`0xf939e0...ac1b4e`](./contracts/ethereum-1/0xf939e0a03fb07f59a73314e73794be0e57ac1b4e/) | ⚠️ Unaudited |
| CrvUsdSwapper | unknown | ethereum | n/a | [`0x5b62f9...6328de`](./contracts/ethereum-1/0x5b62f91278f9439bcffd25d9fdc08043b46328de/) | ⚠️ Unaudited |
| CryptoFromPoolsRate | unknown | ethereum | n/a | [`0xb08eb2...602cd9`](./contracts/ethereum-1/0xb08eb288c57a37bc82238168ad96e15975602cd9/) | ⚠️ Unaudited |
| CryptoFromPoolVaultWAgg | unknown | ethereum | n/a | [`0x002688...1b09be`](./contracts/ethereum-1/0x002688c4296a2c4d800f271fe6f01741111b09be/) | ⚠️ Unaudited |
| Curve AddressProvider | unknown | aurora | n/a | [`0x000000...fc4383`](./contracts/aurora-1313161554/0x0000000022d53366457f9d5e68ec105046fc4383/) | ⚠️ Unaudited |
| Curve Factory | unknown | base | n/a | [`0x5ef722...83bbfd`](./contracts/base-8453/0x5ef72230578b3e399e6c6f4f6360edf95e83bbfd/) | ⚠️ Unaudited |
| Curve Fee Distribution | unknown | ethereum | n/a | [`0xd16d5e...027914`](./contracts/ethereum-1/0xd16d5ec345dd86fb63c6a9c43c517210f1027914/) | ⚠️ Unaudited |
| Curve LP Token | unknown | gnosis | n/a | [`0x1337be...7963ec`](./contracts/gnosis-100/0x1337bedc9d22ecbe766df105c9623922a27963ec/) | ⚠️ Unaudited |
| Curve Registry Address Provider | unknown | gnosis | n/a | [`0x000000...fc4383`](./contracts/gnosis-100/0x0000000022d53366457f9d5e68ec105046fc4383/) | ⚠️ Unaudited |
| Curve Sidechain/L2 Factory | unknown | base | n/a | [`0x3093f9...78c336`](./contracts/base-8453/0x3093f9b57a428f3eb6285a589cb35bea6e78c336/) | ⚠️ Unaudited |
| curve_harvester | unknown | ethereum | n/a | [`0x14b355...371631`](./contracts/ethereum-1/0x14b355b1046fe78aef6d2105882c8f5421371631/) | ⚠️ Unaudited |
| CurveAddressProvider | unknown | unichain | n/a | [`0x1764ee...594585`](./contracts/unichain-130/0x1764ee18e8b3cca4787249ceb249356192594585/) | ⚠️ Unaudited |
| CurveCryptoCalc | unknown | base | n/a | [`0xefaddd...43f7ce`](./contracts/base-8453/0xefaddde5b43917ccc738ade6962295a0b343f7ce/) | ⚠️ Unaudited |
| CurveCryptoCalcZap | unknown | fraxtal | n/a | [`0x69522f...0adb4f`](./contracts/fraxtal-252/0x69522fb5337663d3b4dfb0030b881c1a750adb4f/) | ⚠️ Unaudited |
| CurveCryptoViews2Optimized | unknown | ethereum | n/a | [`0x07cdeb...045b80`](./contracts/ethereum-1/0x07cdebf81977e111b08c126defa07818d0045b80/) | ⚠️ Unaudited |
| CurveCryptoViews3Optimized | unknown | base | n/a | [`0x05d4e2...ef3ef7`](./contracts/base-8453/0x05d4e2ed7216a204e5fb4e3f5187ecfaa5ef3ef7/) | ⚠️ Unaudited |
| CurveDeposit&amp;StakeZap | unknown | optimism | n/a | [`0x37c5ab...6614fd`](./contracts/optimism-10/0x37c5ab57af7100bdc9b668d766e193ccbf6614fd/) | ⚠️ Unaudited |
| CurveFactory | unknown | aurora | n/a | [`0x5eee30...e31f6e`](./contracts/aurora-1313161554/0x5eee3091f747e60a045a2e715a4c71e600e31f6e/) | ⚠️ Unaudited |
| CurveL2TricryptoFactory | unknown | celo | n/a | [`0x3d6cb2...d8796a`](./contracts/celo-42220/0x3d6cb2f6dcf47cdd9c13e4e3beae9af041d8796a/) | ⚠️ Unaudited |
| CurveMetaRegistry | unknown | mantle | n/a | [`0x0c59d3...03baef`](./contracts/mantle-5000/0x0c59d36b23f809f8b6c7cb4c8c590a0ac103baef/) | ⚠️ Unaudited |
| CurveMetaZap | unknown | sonic | n/a | [`0x5a8c93...d5cfcc`](./contracts/sonic-146/0x5a8c93ee12a8df4455ba111647ada41f29d5cfcc/) | ⚠️ Unaudited |
| CurveRateProvider | unknown | fraxtal | n/a | [`0x07920e...161ea0`](./contracts/fraxtal-252/0x07920e98a66e462c2aa4c8fa6200bc68ca161ea0/) | ⚠️ Unaudited |
| CurveRouter | unknown | sonic | n/a | [`0x5eee30...e31f6e`](./contracts/sonic-146/0x5eee3091f747e60a045a2e715a4c71e600e31f6e/) | ⚠️ Unaudited |
| CurveRouter v1.1 | unknown | ethereum | n/a | [`0x16c652...265353`](./contracts/ethereum-1/0x16c6521dff6bab339122a0fe25a9116693265353/) | ⚠️ Unaudited |
| CurveRouter v1.2 | unknown | ethereum | n/a | [`0x45312e...c8cd4e`](./contracts/ethereum-1/0x45312ea0eff7e09c83cbe249fa1d7598c4c8cd4e/) | ⚠️ Unaudited |
| CurveRouterNgPoolsOnly v1.1 | unknown | mantle | n/a | [`0x4f37a9...cffc1f`](./contracts/mantle-5000/0x4f37a9d177470499a2dd084621020b023fcffc1f/) | ⚠️ Unaudited |
| CurveRouterOptimism v1.1 | unknown | optimism | n/a | [`0x0dcded...45d983`](./contracts/optimism-10/0x0dcded3545d565ba3b19e683431381007245d983/) | ⚠️ Unaudited |
| CurveRouterSidechain v1.1 | unknown | arbitrum | n/a | [`0x219171...9a0a0d`](./contracts/arbitrum-42161/0x2191718cd32d02b8e60badffea33e4b5dd9a0a0d/) | ⚠️ Unaudited |
| CurveRouterSidechainTricryptoMeta v1.1 | unknown | gnosis | n/a | [`0x0dcded...45d983`](./contracts/gnosis-100/0x0dcded3545d565ba3b19e683431381007245d983/) | ⚠️ Unaudited |
| CurveStableCalc | unknown | base | n/a | [`0x5552b6...c9d1f7`](./contracts/base-8453/0x5552b631e2ad801faa129aacf4b701071cc9d1f7/) | ⚠️ Unaudited |
| CurveStableCalcZap | unknown | bsc | n/a | [`0x0fe38d...1300cf`](./contracts/bsc-56/0x0fe38dcc905ec14f6099a83ac5c93bf2601300cf/) | ⚠️ Unaudited |
| CurveStableSwap | unknown | unichain | n/a | [`0xa7ba18...abd9c2`](./contracts/unichain-130/0xa7ba18eefcd9513230987ec2fab6711af5abd9c2/) | ⚠️ Unaudited |
| CurveStableSwapFactory | unknown | unichain | n/a | [`0x604388...e2ae22`](./contracts/unichain-130/0x604388bb1159afd21eb5191ce22b4decdee2ae22/) | ⚠️ Unaudited |
| CurveStableSwapMath | unknown | unichain | n/a | [`0x686bdb...ac78b4`](./contracts/unichain-130/0x686bdb3d24bc6f3ed89ed3d3b659765c54ac78b4/) | ⚠️ Unaudited |
| CurveStableSwapMeta | unknown | unichain | n/a | [`0x7c2085...c463d8`](./contracts/unichain-130/0x7c2085419be6a04f4ad88ea91bc9f5c6e6c463d8/) | ⚠️ Unaudited |
| CurveTricryptoMath | unknown | unichain | n/a | [`0xa7b9d8...fdac26`](./contracts/unichain-130/0xa7b9d886a9a374a1c86dc52d2ba585c5cdfdac26/) | ⚠️ Unaudited |
| CurveTricryptoMathOptimized | unknown | fraxtal | n/a | [`0x0c9d8c...650953`](./contracts/fraxtal-252/0x0c9d8c7e486e822c29488ff51bff0167b4650953/) | ⚠️ Unaudited |
| CurveTricryptoOptimized | unknown | optimism | n/a | [`0x0458ea...b3116c`](./contracts/optimism-10/0x0458ea5f4cd00e873264be2031ceb8f9d9b3116c/) | ⚠️ Unaudited |
| CurveTricryptoSwap | unknown | unichain | n/a | [`0x635742...2eafbd`](./contracts/unichain-130/0x635742dcc8313dcf8c904206037d962c042eafbd/) | ⚠️ Unaudited |
| CurveTricryptoSwapFactory | unknown | unichain | n/a | [`0x5702bd...b07499`](./contracts/unichain-130/0x5702bdb1ec244704e3cbbaae11a0275ae5b07499/) | ⚠️ Unaudited |
| CurveTricryptoViews | unknown | sonic | n/a | [`0xa7b9d8...fdac26`](./contracts/sonic-146/0xa7b9d886a9a374a1c86dc52d2ba585c5cdfdac26/) | ⚠️ Unaudited |
| CurveTwocryptoFactory | unknown | ethereum | n/a | [`0x98ee85...eaaf7f`](./contracts/ethereum-1/0x98ee851a00abee0d95d08cf4ca2bdce32aeaaf7f/) | ⚠️ Unaudited |
| CurveTwocryptoMath | unknown | sonic | n/a | [`0x0c9d8c...650953`](./contracts/sonic-146/0x0c9d8c7e486e822c29488ff51bff0167b4650953/) | ⚠️ Unaudited |
| CurveTwocryptoMathOptimized | unknown | ethereum | n/a | [`0x1fd8af...cdf4a1`](./contracts/ethereum-1/0x1fd8af16dc4bebd950521308d55d0543b6cdf4a1/) | ⚠️ Unaudited |
| CurveTwocryptoOptimized | unknown | arbitrum | n/a | [`0x5f0985...5fb18c`](./contracts/arbitrum-42161/0x5f0985a8aad85e82fd592a23cc0501e4345fb18c/) | ⚠️ Unaudited |
| CurveTwocryptoSwap | unknown | unichain | n/a | [`0x1a8334...7fe495`](./contracts/unichain-130/0x1a83348f9ccfd3fe1a8c0adba580ac4e267fe495/) | ⚠️ Unaudited |
| CurveTwocryptoSwapFactory | unknown | sonic | n/a | [`0x1a8334...7fe495`](./contracts/sonic-146/0x1a83348f9ccfd3fe1a8c0adba580ac4e267fe495/) | ⚠️ Unaudited |
| CurveTwocryptoViews | unknown | sonic | n/a | [`0x64379c...84db80`](./contracts/sonic-146/0x64379c265fc6595065d7d835aaaa731c0584db80/) | ⚠️ Unaudited |
| CurveXChainLiquidityGauge | unknown | unichain | n/a | [`0x506f59...df9f7f`](./contracts/unichain-130/0x506f594ceb4e33f5161139bae3ee911014df9f7f/) | ⚠️ Unaudited |
| CurveXChainLiquidityGaugeFactory | unknown | unichain | n/a | [`0x8b3efb...3f57a6`](./contracts/unichain-130/0x8b3efbefa6ed222077455d6f0dcda3bf4f3f57a6/) | ⚠️ Unaudited |
| CvxFxsStrategy | unknown | ethereum | n/a | [`0xf761c0...badff8`](./contracts/ethereum-1/0xf761c0098967d756c9673f2798dbf23342badff8/) | ⚠️ Unaudited |
| CvxFxsZaps | unknown | ethereum | n/a | [`0x374223...21944d`](./contracts/ethereum-1/0x3742235b332fac741ec3a4f1ab7115ae0621944d/) | ⚠️ Unaudited |
| CVXMerkleDistributor | unknown | ethereum | n/a | [`0x27a110...b0cb49`](./contracts/ethereum-1/0x27a11054b62c29c166f3fab2b0ac708043b0cb49/) | ⚠️ Unaudited |
| Dai | unknown | ethereum | n/a | [`0x6b1754...271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | ⚠️ Unaudited |
| DebtToken | unknown | arbitrum | n/a | [`0xd4fe6e...10239f`](./contracts/arbitrum-42161/0xd4fe6e1e37dfcf35e9eeb54d4cca149d1c10239f/) | ⚠️ Unaudited |
| DelegationVerifier | unknown | optimism | n/a | [`0x1d04fc...2e6841`](./contracts/optimism-10/0x1d04fcb6293690d75e9262a89ac3b816772e6841/) | ⚠️ Unaudited |
| DistributorZaps | unknown | ethereum | n/a | [`0x56e9db...2ed944`](./contracts/ethereum-1/0x56e9db574c8d5015d198671cbf1200b6bb2ed944/) | ⚠️ Unaudited |
| DonationStreamer | unknown | ethereum | n/a | [`0x2b786b...ebc828`](./contracts/ethereum-1/0x2b786bb995978cc2242c567ae62fd617b0ebc828/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | arbitrum | n/a | [`0xfdb631...17697d`](./contracts/arbitrum-42161/0xfdb631f5ee196f0ed6faa767959853a9f217697d/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x29b41f...0b9a33`](./contracts/ethereum-1/0x29b41fe7d754b8b43d4060bb43734e436b0b9a33/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | sonic | n/a | [`0x7fff4c...ccd270`](./contracts/sonic-146/0x7fff4c4a827c84e32c5e175052834111b2ccd270/) | ⚠️ Unaudited |
| ERC20 | unknown | fraxtal | n/a | [`0x331b91...aecc56`](./contracts/fraxtal-252/0x331b9182088e2a7d6d3fe4742aba1fb231aecc56/) | ⚠️ Unaudited |
| ExtraZaps | unknown | ethereum | n/a | [`0x5d69b6...29838e`](./contracts/ethereum-1/0x5d69b683bf963648137b3ab5244e9d31d529838e/) | ⚠️ Unaudited |
| FeeAllocator | unknown | ethereum | n/a | [`0x22530d...8eb468`](./contracts/ethereum-1/0x22530d384cd9915e096ead2db7f82ee81f8eb468/) | ⚠️ Unaudited |
| FeeCollector | unknown | ethereum | n/a | [`0xa2bcd1...bcce00`](./contracts/ethereum-1/0xa2bcd1a4efbd04b63cd03f5aff2561106ebcce00/) | ⚠️ Unaudited |
| FeeRegistry | unknown | ethereum | n/a | [`0x0f1dc3...30d19c`](./contracts/ethereum-1/0x0f1dc3bd5fe8a3034d6df0a411efc7916830d19c/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FixedForex | unknown | ethereum | n/a | [`0x95dfdc...538253`](./contracts/ethereum-1/0x95dfdc8161832e4ff7816ac4b6367ce201538253/) | ⚠️ Unaudited |
| FpisAccumulator | unknown | ethereum | n/a | [`0x0ca369...a9f460`](./contracts/ethereum-1/0x0ca369a70ad74e52604abc63792abbe088a9f460/) | ⚠️ Unaudited |
| FXSMerkleDistributor | unknown | ethereum | n/a | [`0x11fe17...c1d4c7`](./contracts/ethereum-1/0x11fe17c5ab68cc4cc6d3c281feddfff80bc1d4c7/) | ⚠️ Unaudited |
| FXSSwapper | unknown | ethereum | n/a | [`0x2dce36...ded929`](./contracts/ethereum-1/0x2dce36d00bb398cb01390a0769260b84edded929/) | ⚠️ Unaudited |
| Gauge Type Oracle | unknown | avalanche | n/a | [`0x01689f...968e41`](./contracts/avalanche-43114/0x01689fe734d0aa98be3a9a761ae11a20dd968e41/) | ⚠️ Unaudited |
| GaugeTypeProver | unknown | avalanche | n/a | [`0x0b2584...defe62`](./contracts/avalanche-43114/0x0b2584efc66e9954e72d516be2bb855ef0defe62/) | ⚠️ Unaudited |
| GaugeTypeVerifier | unknown | sonic | n/a | [`0x47ca04...677ee4`](./contracts/sonic-146/0x47ca04ee05f167583122833abfb0f14ac5677ee4/) | ⚠️ Unaudited |
| GenericUnionVault | unknown | ethereum | n/a | [`0xf964b0...89ce0e`](./contracts/ethereum-1/0xf964b0e3ffdea659c44a5a52bc0b82a24b89ce0e/) | ⚠️ Unaudited |
| GnosisBridger | unknown | gnosis | n/a | [`0xc4aa2f...659449`](./contracts/gnosis-100/0xc4aa2fb0a8837a06d296b1c0de1990e401659449/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x467947...6b1e0c`](./contracts/ethereum-1/0x467947ee34af926cf1dcac093870f613c96b1e0c/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | ethereum | n/a | [`0x6d447e...cfffed`](./contracts/ethereum-1/0x6d447e544d01a59cb0774763bf15526574cfffed/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | optimism | n/a | [`0x6d447e...cfffed`](./contracts/optimism-10/0x6d447e544d01a59cb0774763bf15526574cfffed/) | ⚠️ Unaudited |
| Hooker | unknown | ethereum | n/a | [`0x9a9df3...f6f69d`](./contracts/ethereum-1/0x9a9df35cd8e88565694ca6ad5093c236c7f6f69d/) | ⚠️ Unaudited |
| InitializableERC20 | unknown | ethereum | n/a | [`0x8f2277...e31417`](./contracts/ethereum-1/0x8f22779662ad253844013d8e99eccb4d80e31417/) | ⚠️ Unaudited |
| KittyViewOptimized2 | unknown | aurora | n/a | [`0x07cdeb...045b80`](./contracts/aurora-1313161554/0x07cdebf81977e111b08c126defa07818d0045b80/) | ⚠️ Unaudited |
| L2 Voting Escrow Oracle | unknown | gnosis | n/a | [`0x2fa3cb...470334`](./contracts/gnosis-100/0x2fa3cbac10f1ec7618a383a005862d900b470334/) | ⚠️ Unaudited |
| L2StandardERC20 | unknown | optimism | n/a | [`0x099420...05fb53`](./contracts/optimism-10/0x0994206dfe8de6ec6920ff4d779b0d950605fb53/) | ⚠️ Unaudited |
| Layer Zero Block Hash Sender | unknown | ethereum | n/a | [`0x49cdec...c2ab61`](./contracts/ethereum-1/0x49cdecc38b4caf6a07c13558a32820333bc2ab61/) | ⚠️ Unaudited |
| Layer Zero Bridge | unknown | bsc | n/a | [`0x0a92fd...db4d4f`](./contracts/bsc-56/0x0a92fd5271db1c41564bd01ef6b1a75fc1db4d4f/) | ⚠️ Unaudited |
| Layer Zero Bridge - Curve DAO Token | unknown | ethereum | n/a | [`0x3c8d2a...7311cc`](./contracts/ethereum-1/0x3c8d2a033131551a3f09e7b5c07db01d547311cc/) | ⚠️ Unaudited |
| Layer Zero Bridge (Ethereum Version) | unknown | ethereum | n/a | [`0x08132e...e638e8`](./contracts/ethereum-1/0x08132ea9b02750e118cf5f5c640b7c46a8e638e8/) | ⚠️ Unaudited |
| LayerZero Block Relay | unknown | optimism | n/a | [`0xfacefe...d31752`](./contracts/optimism-10/0xfacefeed696bfc0ebe7ead3ffbb9a56290d31752/) | ⚠️ Unaudited |
| LiquidityGaugeV6 | unknown | ethereum | n/a | [`0x00b71a...a2de99`](./contracts/ethereum-1/0x00b71a425db7c8b65a46cf39c23a188e10a2de99/) | ⚠️ Unaudited |
| LiquidRouter | unknown | ethereum | n/a | [`0x02dd79...a9440d`](./contracts/ethereum-1/0x02dd79b4a88fefe639d2a88e20f8013edea9440d/) | ⚠️ Unaudited |
| LlamaLend Factory | unknown | optimism | n/a | [`0x5f9407...3b3640`](./contracts/optimism-10/0x5f94073e3f51c1fff92ffc6b4b06b7af193b3640/) | ⚠️ Unaudited |
| LlamaLendLeverageZap | unknown | sonic | n/a | [`0x0fe38d...1300cf`](./contracts/sonic-146/0x0fe38dcc905ec14f6099a83ac5c93bf2601300cf/) | ⚠️ Unaudited |
| LlamaLendOdosLeverageZap | unknown | fraxtal | n/a | [`0x329451...90b687`](./contracts/fraxtal-252/0x3294514b78df4bb90132567fcf8e5e99f390b687/) | ⚠️ Unaudited |
| LLAMMA - crvUSD AMM | unknown | ethereum | n/a | [`0x0167b8...b709e3`](./contracts/ethereum-1/0x0167b8a9a3959e698a3e3bcafe829878ffb709e3/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0xba5602...fd8562`](./contracts/ethereum-1/0xba5602730824340d714c92a153460db958fd8562/) | ⚠️ Unaudited |
| MerkleDistributorV2 | unknown | ethereum | n/a | [`0xa83043...956183`](./contracts/ethereum-1/0xa83043df401346a67eddeb074679b4570b956183/) | ⚠️ Unaudited |
| MessageDigestProver | unknown | bsc | n/a | [`0xbff1f5...9f1825`](./contracts/bsc-56/0xbff1f56c8e48e2f2f52941e16feecc76c49f1825/) | ⚠️ Unaudited |
| MetaZap NG | unknown | aurora | n/a | [`0x9293f0...16019d`](./contracts/aurora-1313161554/0x9293f068912bae932843a1ba01806c54f416019d/) | ⚠️ Unaudited |
| MetaZapNG | unknown | optimism | n/a | [`0x07920e...161ea0`](./contracts/optimism-10/0x07920e98a66e462c2aa4c8fa6200bc68ca161ea0/) | ⚠️ Unaudited |
| METH | unknown | ethereum | n/a | [`0xd5f783...b0adfa`](./contracts/ethereum-1/0xd5f7838f5c461feff7fe49ea5ebaf7728bb0adfa/) | ⚠️ Unaudited |
| Migrations | unknown | ethereum | n/a | [`0x0aab73...1a7e85`](./contracts/ethereum-1/0x0aab73d845d481fe790787f535618457921a7e85/) | ⚠️ Unaudited |
| Minter Proxy | unknown | avalanche | n/a | [`0x476528...f005a5`](./contracts/avalanche-43114/0x4765288de2672a961cc5a9f52be75005caf005a5/) | ⚠️ Unaudited |
| MultiMerkleStash | unknown | ethereum | n/a | [`0x966a2f...fd4567`](./contracts/ethereum-1/0x966a2f2dc3aff00965c6eccf6290d0d402fd4567/) | ⚠️ Unaudited |
| OETH | unknown | ethereum | n/a | [`0x856c4e...0b8dc3`](./contracts/ethereum-1/0x856c4efb76c1d1ae02e20ceb03a2a6a08b0b8dc3/) | ⚠️ Unaudited |
| OETHBase | unknown | base | n/a | [`0xdbfefd...ea60a3`](./contracts/base-8453/0xdbfefd2e8460a6ee4955a68582f85708baea60a3/) | ⚠️ Unaudited |
| OFT | unknown | arbitrum | n/a | [`0x179f38...cf7cad`](./contracts/arbitrum-42161/0x179f38f78346f5942e95c5c59cb1da7f55cf7cad/) | ⚠️ Unaudited |
| Optimism Relayer | unknown | fraxtal | n/a | [`0x7be6bd...2b6f96`](./contracts/fraxtal-252/0x7be6bd57a319a7180f71552e58c9d32da32b6f96/) | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | mantle | n/a | [`0x099420...05fb53`](./contracts/mantle-5000/0x0994206dfe8de6ec6920ff4d779b0d950605fb53/) | ⚠️ Unaudited |
| OptimismMintablePermitERC20 | unknown | fraxtal | n/a | [`0xab94c7...836ed0`](./contracts/fraxtal-252/0xab94c721040b33aa8b0b4d159da9878e2a836ed0/) | ⚠️ Unaudited |
| PCvxZaps | unknown | ethereum | n/a | [`0x6753f2...e48222`](./contracts/ethereum-1/0x6753f23905f15376429e6f0c381fcc4862e48222/) | ⚠️ Unaudited |
| Peg Keeper Regulator | unknown | ethereum | n/a | [`0x36a04c...dd855f`](./contracts/ethereum-1/0x36a04caffc681fa179558b2aaba30395cddd855f/) | ⚠️ Unaudited |
| Peg Keeper V2 | unknown | ethereum | n/a | [`0x3fa20e...2fe09c`](./contracts/ethereum-1/0x3fa20eaa107de08b38a8734063d605d5842fe09c/) | ⚠️ Unaudited |
| PermittableToken | unknown | gnosis | n/a | [`0x712b3d...bdd0bd`](./contracts/gnosis-100/0x712b3d230f3c1c19db860d80619288b1f0bdd0bd/) | ⚠️ Unaudited |
| PirexClaimAll | unknown | ethereum | n/a | [`0x0037eb...8f8aca`](./contracts/ethereum-1/0x0037ebb2ef03fbd8fdc5bae06a1c0ca12e8f8aca/) | ⚠️ Unaudited |
| PirexClaims | unknown | ethereum | n/a | [`0x7ac09d...5dee7a`](./contracts/ethereum-1/0x7ac09d90f8fcf0cce77f0d3bc7aaef3ad75dee7a/) | ⚠️ Unaudited |
| PirexDistributorZaps | unknown | ethereum | n/a | [`0x49a805...b6e6b8`](./contracts/ethereum-1/0x49a8056440065900a3a21b33594815aa0fb6e6b8/) | ⚠️ Unaudited |
| PirexMigrationV1 | unknown | ethereum | n/a | [`0x8e705c...e686c2`](./contracts/ethereum-1/0x8e705c0694795516178c63b6c40339ac2be686c2/) | ⚠️ Unaudited |
| PirexMigrationV2 | unknown | ethereum | n/a | [`0xc8ec7d...5fd70a`](./contracts/ethereum-1/0xc8ec7d444c88ba3afe96978854645c43bd5fd70a/) | ⚠️ Unaudited |
| PrismaSwapper | unknown | ethereum | n/a | [`0xd94b07...422154`](./contracts/ethereum-1/0xd94b0763dadd691a1e9688cf0ef8238d95422154/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | fraxtal | n/a | [`0x8b3efb...3f57a6`](./contracts/fraxtal-252/0x8b3efbefa6ed222077455d6f0dcda3bf4f3f57a6/) | ⚠️ Unaudited |
| RAAC CoW Harvester | unknown | ethereum | n/a | [`0x2a893b...165787`](./contracts/ethereum-1/0x2a893bb0f62e0a4a5e104753dd88fe1773165787/) | ⚠️ Unaudited |
| RAAC Curve Harvester | unknown | ethereum | n/a | [`0x582776...9979d2`](./contracts/ethereum-1/0x5827769a210e76752352791dae4a29d8159979d2/) | ⚠️ Unaudited |
| RAAC Stable Vault Factory | unknown | ethereum | n/a | [`0x10f6ef...740d4f`](./contracts/ethereum-1/0x10f6ef027725df44cebbf1efd25d3e1df3740d4f/) | ⚠️ Unaudited |
| RAAC Vault | unknown | ethereum | n/a | [`0x7eef8f...75b879`](./contracts/ethereum-1/0x7eef8f6a259cbbc939ba29cdb009abef8275b879/) | ⚠️ Unaudited |
| raac_vault | unknown | ethereum | n/a | [`0xa3a874...7288ba`](./contracts/ethereum-1/0xa3a8749896ef4185a26a2a23f04f722c157288ba/) | ⚠️ Unaudited |
| REUSD | unknown | arbitrum | n/a | [`0x3aef26...939378`](./contracts/arbitrum-42161/0x3aef260cb6a5b469f970fae7a1e233dbd5939378/) | ⚠️ Unaudited |
| ReUsdSwapper | unknown | ethereum | n/a | [`0x4174b1...8c132c`](./contracts/ethereum-1/0x4174b1b21b41fbc616b754552fcfa66ebf8c132c/) | ⚠️ Unaudited |
| Rewards Handler | unknown | ethereum | n/a | [`0xe8d1e2...736f56`](./contracts/ethereum-1/0xe8d1e2531761406af1615a6764b0d5ff52736f56/) | ⚠️ Unaudited |
| RocketTokenRETH | unknown | ethereum | n/a | [`0xae7873...fc6393`](./contracts/ethereum-1/0xae78736cd615f374d3085123a210448e74fc6393/) | ⚠️ Unaudited |
| Root Liquidity Gauge Factory | unknown | ethereum | n/a | [`0x306a45...d9dcd6`](./contracts/ethereum-1/0x306a45a1478a000dc701a6e1f7a569afb8d9dcd6/) | ⚠️ Unaudited |
| SafeProxy | unknown | plasma | n/a | [`0x6d447e...cfffed`](./contracts/plasma-9745/0x6d447e544d01a59cb0774763bf15526574cfffed/) | ⚠️ Unaudited |
| sCrvUsdDistributor | unknown | ethereum | n/a | [`0x17ac69...367efc`](./contracts/ethereum-1/0x17ac69dd3fb8f22b4f52dbdb8a3a0eb059367efc/) | ⚠️ Unaudited |
| sdCRV | unknown | ethereum | n/a | [`0xd1b565...f6abb5`](./contracts/ethereum-1/0xd1b5651e55d4ceed36251c61c50c889b36f6abb5/) | ⚠️ Unaudited |
| sDola | unknown | ethereum | n/a | [`0xb45ad1...157305`](./contracts/ethereum-1/0xb45ad160634c528cc3d2926d9807104fa3157305/) | ⚠️ Unaudited |
| sdToken | unknown | ethereum | n/a | [`0x0879c1...122c66`](./contracts/ethereum-1/0x0879c1a344910c2944c29b892a1cf0c216122c66/) | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | arbitrum | n/a | [`0x0b3536...c8f5c1`](./contracts/arbitrum-42161/0x0b3536245fadabcf091778c4289caebdc2c8f5c1/) | ⚠️ Unaudited |
| Sonic Block Hash oracle | unknown | sonic | n/a | [`0xe35a87...096bd8`](./contracts/sonic-146/0xe35a879e5efb4f1bb7f70dcf3250f2e19f096bd8/) | ⚠️ Unaudited |
| sReUsdDistributor | unknown | ethereum | n/a | [`0x55b2b5...25690a`](./contracts/ethereum-1/0x55b2b51f661e269aed638a5ddbf2fc930125690a/) | ⚠️ Unaudited |
| StableCalc | unknown | aurora | n/a | [`0xca8d07...36e4b4`](./contracts/aurora-1313161554/0xca8d0747b5573d69653c3ac22242e6341c36e4b4/) | ⚠️ Unaudited |
| StandardArbERC20 | unknown | arbitrum | n/a | [`0x11cdb4...034978`](./contracts/arbitrum-42161/0x11cdb42b0eb46d95f990bedd4695a6e3fa034978/) | ⚠️ Unaudited |
| stkCvxCrvDistributorZaps | unknown | ethereum | n/a | [`0x1b8b49...8dff7b`](./contracts/ethereum-1/0x1b8b4946a3d1953b145897f4bdd4583b7f8dff7b/) | ⚠️ Unaudited |
| stkCvxCrvHarvester | unknown | ethereum | n/a | [`0x3e2cad...fe83d7`](./contracts/ethereum-1/0x3e2cad773e36e29a53eaab56726043ac04fe83d7/) | ⚠️ Unaudited |
| stkCvxCrvMerkleDistributor | unknown | ethereum | n/a | [`0x0ed7d0...696f17`](./contracts/ethereum-1/0x0ed7d0497194fc029ae02223fec6d4d567696f17/) | ⚠️ Unaudited |
| stkCvxCrvMigration | unknown | ethereum | n/a | [`0x3074e3...07ac3c`](./contracts/ethereum-1/0x3074e38941c52a466a228e451e21a0c34607ac3c/) | ⚠️ Unaudited |
| stkCvxCrvStrategy | unknown | ethereum | n/a | [`0x8d2aee...0eb7f3`](./contracts/ethereum-1/0x8d2aee9a7d581f3ed29e961a05c54f2be90eb7f3/) | ⚠️ Unaudited |
| stkCvxCrvVault | unknown | ethereum | n/a | [`0x4ebad8...6b89b7`](./contracts/ethereum-1/0x4ebad8dbd4edbd74db0278714fbd67ebc76b89b7/) | ⚠️ Unaudited |
| stkCvxCrvZaps | unknown | ethereum | n/a | [`0x105ec4...87ee2b`](./contracts/ethereum-1/0x105ec4f5cc0dfd706ac3af68de1a3c80b587ee2b/) | ⚠️ Unaudited |
| stkCvxFxsDistributorZaps | unknown | ethereum | n/a | [`0xae12bf...dc7d7c`](./contracts/ethereum-1/0xae12bf0ad604ddb1c5f048e14b48d719fbdc7d7c/) | ⚠️ Unaudited |
| stkCvxFxsHarvester | unknown | ethereum | n/a | [`0x35d28d...f5e906`](./contracts/ethereum-1/0x35d28d77369e825298de76060e96e5ada7f5e906/) | ⚠️ Unaudited |
| stkCvxFxsMerkleDistributor | unknown | ethereum | n/a | [`0x5682a2...7e398c`](./contracts/ethereum-1/0x5682a28919389b528ae74dd627e0d632ca7e398c/) | ⚠️ Unaudited |
| stkCvxFxsMigration | unknown | ethereum | n/a | [`0xab237f...c30fd9`](./contracts/ethereum-1/0xab237fd3b2e72a82ab08330f98fb1fa36ec30fd9/) | ⚠️ Unaudited |
| stkCvxFxsStrategy | unknown | ethereum | n/a | [`0x110a88...fb70de`](./contracts/ethereum-1/0x110a888f88b65a2c34a6922f518128eda4fb70de/) | ⚠️ Unaudited |
| stkCvxFxsVault | unknown | ethereum | n/a | [`0x0fdd9e...35386d`](./contracts/ethereum-1/0x0fdd9e5dc0c83795f5c114e2b27926194035386d/) | ⚠️ Unaudited |
| stkCvxFxsZaps | unknown | ethereum | n/a | [`0x1f409e...a23908`](./contracts/ethereum-1/0x1f409ec6f395493ad39f5b27945f1a6658a23908/) | ⚠️ Unaudited |
| stkCvxPrismaDistributorZaps | unknown | ethereum | n/a | [`0x0976b9...354480`](./contracts/ethereum-1/0x0976b9a5816bb7d0441b776a76c3057980354480/) | ⚠️ Unaudited |
| stkCvxPrismaHarvester | unknown | ethereum | n/a | [`0x1f9409...54defb`](./contracts/ethereum-1/0x1f9409933aa273dab349ceba255f5ad8f854defb/) | ⚠️ Unaudited |
| stkCvxPrismaMerkleDistributor | unknown | ethereum | n/a | [`0xf09320...6754d3`](./contracts/ethereum-1/0xf09320ed7db384cab7fce9ea9947436a806754d3/) | ⚠️ Unaudited |
| stkCvxPrismaMigration | unknown | ethereum | n/a | [`0x06c3b2...599ac5`](./contracts/ethereum-1/0x06c3b252c01225fdf3017551f39668c9b6599ac5/) | ⚠️ Unaudited |
| stkCvxPrismaStrategy | unknown | ethereum | n/a | [`0x88011c...e89e01`](./contracts/ethereum-1/0x88011c72623777f6452a7d6d8bab10ec67e89e01/) | ⚠️ Unaudited |
| stkCvxPrismaVault | unknown | ethereum | n/a | [`0x9bfd08...1464bd`](./contracts/ethereum-1/0x9bfd08d7b3cc40129132a17b4d5b9ea3351464bd/) | ⚠️ Unaudited |
| stkCvxPrismaZaps | unknown | ethereum | n/a | [`0x167832...2dd5f4`](./contracts/ethereum-1/0x1678324f62001454f7c08e936511a0371a2dd5f4/) | ⚠️ Unaudited |
| StreamExecutor | unknown | ethereum | n/a | [`0x4a8cc5...1c462a`](./contracts/ethereum-1/0x4a8cc5cb8f7242be9944e1313793c2e5411c462a/) | ⚠️ Unaudited |
| TBTCToken | unknown | ethereum | n/a | [`0x8daeba...815faa`](./contracts/ethereum-1/0x8daebade922df735c38c80c7ebd708af50815faa/) | ⚠️ Unaudited |
| TetherToken | unknown | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| Token | unknown | bsc | n/a | [`0x0094ad...5fe0e5`](./contracts/bsc-56/0x0094ad026643994c8fb2136ec912d508b15fe0e5/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xcacd6f...586e29`](./contracts/ethereum-1/0xcacd6fd266af91b8aed52accc382b4e165586e29/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xe3cbd0...489e8f`](./contracts/ethereum-1/0xe3cbd06d7dadb3f4e6557bab7edd924cd1489e8f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | [`0x6508ef...2d290b`](./contracts/ethereum-1/0x6508ef65b0bd57eabd0f1d52685a70433b2d290b/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x172370...a610af`](./contracts/polygon-137/0x172370d5cd63279efa6d502dab29171933a610af/) | ⚠️ Unaudited |
| UnionVault | unknown | ethereum | n/a | [`0x83507c...884c81`](./contracts/ethereum-1/0x83507cc8c8b67ed48badd1f59f684d5d02884c81/) | ⚠️ Unaudited |
| UnionZap | unknown | ethereum | n/a | [`0x7a7f79...aa4925`](./contracts/ethereum-1/0x7a7f79c5706716bae853c1b96e36538c7eaa4925/) | ⚠️ Unaudited |
| VecrvVerifier | unknown | sonic | n/a | [`0x38334e...7a6abc`](./contracts/sonic-146/0x38334e319d257d8f580f66393d25a6cd647a6abc/) | ⚠️ Unaudited |
| VeSDTFeeAngleProxyV2 | unknown | ethereum | n/a | [`0x059f78...fcd1ac`](./contracts/ethereum-1/0x059f78859a152e42dd590a49be44f2ebe9fcd1ac/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x000000...fc4383`](./contracts/ethereum-1/0x0000000022d53366457f9d5e68ec105046fc4383/) | ⚠️ Unaudited |
| WAVAX | unknown | avalanche | n/a | [`0xb31f66...fd66c7`](./contracts/avalanche-43114/0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7/) | ⚠️ Unaudited |
| WETH | unknown | unichain | n/a | [`0x420000...000006`](./contracts/unichain-130/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WETH9 | unknown | optimism | n/a | [`0x420000...000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WMATIC | unknown | polygon | n/a | [`0x0d500b...df1270`](./contracts/polygon-137/0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270/) | ⚠️ Unaudited |
| WrappedSonic | unknown | sonic | n/a | [`0x039e2f...94ad38`](./contracts/sonic-146/0x039e2fb66102314ce7b64ce5ce3e5183bc94ad38/) | ⚠️ Unaudited |
| WstETH | unknown | ethereum | n/a | [`0x7f39c5...5e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | ⚠️ Unaudited |
| WXDAI | unknown | gnosis | n/a | [`0xe91d15...63a97d`](./contracts/gnosis-100/0xe91d153e0b41518a2ce8dd3d7944fa863463a97d/) | ⚠️ Unaudited |
| WXPL | unknown | plasma | n/a | [`0x6100e3...d19873`](./contracts/plasma-9745/0x6100e367285b01f48d07953803a2d8dca5d19873/) | ⚠️ Unaudited |
| XYZ Broadcaster | unknown | ethereum | n/a | [`0x7ba334...4cc2cc`](./contracts/ethereum-1/0x7ba33456ec00812c6b6bb6c1c3dff579c34cc2cc/) | ⚠️ Unaudited |
| XYZ Relayer | unknown | sonic | n/a | [`0xe5de15...983a69`](./contracts/sonic-146/0xe5de15a9c9bbedb4f5ec13b131e61245f2983a69/) | ⚠️ Unaudited |
| ycDAI | unknown | ethereum | n/a | [`0x99d1fa...7041bc`](./contracts/ethereum-1/0x99d1fa417f94dcd62bfe781a1213c092a47041bc/) | ⚠️ Unaudited |
| ycUSDC | unknown | ethereum | n/a | [`0x9777d7...4cb07e`](./contracts/ethereum-1/0x9777d7e2b60bb01759d0e2f8be2095df444cb07e/) | ⚠️ Unaudited |
| ycUSDT | unknown | ethereum | n/a | [`0x1be5d7...8a0a59`](./contracts/ethereum-1/0x1be5d71f2da660bfdee8012ddc58d024448a0a59/) | ⚠️ Unaudited |
| yDAI | unknown | ethereum | n/a | [`0x16de59...f0bd01`](./contracts/ethereum-1/0x16de59092dae5ccf4a1e6439d611fd0653f0bd01/) | ⚠️ Unaudited |
| Yearn V3 Vault | unknown | ethereum | n/a | [`0x065597...b84367`](./contracts/ethereum-1/0x0655977feb2f289a4ab78af67bab0d17aab84367/) | ⚠️ Unaudited |
| yUSDC | unknown | ethereum | n/a | [`0xd6ad7a...a3436e`](./contracts/ethereum-1/0xd6ad7a6750a7593e092a9b218d66c0a814a3436e/) | ⚠️ Unaudited |
| yUSDT | unknown | ethereum | n/a | [`0x83f798...f1707d`](./contracts/ethereum-1/0x83f798e925bcd4017eb265844fddabb448f1707d/) | ⚠️ Unaudited |
| ZaiStablecoin | unknown | ethereum | n/a | [`0x69000d...182ced`](./contracts/ethereum-1/0x69000dfd5025e82f48eb28325a2b88a241182ced/) | ⚠️ Unaudited |

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
| [The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The audit report is available on [GitHub](). (also discovered via alternate URL)](https://github.com/curvefi/scrvusd/blob/main/audits/ChainSecurity_Curve_scrvUSD_audit.pdf) | ChainSecurity | Audit | 2024-12 | aging | Direct | contract_name | 2 | high |
| [The source code was audited by [:logos-chainsecurity: ChainSecurity](https://www.chainsecurity.com/). The full audit report can be found [here]().](https://github.com/curvefi/fee-splitter/blob/main/audits/ChainSecurity.pdf) | ChainSecurity | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |
| [Security audits and disclosure reports are available on [GitHub]()](https://github.com/curvefi/security-incident-reports) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [View Full Report →](https://docs.curve.finance/pdf/audits/curve-dao-ToB-final.pdf) | TrailOfBits | Audit | 2020-07 | stale | Direct | contract_name | 1 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/Curve%20Finance%20DAO%20Voting%20Forwarder%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2020-07 | stale | Direct | n/a | 0 | n/a |
| [View Full Report →](https://docs.curve.finance/pdf/audits/Curve%20Finance%20DAO%20Voting%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2020-07 | stale | Direct | contract_name | 1 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/curve-dao-quantstamp.pdf) | Quantstamp | Audit | 2020-08 | stale | Direct | n/a | 0 | n/a |
| [View Full Report →](https://docs.curve.finance/pdf/audits/ChainSecurity_FeeSplitter.pdf) | ChainSecurity | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/ChainSecurity_Curve_Xgov_Audit.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | contract_name | 1 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/CurveMetapoolAudit.pdf) | Quantstamp | Audit | 2020-10 | stale | Direct | n/a | 0 | n/a |
| [View Full Report →](https://docs.curve.finance/pdf/audits/ChainSecurity_Curve_Finance_Curve_ETH_sETH_Smart_contract_audit.pdf) | ChainSecurity | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [View Full Report →](https://docs.curve.finance/pdf/audits/Curve%20Finance%20StableSwapNG%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2023-11 | stale | Direct | contract_name | 5 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/ChainSecurity_Curve_Finance_Tricrypto_smart_contract_audit_September.pdf) | ChainSecurity | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [View Full Report →](https://docs.curve.finance/pdf/audits/ChainSecurity_Curve_tricrypto-ng_audit.pdf) | ChainSecurity | Audit | 2023-06 | stale | Direct | contract_name | 2 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/private_ChainSecurity_Curve_CurveCryptoSwap2ETH_audit_draft.pdf) | ChainSecurity | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [View Full Report →](https://docs.curve.finance/pdf/audits/ChainSecurity_Curve_Fast_Bridge_audit.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | contract_name | 4 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/Curve%20Stablecoin%20(crvUSD)%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2023-06 | stale | Direct | contract_name | 1 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/ChainSecurity_Curve_Curve_Stablecoin_audit-1.pdf) | ChainSecurity | Audit | 2024-01 | stale | Direct | contract_name | 1 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/ChainSecurity_Curve_Curve_Stablecoin_audit_250221.pdf) | ChainSecurity | Audit | 2025-02 | aging | Direct | contract_name | 3 | high |
| [View Full Report →](https://docs.curve.finance/pdf/audits/ChainSecurity_Curve_PegKeeperV2_audit.pdf) | ChainSecurity | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [View Full Report →](https://docs.curve.finance/pdf/audits/StateMind_Curve_Lending.pdf) | StateMind | Audit | 2024-02 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 241 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=13
- Match method counts: extraction_exact=28

Zero-match audit list:

- [17145] Security audits and disclosure reports are available on [GitHub]()
- [17150] View Full Report →
- [17152] View Full Report →
- [17155] View Full Report →
- [17156] View Full Report →
- [17158] View Full Report →
- [17160] View Full Report →
- [17165] View Full Report →

Fork inheritance lineage and inherited audits are included when available.
