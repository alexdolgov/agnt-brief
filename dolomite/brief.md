# Agentic Audit Brief: Dolomite

## Project Overview

- Project: Dolomite (`dolomite`)
- Website: [https://dolomite.io](https://dolomite.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.188Z
- Pipeline run: v2-pipeline-2026-06-30-2b719a-8edf
- Chains: arbitrum, base, berachain, ethereum, ink, mantle, polygon-zkevm
- Contract surface: 172 unique implementations (577 raw deployments)
- DeFi Llama TVL: $751,365,859.50
- On-chain TVL (included contracts): $7,000,963.71
- TVL by chain: Arbitrum $7,000,963.71

## Project Description

Lending. Structurally: 700 project-authored contract(s) across 5 chain(s); 4 ERC4626 vaults, 62 ERC20 tokens, 8 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 51 common project-authored base contract(s) (admin, hasstate, getters). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 904; live-surface contracts included: 574 (437 live, 137 unknown).
- Excluded by liveness: 330 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 15/124 (12.1%)
- Deployed-live implementations: 134 of 172 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 15/134
- Verified + Unaudited implementations: 119
- Verified by bytecode match: 0
- Unverified implementations: 38
- Unique implementations: 172
- Raw deployments: 577
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): $7,000,963.71
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 7 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 11 match-unverified
- Tier 1 coverage: 8.1% (Cyfrin, OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 7 | 5.2% | 2025-04 |
| Guardian | Tier 2 | 3 | 2.2% | 2024-01 |
| OpenZeppelin | Tier 1 | 3 | 2.2% | 2019-04 |
| unknown | Tier 2 | 2 | 1.5% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminImpl | unknown | mantle | n/a | 6 deployments: mantle [`0x18fa03...b0a6e1`](./contracts/mantle-5000/0x18fa033a317fbda23f41af91083ca3b9fab0a6e1/); arbitrum `0x23cc48...3c5fb6`; arbitrum `0x2a50ef...1d3431`; arbitrum `0x6b15c3...8403a2`; arbitrum `0x93fbbd...69a6ed`; arbitrum `0xb04ccb...17cfc9` | ✅ Audited |
| AsyncIsolationModeWrapperTraderImpl | unknown | arbitrum | n/a | 4 deployments: mantle `0x828f34...542811`; arbitrum [`0x51fbd4...07f2ec`](./contracts/arbitrum-42161/0x51fbd497b53b4ffe144399a3029479af2707f2ec/); arbitrum `0xca1e8e...0016d4`; arbitrum `0xfb5ce5...5fffe7` | ✅ Audited |
| BorrowPositionProxyV1 | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x67567f...c30ba6`](./contracts/ethereum-1/0x67567fce98a44745820069c37c395426f1c30ba6/); mantle `0x97a086...64b733`; base [`0x67567f...c30ba6`](./contracts/base-8453/0x67567fce98a44745820069c37c395426f1c30ba6/); berachain [`0x67567f...c30ba6`](./contracts/berachain-80094/0x67567fce98a44745820069c37c395426f1c30ba6/) | ✅ Audited |
| BorrowPositionProxyV2 | core_logic | arbitrum | n/a | 7 deployments: ethereum `0xc06271...2b10bd`; mantle `0xe99a7e...9dd793`; base `0xc06271...2b10bd`; arbitrum [`0x38e49a...4bf3a7`](./contracts/arbitrum-42161/0x38e49a617305101216ec6306e3a18065d14bf3a7/); arbitrum `0x9a7c4f...4cd29f`; arbitrum `0xb2b5d8...b6f3ec`; berachain `0xc06271...2b10bd` | ✅ Audited |
| DepositWithdrawalProxy | operational_periphery | arbitrum | n/a | 4 deployments: ethereum `0xd6a31b...1187e6`; arbitrum [`0x9fa142...61ca8f`](./contracts/arbitrum-42161/0x9fa142853af93d0cc3af986c27688d54ce61ca8f/); arbitrum `0xadb9d6...7b9594`; berachain `0xd6a31b...1187e6` | ✅ Audited |
| DolomiteAmmRouterProxy | unknown | arbitrum | n/a | 7 deployments: arbitrum [`0x03809a...8c44f0`](./contracts/arbitrum-42161/0x03809ae9a86061d8901f020f8778bce1ce8c44f0/); arbitrum `0x9d66b4...5cf77f`; arbitrum `0xa09b4a...2d5a08`; arbitrum `0xc28a4e...4f5faa`; arbitrum `0xc47e01...76f4bd`; arbitrum `0xd8f9c5...cbb632`; arbitrum `0xe6ef4f...917de8` | ✅ Audited |
| DolomiteMargin | unknown | ethereum | n/a | 8 deployments: ethereum [`0x003ca2...c2b97d`](./contracts/ethereum-1/0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d/); mantle `0xe6ef4f...917de8`; arbitrum `0x6a7698...8617af`; arbitrum `0x6bd780...409072`; arbitrum `0x9f7779...02e876`; arbitrum `0xb7576f...699e7e`; arbitrum `0xe44cef...df8601`; berachain [`0x003ca2...c2b97d`](./contracts/berachain-80094/0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d/) | ✅ Audited |
| Expiry | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2ae007...1d8d5d`](./contracts/ethereum-1/0x2ae007882b91206942c70adc833a61ee531d8d5d/); mantle `0x6df6db...889a25`; base [`0x2ae007...1d8d5d`](./contracts/base-8453/0x2ae007882b91206942c70adc833a61ee531d8d5d/); berachain [`0x2ae007...1d8d5d`](./contracts/berachain-80094/0x2ae007882b91206942c70adc833a61ee531d8d5d/) | ✅ Audited |
| GenericTraderProxyV1 | unknown | arbitrum | n/a | 10 deployments: ethereum `0xb50bcd...fb928d`; mantle `0x8a13c0...419d5c`; mantle `0xd432c3...d2edab`; base `0xb50bcd...fb928d`; arbitrum [`0x26cb28...8a7f7c`](./contracts/arbitrum-42161/0x26cb28c95c964b75fe6e118e267e6f17908a7f7c/); arbitrum `0x905f3a...f61d2b`; arbitrum `0xc1a485...fc5ebd`; arbitrum `0xe50c31...de83f6`; arbitrum `0xf6d327...2ca363`; berachain `0xb50bcd...fb928d` | ✅ Audited |
| GLPWrappedTokenUserVaultFactory | registry | arbitrum | n/a | [`0x34df4e...542698`](./contracts/arbitrum-42161/0x34df4e8062a8c8ae97e3382b452bd7bf60542698/) | ✅ Audited |
| GmxV2IsolationModeUnwrapperTraderV2 | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x0572e5...bed4ec`](./contracts/arbitrum-42161/0x0572e554784ea93312d18408aef2223431bed4ec/); arbitrum `0x106fda...ed0200`; arbitrum `0x2b9d14...852758`; arbitrum `0x333838...a5cfbe`; arbitrum `0x71fcbb...1157c4`; arbitrum `0x77a7dc...311317`; arbitrum `0xa1b50f...af63e5`; arbitrum `0xdfdbbd...f0d83c`; arbitrum `0xecd64f...f86034` | ✅ Audited |
| GmxV2IsolationModeVaultFactory | registry | arbitrum | n/a | 12 deployments: arbitrum [`0x18cb14...abc0e0`](./contracts/arbitrum-42161/0x18cb14564fbb015bd3439220d177799355abc0e0/); arbitrum `0x1beed3...e027c1`; arbitrum `0x1e8e8b...7050ef`; arbitrum `0x1ebb1c...bfd412`; arbitrum `0x20d51c...547e7e`; arbitrum `0x24c912...7c614d`; arbitrum `0x2c7991...a39329`; arbitrum `0x2d165a...3d7f92`; arbitrum `0x505582...a1b074`; arbitrum `0x5c99f6...45ed1c`; arbitrum `0xb15bbb...cec4d8`; arbitrum `0xc58764...b01c9b` | ✅ Audited |
| LiquidatorProxyV4WithGenericTrader | unknown | arbitrum | n/a | 10 deployments: ethereum `0x2adeaf...c5487b`; base `0x2adeaf...c5487b`; arbitrum [`0x1f30d4...11b573`](./contracts/arbitrum-42161/0x1f30d41694fe439280c67e5556a0694d2b11b573/); arbitrum `0x349756...ab9cb3`; arbitrum `0x7997a5...5bccdc`; arbitrum `0xac66e9...9ebd0b`; arbitrum `0xc5c857...08d869`; arbitrum `0xe409a9...3a8ea6`; arbitrum `0xfcfce8...ec79b9`; arbitrum `0xfd8444...3ab6d7` | ✅ Audited |
| OperationImpl | unknown | mantle | n/a | 6 deployments: mantle [`0x38ff2f...a07a7e`](./contracts/mantle-5000/0x38ff2f1b4f104ee4830d7a46adbf74fa7ea07a7e/); arbitrum `0x7908b4...124527`; arbitrum `0x8007d1...32e02c`; arbitrum `0xb131bf...24691b`; arbitrum `0xd6a797...4e9d3b`; arbitrum `0xe4d345...3250b9` | ✅ Audited |
| TransferProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x07c28e...2624f8`](./contracts/ethereum-1/0x07c28e60b28c98e09f5b69c9c473fe19062624f8/); base [`0x07c28e...2624f8`](./contracts/base-8453/0x07c28e60b28c98e09f5b69c9c473fe19062624f8/); berachain [`0x07c28e...2624f8`](./contracts/berachain-80094/0x07c28e60b28c98e09f5b69c9c473fe19062624f8/) | ✅ Audited |

### ⚠️ Verified + Unaudited (119)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DolomiteERC20 | token | arbitrum | n/a | 2 deployments: arbitrum [`0x0a52bc...61d995`](./contracts/arbitrum-42161/0x0a52bcb532f59f6a37a9d3b5bc9ffd47e461d995/); arbitrum `0x6dbd96...8228d6` | ⚠️ Unaudited |
| AlwaysZeroInterestSetter | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9ecbbc...d28ca2`](./contracts/ethereum-1/0x9ecbbceb49c39a59d18b064b7049aac2d4d28ca2/); base [`0x9ecbbc...d28ca2`](./contracts/base-8453/0x9ecbbceb49c39a59d18b064b7049aac2d4d28ca2/); berachain [`0x9ecbbc...d28ca2`](./contracts/berachain-80094/0x9ecbbceb49c39a59d18b064b7049aac2d4d28ca2/) | ⚠️ Unaudited |
| ARBIsolationModeTokenVaultV1 | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x0c5b39...235c0b`](./contracts/arbitrum-42161/0x0c5b395408082c8313ac33201a144ee561235c0b/); arbitrum `0x1897f8...2f21fa`; arbitrum `0x3ddc2a...aa9146`; arbitrum `0x44122d...48b99e`; arbitrum `0x48431f...366a70`; arbitrum `0x66a0fd...187dd3`; arbitrum `0xe2d45b...abf4e7`; arbitrum `0xe3cd64...2c0cd4` | ⚠️ Unaudited |
| ARBIsolationModeVaultFactory | registry | arbitrum | n/a | [`0x1d9e10...68e3c3`](./contracts/arbitrum-42161/0x1d9e10b161ae54feabe1e3f71f658cac3468e3c3/) | ⚠️ Unaudited |
| AsyncIsolationModeUnwrapperTraderImpl | unknown | mantle | n/a | 8 deployments: mantle [`0x079322...30accd`](./contracts/mantle-5000/0x07932299a91fe5a0c900d0987486115fbb30accd/); mantle `0x5231c3...8da12d`; mantle `0x86cfc6...92470d`; arbitrum `0x622d6b...521985`; arbitrum `0x7078f9...198426`; arbitrum `0xa880ad...9e24dc`; arbitrum `0xd15ff3...d1f31e`; arbitrum `0xdb0038...a445a7` | ⚠️ Unaudited |
| BorrowPositionProxy | core_logic | arbitrum | n/a | [`0xe43638...f5a099`](./contracts/arbitrum-42161/0xe43638797513ef7a6d326a95e8647d86d2f5a099/) | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | ethereum | n/a | [`0xf579b3...133d0f`](./contracts/ethereum-1/0xf579b345cda0860668b857de10abd62442133d0f/) | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | base | n/a | [`0xf579b3...133d0f`](./contracts/base-8453/0xf579b345cda0860668b857de10abd62442133d0f/) | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | arbitrum | n/a | [`0xf579b3...133d0f`](./contracts/arbitrum-42161/0xf579b345cda0860668b857de10abd62442133d0f/) | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | berachain | n/a | [`0xf579b3...133d0f`](./contracts/berachain-80094/0xf579b345cda0860668b857de10abd62442133d0f/) | ⚠️ Unaudited |
| CallImpl | unknown | arbitrum | n/a | 5 deployments: mantle `0x894ec1...022f4e`; arbitrum [`0x6727fe...73cfdc`](./contracts/arbitrum-42161/0x6727fe07ff5dce46f34d20fb1f9d62edda73cfdc/); arbitrum `0x94bab7...b1ca06`; arbitrum `0xcda182...464419`; arbitrum `0xfce308...2956c4` | ⚠️ Unaudited |
| ChainlinkPriceOracleV3 | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x465e51...7ae191`](./contracts/ethereum-1/0x465e5105e6106acd15e491953bb7b674247ae191/); base [`0x465e51...7ae191`](./contracts/base-8453/0x465e5105e6106acd15e491953bb7b674247ae191/); berachain [`0x465e51...7ae191`](./contracts/berachain-80094/0x465e5105e6106acd15e491953bb7b674247ae191/) | ⚠️ Unaudited |
| ChaosLabsPriceOracleV3 | operational_periphery | arbitrum | n/a | [`0xb02808...7db34e`](./contracts/arbitrum-42161/0xb02808f5db0e6926e00af4971abdf1da6c7db34e/) | ⚠️ Unaudited |
| ChroniclePriceOracleV3 | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0xb6b3ea...af4359`](./contracts/ethereum-1/0xb6b3eaf640707688186e7df34ac7d21fabaf4359/); base [`0xb6b3ea...af4359`](./contracts/base-8453/0xb6b3eaf640707688186e7df34ac7d21fabaf4359/); berachain [`0xb6b3ea...af4359`](./contracts/berachain-80094/0xb6b3eaf640707688186e7df34ac7d21fabaf4359/) | ⚠️ Unaudited |
| CREATE3Factory | registry | ethereum | n/a | 5 deployments: ethereum [`0xa8f7e7...7599f7`](./contracts/ethereum-1/0xa8f7e7a361de6a2172fcb2acce68bd21597599f7/); mantle [`0xa8f7e7...7599f7`](./contracts/mantle-5000/0xa8f7e7a361de6a2172fcb2acce68bd21597599f7/); base [`0xa8f7e7...7599f7`](./contracts/base-8453/0xa8f7e7a361de6a2172fcb2acce68bd21597599f7/); arbitrum [`0xa8f7e7...7599f7`](./contracts/arbitrum-42161/0xa8f7e7a361de6a2172fcb2acce68bd21597599f7/); berachain [`0xa8f7e7...7599f7`](./contracts/berachain-80094/0xa8f7e7a361de6a2172fcb2acce68bd21597599f7/) | ⚠️ Unaudited |
| DepositImpl | unknown | arbitrum | n/a | 7 deployments: mantle `0x23cc48...3c5fb6`; arbitrum [`0x22dd9f...084fc7`](./contracts/arbitrum-42161/0x22dd9f4393a3cc698d6c09ad14b0b9d515084fc7/); arbitrum `0x58067f...29caf5`; arbitrum `0x5b12e4...f264fb`; arbitrum `0x631faf...060f60`; arbitrum `0xc4d82e...ad76e1`; arbitrum `0xf884b5...803a33` | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | ethereum | n/a | [`0xf8b2c6...3d2dff`](./contracts/ethereum-1/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | mantle | n/a | [`0xf8b2c6...3d2dff`](./contracts/mantle-5000/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | base | n/a | [`0xf8b2c6...3d2dff`](./contracts/base-8453/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | arbitrum | n/a | [`0xf8b2c6...3d2dff`](./contracts/arbitrum-42161/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | berachain | n/a | [`0xf8b2c6...3d2dff`](./contracts/berachain-80094/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | ⚠️ Unaudited |
| DOLO | unknown | berachain | n/a | [`0x0f8100...39a654`](./contracts/berachain-80094/0x0f81001ef0a83ecce5ccebf63eb302c70a39a654/) | ⚠️ Unaudited |
| DolomiteAccountRegistry | registry | base | n/a | [`0xfee366...24daae`](./contracts/base-8453/0xfee366ceca2472b99d0a501b6b3d01351c24daae/) | ⚠️ Unaudited |
| DolomiteAccountRegistry | registry | berachain | n/a | [`0xfee366...24daae`](./contracts/berachain-80094/0xfee366ceca2472b99d0a501b6b3d01351c24daae/) | ⚠️ Unaudited |
| DolomiteERC20 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x709881...5ca585`](./contracts/arbitrum-42161/0x709881d9039d8e2f5ede3eec64657ecbfe5ca585/); arbitrum `0xb67534...010e4c` | ⚠️ Unaudited |
| DolomiteMigrator | unknown | arbitrum | n/a | 6 deployments: ethereum `0x9e97d8...e7a0d3`; mantle `0x481ef8...843cbd`; base `0x9e97d8...e7a0d3`; arbitrum [`0x32c327...d0f990`](./contracts/arbitrum-42161/0x32c327ae19e226e6643eace8bcec62cadcd0f990/); arbitrum `0xd5545e...f5afc9`; berachain `0x9e97d8...e7a0d3` | ⚠️ Unaudited |
| DolomiteOwner | unknown | mantle | n/a | 3 deployments: mantle [`0xcf359a...7bb11d`](./contracts/mantle-5000/0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d/); base [`0xcf359a...7bb11d`](./contracts/base-8453/0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d/); arbitrum [`0xcf359a...7bb11d`](./contracts/arbitrum-42161/0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d/) | ⚠️ Unaudited |
| DolomiteOwnerV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcf359a...7bb11d`](./contracts/ethereum-1/0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d/); berachain [`0xcf359a...7bb11d`](./contracts/berachain-80094/0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d/) | ⚠️ Unaudited |
| DolomiteOwnerV2 | unknown | ethereum | n/a | 5 deployments: ethereum [`0xc2b66e...53de06`](./contracts/ethereum-1/0xc2b66e247dae5ee749ae1d827190115f3653de06/); mantle [`0xc2b66e...53de06`](./contracts/mantle-5000/0xc2b66e247dae5ee749ae1d827190115f3653de06/); base [`0xc2b66e...53de06`](./contracts/base-8453/0xc2b66e247dae5ee749ae1d827190115f3653de06/); arbitrum [`0xc2b66e...53de06`](./contracts/arbitrum-42161/0xc2b66e247dae5ee749ae1d827190115f3653de06/); berachain [`0xc2b66e...53de06`](./contracts/berachain-80094/0xc2b66e247dae5ee749ae1d827190115f3653de06/) | ⚠️ Unaudited |
| DolomiteRegistryImplementation | registry | ethereum | n/a | [`0x0f38bf...fe09fd`](./contracts/ethereum-1/0x0f38bfbd9c1450bcf7a758e80e148ce78cfe09fd/) | ⚠️ Unaudited |
| DolomiteRegistryImplementation | registry | mantle | n/a | 4 deployments: mantle [`0x5b1e3b...3ea1ca`](./contracts/mantle-5000/0x5b1e3b0c577a37c82ebd03f543dc423bcd3ea1ca/); arbitrum `0x5e13c2...4f73b7`; arbitrum `0xaa8eac...c16f29`; arbitrum `0xdac933...21eb9c` | ⚠️ Unaudited |
| DolomiteRegistryImplementation | registry | mantle | n/a | [`0x7bec16...f7e09b`](./contracts/mantle-5000/0x7bec164cacd60d5cbcaa7b81d9da4cf6a0f7e09b/) | ⚠️ Unaudited |
| DOLOWithOwnable | governance | ethereum | n/a | 2 deployments: ethereum [`0x0f8100...39a654`](./contracts/ethereum-1/0x0f81001ef0a83ecce5ccebf63eb302c70a39a654/); arbitrum [`0x0f8100...39a654`](./contracts/arbitrum-42161/0x0f81001ef0a83ecce5ccebf63eb302c70a39a654/) | ⚠️ Unaudited |
| EventEmitterRegistry | registry | ethereum | n/a | [`0x6d4013...232486`](./contracts/ethereum-1/0x6d40138c99f6d9116f738f44a0e6751a42232486/) | ⚠️ Unaudited |
| EventEmitterRegistry | registry | mantle | n/a | 2 deployments: mantle [`0x250b15...d6b5d1`](./contracts/mantle-5000/0x250b152e33018623c8fb5ddf54ce1cdb99d6b5d1/); arbitrum `0xcc6f8f...2335b9` | ⚠️ Unaudited |
| EventEmitterRegistry | registry | mantle | n/a | [`0x778cea...fb827c`](./contracts/mantle-5000/0x778cea4ce43ba1a3ed6306ca692b8d9d3dfb827c/) | ⚠️ Unaudited |
| EventEmitterRegistry | registry | base | n/a | [`0x6d4013...232486`](./contracts/base-8453/0x6d40138c99f6d9116f738f44a0e6751a42232486/) | ⚠️ Unaudited |
| EventEmitterRegistry | registry | berachain | n/a | [`0x6d4013...232486`](./contracts/berachain-80094/0x6d40138c99f6d9116f738f44a0e6751a42232486/) | ⚠️ Unaudited |
| ExpiryProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1b39f7...67e7bc`](./contracts/ethereum-1/0x1b39f7c19d952752f255536e72726a592167e7bc/); base [`0x1b39f7...67e7bc`](./contracts/base-8453/0x1b39f7c19d952752f255536e72726a592167e7bc/); berachain [`0x1b39f7...67e7bc`](./contracts/berachain-80094/0x1b39f7c19d952752f255536e72726a592167e7bc/) | ⚠️ Unaudited |
| ExternalOARB | unknown | arbitrum | n/a | [`0xc5e16f...8b2ac2`](./contracts/arbitrum-42161/0xc5e16f5009776ab645d6719b72962892428b2ac2/) | ⚠️ Unaudited |
| GenericTraderProxyV1Lib | unknown | arbitrum | n/a | 5 deployments: mantle `0x6727fe...73cfdc`; mantle `0xec502f...817c4b`; arbitrum [`0x361b24...7c93d1`](./contracts/arbitrum-42161/0x361b242c2e4f7e002205c0d016b9ae0ac97c93d1/); arbitrum `0x49df0d...e8bf93`; arbitrum `0x5477f4...57df68` | ⚠️ Unaudited |
| GenericTraderRouter | adapter | ethereum | n/a | [`0x7b61cb...72bc6b`](./contracts/ethereum-1/0x7b61cba306cfdb02493b94757143132b1b72bc6b/) | ⚠️ Unaudited |
| GenericTraderRouter | adapter | base | n/a | [`0x7b61cb...72bc6b`](./contracts/base-8453/0x7b61cba306cfdb02493b94757143132b1b72bc6b/) | ⚠️ Unaudited |
| GenericTraderRouter | adapter | berachain | n/a | [`0x7b61cb...72bc6b`](./contracts/berachain-80094/0x7b61cba306cfdb02493b94757143132b1b72bc6b/) | ⚠️ Unaudited |
| GettersImpl | unknown | mantle | n/a | [`0x00c2b5...f86459`](./contracts/mantle-5000/0x00c2b5a97641380fd10e1f69f8219b2642f86459/) | ⚠️ Unaudited |
| GLPIsolationModeTokenVaultV2 | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x4600e1...1d256a`](./contracts/arbitrum-42161/0x4600e18f69cf1abfb2a4a8b388c635c6a71d256a/); arbitrum `0x56359d...6ad212`; arbitrum `0x6fde67...1d0831`; arbitrum `0x7bb95c...ba0c30`; arbitrum `0x898a4c...55d677`; arbitrum `0xf592b1...33bf07` | ⚠️ Unaudited |
| GMXIsolationModeTokenVaultV1 | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x0ddf58...c0527e`](./contracts/arbitrum-42161/0x0ddf58358f00165cc0463a296905278f2bc0527e/); arbitrum `0x13cdef...39ff37`; arbitrum `0x74e373...23ed27`; arbitrum `0x95f13c...5a26fe`; arbitrum `0xb5f5d2...456eab`; arbitrum `0xc43985...745c0f`; arbitrum `0xd28d59...e85b46`; arbitrum `0xd4cf0d...c402b8` | ⚠️ Unaudited |
| GMXIsolationModeVaultFactory | registry | arbitrum | n/a | [`0x790ff5...b55ca5`](./contracts/arbitrum-42161/0x790ff506ac24b03a21f3d0019227447ae2b55ca5/) | ⚠️ Unaudited |
| GmxV2IsolationModeTokenVaultV1 | unknown | arbitrum | n/a | 16 deployments: arbitrum [`0x1f975c...62f4dc`](./contracts/arbitrum-42161/0x1f975c95b32859d3d5b37aa85c44c44dd462f4dc/); arbitrum `0x264d5c...75c4ae`; arbitrum `0x4dd20f...3fbb99`; arbitrum `0x5799a6...5211dc`; arbitrum `0x742bb2...3f9e33`; arbitrum `0x7977d3...df6ce6`; arbitrum `0x818f98...440fb1`; arbitrum `0x924a11...a7e0a1`; arbitrum `0x94d181...769e8f`; arbitrum `0xb7919f...629094`; arbitrum `0xb93e57...2162c4`; arbitrum `0xbb86e9...d4524f`; arbitrum `0xbd9f93...933061`; arbitrum `0xc9f503...f2d931`; arbitrum `0xcfc1cd...c3deb1`; arbitrum `0xe72f23...35ed3d` | ⚠️ Unaudited |
| GmxV2IsolationModeUnwrapperTraderV2 | unknown | arbitrum | n/a | 13 deployments: arbitrum [`0x2d898d...8dfe9e`](./contracts/arbitrum-42161/0x2d898d5f9ef550a80bd27ca280ce93e2968dfe9e/); arbitrum `0x342ade...1ab916`; arbitrum `0x4f1272...330c10`; arbitrum `0x55261c...0d4390`; arbitrum `0x5627a9...a0873c`; arbitrum `0x7e0006...f83eff`; arbitrum `0x8690c2...346130`; arbitrum `0x9cd90d...805fd1`; arbitrum `0xa2e03b...c72d8b`; arbitrum `0xa39f1a...1ea0fd`; arbitrum `0xe87bb3...51e9f7`; arbitrum `0xe96151...76eb03`; arbitrum `0xeccd34...71eab6` | ⚠️ Unaudited |
| GmxV2IsolationModeWrapperTraderV2 | unknown | arbitrum | n/a | 11 deployments: arbitrum [`0x62f345...520526`](./contracts/arbitrum-42161/0x62f345c0f4482e9e45538a9ec78abbda8d520526/); arbitrum `0x66502c...d8a9db`; arbitrum `0x827246...e166ba`; arbitrum `0x971dcb...3f102b`; arbitrum `0xa3b49d...7f8898`; arbitrum `0xaf9ab8...4fbacf`; arbitrum `0xb19027...f2c9d9`; arbitrum `0xb321b2...654c18`; arbitrum `0xb51e13...de29aa`; arbitrum `0xc99f41...d9ad37`; arbitrum `0xcb62d5...03be7e` | ⚠️ Unaudited |
| GmxV2IsolationModeWrapperTraderV2 | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x6d1da0...013907`](./contracts/arbitrum-42161/0x6d1da0fcdf7b1351988f6d766c0b8c9c1b013907/); arbitrum `0x86bb92...f72b53`; arbitrum `0x8f6bc6...2e7bf2`; arbitrum `0xc50306...259ef0`; arbitrum `0xc58ccf...3e06d8` | ⚠️ Unaudited |
| GmxV2Library | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x38e254...386d65`](./contracts/arbitrum-42161/0x38e254e3c6ba4077de32e8612bf3112156386d65/); arbitrum `0x517b96...af74d6`; arbitrum `0x5e7b26...b2ab71`; arbitrum `0x6b8964...0229d9`; arbitrum `0x86c466...a75c59`; arbitrum `0xbafd53...874fb2`; arbitrum `0xd4f9fb...dd07e1`; arbitrum `0xd670f7...571454`; arbitrum `0xd7b6b9...b3a374` | ⚠️ Unaudited |
| GmxV2MarketTokenPriceOracle | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x14349a...a596a0`](./contracts/arbitrum-42161/0x14349a78224a45a6e3372e5205098ddc11a596a0/); arbitrum `0xf4596b...b54974` | ⚠️ Unaudited |
| GmxV2Registry | unknown | arbitrum | n/a | [`0xadc1a8...7316a8`](./contracts/arbitrum-42161/0xadc1a8ad79e55ab9e8569e497775b63e737316a8/) | ⚠️ Unaudited |
| GmxV2Registry | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xe62970...aae3f5`](./contracts/arbitrum-42161/0xe629707bd7cec7b39b3f02555d92af1eaaaae3f5/); arbitrum `0xf01dc6...203eb6` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | ethereum | n/a | [`0xa75c21...55a1d4`](./contracts/ethereum-1/0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | mantle | n/a | [`0xa75c21...55a1d4`](./contracts/mantle-5000/0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | n/a | [`0xa75c21...55a1d4`](./contracts/base-8453/0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | berachain | n/a | [`0xa75c21...55a1d4`](./contracts/berachain-80094/0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4/) | ⚠️ Unaudited |
| GravitaExternalVesterImplementationV2 | operational_periphery | arbitrum | n/a | [`0xec0f08...a04326`](./contracts/arbitrum-42161/0xec0f08bc015a0d0fba1df0b8b11d4779f5a04326/) | ⚠️ Unaudited |
| IsolationModeFreezableLiquidatorProxy | operational_periphery | arbitrum | n/a | 8 deployments: ethereum `0x8d178f...5c8870`; mantle `0xb1e10b...591980`; mantle `0xfed1f9...e259a4`; base `0x8d178f...5c8870`; arbitrum [`0x76ac55...a33e44`](./contracts/arbitrum-42161/0x76ac5542ee033a15f78d1f8b4ad48af618a33e44/); arbitrum `0xadea94...d16026`; arbitrum `0xfe4262...3f0ed0`; berachain `0x8d178f...5c8870` | ⚠️ Unaudited |
| IsolationModeTokenVaultMigrator | unknown | arbitrum | n/a | [`0xc9299e...590729`](./contracts/arbitrum-42161/0xc9299e8457e41b9415acc2658602bdf3aa590729/) | ⚠️ Unaudited |
| IsolationModeTokenVaultV1ActionsImpl | core_logic | mantle | n/a | 11 deployments: mantle [`0x017e2a...0bc4ec`](./contracts/mantle-5000/0x017e2a089ec5712bbdb8e7b2a0903269f40bc4ec/); mantle `0x8e2f95...462f6f`; arbitrum `0x2ccef1...7ff5d2`; arbitrum `0x7b9f5d...9057a7`; arbitrum `0xa2dfe6...ef7d21`; arbitrum `0xa665ef...b555cf`; arbitrum `0xadedda...f818c2`; arbitrum `0xb76cc1...954f3f`; arbitrum `0xc06e4d...569a6f`; arbitrum `0xd04d6a...7b21ef`; arbitrum `0xf3766d...a792dd` | ⚠️ Unaudited |
| IsolationModeTraderProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x039bc4...37362f`](./contracts/arbitrum-42161/0x039bc43fe68d76211b82707b1ee0960fc237362f/); arbitrum `0xd73cfb...953e66` | ⚠️ Unaudited |
| JonesIsolationModeTokenVaultMigrator | unknown | arbitrum | n/a | [`0x6b4ab9...c384a8`](./contracts/arbitrum-42161/0x6b4ab9b50f451f58f41a36bca95d61dd02c384a8/) | ⚠️ Unaudited |
| JonesUSDCIsolationModeTokenVaultV1 | unknown | arbitrum | n/a | 11 deployments: arbitrum [`0x1d3355...c0e3ca`](./contracts/arbitrum-42161/0x1d33550e923dfc4dbb01d90b32f36b3279c0e3ca/); arbitrum `0x1e61df...86b51a`; arbitrum `0x235c83...a240ff`; arbitrum `0x279682...6c9032`; arbitrum `0x27974a...15f995`; arbitrum `0x2eb274...be5bc4`; arbitrum `0x6c1e20...6ebf9b`; arbitrum `0x6ec8b4...2c6cee`; arbitrum `0x6f2a6b...1e482b`; arbitrum `0x702bbe...848e19`; arbitrum `0x81501e...ed1a70` | ⚠️ Unaudited |
| JonesUSDCIsolationModeTokenVaultV2 | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x504683...1b592b`](./contracts/arbitrum-42161/0x504683343495cbde1eed002ffe1744fed21b592b/); arbitrum `0x73bc3d...018dce`; arbitrum `0x782588...5ec74f`; arbitrum `0xc1e233...3345ce`; arbitrum `0xe01a3c...188aa1` | ⚠️ Unaudited |
| JonesUSDCIsolationModeUnwrapperTraderV2 | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x00e418...3bc8ce`](./contracts/arbitrum-42161/0x00e4180f25896229979a52d73be22963e93bc8ce/); arbitrum `0x61eb7f...4071ec`; arbitrum `0x76306f...3acb79`; arbitrum `0x7abe6b...6c878e`; arbitrum `0x87763a...31ac08`; arbitrum `0x8c24b0...0fb6e0`; arbitrum `0xa8a936...204045`; arbitrum `0xf525be...3f6971` | ⚠️ Unaudited |
| JonesUSDCIsolationModeUnwrapperTraderV2ForLiquidation | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x17dda7...4e6c93`](./contracts/arbitrum-42161/0x17dda7914de4d2b6c94edf59c3e7049ce64e6c93/); arbitrum `0x8ba70c...48aa7c`; arbitrum `0x9750d8...9c9330`; arbitrum `0xcc7ac4...fbec5c`; arbitrum `0xdba4fa...c5d349`; arbitrum `0xdf088c...4dbf0e` | ⚠️ Unaudited |
| JonesUSDCIsolationModeWrapperTraderV2 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x362b6b...cb5063`](./contracts/arbitrum-42161/0x362b6b5f9e78bd5c584e72bfbdde2c1fb2cb5063/); arbitrum `0x8427d5...238767`; arbitrum `0xeff8a5...e2d6f0` | ⚠️ Unaudited |
| JonesUSDCRegistry | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x2b989e...945186`](./contracts/arbitrum-42161/0x2b989e06e1887300c7bb01a713d7c899df945186/); arbitrum `0x482c1b...612b77`; arbitrum `0xdeeaee...63092b` | ⚠️ Unaudited |
| JonesUSDCRegistry | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xea0030...069295`](./contracts/arbitrum-42161/0xea0030692310330f9f844056303519694c069295/); arbitrum `0xef85d5...be7b65` | ⚠️ Unaudited |
| JonesUSDCTransformer | unknown | arbitrum | n/a | [`0x370a47...f10cc3`](./contracts/arbitrum-42161/0x370a47aff17249d010db21db53f3691190f10cc3/) | ⚠️ Unaudited |
| JonesUSDCV2IsolationModeVaultFactory | registry | arbitrum | n/a | [`0x14c60c...e33012`](./contracts/arbitrum-42161/0x14c60cb8301e879dfb9eecbebc013353b7e33012/) | ⚠️ Unaudited |
| LiquidateOrVaporizeImpl | unknown | arbitrum | n/a | 8 deployments: mantle `0xb131bf...24691b`; arbitrum [`0x20fad8...b8fa3b`](./contracts/arbitrum-42161/0x20fad8614e40e486c79f26b1c053873119b8fa3b/); arbitrum `0x452ca7...6dee59`; arbitrum `0x5f2eff...f781a2`; arbitrum `0x63bd44...f6d451`; arbitrum `0x78cf9b...1b8720`; arbitrum `0xa222d4...9f5d12`; arbitrum `0xce29b2...d781a0` | ⚠️ Unaudited |
| LiquidatorAssetRegistry | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0xd82100...c56cfa`](./contracts/ethereum-1/0xd82100524392c7dbdd7502f136a226c8a4c56cfa/); base [`0xd82100...c56cfa`](./contracts/base-8453/0xd82100524392c7dbdd7502f136a226c8a4c56cfa/); berachain [`0xd82100...c56cfa`](./contracts/berachain-80094/0xd82100524392c7dbdd7502f136a226c8a4c56cfa/) | ⚠️ Unaudited |
| LiquidatorProxyV1 | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0xdb168c...bf99d3`](./contracts/ethereum-1/0xdb168cd1bcb63304991fc6e2013d0d87ddbf99d3/); base [`0xdb168c...bf99d3`](./contracts/base-8453/0xdb168cd1bcb63304991fc6e2013d0d87ddbf99d3/); berachain [`0xdb168c...bf99d3`](./contracts/berachain-80094/0xdb168cd1bcb63304991fc6e2013d0d87ddbf99d3/) | ⚠️ Unaudited |
| LiquidatorProxyV1WithAmm | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x43baa7...7bc198`](./contracts/arbitrum-42161/0x43baa743edb127fe01b655a34193535c637bc198/); arbitrum `0x6e106a...617f77`; arbitrum `0x7a20b3...aaa8c6`; arbitrum `0xaa652e...9bdf63`; arbitrum `0xb38768...febe0b`; arbitrum `0xb3ff98...664e77`; arbitrum `0xe1d717...a6f719`; arbitrum `0xe6b389...6dfd5f`; arbitrum `0xf61a26...41f1f2` | ⚠️ Unaudited |
| LiquidatorProxyV2WithExternalLiquidity | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x1bbc20...f8d3ba`](./contracts/arbitrum-42161/0x1bbc201f68f209a054e3e86891401d7255f8d3ba/); arbitrum `0xcc24ca...77f368`; arbitrum `0xf53f5c...978fb1` | ⚠️ Unaudited |
| LiquidatorProxyV3WithLiquidityToken | unknown | arbitrum | n/a | [`0x0c3588...7fcc02`](./contracts/arbitrum-42161/0x0c35882b90bc7da4d499553a8c681ce4e17fcc02/) | ⚠️ Unaudited |
| LiquidatorProxyV5 | operational_periphery | mantle | n/a | 2 deployments: mantle [`0x1506f8...72b99a`](./contracts/mantle-5000/0x1506f80d2fd5fbef2424573ec86e5481c972b99a/); base [`0x1506f8...72b99a`](./contracts/base-8453/0x1506f80d2fd5fbef2424573ec86e5481c972b99a/) | ⚠️ Unaudited |
| MineralToken | unknown | arbitrum | n/a | [`0xd81bc9...7401ad`](./contracts/arbitrum-42161/0xd81bc90e4f329be8519cefe00b55bb1c327401ad/) | ⚠️ Unaudited |
| MNTIsolationModeTokenVaultV1 | core_logic | mantle | n/a | [`0x660bd8...d88255`](./contracts/mantle-5000/0x660bd80f67aa9c7bfb82933e1068f8f616d88255/) | ⚠️ Unaudited |
| MultiCall | periphery | ethereum | n/a | 3 deployments: ethereum [`0x58142b...617d2a`](./contracts/ethereum-1/0x58142bd85e67c40a7c0ccf2e1eef6eb543617d2a/); base [`0x58142b...617d2a`](./contracts/base-8453/0x58142bd85e67c40a7c0ccf2e1eef6eb543617d2a/); berachain [`0x58142b...617d2a`](./contracts/berachain-80094/0x58142bd85e67c40a7c0ccf2e1eef6eb543617d2a/) | ⚠️ Unaudited |
| OARB | unknown | arbitrum | n/a | [`0xcbed80...5a6a93`](./contracts/arbitrum-42161/0xcbed801b4162bf2a19b06968663438b5165a6a93/) | ⚠️ Unaudited |
| ODOLO | unknown | berachain | n/a | [`0x02e513...c89543`](./contracts/berachain-80094/0x02e513b5b54ee216bf836ceb471507488fc89543/) | ⚠️ Unaudited |
| OdosAggregatorTrader | unknown | mantle | n/a | [`0xdce03d...39d379`](./contracts/mantle-5000/0xdce03d31d9ad29c3785e61d6f85b31ab3239d379/) | ⚠️ Unaudited |
| OptionAirdrop | operational_periphery | berachain | n/a | [`0xd88f47...9b99ef`](./contracts/berachain-80094/0xd88f473832b0403c7736ef237af5aff8759b99ef/) | ⚠️ Unaudited |
| OracleAggregatorV2 | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0xa150ef...1d636e`](./contracts/ethereum-1/0xa150ef2d5827db283321d15d62d5d07fb41d636e/); base [`0xa150ef...1d636e`](./contracts/base-8453/0xa150ef2d5827db283321d15d62d5d07fb41d636e/); berachain [`0xa150ef...1d636e`](./contracts/berachain-80094/0xa150ef2d5827db283321d15d62d5d07fb41d636e/) | ⚠️ Unaudited |
| PartiallyDelayedMultiSig | governance | ethereum | n/a | [`0x52d7bc...fd05f9`](./contracts/ethereum-1/0x52d7bcb650c591f6e8da90f797a1d0bfd8fd05f9/) | ⚠️ Unaudited |
| PendleRegistry | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x154de4...cad2ac`](./contracts/arbitrum-42161/0x154de437ccea5e997c303bdb4eca4de2accad2ac/); arbitrum `0x5c451e...79fc1d`; arbitrum `0xc822de...077f5d` | ⚠️ Unaudited |
| PlutusVaultGLPIsolationModeTokenVaultV1 | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x105df7...7a2e11`](./contracts/arbitrum-42161/0x105df7ca44dda2a4934473a564e075f5fe7a2e11/); arbitrum `0x452a5d...c6dc8d`; arbitrum `0x4bcab4...b6bf9f`; arbitrum `0x881079...424297` | ⚠️ Unaudited |
| PtGLPTransformer | unknown | arbitrum | n/a | [`0xc410e7...fac564`](./contracts/arbitrum-42161/0xc410e7d4592dbde2aab26dd28ff0bf6937fac564/) | ⚠️ Unaudited |
| RedstonePriceOracleV3 | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0xe09f85...4cdd45`](./contracts/ethereum-1/0xe09f85b284c177c8325c5ccaeae30a14494cdd45/); base [`0xe09f85...4cdd45`](./contracts/base-8453/0xe09f85b284c177c8325c5ccaeae30a14494cdd45/); berachain [`0xe09f85...4cdd45`](./contracts/berachain-80094/0xe09f85b284c177c8325c5ccaeae30a14494cdd45/) | ⚠️ Unaudited |
| RegistryProxy | unknown | arbitrum | n/a | 3 deployments: ethereum `0xfee366...24daae`; arbitrum [`0x1572ba...d5b733`](./contracts/arbitrum-42161/0x1572ba6f148240ee2205d38de91c23d644d5b733/); arbitrum `0x33d83d...eb5315` | ⚠️ Unaudited |
| RegularAirdrop | operational_periphery | berachain | n/a | [`0xa3f079...838bc9`](./contracts/berachain-80094/0xa3f079292cc35ba64996fe0bce3049928a838bc9/) | ⚠️ Unaudited |
| RewardsDistributor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2e3d10...728b4b`](./contracts/arbitrum-42161/0x2e3d10cc42227af0ce908f00c76ffe1de1728b4b/); arbitrum `0x66cd7d...73db67` | ⚠️ Unaudited |
| RollingClaims | unknown | berachain | n/a | [`0x79e6e9...a8a026`](./contracts/berachain-80094/0x79e6e932bf6686a4d357d7821e6e08835ba8a026/) | ⚠️ Unaudited |
| RouterProxy | adapter | mantle | n/a | 2 deployments: mantle [`0x7b61cb...72bc6b`](./contracts/mantle-5000/0x7b61cba306cfdb02493b94757143132b1b72bc6b/); mantle `0xf579b3...133d0f` | ⚠️ Unaudited |
| SafeDelegateCallLib | unknown | mantle | n/a | 2 deployments: mantle [`0x52d57f...41a5a9`](./contracts/mantle-5000/0x52d57f0b5df4050d9b44181284e06c6d7341a5a9/); arbitrum `0xaa6509...8bb425` | ⚠️ Unaudited |
| SafeL2 | unknown | arbitrum | n/a | [`0xa75c21...55a1d4`](./contracts/arbitrum-42161/0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4/) | ⚠️ Unaudited |
| StrategicVestingClaims | operational_periphery | berachain | n/a | [`0x7efd08...061176`](./contracts/berachain-80094/0x7efd088ae500598a19a242d6d48b9f7e0d061176/) | ⚠️ Unaudited |
| TradeImpl | unknown | arbitrum | n/a | 5 deployments: mantle `0xb7576f...699e7e`; arbitrum [`0x1e0be7...cf56d7`](./contracts/arbitrum-42161/0x1e0be797880d3db0ce503cd40429a3a9f1cf56d7/); arbitrum `0x2fe6f5...127642`; arbitrum `0x7d157f...a19f58`; arbitrum `0xdce03d...39d379` | ⚠️ Unaudited |
| TransferImpl | unknown | mantle | n/a | 5 deployments: mantle [`0x21f683...a1cce8`](./contracts/mantle-5000/0x21f683ede5eb0e8a6f1768cc7dbaba0dfca1cce8/); arbitrum `0x2f503b...f9ba90`; arbitrum `0x52d57f...41a5a9`; arbitrum `0xf691b8...4eefa4`; arbitrum `0xfed1f9...e259a4` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | mantle | n/a | [`0x836b55...34e4e5`](./contracts/mantle-5000/0x836b557cf9ef29fcf49c776841191782df34e4e5/) | ⚠️ Unaudited |
| USDMRouter | adapter | arbitrum | n/a | [`0xa9b377...7f6c6d`](./contracts/arbitrum-42161/0xa9b377b97395c4031750ce8e9397c00c577f6c6d/) | ⚠️ Unaudited |
| VeArt | unknown | berachain | n/a | [`0x54267e...68a6f0`](./contracts/berachain-80094/0x54267e603646648e623a7a3c21dbbd4cd968a6f0/) | ⚠️ Unaudited |
| VeExternalVesterImplementationV2 | operational_periphery | berachain | n/a | [`0x3e9b9a...2d2cec`](./contracts/berachain-80094/0x3e9b9a16743551da49b5e136c716bba7932d2cec/) | ⚠️ Unaudited |
| VeFeeCalculator | unknown | berachain | n/a | [`0xa7b2c7...917ce9`](./contracts/berachain-80094/0xa7b2c7b13e7628b70dda64a257767f7292917ce9/) | ⚠️ Unaudited |
| VesterImplementationLibForV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x174860...833f16`](./contracts/arbitrum-42161/0x174860044994694943117b597486071df4833f16/); arbitrum `0xd2b57e...02e682` | ⚠️ Unaudited |
| VesterImplementationV2 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x2960c1...36157d`](./contracts/arbitrum-42161/0x2960c15a51bf8b190b579e6bb2f74c75e136157d/); arbitrum `0x36416f...d73a02`; arbitrum `0xdb3e6b...8172a5` | ⚠️ Unaudited |
| VestingClaims | operational_periphery | berachain | n/a | [`0x3a025c...c06c07`](./contracts/berachain-80094/0x3a025c7fcf7632197ea82e64acd6ff53e1c06c07/) | ⚠️ Unaudited |
| VestingClaims | operational_periphery | berachain | n/a | [`0xbd225c...f20f7b`](./contracts/berachain-80094/0xbd225c09e4b032e41d5e8aea5f81efff45f20f7b/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | berachain | n/a | [`0xcb86b7...e141d4`](./contracts/berachain-80094/0xcb86b75ee6133d179a12d550b09fb3cdb1e141d4/) | ⚠️ Unaudited |
| WithdrawalImpl | unknown | arbitrum | n/a | 5 deployments: mantle `0x77694d...457d40`; arbitrum [`0x017e2a...0bc4ec`](./contracts/arbitrum-42161/0x017e2a089ec5712bbdb8e7b2a0903269f40bc4ec/); arbitrum `0x43c2fd...4ab4ae`; arbitrum `0x8dc7c0...a88332`; arbitrum `0xa8c900...435da5` | ⚠️ Unaudited |
| WorldLibertyFinancialSale | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4a142d...f9c3ca`](./contracts/ethereum-1/0x4a142d62fb33e21a081863ae19ce3fc4ecf9c3ca/); ethereum `0xe217e1...afad10` | ⚠️ Unaudited |
| WorldLibertyFinancialSale | unknown | ethereum | n/a | 2 deployments: ethereum [`0x76ef8d...c51a1e`](./contracts/ethereum-1/0x76ef8d8b7ab2d572932091c03b9ef11ba2c51a1e/); ethereum `0xac2ea4...560c22` | ⚠️ Unaudited |
| WorldLibertyFinancialV3 | unknown | ethereum | n/a | [`0xda5e19...7cbef6`](./contracts/ethereum-1/0xda5e1988097297dcdc1f90d4dfe7909e847cbef6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (38)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon-zkevm | n/a | 100 deployments: polygon-zkevm `0x003ca2...c2b97d`; polygon-zkevm `0x02942c...4522cc`; polygon-zkevm `0x07c28e...2624f8`; polygon-zkevm `0x08e866...22fe96`; polygon-zkevm `0x0f38bf...fe09fd`; polygon-zkevm `0x11a7e2...cb6bde`; polygon-zkevm `0x145637...0f90b2`; polygon-zkevm `0x14b83b...431c63`; polygon-zkevm `0x1506f8...72b99a`; polygon-zkevm `0x17c57c...23f13d`; polygon-zkevm `0x1b39f7...67e7bc`; polygon-zkevm `0x227455...812141`; polygon-zkevm `0x277118...382d7e`; polygon-zkevm `0x2adeaf...c5487b`; polygon-zkevm `0x2ae007...1d8d5d`; polygon-zkevm `0x2e9be8...36cec4`; polygon-zkevm `0x4232fc...ab708a`; polygon-zkevm `0x465e51...7ae191`; polygon-zkevm `0x4723da...8f812d`; polygon-zkevm `0x52d7bc...fd05f9`; polygon-zkevm `0x58142b...617d2a`; polygon-zkevm `0x63bd44...f6d451`; polygon-zkevm `0x64f7a2...39a249`; polygon-zkevm `0x660bd8...d88255`; polygon-zkevm `0x6727fe...73cfdc`; polygon-zkevm `0x67567f...c30ba6`; polygon-zkevm `0x694f7b...f5c8b4`; polygon-zkevm `0x6b68bd...2fe3ce`; polygon-zkevm `0x6d35bf...1b0a57`; polygon-zkevm `0x6d4013...232486`; polygon-zkevm `0x7b61cb...72bc6b`; polygon-zkevm `0x836b55...34e4e5`; polygon-zkevm `0x86cfc6...92470d`; polygon-zkevm `0x88a6d8...745866`; polygon-zkevm `0x8b808a...46197c`; polygon-zkevm `0x8d178f...5c8870`; polygon-zkevm `0x987afb...d8a7b1`; polygon-zkevm `0x9e97d8...e7a0d3`; polygon-zkevm `0x9ecbbc...d28ca2`; polygon-zkevm `0xa150ef...1d636e`; polygon-zkevm `0xa5f4ce...76e2e9`; polygon-zkevm `0xa75c21...55a1d4`; polygon-zkevm `0xa8f7e7...7599f7`; polygon-zkevm `0xb3f81b...81d0c3`; polygon-zkevm `0xb3ff98...664e77`; polygon-zkevm `0xb4f0eb...c4147d`; polygon-zkevm `0xb50bcd...fb928d`; polygon-zkevm `0xb59955...5139fe`; polygon-zkevm `0xb6b3ea...af4359`; polygon-zkevm `0xbf3179...586075`; polygon-zkevm `0xc06271...2b10bd`; polygon-zkevm `0xc28a4e...4f5faa`; polygon-zkevm `0xc2b66e...53de06`; polygon-zkevm `0xc90e5d...b95787`; polygon-zkevm `0xcb1b98...2af30d`; polygon-zkevm `0xcf359a...7bb11d`; polygon-zkevm `0xd44807...5036f3`; polygon-zkevm `0xd55afc...84d33e`; polygon-zkevm `0xd6a31b...1187e6`; polygon-zkevm `0xd82100...c56cfa`; polygon-zkevm `0xd86233...7269bf`; polygon-zkevm `0xdb168c...bf99d3`; polygon-zkevm `0xdc94f0...9355fd`; polygon-zkevm `0xdfb6ba...87b1e8`; polygon-zkevm `0xe09f85...4cdd45`; polygon-zkevm `0xf0c0db...53f781`; polygon-zkevm `0xf579b3...133d0f`; polygon-zkevm `0xf8b2c6...3d2dff`; polygon-zkevm `0xfee366...24daae`; ink `0x003ca2...c2b97d`; ink `0x07c28e...2624f8`; ink `0x0f38bf...fe09fd`; ink `0x1506f8...72b99a`; ink `0x1b39f7...67e7bc`; ink `0x2adeaf...c5487b`; ink `0x2ae007...1d8d5d`; ink `0x465e51...7ae191`; ink `0x52d7bc...fd05f9`; ink `0x58142b...617d2a`; ink `0x67567f...c30ba6`; ink `0x6d4013...232486`; ink `0x7b61cb...72bc6b`; ink `0x8d178f...5c8870`; ink `0x9e97d8...e7a0d3`; ink `0x9ecbbc...d28ca2`; ink `0xa150ef...1d636e`; ink `0xa75c21...55a1d4`; ink `0xa8f7e7...7599f7`; ink `0xb50bcd...fb928d`; ink `0xb6b3ea...af4359`; ink `0xc06271...2b10bd`; ink `0xc2b66e...53de06`; ink `0xcf359a...7bb11d`; ink `0xd6a31b...1187e6`; ink `0xd82100...c56cfa`; ink `0xdb168c...bf99d3`; ink `0xe09f85...4cdd45`; ink `0xf579b3...133d0f`; ink `0xf8b2c6...3d2dff`; ink `0xfee366...24daae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x003ca2...c2b97d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x14b83b...431c63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1c2a28...4b5edb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1ec7c8...c5ead5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x250b15...d6b5d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2c640b...24b77d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2f9ba4...2eeeaa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x481ef8...843cbd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4a1e8f...026cd8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5231c3...8da12d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x567eff...257fa2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5b1e3b...3ea1ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x685369...47297a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ff359...004da9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7656b1...0c6c63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x778cea...fb827c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7bec16...f7e09b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x801368...85f311` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x828f34...542811` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a8021...d6f879` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8d741f...38ce1f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9101dd...ddd6b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x994ebc...cefa96` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9c356e...dd5022` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaf462f...8c9329` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb3f81b...81d0c3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbf25e1...d503e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc61e4d...eb064e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcafd36...f1e2ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xccc43e...103d50` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce4513...76b568` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd956b4...f3702c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdf968d...98b3b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdfb6ba...87b1e8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe66d14...984921` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe98928...222883` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xffb4b5...ec5c31` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Dolomite Margin - Cyfrin - 2023-08-23.pdf](https://github.com/dolomite-exchange/dolomite-margin/blob/master/docs/Dolomite%20Margin%20-%20Cyfrin%20-%202023-08-23.pdf) | Cyfrin | Audit | 2023-08 | stale | Direct | contract_name | 6 | n/a |
| [Dolomite Margin - SECBIT - 2021-08-02.pdf](https://github.com/dolomite-exchange/dolomite-margin/blob/master/docs/Dolomite%20Margin%20-%20SECBIT%20-%202021-08-02.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 2 | n/a |
| [zokyo.io](https://zokyo.io/) | Guardian | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10](https://www.openzeppelin.com/news/solo-margin-protocol-audit-30ac2aaf6b10) | OpenZeppelin | Audit | 2019-04 | stale | Direct | contract_name | 2 | high |
| [dYdX Audit Report Bramah Systems.pdf](https://github.com/dolomite-exchange/dolomite-margin/blob/master/docs/dYdX%20Audit%20Report%20Bramah%20Systems.pdf) | OpenZeppelin | Audit | 2019-02 | stale | Direct | contract_name | 6 | high |
| [Dolomite Protocol Modules - GLP & Isolation Mode Report - Zokyo - 2023-04-19.pdf](https://github.com/dolomite-exchange/dolomite-margin-modules/blob/master/docs/Dolomite%20Protocol%20Modules%20-%20GLP%20%26%20Isolation%20Mode%20Report%20-%20Zokyo%20-%202023-04-19.pdf) | Guardian | Audit | 2023-04 | stale | Direct | contract_name | 1 | n/a |
| [2024-01-11_Dolomite.pdf](https://github.com/GuardianAudits/Audits/blob/main/Dolomite/2024-01-11_Dolomite.pdf) | Guardian | Audit | 2024-01 | stale | Direct | contract_name | 2 | n/a |
| [2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-04-24-cyfrin-dolomite-POLVaults-v2.0.pdf) | Cyfrin | Audit | 2025-04 | aging | Direct | contract_name | 1 | high |
| [pol_audit_scope.md](https://github.com/dolomite-exchange/dolomite-margin-modules/blob/master/pol_audit_scope.md) | Pol | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2023-08-26-cyfrin-dolomite-margin.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2023-08-26-cyfrin-dolomite-margin.pdf) | Cyfrin | Audit | 2023-08 | stale | Direct | contract_name | 6 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x0a52bc...61d995`](./contracts/arbitrum-42161/0x0a52bcb532f59f6a37a9d3b5bc9ffd47e461d995/) | DolomiteERC20 | token | $7,000,963.71 | Verified native implementation with $7,000,963.71 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ecbbc...d28ca2`](./contracts/ethereum-1/0x9ecbbceb49c39a59d18b064b7049aac2d4d28ca2/) | AlwaysZeroInterestSetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0c5b39...235c0b`](./contracts/arbitrum-42161/0x0c5b395408082c8313ac33201a144ee561235c0b/) | ARBIsolationModeTokenVaultV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1d9e10...68e3c3`](./contracts/arbitrum-42161/0x1d9e10b161ae54feabe1e3f71f658cac3468e3c3/) | ARBIsolationModeVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x079322...30accd`](./contracts/mantle-5000/0x07932299a91fe5a0c900d0987486115fbb30accd/) | AsyncIsolationModeUnwrapperTraderImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe43638...f5a099`](./contracts/arbitrum-42161/0xe43638797513ef7a6d326a95e8647d86d2f5a099/) | BorrowPositionProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf579b3...133d0f`](./contracts/ethereum-1/0xf579b345cda0860668b857de10abd62442133d0f/) | BorrowPositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf579b3...133d0f`](./contracts/base-8453/0xf579b345cda0860668b857de10abd62442133d0f/) | BorrowPositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf579b3...133d0f`](./contracts/arbitrum-42161/0xf579b345cda0860668b857de10abd62442133d0f/) | BorrowPositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xf579b3...133d0f`](./contracts/berachain-80094/0xf579b345cda0860668b857de10abd62442133d0f/) | BorrowPositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6727fe...73cfdc`](./contracts/arbitrum-42161/0x6727fe07ff5dce46f34d20fb1f9d62edda73cfdc/) | CallImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb02808...7db34e`](./contracts/arbitrum-42161/0xb02808f5db0e6926e00af4971abdf1da6c7db34e/) | ChaosLabsPriceOracleV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8f7e7...7599f7`](./contracts/ethereum-1/0xa8f7e7a361de6a2172fcb2acce68bd21597599f7/) | CREATE3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x22dd9f...084fc7`](./contracts/arbitrum-42161/0x22dd9f4393a3cc698d6c09ad14b0b9d515084fc7/) | DepositImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8b2c6...3d2dff`](./contracts/ethereum-1/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | DepositWithdrawalRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xf8b2c6...3d2dff`](./contracts/mantle-5000/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | DepositWithdrawalRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf8b2c6...3d2dff`](./contracts/base-8453/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | DepositWithdrawalRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf8b2c6...3d2dff`](./contracts/arbitrum-42161/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | DepositWithdrawalRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xf8b2c6...3d2dff`](./contracts/berachain-80094/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | DepositWithdrawalRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x0f8100...39a654`](./contracts/berachain-80094/0x0f81001ef0a83ecce5ccebf63eb302c70a39a654/) | DOLO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfee366...24daae`](./contracts/base-8453/0xfee366ceca2472b99d0a501b6b3d01351c24daae/) | DolomiteAccountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xfee366...24daae`](./contracts/berachain-80094/0xfee366ceca2472b99d0a501b6b3d01351c24daae/) | DolomiteAccountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x709881...5ca585`](./contracts/arbitrum-42161/0x709881d9039d8e2f5ede3eec64657ecbfe5ca585/) | DolomiteERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x32c327...d0f990`](./contracts/arbitrum-42161/0x32c327ae19e226e6643eace8bcec62cadcd0f990/) | DolomiteMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xcf359a...7bb11d`](./contracts/mantle-5000/0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d/) | DolomiteOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf359a...7bb11d`](./contracts/ethereum-1/0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d/) | DolomiteOwnerV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2b66e...53de06`](./contracts/ethereum-1/0xc2b66e247dae5ee749ae1d827190115f3653de06/) | DolomiteOwnerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f38bf...fe09fd`](./contracts/ethereum-1/0x0f38bfbd9c1450bcf7a758e80e148ce78cfe09fd/) | DolomiteRegistryImplementation | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x5b1e3b...3ea1ca`](./contracts/mantle-5000/0x5b1e3b0c577a37c82ebd03f543dc423bcd3ea1ca/) | DolomiteRegistryImplementation | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x7bec16...f7e09b`](./contracts/mantle-5000/0x7bec164cacd60d5cbcaa7b81d9da4cf6a0f7e09b/) | DolomiteRegistryImplementation | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f8100...39a654`](./contracts/ethereum-1/0x0f81001ef0a83ecce5ccebf63eb302c70a39a654/) | DOLOWithOwnable | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d4013...232486`](./contracts/ethereum-1/0x6d40138c99f6d9116f738f44a0e6751a42232486/) | EventEmitterRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x250b15...d6b5d1`](./contracts/mantle-5000/0x250b152e33018623c8fb5ddf54ce1cdb99d6b5d1/) | EventEmitterRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x778cea...fb827c`](./contracts/mantle-5000/0x778cea4ce43ba1a3ed6306ca692b8d9d3dfb827c/) | EventEmitterRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6d4013...232486`](./contracts/base-8453/0x6d40138c99f6d9116f738f44a0e6751a42232486/) | EventEmitterRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x6d4013...232486`](./contracts/berachain-80094/0x6d40138c99f6d9116f738f44a0e6751a42232486/) | EventEmitterRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b39f7...67e7bc`](./contracts/ethereum-1/0x1b39f7c19d952752f255536e72726a592167e7bc/) | ExpiryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc5e16f...8b2ac2`](./contracts/arbitrum-42161/0xc5e16f5009776ab645d6719b72962892428b2ac2/) | ExternalOARB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x361b24...7c93d1`](./contracts/arbitrum-42161/0x361b242c2e4f7e002205c0d016b9ae0ac97c93d1/) | GenericTraderProxyV1Lib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b61cb...72bc6b`](./contracts/ethereum-1/0x7b61cba306cfdb02493b94757143132b1b72bc6b/) | GenericTraderRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7b61cb...72bc6b`](./contracts/base-8453/0x7b61cba306cfdb02493b94757143132b1b72bc6b/) | GenericTraderRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x7b61cb...72bc6b`](./contracts/berachain-80094/0x7b61cba306cfdb02493b94757143132b1b72bc6b/) | GenericTraderRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x00c2b5...f86459`](./contracts/mantle-5000/0x00c2b5a97641380fd10e1f69f8219b2642f86459/) | GettersImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4600e1...1d256a`](./contracts/arbitrum-42161/0x4600e18f69cf1abfb2a4a8b388c635c6a71d256a/) | GLPIsolationModeTokenVaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0ddf58...c0527e`](./contracts/arbitrum-42161/0x0ddf58358f00165cc0463a296905278f2bc0527e/) | GMXIsolationModeTokenVaultV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x790ff5...b55ca5`](./contracts/arbitrum-42161/0x790ff506ac24b03a21f3d0019227447ae2b55ca5/) | GMXIsolationModeVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1f975c...62f4dc`](./contracts/arbitrum-42161/0x1f975c95b32859d3d5b37aa85c44c44dd462f4dc/) | GmxV2IsolationModeTokenVaultV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2d898d...8dfe9e`](./contracts/arbitrum-42161/0x2d898d5f9ef550a80bd27ca280ce93e2968dfe9e/) | GmxV2IsolationModeUnwrapperTraderV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x62f345...520526`](./contracts/arbitrum-42161/0x62f345c0f4482e9e45538a9ec78abbda8d520526/) | GmxV2IsolationModeWrapperTraderV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6d1da0...013907`](./contracts/arbitrum-42161/0x6d1da0fcdf7b1351988f6d766c0b8c9c1b013907/) | GmxV2IsolationModeWrapperTraderV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x38e254...386d65`](./contracts/arbitrum-42161/0x38e254e3c6ba4077de32e8612bf3112156386d65/) | GmxV2Library | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x14349a...a596a0`](./contracts/arbitrum-42161/0x14349a78224a45a6e3372e5205098ddc11a596a0/) | GmxV2MarketTokenPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xadc1a8...7316a8`](./contracts/arbitrum-42161/0xadc1a8ad79e55ab9e8569e497775b63e737316a8/) | GmxV2Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe62970...aae3f5`](./contracts/arbitrum-42161/0xe629707bd7cec7b39b3f02555d92af1eaaaae3f5/) | GmxV2Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xec0f08...a04326`](./contracts/arbitrum-42161/0xec0f08bc015a0d0fba1df0b8b11d4779f5a04326/) | GravitaExternalVesterImplementationV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x76ac55...a33e44`](./contracts/arbitrum-42161/0x76ac5542ee033a15f78d1f8b4ad48af618a33e44/) | IsolationModeFreezableLiquidatorProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc9299e...590729`](./contracts/arbitrum-42161/0xc9299e8457e41b9415acc2658602bdf3aa590729/) | IsolationModeTokenVaultMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x017e2a...0bc4ec`](./contracts/mantle-5000/0x017e2a089ec5712bbdb8e7b2a0903269f40bc4ec/) | IsolationModeTokenVaultV1ActionsImpl | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x039bc4...37362f`](./contracts/arbitrum-42161/0x039bc43fe68d76211b82707b1ee0960fc237362f/) | IsolationModeTraderProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6b4ab9...c384a8`](./contracts/arbitrum-42161/0x6b4ab9b50f451f58f41a36bca95d61dd02c384a8/) | JonesIsolationModeTokenVaultMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1d3355...c0e3ca`](./contracts/arbitrum-42161/0x1d33550e923dfc4dbb01d90b32f36b3279c0e3ca/) | JonesUSDCIsolationModeTokenVaultV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x504683...1b592b`](./contracts/arbitrum-42161/0x504683343495cbde1eed002ffe1744fed21b592b/) | JonesUSDCIsolationModeTokenVaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00e418...3bc8ce`](./contracts/arbitrum-42161/0x00e4180f25896229979a52d73be22963e93bc8ce/) | JonesUSDCIsolationModeUnwrapperTraderV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x17dda7...4e6c93`](./contracts/arbitrum-42161/0x17dda7914de4d2b6c94edf59c3e7049ce64e6c93/) | JonesUSDCIsolationModeUnwrapperTraderV2ForLiquidation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x362b6b...cb5063`](./contracts/arbitrum-42161/0x362b6b5f9e78bd5c584e72bfbdde2c1fb2cb5063/) | JonesUSDCIsolationModeWrapperTraderV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2b989e...945186`](./contracts/arbitrum-42161/0x2b989e06e1887300c7bb01a713d7c899df945186/) | JonesUSDCRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xea0030...069295`](./contracts/arbitrum-42161/0xea0030692310330f9f844056303519694c069295/) | JonesUSDCRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x370a47...f10cc3`](./contracts/arbitrum-42161/0x370a47aff17249d010db21db53f3691190f10cc3/) | JonesUSDCTransformer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x14c60c...e33012`](./contracts/arbitrum-42161/0x14c60cb8301e879dfb9eecbebc013353b7e33012/) | JonesUSDCV2IsolationModeVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x20fad8...b8fa3b`](./contracts/arbitrum-42161/0x20fad8614e40e486c79f26b1c053873119b8fa3b/) | LiquidateOrVaporizeImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd82100...c56cfa`](./contracts/ethereum-1/0xd82100524392c7dbdd7502f136a226c8a4c56cfa/) | LiquidatorAssetRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb168c...bf99d3`](./contracts/ethereum-1/0xdb168cd1bcb63304991fc6e2013d0d87ddbf99d3/) | LiquidatorProxyV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x43baa7...7bc198`](./contracts/arbitrum-42161/0x43baa743edb127fe01b655a34193535c637bc198/) | LiquidatorProxyV1WithAmm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1bbc20...f8d3ba`](./contracts/arbitrum-42161/0x1bbc201f68f209a054e3e86891401d7255f8d3ba/) | LiquidatorProxyV2WithExternalLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0c3588...7fcc02`](./contracts/arbitrum-42161/0x0c35882b90bc7da4d499553a8c681ce4e17fcc02/) | LiquidatorProxyV3WithLiquidityToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x1506f8...72b99a`](./contracts/mantle-5000/0x1506f80d2fd5fbef2424573ec86e5481c972b99a/) | LiquidatorProxyV5 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd81bc9...7401ad`](./contracts/arbitrum-42161/0xd81bc90e4f329be8519cefe00b55bb1c327401ad/) | MineralToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x660bd8...d88255`](./contracts/mantle-5000/0x660bd80f67aa9c7bfb82933e1068f8f616d88255/) | MNTIsolationModeTokenVaultV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcbed80...5a6a93`](./contracts/arbitrum-42161/0xcbed801b4162bf2a19b06968663438b5165a6a93/) | OARB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x02e513...c89543`](./contracts/berachain-80094/0x02e513b5b54ee216bf836ceb471507488fc89543/) | ODOLO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xdce03d...39d379`](./contracts/mantle-5000/0xdce03d31d9ad29c3785e61d6f85b31ab3239d379/) | OdosAggregatorTrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xd88f47...9b99ef`](./contracts/berachain-80094/0xd88f473832b0403c7736ef237af5aff8759b99ef/) | OptionAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa150ef...1d636e`](./contracts/ethereum-1/0xa150ef2d5827db283321d15d62d5d07fb41d636e/) | OracleAggregatorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52d7bc...fd05f9`](./contracts/ethereum-1/0x52d7bcb650c591f6e8da90f797a1d0bfd8fd05f9/) | PartiallyDelayedMultiSig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x105df7...7a2e11`](./contracts/arbitrum-42161/0x105df7ca44dda2a4934473a564e075f5fe7a2e11/) | PlutusVaultGLPIsolationModeTokenVaultV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc410e7...fac564`](./contracts/arbitrum-42161/0xc410e7d4592dbde2aab26dd28ff0bf6937fac564/) | PtGLPTransformer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1572ba...d5b733`](./contracts/arbitrum-42161/0x1572ba6f148240ee2205d38de91c23d644d5b733/) | RegistryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xa3f079...838bc9`](./contracts/berachain-80094/0xa3f079292cc35ba64996fe0bce3049928a838bc9/) | RegularAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2e3d10...728b4b`](./contracts/arbitrum-42161/0x2e3d10cc42227af0ce908f00c76ffe1de1728b4b/) | RewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x79e6e9...a8a026`](./contracts/berachain-80094/0x79e6e932bf6686a4d357d7821e6e08835ba8a026/) | RollingClaims | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x7b61cb...72bc6b`](./contracts/mantle-5000/0x7b61cba306cfdb02493b94757143132b1b72bc6b/) | RouterProxy | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x52d57f...41a5a9`](./contracts/mantle-5000/0x52d57f0b5df4050d9b44181284e06c6d7341a5a9/) | SafeDelegateCallLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x7efd08...061176`](./contracts/berachain-80094/0x7efd088ae500598a19a242d6d48b9f7e0d061176/) | StrategicVestingClaims | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1e0be7...cf56d7`](./contracts/arbitrum-42161/0x1e0be797880d3db0ce503cd40429a3a9f1cf56d7/) | TradeImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x21f683...a1cce8`](./contracts/mantle-5000/0x21f683ede5eb0e8a6f1768cc7dbaba0dfca1cce8/) | TransferImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x836b55...34e4e5`](./contracts/mantle-5000/0x836b557cf9ef29fcf49c776841191782df34e4e5/) | UpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa9b377...7f6c6d`](./contracts/arbitrum-42161/0xa9b377b97395c4031750ce8e9397c00c577f6c6d/) | USDMRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x54267e...68a6f0`](./contracts/berachain-80094/0x54267e603646648e623a7a3c21dbbd4cd968a6f0/) | VeArt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x3e9b9a...2d2cec`](./contracts/berachain-80094/0x3e9b9a16743551da49b5e136c716bba7932d2cec/) | VeExternalVesterImplementationV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xa7b2c7...917ce9`](./contracts/berachain-80094/0xa7b2c7b13e7628b70dda64a257767f7292917ce9/) | VeFeeCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x174860...833f16`](./contracts/arbitrum-42161/0x174860044994694943117b597486071df4833f16/) | VesterImplementationLibForV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2960c1...36157d`](./contracts/arbitrum-42161/0x2960c15a51bf8b190b579e6bb2f74c75e136157d/) | VesterImplementationV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x3a025c...c06c07`](./contracts/berachain-80094/0x3a025c7fcf7632197ea82e64acd6ff53e1c06c07/) | VestingClaims | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xbd225c...f20f7b`](./contracts/berachain-80094/0xbd225c09e4b032e41d5e8aea5f81efff45f20f7b/) | VestingClaims | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xcb86b7...e141d4`](./contracts/berachain-80094/0xcb86b75ee6133d179a12d550b09fb3cdb1e141d4/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x017e2a...0bc4ec`](./contracts/arbitrum-42161/0x017e2a089ec5712bbdb8e7b2a0903269f40bc4ec/) | WithdrawalImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a142d...f9c3ca`](./contracts/ethereum-1/0x4a142d62fb33e21a081863ae19ce3fc4ecf9c3ca/) | WorldLibertyFinancialSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76ef8d...c51a1e`](./contracts/ethereum-1/0x76ef8d8b7ab2d572932091c03b9ef11ba2c51a1e/) | WorldLibertyFinancialSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda5e19...7cbef6`](./contracts/ethereum-1/0xda5e1988097297dcdc1f90d4dfe7909e847cbef6/) | WorldLibertyFinancialV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 124 |
| upstream | 4 |
| standard_library | 6 |
| needs_review | 38 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: contract_name=17, extraction_exact=9

Zero-match audit list:

- [13059] zokyo.io
- [13065] pol_audit_scope.md

Fork inheritance lineage and inherited audits are included when available.
