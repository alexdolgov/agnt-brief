# Agentic Audit Brief: Gyroscope Protocol

⚠️ Lifecycle status: DECLINING - TVL dropped 72.3% over 90 days

## Project Overview

- Project: Gyroscope Protocol (`gyroscope-protocol`)
- Website: [https://app.gyro.finance/](https://app.gyro.finance/)
- Lifecycle: declining (Tier 0, 99.1% below peak)
- Generated: 2026-06-17T07:00:58.275Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, ethereum, gnosis, optimism, polygon, polygon-zkevm, sei, sonic
- Contract surface: 100 unique implementations (177 raw deployments)
- DeFi Llama TVL: $406,905.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Gyroscope Protocol is a decentralized exchange (DEX) and stablecoin infrastructure project. It provides automated market maker (AMM) pools with concentrated liquidity (ECLP, 2CLP, 3CLP) and a stablecoin (GYD) backed by diversified reserves, governed by a system of vaults, oracles, and config contracts.

### Architecture

All contracts are part of a single integrated protocol. Pool factories create AMM pools that interact with the Balancer vault; the GYD stablecoin is minted via vaults and reserves, governed by GyroConfig and GovernanceProxy, with routers facilitating user interactions. Proxies are used extensively for upgradeability and access control.

## Contract Surface Quality

- Indexed contracts: 503; live-surface contracts included: 177 (79 live, 98 unknown).
- Excluded by liveness: 235 inactive, 91 singleton, 0 uninitialized.
- Deployment units: 3/51 live.
- Detected codebases: balancer-v2, uniswap-v3
- Unverified dependencies: 15/83.

## Audit Coverage Summary

- Verified implementations audited: 8/85 (9.4%)
- Verified + Unaudited implementations: 77
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 100
- Raw deployments: 177
- Audits discovered: 10
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Staleness: 0 fresh, 3 aging, 7 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Nethermind | Tier 2 | 8 | 9.4% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CheckedPriceOracle | operational_periphery | polygon | n/a | 5 deployments: polygon [`0x64f84a...c75fc3`](./contracts/polygon-137/0x64f84aac92320bba0bfa7af76a2da1d89ec75fc3/); polygon `0x70772f...20fcab`; polygon `0x8e9a7c...d5cf49`; polygon `0xba116c...1455c7`; polygon `0xfd83a2...377dcc` | ✅ Audited |
| GovernanceRoleManager | governance | sei | n/a | [`0x78898a...b3a4b9`](./contracts/sei-1329/0x78898a5cdf6d1eb009277c744cb2241eacb3a4b9/) | ✅ Audited |
| GyroConfig | governance | polygon | n/a | [`0xf5d544...45f18c`](./contracts/polygon-137/0xf5d5441384283e1accc58c9f4d5e058d2845f18c/) | ✅ Audited |
| GyroConfig | governance | polygon | unit-32452 | [`0xfdc2e9...3fbe67`](./contracts/polygon-137/0xfdc2e9e03f515804744a40d0f8d25c16e93fbe67/) | ✅ Audited |
| GyroThreePoolFactory | registry | polygon | n/a | [`0xe59910...36d981`](./contracts/polygon-137/0xe59910c7725e15c28ba48bbbb995e7396536d981/) | ✅ Audited |
| GyroTwoPoolFactory | registry | polygon | n/a | [`0x333fad...3ed028`](./contracts/polygon-137/0x333fadaf093cccc04d83ac19f1b6a6f2443ed028/) | ✅ Audited |
| TrustedSignerPriceOracle | operational_periphery | polygon | n/a | [`0x611a66...a5ece4`](./contracts/polygon-137/0x611a66667327db64f44144766c9198ec52a5ece4/) | ✅ Audited |
| UpdatableRateProviderBalV2 | unknown | sonic | n/a | 10 deployments: optimism `0x32f6fc...c41041`; sonic [`0x13024f...50a05d`](./contracts/sonic-146/0x13024ff3879ce1d3a827958ab1e5fdf29250a05d/); sonic `0x20a7e5...04bc89`; sonic `0x218cb3...a7bd9f`; sonic `0x4881ef...99ec83`; sonic `0x5b5c4b...1f2048`; sonic `0xb7b5d2...f5f144`; sei `0x27ce6a...8d7bb0`; base `0x2a803c...fd4025`; base `0x42d9b3...4aadc0` | ✅ Audited |

### ⚠️ Verified + Unaudited (77)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdaptiveRateProvider | unknown | sonic | n/a | [`0xc23542...fade44`](./contracts/sonic-146/0xc23542cd402fe4f7c7539fc0929b010992fade44/) | ⚠️ Unaudited |
| Authorizer | unknown | base | n/a | [`0x809b79...93213a`](./contracts/base-8453/0x809b79b53f18e9bc08a961ed4678b901ac93213a/) | ⚠️ Unaudited |
| AuthorizerAdaptor | unknown | base | n/a | [`0x6cad2e...509bc7`](./contracts/base-8453/0x6cad2ea22bfa7f4c14aae92e47f510cd5c509bc7/) | ⚠️ Unaudited |
| AuthorizerAdaptorEntrypoint | unknown | base | n/a | [`0x9129e8...86b8dc`](./contracts/base-8453/0x9129e834e15ea19b6069e8f08a8ecfc13686b8dc/) | ⚠️ Unaudited |
| AuthorizerWithAdaptorValidation | unknown | base | n/a | [`0xa69e0c...7e8eee`](./contracts/base-8453/0xa69e0ccf150a29369d8bbc0b3f510849db7e8eee/) | ⚠️ Unaudited |
| BatchRelayerLibrary | periphery | base | n/a | 3 deployments: base [`0x82416c...a382c4`](./contracts/base-8453/0x82416ce6ea7dd4923d4a3ed70a79b4a432a382c4/); base `0xaf779e...c80632`; base `0xdf9b5b...3be025` | ⚠️ Unaudited |
| BatchRouter | adapter | optimism | n/a | [`0xad8905...f8a85e`](./contracts/optimism-10/0xad89051bed8d96f045e8912ae1672c6c0bf8a85e/) | ⚠️ Unaudited |
| BatchRouter | adapter | sonic | unit-32457 | [`0x776165...968daf`](./contracts/sonic-146/0x7761659f9e9834ad367e4d25e0306ba7a4968daf/) | ⚠️ Unaudited |
| Beets | unknown | sonic | n/a | [`0x2d0e08...66e4f0`](./contracts/sonic-146/0x2d0e0814e62d80056181f5cd932274405966e4f0/) | ⚠️ Unaudited |
| BeetsOFTV2 | unknown | sonic | n/a | [`0x1e5fe9...626795`](./contracts/sonic-146/0x1e5fe95fb90ac0530f581c617272cd0864626795/) | ⚠️ Unaudited |
| BufferRouter | adapter | sonic | n/a | [`0x532da9...3a721b`](./contracts/sonic-146/0x532da919d3eb5606b5867a6f505969c57f3a721b/) | ⚠️ Unaudited |
| Child Liquidity Gauge | operational_periphery | base | n/a | 2 deployments: base [`0x59562f...c3324f`](./contracts/base-8453/0x59562f93c447656f6e4799fc1fc7c3d977c3324f/); base `0x9f7e65...b37013` | ⚠️ Unaudited |
| ChildChainGaugeFactory | operational_periphery | base | n/a | 4 deployments: optimism `0xa523f4...4612dc`; sonic `0xe6338d...33bd7c`; base [`0x2498a2...29ba95`](./contracts/base-8453/0x2498a2b0d6462d2260eac50ae1c3e03f4829ba95/); base `0xb1a4fe...d9021f` | ⚠️ Unaudited |
| CircuitBreakerLib | unknown | base | n/a | [`0xef454a...865425`](./contracts/base-8453/0xef454a7b3f965d3f6723e462405246f8cd865425/) | ⚠️ Unaudited |
| ClaimSignatureRegistry | registry | optimism | n/a | 3 deployments: optimism [`0x56c8d8...864aeb`](./contracts/optimism-10/0x56c8d8f7f926e0fb04a2cf05f18b44b2c5864aeb/); optimism `0xc86ef8...be6100`; optimism `0xea6920...b8a687` | ⚠️ Unaudited |
| ComposableStablePoolFactory | registry | base | n/a | [`0x8df317...579b88`](./contracts/base-8453/0x8df317a729fcaa260306d7de28888932cb579b88/) | ⚠️ Unaudited |
| CompositeLiquidityRouter | adapter | optimism | n/a | [`0xc9b360...d5988f`](./contracts/optimism-10/0xc9b36096f5201ea332db35d6d195774ea0d5988f/) | ⚠️ Unaudited |
| ConnectorArbBot | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x284265...2dc9d9`](./contracts/arbitrum-42161/0x284265d0b95bedbfc9acade0414ea1a1ba2dc9d9/); arbitrum `0xc6f195...2fc29c` | ⚠️ Unaudited |
| ConstantPriceFeed | operational_periphery | optimism | n/a | [`0x4eff2d...ff4cb5`](./contracts/optimism-10/0x4eff2d77d9ffbaefb4b141a3e494c085b3ff4cb5/) | ⚠️ Unaudited |
| ConstantRateProvider | unknown | arbitrum | n/a | 8 deployments: base `0x3e89cc...348313`; base `0x3fa516...b88f15`; base `0x587983...8eb5cc`; base `0x5e10c2...3a4748`; base `0xa42cc9...4e67ef`; arbitrum [`0x3a216b...67697f`](./contracts/arbitrum-42161/0x3a216b01db971bf28d171c9da44cc8c89867697f/); arbitrum `0x72f6da...fe2dd0`; arbitrum `0xdcd8db...c70832` | ⚠️ Unaudited |
| EclpLPOracleFactory | operational_periphery | optimism | n/a | [`0xc00ff7...e5426d`](./contracts/optimism-10/0xc00ff743b73346c9a4c40509e0550ffc18e5426d/) | ⚠️ Unaudited |
| ERC4626LinearPoolFactory | registry | base | n/a | [`0x161f40...028846`](./contracts/base-8453/0x161f4014c27773840ccb4ec1957113e6dd028846/) | ⚠️ Unaudited |
| ERC4626RateProviderFactory | registry | optimism | n/a | 6 deployments: ethereum `0xfc541f...c259ec`; optimism [`0x02a569...e75c33`](./contracts/optimism-10/0x02a569eea6f85736e2d63c59e60d27d075e75c33/); gnosis `0x15e86b...574cec`; sonic `0xc9a0e6...50e487`; base `0xefd3af...d7ff1a`; arbitrum `0xe548a2...915f31` | ⚠️ Unaudited |
| ExternalWeightedMath | unknown | base | n/a | [`0x7920bf...c50cfd`](./contracts/base-8453/0x7920bfa1b2041911b354747ca7a6cdd2dfc50cfd/) | ⚠️ Unaudited |
| FoundingFrog | unknown | ethereum | n/a | [`0x4e56f1...de07ec`](./contracts/ethereum-1/0x4e56f19235ff2a14c76332877a35d6af5bde07ec/) | ⚠️ Unaudited |
| FoundingMemberVault | core_logic | ethereum | n/a | [`0x7783b7...9d2754`](./contracts/ethereum-1/0x7783b7eb719aa2d27f01e10c0b0ee747ab9d2754/) | ⚠️ Unaudited |
| FreezableTransparentUpgradeableProxy | unknown | sei | n/a | [`0xb438ea...baf7fa`](./contracts/sei-1329/0xb438ea246cefa9241305ad62e5d307d014baf7fa/) | ⚠️ Unaudited |
| GaugeWorkingBalanceHelper | operational_periphery | base | n/a | [`0xa7d524...738d48`](./contracts/base-8453/0xa7d524046ef89de9f8e4f2d7b029f66ccb738d48/) | ⚠️ Unaudited |
| GearboxLinearPoolFactory | registry | base | n/a | [`0x9dd326...07bd62`](./contracts/base-8453/0x9dd32684176638d977883448a4c914311c07bd62/) | ⚠️ Unaudited |
| GydTokenPaused | token | ethereum | unit-32440 | [`0xe07f9d...491e8a`](./contracts/ethereum-1/0xe07f9d810a48ab5c3c914ba3ca53af14e4491e8a/) | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | registry | polygon | n/a | 4 deployments: optimism `0x99364f...c52c58`; polygon [`0x3841ee...1eac46`](./contracts/polygon-137/0x3841ee752ae02b3e4260d064621902de1f1eac46/); polygon `0x3b55b6...53c7a4`; polygon `0x968348...2bb982` | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | registry | polygon | unit-32449 | [`0x5d8545...1dfc34`](./contracts/polygon-137/0x5d8545a7330245150be0ce88f8afb0edc41dfc34/) | ⚠️ Unaudited |
| Gyro3CLPPoolFactory | registry | sei | n/a | 3 deployments: polygon `0x694852...f04cfb`; polygon `0xe0d2c7...5f28bd`; sei [`0x4ac500...9c6c24`](./contracts/sei-1329/0x4ac5000fa00e31b587f1b50d596b40b52e9c6c24/) | ⚠️ Unaudited |
| GyroECLPMath | unknown | polygon | n/a | 6 deployments: polygon [`0x10aba8...3b5d63`](./contracts/polygon-137/0x10aba87fed017734349e3ff31c01dd76bb3b5d63/); polygon `0x2ec9fa...64a530`; polygon `0xbe1a07...0c4350`; base `0x721325...951e5f`; arbitrum `0x41e9ac...4d946a`; arbitrum `0xcfc923...7ecbfd` | ⚠️ Unaudited |
| GyroECLPPoolFactory | registry | optimism | n/a | 7 deployments: optimism [`0x22625e...86b017`](./contracts/optimism-10/0x22625eedd92c81a219a83e1dc48f88d54786b017/); optimism `0x53eff5...c479ef`; polygon `0x949af2...f9d02f`; sonic `0xf02373...7775a9`; sei `0x66d89d...6c0c93`; base `0x5f6848...f082e3`; arbitrum `0x721325...951e5f` | ⚠️ Unaudited |
| GyroECLPPoolFactory | registry | polygon | unit-32448 | [`0x1a79a2...05926b`](./contracts/polygon-137/0x1a79a24db0f73e9087205287761fc9c5c305926b/) | ⚠️ Unaudited |
| GyroTokenPaused | token | sei | n/a | [`0x7cd75b...218d23`](./contracts/sei-1329/0x7cd75be2af9bb0279f2445f08ec7590643218d23/) | ⚠️ Unaudited |
| L2Gyfi | unknown | sei | n/a | [`0xf7f808...ffa38c`](./contracts/sei-1329/0xf7f808e3ea7e7ab00938db17c622b07c40ffa38c/) | ⚠️ Unaudited |
| LegendsOfMaBeets | unknown | sonic | n/a | 2 deployments: sonic [`0x5ae2ce...d6fe37`](./contracts/sonic-146/0x5ae2ce196f039a968997528adcdcb0c69cd6fe37/); sonic `0xefd42b...f66fef` | ⚠️ Unaudited |
| ManagedPoolAddRemoveTokenLib | core_logic | base | n/a | [`0xb19382...377b75`](./contracts/base-8453/0xb19382073c7a0addbb56ac6af1808fa49e377b75/) | ⚠️ Unaudited |
| ManagedPoolAmmLib | core_logic | base | n/a | [`0x7d2248...d28c9a`](./contracts/base-8453/0x7d2248f194755dca9a1887099394f39476d28c9a/) | ⚠️ Unaudited |
| ManagedPoolFactory | registry | base | n/a | [`0x9a62c9...20134d`](./contracts/base-8453/0x9a62c91626d39d0216b3959112f9d4678e20134d/) | ⚠️ Unaudited |
| MockERC4626Token | token | base | n/a | [`0x4638ab...f1551c`](./contracts/base-8453/0x4638ab64022927c9bd5947607459d13f57f1551c/) | ⚠️ Unaudited |
| MockGearboxDieselToken | token | base | n/a | [`0xb521dd...760ce4`](./contracts/base-8453/0xb521dd5c8e13fe202626cac98873fea2b7760ce4/) | ⚠️ Unaudited |
| MockGearboxVault | core_logic | base | n/a | [`0x79e435...05ea6c`](./contracts/base-8453/0x79e435875ccee3cd9e8da23fe34f9a011d05ea6c/) | ⚠️ Unaudited |
| MockStaticAToken | token | base | n/a | [`0x698cae...2bcda4`](./contracts/base-8453/0x698caed853be9cea96c268f565e2b61d3b2bcda4/) | ⚠️ Unaudited |
| NoProtocolFeeLiquidityBootstrappingPoolFactory | registry | base | n/a | [`0x0c6052...18828f`](./contracts/base-8453/0x0c6052254551eae3ecac77b01dfcf1025418828f/) | ⚠️ Unaudited |
| NullVotingEscrow | operational_periphery | base | n/a | [`0x475d18...0fa229`](./contracts/base-8453/0x475d18169be8a89357a9ee3ab00ca386d20fa229/) | ⚠️ Unaudited |
| OneSidedECLPJoiner | unknown | arbitrum | n/a | 2 deployments: base `0xe8b48d...236016`; arbitrum [`0xa0a555...f1322b`](./contracts/arbitrum-42161/0xa0a555c1c11ef36d2381768eb734fa2bddf1322b/) | ⚠️ Unaudited |
| PoolOwner | core_logic | base | n/a | 2 deployments: base [`0x5d56ea...324f0c`](./contracts/base-8453/0x5d56ea1b2595d2dbe4f5014b967c78ce75324f0c/); arbitrum `0xc2daef...3492e6` | ⚠️ Unaudited |
| PoolPauseHelper | core_logic | optimism | n/a | 2 deployments: optimism [`0x136f1e...1778d1`](./contracts/optimism-10/0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1/); optimism `0x16b50f...7ae5db` | ⚠️ Unaudited |
| PoolRecoveryHelper | core_logic | base | n/a | [`0x03f3fb...712054`](./contracts/base-8453/0x03f3fb107e74f2eac9358862e91ad3c692712054/) | ⚠️ Unaudited |
| PoolSwapFeeHelper | core_logic | optimism | n/a | 3 deployments: optimism [`0x1cd776...b1d608`](./contracts/optimism-10/0x1cd776897ef4f647bf8241ec69549e4a9cb1d608/); optimism `0x355bd3...53ad95`; optimism `0xbdbadc...7d6ff1` | ⚠️ Unaudited |
| ProtocolFeeController | governance | base | n/a | [`0x2ff226...4e5363`](./contracts/base-8453/0x2ff226cd12c80511a641a6101f071d853a4e5363/) | ⚠️ Unaudited |
| ProtocolFeeControllerMigration | operational_periphery | base | n/a | [`0x1b6f05...f17e59`](./contracts/base-8453/0x1b6f057520b4e826271d47b8bdab98e35af17e59/) | ⚠️ Unaudited |
| ProtocolFeeHelper | periphery | optimism | n/a | 2 deployments: optimism [`0x774cb6...17eb94`](./contracts/optimism-10/0x774cb66e2b2db59a9daf175e9b2b7a142e17eb94/); optimism `0xcc267d...3a7a4e` | ⚠️ Unaudited |
| ProtocolFeePercentagesProvider | unknown | base | n/a | [`0xded7fe...e6695d`](./contracts/base-8453/0xded7fef7d8ecdcb74f22f0169e1a9ec696e6695d/) | ⚠️ Unaudited |
| ProtocolFeesWithdrawer | operational_periphery | base | n/a | [`0xacf05b...996650`](./contracts/base-8453/0xacf05be5134d64d150d153818f8c67ee36996650/) | ⚠️ Unaudited |
| ProtocolIdRegistry | registry | base | n/a | [`0x682f0d...e27589`](./contracts/base-8453/0x682f0ddbfd41d1272982f64a499fb62d80e27589/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | 3 deployments: polygon `0x83d34c...c4cbbe`; base `0xefde1c...c97f58`; arbitrum [`0x4e56f1...de07ec`](./contracts/arbitrum-42161/0x4e56f19235ff2a14c76332877a35d6af5bde07ec/) | ⚠️ Unaudited |
| QueryProcessor | unknown | base | n/a | [`0xefc86a...d228c1`](./contracts/base-8453/0xefc86ad52fb6e1521e51a99b3638a8aeafd228c1/) | ⚠️ Unaudited |
| QuotientRateProvider | unknown | sonic | n/a | 3 deployments: sonic [`0x10e0b3...245587`](./contracts/sonic-146/0x10e0b3db47dbdb9b38a4657881d3769263245587/); sonic `0x79a88b...c40447`; base `0x15cfd6...7b627f` | ⚠️ Unaudited |
| ReClammPoolFactory | registry | optimism | n/a | 2 deployments: optimism [`0x891ec9...017e0d`](./contracts/optimism-10/0x891ec9b34829276a9a8ef2f8a9ceaf2486017e0d/); sonic `0x99c13b...310de0` | ⚠️ Unaudited |
| RecoveryModeHelper | periphery | base | n/a | [`0x313a8d...0be053`](./contracts/base-8453/0x313a8d36b1d90a4cba3a505fdc3480c3870be053/) | ⚠️ Unaudited |
| Reliquary | unknown | sonic | n/a | [`0x973670...941684`](./contracts/sonic-146/0x973670ce19594f857a7cd85ee834c7a74a941684/) | ⚠️ Unaudited |
| RewardsClaimer | operational_periphery | arbitrum | n/a | [`0x238fbf...818b0a`](./contracts/arbitrum-42161/0x238fbf9b7594681838fb563c417937eb95818b0a/) | ⚠️ Unaudited |
| Router | adapter | sonic | unit-32455 | [`0x6077b9...d1a71c`](./contracts/sonic-146/0x6077b9801b5627a65a5eee70697c793751d1a71c/) | ⚠️ Unaudited |
| Router | adapter | sonic | n/a | 2 deployments: optimism `0xe2fa4e...9e285b`; sonic [`0x93db46...a8dae5`](./contracts/sonic-146/0x93db4682a40721e7c698ea0a842389d10fa8dae5/) | ⚠️ Unaudited |
| SonicBeetsMigrator | periphery | sonic | n/a | [`0x5f9a5c...05e386`](./contracts/sonic-146/0x5f9a5cd0b77155ac1814ef6cd9d82da53d05e386/) | ⚠️ Unaudited |
| StableLPOracleFactory | operational_periphery | optimism | n/a | 3 deployments: optimism [`0xa0de07...b7c883`](./contracts/optimism-10/0xa0de078cd5cfa7088821b83e0bd7545ccfb7c883/); optimism `0xb96524...ba40e9`; optimism `0xc4c494...1cf468` | ⚠️ Unaudited |
| StablePoolFactory | registry | optimism | n/a | 4 deployments: optimism [`0x1780e8...d943ab`](./contracts/optimism-10/0x1780e8185199dac45284039bb3e3b64060d943ab/); optimism `0x268e2e...d9af42`; sonic `0x482ee5...48affb`; base `0xc49ca9...97950c` | ⚠️ Unaudited |
| StableSurgeHook | unknown | sonic | n/a | 2 deployments: optimism `0xf39ca6...ab9015`; sonic [`0x049919...c6f1b3`](./contracts/sonic-146/0x049919ae32e50aee5ea1a0998a841d175ec6f1b3/) | ⚠️ Unaudited |
| StableSurgePoolFactory | registry | optimism | n/a | 4 deployments: optimism [`0x3beb05...429ace`](./contracts/optimism-10/0x3beb058de1a25dd24223fd9e1796df8589429ace/); optimism `0xfd2142...f3128f`; sonic `0x3d9319...0f0bad`; sonic `0x6187f6...e6776e` | ⚠️ Unaudited |
| UnbalancedAddViaSwapRouter | adapter | optimism | n/a | [`0x03cbcc...dff36f`](./contracts/optimism-10/0x03cbccbe8d2073a1dc186ae6bcd95390fcdff36f/) | ⚠️ Unaudited |
| VotingEscrowDelegationProxy | operational_periphery | base | n/a | [`0xd87f44...9f5acd`](./contracts/base-8453/0xd87f44df0159dc78029ab9ca7d7e57e7249f5acd/) | ⚠️ Unaudited |
| WeightedLPOracleFactory | operational_periphery | optimism | n/a | 3 deployments: optimism [`0x6ee18f...e3cb3f`](./contracts/optimism-10/0x6ee18fbb1bbcc5cf700cd75ea1aef2bb21e3cb3f/); optimism `0x718e11...f4457f`; optimism `0xeb2bb0...9fe804` | ⚠️ Unaudited |
| WeightedPoolFactory | registry | optimism | n/a | 4 deployments: optimism [`0x0f08ee...347b7c`](./contracts/optimism-10/0x0f08eef2c785aa5e7539684af04755dec1347b7c/); optimism `0x254f3a...5f83b0`; sonic `0x4726eb...d60fc3`; base `0x4c32a8...d6a1c4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x155aeb...c21b9d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1cab84...345cf2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7de29b...5a3c3b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbe6f65...83f09d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd89025...96eb87` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe3246e...d0a90a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfc2b39...800aae` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9cde25...521867` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x5d56ea...324f0c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x180295...cf1d77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2dd70f...cabdbb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbcb724...74efc9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeef937...3a34e5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x32acb4...2a23f3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41e9ac...4d946a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Security Review: Dynamic E-CLP](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM_0526_Gyroscope-dynamic-eclp.pdf) | Nethermind | Audit | 2025-06 | aging | Direct | contract_name | 11 | high |
| [Security Review: GYFI](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0440_GYFI_FINAL.pdf) | Nethermind | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Security Review: Bridges](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0255_GYROSCOPE%20_FINAL.pdf) | Nethermind | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [Security Review: sGYD](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0264_GYRO_SGYD.pdf) | Nethermind | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [Security Review: Protocol](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf) | Nethermind | Audit | 2023-08 | stale | Direct | contract_name | 8 | high |
| [Security Review: Governance](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf) | Nethermind | Audit | 2023-08 | stale | Direct | contract_name | 0 | n/a |
| [Security Review: E-CLP (previously called CEMM)](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM-0055%20Security%20Review%20-%20Gyroscope%20CEMM.pdf) | Nethermind | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [Security Review: Protocol, 2-CLP and 3-CLP](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM-0051%20Security%20Review%20Gyroscope.pdf) | Nethermind | Audit | 2022-08 | stale | Direct | contract_name | 10 | high |
| [Security Review](https://github.com/gyrostable/audit-reports/blob/main/Trail%20of%20Bits/Summary%20Report%20%26%20Fix%20Review%20-%20Gyroscope.pdf) | Trail of Bits | Audit | 2022-09 | stale | Direct | contract_name | 0 | n/a |
| [Security Review: Mathematical Model Implementation](https://github.com/gyrostable/audit-reports/blob/main/Runtime%20Verification/Gyroscope_Protocol_Audit_Report.pdf) | Runtime Verification | Audit | 2022-04 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0xc23542...fade44`](./contracts/sonic-146/0xc23542cd402fe4f7c7539fc0929b010992fade44/) | AdaptiveRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xad8905...f8a85e`](./contracts/optimism-10/0xad89051bed8d96f045e8912ae1672c6c0bf8a85e/) | BatchRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x776165...968daf`](./contracts/sonic-146/0x7761659f9e9834ad367e4d25e0306ba7a4968daf/) | BatchRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x532da9...3a721b`](./contracts/sonic-146/0x532da919d3eb5606b5867a6f505969c57f3a721b/) | BufferRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xef454a...865425`](./contracts/base-8453/0xef454a7b3f965d3f6723e462405246f8cd865425/) | CircuitBreakerLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc9b360...d5988f`](./contracts/optimism-10/0xc9b36096f5201ea332db35d6d195774ea0d5988f/) | CompositeLiquidityRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x284265...2dc9d9`](./contracts/arbitrum-42161/0x284265d0b95bedbfc9acade0414ea1a1ba2dc9d9/) | ConnectorArbBot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4eff2d...ff4cb5`](./contracts/optimism-10/0x4eff2d77d9ffbaefb4b141a3e494c085b3ff4cb5/) | ConstantPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3a216b...67697f`](./contracts/arbitrum-42161/0x3a216b01db971bf28d171c9da44cc8c89867697f/) | ConstantRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc00ff7...e5426d`](./contracts/optimism-10/0xc00ff743b73346c9a4c40509e0550ffc18e5426d/) | EclpLPOracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x02a569...e75c33`](./contracts/optimism-10/0x02a569eea6f85736e2d63c59e60d27d075e75c33/) | ERC4626RateProviderFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7920bf...c50cfd`](./contracts/base-8453/0x7920bfa1b2041911b354747ca7a6cdd2dfc50cfd/) | ExternalWeightedMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e56f1...de07ec`](./contracts/ethereum-1/0x4e56f19235ff2a14c76332877a35d6af5bde07ec/) | FoundingFrog | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7783b7...9d2754`](./contracts/ethereum-1/0x7783b7eb719aa2d27f01e10c0b0ee747ab9d2754/) | FoundingMemberVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3841ee...1eac46`](./contracts/polygon-137/0x3841ee752ae02b3e4260d064621902de1f1eac46/) | Gyro2CLPPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x4ac500...9c6c24`](./contracts/sei-1329/0x4ac5000fa00e31b587f1b50d596b40b52e9c6c24/) | Gyro3CLPPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x10aba8...3b5d63`](./contracts/polygon-137/0x10aba87fed017734349e3ff31c01dd76bb3b5d63/) | GyroECLPMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x22625e...86b017`](./contracts/optimism-10/0x22625eedd92c81a219a83e1dc48f88d54786b017/) | GyroECLPPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x7cd75b...218d23`](./contracts/sei-1329/0x7cd75be2af9bb0279f2445f08ec7590643218d23/) | GyroTokenPaused | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xf7f808...ffa38c`](./contracts/sei-1329/0xf7f808e3ea7e7ab00938db17c622b07c40ffa38c/) | L2Gyfi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5ae2ce...d6fe37`](./contracts/sonic-146/0x5ae2ce196f039a968997528adcdcb0c69cd6fe37/) | LegendsOfMaBeets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb19382...377b75`](./contracts/base-8453/0xb19382073c7a0addbb56ac6af1808fa49e377b75/) | ManagedPoolAddRemoveTokenLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7d2248...d28c9a`](./contracts/base-8453/0x7d2248f194755dca9a1887099394f39476d28c9a/) | ManagedPoolAmmLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9a62c9...20134d`](./contracts/base-8453/0x9a62c91626d39d0216b3959112f9d4678e20134d/) | ManagedPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4638ab...f1551c`](./contracts/base-8453/0x4638ab64022927c9bd5947607459d13f57f1551c/) | MockERC4626Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x79e435...05ea6c`](./contracts/base-8453/0x79e435875ccee3cd9e8da23fe34f9a011d05ea6c/) | MockGearboxVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x698cae...2bcda4`](./contracts/base-8453/0x698caed853be9cea96c268f565e2b61d3b2bcda4/) | MockStaticAToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0c6052...18828f`](./contracts/base-8453/0x0c6052254551eae3ecac77b01dfcf1025418828f/) | NoProtocolFeeLiquidityBootstrappingPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa0a555...f1322b`](./contracts/arbitrum-42161/0xa0a555c1c11ef36d2381768eb734fa2bddf1322b/) | OneSidedECLPJoiner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5d56ea...324f0c`](./contracts/base-8453/0x5d56ea1b2595d2dbe4f5014b967c78ce75324f0c/) | PoolOwner | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x03f3fb...712054`](./contracts/base-8453/0x03f3fb107e74f2eac9358862e91ad3c692712054/) | PoolRecoveryHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ff226...4e5363`](./contracts/base-8453/0x2ff226cd12c80511a641a6101f071d853a4e5363/) | ProtocolFeeController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1b6f05...f17e59`](./contracts/base-8453/0x1b6f057520b4e826271d47b8bdab98e35af17e59/) | ProtocolFeeControllerMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x682f0d...e27589`](./contracts/base-8453/0x682f0ddbfd41d1272982f64a499fb62d80e27589/) | ProtocolIdRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xefc86a...d228c1`](./contracts/base-8453/0xefc86ad52fb6e1521e51a99b3638a8aeafd228c1/) | QueryProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x10e0b3...245587`](./contracts/sonic-146/0x10e0b3db47dbdb9b38a4657881d3769263245587/) | QuotientRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x891ec9...017e0d`](./contracts/optimism-10/0x891ec9b34829276a9a8ef2f8a9ceaf2486017e0d/) | ReClammPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x238fbf...818b0a`](./contracts/arbitrum-42161/0x238fbf9b7594681838fb563c417937eb95818b0a/) | RewardsClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6077b9...d1a71c`](./contracts/sonic-146/0x6077b9801b5627a65a5eee70697c793751d1a71c/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x93db46...a8dae5`](./contracts/sonic-146/0x93db4682a40721e7c698ea0a842389d10fa8dae5/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5f9a5c...05e386`](./contracts/sonic-146/0x5f9a5cd0b77155ac1814ef6cd9d82da53d05e386/) | SonicBeetsMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa0de07...b7c883`](./contracts/optimism-10/0xa0de078cd5cfa7088821b83e0bd7545ccfb7c883/) | StableLPOracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x049919...c6f1b3`](./contracts/sonic-146/0x049919ae32e50aee5ea1a0998a841d175ec6f1b3/) | StableSurgeHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3beb05...429ace`](./contracts/optimism-10/0x3beb058de1a25dd24223fd9e1796df8589429ace/) | StableSurgePoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x03cbcc...dff36f`](./contracts/optimism-10/0x03cbccbe8d2073a1dc186ae6bcd95390fcdff36f/) | UnbalancedAddViaSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 64 |
| upstream | 25 |
| standard_library | 5 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=159

Zero-match audit list:

- [2963] Security Review: GYFI
- [2964] Security Review: Bridges
- [2965] Security Review: sGYD
- [2967] Security Review: Governance
- [2968] Security Review: E-CLP (previously called CEMM)
- [2970] Security Review
- [2971] Security Review: Mathematical Model Implementation

Fork inheritance lineage and inherited audits are included when available.
