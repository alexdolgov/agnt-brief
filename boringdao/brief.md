# Agentic Audit Brief: BoringDAO

⚠️ Lifecycle status: DEAD - TVL dropped 16.2% over 90 days

## Project Overview

- Project: BoringDAO (`boringdao`)
- Website: [https://www.boringdao.com/](https://www.boringdao.com/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T11:31:37.331Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, avalanche, boba, bsc, ethereum, fantom, gnosis, harmony, heco, metis, optimism, polygon
- Contract surface: 161 unique implementations (249 raw deployments)
- DeFi Llama TVL: $275,695.77
- On-chain TVL (included contracts): $789,868,027.31
- TVL by chain: Arbitrum $455,763,960.35 | Ethereum $167,792,410.55 | Bsc $104,638,487.04 | Gnosis $25,850,956.27 | Optimism $25,463,352.53 | Polygon $10,358,860.57

## Project Description

BoringDAO is a cross-chain bridge protocol that enables users to transfer assets between multiple blockchains. It provides wrapped tokens and liquidity pools to facilitate decentralized cross-chain swaps and yield opportunities.

### Architecture

The BoringDAO family provides the core bridge and liquidity infrastructure, while token families supply the asset representations used across chains. Proxies like ERC1967Proxy and UChildERC20Proxy are shared across families to enable upgradeability and cross-chain token management.

## Contract Surface Quality

- Indexed contracts: 1493; live-surface contracts included: 249 (186 live, 63 unknown).
- Excluded by liveness: 1135 inactive, 109 singleton, 0 uninitialized.
- Deployment units: 18/63 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 14/108.

## Audit Coverage Summary

- Verified implementations audited: 0/82 (0.0%)
- Verified + Unaudited implementations: 80
- Verified by bytecode match: 2
- Unverified implementations: 79
- Unique implementations: 161
- Raw deployments: 249
- Audits discovered: 6
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $789,868,027.31
- Latest audit: 2022-02 (stale)
- Staleness: 0 fresh, 0 aging, 6 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $789,868,027.31 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (80)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StandardArbERC20 | token | arbitrum | unit-42365 (3 proxies) | 3 deployments: arbitrum [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/); arbitrum `0xae6aab...aba689`; arbitrum `0xe72ba9...a37333` | ⚠️ Unaudited |
| StakedAaveV3 | token | ethereum | unit-42328 | [`0x4da27a...e870f5`](./contracts/ethereum-1/0x4da27a545c0c5b758a6ba100e3a049001de870f5/) | ⚠️ Unaudited |
| BEP20TokenImplementation | token | bsc | unit-42334 (12 proxies) | 12 deployments: bsc [`0x1fa4a7...ee5d63`](./contracts/bsc-56/0x1fa4a73a3f0133f0025378af00236f3abdee5d63/); bsc `0x3d6545...e3c25e`; bsc `0x795086...f210f7`; bsc `0x8ac76a...cd580d`; bsc `0x947950...9124c4`; bsc `0x9a2f55...a1d8a2`; bsc `0xa2b726...e4d495`; bsc `0xb7f8cd...e5e094`; bsc `0xbf7c81...1337fe`; bsc `0xd475c9...185b92`; bsc `0xdd3c81...50385a`; bsc `0xfb6115...58f802` | ⚠️ Unaudited |
| PermittableToken | token | gnosis | unit-42336 (3 proxies) | 3 deployments: gnosis [`0x4ecaba...d605c6`](./contracts/gnosis-100/0x4ecaba5870353805a9f068101a40e0f32ed605c6/); gnosis `0x6a023c...78f6e1`; gnosis `0xddafbb...fb7a83` | ⚠️ Unaudited |
| OVMFiatToken | token | optimism | n/a | [`0x7f5c76...c31607`](./contracts/optimism-10/0x7f5c764cbc14f9669b88837ca1490cca17c31607/) | ⚠️ Unaudited |
| ChildERC20 | token | polygon | n/a | 4 deployments: polygon [`0x53e0bc...abad39`](./contracts/polygon-137/0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39/); polygon `0x556f50...aa9e6d`; polygon `0x578360...11ed5f`; polygon `0x71b821...085978` | ⚠️ Unaudited |
| BEP20TokenImplementationV2 | token | bsc | unit-42335 | [`0x250632...0aa91b`](./contracts/bsc-56/0x250632378e573c6be1ac2f97fcdf00515d0aa91b/) | ⚠️ Unaudited |
| AmyFinanceToken | token | arbitrum | n/a | [`0x8fbd42...f2389c`](./contracts/arbitrum-42161/0x8fbd420956fdd301f4493500fd0bcaaa80f2389c/) | ⚠️ Unaudited |
| izumiToken | token | polygon | n/a | 2 deployments: ethereum `0x9ad372...c5c200`; polygon [`0x60d01e...27c747`](./contracts/polygon-137/0x60d01ec2d5e98ac51c8b4cf84dfcce98d527c747/) | ⚠️ Unaudited |
| yVault | core_logic | ethereum | n/a | 10 deployments: ethereum [`0x299452...99bbed`](./contracts/ethereum-1/0x2994529c0652d127b7842094103715ec5299bbed/); ethereum `0x2f0811...9faf18`; ethereum `0x37d19d...eda74a`; ethereum `0x597ad1...33522e`; ethereum `0x5dbcf3...bca25c`; ethereum `0x629c75...21c129`; ethereum `0x7ff566...e9d0f6`; ethereum `0xacd43e...a6f952`; ethereum `0xba2e7f...b94fe1`; ethereum `0xe1237a...4d16c7` | ⚠️ Unaudited |
| OToken | token | ethereum | n/a | [`0x07c44b...ff3cb1`](./contracts/ethereum-1/0x07c44b5ac257c2255aa0933112c3b75a6bff3cb1/) | ⚠️ Unaudited |
| iNFTspaceToken | token | polygon | n/a | [`0xb988bd...645a26`](./contracts/polygon-137/0xb988bd378a0754957d5d9471c96e0f8051645a26/) | ⚠️ Unaudited |
| yDelegatedVault | core_logic | ethereum | n/a | [`0x29e240...f9f324`](./contracts/ethereum-1/0x29e240cfd7946ba20895a7a02edb25c210f9f324/) | ⚠️ Unaudited |
| yWBTC | token | ethereum | n/a | [`0x04aa51...787ec9`](./contracts/ethereum-1/0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9/) | ⚠️ Unaudited |
| FINToken | token | ethereum | n/a | 2 deployments: ethereum [`0x054f76...debe40`](./contracts/ethereum-1/0x054f76beed60ab6dbeb23502178c52d6c5debe40/); polygon `0x576c99...678e94` | ⚠️ Unaudited |
| yWrappedVault | core_logic | ethereum | n/a | [`0x881b06...025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | ⚠️ Unaudited |
| AaveTokenV3 | token | ethereum | unit-42329 | [`0x7fc665...2ddae9`](./contracts/ethereum-1/0x7fc66500c84a76ad7e9c93437bfc5ac33e2ddae9/) | ⚠️ Unaudited |
| UChildERC20Proxy | token | polygon | n/a | 2 deployments: polygon [`0x313d00...5bd604`](./contracts/polygon-137/0x313d009888329c9d1cf4f75ca3f32566335bd604/); polygon `0x5a2fdf...908d19` | ⚠️ Unaudited |
| yUSDT | token | ethereum | n/a | 3 deployments: ethereum [`0x83f798...f1707d`](./contracts/ethereum-1/0x83f798e925bcd4017eb265844fddabb448f1707d/); ethereum `0xa17872...a1dd14`; ethereum `0xe6354e...92d447` | ⚠️ Unaudited |
| L2WethGateway | token | arbitrum | unit-42367 | [`0x6c411a...6c623b`](./contracts/arbitrum-42161/0x6c411ad3e74de3e7bd422b94a27770f5b86c623b/) | ⚠️ Unaudited |
| AaveEcosystemReserveV2 | unknown | ethereum | unit-42323 | [`0x25f222...286491`](./contracts/ethereum-1/0x25f2226b597e8f9514b3f68f00f494cf4f286491/) | ⚠️ Unaudited |
| aeWETH | token | arbitrum | unit-42368 | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | arbitrum | unit-42372 | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ⚠️ Unaudited |
| BEP20BitcoinCash | unknown | bsc | n/a | [`0x433866...b0db94`](./contracts/bsc-56/0x4338665cbb7b2485a8855a139b75d5e34ab0db94/) | ⚠️ Unaudited |
| BEP20Cardano | unknown | bsc | n/a | [`0x3ee220...435d47`](./contracts/bsc-56/0x3ee2200efb3400fabb9aacf31297cbdd1d435d47/) | ⚠️ Unaudited |
| BEP20Cosmos | unknown | bsc | n/a | [`0x0eb3a7...62f335`](./contracts/bsc-56/0x0eb3a705fc54725037cc9e008bdede697f62f335/) | ⚠️ Unaudited |
| BEP20DAI | unknown | bsc | n/a | [`0x1af3f3...b1dbc3`](./contracts/bsc-56/0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3/) | ⚠️ Unaudited |
| BEP20Ethereum | unknown | bsc | n/a | [`0x2170ed...f933f8`](./contracts/bsc-56/0x2170ed0880ac9a755fd29b2688956bd959f933f8/) | ⚠️ Unaudited |
| BEP20LINK | unknown | bsc | n/a | [`0xf8a0bf...1a51bd`](./contracts/bsc-56/0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd/) | ⚠️ Unaudited |
| BEP20Tezos | unknown | bsc | n/a | [`0x16939e...12623a`](./contracts/bsc-56/0x16939ef78684453bfdfb47825f8a5f714f12623a/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | n/a | 2 deployments: bsc [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/); bsc `0xe9e7ce...087d56` | ⚠️ Unaudited |
| BEP20USDT | token | bsc | n/a | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| BEP20XRP | unknown | bsc | n/a | [`0x1d2f0d...c60dbe`](./contracts/bsc-56/0x1d2f0da169ceb9fc7b3144628db156f3f6c60dbe/) | ⚠️ Unaudited |
| BEP20Zcash | unknown | bsc | n/a | [`0x1ba42e...ef8eeb`](./contracts/bsc-56/0x1ba42e5193dfa8b03d15dd1b86a3113bbbef8eeb/) | ⚠️ Unaudited |
| Bor | unknown | ethereum | n/a | [`0x3c9d6c...1fc1a9`](./contracts/ethereum-1/0x3c9d6c1c73b31c837832c72e04d3152f051fc1a9/) | ⚠️ Unaudited |
| BoringSatelliteChef | unknown | ethereum | n/a | [`0x204c87...66229c`](./contracts/ethereum-1/0x204c87cda5daac87b2fc562bfb5371a0b066229c/) | ⚠️ Unaudited |
| BridgeToken | operational_periphery | avalanche | n/a | 19 deployments: avalanche [`0x19860c...8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/); avalanche `0x37b608...2e4f76`; avalanche `0x3bd2b1...5b2339`; avalanche `0x49d5c2...c10bab`; avalanche `0x50b754...87b218`; avalanche `0x5947bb...3227a3`; avalanche `0x596fa4...cde0d2`; avalanche `0x63a728...d386d9`; avalanche `0x88128f...b72d42`; avalanche `0x8a0cac...e85cb9`; avalanche `0x8ebaf2...ba8580`; avalanche `0x98443b...690588`; avalanche `0x9eaac1...2f52dc`; avalanche `0xa7d707...a4c664`; avalanche `0xbec243...4b209b`; avalanche `0xc3048e...6e2437`; avalanche `0xc71984...b95118`; avalanche `0xd50128...28f267`; avalanche `0xd586e7...9d8d70` | ⚠️ Unaudited |
| ChildChainManager | governance | polygon | unit-42354 | [`0xa6fa4f...d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| ChildERC1155 | token | polygon | n/a | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| EminenceCurrency | unknown | ethereum | n/a | 5 deployments: ethereum [`0x5ade7a...d221e8`](./contracts/ethereum-1/0x5ade7ae8660293f2ebfcefaba91d141d72d221e8/); ethereum `0xd77c2a...9ee175`; ethereum `0xd9194d...ab029d`; ethereum `0xe4ffd6...02830e`; ethereum `0xed3519...b095bf` | ⚠️ Unaudited |
| equipment | unknown | metis | n/a | [`0x55254f...9afabd`](./contracts/metis-1088/0x55254fe138b0b5a85b27858c2f4ace9c509afabd/) | ⚠️ Unaudited |
| FeePool | core_logic | ethereum | n/a | [`0x2b7816...d66fcd`](./contracts/ethereum-1/0x2b781634e4cb0b5236cc957daba88f911fd66fcd/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | unit-42332 | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| hero | unknown | metis | n/a | [`0xa53085...96f5b2`](./contracts/metis-1088/0xa530850a1a3388d5f4cb2e9ed3d3125d6d96f5b2/) | ⚠️ Unaudited |
| iNFTspaceMystery | token | polygon | n/a | [`0x6839e4...c49c97`](./contracts/polygon-137/0x6839e4acf7d69a9ea689fe133b994253e7c49c97/) | ⚠️ Unaudited |
| Keep3r | unknown | ethereum | n/a | [`0x9696fe...e54b32`](./contracts/ethereum-1/0x9696fea1121c938c861b94fcbee98d971de54b32/) | ⚠️ Unaudited |
| Keep3rV1 | unknown | ethereum | n/a | [`0x1ceb5c...185a44`](./contracts/ethereum-1/0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44/) | ⚠️ Unaudited |
| L2CustomGateway | unknown | arbitrum | unit-42361 | [`0x096760...ef5562`](./contracts/arbitrum-42161/0x096760f208390250649e3e8763348e783aef5562/) | ⚠️ Unaudited |
| L2ERC20Gateway | token | arbitrum | unit-42362 | [`0x09e922...351eee`](./contracts/arbitrum-42161/0x09e9222e96e7b4ae2a407b98d48e330053351eee/) | ⚠️ Unaudited |
| L2GatewayRouter | adapter | arbitrum | unit-42366 | [`0x5288c5...84f933`](./contracts/arbitrum-42161/0x5288c571fd7ad117bea99bf60fe0846c4e84f933/) | ⚠️ Unaudited |
| L2StandardERC20 | token | metis | n/a | 2 deployments: metis [`0xbb06dc...16f4dc`](./contracts/metis-1088/0xbb06dca3ae6887fabf931640f67cab3e3a16f4dc/); metis `0xea32a9...cc1a21` | ⚠️ Unaudited |
| LendToAaveMigrator | periphery | ethereum | unit-42324 | [`0x317625...291de4`](./contracts/ethereum-1/0x317625234562b1526ea2fac4030ea499c5291de4/) | ⚠️ Unaudited |
| LiquidityIncome | unknown | ethereum | n/a | [`0x288324...5a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/) | ⚠️ Unaudited |
| market | unknown | metis | n/a | [`0x7db21b...363a8b`](./contracts/metis-1088/0x7db21b2c3319e2d7ab2fd66e902e315ee7363a8b/) | ⚠️ Unaudited |
| MasterChefETH | unknown | ethereum | n/a | [`0x3a18b9...f4ff42`](./contracts/ethereum-1/0x3a18b916b72fcab7ba7d2882eeb4cccea7f4ff42/) | ⚠️ Unaudited |
| MaticWETH | token | polygon | n/a | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| Multicall2 | periphery | metis | n/a | 2 deployments: metis [`0x5d78bf...f97f74`](./contracts/metis-1088/0x5d78bf8f79a66e43f5932c1ae0b8fa6563f97f74/); arbitrum `0x842ec2...c54eb2` | ⚠️ Unaudited |
| MVM_Coinbase | unknown | metis | n/a | [`0xdeadde...ad0000`](./contracts/metis-1088/0xdeaddeaddeaddeaddeaddeaddeaddeaddead0000/) | ⚠️ Unaudited |
| NODE | unknown | ethereum | n/a | [`0x0c3ef3...1ccb81`](./contracts/ethereum-1/0x0c3ef32f802967db75b9d49fe1e76620151ccb81/) | ⚠️ Unaudited |
| OVM_ETH | unknown | metis | n/a | [`0x420000...00000a`](./contracts/metis-1088/0x420000000000000000000000000000000000000a/) | ⚠️ Unaudited |
| StableAMM | unknown | ethereum | n/a | [`0x13b9fb...ac48de`](./contracts/ethereum-1/0x13b9fbd6d642db0c9f54f58b21abca7e8cac48de/) | ⚠️ Unaudited |
| StableYieldCredit | unknown | ethereum | n/a | 3 deployments: ethereum [`0x11980d...d834e7`](./contracts/ethereum-1/0x11980d4bb4465cb4fc77a57b98a16787b3d834e7/); ethereum `0x948a9b...4a492e`; ethereum `0xe0839f...660261` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | polygon | n/a | [`0x3c9d6c...1fc1a9`](./contracts/polygon-137/0x3c9d6c1c73b31c837832c72e04d3152f051fc1a9/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x422432...804046`](./contracts/polygon-137/0x42243231fb4a64a5bcfc7f4b7a9ad92576804046/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | unit-42360 | [`0xff8843...96da6b`](./contracts/polygon-137/0xff88434e29d1e2333ad6baa08d358b436196da6b/) | ⚠️ Unaudited |
| UChildUSDT0 | token | polygon | unit-42358 | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| USDT | token | optimism | n/a | [`0x94b008...e58e58`](./contracts/optimism-10/0x94b008aa00579c1307b0ef2c499ad98a8ce58e58/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 12 deployments: ethereum [`0x2f50d5...5846bb`](./contracts/ethereum-1/0x2f50d538606fa9edd2b11e2446beb18c9d5846bb/); ethereum `0x575ccd...318e2c`; ethereum `0x5f3b5d...94e2a2`; ethereum `0x64e3c2...ac041d`; ethereum `0x705350...55410f`; ethereum `0x7ca5b0...1d7575`; ethereum `0xa90996...857849`; ethereum `0xb1f2cd...202cac`; ethereum `0xbbcf16...8b29cf`; ethereum `0xbc89cd...ca8f53`; ethereum `0xd061d6...c2fce0`; ethereum `0xd533a9...34cd52` | ⚠️ Unaudited |
| WBTC | token | ethereum | n/a | 2 deployments: ethereum [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/); optimism `0x68f180...0a2095` | ⚠️ Unaudited |
| WETH9 | token | optimism | n/a | 2 deployments: ethereum `0xc02aaa...756cc2`; optimism [`0x420000...000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| xVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x2ead6d...58d285`](./contracts/ethereum-1/0x2ead6dd0706c2d95c63ca26b39222a54f058d285/); ethereum `0x67c472...06c365` | ⚠️ Unaudited |
| xVEMPToken | token | ethereum | n/a | [`0x4a4e2d...70cc78`](./contracts/ethereum-1/0x4a4e2d4859af854d2a3fc6df295843d21e70cc78/) | ⚠️ Unaudited |
| yDAI | unknown | ethereum | n/a | 2 deployments: ethereum [`0x16de59...f0bd01`](./contracts/ethereum-1/0x16de59092dae5ccf4a1e6439d611fd0653f0bd01/); ethereum `0xc2cb10...24ce32` | ⚠️ Unaudited |
| YFI | unknown | ethereum | n/a | [`0x0bc529...6ad93e`](./contracts/ethereum-1/0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e/) | ⚠️ Unaudited |
| yInsure | unknown | ethereum | n/a | [`0x181aea...d98f91`](./contracts/ethereum-1/0x181aea6936b407514ebfc0754a37704eb8d98f91/) | ⚠️ Unaudited |
| ySUSD | unknown | ethereum | n/a | [`0xf61718...b45600`](./contracts/ethereum-1/0xf61718057901f84c4eec4339ef8f0d86d2b45600/) | ⚠️ Unaudited |
| yTUSD | unknown | ethereum | n/a | [`0x73a052...a8190f`](./contracts/ethereum-1/0x73a052500105205d34daf004eab301916da8190f/) | ⚠️ Unaudited |
| yUSDC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x26ea74...b21951`](./contracts/ethereum-1/0x26ea744e5b887e5205727f55dfbe8685e3b21951/); ethereum `0xd6ad7a...a3436e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | metis | n/a | 9 deployments: ethereum `0x5bdc32...a2cfca`; bsc `0xedf3ce...fa7955`; polygon `0x50d079...cb32af`; metis [`0x226d8b...f9fd34`](./contracts/metis-1088/0x226d8bfb4da78ddc5bd8fd6c1532c58e88f9fd34/); metis `0x4f497f...827211`; metis `0x55e3f2...74b47e`; metis `0x68d97b...6e5e28`; metis `0x87dd4a...af8663`; metis `0xd5b59f...58b6b2` | ⚠️ Unaudited (bytecode match) |
| ERC1967Proxy | unknown | bsc | n/a | 6 deployments: ethereum `0xecad1a...495616`; optimism `0x29414e...a2443f`; bsc [`0x0075ac...078705`](./contracts/bsc-56/0x0075ac0c662a5b655060d1519ff739d834078705/); metis `0x57e053...5b346e`; metis `0x6eccd6...7c02a9`; metis `0xd01a50...f6cf95` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (79)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0f0dd5...f6745a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63a61b...93aba3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6adff7...4ec39c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c189b...90bfc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77f79f...8823f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8064d9...537a68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87821c...bb968b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c306a...653651` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fc889...12d2b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae5096...7e14f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc1971...d792ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfeb09...e96eec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd221f7...1d70de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe71883...87811c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe75ad3...1bd864` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe95da3...165be1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0314fc...a9c33b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f0dd5...f6745a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3720e3...c1ed35` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56b6fb...dccbd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5e8480...6dc038` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x708360...873402` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f7064...53eda5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8119e8...befbfb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x843d4a...dc3f28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ff795...444adf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92d775...b32241` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa58950...ea4901` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad6cae...6c6c18` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbdbb25...065819` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeae001...cd9f09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd7b3a...850335` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xffeecb...bfdf7f` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x0bf101...afa414` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x560eb8...61b14d` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x64ff63...28a1fd` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x66a79d...3f0bea` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x66d6a0...6b40d1` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x9362bb...26b73b` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xa71edc...c3e47a` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xe3b59f...1363fc` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xe9fe1c...644784` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x04068d...5d5b75` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x049d68...3a3c7a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x1f5330...fdb855` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x66d6a0...6b40d1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x6d6d85...8765e6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x74b238...58c76d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x77b3aa...534c19` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb238a5...62066c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xce8688...c3dc06` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0x017ff8...9de024` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0x225247...08161a` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0x364701...58acde` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0x5de167...9c062d` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0x66a2a9...90fbbc` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0xb238a5...62066c` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0xc8819c...a79aa2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x017ff8...9de024` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1bdbb9...75e4a1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x76396d...c250b7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x7f942c...6a7f19` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x805675...0d9e8d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9d1853...1e7cc3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9e32b1...d6ed8e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xacad07...271303` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xca94f1...348c38` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd62a32...be65bc` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfaf3c7...f1efdf` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x017ff8...9de024` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x216f33...f7cc21` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x323b6b...d18f86` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x39c412...d8fbc9` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x3c2b8b...5aba8f` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x6983d1...3ea013` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x7f942c...6a7f19` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x985458...9dfab4` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xb238a5...62066c` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xb98863...e0a5bf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [peckshield-audit-report-boringdao-v1.0rc.pdf](https://github.com/BoringDAO/boringDAO-contract/blob/master/peckshield-audit-report-boringdao-v1.0rc.pdf) | PeckShield | Audit | 2020-12 | stale | Direct | contract_name | 0 | n/a |
| [<table><thead><tr><th width="336.7567744223678"></th><th></th></tr></thead><tbody><tr><td>Certik-BoringDAO-2022-02-18</td><td><a href="">https://drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view?usp=sharing</a></td></tr><tr><td>Certik-BoringDAO-2021-09-24</td><td><a href="https://drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view?usp=sharing">https://drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view?usp=sharing</a></td></tr><tr><td>Certik-BoringDAO-2021-05-29</td><td><a href="https://drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view?usp=sharing">https://drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view?usp=sharing</a></td></tr><tr><td>PeckShield-BoringDAO-2021-03-07</td><td><a href="https://drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view?usp=sharing">https://drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view?usp=sharing</a></td></tr><tr><td>PeckShield-BoringDAO-2020-12-03</td><td><a href="https://drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view?usp=sharing">https://drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view?usp=sharing</a></td></tr></tbody></table>](https://drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view?usp=sharing) | CertiK | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [<table><thead><tr><th width="336.7567744223678"></th><th></th></tr></thead><tbody><tr><td>Certik-BoringDAO-2022-02-18</td><td><a href="https://drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view?usp=sharing">https://drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view?usp=sharing</a></td></tr><tr><td>Certik-BoringDAO-2021-09-24</td><td><a href="">https://drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view?usp=sharing</a></td></tr><tr><td>Certik-BoringDAO-2021-05-29</td><td><a href="https://drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view?usp=sharing">https://drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view?usp=sharing</a></td></tr><tr><td>PeckShield-BoringDAO-2021-03-07</td><td><a href="https://drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view?usp=sharing">https://drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view?usp=sharing</a></td></tr><tr><td>PeckShield-BoringDAO-2020-12-03</td><td><a href="https://drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view?usp=sharing">https://drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view?usp=sharing</a></td></tr></tbody></table>](https://drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view?usp=sharing) | CertiK | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [<table><thead><tr><th width="336.7567744223678"></th><th></th></tr></thead><tbody><tr><td>Certik-BoringDAO-2022-02-18</td><td><a href="https://drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view?usp=sharing">https://drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view?usp=sharing</a></td></tr><tr><td>Certik-BoringDAO-2021-09-24</td><td><a href="https://drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view?usp=sharing">https://drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view?usp=sharing</a></td></tr><tr><td>Certik-BoringDAO-2021-05-29</td><td><a href="">https://drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view?usp=sharing</a></td></tr><tr><td>PeckShield-BoringDAO-2021-03-07</td><td><a href="https://drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view?usp=sharing">https://drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view?usp=sharing</a></td></tr><tr><td>PeckShield-BoringDAO-2020-12-03</td><td><a href="https://drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view?usp=sharing">https://drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view?usp=sharing</a></td></tr></tbody></table>](https://drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view?usp=sharing) | CertiK | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [<table><thead><tr><th width="336.7567744223678"></th><th></th></tr></thead><tbody><tr><td>Certik-BoringDAO-2022-02-18</td><td><a href="https://drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view?usp=sharing">https://drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view?usp=sharing</a></td></tr><tr><td>Certik-BoringDAO-2021-09-24</td><td><a href="https://drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view?usp=sharing">https://drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view?usp=sharing</a></td></tr><tr><td>Certik-BoringDAO-2021-05-29</td><td><a href="https://drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view?usp=sharing">https://drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view?usp=sharing</a></td></tr><tr><td>PeckShield-BoringDAO-2021-03-07</td><td><a href="">https://drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view?usp=sharing</a></td></tr><tr><td>PeckShield-BoringDAO-2020-12-03</td><td><a href="https://drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view?usp=sharing">https://drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view?usp=sharing</a></td></tr></tbody></table>](https://drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view?usp=sharing) | CertiK | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [<table><thead><tr><th width="336.7567744223678"></th><th></th></tr></thead><tbody><tr><td>Certik-BoringDAO-2022-02-18</td><td><a href="https://drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view?usp=sharing">https://drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view?usp=sharing</a></td></tr><tr><td>Certik-BoringDAO-2021-09-24</td><td><a href="https://drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view?usp=sharing">https://drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view?usp=sharing</a></td></tr><tr><td>Certik-BoringDAO-2021-05-29</td><td><a href="https://drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view?usp=sharing">https://drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view?usp=sharing</a></td></tr><tr><td>PeckShield-BoringDAO-2021-03-07</td><td><a href="https://drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view?usp=sharing">https://drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view?usp=sharing</a></td></tr><tr><td>PeckShield-BoringDAO-2020-12-03</td><td><a href="">https://drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view?usp=sharing</a></td></tr></tbody></table>](https://drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view?usp=sharing) | CertiK | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x1fa4a7...ee5d63`](./contracts/bsc-56/0x1fa4a73a3f0133f0025378af00236f3abdee5d63/) | BEP20TokenImplementation | token | $96,088,502.87 | Verified native implementation with $96,088,502.87 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x250632...0aa91b`](./contracts/bsc-56/0x250632378e573c6be1ac2f97fcdf00515d0aa91b/) | BEP20TokenImplementationV2 | token | $8,549,984.17 | Verified native implementation with $8,549,984.17 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07c44b...ff3cb1`](./contracts/ethereum-1/0x07c44b5ac257c2255aa0933112c3b75a6bff3cb1/) | OToken | token | $910,679.38 | Verified native implementation with $910,679.38 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04aa51...787ec9`](./contracts/ethereum-1/0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9/) | yWBTC | token | $71,294.17 | Verified native implementation with $71,294.17 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x054f76...debe40`](./contracts/ethereum-1/0x054f76beed60ab6dbeb23502178c52d6c5debe40/) | FINToken | token | $6,000.96 | Verified native implementation with $6,000.96 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x881b06...025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | yWrappedVault | core_logic | $2,560.90 | Verified native implementation with $2,560.90 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83f798...f1707d`](./contracts/ethereum-1/0x83f798e925bcd4017eb265844fddabb448f1707d/) | yUSDT | token | $1.00 | Verified native implementation with $1.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | aeWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ArbitrumExtensionV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x204c87...66229c`](./contracts/ethereum-1/0x204c87cda5daac87b2fc562bfb5371a0b066229c/) | BoringSatelliteChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b7816...d66fcd`](./contracts/ethereum-1/0x2b781634e4cb0b5236cc957daba88f911fd66fcd/) | FeePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x288324...5a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/) | LiquidityIncome | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13b9fb...ac48de`](./contracts/ethereum-1/0x13b9fbd6d642db0c9f54f58b21abca7e8cac48de/) | StableAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11980d...d834e7`](./contracts/ethereum-1/0x11980d4bb4465cb4fc77a57b98a16787b3d834e7/) | StableYieldCredit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ead6d...58d285`](./contracts/ethereum-1/0x2ead6dd0706c2d95c63ca26b39222a54f058d285/) | xVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a4e2d...70cc78`](./contracts/ethereum-1/0x4a4e2d4859af854d2a3fc6df295843d21e70cc78/) | xVEMPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 14 |
| standard_library | 4 |
| needs_review | 120 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=7

Zero-match audit list:

- [12827] peckshield-audit-report-boringdao-v1.0rc.pdf
- [12828] <table><thead><tr><th width="336.7567744223678"></th><th></th></tr></thead><tbody><tr><td>Certik-BoringDAO-2022-02-18</td><td><a href="">https://drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view?usp=sharing</a></td></tr><tr><td>Certik-BoringDAO-2021-09-24</td><td><a href="https://drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view?usp=sharing">https://drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view?usp=sharing</a></td></tr><tr><td>Certik-BoringDAO-2021-05-29</td><td><a href="https://drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view?usp=sharing">https://drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view?usp=sharing</a></td></tr><tr><td>PeckShield-BoringDAO-2021-03-07</td><td><a href="https://drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view?usp=sharing">https://drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view?usp=sharing</a></td></tr><tr><td>PeckShield-BoringDAO-2020-12-03</td><td><a href="https://drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view?usp=sharing">https://drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view?usp=sharing</a></td></tr></tbody></table>
- [12829] <table><thead><tr><th width="336.7567744223678"></th><th></th></tr></thead><tbody><tr><td>Certik-BoringDAO-2022-02-18</td><td><a href="https://drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view?usp=sharing">https://drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view?usp=sharing</a></td></tr><tr><td>Certik-BoringDAO-2021-09-24</td><td><a href="">https://drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view?usp=sharing</a></td></tr><tr><td>Certik-BoringDAO-2021-05-29</td><td><a href="https://drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view?usp=sharing">https://drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view?usp=sharing</a></td></tr><tr><td>PeckShield-BoringDAO-2021-03-07</td><td><a href="https://drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view?usp=sharing">https://drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view?usp=sharing</a></td></tr><tr><td>PeckShield-BoringDAO-2020-12-03</td><td><a href="https://drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view?usp=sharing">https://drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view?usp=sharing</a></td></tr></tbody></table>
- [12830] <table><thead><tr><th width="336.7567744223678"></th><th></th></tr></thead><tbody><tr><td>Certik-BoringDAO-2022-02-18</td><td><a href="https://drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view?usp=sharing">https://drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view?usp=sharing</a></td></tr><tr><td>Certik-BoringDAO-2021-09-24</td><td><a href="https://drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view?usp=sharing">https://drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view?usp=sharing</a></td></tr><tr><td>Certik-BoringDAO-2021-05-29</td><td><a href="">https://drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view?usp=sharing</a></td></tr><tr><td>PeckShield-BoringDAO-2021-03-07</td><td><a href="https://drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view?usp=sharing">https://drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view?usp=sharing</a></td></tr><tr><td>PeckShield-BoringDAO-2020-12-03</td><td><a href="https://drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view?usp=sharing">https://drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view?usp=sharing</a></td></tr></tbody></table>
- [12831] <table><thead><tr><th width="336.7567744223678"></th><th></th></tr></thead><tbody><tr><td>Certik-BoringDAO-2022-02-18</td><td><a href="https://drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view?usp=sharing">https://drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view?usp=sharing</a></td></tr><tr><td>Certik-BoringDAO-2021-09-24</td><td><a href="https://drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view?usp=sharing">https://drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view?usp=sharing</a></td></tr><tr><td>Certik-BoringDAO-2021-05-29</td><td><a href="https://drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view?usp=sharing">https://drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view?usp=sharing</a></td></tr><tr><td>PeckShield-BoringDAO-2021-03-07</td><td><a href="">https://drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view?usp=sharing</a></td></tr><tr><td>PeckShield-BoringDAO-2020-12-03</td><td><a href="https://drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view?usp=sharing">https://drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view?usp=sharing</a></td></tr></tbody></table>
- [12832] <table><thead><tr><th width="336.7567744223678"></th><th></th></tr></thead><tbody><tr><td>Certik-BoringDAO-2022-02-18</td><td><a href="https://drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view?usp=sharing">https://drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view?usp=sharing</a></td></tr><tr><td>Certik-BoringDAO-2021-09-24</td><td><a href="https://drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view?usp=sharing">https://drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view?usp=sharing</a></td></tr><tr><td>Certik-BoringDAO-2021-05-29</td><td><a href="https://drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view?usp=sharing">https://drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view?usp=sharing</a></td></tr><tr><td>PeckShield-BoringDAO-2021-03-07</td><td><a href="https://drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view?usp=sharing">https://drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view?usp=sharing</a></td></tr><tr><td>PeckShield-BoringDAO-2020-12-03</td><td><a href="">https://drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view?usp=sharing</a></td></tr></tbody></table>

Fork inheritance lineage and inherited audits are included when available.
