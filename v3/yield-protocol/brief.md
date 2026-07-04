# Agentic Audit Brief: Yield Protocol

## Project Overview

- Project: Yield Protocol (`yield-protocol`)
- Website: [https://www.yo.xyz/](https://www.yo.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:17.767Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, base, ethereum, hyperliquid
- Contract surface: 123 unique implementations (265 raw deployments)
- DeFi Llama TVL: $203,353.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 228 project-authored contract(s) across 4 chain(s); 2 ERC4626 vaults, 30 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 40 common project-authored base contract(s) (mintcontroller, controller, dsmath). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 411; live-surface contracts included: 262 (190 live, 72 unknown).
- Excluded by liveness: 149 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/51 (9.8%)
- Deployed-live implementations: 51 of 123 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/51
- Verified + Unaudited implementations: 46
- Verified by bytecode match: 0
- Unverified implementations: 72
- Unique implementations: 123
- Raw deployments: 265
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 9.8% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 5 | 9.8% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FYToken | unknown | arbitrum | n/a | 30 deployments: ethereum `0x53c2a1...8e5593`; ethereum `0xb38ba3...1dd6a0`; ethereum `0xfcb9b8...e72eeb`; arbitrum [`0x035072...269e32`](./contracts/arbitrum-42161/0x035072cb2912daab7b578f468bd6f0d32a269e32/); arbitrum `0x0e7727...f04170`; arbitrum `0x2e8f62...805f22`; arbitrum `0x3b560c...4c0d5c`; arbitrum `0x4f9b5e...e80729`; arbitrum `0x523803...4edea5`; arbitrum `0x5655a9...352464`; arbitrum `0x5bb78e...1f7ccd`; arbitrum `0x5ed71c...01bdca`; arbitrum `0x60a6a7...f3a60a`; arbitrum `0x68e9e0...662a1a`; arbitrum `0x69f402...e37618`; arbitrum `0x6ef79d...9857f3`; arbitrum `0x892fa6...ca15e1`; arbitrum `0x8c41fc...80480f`; arbitrum `0x9b1988...184c5f`; arbitrum `0x9ca40b...ddb281`; arbitrum `0xa3ecaf...701c73`; arbitrum `0xa9bc73...dca9b8`; arbitrum `0xc24da4...ada6e1`; arbitrum `0xc4b24e...1b80c5`; arbitrum `0xca9d3b...54d470`; arbitrum `0xcbb7eb...7f06cc`; arbitrum `0xd94736...b12d11`; arbitrum `0xe1e878...f9a4ab`; arbitrum `0xec1b42...87851c`; arbitrum `0xee508c...012b23` | ✅ Audited |
| Ladle | unknown | arbitrum | n/a | [`0x16e25c...5d0560`](./contracts/arbitrum-42161/0x16e25cf364cecc305590128335b8f327975d0560/) | ✅ Audited |
| Pool | unknown | arbitrum | n/a | 15 deployments: ethereum `0x2e4b70...8c79ca`; ethereum `0x3771c9...3e3c9e`; ethereum `0x407353...114227`; ethereum `0x5d14ab...de4c9b`; ethereum `0x6bac09...3a04fc`; ethereum `0x80142a...302797`; ethereum `0xef8261...1e7da0`; ethereum `0xf5fd5a...83577c`; arbitrum [`0x0fa29e...ca1dd5`](./contracts/arbitrum-42161/0x0fa29eeb169cde6c779326d7b16c54529eca1dd5/); arbitrum `0x13ab94...122170`; arbitrum `0x6651f8...d0e323`; arbitrum `0x7fc2c4...54fc04`; arbitrum `0x8c8a44...5af309`; arbitrum `0xf76906...7f20d6`; arbitrum `0xfcb9b8...e72eeb` | ✅ Audited |
| Strategy | unknown | arbitrum | n/a | 33 deployments: ethereum `0x1144e1...ced295`; ethereum `0x7acfe2...1e2ccd`; ethereum `0x8e8d6a...1c0c39`; ethereum `0x93dee1...feb437`; ethereum `0xcda62a...b0f7d2`; ethereum `0xfbc322...516b5d`; arbitrum [`0x067fb3...705812`](./contracts/arbitrum-42161/0x067fb37dd51a4ef6fea0e006caf689db6c705812/); arbitrum `0x0a4b2e...3134e8`; arbitrum `0x2c918c...4bfba6`; arbitrum `0x3353e1...2622c7`; arbitrum `0x33e6b1...3d0635`; arbitrum `0x3b4ffd...c01a47`; arbitrum `0x4276be...3861dd`; arbitrum `0x477152...d95886`; arbitrum `0x5582b8...558955`; arbitrum `0x5aeb4e...2eafd0`; arbitrum `0x7012af...59c3fa`; arbitrum `0x861509...39339a`; arbitrum `0x8b814a...7956e1`; arbitrum `0x92a5b3...fbd5c8`; arbitrum `0x9847d0...b34cce`; arbitrum `0xa6624d...711145`; arbitrum `0xa9d104...5fba4a`; arbitrum `0xad1983...a940b3`; arbitrum `0xbd7a10...bdfe38`; arbitrum `0xc3a965...c61974`; arbitrum `0xc7d2e9...6d2257`; arbitrum `0xceaf1c...0431db`; arbitrum `0xd5b43b...f27151`; arbitrum `0xdc705f...593c11`; arbitrum `0xe7214a...c7efda`; arbitrum `0xe779cd...32b1e1`; arbitrum `0xfe2aba...7c5643` | ✅ Audited |
| Timelock | governance | arbitrum | n/a | [`0xd0a228...641b6c`](./contracts/arbitrum-42161/0xd0a22827aed2ef5198ebec0093ea33a4cd641b6c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (46)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DVFInterface2 | unknown | ethereum | n/a | [`0xed9d63...f21646`](./contracts/ethereum-1/0xed9d63a96c27f87b07115b56b2e3572827f21646/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/); ethereum `0xde0aa2...0f0195` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x0fbbc6...49a77f`](./contracts/ethereum-1/0x0fbbc6a4e951b00b1ac170325763bd4d5149a77f/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5e007b...5e4753`](./contracts/ethereum-1/0x5e007bc170861e27952ca4118d7af3e8aa5e4753/); ethereum `0xa2327a...4cbdcf` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | n/a | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | arbitrum | n/a | 2 deployments: base `0x6d0c9a...c8d0c1`; arbitrum [`0x0f4fb9...b6e04a`](./contracts/arbitrum-42161/0x0f4fb9474303d10905ab86aa8d5a65fe44b6e04a/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | n/a | 2 deployments: ethereum [`0x1abaea...1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/); ethereum `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | ethereum | n/a | [`0x5e620d...e79ce2`](./contracts/ethereum-1/0x5e620d573cdaf414d70fc85b116dd8f1e7e79ce2/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | 2 deployments: base [`0x60a3e3...1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/); base `0x833589...a02913` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | n/a | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| FYTokenFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa718ff...0aa67c`](./contracts/ethereum-1/0xa718ff3fa10fa9f797e98e35fd3a0bec9e0aa67c/); ethereum `0xf374ab...0a396f` | ⚠️ Unaudited |
| Ladle | unknown | ethereum | n/a | [`0x6cb18f...65066a`](./contracts/ethereum-1/0x6cb18ff2a33e981d1e38a663ca056c0a5265066a/) | ⚠️ Unaudited |
| PoolFactory | unknown | ethereum | n/a | 3 deployments: ethereum [`0x486635...5396ed`](./contracts/ethereum-1/0x486635abfe14b8b3e6abb277747c4042405396ed/); ethereum `0x9cc976...aaddfa`; ethereum `0xe4d5a6...9944be` | ⚠️ Unaudited |
| PoolNonTv | unknown | arbitrum | n/a | 38 deployments: ethereum `0xe2f6f4...6f0d9e`; arbitrum [`0x02dbfa...dabea6`](./contracts/arbitrum-42161/0x02dbfaca22df7e86897adf65eb74188d79dabea6/); arbitrum `0x1cd29a...84c518`; arbitrum `0x1dc344...9aa571`; arbitrum `0x1eec5e...ab2e7a`; arbitrum `0x2769ab...bbd7d0`; arbitrum `0x29e0de...4df3f7`; arbitrum `0x2e0c2b...f9ece4`; arbitrum `0x32cbdc...b561da`; arbitrum `0x3e0a63...e55eee`; arbitrum `0x3ea461...14e689`; arbitrum `0x530648...f06b6d`; arbitrum `0x536edc...f7121b`; arbitrum `0x53b0c1...3bcbd3`; arbitrum `0x54d47f...6cbb2e`; arbitrum `0x58086b...1c9861`; arbitrum `0x5f55b2...cdd6fa`; arbitrum `0x65142d...9d155a`; arbitrum `0x7388f2...a30e41`; arbitrum `0x7f0dd4...969a24`; arbitrum `0x83e99a...a463ef`; arbitrum `0x9a364e...05ee68`; arbitrum `0x9f873e...841efb`; arbitrum `0xa73ba1...1334b6`; arbitrum `0xa8b291...dc7f15`; arbitrum `0xa98f32...47f873`; arbitrum `0xb268e2...8ad9bb`; arbitrum `0xb71db5...a0eb98`; arbitrum `0xbc62d8...f9213a`; arbitrum `0xbfcee2...e5d8f9`; arbitrum `0xc6078e...e19867`; arbitrum `0xcf275f...c45fa3`; arbitrum `0xddeb62...974ca3`; arbitrum `0xdf19b3...06a556`; arbitrum `0xe888e0...f9ddfc`; arbitrum `0xf0ba5c...9c23d3`; arbitrum `0xf6c1bd...596c28`; arbitrum `0xf7f6eb...e82a0b` | ⚠️ Unaudited |
| PoolView | unknown | arbitrum | n/a | 2 deployments: ethereum `0xce4bc6...afa952`; arbitrum [`0x3e9d89...1a9cf6`](./contracts/arbitrum-42161/0x3e9d89a883c00608d932f92bbd8bd948bf1a9cf6/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 3 deployments: ethereum [`0x856fcc...fb873e`](./contracts/ethereum-1/0x856fcc085290ac1e40392442211e6a333afb873e/); ethereum `0x963c3c...a8eaa0`; ethereum `0xba4eee...133a7e` | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | 2 deployments: ethereum [`0x67b6f6...44fcd2`](./contracts/ethereum-1/0x67b6f699f1c8040414032a3c2c88a54db144fcd2/); ethereum `0x93e526...fd5927` | ⚠️ Unaudited |
| SafeERC20Namer | unknown | ethereum | n/a | 3 deployments: ethereum [`0x39bb9c...ce1706`](./contracts/ethereum-1/0x39bb9cbe0221d769e30bd08d185842065bce1706/); ethereum `0xc484f3...577703`; arbitrum `0xbd6bee...4bff8b` | ⚠️ Unaudited |
| StrategyRescue | unknown | ethereum | n/a | [`0x070229...ca62bb`](./contracts/ethereum-1/0x0702290d4da74a2004c7e77f66c4bbd91fca62bb/) | ⚠️ Unaudited |
| TetherToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4c0d2c...f9e566`](./contracts/ethereum-1/0x4c0d2c74a8d26f1e4f5653021c521f5471f9e566/); ethereum `0x687496...782f38`; ethereum `0x93d070...fc25e3` | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x38ce5e...186f48`](./contracts/ethereum-1/0x38ce5e45d0f5d03e83863bb19b3b1a272c186f48/) | ⚠️ Unaudited |
| Unwind | unknown | arbitrum | n/a | [`0x78b85b...5bcfd6`](./contracts/arbitrum-42161/0x78b85b1ddc84388ef2429cb7d856e93b375bcfd6/) | ⚠️ Unaudited |
| V2_1Upgrader | unknown | ethereum | n/a | [`0xd13689...b5259b`](./contracts/ethereum-1/0xd13689e8da0ed95b55100e27b7dbc95c03b5259b/) | ⚠️ Unaudited |
| V2_2Upgrader | unknown | ethereum | n/a | [`0x4654c4...e2c748`](./contracts/ethereum-1/0x4654c4eafb2561d21633d7b099d9960857e2c748/) | ⚠️ Unaudited |
| V2Upgrader | unknown | ethereum | n/a | [`0xed24bd...e272fc`](./contracts/ethereum-1/0xed24bd79a3f2ba4325e9c553164e299c65e272fc/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | 2 deployments: ethereum `0xc02aaa...756cc2`; base [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| YieldMath | unknown | arbitrum | n/a | 3 deployments: ethereum `0x856ddd...34868d`; ethereum `0xf003bd...ca6851`; arbitrum [`0x511707...7be0da`](./contracts/arbitrum-42161/0x511707b1311d6c3319e7a5be6edb12d3777be0da/) | ⚠️ Unaudited |
| YieldMathExtensions | unknown | arbitrum | n/a | 2 deployments: ethereum `0xea3d45...47aa1e`; arbitrum [`0xc445d7...ea9acd`](./contracts/arbitrum-42161/0xc445d7e3cdc96840439560675ca9023204ea9acd/) | ⚠️ Unaudited |
| YoApprovalRegistry | registry | ethereum | n/a | [`0xb4b3f5...ad7021`](./contracts/ethereum-1/0xb4b3f5c964a360bbd7201f72a55d0c48b8ad7021/) | ⚠️ Unaudited |
| YoChainlinkOracle | operational_periphery | ethereum | n/a | [`0x2800fc...ecbf07`](./contracts/ethereum-1/0x2800fc940a9b3bcb2cde3c70797b21296becbf07/) | ⚠️ Unaudited |
| YoERC4626Adapter | adapter | ethereum | n/a | [`0x206ff3...3efd64`](./contracts/ethereum-1/0x206ff3f58f57d00c48af6010de6dc26f913efd64/) | ⚠️ Unaudited |
| YoERC4626VaultRegistry | registry | ethereum | n/a | [`0x7bad59...158b6f`](./contracts/ethereum-1/0x7bad596c26e175384bd9985cb97c6c3f7e158b6f/) | ⚠️ Unaudited |
| YoGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0cf9a8...7bb0cf`](./contracts/ethereum-1/0x0cf9a84bb9e916229f3037dc079ef418b97bb0cf/); ethereum `0xf1eee0...4969fa` | ⚠️ Unaudited |
| YoGateway | unknown | ethereum | n/a | [`0xecd62a...3c816e`](./contracts/ethereum-1/0xecd62a8bbd3503710765a53218c480127b3c816e/) | ⚠️ Unaudited |
| YoIPORAdapter | adapter | ethereum | n/a | [`0x440944...f3c50f`](./contracts/ethereum-1/0x4409446b49e24861697d566e5c6d68c0d8f3c50f/) | ⚠️ Unaudited |
| YoLidoAdapter | adapter | ethereum | n/a | [`0xf83733...b467e0`](./contracts/ethereum-1/0xf837334c5c48f16a8a73affb09859bb7fdb467e0/) | ⚠️ Unaudited |
| YoMorphoAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x93a3a3...7456ab`](./contracts/ethereum-1/0x93a3a3325de6ab429523d144b41a032e7d7456ab/); hyperliquid `0x946fd0...b805f0` | ⚠️ Unaudited |
| YoMorphoMarketRegistry | registry | ethereum | n/a | [`0xcb9737...7fdd7f`](./contracts/ethereum-1/0xcb9737bdd076251744704cc37ce961e8417fdd7f/) | ⚠️ Unaudited |
| YoOracle | operational_periphery | ethereum | n/a | [`0x6e879d...d396b0`](./contracts/ethereum-1/0x6e879d0ccc85085a709ebf5539224f53d0d396b0/) | ⚠️ Unaudited |
| YoRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x542d29...bc8ae8`](./contracts/ethereum-1/0x542d29b2b69f83fa65eec2f3c782968c43bc8ae8/); ethereum `0x56c311...502232` | ⚠️ Unaudited |
| YoSwapAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x59bad3...a03f57`](./contracts/ethereum-1/0x59bad3e445e5c2d808c3e470b99386687da03f57/); base `0xa425d3...3b4826` | ⚠️ Unaudited |
| YoSwapPairRegistry | registry | ethereum | n/a | [`0xcff9d3...bb8a76`](./contracts/ethereum-1/0xcff9d39441eb668c7fffa752ad1ea47930bb8a76/) | ⚠️ Unaudited |
| YoVault_V2 | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x000000...588a65`](./contracts/ethereum-1/0x0000000f2eb9f69274678c76222b35eec7588a65/); ethereum `0x3a43ae...0e9de7`; ethereum `0x50c749...c871e9`; ethereum `0x586675...cc61a1`; ethereum `0xbcbc8c...60bcbc` | ⚠️ Unaudited |
| YoVault_V2 | core_logic | base | n/a | 3 deployments: base [`0x000000...588a65`](./contracts/base-8453/0x0000000f2eb9f69274678c76222b35eec7588a65/); base `0x3a43ae...0e9de7`; base `0xbcbc8c...60bcbc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (72)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0cbd55...390940` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d126c...c00c60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d64d8...50fbd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x102560...5df38b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x127f3c...a9199b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15f73a...6f5605` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x183739...a98908` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ff103...26f4da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20826b...363058` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20bdda...9a55b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x230557...37b15e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c6f75...35b507` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ff889...b8854d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31d687...cda740` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x335926...f90c3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x362b56...9dfce6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3682fb...6ea444` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37aea3...02a9f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x384c53...293036` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ad977...98f8a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bd1ee...3ca5af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x402fa0...2584b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x411ea3...9e93b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46695c...003ee7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x471208...0a8732` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c209a...223d28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c9ad5...1c9acd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56de9e...fa51a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b4997...5c76c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b4ba4...789c09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76d8a5...b14646` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7cf03c...55ea3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d3701...6b4877` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84f162...cbf197` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x897c79...ebc249` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89f800...389aa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b00a8...af293b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8cbd1d...aeed7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92bfd0...fb3e9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96c4bf...00159b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9843e5...bd50ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98bc79...4cf142` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9abc25...0f4fe0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e978e...73fdd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f4ef8...57df75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f6de3...1f2423` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fcb31...35be6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa71a6c...905627` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4fc47...8e7562` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc61d91...f4a581` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc77841...0cd5ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc882b9...2b0d9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbc21c...efe931` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce9603...2a9ced` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3f3c5...8a8a89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde7f57...071e5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6eaa2...a68e1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe81930...a59891` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef0594...5e8173` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf50db8...785f99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf68393...8fbf14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf85903...287c11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf88cbc...c08ff4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff0eb5...489010` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b4105...9ff4c4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeecc4c...48acf2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x25c057...1bbf3e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x59d9e1...bd5925` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa9078e...7b13e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb5d97b...6c8832` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc4cb24...66e482` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe6a63e...14b7ab` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [YieldV2.pdf](https://github.com/trailofbits/publications/blob/master/reviews/YieldV2.pdf) | Trail of Bits | Audit | 2021-10 | stale | Direct | contract_name | 5 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 123 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=5

Fork inheritance lineage and inherited audits are included when available.
