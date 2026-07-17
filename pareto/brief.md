# Agentic Audit Brief: Pareto

## Project Overview

- Project: Pareto (`pareto`)
- Website: [https://pareto.credit/](https://pareto.credit/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:42.973Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, ethereum, optimism, polygon
- Contract surface: 162 unique implementations (162 raw deployments)
- DeFi Llama TVL: $202,329,760.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 149 project-authored contract(s) across 4 chain(s); 4 ERC4626 vaults, 28 ERC20 tokens, 1 ERC721 NFT, 1 ERC1155 multi-token, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 32 common project-authored base contract(s) (emergencyutils, constants, erc20basic). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 162; live-surface contracts included: 162 (162 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 35/121 (28.9%)
- Deployed-live implementations: 162 of 162 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 35/162
- Verified + Unaudited implementations: 127
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 162
- Raw deployments: 162
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 16 unknown
- Coverage code basis (deployed vs audited code): 35 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 4.1% (ConsenSys Diligence)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 30 | 18.5% | 2021-04 |
| Consensys Diligence | Tier 1 | 5 | 3.1% | 2021-06 |
| CertiK | Tier 2 | 4 | 2.5% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (35)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EarlyRewards | unknown | ethereum | n/a | [`0xa1f71ed24aba6c8da8ca8c046bbc9804625d88fc`](./contracts/ethereum-1/0xa1f71ed24aba6c8da8ca8c046bbc9804625d88fc/) | ✅ Audited |
| GovernorAlpha | unknown | ethereum | n/a | [`0x2256b25cfc8e35c3135664fd03e77595042fe31b`](./contracts/ethereum-1/0x2256b25cfc8e35c3135664fd03e77595042fe31b/) | ✅ Audited |
| Idle | unknown | ethereum | n/a | [`0x875773784af8135ea0ef43b5a374aad105c5d39e`](./contracts/ethereum-1/0x875773784af8135ea0ef43b5a374aad105c5d39e/) | ✅ Audited |
| IdleAave | unknown | ethereum | n/a | [`0x0bc3bba4ef3d1355a76e69900f98a59d30ef54f3`](./contracts/ethereum-1/0x0bc3bba4ef3d1355a76e69900f98a59d30ef54f3/) | ✅ Audited |
| IdleAaveV2 | unknown | ethereum | n/a | [`0x3c5a5d7832e9084fd88885823afa8cd99250a70c`](./contracts/ethereum-1/0x3c5a5d7832e9084fd88885823afa8cd99250a70c/) | ✅ Audited |
| IdleCDO | unknown | ethereum | n/a | [`0x1ea9ae797972ad9fc52c55105d184d8b059bb716`](./contracts/ethereum-1/0x1ea9ae797972ad9fc52c55105d184d8b059bb716/) | ✅ Audited |
| IdleCDOEpochDepositQueue | unknown | optimism | n/a | [`0x6976e70270ac078391880515b8ce2dc047a724dc`](./contracts/optimism-10/0x6976e70270ac078391880515b8ce2dc047a724dc/) | ✅ Audited |
| IdleCDOOptimism | unknown | optimism | n/a | [`0x6b8a1e78ac707f9b0b5eb4f34b02d9af84d2b689`](./contracts/optimism-10/0x6b8a1e78ac707f9b0b5eb4f34b02d9af84d2b689/) | ✅ Audited |
| IdleCDOTranche | unknown | optimism | n/a | [`0x24e16f9fad32891f8ba69ce8fedd273a2649331a`](./contracts/optimism-10/0x24e16f9fad32891f8ba69ce8fedd273a2649331a/) | ✅ Audited |
| IdleCDOTruefiCreditVariant | unknown | arbitrum | n/a | [`0x2361130282a24421d9fdf2d1072c8ede2a79f108`](./contracts/arbitrum-42161/0x2361130282a24421d9fdf2d1072c8ede2a79f108/) | ✅ Audited |
| IdleCompound | unknown | ethereum | n/a | [`0x55583f7ca92f4cf051e6f55d77a967ba9b2c1edd`](./contracts/ethereum-1/0x55583f7ca92f4cf051e6f55d77a967ba9b2c1edd/) | ✅ Audited |
| IdleCompoundETH | unknown | ethereum | n/a | [`0x9a7aca7618801ca90f91beaa5a1a2e90a55605ca`](./contracts/ethereum-1/0x9a7aca7618801ca90f91beaa5a1a2e90a55605ca/) | ✅ Audited |
| IdleCompoundV2 | unknown | ethereum | n/a | [`0x0c39daf173646c4ce9e6a678425ed965c98ccc66`](./contracts/ethereum-1/0x0c39daf173646c4ce9e6a678425ed965c98ccc66/) | ✅ Audited |
| IdleDSR | unknown | ethereum | n/a | [`0x587fe6430a1148df4868e9e71357a179110c608a`](./contracts/ethereum-1/0x587fe6430a1148df4868e9e71357a179110c608a/) | ✅ Audited |
| IdleFactory | unknown | ethereum | n/a | [`0x5d4e705315aca451db40bf7c067077c768b3ffd0`](./contracts/ethereum-1/0x5d4e705315aca451db40bf7c067077c768b3ffd0/) | ✅ Audited |
| IdleFulcrum | unknown | ethereum | n/a | [`0x727d9c331e9481167dc61a9289c948da25be825e`](./contracts/ethereum-1/0x727d9c331e9481167dc61a9289c948da25be825e/) | ✅ Audited |
| IdleFulcrumV2 | unknown | ethereum | n/a | [`0x02072abc26f1d69849b6dca0b1ea805dc4cbe2e1`](./contracts/ethereum-1/0x02072abc26f1d69849b6dca0b1ea805dc4cbe2e1/) | ✅ Audited |
| IdleMcdBridge | unknown | ethereum | n/a | [`0x7ab2a7ed1a0c58dea84de880b4f1710229137211`](./contracts/ethereum-1/0x7ab2a7ed1a0c58dea84de880b4f1710229137211/) | ✅ Audited |
| IdlePriceCalculator | unknown | ethereum | n/a | [`0xaefb1325a2c1756bc3fcc516d6c2cf947d225358`](./contracts/ethereum-1/0xaefb1325a2c1756bc3fcc516d6c2cf947d225358/) | ✅ Audited |
| IdleRebalancer | unknown | ethereum | n/a | [`0x781616fb046a4e39c239e39bfeff1a07d4b753f4`](./contracts/ethereum-1/0x781616fb046a4e39c239e39bfeff1a07d4b753f4/) | ✅ Audited |
| IdleRebalancerV3 | unknown | ethereum | n/a | [`0x21fcd8adac59adc2eb94355eb2f43f869bbc9582`](./contracts/ethereum-1/0x21fcd8adac59adc2eb94355eb2f43f869bbc9582/) | ✅ Audited |
| IdleRebalancerV3_1 | unknown | ethereum | n/a | [`0x2be5a50d4125882083aaefdd370848771286a84a`](./contracts/ethereum-1/0x2be5a50d4125882083aaefdd370848771286a84a/) | ✅ Audited |
| IdleTokenGovernance | unknown | ethereum | n/a | [`0x2854a270fe9c839ffe453e9178d1cfef109d6b8e`](./contracts/ethereum-1/0x2854a270fe9c839ffe453e9178d1cfef109d6b8e/) | ✅ Audited |
| IdleTokenHelper | unknown | ethereum | n/a | [`0x5b7400cc634a49650cb3212d882512424fed00ed`](./contracts/ethereum-1/0x5b7400cc634a49650cb3212d882512424fed00ed/) | ✅ Audited |
| IdleTokenV3 | unknown | ethereum | n/a | [`0x12b98c621e8754ae70d0fdbbc73d6208bc3e3ca6`](./contracts/ethereum-1/0x12b98c621e8754ae70d0fdbbc73d6208bc3e3ca6/) | ✅ Audited |
| IdleTokenV3_1 | unknown | ethereum | n/a | [`0x2fec85c0eaaace2b24926eabbf8373b26240931a`](./contracts/ethereum-1/0x2fec85c0eaaace2b24926eabbf8373b26240931a/) | ✅ Audited |
| IdleViewHelper | unknown | ethereum | n/a | [`0x2adf7ccf0241b60747d194b3ea163e28105dadec`](./contracts/ethereum-1/0x2adf7ccf0241b60747d194b3ea163e28105dadec/) | ✅ Audited |
| MinimalInitializableProxyFactory | unknown | polygon | n/a | [`0xad27d10ef37e809b67b1a7e74f65e781cc5a693d`](./contracts/polygon-137/0xad27d10ef37e809b67b1a7e74f65e781cc5a693d/) | ✅ Audited |
| PriceOracle | unknown | ethereum | n/a | [`0x972a64d108e250df98dbeac8170678501f5ef181`](./contracts/ethereum-1/0x972a64d108e250df98dbeac8170678501f5ef181/) | ✅ Audited |
| Reservoir | unknown | ethereum | n/a | [`0x031f71b5369c251a6544c41ce059e6b3d61e42c6`](./contracts/ethereum-1/0x031f71b5369c251a6544c41ce059e6b3d61e42c6/) | ✅ Audited |
| Timelock | unknown | polygon | n/a | [`0x45f4fb4d0ccc439bb7b85ba63064958ab7e31ee4`](./contracts/polygon-137/0x45f4fb4d0ccc439bb7b85ba63064958ab7e31ee4/) | ✅ Audited |
| Unitroller | unknown | ethereum | n/a | [`0x275da8e61ea8e02d51edd8d0dc5c0e62b4cdb0be`](./contracts/ethereum-1/0x275da8e61ea8e02d51edd8d0dc5c0e62b4cdb0be/) | ✅ Audited |
| Vester | unknown | ethereum | n/a | [`0x3024656ae91d7bf724f613c314bc56030ba2344c`](./contracts/ethereum-1/0x3024656ae91d7bf724f613c314bc56030ba2344c/) | ✅ Audited |
| VesterFactory | unknown | ethereum | n/a | [`0xbf875f2c6e4cc1688dfe4ecf79583193b6089972`](./contracts/ethereum-1/0xbf875f2c6e4cc1688dfe4ecf79583193b6089972/) | ✅ Audited |
| yxToken | unknown | ethereum | n/a | [`0x0d81b042bb9939b4d32cdf7861774c442a2685ce`](./contracts/ethereum-1/0x0d81b042bb9939b4d32cdf7861774c442a2685ce/) | ✅ Audited |

### ⚠️ Verified + Unaudited (127)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x08db226d63ce724a6091ba82d28dfc76ceca23d8`](./contracts/ethereum-1/0x08db226d63ce724a6091ba82d28dfc76ceca23d8/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | polygon | n/a | [`0x154f023f7a41012a63fa72729f0dc5162a81dc89`](./contracts/polygon-137/0x154f023f7a41012a63fa72729f0dc5162a81dc89/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | polygon | n/a | [`0x1ee6470cd75d5686d0b2b90c0305fa46fb0c89a1`](./contracts/polygon-137/0x1ee6470cd75d5686d0b2b90c0305fa46fb0c89a1/) | ⚠️ Unaudited |
| ArbitrumExtension | unknown | arbitrum | n/a | [`0xba4eee20f434bc3908a0b18da496348657133a7e`](./contracts/arbitrum-42161/0xba4eee20f434bc3908a0b18da496348657133a7e/) | ⚠️ Unaudited |
| CelsiusxStrategy | unknown | polygon | n/a | [`0x0e90cf05acb23d8dfa856a74e74a165c6a7af8b3`](./contracts/polygon-137/0x0e90cf05acb23d8dfa856a74e74a165c6a7af8b3/) | ⚠️ Unaudited |
| ChildChainManager | unknown | polygon | n/a | [`0x195fe6ee6639665cceb15bcceb9980fc445dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | polygon | n/a | [`0xafeea1de9d660d3cb53031cfe1a58de40b171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ⚠️ Unaudited |
| ChildERC1155 | unknown | polygon | n/a | [`0xa0c68c638235ee32657e8f720a23cec1bfc77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| ChildERC20 | unknown | polygon | n/a | [`0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ⚠️ Unaudited |
| ChildERC721 | unknown | polygon | n/a | [`0x6ebeac13f6403d19c95b6b75008b12fd21a93aab`](./contracts/polygon-137/0x6ebeac13f6403d19c95b6b75008b12fd21a93aab/) | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | polygon | n/a | [`0xd4888fab8bd39a663b63161f5ee1eae31a25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ⚠️ Unaudited |
| ConvexStrategyPlainPool3Token | unknown | ethereum | n/a | [`0x03563deef50b957f69232de055ea1a8aa6d854d9`](./contracts/ethereum-1/0x03563deef50b957f69232de055ea1a8aa6d854d9/) | ⚠️ Unaudited |
| DelegateStakingRewardsIDLE | unknown | ethereum | n/a | [`0x747e819b878956fb6e5eb936a6415a5d037ff388`](./contracts/ethereum-1/0x747e819b878956fb6e5eb936a6415a5d037ff388/) | ⚠️ Unaudited |
| EthenaCooldownRequest | unknown | ethereum | n/a | [`0xe0c4a2b14f0acd936226a598be6bfed190e098d1`](./contracts/ethereum-1/0xe0c4a2b14f0acd936226a598be6bfed190e098d1/) | ⚠️ Unaudited |
| EulerStakingPYTStrategy | unknown | ethereum | n/a | [`0xcf93471a82241c2be469d83d960932721b098ffb`](./contracts/ethereum-1/0xcf93471a82241c2be469d83d960932721b098ffb/) | ⚠️ Unaudited |
| FalconXAAAdapter | unknown | ethereum | n/a | [`0x48fc1a04e5e18c994c3165c9ad0d3553d7f57724`](./contracts/ethereum-1/0x48fc1a04e5e18c994c3165c9ad0d3553d7f57724/) | ⚠️ Unaudited |
| FiatToken | unknown | ethereum | n/a | [`0x8cbde23b1416cac07a52591bba744c744d77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | optimism | n/a | [`0x0b2c639c533813f4aa9d7837caf62653d097ff85`](./contracts/optimism-10/0x0b2c639c533813f4aa9d7837caf62653d097ff85/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa908c50376d1028412c028aa0629f0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x0882477e7895bdc5cea7cb1552ed914ab157fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a6e95992041568d9391d09d0122023778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | [`0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x8397259c983751daf40400790063935a11afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0xbaecba470c229984b75bc860efe8e97ae082bb9f`](./contracts/ethereum-1/0xbaecba470c229984b75bc860efe8e97ae082bb9f/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | optimism | n/a | [`0xfdbb4d606c199f091143bd604c85c191a526fbd0`](./contracts/optimism-10/0xfdbb4d606c199f091143bd604c85c191a526fbd0/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | polygon | n/a | [`0x61a944ca131ab78b23c8449e0a2ef935981d5cf6`](./contracts/polygon-137/0x61a944ca131ab78b23c8449e0a2ef935981d5cf6/) | ⚠️ Unaudited |
| GovernableFund | unknown | ethereum | n/a | [`0x107a369bc066c77ff061c7d2420618a6ce31b925`](./contracts/ethereum-1/0x107a369bc066c77ff061c7d2420618a6ce31b925/) | ⚠️ Unaudited |
| GovernorAccessControl | unknown | ethereum | n/a | [`0xf02faf7cfee786111eae6747a0c344b48c1ed5e5`](./contracts/ethereum-1/0xf02faf7cfee786111eae6747a0c344b48c1ed5e5/) | ⚠️ Unaudited |
| HypernativeBatchPauser | unknown | polygon | n/a | [`0x1b0f494ef778907336bd7e631607db2c8019bf76`](./contracts/polygon-137/0x1b0f494ef778907336bd7e631607db2c8019bf76/) | ⚠️ Unaudited |
| IdleBatchedMint | unknown | ethereum | n/a | [`0x4dbf03a2d7037eb59ae03d3a2927f1d7ec805c69`](./contracts/ethereum-1/0x4dbf03a2d7037eb59ae03d3a2927f1d7ec805c69/) | ⚠️ Unaudited |
| IdleCDOEpochQueue | unknown | optimism | n/a | [`0x07ee2f1272914e869d0e47e08b5a10007b8fdf31`](./contracts/optimism-10/0x07ee2f1272914e869d0e47e08b5a10007b8fdf31/) | ⚠️ Unaudited |
| IdleCDOEpochVariantArbitrum | unknown | arbitrum | n/a | [`0x0e90cf05acb23d8dfa856a74e74a165c6a7af8b3`](./contracts/arbitrum-42161/0x0e90cf05acb23d8dfa856a74e74a165c6a7af8b3/) | ⚠️ Unaudited |
| IdleCDOEpochVariantOptimism | unknown | optimism | n/a | [`0x0581f1f01e05b77612feaf529da3e048e1424a7e`](./contracts/optimism-10/0x0581f1f01e05b77612feaf529da3e048e1424a7e/) | ⚠️ Unaudited |
| IdleCDOEpochVariantPolygon | unknown | polygon | n/a | [`0x5c9aca3ce6dec45d21041ed9964c7242ecd85a83`](./contracts/polygon-137/0x5c9aca3ce6dec45d21041ed9964c7242ecd85a83/) | ⚠️ Unaudited |
| IdleCDOEpochVariantPrefunded | unknown | ethereum | n/a | [`0x73fb8d2d96486b6aac8713f0c1cc2633e03a0f6a`](./contracts/ethereum-1/0x73fb8d2d96486b6aac8713f0c1cc2633e03a0f6a/) | ⚠️ Unaudited |
| IdleCDOFactory | unknown | ethereum | n/a | [`0x3c9916bb9498f637e2fa86c2028e26275dc9a631`](./contracts/ethereum-1/0x3c9916bb9498f637e2fa86c2028e26275dc9a631/) | ⚠️ Unaudited |
| IdleCDOInstadappLiteVariant | unknown | ethereum | n/a | [`0x0d0f8a0f04d54197f85fee6d5523df2d84a73b27`](./contracts/ethereum-1/0x0d0f8a0f04d54197f85fee6d5523df2d84a73b27/) | ⚠️ Unaudited |
| IdleCDOPoLidoVariant | unknown | ethereum | n/a | [`0x56050f117d675041da6a4b501f0cb75d455759a1`](./contracts/ethereum-1/0x56050f117d675041da6a4b501f0cb75d455759a1/) | ⚠️ Unaudited |
| IdleCDOPolygon | unknown | polygon | n/a | [`0x710426b69e50863b1689f36dc324265c7dd076c9`](./contracts/polygon-137/0x710426b69e50863b1689f36dc324265c7dd076c9/) | ⚠️ Unaudited |
| IdleCDORegistry | unknown | ethereum | n/a | [`0x84fdee80f18957a041354e99c7eb407467d94d8e`](./contracts/ethereum-1/0x84fdee80f18957a041354e99c7eb407467d94d8e/) | ⚠️ Unaudited |
| IdleCDOUsualVariant | unknown | ethereum | n/a | [`0x41b55b28de948d9e5bbe62f30d47f8f0f29a7e8b`](./contracts/ethereum-1/0x41b55b28de948d9e5bbe62f30d47f8f0f29a7e8b/) | ⚠️ Unaudited |
| IdleCreditVaultFactory | unknown | ethereum | n/a | [`0x2dcb01bbf8c1a68b4a063250fa5ee01ee7b52a7e`](./contracts/ethereum-1/0x2dcb01bbf8c1a68b4a063250fa5ee01ee7b52a7e/) | ⚠️ Unaudited |
| IdleCreditVaultImpliedPrice | unknown | ethereum | n/a | [`0x1745c027ab3082c3b1019db69af295f095500663`](./contracts/ethereum-1/0x1745c027ab3082c3b1019db69af295f095500663/) | ⚠️ Unaudited |
| IdleCreditVaultWriteOffEscrow | unknown | ethereum | n/a | [`0x1c89df6c8b1ab81ef90855120fafb93d7fca3254`](./contracts/ethereum-1/0x1c89df6c8b1ab81ef90855120fafb93d7fca3254/) | ⚠️ Unaudited |
| IdleDepositForwarder | unknown | ethereum | n/a | [`0x43bd6a78b37b50e3f52cacec53f1202dbde6a761`](./contracts/ethereum-1/0x43bd6a78b37b50e3f52cacec53f1202dbde6a761/) | ⚠️ Unaudited |
| IdleEulerStakingStrategyPSM | unknown | ethereum | n/a | [`0x956f650177f95ef142aa2a26da407ad014cf5784`](./contracts/ethereum-1/0x956f650177f95ef142aa2a26da407ad014cf5784/) | ⚠️ Unaudited |
| IdleEulerStrategy | unknown | ethereum | n/a | [`0x3886557ed1698dbd496a4a0f2e00df8918ea45e0`](./contracts/ethereum-1/0x3886557ed1698dbd496a4a0f2e00df8918ea45e0/) | ⚠️ Unaudited |
| IdleFuse | unknown | ethereum | n/a | [`0x8788050c3026557c539a2b8fce146e27fa4acc4f`](./contracts/ethereum-1/0x8788050c3026557c539a2b8fce146e27fa4acc4f/) | ⚠️ Unaudited |
| IdleMStableStrategy | unknown | ethereum | n/a | [`0x7b8c3ee1bafb4af5826d41137cd5caf878083619`](./contracts/ethereum-1/0x7b8c3ee1bafb4af5826d41137cd5caf878083619/) | ⚠️ Unaudited |
| IdlePoLidoStrategy | unknown | ethereum | n/a | [`0x4916ee4a761e5cff5b4a3183f109f3e141a12569`](./contracts/ethereum-1/0x4916ee4a761e5cff5b4a3183f109f3e141a12569/) | ⚠️ Unaudited |
| IdlePYT | unknown | ethereum | n/a | [`0xd3af1317450d291c328525a8eb183d5cca45553d`](./contracts/ethereum-1/0xd3af1317450d291c328525a8eb183d5cca45553d/) | ⚠️ Unaudited |
| IdlePYTClear | unknown | optimism | n/a | [`0x0fdcdc3df70420bad4f7ead4852f961b5d809df1`](./contracts/optimism-10/0x0fdcdc3df70420bad4f7ead4852f961b5d809df1/) | ⚠️ Unaudited |
| IdlePYTClearJunior | unknown | ethereum | n/a | [`0xff31c69a983bac080f23f21be965650758d19d18`](./contracts/ethereum-1/0xff31c69a983bac080f23f21be965650758d19d18/) | ⚠️ Unaudited |
| IdlePYTClearPSM | unknown | ethereum | n/a | [`0x6fa86028323ba310fe4488f74085de99ed0264d8`](./contracts/ethereum-1/0x6fa86028323ba310fe4488f74085de99ed0264d8/) | ⚠️ Unaudited |
| IdleRebalancerV2 | unknown | ethereum | n/a | [`0xec470753b56ced3784ce29db7c297f0c1b75fc87`](./contracts/ethereum-1/0xec470753b56ced3784ce29db7c297f0c1b75fc87/) | ⚠️ Unaudited |
| IdleRebalancerV3SUSD | unknown | ethereum | n/a | [`0x6b98a5e0e67e68f502e8950992e0b1c0aee0a506`](./contracts/ethereum-1/0x6b98a5e0e67e68f502e8950992e0b1c0aee0a506/) | ⚠️ Unaudited |
| IdleRebalancerV3USDT | unknown | ethereum | n/a | [`0x2403457ce59e56dd69d2fc4f22e77d7ab180deb1`](./contracts/ethereum-1/0x2403457ce59e56dd69d2fc4f22e77d7ab180deb1/) | ⚠️ Unaudited |
| IdleRibbonPSMStrategy | unknown | ethereum | n/a | [`0x051ba97b84a921f4134376af2c7e3a38229b0933`](./contracts/ethereum-1/0x051ba97b84a921f4134376af2c7e3a38229b0933/) | ⚠️ Unaudited |
| IdleStrategy | unknown | ethereum | n/a | [`0x10cecc30087f4b3e894dad8398307faa2f0ac2b9`](./contracts/ethereum-1/0x10cecc30087f4b3e894dad8398307faa2f0ac2b9/) | ⚠️ Unaudited |
| IdleTokenFungible | unknown | ethereum | n/a | [`0x0d41f858d803af86e5192a77a798ad7d97e906ca`](./contracts/ethereum-1/0x0d41f858d803af86e5192a77a798ad7d97e906ca/) | ⚠️ Unaudited |
| IdleTokenFungibleOptimism | unknown | optimism | n/a | [`0x1b0f494ef778907336bd7e631607db2c8019bf76`](./contracts/optimism-10/0x1b0f494ef778907336bd7e631607db2c8019bf76/) | ⚠️ Unaudited |
| IdleTokenHelperMatic | unknown | polygon | n/a | [`0x17e0d3f5caede03c97becac4ecb27739a15e9485`](./contracts/polygon-137/0x17e0d3f5caede03c97becac4ecb27739a15e9485/) | ⚠️ Unaudited |
| IdleTokenV3SUSD | unknown | ethereum | n/a | [`0x51c77689a9c2e8ccbecd4ec9770a1fa5fa83eef1`](./contracts/ethereum-1/0x51c77689a9c2e8ccbecd4ec9770a1fa5fa83eef1/) | ⚠️ Unaudited |
| IdleTokenV3USDT | unknown | ethereum | n/a | [`0x42740698959761baf1b06baa51efbd88cb1d862b`](./contracts/ethereum-1/0x42740698959761baf1b06baa51efbd88cb1d862b/) | ⚠️ Unaudited |
| IdleTokenWrapper | unknown | ethereum | n/a | [`0x544897a3b944fdeb1f94a0ed973ea31a80ae18e1`](./contracts/ethereum-1/0x544897a3b944fdeb1f94a0ed973ea31a80ae18e1/) | ⚠️ Unaudited |
| IdleTrancheAdapter | unknown | ethereum | n/a | [`0x70728f08e97303d757be4cd97a7d27b65dd41e6d`](./contracts/ethereum-1/0x70728f08e97303d757be4cd97a7d27b65dd41e6d/) | ⚠️ Unaudited |
| IdleUsdcOtcSwap | unknown | ethereum | n/a | [`0x863a08bfc7ae938c4f96c2c3ef82fa309b33e765`](./contracts/ethereum-1/0x863a08bfc7ae938c4f96c2c3ef82fa309b33e765/) | ⚠️ Unaudited |
| KeyringIdleWhitelist | unknown | polygon | n/a | [`0x168dc532aa8071003daa1a8094d938511f412e2b`](./contracts/polygon-137/0x168dc532aa8071003daa1a8094d938511f412e2b/) | ⚠️ Unaudited |
| LockedIDLE | unknown | ethereum | n/a | [`0x02682c933428e7a9b7527dd9385f1e0c5d4a4f48`](./contracts/ethereum-1/0x02682c933428e7a9b7527dd9385f1e0c5d4a4f48/) | ⚠️ Unaudited |
| MasterChefTokenizerPolygon | unknown | polygon | n/a | [`0x0ac74fe6f3c9123254418eefce37e4f7271a2b72`](./contracts/polygon-137/0x0ac74fe6f3c9123254418eefce37e4f7271a2b72/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x566c11b5c2201b69c9269fe924e4395873674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | ⚠️ Unaudited |
| MaticWETH | unknown | polygon | n/a | [`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| MerkleClaim | unknown | ethereum | n/a | [`0x69369507aa7a44156cc297448ab57e3c15d26485`](./contracts/ethereum-1/0x69369507aa7a44156cc297448ab57e3c15d26485/) | ⚠️ Unaudited |
| MetamorphoPYTStrategy | unknown | ethereum | n/a | [`0x96dd27112bdd615c3a2d649fe22d8ee27e448152`](./contracts/ethereum-1/0x96dd27112bdd615c3a2d649fe22d8ee27e448152/) | ⚠️ Unaudited |
| MetaMorphoSnippets | unknown | ethereum | n/a | [`0x603cb545b98aca3691be869871b34ae72ccfddca`](./contracts/ethereum-1/0x603cb545b98aca3691be869871b34ae72ccfddca/) | ⚠️ Unaudited |
| MorphoAavePYTStrategy | unknown | ethereum | n/a | [`0x9db5a6bd77572748e541a0cf42f787f5fe03049e`](./contracts/ethereum-1/0x9db5a6bd77572748e541a0cf42f787f5fe03049e/) | ⚠️ Unaudited |
| MorphoAaveV2SupplyVaultStrategy | unknown | ethereum | n/a | [`0x0cb45d9790e7f335b491c9532f7ad15aa1a9dfac`](./contracts/ethereum-1/0x0cb45d9790e7f335b491c9532f7ad15aa1a9dfac/) | ⚠️ Unaudited |
| MultiSigWallet | unknown | arbitrum | n/a | [`0x4a9196b06f339ad9f3ee752c987b401f2e1e2718`](./contracts/arbitrum-42161/0x4a9196b06f339ad9f3ee752c987b401f2e1e2718/) | ⚠️ Unaudited |
| ParetoDollar | unknown | optimism | n/a | [`0x0f3e8de8dfdf3bf9d864865b5f890cae933a0d73`](./contracts/optimism-10/0x0f3e8de8dfdf3bf9d864865b5f890cae933a0d73/) | ⚠️ Unaudited |
| ParetoDollarQueue | unknown | ethereum | n/a | [`0x07ace8d682987c2219fe8cd314b858c326a4c3fd`](./contracts/ethereum-1/0x07ace8d682987c2219fe8cd314b858c326a4c3fd/) | ⚠️ Unaudited |
| ParetoDollarStaking | unknown | optimism | n/a | [`0x0b5f6ec63abcf8253e0a8c36c858e0290484c894`](./contracts/optimism-10/0x0b5f6ec63abcf8253e0a8c36c858e0290484c894/) | ⚠️ Unaudited |
| PriceOracleV2 | unknown | ethereum | n/a | [`0xb5a8f07dd4c3d315869405d702ee8f6ea695e8c5`](./contracts/ethereum-1/0xb5a8f07dd4c3d315869405d702ee8f6ea695e8c5/) | ⚠️ Unaudited |
| PriceOracleV2Matic | unknown | polygon | n/a | [`0x27f06d00d73ec426193473726bb0671267fd27f0`](./contracts/polygon-137/0x27f06d00d73ec426193473726bb0671267fd27f0/) | ⚠️ Unaudited |
| PriceOracleV3 | unknown | ethereum | n/a | [`0x2335e0fcd008d953ad3c5879e3719d20156d5fa0`](./contracts/ethereum-1/0x2335e0fcd008d953ad3c5879e3719d20156d5fa0/) | ⚠️ Unaudited |
| ProgrammableBorrower | unknown | ethereum | n/a | [`0x01d0799a2f740120dacbfec33c5374b9086d069b`](./contracts/ethereum-1/0x01d0799a2f740120dacbfec33c5374b9086d069b/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x0138a84f821809e2d01b16d053f4b4a5b88b725e`](./contracts/ethereum-1/0x0138a84f821809e2d01b16d053f4b4a5b88b725e/) | ⚠️ Unaudited |
| SmartWalletChecker | unknown | ethereum | n/a | [`0x2d8b5b65c6464651403955ac6d71f9c0204169d3`](./contracts/ethereum-1/0x2d8b5b65c6464651403955ac6d71f9c0204169d3/) | ⚠️ Unaudited |
| StakingRewards | unknown | polygon | n/a | [`0x466cfdff869666941cdb89daa412c3cddc55d6c1`](./contracts/polygon-137/0x466cfdff869666941cdb89daa412c3cddc55d6c1/) | ⚠️ Unaudited |
| TokenGeyserPolygon | unknown | polygon | n/a | [`0x2540971d944921b51e3434503922ea92f2ee0862`](./contracts/polygon-137/0x2540971d944921b51e3434503922ea92f2ee0862/) | ⚠️ Unaudited |
| TranchesChainlinkOracle | unknown | ethereum | n/a | [`0x0da050cf37747fd665adacdc0ce482f62442fb94`](./contracts/ethereum-1/0x0da050cf37747fd665adacdc0ce482f62442fb94/) | ⚠️ Unaudited |
| TrancheWrapper | unknown | ethereum | n/a | [`0x79f05f75df6c156b2b98ac1fbfb3637fc1e6f048`](./contracts/ethereum-1/0x79f05f75df6c156b2b98ac1fbfb3637fc1e6f048/) | ⚠️ Unaudited |
| TrancheWrapperWSTETHBalancer | unknown | ethereum | n/a | [`0x6bf9ea02daab6b4b3b71cce20a84088a71bf723a`](./contracts/ethereum-1/0x6bf9ea02daab6b4b3b71cce20a84088a71bf723a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x00d39058943b4a6f01cb3386a7f44b84ab482c8b`](./contracts/ethereum-1/0x00d39058943b4a6f01cb3386a7f44b84ab482c8b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0186e34de71987303b4ed4a027ed939a1178a73b`](./contracts/ethereum-1/0x0186e34de71987303b4ed4a027ed939a1178a73b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0198792f2849397908c092b6b57654e1a57a4cdc`](./contracts/ethereum-1/0x0198792f2849397908c092b6b57654e1a57a4cdc/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x01b8a788d2742d8d1706fce7204fb523c51e175c`](./contracts/ethereum-1/0x01b8a788d2742d8d1706fce7204fb523c51e175c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0962fb33a7e0172d0e413b0fab003bee5142e6b6`](./contracts/ethereum-1/0x0962fb33a7e0172d0e413b0fab003bee5142e6b6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0ad21c3ac4ffe7c1ed2b1b717cd051ded365fa32`](./contracts/ethereum-1/0x0ad21c3ac4ffe7c1ed2b1b717cd051ded365fa32/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0cac674ebd77bbd899f6079932768f6d59da089a`](./contracts/ethereum-1/0x0cac674ebd77bbd899f6079932768f6d59da089a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0fe4fc1301afe4afe8c3ac288c3e13cdace71b04`](./contracts/ethereum-1/0x0fe4fc1301afe4afe8c3ac288c3e13cdace71b04/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x16f6be72882b24527f94c7bccabf77b62608083b`](./contracts/ethereum-1/0x16f6be72882b24527f94c7bccabf77b62608083b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1d659f4357e30de73ed2dc02ed4e34bca262dcc8`](./contracts/ethereum-1/0x1d659f4357e30de73ed2dc02ed4e34bca262dcc8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1eb1b47d0d8bcd9d761f52d26fcd90bba225344c`](./contracts/ethereum-1/0x1eb1b47d0d8bcd9d761f52d26fcd90bba225344c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1f5a97fb665e295303d2f7215ba2160cc5313c8e`](./contracts/ethereum-1/0x1f5a97fb665e295303d2f7215ba2160cc5313c8e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x25e7337037817dd9bddd0334ca1591f370518893`](./contracts/ethereum-1/0x25e7337037817dd9bddd0334ca1591f370518893/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x271ce5ded4ccbd28833bddf8a8093517299920f0`](./contracts/ethereum-1/0x271ce5ded4ccbd28833bddf8a8093517299920f0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x29c794b9a70752c41d65ebccef1c1ee697387510`](./contracts/ethereum-1/0x29c794b9a70752c41d65ebccef1c1ee697387510/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x29d094110c7a89f1cb6c975df0a38cae80f24b21`](./contracts/ethereum-1/0x29d094110c7a89f1cb6c975df0a38cae80f24b21/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x35168324dc1981addc3bc915788e200bedf77865`](./contracts/ethereum-1/0x35168324dc1981addc3bc915788e200bedf77865/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x35df8a95b348dd87167ed00b3421ba15d95ac1c8`](./contracts/ethereum-1/0x35df8a95b348dd87167ed00b3421ba15d95ac1c8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x3687c0f8760371fc1bd1c7bc28695c388cded5a0`](./contracts/ethereum-1/0x3687c0f8760371fc1bd1c7bc28695c388cded5a0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x37de1d299c93743472343699c58ec95000870dc5`](./contracts/ethereum-1/0x37de1d299c93743472343699c58ec95000870dc5/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x3bcba0afd36c9b350f46c570f89ab70817d122cb`](./contracts/ethereum-1/0x3bcba0afd36c9b350f46c570f89ab70817d122cb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x4473bc90118b18be890af42d793b5252c4dc382d`](./contracts/ethereum-1/0x4473bc90118b18be890af42d793b5252c4dc382d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x62b17c9083db5941197e83bd385985b8878b58fb`](./contracts/ethereum-1/0x62b17c9083db5941197e83bd385985b8878b58fb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x9e0c5ee5e4b187cf18b23745fcf2b6ae66a9b52f`](./contracts/ethereum-1/0x9e0c5ee5e4b187cf18b23745fcf2b6ae66a9b52f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xbc48967c34d129a2ef25dd4dc693cc7364d02eb9`](./contracts/ethereum-1/0xbc48967c34d129a2ef25dd4dc693cc7364d02eb9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x2361130282a24421d9fdf2d1072c8ede2a79f108`](./contracts/optimism-10/0x2361130282a24421d9fdf2d1072c8ede2a79f108/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x10417734001162ea139e8b044dfe28dbb8b28ad0`](./contracts/arbitrum-42161/0x10417734001162ea139e8b044dfe28dbb8b28ad0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ⚠️ Unaudited |
| TruefiCreditLineStrategy | unknown | arbitrum | n/a | [`0x5d4e705315aca451db40bf7c067077c768b3ffd0`](./contracts/arbitrum-42161/0x5d4e705315aca451db40bf7c067077c768b3ffd0/) | ⚠️ Unaudited |
| UChildDAI | unknown | polygon | n/a | [`0x490e379c9cff64944be82b849f8fd5972c7999a7`](./contracts/polygon-137/0x490e379c9cff64944be82b849f8fd5972c7999a7/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | n/a | [`0x0735a62b0b6e837fa67130589988436fd26f0e12`](./contracts/polygon-137/0x0735a62b0b6e837fa67130589988436fd26f0e12/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x02daefc2e8aad089d094579499508398e3057966`](./contracts/polygon-137/0x02daefc2e8aad089d094579499508398e3057966/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x2791bca1f2de4661ed88a30c99a7a9449aa84174`](./contracts/polygon-137/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0xc2132d05d31c914a87c6611c10748aeb04b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x0c3310b0b57b86d376040b755f94a925f39c4320`](./contracts/ethereum-1/0x0c3310b0b57b86d376040b755f94a925f39c4320/) | ⚠️ Unaudited |

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
| [Link](https://drive.google.com/file/d/1bu-K45CsMWeIST676uEyIgTSAOImDtXe/view?usp=sharing) | Hans Friese | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://drive.google.com/file/d/1aIGWfo1-WXTgE3DfLfZYyJ6NNs8-esNT/view?usp=sharing) | Hans Friese | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://drive.google.com/file/d/1rTfKCkQbhVEk6qgYsluuHD2acXRxA4e1/view?usp=sharing) | Hans Friese | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://drive.google.com/file/d/1nr5kvwheKoYBDWe4M5DotKcapHWoqFSh/view?usp=sharing) | Hans Friese | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://drive.google.com/file/d/1OC3TEhRQNeHrVSdRTbrOteSrafNYXoHq/view?usp=sharing) | Hans Friese | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://drive.google.com/file/d/12q-79KRkB9r2zPjyztFRYVBo1ynb-FFn/view?usp=sharing) | Hans Friese | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://skynet.certik.com/projects/idle-finance) | CertiK | Audit | 2022-03 | stale | Direct | contract_name | 4 | medium |
| [Link](https://diligence.security/audits/2021/06/idle-finance) | Consensys Diligence | Audit | 2021-06 | stale | Direct | contract_name | 5 | high |
| [Link](https://certificate.quantstamp.com/full/idle-finance.pdf) | Quantstamp | Audit | 2021-04 | stale | Direct | contract_name | 21 | high |
| [Link](https://certificate.quantstamp.com/full/idle-governance.pdf) | Quantstamp | Audit | 2020-11 | stale | Direct | contract_name | 9 | high |
| [Link](https://drive.google.com/file/d/1tkpk3Rl-O5JWPN0jT2717DtFUnpksRlB/view?usp=sharing) | Sherlock (0x52) | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://drive.google.com/file/d/1K8K84VQrejNZnRzvjuIFMPHMw2ReWoQH/view?usp=sharing) | Sherlock (0x52) | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://drive.google.com/file/d/1UwmUQX-9VwK-2FIkKOu_62k4Lm-gC1K-/view?usp=drive_link) | Sherlock (0x52) | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://drive.google.com/file/d/1B5VFcZMcf8KVbBkslmfutIzHmraOkdUX/view) | Sherlock (0x52) | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://drive.google.com/file/d/1V1LP5WR01QxHN8M51OXG6N7vrG9b2d0Y/view) | Sherlock (0x52) | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://drive.google.com/file/d/1n8RNsqN7hXcQHwtmksKHYhW8zXVfiDB5/view?usp=sharing) | Sherlock (0x52) | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://drive.google.com/file/d/1P8QsDc118cJmp5cCOneefM5NN7xhx5Io/view?usp=sharing) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://drive.google.com/file/d/15UH3nytMdm_BYSX2XHd77-uZlTXsOLV1/view?usp=sharing) | X77 | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://drive.google.com/file/d/1dBlNpGjnhcryl0s-muvuQGORVz-TzBCM/view?usp=sharing) | Sherlock (0x52) | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://drive.google.com/file/d/1ONqxBgT1GvdYoA-QBAQ7OGlBDicQ4xcI/view?usp=sharing) | Sherlock (0x52) | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xba4eee20f434bc3908a0b18da496348657133a7e`](./contracts/arbitrum-42161/0xba4eee20f434bc3908a0b18da496348657133a7e/) | ArbitrumExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0e90cf05acb23d8dfa856a74e74a165c6a7af8b3`](./contracts/polygon-137/0x0e90cf05acb23d8dfa856a74e74a165c6a7af8b3/) | CelsiusxStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x195fe6ee6639665cceb15bcceb9980fc445dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | ChildChainManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xafeea1de9d660d3cb53031cfe1a58de40b171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ChildChainManagerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa0c68c638235ee32657e8f720a23cec1bfc77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ChildERC1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6ebeac13f6403d19c95b6b75008b12fd21a93aab`](./contracts/polygon-137/0x6ebeac13f6403d19c95b6b75008b12fd21a93aab/) | ChildERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd4888fab8bd39a663b63161f5ee1eae31a25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ChildMintableERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x747e819b878956fb6e5eb936a6415a5d037ff388`](./contracts/ethereum-1/0x747e819b878956fb6e5eb936a6415a5d037ff388/) | DelegateStakingRewardsIDLE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf93471a82241c2be469d83d960932721b098ffb`](./contracts/ethereum-1/0xcf93471a82241c2be469d83d960932721b098ffb/) | EulerStakingPYTStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48fc1a04e5e18c994c3165c9ad0d3553d7f57724`](./contracts/ethereum-1/0x48fc1a04e5e18c994c3165c9ad0d3553d7f57724/) | FalconXAAAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cbde23b1416cac07a52591bba744c744d77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | FiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0b2c639c533813f4aa9d7837caf62653d097ff85`](./contracts/optimism-10/0x0b2c639c533813f4aa9d7837caf62653d097ff85/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6315aa908c50376d1028412c028aa0629f0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | FiatTokenUtil | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0882477e7895bdc5cea7cb1552ed914ab157fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | FiatTokenV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7277a6e95992041568d9391d09d0122023778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | FiatTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | FiatTokenV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8397259c983751daf40400790063935a11afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | FxChild | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x107a369bc066c77ff061c7d2420618a6ce31b925`](./contracts/ethereum-1/0x107a369bc066c77ff061c7d2420618a6ce31b925/) | GovernableFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf02faf7cfee786111eae6747a0c344b48c1ed5e5`](./contracts/ethereum-1/0xf02faf7cfee786111eae6747a0c344b48c1ed5e5/) | GovernorAccessControl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1b0f494ef778907336bd7e631607db2c8019bf76`](./contracts/polygon-137/0x1b0f494ef778907336bd7e631607db2c8019bf76/) | HypernativeBatchPauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dbf03a2d7037eb59ae03d3a2927f1d7ec805c69`](./contracts/ethereum-1/0x4dbf03a2d7037eb59ae03d3a2927f1d7ec805c69/) | IdleBatchedMint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x07ee2f1272914e869d0e47e08b5a10007b8fdf31`](./contracts/optimism-10/0x07ee2f1272914e869d0e47e08b5a10007b8fdf31/) | IdleCDOEpochQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0e90cf05acb23d8dfa856a74e74a165c6a7af8b3`](./contracts/arbitrum-42161/0x0e90cf05acb23d8dfa856a74e74a165c6a7af8b3/) | IdleCDOEpochVariantArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0581f1f01e05b77612feaf529da3e048e1424a7e`](./contracts/optimism-10/0x0581f1f01e05b77612feaf529da3e048e1424a7e/) | IdleCDOEpochVariantOptimism | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5c9aca3ce6dec45d21041ed9964c7242ecd85a83`](./contracts/polygon-137/0x5c9aca3ce6dec45d21041ed9964c7242ecd85a83/) | IdleCDOEpochVariantPolygon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73fb8d2d96486b6aac8713f0c1cc2633e03a0f6a`](./contracts/ethereum-1/0x73fb8d2d96486b6aac8713f0c1cc2633e03a0f6a/) | IdleCDOEpochVariantPrefunded | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c9916bb9498f637e2fa86c2028e26275dc9a631`](./contracts/ethereum-1/0x3c9916bb9498f637e2fa86c2028e26275dc9a631/) | IdleCDOFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d0f8a0f04d54197f85fee6d5523df2d84a73b27`](./contracts/ethereum-1/0x0d0f8a0f04d54197f85fee6d5523df2d84a73b27/) | IdleCDOInstadappLiteVariant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56050f117d675041da6a4b501f0cb75d455759a1`](./contracts/ethereum-1/0x56050f117d675041da6a4b501f0cb75d455759a1/) | IdleCDOPoLidoVariant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x710426b69e50863b1689f36dc324265c7dd076c9`](./contracts/polygon-137/0x710426b69e50863b1689f36dc324265c7dd076c9/) | IdleCDOPolygon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84fdee80f18957a041354e99c7eb407467d94d8e`](./contracts/ethereum-1/0x84fdee80f18957a041354e99c7eb407467d94d8e/) | IdleCDORegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41b55b28de948d9e5bbe62f30d47f8f0f29a7e8b`](./contracts/ethereum-1/0x41b55b28de948d9e5bbe62f30d47f8f0f29a7e8b/) | IdleCDOUsualVariant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2dcb01bbf8c1a68b4a063250fa5ee01ee7b52a7e`](./contracts/ethereum-1/0x2dcb01bbf8c1a68b4a063250fa5ee01ee7b52a7e/) | IdleCreditVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1745c027ab3082c3b1019db69af295f095500663`](./contracts/ethereum-1/0x1745c027ab3082c3b1019db69af295f095500663/) | IdleCreditVaultImpliedPrice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c89df6c8b1ab81ef90855120fafb93d7fca3254`](./contracts/ethereum-1/0x1c89df6c8b1ab81ef90855120fafb93d7fca3254/) | IdleCreditVaultWriteOffEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43bd6a78b37b50e3f52cacec53f1202dbde6a761`](./contracts/ethereum-1/0x43bd6a78b37b50e3f52cacec53f1202dbde6a761/) | IdleDepositForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x956f650177f95ef142aa2a26da407ad014cf5784`](./contracts/ethereum-1/0x956f650177f95ef142aa2a26da407ad014cf5784/) | IdleEulerStakingStrategyPSM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3886557ed1698dbd496a4a0f2e00df8918ea45e0`](./contracts/ethereum-1/0x3886557ed1698dbd496a4a0f2e00df8918ea45e0/) | IdleEulerStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8788050c3026557c539a2b8fce146e27fa4acc4f`](./contracts/ethereum-1/0x8788050c3026557c539a2b8fce146e27fa4acc4f/) | IdleFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b8c3ee1bafb4af5826d41137cd5caf878083619`](./contracts/ethereum-1/0x7b8c3ee1bafb4af5826d41137cd5caf878083619/) | IdleMStableStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4916ee4a761e5cff5b4a3183f109f3e141a12569`](./contracts/ethereum-1/0x4916ee4a761e5cff5b4a3183f109f3e141a12569/) | IdlePoLidoStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd3af1317450d291c328525a8eb183d5cca45553d`](./contracts/ethereum-1/0xd3af1317450d291c328525a8eb183d5cca45553d/) | IdlePYT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0fdcdc3df70420bad4f7ead4852f961b5d809df1`](./contracts/optimism-10/0x0fdcdc3df70420bad4f7ead4852f961b5d809df1/) | IdlePYTClear | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff31c69a983bac080f23f21be965650758d19d18`](./contracts/ethereum-1/0xff31c69a983bac080f23f21be965650758d19d18/) | IdlePYTClearJunior | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fa86028323ba310fe4488f74085de99ed0264d8`](./contracts/ethereum-1/0x6fa86028323ba310fe4488f74085de99ed0264d8/) | IdlePYTClearPSM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xec470753b56ced3784ce29db7c297f0c1b75fc87`](./contracts/ethereum-1/0xec470753b56ced3784ce29db7c297f0c1b75fc87/) | IdleRebalancerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b98a5e0e67e68f502e8950992e0b1c0aee0a506`](./contracts/ethereum-1/0x6b98a5e0e67e68f502e8950992e0b1c0aee0a506/) | IdleRebalancerV3SUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2403457ce59e56dd69d2fc4f22e77d7ab180deb1`](./contracts/ethereum-1/0x2403457ce59e56dd69d2fc4f22e77d7ab180deb1/) | IdleRebalancerV3USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x051ba97b84a921f4134376af2c7e3a38229b0933`](./contracts/ethereum-1/0x051ba97b84a921f4134376af2c7e3a38229b0933/) | IdleRibbonPSMStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10cecc30087f4b3e894dad8398307faa2f0ac2b9`](./contracts/ethereum-1/0x10cecc30087f4b3e894dad8398307faa2f0ac2b9/) | IdleStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d41f858d803af86e5192a77a798ad7d97e906ca`](./contracts/ethereum-1/0x0d41f858d803af86e5192a77a798ad7d97e906ca/) | IdleTokenFungible | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1b0f494ef778907336bd7e631607db2c8019bf76`](./contracts/optimism-10/0x1b0f494ef778907336bd7e631607db2c8019bf76/) | IdleTokenFungibleOptimism | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x17e0d3f5caede03c97becac4ecb27739a15e9485`](./contracts/polygon-137/0x17e0d3f5caede03c97becac4ecb27739a15e9485/) | IdleTokenHelperMatic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51c77689a9c2e8ccbecd4ec9770a1fa5fa83eef1`](./contracts/ethereum-1/0x51c77689a9c2e8ccbecd4ec9770a1fa5fa83eef1/) | IdleTokenV3SUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42740698959761baf1b06baa51efbd88cb1d862b`](./contracts/ethereum-1/0x42740698959761baf1b06baa51efbd88cb1d862b/) | IdleTokenV3USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x544897a3b944fdeb1f94a0ed973ea31a80ae18e1`](./contracts/ethereum-1/0x544897a3b944fdeb1f94a0ed973ea31a80ae18e1/) | IdleTokenWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70728f08e97303d757be4cd97a7d27b65dd41e6d`](./contracts/ethereum-1/0x70728f08e97303d757be4cd97a7d27b65dd41e6d/) | IdleTrancheAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x863a08bfc7ae938c4f96c2c3ef82fa309b33e765`](./contracts/ethereum-1/0x863a08bfc7ae938c4f96c2c3ef82fa309b33e765/) | IdleUsdcOtcSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x168dc532aa8071003daa1a8094d938511f412e2b`](./contracts/polygon-137/0x168dc532aa8071003daa1a8094d938511f412e2b/) | KeyringIdleWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02682c933428e7a9b7527dd9385f1e0c5d4a4f48`](./contracts/ethereum-1/0x02682c933428e7a9b7527dd9385f1e0c5d4a4f48/) | LockedIDLE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0ac74fe6f3c9123254418eefce37e4f7271a2b72`](./contracts/polygon-137/0x0ac74fe6f3c9123254418eefce37e4f7271a2b72/) | MasterChefTokenizerPolygon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x566c11b5c2201b69c9269fe924e4395873674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | MaticWETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69369507aa7a44156cc297448ab57e3c15d26485`](./contracts/ethereum-1/0x69369507aa7a44156cc297448ab57e3c15d26485/) | MerkleClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4a9196b06f339ad9f3ee752c987b401f2e1e2718`](./contracts/arbitrum-42161/0x4a9196b06f339ad9f3ee752c987b401f2e1e2718/) | MultiSigWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0f3e8de8dfdf3bf9d864865b5f890cae933a0d73`](./contracts/optimism-10/0x0f3e8de8dfdf3bf9d864865b5f890cae933a0d73/) | ParetoDollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07ace8d682987c2219fe8cd314b858c326a4c3fd`](./contracts/ethereum-1/0x07ace8d682987c2219fe8cd314b858c326a4c3fd/) | ParetoDollarQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0b5f6ec63abcf8253e0a8c36c858e0290484c894`](./contracts/optimism-10/0x0b5f6ec63abcf8253e0a8c36c858e0290484c894/) | ParetoDollarStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5a8f07dd4c3d315869405d702ee8f6ea695e8c5`](./contracts/ethereum-1/0xb5a8f07dd4c3d315869405d702ee8f6ea695e8c5/) | PriceOracleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x27f06d00d73ec426193473726bb0671267fd27f0`](./contracts/polygon-137/0x27f06d00d73ec426193473726bb0671267fd27f0/) | PriceOracleV2Matic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2335e0fcd008d953ad3c5879e3719d20156d5fa0`](./contracts/ethereum-1/0x2335e0fcd008d953ad3c5879e3719d20156d5fa0/) | PriceOracleV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01d0799a2f740120dacbfec33c5374b9086d069b`](./contracts/ethereum-1/0x01d0799a2f740120dacbfec33c5374b9086d069b/) | ProgrammableBorrower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d8b5b65c6464651403955ac6d71f9c0204169d3`](./contracts/ethereum-1/0x2d8b5b65c6464651403955ac6d71f9c0204169d3/) | SmartWalletChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x466cfdff869666941cdb89daa412c3cddc55d6c1`](./contracts/polygon-137/0x466cfdff869666941cdb89daa412c3cddc55d6c1/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2540971d944921b51e3434503922ea92f2ee0862`](./contracts/polygon-137/0x2540971d944921b51e3434503922ea92f2ee0862/) | TokenGeyserPolygon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0da050cf37747fd665adacdc0ce482f62442fb94`](./contracts/ethereum-1/0x0da050cf37747fd665adacdc0ce482f62442fb94/) | TranchesChainlinkOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x79f05f75df6c156b2b98ac1fbfb3637fc1e6f048`](./contracts/ethereum-1/0x79f05f75df6c156b2b98ac1fbfb3637fc1e6f048/) | TrancheWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bf9ea02daab6b4b3b71cce20a84088a71bf723a`](./contracts/ethereum-1/0x6bf9ea02daab6b4b3b71cce20a84088a71bf723a/) | TrancheWrapperWSTETHBalancer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5d4e705315aca451db40bf7c067077c768b3ffd0`](./contracts/arbitrum-42161/0x5d4e705315aca451db40bf7c067077c768b3ffd0/) | TruefiCreditLineStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x490e379c9cff64944be82b849f8fd5972c7999a7`](./contracts/polygon-137/0x490e379c9cff64944be82b849f8fd5972c7999a7/) | UChildDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0735a62b0b6e837fa67130589988436fd26f0e12`](./contracts/polygon-137/0x0735a62b0b6e837fa67130589988436fd26f0e12/) | UChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02daefc2e8aad089d094579499508398e3057966`](./contracts/polygon-137/0x02daefc2e8aad089d094579499508398e3057966/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2791bca1f2de4661ed88a30c99a7a9449aa84174`](./contracts/polygon-137/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc2132d05d31c914a87c6611c10748aeb04b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c3310b0b57b86d376040b755f94a925f39c4320`](./contracts/ethereum-1/0x0c3310b0b57b86d376040b755f94a925f39c4320/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 121 |
| upstream | 6 |
| standard_library | 35 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 16
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: extraction_exact=39

Zero-match audit list:

- [17952] Link
- [17953] Link
- [17954] Link
- [17955] Link
- [17956] Link
- [17957] Link
- [17962] Link
- [17963] Link
- [17964] Link
- [17965] Link
- [17966] Link
- [17967] Link
- [17968] Link
- [17969] Link
- [17970] Link
- [17971] Link

Fork inheritance lineage and inherited audits are included when available.
