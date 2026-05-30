# Agentic Audit Brief: KyberSwap

⚠️ Lifecycle status: DEAD - TVL dropped 0.7% over 90 days

## Project Overview

- Project: KyberSwap (`kyberswap`)
- Website: [https://kyberswap.com](https://kyberswap.com)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-30T10:12:24.861Z
- Pipeline run: v2-pipeline-2026-05-30-255779-d7f7
- Chains: arbitrum, aurora, avalanche, base, bsc, cronos, ethereum, fantom, linea, optimism, polygon, polygon-zkevm, scroll, unichain, zksync-era
- Contract surface: 445 unique implementations (642 raw deployments)
- DeFi Llama TVL: $10,470,441.00
- On-chain TVL (included contracts): $58,323,780.48
- TVL by chain: Ethereum $57,339,991.81 | Bsc $429,699.97 | Polygon $376,838.66 | Arbitrum $89,615.47 | Optimism $62,232.25 | Avalanche $25,402.31

## Project Description

KyberSwap is a multi-chain decentralized exchange (DEX) aggregator and liquidity protocol that enables users to trade tokens at optimal rates by routing swaps across various liquidity sources. It also provides yield aggregation and liquidity provision features through its Classic and Elastic automated market maker (AMM) products.

### Architecture

The KyberSwap Aggregator routes trades through Classic and Elastic pools, while the KyberDAO governs protocol parameters and fee distribution. KNC tokens are staked in the DAO and bridged across chains to support governance and liquidity incentives.

## Audit Coverage Summary

- Verified implementations audited: 13/136 (9.6%)
- Verified + Unaudited implementations: 117
- Verified by bytecode match: 6
- Unverified implementations: 309
- Unique implementations: 445
- Raw deployments: 642
- Audits discovered: 15
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): $58,323,780.48
- Latest audit: 2026-01 (fresh)
- Staleness: 2 fresh, 0 aging, 3 stale, 10 unknown
- Tier 1 coverage: 7.4% (ChainSecurity, Spearbit)
- Note: This protocol is classified as [dead]. ASD of $58,323,780.48 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 10 | 7.4% | 2026-01 |
| ChainSecurity | Tier 1 | 8 | 5.9% | 2019-01 |
| Spearbit | Tier 1 | 2 | 1.5% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ConversionRates | unknown | ethereum | [`0x798abd...11191b`](./contracts/ethereum-1/0x798abda6cc246d0edba912092a2a3dbd3d11191b/) | ✅ Audited |
| ExpectedRate | unknown | ethereum | 2 deployments: ethereum [`0x543f25...4a8c7e`](./contracts/ethereum-1/0x543f2592b1c478837b5ee2013ed26c7fe04a8c7e/); ethereum `0xf40c50...76f2e4` | ✅ Audited |
| FeeBurner | unknown | ethereum | 2 deployments: ethereum [`0x4e89bc...e14a8e`](./contracts/ethereum-1/0x4e89bc8484b2c454f2f7b25b612b648c45e14a8e/); ethereum `0xed4f53...f34b04` | ✅ Audited |
| KSSmartIntentRouter | adapter | bsc | [`0xaee04d...e09974`](./contracts/bsc-56/0xaee04d31696d14bce773db6d1acec3398ee09974/) | ✅ Audited |
| KyberNetwork | unknown | ethereum | 4 deployments: ethereum [`0x7c6655...5f7acc`](./contracts/ethereum-1/0x7c66550c9c730b6fdd4c03bc2e73c5462c5f7acc/); ethereum `0x91a502...2276b9`; ethereum `0x964f35...508cf5`; ethereum `0x9cb7bb...c9a794` | ✅ Audited |
| KyberNetworkProxy | unknown | ethereum | 3 deployments: ethereum [`0x818e6f...87b755`](./contracts/ethereum-1/0x818e6fecd516ecc3849daf6845e3ec868087b755/); ethereum `0x9aab3f...d4b11e`; ethereum `0xc153ee...38a37c` | ✅ Audited |
| KyberReserve | unknown | ethereum | 3 deployments: ethereum [`0x63825c...6a0d8f`](./contracts/ethereum-1/0x63825c174ab367968ec60f061753d3bbd36a0d8f/); ethereum `0x91be8f...4d6ee1`; ethereum `0xcf76b6...ff44ae` | ✅ Audited |
| LiquidityConversionRates | unknown | ethereum | 3 deployments: ethereum [`0x12530f...a9cba7`](./contracts/ethereum-1/0x12530f9448a8c40d58c34fd62fa3d74991a9cba7/); ethereum `0x40d085...601763`; ethereum `0x97d712...d1edab` | ✅ Audited |
| PancakeSwapInfinityKEMHook | unknown | bsc | [`0x44428c...5fdfd2`](./contracts/bsc-56/0x44428c6ce391915d51f963c0dd395cd0f95fdfd2/) | ✅ Audited |
| UniswapV4KEMHook | unknown | ethereum | 2 deployments: ethereum [`0x444085...75c0c4`](./contracts/ethereum-1/0x4440854b2d02c57a0dc5c58b7a884562d875c0c4/); unichain `0x444139...f880c4` | ✅ Audited |
| Utils | unknown | ethereum | 2 deployments: ethereum [`0x6fc613...20ee02`](./contracts/ethereum-1/0x6fc61357f00b7735e5a75156522def9cfb20ee02/); ethereum `0xaec7fa...018dcc` | ✅ Audited |
| WhiteList | unknown | ethereum | [`0x6e106a...a669a3`](./contracts/ethereum-1/0x6e106a75d369d09a9ea1dcc16da844792aa669a3/) | ✅ Audited |
| Wrapper | unknown | ethereum | 2 deployments: ethereum [`0x8f1a36...fcb608`](./contracts/ethereum-1/0x8f1a369ee7916491e43e412b0dcc7717e2fcb608/); ethereum `0xb6a1c0...e382b2` | ✅ Audited |

### ⚠️ Verified + Unaudited (117)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| KyberNetworkTokenV2 | token | ethereum | 2 deployments: ethereum [`0xdefa4e...e97202`](./contracts/ethereum-1/0xdefa4e8a7bcba345f687a2f1456f5edd9ce97202/); ethereum `0xe5e8e8...62e4ce` | ⚠️ Unaudited |
| ProxyERC20 | token | ethereum | [`0x57ab1e...6d5f51`](./contracts/ethereum-1/0x57ab1ec28d129707052df4df418d58a2d46d5f51/) | ⚠️ Unaudited |
| BEP20TokenImplementation | token | bsc | [`0xfe56d5...1c308b`](./contracts/bsc-56/0xfe56d5892bdffc7bf58f2e84be1b2c32d21c308b/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | [`0x1c954e...91948c`](./contracts/polygon-137/0x1c954e8fe737f99f68fa1ccda3e51ebdb291948c/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | [`0xe4dddf...dc01cb`](./contracts/arbitrum-42161/0xe4dddfe67e7164b0fe14e218d80dc4c08edc01cb/) | ⚠️ Unaudited |
| L2StandardERC20 | token | optimism | [`0xa00e3a...753819`](./contracts/optimism-10/0xa00e3a3511aac35ca78530c85007afcd31753819/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | avalanche | [`0x39fc9e...f50f5f`](./contracts/avalanche-43114/0x39fc9e94caeacb435842fadedecb783589f50f5f/) | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | token | polygon | 2 deployments: polygon [`0x46371c...bc707a`](./contracts/polygon-137/0x46371c90fcce4d7367a61cb43ea7922406bc707a/); arbitrum `0xb448ec...0781df` | ⚠️ Unaudited |
| PToken | token | ethereum | [`0x5228a2...e7733b`](./contracts/ethereum-1/0x5228a22e72ccc52d415ecfd199f99d0665e7733b/) | ⚠️ Unaudited |
| AddressList | unknown | ethereum | 12 deployments: ethereum [`0x3c002e...36a5a7`](./contracts/ethereum-1/0x3c002edfe9b02bfab3381adcb0150e87f536a5a7/); ethereum `0x492dc3...e2fbd0`; ethereum `0x525e1f...e2dccd`; ethereum `0x64e988...cf72e3`; ethereum `0x8f9685...2e4b05`; ethereum `0x971d89...4e2a95`; ethereum `0x97f3ad...fe0652`; ethereum `0xac488e...aa4746`; ethereum `0xbb108a...38f92b`; ethereum `0xd59a8d...5905d5`; ethereum `0xe06b12...fcd62a`; ethereum `0xf33120...d7af9f` | ⚠️ Unaudited |
| AddressValidation | unknown | ethereum | 8 deployments: ethereum [`0x0da3e2...0b1171`](./contracts/ethereum-1/0x0da3e21c3a6b48ff696d45c73b62c54b3e0b1171/); ethereum `0x41de7c...49bb6e`; ethereum `0x42af5f...923ec0`; ethereum `0xbd0e69...a94bcc`; ethereum `0xc57ef7...6a60b1`; ethereum `0xcf04d3...8ea9da`; ethereum `0xdf5985...573b50`; ethereum `0xedfcf7...c23520` | ⚠️ Unaudited |
| AggregationRouter | adapter | ethereum | 9 deployments: ethereum [`0x005555...d8fa6e`](./contracts/ethereum-1/0x00555513acf282b42882420e5e5ba87b44d8fa6e/); ethereum `0x1fc360...0c551c`; ethereum `0xdf1a1b...53ec25`; arbitrum [`0x005555...d8fa6e`](./contracts/arbitrum-42161/0x00555513acf282b42882420e5e5ba87b44d8fa6e/); arbitrum `0xdf1a1b...53ec25`; avalanche [`0x005555...d8fa6e`](./contracts/avalanche-43114/0x00555513acf282b42882420e5e5ba87b44d8fa6e/); avalanche `0x090fb6...1cdda8`; avalanche `0xdf1a1b...53ec25`; aurora `0xdf1a1b...53ec25` | ⚠️ Unaudited |
| AllowanceSheet | operational_periphery | ethereum | [`0x811c5f...30424a`](./contracts/ethereum-1/0x811c5f8dfbdd70c245e66e4cd181040b2630424a/) | ⚠️ Unaudited |
| AntiSnipAttackPositionManager | governance | ethereum | 3 deployments: ethereum [`0x2b1c7b...6dc9a8`](./contracts/ethereum-1/0x2b1c7b41f6a8f2b2bc45c3233a5d5fb3cd6dc9a8/); ethereum `0xe222fb...c6a480`; optimism [`0x2b1c7b...6dc9a8`](./contracts/optimism-10/0x2b1c7b41f6a8f2b2bc45c3233a5d5fb3cd6dc9a8/) | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | arbitrum | 2 deployments: optimism `0x451823...583263`; arbitrum [`0x316772...aaff12`](./contracts/arbitrum-42161/0x316772cfec9a3e976fde42c3ba21f5a13aaaff12/) | ⚠️ Unaudited |
| Balances | unknown | ethereum | [`0x0ae823...478082`](./contracts/ethereum-1/0x0ae823c44b3485918b359329f9f77925c1478082/) | ⚠️ Unaudited |
| BalanceSheet | unknown | ethereum | [`0x6dea55...34e837`](./contracts/ethereum-1/0x6dea55ba04a37fddd05e1fd979c30aa0e634e837/) | ⚠️ Unaudited |
| BCdpManager | governance | ethereum | 3 deployments: ethereum [`0x22d3fb...f051ae`](./contracts/ethereum-1/0x22d3fbe3afd0ffe8db1306eb857a2a8b21f051ae/); ethereum `0x3320f0...f7e147`; ethereum `0x3f30c2...24bbed` | ⚠️ Unaudited |
| BCdpScore | unknown | ethereum | [`0x46dfdf...2344cf`](./contracts/ethereum-1/0x46dfdffe7592eb565e702c4f8fc631065b2344cf/) | ⚠️ Unaudited |
| BlackFriday | unknown | ethereum | [`0x20f7cf...35a7e6`](./contracts/ethereum-1/0x20f7cf5900d0e82ab0f7fe2b6a87c3355035a7e6/) | ⚠️ Unaudited |
| BProxyActions | unknown | ethereum | 2 deployments: ethereum [`0x351626...c9e6a1`](./contracts/ethereum-1/0x351626387b5bb5408f97f8fd6b2ec415efc9e6a1/); ethereum `0x4bcad4...725ab0` | ⚠️ Unaudited |
| BridgedToken | operational_periphery | linea | [`0x3b2f62...c3b1d6`](./contracts/linea-59144/0x3b2f62d42db19b30588648bf1c184865d4c3b1d6/) | ⚠️ Unaudited |
| BTVL | unknown | ethereum | [`0x60312e...9b20cf`](./contracts/ethereum-1/0x60312e01a2acd1dac68838c949c1d20c609b20cf/) | ⚠️ Unaudited |
| BudConnector | unknown | ethereum | 3 deployments: ethereum [`0x2325aa...c79dc3`](./contracts/ethereum-1/0x2325aa20deaa9770a978f1dc7c073589ffc79dc3/); ethereum `0x47f935...cb2553`; ethereum `0x78a049...0cac6d` | ⚠️ Unaudited |
| ChainLogConnector | unknown | ethereum | [`0xbb043f...54a31b`](./contracts/ethereum-1/0xbb043ffb54442e9fbdd720e666fb7292b654a31b/) | ⚠️ Unaudited |
| ConversionRateEnhancedSteps | unknown | ethereum | [`0x35ed79...02f8eb`](./contracts/ethereum-1/0x35ed7969327334d8eef6ac16a61af2769b02f8eb/) | ⚠️ Unaudited |
| Dai | unknown | ethereum | [`0x6b1754...271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | ⚠️ Unaudited |
| DefaultExecutor | unknown | ethereum | 2 deployments: ethereum [`0x41f5d7...50b3b5`](./contracts/ethereum-1/0x41f5d722e6471c338392884088bd03340f50b3b5/); ethereum `0x6758a6...e9afd0` | ⚠️ Unaudited |
| DMMFactory | registry | bsc | 8 deployments: ethereum `0x833e40...8886de`; bsc [`0x10908c...9595c9`](./contracts/bsc-56/0x10908c875d865c66f271f5d3949848971c9595c9/); bsc `0x878dfe...bd934c`; polygon [`0x10908c...9595c9`](./contracts/polygon-137/0x10908c875d865c66f271f5d3949848971c9595c9/); polygon `0x5f1fe6...3c095c`; arbitrum `0xd9bfe9...376974`; avalanche [`0x10908c...9595c9`](./contracts/avalanche-43114/0x10908c875d865c66f271f5d3949848971c9595c9/); aurora `0xd9bfe9...376974` | ⚠️ Unaudited |
| DMMRouter02 | adapter | ethereum | 8 deployments: ethereum [`0x128078...888d6e`](./contracts/ethereum-1/0x12807818b584a3fa65d38b6c25b13983fe888d6e/); ethereum `0x1c8725...8cdbe6`; bsc `0x78df70...c86409`; bsc `0x8efa5a...c5a5f8`; polygon `0x546c79...4e4dd1`; polygon `0x8efa5a...c5a5f8`; avalanche `0x8efa5a...c5a5f8`; aurora `0xeae47c...5cfd55` | ⚠️ Unaudited |
| DSLOProtocol | unknown | ethereum | [`0xcab2fa...6b4f6c`](./contracts/ethereum-1/0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c/) | ⚠️ Unaudited |
| DutchReserve | unknown | ethereum | 7 deployments: ethereum [`0x3d4575...ae3958`](./contracts/ethereum-1/0x3d45755ee30dd38ff5d3cc01e8ae6bea0bae3958/); ethereum `0x625302...f497db`; ethereum `0x7c6fc9...86ae50`; ethereum `0x918308...5d1b37`; ethereum `0xa45f9b...46ca1d`; ethereum `0xa58c6d...32ea1a`; ethereum `0xb173dd...d2431e` | ⚠️ Unaudited |
| EpochVotingPowerStrategy | core_logic | ethereum | [`0xfbd735...209f8b`](./contracts/ethereum-1/0xfbd73581af42b26295cf4b88b74a5af71f209f8b/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | 3 deployments: ethereum [`0x2f577a...5f655d`](./contracts/ethereum-1/0x2f577a41bec1be1152aeea12e73b7391d15f655d/); optimism `0x8abd8c...b3741e`; aurora `0x8abd8c...b3741e` | ⚠️ Unaudited |
| Experiment | unknown | ethereum | [`0x9e80b3...062472`](./contracts/ethereum-1/0x9e80b3cd3ebe427dcafa230fc6064eac10062472/) | ⚠️ Unaudited |
| Exponent | unknown | ethereum | 4 deployments: ethereum [`0x29c24a...f08332`](./contracts/ethereum-1/0x29c24aad19750753289e414053546f54dff08332/); ethereum `0x515643...e44a8d`; ethereum `0x89f58d...e4d54b`; ethereum `0xf79a20...70997c` | ⚠️ Unaudited |
| FeeBurnerResolver | unknown | ethereum | [`0xcb7932...09c669`](./contracts/ethereum-1/0xcb79323ada11af9d7869d0d5563e561bd609c669/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FixedSupplyToken | token | ethereum | 5 deployments: ethereum [`0x094c87...99c446`](./contracts/ethereum-1/0x094c875704c14783049ddf8136e298b3a099c446/); ethereum `0x09677d...f4228d`; ethereum `0x3d3b48...6f61d1`; ethereum `0x6132db...fbb381`; ethereum `0x71168c...48f8a2` | ⚠️ Unaudited |
| GetDecimals | unknown | ethereum | 3 deployments: ethereum [`0x7bfd2c...950fd5`](./contracts/ethereum-1/0x7bfd2c0b917c1154aa3af1e85e1632f038950fd5/); ethereum `0xb4acba...1fb0b6`; ethereum `0xfa1ba4...c99d2d` | ⚠️ Unaudited |
| GovernanceExecutor | unknown | ethereum | 3 deployments: ethereum [`0x09908c...dff9fe`](./contracts/ethereum-1/0x09908cfe36e3941cbfa0c2b6fac623f523dff9fe/); ethereum `0x7b57a6...2301ad`; ethereum `0x81c4b9...c4ac68` | ⚠️ Unaudited |
| Jar | unknown | ethereum | 3 deployments: ethereum [`0x3c36cc...763cff`](./contracts/ethereum-1/0x3c36ccf03dab88c1b1ac1eb9c3fb5db0b6763cff/); ethereum `0xbde0ba...a2e6c1`; ethereum `0xdb89a7...c1d50f` | ⚠️ Unaudited |
| JarConnector | unknown | ethereum | 2 deployments: ethereum [`0x2cd6ea...99c34c`](./contracts/ethereum-1/0x2cd6eaf23f73bc4f359b69711fb34728c599c34c/); ethereum `0xf10bb2...1aaa69` | ⚠️ Unaudited |
| KatanaFeeHandler | unknown | ethereum | [`0x9fb131...8401ca`](./contracts/ethereum-1/0x9fb131efbac23b735d7764ab12f9e52cc68401ca/) | ⚠️ Unaudited |
| KSDistributor | operational_periphery | ethereum | [`0xeae300...286f9c`](./contracts/ethereum-1/0xeae300ac9409b2072697ca1d5fd137f8bb286f9c/) | ⚠️ Unaudited |
| KSElasticLMHelper | periphery | ethereum | 3 deployments: ethereum [`0x35be3f...e10870`](./contracts/ethereum-1/0x35be3f4fd8239a35a7f120756d4d69e5c5e10870/); ethereum `0x6afeb9...7705c8`; bsc `0x6afeb9...7705c8` | ⚠️ Unaudited |
| KSElasticLMV2 | unknown | ethereum | 4 deployments: ethereum [`0x3d6afe...147a43`](./contracts/ethereum-1/0x3d6afe2fb73ffed2e3dd00c501a174554e147a43/); ethereum `0xa70a1a...360e0e`; ethereum `0xf2bcdf...1d6dbd`; bsc `0xe44ec6...690e4b` | ⚠️ Unaudited |
| KSFactory | registry | ethereum | 5 deployments: ethereum [`0x1c758a...429be5`](./contracts/ethereum-1/0x1c758af0688502e49140230f6b0ebd376d429be5/); optimism [`0x1c758a...429be5`](./contracts/optimism-10/0x1c758af0688502e49140230f6b0ebd376d429be5/); arbitrum `0x51e8d1...071a62`; linea [`0x1c758a...429be5`](./contracts/linea-59144/0x1c758af0688502e49140230f6b0ebd376d429be5/); aurora [`0x1c758a...429be5`](./contracts/aurora-1313161554/0x1c758af0688502e49140230f6b0ebd376d429be5/) | ⚠️ Unaudited |
| KSRemoveLiquidityPancakeV4CLHook | unknown | bsc | [`0xf67476...c50eec`](./contracts/bsc-56/0xf67476e5d3fa43e0470f8f1d3c43bf202dc50eec/) | ⚠️ Unaudited |
| KSRemoveLiquidityUniswapV3Hook | unknown | bsc | [`0x72473d...bb1851`](./contracts/bsc-56/0x72473de0b52d079ca21709ea67085757c3bb1851/) | ⚠️ Unaudited |
| KSRemoveLiquidityUniswapV4Hook | unknown | bsc | [`0x635dff...1d7841`](./contracts/bsc-56/0x635dffee858a9f941d058401b393fcfab41d7841/) | ⚠️ Unaudited |
| KSRouter02 | adapter | optimism | 3 deployments: optimism [`0x5649b4...eb23d0`](./contracts/optimism-10/0x5649b4dd00780e99bab7abb4a3d581ea1aeb23d0/); arbitrum `0xc3e2ae...5489dd`; aurora `0x815d02...2a5738` | ⚠️ Unaudited |
| KSZapRouter | adapter | arbitrum | [`0x30c532...e2b79e`](./contracts/arbitrum-42161/0x30c5322e4e08ad500c348007f92f120ab4e2b79e/) | ⚠️ Unaudited |
| KSZapRouterPosition | adapter | ethereum | [`0x0e97c8...429e05`](./contracts/ethereum-1/0x0e97c887b61ccd952a53578b04763e7134429e05/) | ⚠️ Unaudited |
| KSZapRouterPositionPermit | adapter | ethereum | [`0x638d93...0ccabb`](./contracts/ethereum-1/0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb/) | ⚠️ Unaudited |
| KSZapValidator | adapter | ethereum | 2 deployments: ethereum [`0x942412...4f1f26`](./contracts/ethereum-1/0x942412fe06290651ed1438b0cf454339cb4f1f26/); arbitrum `0xf0096e...5c1172` | ⚠️ Unaudited |
| KSZapValidatorV2Part1 | adapter | ethereum | [`0xa16f32...d2863e`](./contracts/ethereum-1/0xa16f32442209c6b978431818aa535bcc9ad2863e/) | ⚠️ Unaudited |
| KyberBancorReserve | unknown | ethereum | 2 deployments: ethereum [`0xb02063...d6d6ce`](./contracts/ethereum-1/0xb020636f8e30cb8c35a863412503cfd5e3d6d6ce/); ethereum `0xba9298...f47239` | ⚠️ Unaudited |
| KyberDao | unknown | ethereum | 2 deployments: ethereum [`0x39e507...8f6b9a`](./contracts/ethereum-1/0x39e507f4f7c3e85ed799fdbdf04e42104a8f6b9a/); ethereum `0x49bdd8...6312e9` | ⚠️ Unaudited |
| KyberFeeHandler | unknown | ethereum | 3 deployments: ethereum [`0xa943b5...6ecfd5`](./contracts/ethereum-1/0xa943b542d1d5683d3454bd0d7ee86c48f36ecfd5/); ethereum `0xd3d2b5...1114fe`; ethereum `0xec3003...71b40c` | ⚠️ Unaudited |
| KyberGovernance | unknown | ethereum | [`0x7ec8fc...d8a7fe`](./contracts/ethereum-1/0x7ec8fcc26be7e9e85b57e73083e5fe0550d8a7fe/) | ⚠️ Unaudited |
| KyberHistory | unknown | ethereum | 8 deployments: ethereum [`0x26a9ec...940ba3`](./contracts/ethereum-1/0x26a9ecbeca589aa575a9806f0555df0382940ba3/); ethereum `0x276864...094e6d`; ethereum `0x9b53d7...ae1fe4`; ethereum `0xab5dfd...ed2715`; ethereum `0xb222bc...9f4cc2`; ethereum `0xe23385...77423c`; ethereum `0xe93844...0b7ffe`; ethereum `0xf2bcfc...2eb38a` | ⚠️ Unaudited |
| KyberMatchingEngine | unknown | ethereum | 2 deployments: ethereum [`0x9cf739...13ff17`](./contracts/ethereum-1/0x9cf739155941a3a7964e711543a8bc902613ff17/); ethereum `0xa1c0fa...996e2c` | ⚠️ Unaudited |
| KyberNetworkCrystal | unknown | ethereum | [`0xdd974d...6bd200`](./contracts/ethereum-1/0xdd974d5c2e2928dea5f71b9825b8b646686bd200/) | ⚠️ Unaudited |
| KyberNetworkENSResolver | unknown | ethereum | [`0x198213...8c9759`](./contracts/ethereum-1/0x1982131c7d6959ff7768ee39c023ad002d8c9759/) | ⚠️ Unaudited |
| KyberReserveHighRate | unknown | ethereum | [`0x132af8...dd3582`](./contracts/ethereum-1/0x132af8c63c2df58fcf3db95c6374feef40dd3582/) | ⚠️ Unaudited |
| KyberStaking | unknown | ethereum | 2 deployments: ethereum [`0xeadb96...72b3bd`](./contracts/ethereum-1/0xeadb96f1623176144eba2b24e35325220972b3bd/); ethereum `0xecf0bd...8aaea3` | ⚠️ Unaudited |
| KyberStorage | unknown | ethereum | 2 deployments: ethereum [`0xb18d90...e30cf5`](./contracts/ethereum-1/0xb18d90be9add2a6c9f2c3943b264c3dc86e30cf5/); ethereum `0xc8fb12...289301` | ⚠️ Unaudited |
| KyberSwapElasticLM | unknown | ethereum | 3 deployments: ethereum [`0x7d5ba5...e3e676`](./contracts/ethereum-1/0x7d5ba536ab244aaa1ea42ab88428847f25e3e676/); ethereum `0xb85ebe...57c03f`; arbitrum `0xbdec4a...329bf0` | ⚠️ Unaudited |
| LimitOrderProtocol | unknown | ethereum | [`0x227b0c...02e936`](./contracts/ethereum-1/0x227b0c196ea8db17a665ea6824d972a64202e936/) | ⚠️ Unaudited |
| LiquidatorBalanceInfo | operational_periphery | ethereum | 2 deployments: ethereum [`0x1f3b21...cc90d0`](./contracts/ethereum-1/0x1f3b218869e2ce02671d64298a19589341cc90d0/); ethereum `0xf0c02c...655ebe` | ⚠️ Unaudited |
| LiquidatorInfo | operational_periphery | ethereum | 3 deployments: ethereum [`0x5fd74c...a1064d`](./contracts/ethereum-1/0x5fd74c9eb05a11c148297d83febd8b4862a1064d/); ethereum `0x720a2b...5ad9fd`; ethereum `0xbe02c5...8ce884` | ⚠️ Unaudited |
| LiquidityMigrator | periphery | ethereum | [`0xa650f1...12ff2e`](./contracts/ethereum-1/0xa650f16f41ca35bf21594eef706290d26b12ff2e/) | ⚠️ Unaudited |
| LiquidityMigrator2 | periphery | ethereum | [`0x6a65e0...7bdeec`](./contracts/ethereum-1/0x6a65e062ce8290007301296f3c6ae446af7bdeec/) | ⚠️ Unaudited |
| MasterChef | unknown | aurora | [`0xe53d65...1930f5`](./contracts/aurora-1313161554/0xe53d6548c327e3ccde5b3cacaa6fcd13301930f5/) | ⚠️ Unaudited |
| MetaAggregationRouter | adapter | arbitrum | 11 deployments: ethereum `0x2b938f...d035cf`; ethereum `0x617dee...44111e`; arbitrum [`0x180555...0877f2`](./contracts/arbitrum-42161/0x180555d4d45e67520adc7c0c51b512c7a50877f2/); arbitrum `0x2b938f...d035cf`; arbitrum `0x617dee...44111e`; arbitrum `0xfc4af9...b2acff`; avalanche [`0x180555...0877f2`](./contracts/avalanche-43114/0x180555d4d45e67520adc7c0c51b512c7a50877f2/); avalanche `0x2b938f...d035cf`; avalanche `0x617dee...44111e`; avalanche `0xfc4af9...b2acff`; aurora `0x617dee...44111e` | ⚠️ Unaudited |
| MetaAggregationRouterV2 | adapter | ethereum | [`0x6131b5...6337b5`](./contracts/ethereum-1/0x6131b5fae19ea4f9d964eac0408e4408b66337b5/) | ⚠️ Unaudited |
| Migrate | unknown | ethereum | 3 deployments: ethereum [`0x9eacb9...bd0a49`](./contracts/ethereum-1/0x9eacb93cb65f8ad428e270690653b156e1bd0a49/); ethereum `0xa30b96...a17c89`; ethereum `0xf4062d...7ed0ca` | ⚠️ Unaudited |
| Multicall2 | periphery | ethereum | 3 deployments: ethereum [`0x5ba1e1...eed696`](./contracts/ethereum-1/0x5ba1e12693dc8f9c48aad8770482f4739beed696/); bsc `0xed386f...45c5a4`; arbitrum `0xbf69a5...751e54` | ⚠️ Unaudited |
| MultipleEpochRewardsClaimer | operational_periphery | ethereum | 2 deployments: ethereum [`0x301c79...421e62`](./contracts/ethereum-1/0x301c790e31663112fdd7267b711353b470421e62/); ethereum `0xfa68d9...1098fa` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | ethereum | 10 deployments: ethereum [`0x3eb01b...96f650`](./contracts/ethereum-1/0x3eb01b3391ea15ce752d01cf3d3f09dec596f650/); ethereum `0x4dbbbf...851e80`; ethereum `0x76c594...8274ba`; ethereum `0x7ba651...db3538`; ethereum `0x91c9d4...e36f5b`; ethereum `0xb7d931...b7862c`; ethereum `0xd69d7a...90c30e`; avalanche `0x76c594...8274ba`; avalanche `0x91c9d4...e36f5b`; avalanche `0xd69d7a...90c30e` | ⚠️ Unaudited |
| NamableAddressList | unknown | ethereum | 4 deployments: ethereum [`0x844de5...aa694a`](./contracts/ethereum-1/0x844de59c9a8d428283923fb752002fafe2aa694a/); ethereum `0x9f59b4...155084`; ethereum `0xf2ec42...3b129d`; ethereum `0xf5de41...d1427e` | ⚠️ Unaudited |
| NoSwappingLiquidationStrategy | core_logic | ethereum | [`0x869410...9631d7`](./contracts/ethereum-1/0x8694103ed4927d389f63213619708e550e9631d7/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | [`0x28fe69...9d57b1`](./contracts/base-8453/0x28fe69ff6864c1c218878bdca01482d36b9d57b1/) | ⚠️ Unaudited |
| Pool | core_logic | ethereum | 4 deployments: ethereum [`0x3add75...186a2c`](./contracts/ethereum-1/0x3add75647681d3ba7a4ecfabf75d393936186a2c/); ethereum `0x84ff97...4faf23`; ethereum `0x912d19...362d4c`; ethereum `0xba791e...0aa47f` | ⚠️ Unaudited |
| PoolOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x049bef...967b09`](./contracts/ethereum-1/0x049beffdb026d6d1d64cfc8fe29bd12142967b09/); ethereum `0xd8ac7f...8dcdb4` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0x500180...7af559`](./contracts/ethereum-1/0x500180a94cb854e98770872af4e4bb1dd67af559/) | ⚠️ Unaudited |
| PTToDaiConversionRate | unknown | ethereum | 2 deployments: ethereum [`0x3b755a...8b9f75`](./contracts/ethereum-1/0x3b755a375921c248250b03e0afffee779c8b9f75/); ethereum `0x7c3f1c...be8c17` | ⚠️ Unaudited |
| QuoterV2 | periphery | ethereum | 3 deployments: ethereum [`0x0d125c...508c1f`](./contracts/ethereum-1/0x0d125c15d54ca1f8a813c74a81aee34ebb508c1f/); ethereum `0x4d47fd...5d7856`; optimism [`0x0d125c...508c1f`](./contracts/optimism-10/0x0d125c15d54ca1f8a813c74a81aee34ebb508c1f/) | ⚠️ Unaudited |
| RewardPool | core_logic | ethereum | [`0xd2d0a0...daa2e2`](./contracts/ethereum-1/0xd2d0a0557e5b78e29542d440ec968f9253daa2e2/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | ethereum | [`0x5ec0dc...c0d3b2`](./contracts/ethereum-1/0x5ec0dcf4f6f55f28550c70b854082993fdc0d3b2/) | ⚠️ Unaudited |
| Router | adapter | ethereum | 3 deployments: ethereum [`0xc1e7df...6f4c83`](./contracts/ethereum-1/0xc1e7dfe73e1598e3910ef4c7845b68a9ab6f4c83/); ethereum `0xf9c2b5...bdeab4`; optimism [`0xc1e7df...6f4c83`](./contracts/optimism-10/0xc1e7dfe73e1598e3910ef4c7845b68a9ab6f4c83/) | ⚠️ Unaudited |
| SafeChecker | unknown | ethereum | [`0x2686ad...1e4bc5`](./contracts/ethereum-1/0x2686ad73b7e09269672a2c3368883b4f271e4bc5/) | ⚠️ Unaudited |
| ScrollStandardERC20 | token | scroll | [`0x608ef9...f99c84`](./contracts/scroll-534352/0x608ef9a3bffe206b86c3108218003b3cfbf99c84/) | ⚠️ Unaudited |
| SetStepFunctionWrapper | unknown | ethereum | [`0x4c63a1...db7b66`](./contracts/ethereum-1/0x4c63a12717ad0b87984ecbb3c97fff0e8edb7b66/) | ⚠️ Unaudited |
| SimpleCall | unknown | ethereum | [`0xb0b538...6f5ad4`](./contracts/ethereum-1/0xb0b538f6aed436643c0b885924ae7a5fea6f5ad4/) | ⚠️ Unaudited |
| StablyFiatToken | token | ethereum | [`0xa4bdb1...112ebe`](./contracts/ethereum-1/0xa4bdb11dc0a2bec88d24a3aa1e6bb17201112ebe/) | ⚠️ Unaudited |
| TarynToken | token | ethereum | [`0x4bb301...6fe6db`](./contracts/ethereum-1/0x4bb301e545a3e948b20ea9a0f02d3948af6fe6db/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TimeLockedController | governance | ethereum | 6 deployments: ethereum [`0x9978d2...e3578f`](./contracts/ethereum-1/0x9978d2d229a69b3aef93420d132ab22b44e3578f/); ethereum `0x9bcf57...91fbb8`; ethereum `0xb8e63e...db615c`; ethereum `0xcf9a1a...449c0b`; ethereum `0xd9a2fc...07c88a`; ethereum `0xe8ae47...cb8c96` | ⚠️ Unaudited |
| TreasuryPool | operational_periphery | ethereum | [`0x0e590b...b60bda`](./contracts/ethereum-1/0x0e590bb5f02a0c38888bffb45dee050b8fb60bda/) | ⚠️ Unaudited |
| Tri | unknown | aurora | [`0x2cd59e...238ac1`](./contracts/aurora-1313161554/0x2cd59ea668afda4e712369042150f2fa00238ac1/) | ⚠️ Unaudited |
| TrueUSD | unknown | ethereum | 8 deployments: ethereum [`0x2424cb...980960`](./contracts/ethereum-1/0x2424cb26cee4943fa58d05c392273f34b6980960/); ethereum `0x8dd5fb...51e73e`; ethereum `0x97daf1...e8459b`; ethereum `0xb7b489...66d5ae`; ethereum `0xc0669b...f701c7`; ethereum `0xc9fffd...09d3d3`; ethereum `0xde5de8...4896bd`; ethereum `0xecc131...a05e48` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | [`0xf49c43...dd6687`](./contracts/ethereum-1/0xf49c43ae0faf37217bdcb00df478cf793edd6687/) | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | aurora | [`0xfe1f3d...c5d65b`](./contracts/aurora-1313161554/0xfe1f3d4d7c09d2d3f959d9f77405f1e102c5d65b/) | ⚠️ Unaudited |
| UserInfo | periphery | ethereum | 2 deployments: ethereum [`0x468960...6ad3ff`](./contracts/ethereum-1/0x468960199c8045dedcf6aeb33e28dc57346ad3ff/); ethereum `0x791678...1ddfb1` | ⚠️ Unaudited |
| Vester | operational_periphery | aurora | 7 deployments: aurora [`0x39ddcc...f4bb1d`](./contracts/aurora-1313161554/0x39ddcccb5ce7cd8fcd0d3bbd6e9f7999d8f4bb1d/); aurora `0x53980a...6e9f8a`; aurora `0x5910ce...aa52a9`; aurora `0x651bb2...77930a`; aurora `0x657a2c...3a9b5c`; aurora `0x7ba018...28d30d`; aurora `0xda1925...80c69c` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | [`0x49c4f9...801a8b`](./contracts/ethereum-1/0x49c4f9bc14884f6210f28342ced592a633801a8b/) | ⚠️ Unaudited |
| WAVAX | unknown | avalanche | [`0xb31f66...fd66c7`](./contracts/avalanche-43114/0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7/) | ⚠️ Unaudited |
| WBNB | unknown | bsc | [`0xbb4cdb...bc095c`](./contracts/bsc-56/0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c/) | ⚠️ Unaudited |
| WBTC | token | ethereum | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WETH9 | token | ethereum | 2 deployments: ethereum [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/); aurora `0xc9bdee...fe3feb` | ⚠️ Unaudited |
| WethUnwrapper | token | ethereum | 2 deployments: ethereum [`0x27a15e...318a8d`](./contracts/ethereum-1/0x27a15e7a67fb812a8bd3b4969397fb2de7318a8d/); ethereum `0x37334c...7a5b94` | ⚠️ Unaudited |
| WhitelistedCollector | unknown | ethereum | [`0x9ed9af...00f6b9`](./contracts/ethereum-1/0x9ed9afb6b4cafbdfb2d833b0e70845997300f6b9/) | ⚠️ Unaudited |
| WMATIC | unknown | polygon | [`0x0d500b...df1270`](./contracts/polygon-137/0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270/) | ⚠️ Unaudited |
| WrapConversionRate | unknown | ethereum | [`0xeb6857...e9aed1`](./contracts/ethereum-1/0xeb6857da49a5544a37c5c350a40c3c9cc8e9aed1/) | ⚠️ Unaudited |
| ZapIn | adapter | ethereum | 3 deployments: ethereum [`0x61a6cb...ba4870`](./contracts/ethereum-1/0x61a6cb01c70db83b74db3c02bbfda9f025ba4870/); polygon `0xf79b1e...526975`; avalanche [`0x61a6cb...ba4870`](./contracts/avalanche-43114/0x61a6cb01c70db83b74db3c02bbfda9f025ba4870/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (6)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Factory | registry | ethereum | 3 deployments: ethereum [`0x5f1ddd...3dd50a`](./contracts/ethereum-1/0x5f1dddbf348ac2fbe22a163e30f99f9ece3dd50a/); ethereum `0xc7a590...308c4a`; optimism [`0x5f1ddd...3dd50a`](./contracts/optimism-10/0x5f1dddbf348ac2fbe22a163e30f99f9ece3dd50a/) | ⚠️ Unaudited (bytecode match) |
| FireBirdFactory | registry | ethereum | 4 deployments: ethereum [`0x59a16e...956571`](./contracts/ethereum-1/0x59a16ece7143459801c3b3f24dc8a0cdfb956571/); arbitrum [`0x59a16e...956571`](./contracts/arbitrum-42161/0x59a16ece7143459801c3b3f24dc8a0cdfb956571/); avalanche [`0x59a16e...956571`](./contracts/avalanche-43114/0x59a16ece7143459801c3b3f24dc8a0cdfb956571/); aurora [`0x59a16e...956571`](./contracts/aurora-1313161554/0x59a16ece7143459801c3b3f24dc8a0cdfb956571/) | ⚠️ Unaudited (bytecode match) |
| FireBirdFormula | unknown | ethereum | 3 deployments: ethereum [`0xa9249f...7785b4`](./contracts/ethereum-1/0xa9249f4d7e84b206d010bc90211a11fda57785b4/); arbitrum [`0xa9249f...7785b4`](./contracts/arbitrum-42161/0xa9249f4d7e84b206d010bc90211a11fda57785b4/); avalanche [`0xa9249f...7785b4`](./contracts/avalanche-43114/0xa9249f4d7e84b206d010bc90211a11fda57785b4/) | ⚠️ Unaudited (bytecode match) |
| Multicall | periphery | polygon | 3 deployments: bsc `0xcf591c...9a74ec`; polygon [`0x878dfe...bd934c`](./contracts/polygon-137/0x878dfe971d44e9122048308301f540910bbd934c/); avalanche [`0x878dfe...bd934c`](./contracts/avalanche-43114/0x878dfe971d44e9122048308301f540910bbd934c/) | ⚠️ Unaudited (bytecode match) |
| TicksFeesReader | unknown | ethereum | 8 deployments: ethereum [`0x165c68...2de75d`](./contracts/ethereum-1/0x165c68077ac06c83800d19200e6e2b08d02de75d/); ethereum `0x8fd8cb...eadbb3`; ethereum `0xd7ab16...0f88c9`; ethereum `0xdc4382...f7d210`; optimism [`0x165c68...2de75d`](./contracts/optimism-10/0x165c68077ac06c83800d19200e6e2b08d02de75d/); optimism `0xd7ab16...0f88c9`; optimism `0xdc4382...f7d210`; optimism `0xe3c78d...1685a2` | ⚠️ Unaudited (bytecode match) |
| TokenPositionDescriptor | token | ethereum | 5 deployments: ethereum [`0x58f1d0...113f3e`](./contracts/ethereum-1/0x58f1d0f9bff9d695010c92fb93d100cef5113f3e/); ethereum `0x8abd8c...b3741e`; ethereum `0x98565f...d40bd6`; ethereum `0xda4745...b6eb6a`; optimism `0xda4745...b6eb6a` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (309)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x7b7f5f0cb077c05f93ed3a4471363e654d66833f) | proxy | ethereum | `0x6e4141...b50ec6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0226cf...59f91a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x041adc...68f011` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x072fe0...b72331` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x07aaba...4c48a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0866ed...866434` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x093a03...3b1c79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0ad1af...62fbf1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0bc32a...c8df1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0c5ace...b6a8ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0e4272...17185c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0e4413...001820` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0f5525...9be456` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1004c5...f1ead1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x10f119...4ce691` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1141c1...055016` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x11b4af...8832b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x138948...aa8ba8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x16daaa...2f774e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x18008a...246225` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x180555...0877f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1bfce8...a292a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d5702...4a37fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1e7649...dbfebb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1f84c2...a307b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1f893e...c51271` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1f97df...c793dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1ff27a...97dc0e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2664bf...d3266e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2722e9...102022` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x276e31...79b744` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x29515b...5e844d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2951d6...7d13c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x29e7d0...80c3c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2a8e79...25d4ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ab0ee...b678cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2abe87...273e0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2f9331...48af55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2fd5e5...76eaf9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x309219...2076d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x32d4e0...569f78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x34e6df...318085` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x35e19e...752dfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3671e4...562f50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x36b7ec...e70047` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3732fb...7575b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x37a6b1...d85f96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x386b28...9c74f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x38cb5f...b19282` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3aac11...f9dbee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3b36eb...009f36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3c4176...d0c2c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3c476a...4014a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3dc912...e19f6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x41684b...e518c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x422e12...c87b4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x45705b...4aaae8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x46c616...cf4a4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x49cf2a...895a0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x49df8a...24f8ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4bef17...d96282` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e2bda...e00874` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4fe5b9...6e2c1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x50950d...adfbb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x520648...96a38b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5301b6...69b374` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x533e6d...3bc584` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5370d7...207224` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x555b6e...7a1fd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x55e8be...bcacbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5649b4...eb23d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x566145...4bce20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5705a7...ceeb2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x572be7...3ccb49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5d7640...8ca7d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5fd93e...56d3a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x61333e...db94cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x63be40...f954d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x63cd13...37acdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x63df0f...f97cf5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x64f0d2...003ec1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x650630...79abd3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x654be4...2fb817` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x669ecc...0d5cd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x66cd4f...80d7d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x68382f...257437` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6944ec...b3a32b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6ace93...b766e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6ad29d...c98865` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6b3bc1...fc879b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6b538b...313357` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6c04fd...21ca7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6d444c...da8322` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6f81eb...70c40f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x76d5e0...04bf9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x789157...36aa25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x78e565...64cb67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7b7f5f...66833f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7c0659...29271d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7fc52e...21cbfb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x824a7b...8b6d26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x83d490...251c31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x865fb7...05b555` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x87bdc1...13e333` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x886f64...e37667` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x88e738...2d9289` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x89958f...90b903` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8f91fd...03bb9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x921f9d...a91b1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9247d4...c79c61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x933a68...a3b74a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x936363...90ef96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x995176...35a549` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9a8d5f...32806c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9d0f55...148fc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa0d27a...467290` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa24d4d...4c69cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa48b24...a6aa5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa5ea82...a7bf15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa8efaa...ca60b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa99e4c...9f58f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xab8040...d98ff4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xabe2c8...7a2dec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaccf1c...bac97f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xadcd33...3f16e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xade471...32eab2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xadf471...b34a6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xae83bd...667009` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaf8c2b...68493e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb05c18...ae1f26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb09d1a...41c246` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb1ac64...aca12c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb20a27...768722` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb5dc39...25d616` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb7242d...489a28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb78234...3940a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb8b13b...da1ec9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb8e6c8...4ab2db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb90faf...083a19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb952d8...a05695` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb9802c...a8c88e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xba3883...d24227` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xba4d70...6c2a6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xba7a28...0d7d3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbad70c...357dde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc19397...1bcc93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc311ef...0b82c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc360ef...af6f2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc5ec1e...a11b3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc6c0bd...b8c1fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc77841...0cd5ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcaa00a...880597` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcaa531...812b6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb6e44...14f94f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcde3eb...a5eac2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcf2269...bd5433` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcf673f...dd5ad3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd12bcd...a59e77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd1b474...40abf4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd46d5e...3c39e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd5a497...c7bcb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd7d59b...87c883` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdaa210...0d4458` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdebcb4...05019b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdffb0e...70d55c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe20f29...3179e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe3ac3f...9ffce5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe4afb0...a38f46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe64f4e...5f416e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe83b89...33120c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe8826e...311c20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe9be00...406187` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xefa53a...1314e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf06c81...9d2e79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf0a3c5...c5967b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf121b4...79fc3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf13549...f784fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf16d45...1657ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf25f71...df7c78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf28fca...43fa55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf294ad...c136fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf3da9a...63e653` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf4c7dd...c25fc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf4cc44...723960` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf5cc44...3cdda5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfb8918...f47f6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfc0898...a49200` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x2abe87...273e0d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xe3ac3f...9ffce5` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x5c7f8a...e1ae23` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x63abb9...151e6d` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xd9bfe9...376974` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x1e1085...917c3f` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x21be37...1a4c83` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x5d5a5a...de039a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x78df70...c86409` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x350047...841c54` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x6ee46c...3283e6` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x9017f5...1b241e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x937f4f...7a5208` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x6a80a4...d579ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x214061...c8fa6b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x41684b...e518c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4e8419...62f20a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4f097f...f95cf0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x83d490...251c31` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8ac789...ef19d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbdb3e3...7a226f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd12bcd...a59e77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeae47c...5cfd55` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf530a0...bab58a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x18008a...246225` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1fc360...0c551c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x276e31...79b744` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x41684b...e518c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x83d490...251c31` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8627ca...a2d8ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd12bcd...a59e77` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf2fd82...740f61` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x0d125c...508c1f` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x2abe87...273e0d` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x2b1c7b...6dc9a8` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x30ba0a...af2552` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x36efec...bb93bf` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x44729a...5d3f38` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x4e63f7...994be4` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x5649b4...eb23d0` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x5f1ddd...3dd50a` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x700837...48b4aa` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7bae6b...ae6ac5` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x815d02...2a5738` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x8abd8c...b3741e` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc1e7df...6f4c83` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc2b464...909690` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc4d8b4...b3204c` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xd7ab16...0f88c9` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xda4745...b6eb6a` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe0d72a...697253` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe3ac3f...9ffce5` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf93dea...dbc6c4` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0x1c758a...429be5` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x002905...eefa03` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x005555...d8fa6e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x02fc42...8731d6` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x062297...148795` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x07383d...eb425b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x08800d...0f7c3b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x0d125c...508c1f` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x10475e...564d22` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x13e7a0...ff5f59` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x165c68...2de75d` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x18008a...246225` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x1b6a3d...a7e946` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x1d22db...266f43` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x1fc360...0c551c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x264e4b...c70fd4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x26ec2a...53d9b9` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x276e31...79b744` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x2abe87...273e0d` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x2b1c7b...6dc9a8` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x2cf2bd...00699b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x381753...31d495` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x39a880...3eb910` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x3f6226...582693` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4135b6...c755ed` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x41684b...e518c9` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x44729a...5d3f38` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x44fffc...a6bea3` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4575fa...2c5de1` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x468e79...51ae8b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4723de...53bae4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x474b82...c6d3db` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x49eb1f...a5212a` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4e0e33...926ed6` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4fdd3c...43b425` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x518b8e...22900b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x5649b4...eb23d0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x594672...ce25e8` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x5f1ddd...3dd50a` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x609137...e74748` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x672453...a6abab` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6c1db0...4a1958` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x72ff47...066aa4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x7b32ee...571aa6` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x7f9655...544633` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x83d490...251c31` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x869999...1ca901` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x874805...4bca92` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x880f09...d118ae` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x91dcb8...cdf11c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x9d4991...62bdf0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x9e5c2d...31503d` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xa5ec0a...2a4afc` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xa677c6...8e51b2` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xa9249f...7785b4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xb3452c...869326` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xbeba8e...a31ca4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xbf69a5...751e54` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xc1e7df...6f4c83` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xc8ee3f...fcd960` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xcbb3be...2dbbce` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xcf6b6f...f76541` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xd12bcd...a59e77` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xd1f345...adc903` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xd7a8cc...60779f` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xda4745...b6eb6a` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xe3ac3f...9ffce5` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf93dea...dbc6c4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xff9224...0d32fd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SmartDecAudit.pdf](https://github.com/KyberNetwork/smart-contracts/blob/master/audits/APRAudit/SmartDecAudit.pdf) | unknown | Audit | 2019-12 | stale | Direct | contract_name | 3 | high |
| [BlockchainLabs_Kyber_AuditReport.MD](https://github.com/KyberNetwork/smart-contracts/blob/master/audits/kyberV1Audit2/BlockchainLabs_Kyber_AuditReport.MD) | unknown | Audit | n/a | unknown | Direct | contract_name | 13 | high |
| [Kovan_tests.MD](https://github.com/KyberNetwork/smart-contracts/blob/master/audits/kyberV1Audit2/Kovan_tests.MD) | unknown | Audit | n/a | unknown | Direct | contract_name | 13 | low |
| [KyberNetwork BlockchainLabs Audit Report.pdf](https://github.com/KyberNetwork/smart-contracts/blob/master/audits/kyberV1Audit2/KyberNetwork%20BlockchainLabs%20Audit%20Report.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 13 | high |
| [test-coverage.MD](https://github.com/KyberNetwork/smart-contracts/blob/master/audits/kyberV1Audit2/test-coverage.MD) | unknown | Audit | n/a | unknown | Direct | contract_name | 15 | high |
| [work-paper.MD](https://github.com/KyberNetwork/smart-contracts/blob/master/audits/kyberV1Audit2/work-paper.MD) | unknown | Audit | n/a | unknown | Direct | contract_name | 15 | high |
| [ChainSecurity_KyberNetwork_Public.pdf](https://github.com/KyberNetwork/smart-contracts/blob/master/audits/kyberV2Audit/ChainSecurity_KyberNetwork_Public.pdf) | ChainSecurity | Audit | 2018-06 | stale | Direct | contract_name | 18 | high |
| [ChainSecurity_Kyberv3.pdf](https://github.com/KyberNetwork/smart-contracts/blob/master/audits/kyberV3Audit/ChainSecurity_Kyberv3.pdf) | ChainSecurity | Audit | 2019-01 | stale | Direct | contract_name | 16 | high |
| [audits.md](https://github.com/KyberNetwork/kyberswap-documentation/blob/main/security/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [code.md](https://github.com/KyberNetwork/KyberSwap-iOS/blob/release/docs/code.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Kyber-Hook-Uniswap-Foundation-Spearbit-Security-Review-October-2025.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Kyber-Hook-Uniswap-Foundation-Spearbit-Security-Review-October-2025.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | 3 | high |
| [kyberswap-dec-25(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/kyberswap-dec-25(Final).pdf) | unknown | Audit | 2026-01 | fresh | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3c002e...36a5a7`](./contracts/ethereum-1/0x3c002edfe9b02bfab3381adcb0150e87f536a5a7/) | AddressList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0da3e2...0b1171`](./contracts/ethereum-1/0x0da3e21c3a6b48ff696d45c73b62c54b3e0b1171/) | AddressValidation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x005555...d8fa6e`](./contracts/ethereum-1/0x00555513acf282b42882420e5e5ba87b44d8fa6e/) | AggregationRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x811c5f...30424a`](./contracts/ethereum-1/0x811c5f8dfbdd70c245e66e4cd181040b2630424a/) | AllowanceSheet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b1c7b...6dc9a8`](./contracts/ethereum-1/0x2b1c7b41f6a8f2b2bc45c3233a5d5fb3cd6dc9a8/) | AntiSnipAttackPositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ae823...478082`](./contracts/ethereum-1/0x0ae823c44b3485918b359329f9f77925c1478082/) | Balances | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6dea55...34e837`](./contracts/ethereum-1/0x6dea55ba04a37fddd05e1fd979c30aa0e634e837/) | BalanceSheet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22d3fb...f051ae`](./contracts/ethereum-1/0x22d3fbe3afd0ffe8db1306eb857a2a8b21f051ae/) | BCdpManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46dfdf...2344cf`](./contracts/ethereum-1/0x46dfdffe7592eb565e702c4f8fc631065b2344cf/) | BCdpScore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20f7cf...35a7e6`](./contracts/ethereum-1/0x20f7cf5900d0e82ab0f7fe2b6a87c3355035a7e6/) | BlackFriday | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x351626...c9e6a1`](./contracts/ethereum-1/0x351626387b5bb5408f97f8fd6b2ec415efc9e6a1/) | BProxyActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60312e...9b20cf`](./contracts/ethereum-1/0x60312e01a2acd1dac68838c949c1d20c609b20cf/) | BTVL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2325aa...c79dc3`](./contracts/ethereum-1/0x2325aa20deaa9770a978f1dc7c073589ffc79dc3/) | BudConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35ed79...02f8eb`](./contracts/ethereum-1/0x35ed7969327334d8eef6ac16a61af2769b02f8eb/) | ConversionRateEnhancedSteps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41f5d7...50b3b5`](./contracts/ethereum-1/0x41f5d722e6471c338392884088bd03340f50b3b5/) | DefaultExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x10908c...9595c9`](./contracts/bsc-56/0x10908c875d865c66f271f5d3949848971c9595c9/) | DMMFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x128078...888d6e`](./contracts/ethereum-1/0x12807818b584a3fa65d38b6c25b13983fe888d6e/) | DMMRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d4575...ae3958`](./contracts/ethereum-1/0x3d45755ee30dd38ff5d3cc01e8ae6bea0bae3958/) | DutchReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfbd735...209f8b`](./contracts/ethereum-1/0xfbd73581af42b26295cf4b88b74a5af71f209f8b/) | EpochVotingPowerStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e80b3...062472`](./contracts/ethereum-1/0x9e80b3cd3ebe427dcafa230fc6064eac10062472/) | Experiment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29c24a...f08332`](./contracts/ethereum-1/0x29c24aad19750753289e414053546f54dff08332/) | Exponent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb7932...09c669`](./contracts/ethereum-1/0xcb79323ada11af9d7869d0d5563e561bd609c669/) | FeeBurnerResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x094c87...99c446`](./contracts/ethereum-1/0x094c875704c14783049ddf8136e298b3a099c446/) | FixedSupplyToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7bfd2c...950fd5`](./contracts/ethereum-1/0x7bfd2c0b917c1154aa3af1e85e1632f038950fd5/) | GetDecimals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09908c...dff9fe`](./contracts/ethereum-1/0x09908cfe36e3941cbfa0c2b6fac623f523dff9fe/) | GovernanceExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c36cc...763cff`](./contracts/ethereum-1/0x3c36ccf03dab88c1b1ac1eb9c3fb5db0b6763cff/) | Jar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cd6ea...99c34c`](./contracts/ethereum-1/0x2cd6eaf23f73bc4f359b69711fb34728c599c34c/) | JarConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9fb131...8401ca`](./contracts/ethereum-1/0x9fb131efbac23b735d7764ab12f9e52cc68401ca/) | KatanaFeeHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeae300...286f9c`](./contracts/ethereum-1/0xeae300ac9409b2072697ca1d5fd137f8bb286f9c/) | KSDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35be3f...e10870`](./contracts/ethereum-1/0x35be3f4fd8239a35a7f120756d4d69e5c5e10870/) | KSElasticLMHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d6afe...147a43`](./contracts/ethereum-1/0x3d6afe2fb73ffed2e3dd00c501a174554e147a43/) | KSElasticLMV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c758a...429be5`](./contracts/ethereum-1/0x1c758af0688502e49140230f6b0ebd376d429be5/) | KSFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x72473d...bb1851`](./contracts/bsc-56/0x72473de0b52d079ca21709ea67085757c3bb1851/) | KSRemoveLiquidityUniswapV3Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x635dff...1d7841`](./contracts/bsc-56/0x635dffee858a9f941d058401b393fcfab41d7841/) | KSRemoveLiquidityUniswapV4Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5649b4...eb23d0`](./contracts/optimism-10/0x5649b4dd00780e99bab7abb4a3d581ea1aeb23d0/) | KSRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x30c532...e2b79e`](./contracts/arbitrum-42161/0x30c5322e4e08ad500c348007f92f120ab4e2b79e/) | KSZapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e97c8...429e05`](./contracts/ethereum-1/0x0e97c887b61ccd952a53578b04763e7134429e05/) | KSZapRouterPosition | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x638d93...0ccabb`](./contracts/ethereum-1/0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb/) | KSZapRouterPositionPermit | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x942412...4f1f26`](./contracts/ethereum-1/0x942412fe06290651ed1438b0cf454339cb4f1f26/) | KSZapValidator | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa16f32...d2863e`](./contracts/ethereum-1/0xa16f32442209c6b978431818aa535bcc9ad2863e/) | KSZapValidatorV2Part1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb02063...d6d6ce`](./contracts/ethereum-1/0xb020636f8e30cb8c35a863412503cfd5e3d6d6ce/) | KyberBancorReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39e507...8f6b9a`](./contracts/ethereum-1/0x39e507f4f7c3e85ed799fdbdf04e42104a8f6b9a/) | KyberDao | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa943b5...6ecfd5`](./contracts/ethereum-1/0xa943b542d1d5683d3454bd0d7ee86c48f36ecfd5/) | KyberFeeHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ec8fc...d8a7fe`](./contracts/ethereum-1/0x7ec8fcc26be7e9e85b57e73083e5fe0550d8a7fe/) | KyberGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26a9ec...940ba3`](./contracts/ethereum-1/0x26a9ecbeca589aa575a9806f0555df0382940ba3/) | KyberHistory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9cf739...13ff17`](./contracts/ethereum-1/0x9cf739155941a3a7964e711543a8bc902613ff17/) | KyberMatchingEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x198213...8c9759`](./contracts/ethereum-1/0x1982131c7d6959ff7768ee39c023ad002d8c9759/) | KyberNetworkENSResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x132af8...dd3582`](./contracts/ethereum-1/0x132af8c63c2df58fcf3db95c6374feef40dd3582/) | KyberReserveHighRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeadb96...72b3bd`](./contracts/ethereum-1/0xeadb96f1623176144eba2b24e35325220972b3bd/) | KyberStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb18d90...e30cf5`](./contracts/ethereum-1/0xb18d90be9add2a6c9f2c3943b264c3dc86e30cf5/) | KyberStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d5ba5...e3e676`](./contracts/ethereum-1/0x7d5ba536ab244aaa1ea42ab88428847f25e3e676/) | KyberSwapElasticLM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f3b21...cc90d0`](./contracts/ethereum-1/0x1f3b218869e2ce02671d64298a19589341cc90d0/) | LiquidatorBalanceInfo | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fd74c...a1064d`](./contracts/ethereum-1/0x5fd74c9eb05a11c148297d83febd8b4862a1064d/) | LiquidatorInfo | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa650f1...12ff2e`](./contracts/ethereum-1/0xa650f16f41ca35bf21594eef706290d26b12ff2e/) | LiquidityMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a65e0...7bdeec`](./contracts/ethereum-1/0x6a65e062ce8290007301296f3c6ae446af7bdeec/) | LiquidityMigrator2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6131b5...6337b5`](./contracts/ethereum-1/0x6131b5fae19ea4f9d964eac0408e4408b66337b5/) | MetaAggregationRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9eacb9...bd0a49`](./contracts/ethereum-1/0x9eacb93cb65f8ad428e270690653b156e1bd0a49/) | Migrate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x301c79...421e62`](./contracts/ethereum-1/0x301c790e31663112fdd7267b711353b470421e62/) | MultipleEpochRewardsClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x844de5...aa694a`](./contracts/ethereum-1/0x844de59c9a8d428283923fb752002fafe2aa694a/) | NamableAddressList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x869410...9631d7`](./contracts/ethereum-1/0x8694103ed4927d389f63213619708e550e9631d7/) | NoSwappingLiquidationStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3add75...186a2c`](./contracts/ethereum-1/0x3add75647681d3ba7a4ecfabf75d393936186a2c/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x049bef...967b09`](./contracts/ethereum-1/0x049beffdb026d6d1d64cfc8fe29bd12142967b09/) | PoolOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b755a...8b9f75`](./contracts/ethereum-1/0x3b755a375921c248250b03e0afffee779c8b9f75/) | PTToDaiConversionRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd2d0a0...daa2e2`](./contracts/ethereum-1/0xd2d0a0557e5b78e29542d440ec968f9253daa2e2/) | RewardPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ec0dc...c0d3b2`](./contracts/ethereum-1/0x5ec0dcf4f6f55f28550c70b854082993fdc0d3b2/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2686ad...1e4bc5`](./contracts/ethereum-1/0x2686ad73b7e09269672a2c3368883b4f271e4bc5/) | SafeChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c63a1...db7b66`](./contracts/ethereum-1/0x4c63a12717ad0b87984ecbb3c97fff0e8edb7b66/) | SetStepFunctionWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb0b538...6f5ad4`](./contracts/ethereum-1/0xb0b538f6aed436643c0b885924ae7a5fea6f5ad4/) | SimpleCall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bb301...6fe6db`](./contracts/ethereum-1/0x4bb301e545a3e948b20ea9a0f02d3948af6fe6db/) | TarynToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x165c68...2de75d`](./contracts/ethereum-1/0x165c68077ac06c83800d19200e6e2b08d02de75d/) | TicksFeesReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9978d2...e3578f`](./contracts/ethereum-1/0x9978d2d229a69b3aef93420d132ab22b44e3578f/) | TimeLockedController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e590b...b60bda`](./contracts/ethereum-1/0x0e590bb5f02a0c38888bffb45dee050b8fb60bda/) | TreasuryPool | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x468960...6ad3ff`](./contracts/ethereum-1/0x468960199c8045dedcf6aeb33e28dc57346ad3ff/) | UserInfo | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49c4f9...801a8b`](./contracts/ethereum-1/0x49c4f9bc14884f6210f28342ced592a633801a8b/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27a15e...318a8d`](./contracts/ethereum-1/0x27a15e7a67fb812a8bd3b4969397fb2de7318a8d/) | WethUnwrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ed9af...00f6b9`](./contracts/ethereum-1/0x9ed9afb6b4cafbdfb2d833b0e70845997300f6b9/) | WhitelistedCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb6857...e9aed1`](./contracts/ethereum-1/0xeb6857da49a5544a37c5c350a40c3c9cc8e9aed1/) | WrapConversionRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61a6cb...ba4870`](./contracts/ethereum-1/0x61a6cb01c70db83b74db3c02bbfda9f025ba4870/) | ZapIn | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 142 |
| upstream | 28 |
| standard_library | 15 |
| needs_review | 260 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=9, low=1
- Match method counts: extraction_exact=110

Zero-match audit list:

- [10247] audits.md
- [10248] code.md
- [10249] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [10250] 0002-metadata-manifest-and-pull-command.md
- [10251] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
