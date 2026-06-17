# Agentic Audit Brief: KyberSwap

⚠️ Lifecycle status: DECLINING - TVL dropped 0.7% over 90 days

## Project Overview

- Project: KyberSwap (`kyberswap`)
- Website: [https://kyberswap.com](https://kyberswap.com)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-17T07:00:47.221Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, aurora, avalanche, base, bsc, cronos, ethereum, fantom, linea, optimism, polygon, polygon-zkevm, scroll, unichain, zksync-era
- Contract surface: 96 unique implementations (119 raw deployments)
- DeFi Llama TVL: $8,895,585.00
- On-chain TVL (included contracts): $22,373,230.74
- TVL by chain: Ethereum $21,389,442.07 | Bsc $429,699.97 | Polygon $376,838.66 | Arbitrum $89,615.47 | Optimism $62,232.25 | Avalanche $25,402.31

## Project Description

KyberSwap is a non-custodial multichain decentralized exchange aggregator and liquidity protocol that enables token swaps by routing across multiple external and Kyber liquidity sources. It also provides liquidity through KyberSwap AMM products, including capital-efficient pools.

### Architecture

The KyberSwap Aggregator routes trades through Classic and Elastic pools, while the KyberDAO governs protocol parameters and fee distribution. KNC tokens are staked in the DAO and bridged across chains to support governance and liquidity incentives.

## Contract Surface Quality

- Indexed contracts: 642; live-surface contracts included: 119 (66 live, 53 unknown).
- Excluded by liveness: 509 inactive, 14 singleton, 0 uninitialized.
- Deployment units: 4/14 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 14/78.

## Audit Coverage Summary

- Verified implementations audited: 4/60 (6.7%)
- Verified + Unaudited implementations: 56
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 96
- Raw deployments: 119
- Audits discovered: 6
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $22,373,230.74
- Latest audit: 2026-01 (fresh)
- Staleness: 2 fresh, 0 aging, 3 stale, 1 unknown
- Tier 1 coverage: 5.0% (ChainSecurity, Spearbit)
- Note: This protocol is classified as [declining]. ASD of $22,373,230.74 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 2 | 3.3% | 2025-10 |
| ChainSecurity | Tier 1 | 1 | 1.7% | 2019-01 |
| unknown | Tier 2 | 1 | 1.7% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KSSmartIntentRouter | adapter | bsc | n/a | [`0xaee04d...e09974`](./contracts/bsc-56/0xaee04d31696d14bce773db6d1acec3398ee09974/) | ✅ Audited |
| KyberNetworkProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x818e6f...87b755`](./contracts/ethereum-1/0x818e6fecd516ecc3849daf6845e3ec868087b755/); ethereum `0x9aab3f...d4b11e` | ✅ Audited |
| PancakeSwapInfinityKEMHook | unknown | bsc | n/a | [`0x44428c...5fdfd2`](./contracts/bsc-56/0x44428c6ce391915d51f963c0dd395cd0f95fdfd2/) | ✅ Audited |
| UniswapV4KEMHook | unknown | ethereum | n/a | 2 deployments: ethereum [`0x444085...75c0c4`](./contracts/ethereum-1/0x4440854b2d02c57a0dc5c58b7a884562d875c0c4/); unichain `0x444139...f880c4` | ✅ Audited |

### ⚠️ Verified + Unaudited (56)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyERC20 | token | ethereum | n/a | [`0x57ab1e...6d5f51`](./contracts/ethereum-1/0x57ab1ec28d129707052df4df418d58a2d46d5f51/) | ⚠️ Unaudited |
| BEP20TokenImplementation | token | bsc | unit-28781 | [`0xfe56d5...1c308b`](./contracts/bsc-56/0xfe56d5892bdffc7bf58f2e84be1b2c32d21c308b/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | unit-28782 | [`0x1c954e...91948c`](./contracts/polygon-137/0x1c954e8fe737f99f68fa1ccda3e51ebdb291948c/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | unit-28783 | [`0xe4dddf...dc01cb`](./contracts/arbitrum-42161/0xe4dddfe67e7164b0fe14e218d80dc4c08edc01cb/) | ⚠️ Unaudited |
| L2StandardERC20 | token | optimism | n/a | [`0xa00e3a...753819`](./contracts/optimism-10/0xa00e3a3511aac35ca78530c85007afcd31753819/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | avalanche | n/a | [`0x39fc9e...f50f5f`](./contracts/avalanche-43114/0x39fc9e94caeacb435842fadedecb783589f50f5f/) | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | token | polygon | n/a | 2 deployments: polygon [`0x46371c...bc707a`](./contracts/polygon-137/0x46371c90fcce4d7367a61cb43ea7922406bc707a/); arbitrum `0xb448ec...0781df` | ⚠️ Unaudited |
| PToken | token | ethereum | n/a | [`0x5228a2...e7733b`](./contracts/ethereum-1/0x5228a22e72ccc52d415ecfd199f99d0665e7733b/) | ⚠️ Unaudited |
| AggregationRouter | adapter | arbitrum | n/a | 3 deployments: ethereum `0xdf1a1b...53ec25`; arbitrum [`0x005555...d8fa6e`](./contracts/arbitrum-42161/0x00555513acf282b42882420e5e5ba87b44d8fa6e/); arbitrum `0xdf1a1b...53ec25` | ⚠️ Unaudited |
| AntiSnipAttackPositionManager | governance | ethereum | unit-28771 | [`0x2b1c7b...6dc9a8`](./contracts/ethereum-1/0x2b1c7b41f6a8f2b2bc45c3233a5d5fb3cd6dc9a8/) | ⚠️ Unaudited |
| AntiSnipAttackPositionManager | governance | optimism | n/a | [`0x2b1c7b...6dc9a8`](./contracts/optimism-10/0x2b1c7b41f6a8f2b2bc45c3233a5d5fb3cd6dc9a8/) | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | arbitrum | n/a | 2 deployments: optimism `0x451823...583263`; arbitrum [`0x316772...aaff12`](./contracts/arbitrum-42161/0x316772cfec9a3e976fde42c3ba21f5a13aaaff12/) | ⚠️ Unaudited |
| BridgedToken | operational_periphery | linea | unit-28784 | [`0x3b2f62...c3b1d6`](./contracts/linea-59144/0x3b2f62d42db19b30588648bf1c184865d4c3b1d6/) | ⚠️ Unaudited |
| Dai | unknown | ethereum | n/a | [`0x6b1754...271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | ⚠️ Unaudited |
| DMMFactory | registry | polygon | n/a | 3 deployments: polygon [`0x10908c...9595c9`](./contracts/polygon-137/0x10908c875d865c66f271f5d3949848971c9595c9/); polygon `0x5f1fe6...3c095c`; arbitrum `0xd9bfe9...376974` | ⚠️ Unaudited |
| DMMRouter02 | adapter | ethereum | n/a | 5 deployments: ethereum [`0x1c8725...8cdbe6`](./contracts/ethereum-1/0x1c87257f5e8609940bc751a07bb085bb7f8cdbe6/); bsc `0x78df70...c86409`; polygon `0x546c79...4e4dd1`; polygon `0x8efa5a...c5a5f8`; avalanche `0x8efa5a...c5a5f8` | ⚠️ Unaudited |
| DSLOProtocol | unknown | ethereum | n/a | [`0xcab2fa...6b4f6c`](./contracts/ethereum-1/0xcab2fa2eeab7065b45cbcf6e3936dde2506b4f6c/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | unit-28776 | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| KSDistributor | operational_periphery | ethereum | n/a | [`0xeae300...286f9c`](./contracts/ethereum-1/0xeae300ac9409b2072697ca1d5fd137f8bb286f9c/) | ⚠️ Unaudited |
| KSFactory | registry | arbitrum | n/a | [`0x51e8d1...071a62`](./contracts/arbitrum-42161/0x51e8d106c646ca58caf32a47812e95887c071a62/) | ⚠️ Unaudited |
| KSRemoveLiquidityPancakeV4CLHook | unknown | bsc | n/a | [`0xf67476...c50eec`](./contracts/bsc-56/0xf67476e5d3fa43e0470f8f1d3c43bf202dc50eec/) | ⚠️ Unaudited |
| KSRemoveLiquidityUniswapV3Hook | unknown | bsc | n/a | [`0x72473d...bb1851`](./contracts/bsc-56/0x72473de0b52d079ca21709ea67085757c3bb1851/) | ⚠️ Unaudited |
| KSRemoveLiquidityUniswapV4Hook | unknown | bsc | n/a | [`0x635dff...1d7841`](./contracts/bsc-56/0x635dffee858a9f941d058401b393fcfab41d7841/) | ⚠️ Unaudited |
| KSRouter02 | adapter | arbitrum | n/a | [`0xc3e2ae...5489dd`](./contracts/arbitrum-42161/0xc3e2aed41ecdfb1ad41ed20d45377da98d5489dd/) | ⚠️ Unaudited |
| KSZapRouter | adapter | arbitrum | n/a | [`0x30c532...e2b79e`](./contracts/arbitrum-42161/0x30c5322e4e08ad500c348007f92f120ab4e2b79e/) | ⚠️ Unaudited |
| KSZapRouterPosition | adapter | ethereum | n/a | [`0x0e97c8...429e05`](./contracts/ethereum-1/0x0e97c887b61ccd952a53578b04763e7134429e05/) | ⚠️ Unaudited |
| KSZapRouterPositionPermit | adapter | ethereum | n/a | [`0x638d93...0ccabb`](./contracts/ethereum-1/0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb/) | ⚠️ Unaudited |
| KSZapValidator | adapter | arbitrum | n/a | [`0xf0096e...5c1172`](./contracts/arbitrum-42161/0xf0096e5b4aafeea1df557264091569ba125c1172/) | ⚠️ Unaudited |
| KSZapValidatorV2Part1 | adapter | ethereum | n/a | [`0xa16f32...d2863e`](./contracts/ethereum-1/0xa16f32442209c6b978431818aa535bcc9ad2863e/) | ⚠️ Unaudited |
| KyberFeeHandler | unknown | ethereum | n/a | [`0xd3d2b5...1114fe`](./contracts/ethereum-1/0xd3d2b5643e506c6d9b7099e9116d7aaa941114fe/) | ⚠️ Unaudited |
| KyberNetworkCrystal | unknown | ethereum | n/a | [`0xdd974d...6bd200`](./contracts/ethereum-1/0xdd974d5c2e2928dea5f71b9825b8b646686bd200/) | ⚠️ Unaudited |
| KyberStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0xeadb96...72b3bd`](./contracts/ethereum-1/0xeadb96f1623176144eba2b24e35325220972b3bd/); ethereum `0xecf0bd...8aaea3` | ⚠️ Unaudited |
| KyberSwapElasticLM | unknown | arbitrum | n/a | [`0xbdec4a...329bf0`](./contracts/arbitrum-42161/0xbdec4a045446f583dc564c0a227ffd475b329bf0/) | ⚠️ Unaudited |
| LimitOrderProtocol | unknown | ethereum | n/a | [`0x227b0c...02e936`](./contracts/ethereum-1/0x227b0c196ea8db17a665ea6824d972a64202e936/) | ⚠️ Unaudited |
| MetaAggregationRouter | adapter | arbitrum | n/a | 5 deployments: ethereum `0x617dee...44111e`; arbitrum [`0x180555...0877f2`](./contracts/arbitrum-42161/0x180555d4d45e67520adc7c0c51b512c7a50877f2/); arbitrum `0x2b938f...d035cf`; arbitrum `0x617dee...44111e`; arbitrum `0xfc4af9...b2acff` | ⚠️ Unaudited |
| MetaAggregationRouterV2 | adapter | ethereum | n/a | [`0x6131b5...6337b5`](./contracts/ethereum-1/0x6131b5fae19ea4f9d964eac0408e4408b66337b5/) | ⚠️ Unaudited |
| Multicall | periphery | polygon | n/a | 2 deployments: bsc `0xcf591c...9a74ec`; polygon [`0x878dfe...bd934c`](./contracts/polygon-137/0x878dfe971d44e9122048308301f540910bbd934c/) | ⚠️ Unaudited |
| Multicall2 | periphery | ethereum | n/a | 2 deployments: ethereum [`0x5ba1e1...eed696`](./contracts/ethereum-1/0x5ba1e12693dc8f9c48aad8770482f4739beed696/); arbitrum `0xbf69a5...751e54` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | ethereum | n/a | 4 deployments: ethereum [`0x4dbbbf...851e80`](./contracts/ethereum-1/0x4dbbbfb0e68be9d8f5a377a4654604a62e851e80/); ethereum `0xd69d7a...90c30e`; avalanche `0x91c9d4...e36f5b`; avalanche `0xd69d7a...90c30e` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0x28fe69...9d57b1`](./contracts/base-8453/0x28fe69ff6864c1c218878bdca01482d36b9d57b1/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | ethereum | n/a | [`0x5ec0dc...c0d3b2`](./contracts/ethereum-1/0x5ec0dcf4f6f55f28550c70b854082993fdc0d3b2/) | ⚠️ Unaudited |
| Router | adapter | ethereum | n/a | [`0xf9c2b5...bdeab4`](./contracts/ethereum-1/0xf9c2b5746c946ef883ab2660bbbb1f10a5bdeab4/) | ⚠️ Unaudited |
| ScrollStandardERC20 | token | scroll | n/a | [`0x608ef9...f99c84`](./contracts/scroll-534352/0x608ef9a3bffe206b86c3108218003b3cfbf99c84/) | ⚠️ Unaudited |
| SimpleCall | unknown | ethereum | n/a | [`0xb0b538...6f5ad4`](./contracts/ethereum-1/0xb0b538f6aed436643c0b885924ae7a5fea6f5ad4/) | ⚠️ Unaudited |
| StablyFiatToken | token | ethereum | n/a | [`0xa4bdb1...112ebe`](./contracts/ethereum-1/0xa4bdb11dc0a2bec88d24a3aa1e6bb17201112ebe/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xf49c43...dd6687`](./contracts/ethereum-1/0xf49c43ae0faf37217bdcb00df478cf793edd6687/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x49c4f9...801a8b`](./contracts/ethereum-1/0x49c4f9bc14884f6210f28342ced592a633801a8b/) | ⚠️ Unaudited |
| WAVAX | unknown | avalanche | n/a | [`0xb31f66...fd66c7`](./contracts/avalanche-43114/0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7/) | ⚠️ Unaudited |
| WBNB | unknown | bsc | n/a | [`0xbb4cdb...bc095c`](./contracts/bsc-56/0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c/) | ⚠️ Unaudited |
| WBTC | token | ethereum | n/a | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WETH9 | token | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| WethUnwrapper | token | ethereum | n/a | 2 deployments: ethereum [`0x27a15e...318a8d`](./contracts/ethereum-1/0x27a15e7a67fb812a8bd3b4969397fb2de7318a8d/); ethereum `0x37334c...7a5b94` | ⚠️ Unaudited |
| WhitelistedCollector | unknown | ethereum | n/a | [`0x9ed9af...00f6b9`](./contracts/ethereum-1/0x9ed9afb6b4cafbdfb2d833b0e70845997300f6b9/) | ⚠️ Unaudited |
| WMATIC | unknown | polygon | n/a | [`0x0d500b...df1270`](./contracts/polygon-137/0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270/) | ⚠️ Unaudited |
| ZapIn | adapter | polygon | n/a | [`0xf79b1e...526975`](./contracts/polygon-137/0xf79b1ea5566ab2120f58ba8174055e9eb8526975/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0e4272...17185c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ff27a...97dc0e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3dc912...e19f6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5fd93e...56d3a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x650630...79abd3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1ac64...aca12c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5dc39...25d616` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc77841...0cd5ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9be00...406187` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x5c7f8a...e1ae23` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x63abb9...151e6d` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xd9bfe9...376974` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x1e1085...917c3f` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x21be37...1a4c83` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x5d5a5a...de039a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x78df70...c86409` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x350047...841c54` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x937f4f...7a5208` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x6a80a4...d579ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x214061...c8fa6b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x41684b...e518c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4e8419...62f20a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4f097f...f95cf0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x59a16e...956571` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x83d490...251c31` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8ac789...ef19d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa9249f...7785b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbdb3e3...7a226f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd12bcd...a59e77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeae47c...5cfd55` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf530a0...bab58a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2b1c7b...6dc9a8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5649b4...eb23d0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x0d125c...508c1f` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x165c68...2de75d` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x2b1c7b...6dc9a8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SmartDecAudit.pdf](https://github.com/KyberNetwork/smart-contracts/blob/master/audits/APRAudit/SmartDecAudit.pdf) | unknown | Audit | 2019-12 | stale | Direct | contract_name | 0 | n/a |
| [KyberNetwork BlockchainLabs Audit Report.pdf](https://github.com/KyberNetwork/smart-contracts/blob/master/audits/kyberV1Audit2/KyberNetwork%20BlockchainLabs%20Audit%20Report.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 0 | n/a |
| [ChainSecurity_KyberNetwork_Public.pdf](https://github.com/KyberNetwork/smart-contracts/blob/master/audits/kyberV2Audit/ChainSecurity_KyberNetwork_Public.pdf) | ChainSecurity | Audit | 2018-06 | stale | Direct | contract_name | 2 | high |
| [ChainSecurity_Kyberv3.pdf](https://github.com/KyberNetwork/smart-contracts/blob/master/audits/kyberV3Audit/ChainSecurity_Kyberv3.pdf) | ChainSecurity | Audit | 2019-01 | stale | Direct | contract_name | 2 | high |
| [Kyber-Hook-Uniswap-Foundation-Spearbit-Security-Review-October-2025.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Kyber-Hook-Uniswap-Foundation-Spearbit-Security-Review-October-2025.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | 3 | high |
| [kyberswap-dec-25(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/kyberswap-dec-25(Final).pdf) | unknown | Audit | 2026-01 | fresh | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2b1c7b...6dc9a8`](./contracts/ethereum-1/0x2b1c7b41f6a8f2b2bc45c3233a5d5fb3cd6dc9a8/) | AntiSnipAttackPositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2b1c7b...6dc9a8`](./contracts/optimism-10/0x2b1c7b41f6a8f2b2bc45c3233a5d5fb3cd6dc9a8/) | AntiSnipAttackPositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x10908c...9595c9`](./contracts/polygon-137/0x10908c875d865c66f271f5d3949848971c9595c9/) | DMMFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c8725...8cdbe6`](./contracts/ethereum-1/0x1c87257f5e8609940bc751a07bb085bb7f8cdbe6/) | DMMRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeae300...286f9c`](./contracts/ethereum-1/0xeae300ac9409b2072697ca1d5fd137f8bb286f9c/) | KSDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x51e8d1...071a62`](./contracts/arbitrum-42161/0x51e8d106c646ca58caf32a47812e95887c071a62/) | KSFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x72473d...bb1851`](./contracts/bsc-56/0x72473de0b52d079ca21709ea67085757c3bb1851/) | KSRemoveLiquidityUniswapV3Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x635dff...1d7841`](./contracts/bsc-56/0x635dffee858a9f941d058401b393fcfab41d7841/) | KSRemoveLiquidityUniswapV4Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc3e2ae...5489dd`](./contracts/arbitrum-42161/0xc3e2aed41ecdfb1ad41ed20d45377da98d5489dd/) | KSRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x30c532...e2b79e`](./contracts/arbitrum-42161/0x30c5322e4e08ad500c348007f92f120ab4e2b79e/) | KSZapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e97c8...429e05`](./contracts/ethereum-1/0x0e97c887b61ccd952a53578b04763e7134429e05/) | KSZapRouterPosition | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x638d93...0ccabb`](./contracts/ethereum-1/0x638d935eecd1646991a8b2ce9c2a2b7b840ccabb/) | KSZapRouterPositionPermit | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf0096e...5c1172`](./contracts/arbitrum-42161/0xf0096e5b4aafeea1df557264091569ba125c1172/) | KSZapValidator | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa16f32...d2863e`](./contracts/ethereum-1/0xa16f32442209c6b978431818aa535bcc9ad2863e/) | KSZapValidatorV2Part1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd3d2b5...1114fe`](./contracts/ethereum-1/0xd3d2b5643e506c6d9b7099e9116d7aaa941114fe/) | KyberFeeHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeadb96...72b3bd`](./contracts/ethereum-1/0xeadb96f1623176144eba2b24e35325220972b3bd/) | KyberStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbdec4a...329bf0`](./contracts/arbitrum-42161/0xbdec4a045446f583dc564c0a227ffd475b329bf0/) | KyberSwapElasticLM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6131b5...6337b5`](./contracts/ethereum-1/0x6131b5fae19ea4f9d964eac0408e4408b66337b5/) | MetaAggregationRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ec0dc...c0d3b2`](./contracts/ethereum-1/0x5ec0dcf4f6f55f28550c70b854082993fdc0d3b2/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf9c2b5...bdeab4`](./contracts/ethereum-1/0xf9c2b5746c946ef883ab2660bbbb1f10a5bdeab4/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb0b538...6f5ad4`](./contracts/ethereum-1/0xb0b538f6aed436643c0b885924ae7a5fea6f5ad4/) | SimpleCall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49c4f9...801a8b`](./contracts/ethereum-1/0x49c4f9bc14884f6210f28342ced592a633801a8b/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27a15e...318a8d`](./contracts/ethereum-1/0x27a15e7a67fb812a8bd3b4969397fb2de7318a8d/) | WethUnwrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ed9af...00f6b9`](./contracts/ethereum-1/0x9ed9afb6b4cafbdfb2d833b0e70845997300f6b9/) | WhitelistedCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf79b1e...526975`](./contracts/polygon-137/0xf79b1ea5566ab2120f58ba8174055e9eb8526975/) | ZapIn | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 34 |
| upstream | 22 |
| standard_library | 12 |
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=54

Zero-match audit list:

- [10239] SmartDecAudit.pdf
- [10242] KyberNetwork BlockchainLabs Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
