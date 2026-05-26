# Agentic Audit Brief: Ring Protocol

## Project Overview

- Project: Ring Protocol (`ring-protocol`)
- Website: [https://ring.exchange/](https://ring.exchange/)
- Lifecycle: active (Tier 0, 88.5% below peak)
- Generated: 2026-05-26T17:11:06.109Z
- Pipeline run: v2-pipeline-2026-05-26-695c23-aaf8
- Chains: arbitrum, avalanche, base, blast, bsc, celo, ethereum, ink, optimism, polygon, unichain, zora
- Contract surface: 91 unique implementations (254 raw deployments)
- DeFi Llama TVL: $36,201,030.00
- On-chain TVL (included contracts): $354,886,806.65
- TVL by chain: Ethereum $218,931,228.78 | Blast $83,515,359.86 | Base $26,844,907.89 | Bsc $9,533,809.21 | Arbitrum $9,320,440.56 | Unichain $4,537,132.88 | Polygon $1,045,662.54 | Optimism $971,231.12 | Avalanche $98,301.71 | Celo $88,732.10

## Project Description

Ring Protocol is a multi-chain decentralized exchange and bridge aggregator that provides automated market-making, liquidity provision, and token swapping across numerous EVM-compatible chains. It combines Uniswap V4-style concentrated liquidity pools with V2-style constant-product pools and a dedicated bridge product (Ring Few) to facilitate cross-chain asset transfers.

### Architecture

The three product families share common infrastructure such as Permit2 for token approvals and UniversalRouter for efficient multi-hop swaps. Ring V4 and Ring Swap both rely on the same WETH-like wrapper (FewETHWrapper) for native ETH handling, while Ring Few bridges assets that can then be traded or provided as liquidity in the other families.

## Audit Coverage Summary

- Verified implementations audited: 5/48 (10.4%)
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 3
- Unverified implementations: 43
- Unique implementations: 91
- Raw deployments: 254
- Audits discovered: 9
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $83,508,000.00
- Latest audit: 2025-11 (fresh)
- Staleness: 1 fresh, 3 aging, 0 stale, 5 unknown
- Tier 1 coverage: 8.3% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 4 | 8.3% | 2024-09 |
| ABDK | Tier 2 | 3 | 6.3% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PoolManager | core_logic | ethereum | 11 deployments: ethereum [`0x000000...e08a90`](./contracts/ethereum-1/0x000000000004444c5dc75cb358380d2e3de08a90/); optimism `0x9a13f9...264ec3`; bsc `0x28e2ea...e9e9df`; unichain `0x1f9840...000004`; polygon `0x673667...3e5cd6`; base `0x498581...652b2b`; arbitrum `0x360e68...b9fb32`; arbitrum `0x870246...b92650`; celo `0x288dc8...cd87bc`; avalanche `0x06380c...dbbc85`; blast `0x163155...ab6446` | ✅ Audited |
| PositionManager | governance | arbitrum | 11 deployments: ethereum `0xbd2165...64ee9e`; optimism `0x3c3ea4...9a1017`; bsc `0x7a4a5c...87f95b`; unichain `0x4529a0...2617bf`; polygon `0x1ec2eb...3ceef9`; base `0x7c5f5a...429bdc`; arbitrum [`0x170732...7d7a9f`](./contracts/arbitrum-42161/0x1707327f626496a7b5b3872e7e4d2879df7d7a9f/); arbitrum `0xd88f38...3dd869`; celo `0xf7965f...068ca9`; avalanche `0xb74b1f...ab8acd`; blast `0x4ad2f4...f1baad` | ✅ Audited |
| Quoter | periphery | ethereum | [`0xb27308...ce5ab6`](./contracts/ethereum-1/0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6/) | ✅ Audited |
| StateView | unknown | blast | 11 deployments: ethereum `0x7ffe42...597227`; optimism `0xc18a31...75ecdb`; bsc `0xd13dd3...aee0c4`; unichain `0x86e863...dee8f2`; polygon `0x5ea1bd...b3ba5a`; base `0xa3c0c9...867a71`; arbitrum `0x182a92...b10f59`; arbitrum `0x76fd29...6e9990`; celo `0xbc21f8...6f2bfb`; avalanche `0xc3c9e1...b69286`; blast [`0x12a88a...85df30`](./contracts/blast-81457/0x12a88ae16f46dce4e8b15368008ab3380885df30/) | ✅ Audited |
| UniversalRouter | adapter | polygon | 20 deployments: ethereum `0x5597ac...4c81c2`; ethereum `0x66a989...dba8af`; ethereum `0x7d80c9...fd484f`; ethereum `0xeff87a...a15a24`; optimism `0x851116...8b3507`; bsc `0x1906c1...4eae07`; unichain `0xef740b...c8eaf3`; polygon [`0x109569...c49223`](./contracts/polygon-137/0x1095692a6237d83c6a72f3f5efedb9a670c49223/); base `0x6ff569...299b43`; base `0x9a8c67...1f1e07`; arbitrum `0x4b2ab3...1d6804`; arbitrum `0xa51afa...e381a3`; arbitrum `0xdb671f...6db8e5`; arbitrum `0xf29309...1749b8`; celo `0xcb695b...a0233a`; avalanche `0x94b753...aa73b7`; blast `0x6a7c92...6e0ee5`; blast `0xc9dd68...a3f201`; blast `0xce69ec...60a940`; blast `0xeabbcb...025be3` | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| RingToken | token | blast | 2 deployments: base `0xe945d6...a8486e`; blast [`0x25f233...643c84`](./contracts/blast-81457/0x25f233c3e3676f9e900a89644a3fe5404d643c84/) | ⚠️ Unaudited |
| Core | unknown | base | 5 deployments: ethereum `0xb2799e...c087d4`; unichain `0x8814a2...2fba8b`; base [`0x0e4425...03706e`](./contracts/base-8453/0x0e442504ce6a378492c461c44adbce787903706e/); arbitrum `0x8814a2...2fba8b`; blast `0xc74759...01321c` | ⚠️ Unaudited |
| DackieInterfaceMulticall | periphery | blast | [`0x8cab8e...ea6296`](./contracts/blast-81457/0x8cab8ede6e48c947049b3cc6ccc3d5a0faea6296/) | ⚠️ Unaudited |
| Dai | unknown | ethereum | [`0x6b1754...271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | ⚠️ Unaudited |
| FeeTo | unknown | ethereum | [`0xdaf819...7f0970`](./contracts/ethereum-1/0xdaf819c2437a82f9e01f6586207ebf961a7f0970/) | ⚠️ Unaudited |
| FeeToSetter | unknown | ethereum | [`0x18e433...771360`](./contracts/ethereum-1/0x18e433c7bf8a2e1d0197ce5d8f9afada1a771360/) | ⚠️ Unaudited |
| FewETHWrapper | token | base | 7 deployments: ethereum `0xada605...6b5ebb`; unichain `0xc43a3d...89df42`; base [`0x20e6b1...9c4fe7`](./contracts/base-8453/0x20e6b1260d12910c0ab13c1abebcfe24ae9c4fe7/); base `0xdb671f...6db8e5`; arbitrum `0xeee400...b972cd`; blast `0x46b040...d0e024`; blast `0xf272a4...eb065f` | ⚠️ Unaudited |
| FewFactory | registry | blast | 6 deployments: ethereum `0x7d8639...4464dd`; ethereum `0xb13a84...8fd2ad`; unichain `0x974cc3...ee556f`; base `0xb3ad77...a47920`; arbitrum `0x974cc3...ee556f`; blast [`0x455b20...e8cee9`](./contracts/blast-81457/0x455b20131d59f01d082df1225154fda813e8cee9/) | ⚠️ Unaudited |
| FewNonfungiblePositionManager | governance | blast | 5 deployments: blast [`0x44d8a7...23d995`](./contracts/blast-81457/0x44d8a7885c48c20861b49cd238e612056223d995/); blast `0x897050...2c536a`; blast `0x89cc75...177b90`; blast `0xaccba4...ab4949`; blast `0xb1486e...ea8f3b` | ⚠️ Unaudited |
| FixedStakingRewards | unknown | blast | [`0xeff87a...a15a24`](./contracts/blast-81457/0xeff87a51f5abd015f1afcd5737bbab450ea15a24/) | ⚠️ Unaudited |
| GovernorAlpha | governance | ethereum | [`0x5e4be8...81d58f`](./contracts/ethereum-1/0x5e4be8bc9637f0eaa1a755019e06a68ce081d58f/) | ⚠️ Unaudited |
| GovernorBravoDelegate | governance | blast | 7 deployments: base `0xc76e66...46cfbd`; base `0xf9cfaa...1635eb`; blast [`0x0649ce...d278db`](./contracts/blast-81457/0x0649cee63277de954acf4d50223d1f4965d278db/); blast `0x1f4f92...25a70a`; blast `0x5a2cd5...9d46b6`; blast `0xd2f37f...d6a943`; blast `0xfa04c9...bf4140` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | [`0x090d46...1d256e`](./contracts/ethereum-1/0x090d4613473dee047c3f2706764f49e0821d256e/) | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | arbitrum | 5 deployments: ethereum `0xf09f18...264894`; base `0x3e2450...b8aa32`; arbitrum [`0x003aa1...8690ce`](./contracts/arbitrum-42161/0x003aa18c6e682db80cf4aa17261ccbffd28690ce/); blast `0x290ef7...615c2e`; blast `0xb27f82...bc0371` | ⚠️ Unaudited |
| Multicall | periphery | unichain | [`0xb630bb...9da400`](./contracts/unichain-130/0xb630bbef1b6a9ca0c31699060321918a729da400/) | ⚠️ Unaudited |
| MultipleModesDuoExchange | unknown | blast | [`0x63d842...c0819e`](./contracts/blast-81457/0x63d8423977624ead67af0ff33c2d1adc62c0819e/) | ⚠️ Unaudited |
| NFTDescriptor | token | blast | 3 deployments: ethereum `0x42b24a...0a48ec`; blast [`0x0d5ecc...a662c2`](./contracts/blast-81457/0x0d5ecc10610f23e1e9c8e03f0cc6a5f052a662c2/); blast `0x29a4e1...ed8778` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | blast | 2 deployments: base `0xf9d7ff...97916f`; blast [`0xebec26...5300fa`](./contracts/blast-81457/0xebec263be79a02131258a1033d8490b11a5300fa/) | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | 11 deployments: ethereum [`0x000000...c78ba3`](./contracts/ethereum-1/0x000000000022d473030f116ddee9f6b43ac78ba3/); optimism [`0x000000...c78ba3`](./contracts/optimism-10/0x000000000022d473030f116ddee9f6b43ac78ba3/); bsc [`0x000000...c78ba3`](./contracts/bsc-56/0x000000000022d473030f116ddee9f6b43ac78ba3/); unichain [`0x000000...c78ba3`](./contracts/unichain-130/0x000000000022d473030f116ddee9f6b43ac78ba3/); polygon [`0x000000...c78ba3`](./contracts/polygon-137/0x000000000022d473030f116ddee9f6b43ac78ba3/); base [`0x000000...c78ba3`](./contracts/base-8453/0x000000000022d473030f116ddee9f6b43ac78ba3/); base `0x4de602...c4dd9b`; arbitrum [`0x000000...c78ba3`](./contracts/arbitrum-42161/0x000000000022d473030f116ddee9f6b43ac78ba3/); celo [`0x000000...c78ba3`](./contracts/celo-42220/0x000000000022d473030f116ddee9f6b43ac78ba3/); avalanche [`0x000000...c78ba3`](./contracts/avalanche-43114/0x000000000022d473030f116ddee9f6b43ac78ba3/); blast [`0x000000...c78ba3`](./contracts/blast-81457/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| PositionDescriptor | periphery | blast | 12 deployments: ethereum `0xd1428b...63f06c`; optimism `0xedd814...a66743`; bsc `0xf0432f...d380e1`; unichain `0x9fb284...f7f722`; polygon `0x089277...6e6794`; base `0x25d093...f3e7d5`; arbitrum `0xbbbcc6...e25df2`; arbitrum `0xe2023f...7843f4`; arbitrum `0xe783de...19ebad`; celo `0x5727e2...102d8a`; avalanche `0x2b1aed...51f0a9`; blast [`0x0747ad...676f97`](./contracts/blast-81457/0x0747ad2b2e1f5761b1dcf0d8672bd1ffc3676f97/) | ⚠️ Unaudited |
| QuoterV2 | periphery | ethereum | 3 deployments: ethereum [`0x61ffe0...30b21e`](./contracts/ethereum-1/0x61ffe014ba17989e743c5f6cb21bf9697530b21e/); base `0xd69ed5...baa46a`; blast `0x766f7e...e21ae1` | ⚠️ Unaudited |
| RingLaunchpad | unknown | arbitrum | 5 deployments: unichain `0xd69ed5...baa46a`; base `0x4ea40d...bca913`; base `0x76c8dd...3d1d4e`; base `0x833d47...c0da30`; arbitrum [`0x4de602...c4dd9b`](./contracts/arbitrum-42161/0x4de602a30ad7fef8223dcf67a9fb704324c4dd9b/) | ⚠️ Unaudited |
| RingLiquidityToken | token | blast | 2 deployments: base `0x70469a...b4136e`; blast [`0x5597ac...4c81c2`](./contracts/blast-81457/0x5597acf300faa23e6185b6604360391b044c81c2/) | ⚠️ Unaudited |
| RingPoint | unknown | blast | [`0x8bd2cd...fd7e94`](./contracts/blast-81457/0x8bd2cdadce9c978af3ddbd6c0c8488be1bfd7e94/) | ⚠️ Unaudited |
| StakingRewardsFactory | registry | ethereum | [`0x3032ab...918e12`](./contracts/ethereum-1/0x3032ab3fa8c01d786d29dade018d7f2017918e12/) | ⚠️ Unaudited |
| SwapIncentive | unknown | blast | 2 deployments: blast [`0x4610a7...29c503`](./contracts/blast-81457/0x4610a79b9d0d075d7d63d112018a49059529c503/); blast `0xfe8d01...36e112` | ⚠️ Unaudited |
| SwapRouter | adapter | ethereum | [`0xe59242...861564`](./contracts/ethereum-1/0xe592427a0aece92de3edee1f18e0157c05861564/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | ethereum | 3 deployments: ethereum [`0x075b36...aa8a60`](./contracts/ethereum-1/0x075b36de1bd11cb361c5b3b1e80a9ab0e7aa8a60/); ethereum `0x68b346...65fc45`; blast `0xa94f22...6ae522` | ⚠️ Unaudited |
| SwapV2Factory | registry | arbitrum | 6 deployments: ethereum `0xeb2a62...d06416`; unichain `0xeee400...b972cd`; base `0x9bffc3...b4980e`; arbitrum [`0x1246fa...609442`](./contracts/arbitrum-42161/0x1246fa62467a9ac0892a2d2a9f9aafc2f5609442/); blast `0x24f5ac...4ecfe6`; blast `0xeb2a62...d06416` | ⚠️ Unaudited |
| SwapV2Router | adapter | base | 9 deployments: ethereum `0x290ef7...615c2e`; ethereum `0x39d1d8...6d3519`; unichain `0xf9d7ff...97916f`; base [`0x224749...4cd254`](./contracts/base-8453/0x224749cdd5791480ecebe452e5ffaefef94cd254/); base `0x30b799...3c323e`; base `0x41957b...7caa08`; arbitrum `0xd69ed5...baa46a`; blast `0x7001f7...1696ff`; blast `0xada605...6b5ebb` | ⚠️ Unaudited |
| TickLens | periphery | blast | 3 deployments: ethereum `0xbfd813...47f573`; base `0x4fe312...e2aa50`; blast [`0x160958...ad17a0`](./contracts/blast-81457/0x160958266ea8fe90d3be91474baf633eebad17a0/) | ⚠️ Unaudited |
| Timelock | governance | arbitrum | 8 deployments: ethereum `0x1a9c81...be35bc`; unichain `0x4de602...c4dd9b`; base `0xdddd32...d5af0a`; arbitrum [`0x0e4425...03706e`](./contracts/arbitrum-42161/0x0e442504ce6a378492c461c44adbce787903706e/); blast `0x337c4f...4debf7`; blast `0x39d1d8...6d3519`; blast `0x3dbf36...42db35`; blast `0x7d80c9...fd484f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | base | [`0x1246fa...609442`](./contracts/base-8453/0x1246fa62467a9ac0892a2d2a9f9aafc2f5609442/) | ⚠️ Unaudited |
| TreasuryVester | operational_periphery | ethereum | 4 deployments: ethereum [`0x3d30b1...3f1e94`](./contracts/ethereum-1/0x3d30b1ab88d487b0f3061f40de76845bec3f1e94/); ethereum `0x4750c4...286e1a`; ethereum `0x4b4e14...4e4135`; ethereum `0xe3953d...54075d` | ⚠️ Unaudited |
| Uni | unknown | ethereum | [`0x1f9840...01f984`](./contracts/ethereum-1/0x1f9840a85d5af5bf1d1762f925bdaddc4201f984/) | ⚠️ Unaudited |
| UniswapV2Factory | registry | ethereum | [`0x5c69be...c5aa6f`](./contracts/ethereum-1/0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f/) | ⚠️ Unaudited |
| UniswapV3Factory | registry | ethereum | [`0x1f9843...31f984`](./contracts/ethereum-1/0x1f98431c8ad98523631ae4a59f267346ea31f984/) | ⚠️ Unaudited |
| V3Migrator | periphery | blast | 2 deployments: ethereum `0xa5644e...f92b34`; blast [`0x3a02ec...4dd245`](./contracts/blast-81457/0x3a02ecb17f26b1ab294396d4750a740d774dd245/) | ⚠️ Unaudited |
| V4Quoter | periphery | base | 11 deployments: ethereum `0x52f0e2...9e1203`; optimism `0x1f3131...f1a8d7`; bsc `0x9f75dd...9437b0`; unichain `0x333e3c...7491e0`; polygon `0xb3d5c3...2c81b9`; base [`0x0d5e0f...32048d`](./contracts/base-8453/0x0d5e0f971ed27fbff6c2837bf31316121532048d/); arbitrum `0x3972c0...75a1c5`; arbitrum `0xdf38f2...857e95`; celo `0x28566d...1d66cd`; avalanche `0xbe4067...9845c2`; blast `0x6f71cd...f62bcf` | ⚠️ Unaudited |
| WETH9 | token | ethereum | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (3)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| NonfungibleTokenPositionDescriptor | token | blast | 5 deployments: ethereum `0x91ae84...9294f3`; ethereum `0xee6a57...c24785`; blast [`0x22cde1...f5f39a`](./contracts/blast-81457/0x22cde1e8f2dc2dc14576219b9201e16bcdf5f39a/); blast `0x73adfd...255907`; blast `0x8c6a81...681573` | ⚠️ Unaudited (bytecode match) |
| ProxyAdmin | unknown | blast | 3 deployments: ethereum `0xb75354...e90cf2`; base `0x974cc3...ee556f`; blast [`0x25df14...353866`](./contracts/blast-81457/0x25df149cd012ec11a3bffd93e196a01805353866/) | ⚠️ Unaudited (bytecode match) |
| UnsupportedProtocol | unknown | base | 9 deployments: unichain `0x5aa37f...3c55ed`; unichain `0x76c8dd...3d1d4e`; unichain `0xb981b9...fb2faf`; unichain `0xc76e66...46cfbd`; unichain `0xdddd32...d5af0a`; unichain `0xf29309...1749b8`; base [`0x1c1709...c4d7cf`](./contracts/base-8453/0x1c1709b5655b0a769b816210e99be5e7e4c4d7cf/); arbitrum `0x3374be...c7af49`; arbitrum `0x9bffc3...b4980e` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (43)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | unichain | `0x1eebdd...409b6c` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x3374be...c7af49` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x3e2450...b8aa32` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x41957b...7caa08` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x833d47...c0da30` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x9bffc3...b4980e` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xdb671f...6db8e5` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xe17e4e...1b28af` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xe945d6...a8486e` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xf9cfaa...1635eb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1fb6ef...38cfcc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc43a3d...89df42` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdd8bd9...f9dfe1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe6d348...953a60` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xeee400...b972cd` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x112908...5d1fa0` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x1b35d1...deb566` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x360e68...b9fb32` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x3972c0...75a1c5` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x42e3cc...8e7f36` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x4cded7...a455df` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x76fd29...6e9990` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x303085...700bb4` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x35a337...a8c265` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x36a1a6...db4a1e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x3af30c...57dcaa` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x52cb39...50c91d` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x8b34f9...0cf256` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xa61111...55ff51` | ❓ Unverified |
| UnnamedContract | unknown | zora | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | zora | `0x057533...7ca30f` | ❓ Unverified |
| UnnamedContract | unknown | zora | `0x3315ef...04b020` | ❓ Unverified |
| UnnamedContract | unknown | zora | `0x385785...df7328` | ❓ Unverified |
| UnnamedContract | unknown | zora | `0x51d394...eb71eb` | ❓ Unverified |
| UnnamedContract | unknown | zora | `0x55d235...e6c5c0` | ❓ Unverified |
| UnnamedContract | unknown | zora | `0x5edacc...5dc2c6` | ❓ Unverified |
| UnnamedContract | unknown | zora | `0x7d6463...68d55a` | ❓ Unverified |
| UnnamedContract | unknown | zora | `0x7da419...aeace4` | ❓ Unverified |
| UnnamedContract | unknown | zora | `0x8ac7be...b5e743` | ❓ Unverified |
| UnnamedContract | unknown | zora | `0xb1860d...d13f33` | ❓ Unverified |
| UnnamedContract | unknown | zora | `0xc585e0...fb41fa` | ❓ Unverified |
| UnnamedContract | unknown | zora | `0xf66c7b...543d63` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [> [Open Zeppelin report]() from July 17th 2024.](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/OpenZeppelin_audit_core.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [> [Certora draft report]() from July 2024.](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/DRAFT_Certora_audit_core.pdf) | Certora | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [> [Trail of Bits report]() from September 5th 2024.](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/TrailOfBits_audit_core.pdf) | Trail of Bits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [> [Spearbit draft report]() from September 5th 2024.](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/DRAFT_Spearbit_audit_core.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [> [ABDK draft report]() from September 5th 2024.](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/DRAFT_ABDK_audit_core.pdf) | ABDK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OpenZeppelin_audit_periphery_universal_router.pdf](https://github.com/RingProtocol/v4-periphery/blob/main/audits/OpenZeppelin_audit_periphery_universal_router.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [> [Spearbit draft report]() from September 5th 2024.](https://github.com/RingProtocol/v4-periphery/blob/main/audits/DRAFT_Spearbit_audit_periphery.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | 34 | high |
| [> [ABDK draft report]() from September 5th 2024.](https://github.com/RingProtocol/v4-periphery/blob/main/audits/DRAFT_ABDK_audit_periphery_universal_router.pdf) | ABDK | Audit | 2024-09 | aging | Direct | contract_name | 32 | high |
| [ABDK_RingProtocol_Hook_v_1_0.pdf](https://github.com/RingProtocol/v4-periphery/blob/main/audits/ABDK_RingProtocol_Hook_v_1_0.pdf) | ABDK | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0x25f233...643c84`](./contracts/blast-81457/0x25f233c3e3676f9e900a89644a3fe5404d643c84/) | RingToken | token | $83,508,000.00 | Verified native implementation with $83,508,000.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0e4425...03706e`](./contracts/base-8453/0x0e442504ce6a378492c461c44adbce787903706e/) | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdaf819...7f0970`](./contracts/ethereum-1/0xdaf819c2437a82f9e01f6586207ebf961a7f0970/) | FeeTo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18e433...771360`](./contracts/ethereum-1/0x18e433c7bf8a2e1d0197ce5d8f9afada1a771360/) | FeeToSetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x20e6b1...9c4fe7`](./contracts/base-8453/0x20e6b1260d12910c0ab13c1abebcfe24ae9c4fe7/) | FewETHWrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x455b20...e8cee9`](./contracts/blast-81457/0x455b20131d59f01d082df1225154fda813e8cee9/) | FewFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x44d8a7...23d995`](./contracts/blast-81457/0x44d8a7885c48c20861b49cd238e612056223d995/) | FewNonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xeff87a...a15a24`](./contracts/blast-81457/0xeff87a51f5abd015f1afcd5737bbab450ea15a24/) | FixedStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x090d46...1d256e`](./contracts/ethereum-1/0x090d4613473dee047c3f2706764f49e0821d256e/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x63d842...c0819e`](./contracts/blast-81457/0x63d8423977624ead67af0ff33c2d1adc62c0819e/) | MultipleModesDuoExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x0d5ecc...a662c2`](./contracts/blast-81457/0x0d5ecc10610f23e1e9c8e03f0cc6a5f052a662c2/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xebec26...5300fa`](./contracts/blast-81457/0xebec263be79a02131258a1033d8490b11a5300fa/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x22cde1...f5f39a`](./contracts/blast-81457/0x22cde1e8f2dc2dc14576219b9201e16bcdf5f39a/) | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4de602...c4dd9b`](./contracts/arbitrum-42161/0x4de602a30ad7fef8223dcf67a9fb704324c4dd9b/) | RingLaunchpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x5597ac...4c81c2`](./contracts/blast-81457/0x5597acf300faa23e6185b6604360391b044c81c2/) | RingLiquidityToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x8bd2cd...fd7e94`](./contracts/blast-81457/0x8bd2cdadce9c978af3ddbd6c0c8488be1bfd7e94/) | RingPoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3032ab...918e12`](./contracts/ethereum-1/0x3032ab3fa8c01d786d29dade018d7f2017918e12/) | StakingRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x4610a7...29c503`](./contracts/blast-81457/0x4610a79b9d0d075d7d63d112018a49059529c503/) | SwapIncentive | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe59242...861564`](./contracts/ethereum-1/0xe592427a0aece92de3edee1f18e0157c05861564/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x075b36...aa8a60`](./contracts/ethereum-1/0x075b36de1bd11cb361c5b3b1e80a9ab0e7aa8a60/) | SwapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1246fa...609442`](./contracts/arbitrum-42161/0x1246fa62467a9ac0892a2d2a9f9aafc2f5609442/) | SwapV2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x224749...4cd254`](./contracts/base-8453/0x224749cdd5791480ecebe452e5ffaefef94cd254/) | SwapV2Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1246fa...609442`](./contracts/base-8453/0x1246fa62467a9ac0892a2d2a9f9aafc2f5609442/) | TransparentUpgradeableProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d30b1...3f1e94`](./contracts/ethereum-1/0x3d30b1ab88d487b0f3061f40de76845bec3f1e94/) | TreasuryVester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x3a02ec...4dd245`](./contracts/blast-81457/0x3a02ecb17f26b1ab294396d4750a740d774dd245/) | V3Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0d5e0f...32048d`](./contracts/base-8453/0x0d5e0f971ed27fbff6c2837bf31316121532048d/) | V4Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 11 |
| standard_library | 8 |
| needs_review | 40 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=66

Zero-match audit list:

- [3964] > [Open Zeppelin report]() from July 17th 2024.
- [3965] > [Certora draft report]() from July 2024.
- [3966] > [Trail of Bits report]() from September 5th 2024.
- [3967] > [Spearbit draft report]() from September 5th 2024.
- [3968] > [ABDK draft report]() from September 5th 2024.
- [3969] OpenZeppelin_audit_periphery_universal_router.pdf
- [3972] ABDK_RingProtocol_Hook_v_1_0.pdf

Fork inheritance lineage and inherited audits are included when available.
