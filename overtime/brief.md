# Agentic Audit Brief: Overtime

⚠️ Lifecycle status: DECLINING - TVL dropped 24.4% over 90 days

## Project Overview

- Project: Overtime (`overtime`)
- Website: [https://www.overtimemarkets.xyz](https://www.overtimemarkets.xyz)
- Lifecycle: declining (Tier 0, 75.2% below peak)
- Generated: 2026-06-17T07:00:36.137Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, ethereum, optimism, polygon
- Contract surface: 75 unique implementations (351 raw deployments)
- DeFi Llama TVL: $2,074,314.11
- On-chain TVL (included contracts): $42,527,597.10
- TVL by chain: Optimism $34,526,031.82 | Ethereum $7,582,814.91 | Base $280,163.77 | Arbitrum $138,586.59

## Project Description

Overtime is an on-chain sportsbook, prediction-market, and digital-options ecosystem that enables users to trade sports event outcomes, participate in speed markets, and engage with casino-style games. It provides liquidity pools, automated market makers, and staking mechanisms across multiple chains.

### Architecture

The Overtime family shares infrastructure through proxy-based upgradeability and factory-deployed tokens. SpeedMarketsAMM and ChainedSpeedMarketsAMM rely on shared liquidity pools and governance managers, while StakingThales integrates with the ecosystem's token incentives.

## Contract Surface Quality

- Indexed contracts: 1993; live-surface contracts included: 351 (346 live, 5 unknown).
- Excluded by liveness: 1116 inactive, 526 singleton, 0 uninitialized.
- Deployment units: 27/318 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 8/32.

## Audit Coverage Summary

- Verified implementations audited: 5/69 (7.2%)
- Verified + Unaudited implementations: 64
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 75
- Raw deployments: 351
- Audits discovered: 11
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $42,527,597.10
- Latest audit: 2024-09 (aging)
- Staleness: 0 fresh, 1 aging, 7 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $42,527,597.10 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 5 | 7.2% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LiveTradingProcessor | unknown | base | n/a | 16 deployments: optimism `0x1eab81...4768b8`; optimism `0x22a5fb...d15d9f`; optimism `0x3b8341...7f8eab`; optimism `0x545a69...3082c4`; optimism `0xaeab38...bd09bb`; optimism `0xe64558...139d97`; base [`0x076c84...039017`](./contracts/base-8453/0x076c84d7691008045984bece7a3e595903039017/); base `0x4ff318...7ea7ea`; base `0x5dd816...e90f6e`; base `0x633569...b266a9`; base `0xc7bd91...bc3ef1`; arbitrum `0x255236...28329a`; arbitrum `0x809215...faa8ac`; arbitrum `0x84bcfa...ce58f7`; arbitrum `0xef0f33...364f16`; arbitrum `0xefbbef...dc370c` | ✅ Audited |
| ParlayMarketData | unknown | arbitrum | n/a | [`0x170a57...a603c1`](./contracts/arbitrum-42161/0x170a5714112daeff20e798b6e92e25b86ea603c1/) | ✅ Audited |
| ParlayMarketsAMM | unknown | arbitrum | n/a | [`0x7465c5...d42eae`](./contracts/arbitrum-42161/0x7465c5d60d3d095443cf9991da03304a30d42eae/) | ✅ Audited |
| SportsAMMV2 | unknown | arbitrum | n/a | 19 deployments: optimism `0x0a35a6...9e6850`; optimism `0x2854f4...a614fd`; optimism `0x9f9c2b...c38930`; optimism `0xc0435f...c5c6eb`; optimism `0xc848a1...e7a3d5`; optimism `0xcae2ac...0fa036`; base `0x19eed1...1526dd`; base `0x7b280e...7dda35`; base `0x91cffa...5b7f27`; base `0xc835bb...e809f8`; base `0xcf999f...ed3852`; base `0xd8a33f...fa2d44`; base `0xe1e022...570cda`; arbitrum [`0x086669...e2e545`](./contracts/arbitrum-42161/0x08666908415f39016a714ae6f71562f388e2e545/); arbitrum `0x10981f...24d19f`; arbitrum `0x1a31f4...9c4699`; arbitrum `0x65cad9...bcce56`; arbitrum `0x8ccd99...1c3175`; arbitrum `0xec8de4...b89f59` | ✅ Audited |
| StakingThales | unknown | base | unit-21971 | [`0x84ab38...35e040`](./contracts/base-8453/0x84ab38e42d8da33b480762cca543eeca6135e040/) | ✅ Audited |

### ⚠️ Verified + Unaudited (64)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Pool | core_logic | optimism | n/a | 2 deployments: optimism [`0x1eaa86...877681`](./contracts/optimism-10/0x1eaa860dca29a5124f665f7d80affed92e877681/); base `0xb452f8...7afb4c` | ⚠️ Unaudited |
| OverToken | token | ethereum | n/a | [`0x90ce57...ad1722`](./contracts/ethereum-1/0x90ce5720c17587d28e4af120ae2d313b3bad1722/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | unit-22091 | [`0xe85b66...53bf30`](./contracts/arbitrum-42161/0xe85b662fe97e8562f4099d8a1d5a92d4b453bf30/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | optimism | n/a | 5 deployments: optimism [`0x3f60fc...c3f2ad`](./contracts/optimism-10/0x3f60fca6c50ae3bcd95ae150b4c57f0ba5c3f2ad/); base `0x41a6e4...8dfd5f`; arbitrum `0x4d4904...369424`; arbitrum `0xf94997...ca4555`; arbitrum `0xfc90c3...274869` | ⚠️ Unaudited |
| AmmVault | core_logic | optimism | unit-21821 (3 proxies) | 3 deployments: optimism [`0x43318d...649c83`](./contracts/optimism-10/0x43318de9e8f65b591598f17add87ae7247649c83/); optimism `0x6c7fd4...bca29f`; optimism `0xb48402...196f93` | ⚠️ Unaudited |
| AmmVault | core_logic | arbitrum | unit-22004 (3 proxies) | 3 deployments: arbitrum [`0x008a4e...d53b46`](./contracts/arbitrum-42161/0x008a4e30a8b41781f5cb017b197aa9aa4cd53b46/); arbitrum `0x0a29cd...7d2683`; arbitrum `0x640c34...0519ea` | ⚠️ Unaudited |
| Baccarat | unknown | optimism | n/a | 15 deployments: optimism [`0x001074...b5857c`](./contracts/optimism-10/0x00107468836ac785df4ad58dc30d861387b5857c/); optimism `0x351c3f...6e614c`; optimism `0x4e3cc2...ca4079`; optimism `0x96c9cd...80d4b3`; optimism `0xb6a181...9ecac6`; optimism `0xd3ab6d...cad8c0`; optimism `0xdb45e7...1ac9f6`; base `0x5c4618...ef2a19`; base `0x5f3d22...cc38fa`; base `0x90c318...6bc14e`; base `0xb25866...cc593e`; arbitrum `0x21b2f9...a7a672`; arbitrum `0x66acac...4bf2a2`; arbitrum `0xb2af06...f88591`; arbitrum `0xe1afb2...1d13df` | ⚠️ Unaudited |
| Blackjack | unknown | base | n/a | 26 deployments: optimism `0x0dc965...0c3268`; optimism `0x3e23bd...95d4a8`; optimism `0x8558e3...f200bc`; optimism `0xa49988...1a88d1`; optimism `0xc38cc9...8c27cb`; optimism `0xc3902b...bd7147`; optimism `0xccf88a...7b3b88`; optimism `0xd9e989...418129`; optimism `0xde858b...c72dcf`; optimism `0xe7fea4...975aa0`; base [`0x0d7d68...1b77e0`](./contracts/base-8453/0x0d7d6800a0192bb18276586c0b8819c75d1b77e0/); base `0x490713...dcf2aa`; base `0x5de6ac...4bf601`; base `0x6755d8...a0ff1a`; base `0x7db8e3...2b69e9`; base `0xcc6773...6bfc70`; base `0xce7e22...0d5a45`; base `0xd8f640...d1df8c`; arbitrum `0x4c16fe...1ed7b7`; arbitrum `0x5fa8cb...92d402`; arbitrum `0xa5232a...d31f60`; arbitrum `0xab6e3e...102984`; arbitrum `0xaeb2b8...bbbd7d`; arbitrum `0xcaa229...8f7777`; arbitrum `0xe8ff16...777c3c`; arbitrum `0xfc69c1...37f829` | ⚠️ Unaudited |
| CashoutProcessor | unknown | optimism | n/a | 3 deployments: optimism [`0x675001...d1e6a3`](./contracts/optimism-10/0x675001ac03289f0cea2c0fdd2e5ca8dc4ad1e6a3/); base `0x976388...400ec3`; arbitrum `0x843479...c8ceca` | ⚠️ Unaudited |
| ChainedSpeedMarketMastercopy | unknown | base | n/a | 7 deployments: optimism `0x437f9f...32bb3f`; optimism `0xa496d9...138e9a`; polygon `0x92a131...4c9dfe`; base [`0x2f4d22...922d9c`](./contracts/base-8453/0x2f4d2293aaf52fbb98fd961d26db4d65c9922d9c/); base `0xda0844...bf031f`; arbitrum `0x451557...0faa32`; arbitrum `0xecb403...9579e5` | ⚠️ Unaudited |
| ChainedSpeedMarketsAMM | unknown | arbitrum | n/a | 9 deployments: optimism `0xc09dae...7be5cc`; base `0x5e994a...0f4b4c`; base `0x95606b...ebbed6`; base `0xe7f346...36f596`; arbitrum [`0x1f2e2b...2aeeb9`](./contracts/arbitrum-42161/0x1f2e2b1223fef0386682c7d7a43fd56b8e2aeeb9/); arbitrum `0x274ddf...54de13`; arbitrum `0x5ddb9b...283e85`; arbitrum `0x8568e4...1d6f86`; arbitrum `0xa3821c...d6be1f` | ⚠️ Unaudited |
| Dice | unknown | base | n/a | 14 deployments: optimism `0x602c46...e61df4`; optimism `0x71c144...8f7522`; optimism `0x80f89d...c8f927`; optimism `0x98bea9...632fe2`; optimism `0xc35b11...54c0b7`; optimism `0xecc65b...1ee62c`; base [`0x1cc7b9...0ca83c`](./contracts/base-8453/0x1cc7b928ef65a1025b92e0139c3e9551420ca83c/); base `0xa9a1f5...8a1ef8`; base `0xb0f1eb...d2f1b7`; base `0xdf2efa...fbd381`; arbitrum `0x8d18e6...16a54b`; arbitrum `0x90a9c1...7ec3d3`; arbitrum `0x976388...400ec3`; arbitrum `0xa2336a...bdcbfe` | ⚠️ Unaudited |
| FactoryBurnMintERC20 | registry | arbitrum | n/a | 3 deployments: optimism `0xedf386...e1c63e`; base `0x7750c0...2e82a2`; arbitrum [`0x5829d6...20b51a`](./contracts/arbitrum-42161/0x5829d6fe7528bc8e92c4e81cc8f20a528820b51a/) | ⚠️ Unaudited |
| FreeBetsHolder | unknown | arbitrum | n/a | 21 deployments: optimism `0x0a713b...70e823`; optimism `0x33b5b4...914f3d`; optimism `0x44a484...ced0ee`; optimism `0x4b9bef...339b4c`; optimism `0x9a2aab...0d1ec0`; optimism `0xd1040d...a8ca7f`; optimism `0xdb6ba1...6a9221`; base `0x12e6c6...8f5961`; base `0x330d86...8c1971`; base `0x362cd5...77c54d`; base `0x775858...9260a4`; base `0x82875d...68e25b`; base `0x9ce94c...891dd9`; base `0xfd314a...2ef2af`; arbitrum [`0x006333...fc19e6`](./contracts/arbitrum-42161/0x006333f72667e374655ef07e503d44ce8bfc19e6/); arbitrum `0x06eb8b...035992`; arbitrum `0x370ca4...c2a5e5`; arbitrum `0x9eec57...931bf0`; arbitrum `0xb6bcf2...47a10e`; arbitrum `0xde20d9...3b1263`; arbitrum `0xe12892...f7eb40` | ⚠️ Unaudited |
| LiveTradingProcessorData | unknown | base | n/a | 6 deployments: optimism `0x654789...027d08`; optimism `0xe5b031...662cfe`; base [`0x3fe7aa...2b1f85`](./contracts/base-8453/0x3fe7aa549c4df05ed179f87098a7d7635e2b1f85/); base `0x937f15...0b3452`; arbitrum `0x73f8c7...2dd30e`; arbitrum `0xfb1f8c...071c18` | ⚠️ Unaudited |
| MarchMadnessV2 | unknown | optimism | n/a | 3 deployments: optimism [`0x30b887...f404df`](./contracts/optimism-10/0x30b887a0ef84c65624518ca749fe0fbbaaf404df/); base `0x94a00a...2da207`; arbitrum `0x94dbb1...b02c07` | ⚠️ Unaudited |
| OpThales | unknown | optimism | n/a | [`0x217d47...a5bb11`](./contracts/optimism-10/0x217d47011b23bb961eb6d93ca9945b7501a5bb11/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0xf34e0c...d8c249`](./contracts/base-8453/0xf34e0cff046e154cafcae502c7541b9e5fd8c249/) | ⚠️ Unaudited |
| OvertimePaymentToken | token | optimism | n/a | 2 deployments: optimism [`0x924236...fd019f`](./contracts/optimism-10/0x924236bf55274fa265dea0fcf80ca694c9fd019f/); arbitrum `0xd11f8c...9010c1` | ⚠️ Unaudited |
| OvertimeVoucherEscrow | operational_periphery | arbitrum | unit-22083 | [`0xbd39d4...2bc799`](./contracts/arbitrum-42161/0xbd39d496eeba3842521e8886a04312795c2bc799/) | ⚠️ Unaudited |
| OvertimeWorldCupZebro | unknown | optimism | n/a | [`0x0a47d5...ab9b7d`](./contracts/optimism-10/0x0a47d5f27149270d45d74abd45fa30e567ab9b7d/) | ⚠️ Unaudited |
| ParlayAMMLiquidityPool | core_logic | optimism | unit-21809 | [`0x2dc1fe...61937f`](./contracts/optimism-10/0x2dc1fe64afa2281ff38df998be029e94c561937f/) | ⚠️ Unaudited |
| ParlayAMMLiquidityPool | core_logic | base | unit-21953 | [`0x46005f...56d060`](./contracts/base-8453/0x46005f3c5a6bd95df00cfa53988c79a17e56d060/) | ⚠️ Unaudited |
| ParlayAMMLiquidityPool | core_logic | arbitrum | unit-22052 | [`0x6848f7...63f0be`](./contracts/arbitrum-42161/0x6848f7c1b5aa2da86f6529bed9d641a67663f0be/) | ⚠️ Unaudited |
| PositionalMarketManager | governance | optimism | unit-21858 | [`0x7f9e03...c11dba`](./contracts/optimism-10/0x7f9e03e40d8b95419c7bdf30d256d08f2ec11dba/) | ⚠️ Unaudited |
| PythRandomnessProbe | unknown | arbitrum | n/a | 3 deployments: optimism `0x4b4062...fa58b7`; base `0xc551b6...119180`; arbitrum [`0x158bb6...65f859`](./contracts/arbitrum-42161/0x158bb6816e190e8f19635a00084dc1b38b65f859/) | ⚠️ Unaudited |
| ResolveBlocker | unknown | optimism | n/a | [`0xc9582c...7a4b11`](./contracts/optimism-10/0xc9582c4bbba87b51beca3892108fc2f3d77a4b11/) | ⚠️ Unaudited |
| Roulette | unknown | optimism | n/a | 13 deployments: optimism [`0x02984f...3c5442`](./contracts/optimism-10/0x02984f096bfc6c2f95a37c8273025ba2933c5442/); optimism `0x428841...32ccc3`; optimism `0x9b26c7...3d7834`; optimism `0xca97ef...0cfa0a`; optimism `0xd675a7...a8af12`; optimism `0xe6bede...0a1ef3`; optimism `0xfe6636...8d2304`; base `0x0e090e...52076e`; base `0x452861...dc62d4`; base `0xcd51da...912dae`; arbitrum `0x4f9b91...55143b`; arbitrum `0x537999...535e3f`; arbitrum `0xa352f0...f9b307` | ⚠️ Unaudited |
| SafeBoxBuyback | unknown | optimism | unit-21845 | [`0x679c01...7c59e7`](./contracts/optimism-10/0x679c0174f6c288c4bcd5c95c9ec99d50357c59e7/) | ⚠️ Unaudited |
| SGPTradingProcessor | unknown | optimism | n/a | 6 deployments: optimism [`0x27a440...aa1666`](./contracts/optimism-10/0x27a4403ba34d5fb8da30bcba455837fbf9aa1666/); optimism `0xfaea61...c56a5c`; base `0xb908ed...d19d47`; base `0xc26595...73012f`; arbitrum `0xcc2e7b...b505f2`; arbitrum `0xdf079f...44feed` | ⚠️ Unaudited |
| Slots | unknown | base | n/a | 14 deployments: optimism `0x2e2ee4...02a14a`; optimism `0x62188a...8072d2`; optimism `0xbce1e7...2ba535`; optimism `0xbe1428...d9cec9`; optimism `0xeea09f...f94c8a`; optimism `0xf4fb2b...75d84f`; base [`0x0d0769...1a8d00`](./contracts/base-8453/0x0d076953777af2cd85a5f09392301e4ccc1a8d00/); base `0x9feb50...969590`; base `0xbee264...35d87f`; base `0xea5e86...e82ed8`; arbitrum `0x29e1b2...d37869`; arbitrum `0xa4f4c5...e4e924`; arbitrum `0xd7f2ad...f27750`; arbitrum `0xfa904d...a37cfb` | ⚠️ Unaudited |
| SpeedMarketMastercopy | unknown | optimism | n/a | 7 deployments: optimism [`0x0714f0...cc7358`](./contracts/optimism-10/0x0714f0cf4f94f3713732e49a843178fc2acc7358/); optimism `0x67b355...20124b`; polygon `0x4e536b...a9b733`; base `0x0a2d63...3f4902`; base `0x8bb690...b73252`; arbitrum `0x6d0e04...9f76f6`; arbitrum `0xc241c3...ca482a` | ⚠️ Unaudited |
| SpeedMarketsAMM | unknown | arbitrum | n/a | 8 deployments: optimism `0xaff935...70985a`; base `0x0caeac...6c7c79`; base `0x47da40...246124`; base `0x5868a8...2e7980`; arbitrum [`0x02950e...1d7a06`](./contracts/arbitrum-42161/0x02950ed910b447a0b849cd58edcc121d051d7a06/); arbitrum `0x659b8e...303d82`; arbitrum `0x99cbaf...3b9335`; arbitrum `0xb52a6c...c640c5` | ⚠️ Unaudited |
| SpeedMarketsAMMCreator | unknown | optimism | n/a | 9 deployments: optimism [`0x04c59a...7df04a`](./contracts/optimism-10/0x04c59ad182a27c42facf0cca3fafc2467b7df04a/); optimism `0x2a64b4...cf0aab`; polygon `0x897d18...6ff3c2`; base `0xb79bb0...a8d88b`; base `0xe368aa...cb7690`; arbitrum `0x14de9f...b50318`; arbitrum `0x4385f3...e7ee45`; arbitrum `0x524ebb...8fa39b`; arbitrum `0x857ada...9cc026` | ⚠️ Unaudited |
| SpeedMarketsAMMCreator | unknown | polygon | unit-21927 | [`0xfc7105...060c3b`](./contracts/polygon-137/0xfc7105da51017f2d990b9fe68db343ae38060c3b/) | ⚠️ Unaudited |
| SpeedMarketsAMMData | unknown | polygon | n/a | 13 deployments: optimism `0x328a69...0e0636`; optimism `0x4b7e18...25dd5b`; optimism `0x93c740...c61f66`; optimism `0xd54fe4...463568`; polygon [`0x0efc3a...f43ca1`](./contracts/polygon-137/0x0efc3aa6eef2b98628ff35f95cb443cbdef43ca1/); base `0x59afa6...fd5521`; base `0x95e8c8...e11a14`; base `0xab9c01...e5d912`; base `0xeb442f...40fb5d`; arbitrum `0x2519d1...3ccbf5`; arbitrum `0x396716...3e12e6`; arbitrum `0x80831d...2469d4`; arbitrum `0x9fb86c...1402db` | ⚠️ Unaudited |
| SpeedMarketsAMMResolver | unknown | optimism | n/a | 11 deployments: optimism [`0x689fbe...5af049`](./contracts/optimism-10/0x689fbe4f1abade46846cc01da2da9488c85af049/); optimism `0x9e7403...e89619`; optimism `0xd1bf51...8d0748`; optimism `0xe9be4f...6ce022`; polygon `0x9d5b59...f6a9f8`; polygon `0xf2d808...557e75`; base `0xb9168a...166c56`; base `0xf8352c...ed4139`; arbitrum `0xb5f8a3...44f09c`; arbitrum `0xd6a01d...2152b6`; arbitrum `0xde5e97...33f820` | ⚠️ Unaudited |
| SpeedMarketsAMMUtils | unknown | optimism | unit-21868 (2 proxies) | 2 deployments: optimism [`0x932de9...b6b965`](./contracts/optimism-10/0x932de91bf3fc1c316ba1a2e0136beb9d4fb6b965/); optimism `0xe59939...10a90d` | ⚠️ Unaudited |
| SpeedMarketsAMMUtils | unknown | arbitrum | n/a | [`0x3fd79b...8c21a4`](./contracts/arbitrum-42161/0x3fd79b622996cdf16a2f2ee5ca0e7aad648c21a4/) | ⚠️ Unaudited |
| SportAMMLiquidityPool | core_logic | optimism | unit-21863 | [`0x842e89...e0eba5`](./contracts/optimism-10/0x842e89b7a7ef8ce099540b3613264c933ce0eba5/) | ⚠️ Unaudited |
| SportAMMLiquidityPool | core_logic | base | unit-21929 | [`0x0b82e4...80fd10`](./contracts/base-8453/0x0b82e4db2971829bb13db8bf87118c065480fd10/) | ⚠️ Unaudited |
| SportAMMLiquidityPool | core_logic | arbitrum | unit-22062 | [`0x8e9018...22b874`](./contracts/arbitrum-42161/0x8e9018b48456202aa9bb3e485192b8475822b874/) | ⚠️ Unaudited |
| SportPositionalMarketManager | governance | optimism | unit-21918 | [`0xfbffeb...f5771e`](./contracts/optimism-10/0xfbffebfa2bf2cf84fdcf77917b358fc59ff5771e/) | ⚠️ Unaudited |
| SportPositionalMarketManager | governance | base | unit-21986 | [`0xb0ee5c...87e089`](./contracts/base-8453/0xb0ee5c967f209f24f7ef30c2c6da38346a87e089/) | ⚠️ Unaudited |
| SportPositionalMarketManager | governance | arbitrum | unit-22053 | [`0x72ca07...214610`](./contracts/arbitrum-42161/0x72ca0765d4be0529377d656c9645600606214610/) | ⚠️ Unaudited |
| SportsAMMV2Data | unknown | arbitrum | n/a | 6 deployments: optimism `0x5fcaf8...98093d`; optimism `0x7981ba...e4280a`; base `0xb2af06...f88591`; base `0xed59dc...2e856b`; arbitrum [`0x019208...47bc0a`](./contracts/arbitrum-42161/0x019208c0fe108da2682dd0611004d31aed47bc0a/); arbitrum `0x0932ee...d9746d` | ⚠️ Unaudited |
| SportsAMMV2DataUtils | unknown | arbitrum | n/a | 4 deployments: optimism `0xfc3b52...e096f7`; base `0xd71841...1d3cb6`; base `0xe4908e...9dcdfd`; arbitrum [`0xa5f7ac...3e0a31`](./contracts/arbitrum-42161/0xa5f7ac88605ee2556407a9ec36759acf2c3e0a31/) | ⚠️ Unaudited |
| SportsAMMV2LiquidityPool | core_logic | optimism | unit-21790 (3 proxies) | 3 deployments: optimism [`0x0fe104...9b8698`](./contracts/optimism-10/0x0fe1044fc8c05482102db14368fe88791e9b8698/); optimism `0x4f2822...61231e`; optimism `0x59a7a8...647226` | ⚠️ Unaudited |
| SportsAMMV2LiquidityPool | core_logic | arbitrum | n/a | 6 deployments: optimism `0x68eeba...0cc11a`; optimism `0xadf2c6...bf36c5`; optimism `0xbd3f8a...8f8d0a`; base `0x1424ef...f3b0ea`; base `0x8f6726...340c5f`; arbitrum [`0x09fdeb...1dcb59`](./contracts/arbitrum-42161/0x09fdebec9547b0e849f325ef875ddf78341dcb59/) | ⚠️ Unaudited |
| SportsAMMV2LiquidityPool | core_logic | arbitrum | unit-22025 (4 proxies) | 4 deployments: arbitrum [`0x22d180...383b6a`](./contracts/arbitrum-42161/0x22d180f39a0eb66098cf839af5e3c6b009383b6a/); arbitrum `0xbd08d8...b60d2a`; arbitrum `0xc5f518...391ce2`; arbitrum `0xcb4728...4856ba` | ⚠️ Unaudited |
| SportsAMMV2Manager | governance | base | n/a | 2 deployments: base [`0x4d53ea...ca0a72`](./contracts/base-8453/0x4d53ea5bbefd11a1a48a8eca7d596cb6dfca0a72/); base `0x88b851...fc10fa` | ⚠️ Unaudited |
| SportsAMMV2RiskManager | governance | optimism | n/a | 15 deployments: optimism [`0x0ed59a...905778`](./contracts/optimism-10/0x0ed59ac63a7fad0e87fb2dbd17a2e15f36905778/); optimism `0x2234ab...d01fc6`; optimism `0x2980af...fb06d8`; optimism `0xa62414...739d4a`; optimism `0xf9581c...f2a5a2`; base `0x1012df...224a26`; base `0x211809...f5200f`; base `0x2c18ac...5eb3fa`; base `0x537999...535e3f`; base `0xe58ba5...103949`; arbitrum `0x2e0881...9bf3ab`; arbitrum `0x55a2a3...c581d0`; arbitrum `0x58f359...bba017`; arbitrum `0xc51bbd...ca0088`; arbitrum `0xd0ce45...03c6eb` | ⚠️ Unaudited |
| SportsAMMV2RiskManager | governance | optimism | unit-21814 | [`0x32077d...eca9a5`](./contracts/optimism-10/0x32077d9f7bf3994f3a0e905b3eeff34410eca9a5/) | ⚠️ Unaudited |
| SportsAMMV2RiskManager | governance | arbitrum | unit-22018 | [`0x10764f...994ede`](./contracts/arbitrum-42161/0x10764f2787841e928e53e5be1588a73e3c994ede/) | ⚠️ Unaudited |
| SportsAMMV2Utils | unknown | arbitrum | n/a | 9 deployments: optimism `0x4e16de...d4494f`; optimism `0x8cb671...8486f4`; optimism `0x999ee7...bda2e8`; base `0x5811ed...87160e`; base `0x954926...c75871`; base `0xe7017e...8ff11c`; arbitrum [`0x38a952...b43d0e`](./contracts/arbitrum-42161/0x38a95206b7dc9e16dd639ccbb51ecac6c2b43d0e/); arbitrum `0xb908ed...d19d47`; arbitrum `0xe1c1e5...738c8e` | ⚠️ Unaudited |
| SportVault | core_logic | optimism | unit-21822 (4 proxies) | 4 deployments: optimism [`0x43d198...16d98e`](./contracts/optimism-10/0x43d19841d818b2ccc63a8b44ce8c7def8616d98e/); optimism `0x5e2b49...632d3f`; optimism `0xbaac54...65fd5f`; optimism `0xc922f4...f6cecd` | ⚠️ Unaudited |
| SportVault | core_logic | arbitrum | unit-22032 (4 proxies) | 4 deployments: arbitrum [`0x31c294...2eb711`](./contracts/arbitrum-42161/0x31c2947c86412a5e33794105aa034dd9312eb711/); arbitrum `0xa852a6...d4b77d`; arbitrum `0xe26374...3b87e6`; arbitrum `0xff7aea...f1e3ad` | ⚠️ Unaudited |
| TaleOfThalesNFTs | token | optimism | n/a | [`0xa9218c...be7021`](./contracts/optimism-10/0xa9218c6d51b87eb3ee74e14cb5d50bde00be7021/) | ⚠️ Unaudited |
| ThalesAMMLiquidityPool | core_logic | optimism | unit-21885 | [`0xc10a0a...85ea40`](./contracts/optimism-10/0xc10a0a6ff6496e0bd896f9f6da5a7b640b85ea40/) | ⚠️ Unaudited |
| ThalesAMMLiquidityPool | core_logic | base | unit-21956 | [`0x5713ab...6f9e3b`](./contracts/base-8453/0x5713ab44042d92c642444bd2f0fee9c2336f9e3b/) | ⚠️ Unaudited |
| ThalesAMMLiquidityPool | core_logic | arbitrum | unit-22094 | [`0xea4c23...544735`](./contracts/arbitrum-42161/0xea4c2343fd3c239c23dd37dd3ee51aec84544735/) | ⚠️ Unaudited |
| ThalesRoyalePass | unknown | optimism | n/a | [`0x2f71f4...6c7e29`](./contracts/optimism-10/0x2f71f4a2d8bab9703fff3ff5794762bf5b6c7e29/) | ⚠️ Unaudited |
| TicketMastercopy | unknown | optimism | n/a | 14 deployments: optimism [`0x24cc55...bf720e`](./contracts/optimism-10/0x24cc55fa09d4d27fd724fa931bf0722003bf720e/); optimism `0x5b2f8e...f1df7a`; optimism `0x7920f0...db4891`; optimism `0xdc9aa2...5e8802`; base `0x59cbe6...569c6b`; base `0x73b8e0...2df54b`; base `0x90a9c1...7ec3d3`; base `0x95626b...73deb8`; base `0xc3c570...ac6ce4`; base `0xf1baf6...da41fc`; arbitrum `0x3b1d1a...68aab6`; arbitrum `0x4e70bc...638822`; arbitrum `0x723700...d22c59`; arbitrum `0xe0253d...caf39e` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | optimism | n/a | [`0x2ee4db...439038`](./contracts/optimism-10/0x2ee4db658906e04a10874dd8f11bfd32e4439038/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0x11e1d5...d9ed87` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3f9bc3...7162c0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9b216a...b718bb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfe43ff...65283e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xff7045...170827` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe9d885...609938` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://iosiro.com/audits/thales-airdrop-and-staking-smart-contract-audit) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 1 | high |
| [thales-market-speedmarkets-audit-report-1.1.pdf](https://github.com/decurity/audits/blob/master/ThalesMarket/thales-market-speedmarkets-audit-report-1.1.pdf) | Decurity | Audit | 2023-08 | stale | Direct | contract_name | 0 | n/a |
| [thales-market-liquidity-pool-audit-report-1.1.pdf](https://github.com/Decurity/audits/blob/master/ThalesMarket/thales-market-liquidity-pool-audit-report-1.1.pdf) | Decurity | Audit | 2023-04 | stale | Direct | contract_name | 0 | n/a |
| [DL audit link](https://iosiro.com/audits/thales-parlay-market-amm-smart-contract-audit) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 2 | high |
| [DL audit link](https://iosiro.com/audits/thales-amm-smart-contract-audit) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 0 | n/a |
| [DL audit link](https://skynet.certik.com/projects/thales) | CertiK | Audit | 2021-12 | stale | Direct | contract_name | 0 | n/a |
| [DL audit link](https://iosiro.com/audits/thales-binary-option-market-smart-contract-audit) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 0 | n/a |
| [DL audit link](https://iosiro.com/audits/staked-thales-betting-proxy-smart-contract-audit) | unknown | Audit | 2024-09 | aging | Direct | contract_name | 36 | high |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1R6uGdvID7yC9DDzk9NHFqmvo-dYr6et6/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1FQX4ew192V3tIST0r4E3OxhXmoZhNZbs/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [* [Contracts and Audits of Biconomy MEE Contracts Suite]()](https://docs.biconomy.io/contracts-and-audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x1eaa86...877681`](./contracts/optimism-10/0x1eaa860dca29a5124f665f7d80affed92e877681/) | Pool | core_logic | $34,756,313.30 | Verified native implementation with $34,756,313.30 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90ce57...ad1722`](./contracts/ethereum-1/0x90ce5720c17587d28e4af120ae2d313b3bad1722/) | OverToken | token | $7,582,814.91 | Verified native implementation with $7,582,814.91 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe85b66...53bf30`](./contracts/arbitrum-42161/0xe85b662fe97e8562f4099d8a1d5a92d4b453bf30/) | StandardArbERC20 | token | $136,356.73 | Verified native implementation with $136,356.73 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x001074...b5857c`](./contracts/optimism-10/0x00107468836ac785df4ad58dc30d861387b5857c/) | Baccarat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x675001...d1e6a3`](./contracts/optimism-10/0x675001ac03289f0cea2c0fdd2e5ca8dc4ad1e6a3/) | CashoutProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5829d6...20b51a`](./contracts/arbitrum-42161/0x5829d6fe7528bc8e92c4e81cc8f20a528820b51a/) | FactoryBurnMintERC20 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x30b887...f404df`](./contracts/optimism-10/0x30b887a0ef84c65624518ca749fe0fbbaaf404df/) | MarchMadnessV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x217d47...a5bb11`](./contracts/optimism-10/0x217d47011b23bb961eb6d93ca9945b7501a5bb11/) | OpThales | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x924236...fd019f`](./contracts/optimism-10/0x924236bf55274fa265dea0fcf80ca694c9fd019f/) | OvertimePaymentToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0a47d5...ab9b7d`](./contracts/optimism-10/0x0a47d5f27149270d45d74abd45fa30e567ab9b7d/) | OvertimeWorldCupZebro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc9582c...7a4b11`](./contracts/optimism-10/0xc9582c4bbba87b51beca3892108fc2f3d77a4b11/) | ResolveBlocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x02984f...3c5442`](./contracts/optimism-10/0x02984f096bfc6c2f95a37c8273025ba2933c5442/) | Roulette | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x27a440...aa1666`](./contracts/optimism-10/0x27a4403ba34d5fb8da30bcba455837fbf9aa1666/) | SGPTradingProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0714f0...cc7358`](./contracts/optimism-10/0x0714f0cf4f94f3713732e49a843178fc2acc7358/) | SpeedMarketMastercopy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x04c59a...7df04a`](./contracts/optimism-10/0x04c59ad182a27c42facf0cca3fafc2467b7df04a/) | SpeedMarketsAMMCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x689fbe...5af049`](./contracts/optimism-10/0x689fbe4f1abade46846cc01da2da9488c85af049/) | SpeedMarketsAMMResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0ed59a...905778`](./contracts/optimism-10/0x0ed59ac63a7fad0e87fb2dbd17a2e15f36905778/) | SportsAMMV2RiskManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa9218c...be7021`](./contracts/optimism-10/0xa9218c6d51b87eb3ee74e14cb5d50bde00be7021/) | TaleOfThalesNFTs | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2f71f4...6c7e29`](./contracts/optimism-10/0x2f71f4a2d8bab9703fff3ff5794762bf5b6c7e29/) | ThalesRoyalePass | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x24cc55...bf720e`](./contracts/optimism-10/0x24cc55fa09d4d27fd724fa931bf0722003bf720e/) | TicketMastercopy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 47 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=394

Zero-match audit list:

- [11642] thales-market-speedmarkets-audit-report-1.1.pdf
- [11643] thales-market-liquidity-pool-audit-report-1.1.pdf
- [11645] DL audit link
- [11646] DL audit link
- [11647] DL audit link
- [14192] {% embed url="<>" %}
- [14193] {% embed url="<>" %}
- [14194] * [Contracts and Audits of Biconomy MEE Contracts Suite]()

Fork inheritance lineage and inherited audits are included when available.
