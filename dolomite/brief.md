# Agentic Audit Brief: Dolomite

## Project Overview

- Project: Dolomite (`dolomite`)
- Website: [https://dolomite.io](https://dolomite.io)
- Lifecycle: active (Tier 0, 82.6% below peak)
- Generated: 2026-06-21T20:53:26.434Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, base, berachain, ethereum, ink, mantle, polygon-zkevm
- Contract surface: 181 unique implementations (257 raw deployments)
- DeFi Llama TVL: $664,241,193.56
- On-chain TVL (included contracts): $7,400,028.30
- TVL by chain: Arbitrum $7,400,028.30

## Project Description

Dolomite is a decentralized lending and borrowing protocol that enables users to supply assets, borrow against them, and manage positions across multiple chains. It supports advanced features like isolated margin, liquidations, and integration with external trading and yield strategies.

### Architecture

The Lending and Borrowing family relies on Price Oracles for asset valuations and Liquidations for risk management. Trading and Aggregation contracts interact with the core margin system to execute trades, while Governance and Tokenomics manage protocol parameters and incentives. Registry and Configuration contracts serve as the central hub, linking all families by storing addresses and settings used across the protocol.

## Contract Surface Quality

- Indexed contracts: 924; live-surface contracts included: 257 (86 live, 171 unknown).
- Excluded by liveness: 636 inactive, 31 singleton, 0 uninitialized.
- Deployment units: 26/64 live.
- Detected codebases: none
- Unverified dependencies: 1/27.

## Audit Coverage Summary

- Verified implementations audited: 11/80 (13.8%)
- Verified + Unaudited implementations: 69
- Verified by bytecode match: 0
- Unverified implementations: 101
- Unique implementations: 181
- Raw deployments: 257
- Audits discovered: 10
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $7,400,028.30
- Latest audit: 2025-04 (aging)
- Staleness: 0 fresh, 1 aging, 6 stale, 3 unknown
- Tier 1 coverage: 7.5% (Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 6 | 7.5% | 2025-04 |
| Guardian | Tier 2 | 3 | 3.8% | 2024-01 |
| unknown | Tier 2 | 2 | 2.5% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BorrowPositionProxyV1 | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x67567f...c30ba6`](./contracts/ethereum-1/0x67567fce98a44745820069c37c395426f1c30ba6/); mantle `0x97a086...64b733`; base [`0x67567f...c30ba6`](./contracts/base-8453/0x67567fce98a44745820069c37c395426f1c30ba6/); berachain [`0x67567f...c30ba6`](./contracts/berachain-80094/0x67567fce98a44745820069c37c395426f1c30ba6/) | ✅ Audited |
| BorrowPositionProxyV2 | core_logic | arbitrum | n/a | 4 deployments: ethereum `0xc06271...2b10bd`; base `0xc06271...2b10bd`; arbitrum [`0x38e49a...4bf3a7`](./contracts/arbitrum-42161/0x38e49a617305101216ec6306e3a18065d14bf3a7/); berachain `0xc06271...2b10bd` | ✅ Audited |
| DepositWithdrawalProxy | operational_periphery | arbitrum | n/a | 4 deployments: ethereum `0xd6a31b...1187e6`; arbitrum [`0x9fa142...61ca8f`](./contracts/arbitrum-42161/0x9fa142853af93d0cc3af986c27688d54ce61ca8f/); arbitrum `0xadb9d6...7b9594`; berachain `0xd6a31b...1187e6` | ✅ Audited |
| DolomiteAmmRouterProxy | adapter | arbitrum | n/a | [`0xd8f9c5...cbb632`](./contracts/arbitrum-42161/0xd8f9c59176ae25414fc4180f6433fc45b0cbb632/) | ✅ Audited |
| DolomiteMargin | unknown | ethereum | n/a | 4 deployments: ethereum [`0x003ca2...c2b97d`](./contracts/ethereum-1/0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d/); mantle `0xe6ef4f...917de8`; arbitrum `0x6bd780...409072`; berachain [`0x003ca2...c2b97d`](./contracts/berachain-80094/0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d/) | ✅ Audited |
| GenericTraderProxyV1 | unknown | ethereum | n/a | 3 deployments: ethereum [`0xb50bcd...fb928d`](./contracts/ethereum-1/0xb50bcdfc914e0afb484dee621f49010862fb928d/); base [`0xb50bcd...fb928d`](./contracts/base-8453/0xb50bcdfc914e0afb484dee621f49010862fb928d/); berachain [`0xb50bcd...fb928d`](./contracts/berachain-80094/0xb50bcdfc914e0afb484dee621f49010862fb928d/) | ✅ Audited |
| GLPWrappedTokenUserVaultFactory | registry | arbitrum | n/a | [`0x34df4e...542698`](./contracts/arbitrum-42161/0x34df4e8062a8c8ae97e3382b452bd7bf60542698/) | ✅ Audited |
| GmxV2IsolationModeUnwrapperTraderV2 | unknown | arbitrum | unit-44005 (9 proxies) | 9 deployments: arbitrum [`0x0572e5...bed4ec`](./contracts/arbitrum-42161/0x0572e554784ea93312d18408aef2223431bed4ec/); arbitrum `0x106fda...ed0200`; arbitrum `0x2b9d14...852758`; arbitrum `0x333838...a5cfbe`; arbitrum `0x71fcbb...1157c4`; arbitrum `0x77a7dc...311317`; arbitrum `0xa1b50f...af63e5`; arbitrum `0xdfdbbd...f0d83c`; arbitrum `0xecd64f...f86034` | ✅ Audited |
| GmxV2IsolationModeVaultFactory | registry | arbitrum | n/a | 12 deployments: arbitrum [`0x18cb14...abc0e0`](./contracts/arbitrum-42161/0x18cb14564fbb015bd3439220d177799355abc0e0/); arbitrum `0x1beed3...e027c1`; arbitrum `0x1e8e8b...7050ef`; arbitrum `0x1ebb1c...bfd412`; arbitrum `0x20d51c...547e7e`; arbitrum `0x24c912...7c614d`; arbitrum `0x2c7991...a39329`; arbitrum `0x2d165a...3d7f92`; arbitrum `0x505582...a1b074`; arbitrum `0x5c99f6...45ed1c`; arbitrum `0xb15bbb...cec4d8`; arbitrum `0xc58764...b01c9b` | ✅ Audited |
| LiquidatorProxyV4WithGenericTrader | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x2adeaf...c5487b`](./contracts/ethereum-1/0x2adeafd960366411215ce8706c1afe2853c5487b/); base [`0x2adeaf...c5487b`](./contracts/base-8453/0x2adeafd960366411215ce8706c1afe2853c5487b/) | ✅ Audited |
| TransferProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x07c28e...2624f8`](./contracts/ethereum-1/0x07c28e60b28c98e09f5b69c9c473fe19062624f8/); base [`0x07c28e...2624f8`](./contracts/base-8453/0x07c28e60b28c98e09f5b69c9c473fe19062624f8/); berachain [`0x07c28e...2624f8`](./contracts/berachain-80094/0x07c28e60b28c98e09f5b69c9c473fe19062624f8/) | ✅ Audited |

### ⚠️ Verified + Unaudited (69)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DolomiteERC20 | token | arbitrum | unit-44007 (2 proxies) | 2 deployments: arbitrum [`0x0a52bc...61d995`](./contracts/arbitrum-42161/0x0a52bcb532f59f6a37a9d3b5bc9ffd47e461d995/); arbitrum `0x6dbd96...8228d6` | ⚠️ Unaudited |
| AlwaysZeroInterestSetter | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9ecbbc...d28ca2`](./contracts/ethereum-1/0x9ecbbceb49c39a59d18b064b7049aac2d4d28ca2/); base [`0x9ecbbc...d28ca2`](./contracts/base-8453/0x9ecbbceb49c39a59d18b064b7049aac2d4d28ca2/); berachain [`0x9ecbbc...d28ca2`](./contracts/berachain-80094/0x9ecbbceb49c39a59d18b064b7049aac2d4d28ca2/) | ⚠️ Unaudited |
| ARBIsolationModeVaultFactory | registry | arbitrum | n/a | [`0x1d9e10...68e3c3`](./contracts/arbitrum-42161/0x1d9e10b161ae54feabe1e3f71f658cac3468e3c3/) | ⚠️ Unaudited |
| BorrowPositionProxy | core_logic | arbitrum | n/a | [`0xe43638...f5a099`](./contracts/arbitrum-42161/0xe43638797513ef7a6d326a95e8647d86d2f5a099/) | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | ethereum | unit-43989 | [`0xf579b3...133d0f`](./contracts/ethereum-1/0xf579b345cda0860668b857de10abd62442133d0f/) | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | base | unit-44001 | [`0xf579b3...133d0f`](./contracts/base-8453/0xf579b345cda0860668b857de10abd62442133d0f/) | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | arbitrum | unit-44029 | [`0xf579b3...133d0f`](./contracts/arbitrum-42161/0xf579b345cda0860668b857de10abd62442133d0f/) | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | berachain | unit-44043 | [`0xf579b3...133d0f`](./contracts/berachain-80094/0xf579b345cda0860668b857de10abd62442133d0f/) | ⚠️ Unaudited |
| ChainlinkPriceOracleV3 | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x465e51...7ae191`](./contracts/ethereum-1/0x465e5105e6106acd15e491953bb7b674247ae191/); base [`0x465e51...7ae191`](./contracts/base-8453/0x465e5105e6106acd15e491953bb7b674247ae191/); berachain [`0x465e51...7ae191`](./contracts/berachain-80094/0x465e5105e6106acd15e491953bb7b674247ae191/) | ⚠️ Unaudited |
| ChaosLabsPriceOracleV3 | operational_periphery | arbitrum | n/a | [`0xb02808...7db34e`](./contracts/arbitrum-42161/0xb02808f5db0e6926e00af4971abdf1da6c7db34e/) | ⚠️ Unaudited |
| ChroniclePriceOracleV3 | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0xb6b3ea...af4359`](./contracts/ethereum-1/0xb6b3eaf640707688186e7df34ac7d21fabaf4359/); base [`0xb6b3ea...af4359`](./contracts/base-8453/0xb6b3eaf640707688186e7df34ac7d21fabaf4359/); berachain [`0xb6b3ea...af4359`](./contracts/berachain-80094/0xb6b3eaf640707688186e7df34ac7d21fabaf4359/) | ⚠️ Unaudited |
| CREATE3Factory | registry | ethereum | n/a | 5 deployments: ethereum [`0xa8f7e7...7599f7`](./contracts/ethereum-1/0xa8f7e7a361de6a2172fcb2acce68bd21597599f7/); mantle [`0xa8f7e7...7599f7`](./contracts/mantle-5000/0xa8f7e7a361de6a2172fcb2acce68bd21597599f7/); base [`0xa8f7e7...7599f7`](./contracts/base-8453/0xa8f7e7a361de6a2172fcb2acce68bd21597599f7/); arbitrum [`0xa8f7e7...7599f7`](./contracts/arbitrum-42161/0xa8f7e7a361de6a2172fcb2acce68bd21597599f7/); berachain [`0xa8f7e7...7599f7`](./contracts/berachain-80094/0xa8f7e7a361de6a2172fcb2acce68bd21597599f7/) | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | ethereum | unit-43990 | [`0xf8b2c6...3d2dff`](./contracts/ethereum-1/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | mantle | unit-43996 | [`0xf8b2c6...3d2dff`](./contracts/mantle-5000/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | base | unit-44002 | [`0xf8b2c6...3d2dff`](./contracts/base-8453/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | arbitrum | unit-44030 | [`0xf8b2c6...3d2dff`](./contracts/arbitrum-42161/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | berachain | unit-44044 | [`0xf8b2c6...3d2dff`](./contracts/berachain-80094/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | ⚠️ Unaudited |
| DOLO | unknown | berachain | n/a | [`0x0f8100...39a654`](./contracts/berachain-80094/0x0f81001ef0a83ecce5ccebf63eb302c70a39a654/) | ⚠️ Unaudited |
| DolomiteAccountRegistry | registry | base | unit-44003 | [`0xfee366...24daae`](./contracts/base-8453/0xfee366ceca2472b99d0a501b6b3d01351c24daae/) | ⚠️ Unaudited |
| DolomiteAccountRegistry | registry | berachain | unit-44045 | [`0xfee366...24daae`](./contracts/berachain-80094/0xfee366ceca2472b99d0a501b6b3d01351c24daae/) | ⚠️ Unaudited |
| DolomiteMigrator | periphery | ethereum | n/a | 3 deployments: ethereum [`0x9e97d8...e7a0d3`](./contracts/ethereum-1/0x9e97d89c44c3f213db22593af98165a1b9e7a0d3/); base [`0x9e97d8...e7a0d3`](./contracts/base-8453/0x9e97d89c44c3f213db22593af98165a1b9e7a0d3/); berachain [`0x9e97d8...e7a0d3`](./contracts/berachain-80094/0x9e97d89c44c3f213db22593af98165a1b9e7a0d3/) | ⚠️ Unaudited |
| DolomiteOwner | unknown | mantle | n/a | 3 deployments: mantle [`0xcf359a...7bb11d`](./contracts/mantle-5000/0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d/); base [`0xcf359a...7bb11d`](./contracts/base-8453/0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d/); arbitrum [`0xcf359a...7bb11d`](./contracts/arbitrum-42161/0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d/) | ⚠️ Unaudited |
| DolomiteOwnerV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcf359a...7bb11d`](./contracts/ethereum-1/0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d/); berachain [`0xcf359a...7bb11d`](./contracts/berachain-80094/0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d/) | ⚠️ Unaudited |
| DolomiteOwnerV2 | unknown | ethereum | n/a | 5 deployments: ethereum [`0xc2b66e...53de06`](./contracts/ethereum-1/0xc2b66e247dae5ee749ae1d827190115f3653de06/); mantle [`0xc2b66e...53de06`](./contracts/mantle-5000/0xc2b66e247dae5ee749ae1d827190115f3653de06/); base [`0xc2b66e...53de06`](./contracts/base-8453/0xc2b66e247dae5ee749ae1d827190115f3653de06/); arbitrum [`0xc2b66e...53de06`](./contracts/arbitrum-42161/0xc2b66e247dae5ee749ae1d827190115f3653de06/); berachain [`0xc2b66e...53de06`](./contracts/berachain-80094/0xc2b66e247dae5ee749ae1d827190115f3653de06/) | ⚠️ Unaudited |
| DolomiteRegistryImplementation | registry | ethereum | unit-43982 | [`0x0f38bf...fe09fd`](./contracts/ethereum-1/0x0f38bfbd9c1450bcf7a758e80e148ce78cfe09fd/) | ⚠️ Unaudited |
| DOLOWithOwnable | governance | ethereum | n/a | 2 deployments: ethereum [`0x0f8100...39a654`](./contracts/ethereum-1/0x0f81001ef0a83ecce5ccebf63eb302c70a39a654/); arbitrum [`0x0f8100...39a654`](./contracts/arbitrum-42161/0x0f81001ef0a83ecce5ccebf63eb302c70a39a654/) | ⚠️ Unaudited |
| EventEmitterRegistry | registry | ethereum | unit-43983 | [`0x6d4013...232486`](./contracts/ethereum-1/0x6d40138c99f6d9116f738f44a0e6751a42232486/) | ⚠️ Unaudited |
| EventEmitterRegistry | registry | base | unit-43998 | [`0x6d4013...232486`](./contracts/base-8453/0x6d40138c99f6d9116f738f44a0e6751a42232486/) | ⚠️ Unaudited |
| EventEmitterRegistry | registry | berachain | unit-44034 | [`0x6d4013...232486`](./contracts/berachain-80094/0x6d40138c99f6d9116f738f44a0e6751a42232486/) | ⚠️ Unaudited |
| Expiry | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2ae007...1d8d5d`](./contracts/ethereum-1/0x2ae007882b91206942c70adc833a61ee531d8d5d/); base [`0x2ae007...1d8d5d`](./contracts/base-8453/0x2ae007882b91206942c70adc833a61ee531d8d5d/); berachain [`0x2ae007...1d8d5d`](./contracts/berachain-80094/0x2ae007882b91206942c70adc833a61ee531d8d5d/) | ⚠️ Unaudited |
| ExpiryProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1b39f7...67e7bc`](./contracts/ethereum-1/0x1b39f7c19d952752f255536e72726a592167e7bc/); base [`0x1b39f7...67e7bc`](./contracts/base-8453/0x1b39f7c19d952752f255536e72726a592167e7bc/); berachain [`0x1b39f7...67e7bc`](./contracts/berachain-80094/0x1b39f7c19d952752f255536e72726a592167e7bc/) | ⚠️ Unaudited |
| ExternalOARB | unknown | arbitrum | n/a | [`0xc5e16f...8b2ac2`](./contracts/arbitrum-42161/0xc5e16f5009776ab645d6719b72962892428b2ac2/) | ⚠️ Unaudited |
| GenericTraderRouter | adapter | ethereum | unit-43984 | [`0x7b61cb...72bc6b`](./contracts/ethereum-1/0x7b61cba306cfdb02493b94757143132b1b72bc6b/) | ⚠️ Unaudited |
| GenericTraderRouter | adapter | base | unit-43999 | [`0x7b61cb...72bc6b`](./contracts/base-8453/0x7b61cba306cfdb02493b94757143132b1b72bc6b/) | ⚠️ Unaudited |
| GenericTraderRouter | adapter | berachain | unit-44036 | [`0x7b61cb...72bc6b`](./contracts/berachain-80094/0x7b61cba306cfdb02493b94757143132b1b72bc6b/) | ⚠️ Unaudited |
| GMXIsolationModeVaultFactory | registry | arbitrum | n/a | [`0x790ff5...b55ca5`](./contracts/arbitrum-42161/0x790ff506ac24b03a21f3d0019227447ae2b55ca5/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | ethereum | unit-43985 | [`0xa75c21...55a1d4`](./contracts/ethereum-1/0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | mantle | unit-43994 | [`0xa75c21...55a1d4`](./contracts/mantle-5000/0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | unit-44000 | [`0xa75c21...55a1d4`](./contracts/base-8453/0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | berachain | unit-44039 | [`0xa75c21...55a1d4`](./contracts/berachain-80094/0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4/) | ⚠️ Unaudited |
| GravitaExternalVesterImplementationV2 | operational_periphery | arbitrum | unit-44028 | [`0xec0f08...a04326`](./contracts/arbitrum-42161/0xec0f08bc015a0d0fba1df0b8b11d4779f5a04326/) | ⚠️ Unaudited |
| IsolationModeFreezableLiquidatorProxy | operational_periphery | arbitrum | n/a | 4 deployments: ethereum `0x8d178f...5c8870`; base `0x8d178f...5c8870`; arbitrum [`0x76ac55...a33e44`](./contracts/arbitrum-42161/0x76ac5542ee033a15f78d1f8b4ad48af618a33e44/); berachain `0x8d178f...5c8870` | ⚠️ Unaudited |
| IsolationModeTraderProxy | unknown | arbitrum | n/a | [`0xd73cfb...953e66`](./contracts/arbitrum-42161/0xd73cfb3f18dd39566374828c549cd67ad9953e66/) | ⚠️ Unaudited |
| JonesUSDCV2IsolationModeVaultFactory | registry | arbitrum | n/a | [`0x14c60c...e33012`](./contracts/arbitrum-42161/0x14c60cb8301e879dfb9eecbebc013353b7e33012/) | ⚠️ Unaudited |
| LiquidatorAssetRegistry | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0xd82100...c56cfa`](./contracts/ethereum-1/0xd82100524392c7dbdd7502f136a226c8a4c56cfa/); base [`0xd82100...c56cfa`](./contracts/base-8453/0xd82100524392c7dbdd7502f136a226c8a4c56cfa/); berachain [`0xd82100...c56cfa`](./contracts/berachain-80094/0xd82100524392c7dbdd7502f136a226c8a4c56cfa/) | ⚠️ Unaudited |
| LiquidatorProxyV1 | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0xdb168c...bf99d3`](./contracts/ethereum-1/0xdb168cd1bcb63304991fc6e2013d0d87ddbf99d3/); base [`0xdb168c...bf99d3`](./contracts/base-8453/0xdb168cd1bcb63304991fc6e2013d0d87ddbf99d3/); berachain [`0xdb168c...bf99d3`](./contracts/berachain-80094/0xdb168cd1bcb63304991fc6e2013d0d87ddbf99d3/) | ⚠️ Unaudited |
| LiquidatorProxyV5 | operational_periphery | mantle | n/a | 2 deployments: mantle [`0x1506f8...72b99a`](./contracts/mantle-5000/0x1506f80d2fd5fbef2424573ec86e5481c972b99a/); base [`0x1506f8...72b99a`](./contracts/base-8453/0x1506f80d2fd5fbef2424573ec86e5481c972b99a/) | ⚠️ Unaudited |
| MultiCall | periphery | ethereum | n/a | 3 deployments: ethereum [`0x58142b...617d2a`](./contracts/ethereum-1/0x58142bd85e67c40a7c0ccf2e1eef6eb543617d2a/); base [`0x58142b...617d2a`](./contracts/base-8453/0x58142bd85e67c40a7c0ccf2e1eef6eb543617d2a/); berachain [`0x58142b...617d2a`](./contracts/berachain-80094/0x58142bd85e67c40a7c0ccf2e1eef6eb543617d2a/) | ⚠️ Unaudited |
| OARB | unknown | arbitrum | n/a | [`0xcbed80...5a6a93`](./contracts/arbitrum-42161/0xcbed801b4162bf2a19b06968663438b5165a6a93/) | ⚠️ Unaudited |
| ODOLO | unknown | berachain | n/a | [`0x02e513...c89543`](./contracts/berachain-80094/0x02e513b5b54ee216bf836ceb471507488fc89543/) | ⚠️ Unaudited |
| OptionAirdrop | operational_periphery | berachain | unit-44042 | [`0xd88f47...9b99ef`](./contracts/berachain-80094/0xd88f473832b0403c7736ef237af5aff8759b99ef/) | ⚠️ Unaudited |
| OracleAggregatorV2 | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0xa150ef...1d636e`](./contracts/ethereum-1/0xa150ef2d5827db283321d15d62d5d07fb41d636e/); base [`0xa150ef...1d636e`](./contracts/base-8453/0xa150ef2d5827db283321d15d62d5d07fb41d636e/); berachain [`0xa150ef...1d636e`](./contracts/berachain-80094/0xa150ef2d5827db283321d15d62d5d07fb41d636e/) | ⚠️ Unaudited |
| PartiallyDelayedMultiSig | governance | ethereum | n/a | [`0x52d7bc...fd05f9`](./contracts/ethereum-1/0x52d7bcb650c591f6e8da90f797a1d0bfd8fd05f9/) | ⚠️ Unaudited |
| RedstonePriceOracleV3 | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0xe09f85...4cdd45`](./contracts/ethereum-1/0xe09f85b284c177c8325c5ccaeae30a14494cdd45/); base [`0xe09f85...4cdd45`](./contracts/base-8453/0xe09f85b284c177c8325c5ccaeae30a14494cdd45/); berachain [`0xe09f85...4cdd45`](./contracts/berachain-80094/0xe09f85b284c177c8325c5ccaeae30a14494cdd45/) | ⚠️ Unaudited |
| RegistryProxy | registry | ethereum | n/a | [`0xfee366...24daae`](./contracts/ethereum-1/0xfee366ceca2472b99d0a501b6b3d01351c24daae/) | ⚠️ Unaudited |
| RegularAirdrop | operational_periphery | berachain | unit-44038 | [`0xa3f079...838bc9`](./contracts/berachain-80094/0xa3f079292cc35ba64996fe0bce3049928a838bc9/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | arbitrum | n/a | [`0x66cd7d...73db67`](./contracts/arbitrum-42161/0x66cd7d0cc677f42f6662622c60a5e60ef573db67/) | ⚠️ Unaudited |
| RollingClaims | unknown | berachain | unit-44035 | [`0x79e6e9...a8a026`](./contracts/berachain-80094/0x79e6e932bf6686a4d357d7821e6e08835ba8a026/) | ⚠️ Unaudited |
| RouterProxy | adapter | mantle | n/a | 2 deployments: mantle [`0x7b61cb...72bc6b`](./contracts/mantle-5000/0x7b61cba306cfdb02493b94757143132b1b72bc6b/); mantle `0xf579b3...133d0f` | ⚠️ Unaudited |
| SafeL2 | unknown | arbitrum | unit-44020 | [`0xa75c21...55a1d4`](./contracts/arbitrum-42161/0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4/) | ⚠️ Unaudited |
| StrategicVestingClaims | operational_periphery | berachain | unit-44037 | [`0x7efd08...061176`](./contracts/berachain-80094/0x7efd088ae500598a19a242d6d48b9f7e0d061176/) | ⚠️ Unaudited |
| USDMRouter | adapter | arbitrum | n/a | [`0xa9b377...7f6c6d`](./contracts/arbitrum-42161/0xa9b377b97395c4031750ce8e9397c00c577f6c6d/) | ⚠️ Unaudited |
| VeArt | unknown | berachain | n/a | [`0x54267e...68a6f0`](./contracts/berachain-80094/0x54267e603646648e623a7a3c21dbbd4cd968a6f0/) | ⚠️ Unaudited |
| VeExternalVesterImplementationV2 | operational_periphery | berachain | unit-44033 | [`0x3e9b9a...2d2cec`](./contracts/berachain-80094/0x3e9b9a16743551da49b5e136c716bba7932d2cec/) | ⚠️ Unaudited |
| VeFeeCalculator | unknown | berachain | n/a | [`0xa7b2c7...917ce9`](./contracts/berachain-80094/0xa7b2c7b13e7628b70dda64a257767f7292917ce9/) | ⚠️ Unaudited |
| VestingClaims | operational_periphery | berachain | unit-44032 | [`0x3a025c...c06c07`](./contracts/berachain-80094/0x3a025c7fcf7632197ea82e64acd6ff53e1c06c07/) | ⚠️ Unaudited |
| VestingClaims | operational_periphery | berachain | unit-44040 | [`0xbd225c...f20f7b`](./contracts/berachain-80094/0xbd225c09e4b032e41d5e8aea5f81efff45f20f7b/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | berachain | unit-44041 | [`0xcb86b7...e141d4`](./contracts/berachain-80094/0xcb86b75ee6133d179a12d550b09fb3cdb1e141d4/) | ⚠️ Unaudited |
| WorldLibertyFinancialV3 | unknown | ethereum | unit-43987 | [`0xda5e19...7cbef6`](./contracts/ethereum-1/0xda5e1988097297dcdc1f90d4dfe7909e847cbef6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (101)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x003ca2...c2b97d` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x02942c...4522cc` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x07c28e...2624f8` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x08e866...22fe96` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x0f38bf...fe09fd` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x11a7e2...cb6bde` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x145637...0f90b2` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x14b83b...431c63` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x1506f8...72b99a` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x17c57c...23f13d` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x1b39f7...67e7bc` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x227455...812141` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x277118...382d7e` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x2adeaf...c5487b` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x2ae007...1d8d5d` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x2e9be8...36cec4` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x4232fc...ab708a` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x465e51...7ae191` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x4723da...8f812d` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x52d7bc...fd05f9` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x58142b...617d2a` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x63bd44...f6d451` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x64f7a2...39a249` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x660bd8...d88255` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x6727fe...73cfdc` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x67567f...c30ba6` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x694f7b...f5c8b4` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x6b68bd...2fe3ce` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x6d35bf...1b0a57` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x6d4013...232486` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x7b61cb...72bc6b` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x836b55...34e4e5` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x86cfc6...92470d` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x88a6d8...745866` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x8b808a...46197c` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x8d178f...5c8870` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x987afb...d8a7b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x9e97d8...e7a0d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x9ecbbc...d28ca2` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xa150ef...1d636e` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xa5f4ce...76e2e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xa75c21...55a1d4` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xa8f7e7...7599f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xb3f81b...81d0c3` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xb3ff98...664e77` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xb4f0eb...c4147d` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xb50bcd...fb928d` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xb59955...5139fe` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xb6b3ea...af4359` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xbf3179...586075` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xc06271...2b10bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xc28a4e...4f5faa` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xc2b66e...53de06` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xc90e5d...b95787` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xcb1b98...2af30d` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xcf359a...7bb11d` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xd44807...5036f3` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xd55afc...84d33e` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xd6a31b...1187e6` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xd82100...c56cfa` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xd86233...7269bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xdb168c...bf99d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xdc94f0...9355fd` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xdfb6ba...87b1e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xe09f85...4cdd45` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xf0c0db...53f781` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xf579b3...133d0f` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xf8b2c6...3d2dff` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xfee366...24daae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce4513...76b568` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x003ca2...c2b97d` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x07c28e...2624f8` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x0f38bf...fe09fd` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x1506f8...72b99a` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x1b39f7...67e7bc` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x2adeaf...c5487b` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x2ae007...1d8d5d` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x465e51...7ae191` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x52d7bc...fd05f9` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x58142b...617d2a` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x67567f...c30ba6` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x6d4013...232486` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x7b61cb...72bc6b` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x8d178f...5c8870` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x9e97d8...e7a0d3` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x9ecbbc...d28ca2` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xa150ef...1d636e` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xa75c21...55a1d4` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xa8f7e7...7599f7` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xb50bcd...fb928d` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xb6b3ea...af4359` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xc06271...2b10bd` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xc2b66e...53de06` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xcf359a...7bb11d` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xd6a31b...1187e6` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xd82100...c56cfa` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xdb168c...bf99d3` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xe09f85...4cdd45` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xf579b3...133d0f` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xf8b2c6...3d2dff` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xfee366...24daae` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Dolomite Margin - Cyfrin - 2023-08-23.pdf](https://github.com/dolomite-exchange/dolomite-margin/blob/master/docs/Dolomite%20Margin%20-%20Cyfrin%20-%202023-08-23.pdf) | Cyfrin | Audit | 2023-08 | stale | Direct | contract_name | 21 | high |
| [Dolomite Margin - SECBIT - 2021-08-02.pdf](https://github.com/dolomite-exchange/dolomite-margin/blob/master/docs/Dolomite%20Margin%20-%20SECBIT%20-%202021-08-02.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 4 | high |
| [The `DolomiteMargin Modules` [smart contracts](https://github.com/dolomite-exchange/dolomite-margin-modules) are were audited by [Zokyo]() and [Guardian Audits](https://guardianaudits.com/). Please be aware that this repository undergoes active development and the scope (and smart contracts) covered by each audit is different.&#x20;](https://zokyo.io/) | Guardian | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [* [Open Zeppelin **Audit Report**]()](https://www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10) | OpenZeppelin | Audit | 2019-04 | stale | Direct | contract_name | 0 | n/a |
| [* [**Bramah Systems Audit Report**]()](https://github.com/dolomite-exchange/dolomite-margin/blob/master/docs/dYdX%20Audit%20Report%20Bramah%20Systems.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [* [Zokyo Audit Report]()](https://github.com/dolomite-exchange/dolomite-margin-modules/blob/master/docs/Dolomite%20Protocol%20Modules%20-%20GLP%20%26%20Isolation%20Mode%20Report%20-%20Zokyo%20-%202023-04-19.pdf) | Guardian | Audit | 2023-04 | stale | Direct | contract_name | 1 | high |
| [* [Guardian Audits Report]()](https://github.com/GuardianAudits/Audits/blob/main/Dolomite/2024-01-11_Dolomite.pdf) | Guardian | Audit | 2024-01 | stale | Direct | contract_name | 21 | high |
| [* [Cyfrin Audit Report]()](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf) | Cyfrin | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [pol_audit_scope.md](https://github.com/dolomite-exchange/dolomite-margin-modules/blob/master/pol_audit_scope.md) | Pol | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2023-08-26-cyfrin-dolomite-margin.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2023-08-26-cyfrin-dolomite-margin.pdf) | Cyfrin | Audit | 2023-08 | stale | Direct | contract_name | 21 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x0a52bc...61d995`](./contracts/arbitrum-42161/0x0a52bcb532f59f6a37a9d3b5bc9ffd47e461d995/) | DolomiteERC20 | token | $7,400,028.30 | Verified native implementation with $7,400,028.30 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ecbbc...d28ca2`](./contracts/ethereum-1/0x9ecbbceb49c39a59d18b064b7049aac2d4d28ca2/) | AlwaysZeroInterestSetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1d9e10...68e3c3`](./contracts/arbitrum-42161/0x1d9e10b161ae54feabe1e3f71f658cac3468e3c3/) | ARBIsolationModeVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe43638...f5a099`](./contracts/arbitrum-42161/0xe43638797513ef7a6d326a95e8647d86d2f5a099/) | BorrowPositionProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf579b3...133d0f`](./contracts/ethereum-1/0xf579b345cda0860668b857de10abd62442133d0f/) | BorrowPositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf579b3...133d0f`](./contracts/base-8453/0xf579b345cda0860668b857de10abd62442133d0f/) | BorrowPositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8f7e7...7599f7`](./contracts/ethereum-1/0xa8f7e7a361de6a2172fcb2acce68bd21597599f7/) | CREATE3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8b2c6...3d2dff`](./contracts/ethereum-1/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | DepositWithdrawalRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xf8b2c6...3d2dff`](./contracts/mantle-5000/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | DepositWithdrawalRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf8b2c6...3d2dff`](./contracts/base-8453/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | DepositWithdrawalRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x0f8100...39a654`](./contracts/berachain-80094/0x0f81001ef0a83ecce5ccebf63eb302c70a39a654/) | DOLO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfee366...24daae`](./contracts/base-8453/0xfee366ceca2472b99d0a501b6b3d01351c24daae/) | DolomiteAccountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xfee366...24daae`](./contracts/berachain-80094/0xfee366ceca2472b99d0a501b6b3d01351c24daae/) | DolomiteAccountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e97d8...e7a0d3`](./contracts/ethereum-1/0x9e97d89c44c3f213db22593af98165a1b9e7a0d3/) | DolomiteMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xcf359a...7bb11d`](./contracts/mantle-5000/0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d/) | DolomiteOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf359a...7bb11d`](./contracts/ethereum-1/0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d/) | DolomiteOwnerV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2b66e...53de06`](./contracts/ethereum-1/0xc2b66e247dae5ee749ae1d827190115f3653de06/) | DolomiteOwnerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f38bf...fe09fd`](./contracts/ethereum-1/0x0f38bfbd9c1450bcf7a758e80e148ce78cfe09fd/) | DolomiteRegistryImplementation | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f8100...39a654`](./contracts/ethereum-1/0x0f81001ef0a83ecce5ccebf63eb302c70a39a654/) | DOLOWithOwnable | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d4013...232486`](./contracts/ethereum-1/0x6d40138c99f6d9116f738f44a0e6751a42232486/) | EventEmitterRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6d4013...232486`](./contracts/base-8453/0x6d40138c99f6d9116f738f44a0e6751a42232486/) | EventEmitterRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x6d4013...232486`](./contracts/berachain-80094/0x6d40138c99f6d9116f738f44a0e6751a42232486/) | EventEmitterRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ae007...1d8d5d`](./contracts/ethereum-1/0x2ae007882b91206942c70adc833a61ee531d8d5d/) | Expiry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b39f7...67e7bc`](./contracts/ethereum-1/0x1b39f7c19d952752f255536e72726a592167e7bc/) | ExpiryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc5e16f...8b2ac2`](./contracts/arbitrum-42161/0xc5e16f5009776ab645d6719b72962892428b2ac2/) | ExternalOARB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b61cb...72bc6b`](./contracts/ethereum-1/0x7b61cba306cfdb02493b94757143132b1b72bc6b/) | GenericTraderRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7b61cb...72bc6b`](./contracts/base-8453/0x7b61cba306cfdb02493b94757143132b1b72bc6b/) | GenericTraderRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x790ff5...b55ca5`](./contracts/arbitrum-42161/0x790ff506ac24b03a21f3d0019227447ae2b55ca5/) | GMXIsolationModeVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xec0f08...a04326`](./contracts/arbitrum-42161/0xec0f08bc015a0d0fba1df0b8b11d4779f5a04326/) | GravitaExternalVesterImplementationV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x76ac55...a33e44`](./contracts/arbitrum-42161/0x76ac5542ee033a15f78d1f8b4ad48af618a33e44/) | IsolationModeFreezableLiquidatorProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd73cfb...953e66`](./contracts/arbitrum-42161/0xd73cfb3f18dd39566374828c549cd67ad9953e66/) | IsolationModeTraderProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x14c60c...e33012`](./contracts/arbitrum-42161/0x14c60cb8301e879dfb9eecbebc013353b7e33012/) | JonesUSDCV2IsolationModeVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd82100...c56cfa`](./contracts/ethereum-1/0xd82100524392c7dbdd7502f136a226c8a4c56cfa/) | LiquidatorAssetRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb168c...bf99d3`](./contracts/ethereum-1/0xdb168cd1bcb63304991fc6e2013d0d87ddbf99d3/) | LiquidatorProxyV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x1506f8...72b99a`](./contracts/mantle-5000/0x1506f80d2fd5fbef2424573ec86e5481c972b99a/) | LiquidatorProxyV5 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x58142b...617d2a`](./contracts/ethereum-1/0x58142bd85e67c40a7c0ccf2e1eef6eb543617d2a/) | MultiCall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcbed80...5a6a93`](./contracts/arbitrum-42161/0xcbed801b4162bf2a19b06968663438b5165a6a93/) | OARB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x02e513...c89543`](./contracts/berachain-80094/0x02e513b5b54ee216bf836ceb471507488fc89543/) | ODOLO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xd88f47...9b99ef`](./contracts/berachain-80094/0xd88f473832b0403c7736ef237af5aff8759b99ef/) | OptionAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa150ef...1d636e`](./contracts/ethereum-1/0xa150ef2d5827db283321d15d62d5d07fb41d636e/) | OracleAggregatorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52d7bc...fd05f9`](./contracts/ethereum-1/0x52d7bcb650c591f6e8da90f797a1d0bfd8fd05f9/) | PartiallyDelayedMultiSig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfee366...24daae`](./contracts/ethereum-1/0xfee366ceca2472b99d0a501b6b3d01351c24daae/) | RegistryProxy | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xa3f079...838bc9`](./contracts/berachain-80094/0xa3f079292cc35ba64996fe0bce3049928a838bc9/) | RegularAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x66cd7d...73db67`](./contracts/arbitrum-42161/0x66cd7d0cc677f42f6662622c60a5e60ef573db67/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x79e6e9...a8a026`](./contracts/berachain-80094/0x79e6e932bf6686a4d357d7821e6e08835ba8a026/) | RollingClaims | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x7b61cb...72bc6b`](./contracts/mantle-5000/0x7b61cba306cfdb02493b94757143132b1b72bc6b/) | RouterProxy | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x7efd08...061176`](./contracts/berachain-80094/0x7efd088ae500598a19a242d6d48b9f7e0d061176/) | StrategicVestingClaims | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa9b377...7f6c6d`](./contracts/arbitrum-42161/0xa9b377b97395c4031750ce8e9397c00c577f6c6d/) | USDMRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x54267e...68a6f0`](./contracts/berachain-80094/0x54267e603646648e623a7a3c21dbbd4cd968a6f0/) | VeArt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x3e9b9a...2d2cec`](./contracts/berachain-80094/0x3e9b9a16743551da49b5e136c716bba7932d2cec/) | VeExternalVesterImplementationV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xa7b2c7...917ce9`](./contracts/berachain-80094/0xa7b2c7b13e7628b70dda64a257767f7292917ce9/) | VeFeeCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x3a025c...c06c07`](./contracts/berachain-80094/0x3a025c7fcf7632197ea82e64acd6ff53e1c06c07/) | VestingClaims | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xbd225c...f20f7b`](./contracts/berachain-80094/0xbd225c09e4b032e41d5e8aea5f81efff45f20f7b/) | VestingClaims | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xcb86b7...e141d4`](./contracts/berachain-80094/0xcb86b75ee6133d179a12d550b09fb3cdb1e141d4/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 127 |
| upstream | 6 |
| standard_library | 7 |
| needs_review | 41 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=313

Zero-match audit list:

- [13059] The `DolomiteMargin Modules` [smart contracts](https://github.com/dolomite-exchange/dolomite-margin-modules) are were audited by [Zokyo]() and [Guardian Audits](https://guardianaudits.com/). Please be aware that this repository undergoes active development and the scope (and smart contracts) covered by each audit is different.&#x20;
- [13060] * [Open Zeppelin **Audit Report**]()
- [13061] * [**Bramah Systems Audit Report**]()
- [13064] * [Cyfrin Audit Report]()
- [13065] pol_audit_scope.md

Fork inheritance lineage and inherited audits are included when available.
