# Agentic Audit Brief: Dolomite

## Project Overview

- Project: Dolomite (`dolomite`)
- Website: [https://dolomite.io](https://dolomite.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:43.609Z
- Pipeline run: v2-pipeline-2026-06-30-2b719a-8edf
- Chains: arbitrum, base, berachain, ethereum, ink, mantle, polygon-zkevm
- Contract surface: 245 unique implementations (851 raw deployments)
- DeFi Llama TVL: $751,365,859.50
- On-chain TVL (included contracts): $7,000,963.71
- TVL by chain: Arbitrum $7,000,963.71

## Project Description

Lending. Structurally: 93 project-authored contract(s) across 4 chain(s); 2 ERC4626 vaults, 14 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 13 common project-authored base contract(s) (authorizationbase, proxycontracthelpers, onlydolomitemarginforupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 904; live-surface contracts included: 851 (188 live, 663 unknown).
- Excluded by liveness: 53 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 15/101 (14.9%)
- Deployed-live implementations: 101 of 245 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 15/207
- Verified + Unaudited implementations: 192
- Verified by bytecode match: 0
- Unverified implementations: 38
- Unique implementations: 245
- Raw deployments: 851
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): $7,000,963.71
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 7 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 11 match-unverified
- Tier 1 coverage: 9.9% (Cyfrin, OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 7 | 3.4% | 2025-04 |
| Guardian | Tier 2 | 3 | 1.4% | 2024-01 |
| OpenZeppelin | Tier 1 | 3 | 1.4% | 2019-04 |
| unknown | Tier 2 | 2 | 1.0% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminImpl | unknown | mantle | n/a | 6 deployments: mantle [`0x18fa03...b0a6e1`](./contracts/mantle-5000/0x18fa033a317fbda23f41af91083ca3b9fab0a6e1/); arbitrum `0x23cc48...3c5fb6`; arbitrum `0x2a50ef...1d3431`; arbitrum `0x6b15c3...8403a2`; arbitrum `0x93fbbd...69a6ed`; arbitrum `0xb04ccb...17cfc9` | ✅ Audited |
| AsyncIsolationModeWrapperTraderImpl | unknown | arbitrum | n/a | 4 deployments: mantle `0x828f34...542811`; arbitrum [`0x51fbd4...07f2ec`](./contracts/arbitrum-42161/0x51fbd497b53b4ffe144399a3029479af2707f2ec/); arbitrum `0xca1e8e...0016d4`; arbitrum `0xfb5ce5...5fffe7` | ✅ Audited |
| BorrowPositionProxyV1 | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x67567f...c30ba6`](./contracts/ethereum-1/0x67567fce98a44745820069c37c395426f1c30ba6/); mantle `0x97a086...64b733`; base [`0x67567f...c30ba6`](./contracts/base-8453/0x67567fce98a44745820069c37c395426f1c30ba6/); berachain [`0x67567f...c30ba6`](./contracts/berachain-80094/0x67567fce98a44745820069c37c395426f1c30ba6/) | ✅ Audited |
| BorrowPositionProxyV2 | core_logic | arbitrum | n/a | 7 deployments: ethereum `0xc06271...2b10bd`; mantle `0xe99a7e...9dd793`; base `0xc06271...2b10bd`; arbitrum [`0x38e49a...4bf3a7`](./contracts/arbitrum-42161/0x38e49a617305101216ec6306e3a18065d14bf3a7/); arbitrum `0x9a7c4f...4cd29f`; arbitrum `0xb2b5d8...b6f3ec`; berachain `0xc06271...2b10bd` | ✅ Audited |
| DepositWithdrawalProxy | unknown | arbitrum | n/a | 7 deployments: ethereum `0xd6a31b...1187e6`; arbitrum [`0x17c57c...23f13d`](./contracts/arbitrum-42161/0x17c57c98b666bac9f3dce4033180190fe923f13d/); arbitrum `0x9fa142...61ca8f`; arbitrum `0xa526b7...2737c4`; arbitrum `0xadb9d6...7b9594`; arbitrum `0xe355df...15aeea`; berachain `0xd6a31b...1187e6` | ✅ Audited |
| DolomiteAmmRouterProxy | unknown | arbitrum | n/a | 7 deployments: arbitrum [`0x03809a...8c44f0`](./contracts/arbitrum-42161/0x03809ae9a86061d8901f020f8778bce1ce8c44f0/); arbitrum `0x9d66b4...5cf77f`; arbitrum `0xa09b4a...2d5a08`; arbitrum `0xc28a4e...4f5faa`; arbitrum `0xc47e01...76f4bd`; arbitrum `0xd8f9c5...cbb632`; arbitrum `0xe6ef4f...917de8` | ✅ Audited |
| DolomiteMargin | unknown | ethereum | n/a | 8 deployments: ethereum [`0x003ca2...c2b97d`](./contracts/ethereum-1/0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d/); mantle `0xe6ef4f...917de8`; arbitrum `0x6a7698...8617af`; arbitrum `0x6bd780...409072`; arbitrum `0x9f7779...02e876`; arbitrum `0xb7576f...699e7e`; arbitrum `0xe44cef...df8601`; berachain [`0x003ca2...c2b97d`](./contracts/berachain-80094/0x003ca23fd5f0ca87d01f6ec6cd14a8ae60c2b97d/) | ✅ Audited |
| Expiry | unknown | arbitrum | n/a | 9 deployments: ethereum `0x2ae007...1d8d5d`; mantle `0x6df6db...889a25`; base `0x2ae007...1d8d5d`; arbitrum [`0x0d64b6...dcd8dc`](./contracts/arbitrum-42161/0x0d64b6c7e51843c053e5ae9a92f88b0a81dcd8dc/); arbitrum `0x2ce1af...b30304`; arbitrum `0x9ffa76...5a0fae`; arbitrum `0xdec1ae...973bea`; arbitrum `0xee34b4...0b22e6`; berachain `0x2ae007...1d8d5d` | ✅ Audited |
| GenericTraderProxyV1 | unknown | arbitrum | n/a | 13 deployments: ethereum `0xb50bcd...fb928d`; mantle `0x8a13c0...419d5c`; mantle `0xd432c3...d2edab`; base `0xb50bcd...fb928d`; arbitrum [`0x26cb28...8a7f7c`](./contracts/arbitrum-42161/0x26cb28c95c964b75fe6e118e267e6f17908a7f7c/); arbitrum `0x3e647e...846242`; arbitrum `0x4f565c...2b6fa6`; arbitrum `0x905f3a...f61d2b`; arbitrum `0x9615e0...304c1a`; arbitrum `0xc1a485...fc5ebd`; arbitrum `0xe50c31...de83f6`; arbitrum `0xf6d327...2ca363`; berachain `0xb50bcd...fb928d` | ✅ Audited |
| GLPWrappedTokenUserVaultFactory | registry | arbitrum | n/a | [`0x34df4e...542698`](./contracts/arbitrum-42161/0x34df4e8062a8c8ae97e3382b452bd7bf60542698/) | ✅ Audited |
| GmxV2IsolationModeUnwrapperTraderV2 | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x0572e5...bed4ec`](./contracts/arbitrum-42161/0x0572e554784ea93312d18408aef2223431bed4ec/); arbitrum `0x106fda...ed0200`; arbitrum `0x2b9d14...852758`; arbitrum `0x333838...a5cfbe`; arbitrum `0x71fcbb...1157c4`; arbitrum `0x77a7dc...311317`; arbitrum `0xa1b50f...af63e5`; arbitrum `0xdfdbbd...f0d83c`; arbitrum `0xecd64f...f86034` | ✅ Audited |
| GmxV2IsolationModeVaultFactory | registry | arbitrum | n/a | 12 deployments: arbitrum [`0x18cb14...abc0e0`](./contracts/arbitrum-42161/0x18cb14564fbb015bd3439220d177799355abc0e0/); arbitrum `0x1beed3...e027c1`; arbitrum `0x1e8e8b...7050ef`; arbitrum `0x1ebb1c...bfd412`; arbitrum `0x20d51c...547e7e`; arbitrum `0x24c912...7c614d`; arbitrum `0x2c7991...a39329`; arbitrum `0x2d165a...3d7f92`; arbitrum `0x505582...a1b074`; arbitrum `0x5c99f6...45ed1c`; arbitrum `0xb15bbb...cec4d8`; arbitrum `0xc58764...b01c9b` | ✅ Audited |
| LiquidatorProxyV4WithGenericTrader | unknown | arbitrum | n/a | 11 deployments: ethereum `0x2adeaf...c5487b`; base `0x2adeaf...c5487b`; arbitrum [`0x1f30d4...11b573`](./contracts/arbitrum-42161/0x1f30d41694fe439280c67e5556a0694d2b11b573/); arbitrum `0x349756...ab9cb3`; arbitrum `0x6c75d6...b6220a`; arbitrum `0x7997a5...5bccdc`; arbitrum `0xac66e9...9ebd0b`; arbitrum `0xc5c857...08d869`; arbitrum `0xe409a9...3a8ea6`; arbitrum `0xfcfce8...ec79b9`; arbitrum `0xfd8444...3ab6d7` | ✅ Audited |
| OperationImpl | unknown | mantle | n/a | 6 deployments: mantle [`0x38ff2f...a07a7e`](./contracts/mantle-5000/0x38ff2f1b4f104ee4830d7a46adbf74fa7ea07a7e/); arbitrum `0x7908b4...124527`; arbitrum `0x8007d1...32e02c`; arbitrum `0xb131bf...24691b`; arbitrum `0xd6a797...4e9d3b`; arbitrum `0xe4d345...3250b9` | ✅ Audited |
| TransferProxy | unknown | arbitrum | n/a | 9 deployments: ethereum `0x07c28e...2624f8`; base `0x07c28e...2624f8`; arbitrum [`0x00c2b5...f86459`](./contracts/arbitrum-42161/0x00c2b5a97641380fd10e1f69f8219b2642f86459/); arbitrum `0x86cfc6...92470d`; arbitrum `0xb1e10b...591980`; arbitrum `0xcb1b98...2af30d`; arbitrum `0xe04f88...b1df5a`; arbitrum `0xe6f14d...552728`; berachain `0x07c28e...2624f8` | ✅ Audited |

### ⚠️ Verified + Unaudited (192)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DolomiteERC20 | token | arbitrum | n/a | 2 deployments: arbitrum [`0x0a52bc...61d995`](./contracts/arbitrum-42161/0x0a52bcb532f59f6a37a9d3b5bc9ffd47e461d995/); arbitrum `0x6dbd96...8228d6` | ⚠️ Unaudited |
| AccountValuesReader | unknown | arbitrum | n/a | [`0xa61cb0...cbb68e`](./contracts/arbitrum-42161/0xa61cb09be5bec5e8a1aa1daed880cc0230cbb68e/) | ⚠️ Unaudited |
| AlwaysZeroInterestSetter | unknown | arbitrum | n/a | 4 deployments: ethereum `0x9ecbbc...d28ca2`; base `0x9ecbbc...d28ca2`; arbitrum [`0x37b6ff...de2168`](./contracts/arbitrum-42161/0x37b6ff70654edfbdaa3c9a723fdadf5844de2168/); berachain `0x9ecbbc...d28ca2` | ⚠️ Unaudited |
| ARBIsolationModeTokenVaultV1 | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x0c5b39...235c0b`](./contracts/arbitrum-42161/0x0c5b395408082c8313ac33201a144ee561235c0b/); arbitrum `0x1897f8...2f21fa`; arbitrum `0x3ddc2a...aa9146`; arbitrum `0x44122d...48b99e`; arbitrum `0x48431f...366a70`; arbitrum `0x66a0fd...187dd3`; arbitrum `0xe2d45b...abf4e7`; arbitrum `0xe3cd64...2c0cd4` | ⚠️ Unaudited |
| ARBIsolationModeVaultFactory | registry | arbitrum | n/a | [`0x1d9e10...68e3c3`](./contracts/arbitrum-42161/0x1d9e10b161ae54feabe1e3f71f658cac3468e3c3/) | ⚠️ Unaudited |
| ArbitrumMultiCall | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x39c942...04bd08`](./contracts/arbitrum-42161/0x39c942c52c2b2c838b93089394e10d4e3104bd08/); arbitrum `0x4e4d9a...82b9f5`; arbitrum `0xa60686...5ba181`; arbitrum `0xa7dc4c...08a71f`; arbitrum `0xa8f329...d37224`; arbitrum `0xb18b8b...03fb1f`; arbitrum `0xd432c3...d2edab`; arbitrum `0xd86233...7269bf`; arbitrum `0xf20b95...aee9f7` | ⚠️ Unaudited |
| ARBRegistry | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6b14fe...117341`](./contracts/arbitrum-42161/0x6b14fedc245ba9ce1fbd17e49e4f38311b117341/); arbitrum `0xa7ecd2...303515` | ⚠️ Unaudited |
| AsyncIsolationModeUnwrapperTraderImpl | unknown | mantle | n/a | 8 deployments: mantle [`0x079322...30accd`](./contracts/mantle-5000/0x07932299a91fe5a0c900d0987486115fbb30accd/); mantle `0x5231c3...8da12d`; mantle `0x86cfc6...92470d`; arbitrum `0x622d6b...521985`; arbitrum `0x7078f9...198426`; arbitrum `0xa880ad...9e24dc`; arbitrum `0xd15ff3...d1f31e`; arbitrum `0xdb0038...a445a7` | ⚠️ Unaudited |
| BorrowPositionProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x144dcf...a82511`](./contracts/arbitrum-42161/0x144dcfcd3287cf4372887ef55225696924a82511/); arbitrum `0xe43638...f5a099` | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | ethereum | n/a | [`0xf579b3...133d0f`](./contracts/ethereum-1/0xf579b345cda0860668b857de10abd62442133d0f/) | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | base | n/a | [`0xf579b3...133d0f`](./contracts/base-8453/0xf579b345cda0860668b857de10abd62442133d0f/) | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | arbitrum | n/a | [`0xf579b3...133d0f`](./contracts/arbitrum-42161/0xf579b345cda0860668b857de10abd62442133d0f/) | ⚠️ Unaudited |
| BorrowPositionRouter | adapter | berachain | n/a | [`0xf579b3...133d0f`](./contracts/berachain-80094/0xf579b345cda0860668b857de10abd62442133d0f/) | ⚠️ Unaudited |
| CallImpl | unknown | arbitrum | n/a | 5 deployments: mantle `0x894ec1...022f4e`; arbitrum [`0x6727fe...73cfdc`](./contracts/arbitrum-42161/0x6727fe07ff5dce46f34d20fb1f9d62edda73cfdc/); arbitrum `0x94bab7...b1ca06`; arbitrum `0xcda182...464419`; arbitrum `0xfce308...2956c4` | ⚠️ Unaudited |
| ChainlinkPriceOracleV3 | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x465e51...7ae191`](./contracts/ethereum-1/0x465e5105e6106acd15e491953bb7b674247ae191/); base [`0x465e51...7ae191`](./contracts/base-8453/0x465e5105e6106acd15e491953bb7b674247ae191/); berachain [`0x465e51...7ae191`](./contracts/berachain-80094/0x465e5105e6106acd15e491953bb7b674247ae191/) | ⚠️ Unaudited |
| ChaosLabsPriceOracleV3 | operational_periphery | arbitrum | n/a | [`0xb02808...7db34e`](./contracts/arbitrum-42161/0xb02808f5db0e6926e00af4971abdf1da6c7db34e/) | ⚠️ Unaudited |
| ChroniclePriceOracleV3 | unknown | arbitrum | n/a | 4 deployments: ethereum `0xb6b3ea...af4359`; base `0xb6b3ea...af4359`; arbitrum [`0x8990a4...ed4eeb`](./contracts/arbitrum-42161/0x8990a46fd1f2e00b8eb85dafd85735d2b5ed4eeb/); berachain `0xb6b3ea...af4359` | ⚠️ Unaudited |
| CREATE3Factory | registry | ethereum | n/a | 5 deployments: ethereum [`0xa8f7e7...7599f7`](./contracts/ethereum-1/0xa8f7e7a361de6a2172fcb2acce68bd21597599f7/); mantle [`0xa8f7e7...7599f7`](./contracts/mantle-5000/0xa8f7e7a361de6a2172fcb2acce68bd21597599f7/); base [`0xa8f7e7...7599f7`](./contracts/base-8453/0xa8f7e7a361de6a2172fcb2acce68bd21597599f7/); arbitrum [`0xa8f7e7...7599f7`](./contracts/arbitrum-42161/0xa8f7e7a361de6a2172fcb2acce68bd21597599f7/); berachain [`0xa8f7e7...7599f7`](./contracts/berachain-80094/0xa8f7e7a361de6a2172fcb2acce68bd21597599f7/) | ⚠️ Unaudited |
| DepositImpl | unknown | arbitrum | n/a | 7 deployments: mantle `0x23cc48...3c5fb6`; arbitrum [`0x22dd9f...084fc7`](./contracts/arbitrum-42161/0x22dd9f4393a3cc698d6c09ad14b0b9d515084fc7/); arbitrum `0x58067f...29caf5`; arbitrum `0x5b12e4...f264fb`; arbitrum `0x631faf...060f60`; arbitrum `0xc4d82e...ad76e1`; arbitrum `0xf884b5...803a33` | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | ethereum | n/a | [`0xf8b2c6...3d2dff`](./contracts/ethereum-1/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | mantle | n/a | [`0xf8b2c6...3d2dff`](./contracts/mantle-5000/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | base | n/a | [`0xf8b2c6...3d2dff`](./contracts/base-8453/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | arbitrum | n/a | [`0xf8b2c6...3d2dff`](./contracts/arbitrum-42161/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | ⚠️ Unaudited |
| DepositWithdrawalRouter | operational_periphery | berachain | n/a | [`0xf8b2c6...3d2dff`](./contracts/berachain-80094/0xf8b2c637a68cf6a17b1df9f8992eebeff63d2dff/) | ⚠️ Unaudited |
| DOLO | unknown | berachain | n/a | [`0x0f8100...39a654`](./contracts/berachain-80094/0x0f81001ef0a83ecce5ccebf63eb302c70a39a654/) | ⚠️ Unaudited |
| DolomiteAccountRegistry | registry | base | n/a | [`0xfee366...24daae`](./contracts/base-8453/0xfee366ceca2472b99d0a501b6b3d01351c24daae/) | ⚠️ Unaudited |
| DolomiteAccountRegistry | unknown | arbitrum | n/a | [`0xc777fb...d59c63`](./contracts/arbitrum-42161/0xc777fb526922fb61581b65f8eb55bb769cd59c63/) | ⚠️ Unaudited |
| DolomiteAccountRegistry | unknown | arbitrum | n/a | [`0xdeaacc...4b690b`](./contracts/arbitrum-42161/0xdeaacc7a7ef622584fc19b13f5ef674cfa4b690b/) | ⚠️ Unaudited |
| DolomiteAccountRegistry | registry | berachain | n/a | [`0xfee366...24daae`](./contracts/berachain-80094/0xfee366ceca2472b99d0a501b6b3d01351c24daae/) | ⚠️ Unaudited |
| DolomiteAmmFactory | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x38ff2f...a07a7e`](./contracts/arbitrum-42161/0x38ff2f1b4f104ee4830d7a46adbf74fa7ea07a7e/); arbitrum `0x79c666...de1394`; arbitrum `0xd55afc...84d33e`; arbitrum `0xd99c21...30c1ef`; arbitrum `0xf1ad8a...921615` | ⚠️ Unaudited |
| DolomiteCompatibleWhitelistForPlutusDAO | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4f8b6e...362c20`](./contracts/arbitrum-42161/0x4f8b6ef682ee0e3a66eb5507dfb0daa647362c20/); arbitrum `0xd873e5...cca7ec` | ⚠️ Unaudited |
| DolomiteERC20 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5a1166...ac57a1`](./contracts/arbitrum-42161/0x5a1166fbadd1c78afe088497bef5a23e5bac57a1/); arbitrum `0xfa7e3c...524b1c` | ⚠️ Unaudited |
| DolomiteERC20 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x709881...5ca585`](./contracts/arbitrum-42161/0x709881d9039d8e2f5ede3eec64657ecbfe5ca585/); arbitrum `0xb67534...010e4c` | ⚠️ Unaudited |
| DolomiteERC20WithPayable | unknown | arbitrum | n/a | [`0x1c68e7...afe64f`](./contracts/arbitrum-42161/0x1c68e777966cc3083f0adcdfe8be31eb2eafe64f/) | ⚠️ Unaudited |
| DolomiteERC20WithPayable | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x517e81...460130`](./contracts/arbitrum-42161/0x517e81e661363c7ae152aabb1aa2c3afc0460130/); arbitrum `0xbe2b54...de8046` | ⚠️ Unaudited |
| DolomiteERC4626 | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x00173d...5eb6b8`](./contracts/arbitrum-42161/0x00173df2fe78ffcde820fac4de4a0b061f5eb6b8/); arbitrum `0x25e504...a1e434`; arbitrum `0x5138b4...7304af`; arbitrum `0x73c47e...98dd54` | ⚠️ Unaudited |
| DolomiteERC4626WithPayable | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa8f462...1bda20`](./contracts/arbitrum-42161/0xa8f462446f7edd7c13ffab71710726d29a1bda20/); arbitrum `0xe37b8e...f20667` | ⚠️ Unaudited |
| DolomiteMigrator | unknown | arbitrum | n/a | 6 deployments: ethereum `0x9e97d8...e7a0d3`; mantle `0x481ef8...843cbd`; base `0x9e97d8...e7a0d3`; arbitrum [`0x32c327...d0f990`](./contracts/arbitrum-42161/0x32c327ae19e226e6643eace8bcec62cadcd0f990/); arbitrum `0xd5545e...f5afc9`; berachain `0x9e97d8...e7a0d3` | ⚠️ Unaudited |
| DolomiteOwner | unknown | arbitrum | n/a | 4 deployments: mantle `0xcf359a...7bb11d`; base `0xcf359a...7bb11d`; arbitrum [`0x68f6d3...03933c`](./contracts/arbitrum-42161/0x68f6d3b583f2cbaf11b60bfeb92c49efcd03933c/); arbitrum `0xcf359a...7bb11d` | ⚠️ Unaudited |
| DolomiteOwnerV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcf359a...7bb11d`](./contracts/ethereum-1/0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d/); berachain [`0xcf359a...7bb11d`](./contracts/berachain-80094/0xcf359a2fa50548c6793a5ed7f26471c1b17bb11d/) | ⚠️ Unaudited |
| DolomiteOwnerV2 | unknown | ethereum | n/a | 5 deployments: ethereum [`0xc2b66e...53de06`](./contracts/ethereum-1/0xc2b66e247dae5ee749ae1d827190115f3653de06/); mantle [`0xc2b66e...53de06`](./contracts/mantle-5000/0xc2b66e247dae5ee749ae1d827190115f3653de06/); base [`0xc2b66e...53de06`](./contracts/base-8453/0xc2b66e247dae5ee749ae1d827190115f3653de06/); arbitrum [`0xc2b66e...53de06`](./contracts/arbitrum-42161/0xc2b66e247dae5ee749ae1d827190115f3653de06/); berachain [`0xc2b66e...53de06`](./contracts/berachain-80094/0xc2b66e247dae5ee749ae1d827190115f3653de06/) | ⚠️ Unaudited |
| DolomiteRegistryImplementation | registry | ethereum | n/a | [`0x0f38bf...fe09fd`](./contracts/ethereum-1/0x0f38bfbd9c1450bcf7a758e80e148ce78cfe09fd/) | ⚠️ Unaudited |
| DolomiteRegistryImplementation | registry | mantle | n/a | [`0x7bec16...f7e09b`](./contracts/mantle-5000/0x7bec164cacd60d5cbcaa7b81d9da4cf6a0f7e09b/) | ⚠️ Unaudited |
| DolomiteRegistryImplementation | unknown | arbitrum | n/a | 19 deployments: mantle `0x5b1e3b...3ea1ca`; arbitrum [`0x0315c5...a269b9`](./contracts/arbitrum-42161/0x0315c50fe76c0f69090f4195fe68f18368a269b9/); arbitrum `0x1052e7...3778a6`; arbitrum `0x1f578e...202e52`; arbitrum `0x530935...7050b1`; arbitrum `0x5e13c2...4f73b7`; arbitrum `0x759fd3...2c23ee`; arbitrum `0x89ef0b...764f5d`; arbitrum `0xa95c12...673bcb`; arbitrum `0xaa8eac...c16f29`; arbitrum `0xad1877...a3c758`; arbitrum `0xbcb384...096c11`; arbitrum `0xc97eea...068733`; arbitrum `0xdac933...21eb9c`; arbitrum `0xe8ef47...3c0a5b`; arbitrum `0xf5e5e2...d5cac4`; arbitrum `0xf5e882...eb684a`; arbitrum `0xfbdae3...43ce6b`; arbitrum `0xff9ae5...ab7c89` | ⚠️ Unaudited |
| DolomiteRegistryImplementation | unknown | arbitrum | n/a | [`0x2a059d...8c2404`](./contracts/arbitrum-42161/0x2a059d6d682e5fb1226eb8bc2977b512698c2404/) | ⚠️ Unaudited |
| DolomiteRegistryImplementation | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x33b086...1b624f`](./contracts/arbitrum-42161/0x33b0862724ce237a8cb35fcf8df38f952f1b624f/); arbitrum `0x5343c6...88199c`; arbitrum `0xa2f635...f35407` | ⚠️ Unaudited |
| DOLOWithOwnable | governance | ethereum | n/a | 2 deployments: ethereum [`0x0f8100...39a654`](./contracts/ethereum-1/0x0f81001ef0a83ecce5ccebf63eb302c70a39a654/); arbitrum [`0x0f8100...39a654`](./contracts/arbitrum-42161/0x0f81001ef0a83ecce5ccebf63eb302c70a39a654/) | ⚠️ Unaudited |
| DoubleExponentInterestSetter | unknown | arbitrum | n/a | 7 deployments: arbitrum [`0x0a34f5...24d415`](./contracts/arbitrum-42161/0x0a34f58c7afe7caaaf36a039f9d69f45ff24d415/); arbitrum `0x2f0588...8f1a95`; arbitrum `0x39871a...d9d061`; arbitrum `0x77694d...457d40`; arbitrum `0x836b55...34e4e5`; arbitrum `0xf17616...b63555`; arbitrum `0xf74fdc...fdb37b` | ⚠️ Unaudited |
| EsGmxReader | unknown | arbitrum | n/a | [`0x8b7d8e...1219fc`](./contracts/arbitrum-42161/0x8b7d8e6a48b627ff77bb734c42355f74821219fc/) | ⚠️ Unaudited |
| EventEmitterRegistry | registry | ethereum | n/a | [`0x6d4013...232486`](./contracts/ethereum-1/0x6d40138c99f6d9116f738f44a0e6751a42232486/) | ⚠️ Unaudited |
| EventEmitterRegistry | registry | mantle | n/a | [`0x778cea...fb827c`](./contracts/mantle-5000/0x778cea4ce43ba1a3ed6306ca692b8d9d3dfb827c/) | ⚠️ Unaudited |
| EventEmitterRegistry | registry | base | n/a | [`0x6d4013...232486`](./contracts/base-8453/0x6d40138c99f6d9116f738f44a0e6751a42232486/) | ⚠️ Unaudited |
| EventEmitterRegistry | unknown | arbitrum | n/a | 8 deployments: mantle `0x250b15...d6b5d1`; arbitrum [`0x0b2db9...37d0a3`](./contracts/arbitrum-42161/0x0b2db9b821825fa179d93570812972fc6d37d0a3/); arbitrum `0x1804bc...9318c3`; arbitrum `0x3fcbc7...828122`; arbitrum `0x968e3f...8015ec`; arbitrum `0xa524c3...58c223`; arbitrum `0xcc6f8f...2335b9`; arbitrum `0xd3792b...ace5ea` | ⚠️ Unaudited |
| EventEmitterRegistry | unknown | arbitrum | n/a | [`0x4bff12...18cc2f`](./contracts/arbitrum-42161/0x4bff12773b0dc3cb35f174b5cd351f662018cc2f/) | ⚠️ Unaudited |
| EventEmitterRegistry | registry | berachain | n/a | [`0x6d4013...232486`](./contracts/berachain-80094/0x6d40138c99f6d9116f738f44a0e6751a42232486/) | ⚠️ Unaudited |
| ExpiryProxy | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1b39f7...67e7bc`](./contracts/ethereum-1/0x1b39f7c19d952752f255536e72726a592167e7bc/); base [`0x1b39f7...67e7bc`](./contracts/base-8453/0x1b39f7c19d952752f255536e72726a592167e7bc/); arbitrum `0x40899e...730b00`; berachain [`0x1b39f7...67e7bc`](./contracts/berachain-80094/0x1b39f7c19d952752f255536e72726a592167e7bc/) | ⚠️ Unaudited |
| ExternalOARB | unknown | arbitrum | n/a | [`0xc5e16f...8b2ac2`](./contracts/arbitrum-42161/0xc5e16f5009776ab645d6719b72962892428b2ac2/) | ⚠️ Unaudited |
| ExternalVesterImplementationV1 | unknown | arbitrum | n/a | [`0x3d2586...a7a8b9`](./contracts/arbitrum-42161/0x3d2586da719cac754ab3b0143f1c9886bea7a8b9/) | ⚠️ Unaudited |
| GenericTraderProxyV1Lib | unknown | arbitrum | n/a | 5 deployments: mantle `0x6727fe...73cfdc`; mantle `0xec502f...817c4b`; arbitrum [`0x361b24...7c93d1`](./contracts/arbitrum-42161/0x361b242c2e4f7e002205c0d016b9ae0ac97c93d1/); arbitrum `0x49df0d...e8bf93`; arbitrum `0x5477f4...57df68` | ⚠️ Unaudited |
| GenericTraderRouter | adapter | ethereum | n/a | [`0x7b61cb...72bc6b`](./contracts/ethereum-1/0x7b61cba306cfdb02493b94757143132b1b72bc6b/) | ⚠️ Unaudited |
| GenericTraderRouter | adapter | base | n/a | [`0x7b61cb...72bc6b`](./contracts/base-8453/0x7b61cba306cfdb02493b94757143132b1b72bc6b/) | ⚠️ Unaudited |
| GenericTraderRouter | adapter | berachain | n/a | [`0x7b61cb...72bc6b`](./contracts/berachain-80094/0x7b61cba306cfdb02493b94757143132b1b72bc6b/) | ⚠️ Unaudited |
| GettersImpl | unknown | mantle | n/a | [`0x00c2b5...f86459`](./contracts/mantle-5000/0x00c2b5a97641380fd10e1f69f8219b2642f86459/) | ⚠️ Unaudited |
| GLPIsolationModeTokenVaultV1 | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x0dbbd1...05eb4c`](./contracts/arbitrum-42161/0x0dbbd1da9bf685b079d8d7e1575a5df0d305eb4c/); arbitrum `0x319457...be4088`; arbitrum `0x36becd...b97146`; arbitrum `0x60f8d7...247d32` | ⚠️ Unaudited |
| GLPIsolationModeTokenVaultV2 | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x4600e1...1d256a`](./contracts/arbitrum-42161/0x4600e18f69cf1abfb2a4a8b388c635c6a71d256a/); arbitrum `0x56359d...6ad212`; arbitrum `0x6fde67...1d0831`; arbitrum `0x7bb95c...ba0c30`; arbitrum `0x898a4c...55d677`; arbitrum `0xf592b1...33bf07` | ⚠️ Unaudited |
| GLPIsolationModeUnwrapperTraderV2 | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x83e805...5d1fa2`](./contracts/arbitrum-42161/0x83e805152c99b3b4ffd6fc62a9058f63ed5d1fa2/); arbitrum `0xaacdc4...39d79d`; arbitrum `0xbe39b6...17d184`; arbitrum `0xf25e0d...9c582d` | ⚠️ Unaudited |
| GLPIsolationModeWrapperTraderV2 | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x4717fb...e49506`](./contracts/arbitrum-42161/0x4717fb0ba2231cd8174a93bc325fad1baae49506/); arbitrum `0x815ebf...1729fc`; arbitrum `0xa5f85e...3a6d58`; arbitrum `0xec3162...27f91b` | ⚠️ Unaudited |
| GLPPriceOracleV1 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x26cf2b...271744`](./contracts/arbitrum-42161/0x26cf2b04ba936aff81435e67c7c1551e17271744/); arbitrum `0x32a558...b15791`; arbitrum `0xf34209...cfde24` | ⚠️ Unaudited |
| GLPUnwrapperProxyV1 | unknown | arbitrum | n/a | [`0x54ef98...2a75a0`](./contracts/arbitrum-42161/0x54ef98673563e830ee5cf80cf4900086022a75a0/) | ⚠️ Unaudited |
| GLPUnwrapperTraderV1 | unknown | arbitrum | n/a | [`0xe2e262...fe2268`](./contracts/arbitrum-42161/0xe2e26241e8572912d0fa3c213b935d10a4fe2268/) | ⚠️ Unaudited |
| GLPUnwrapperTraderV2 | unknown | arbitrum | n/a | [`0x54e523...1131ea`](./contracts/arbitrum-42161/0x54e523208ed40a591d9f54ee949c5c374d1131ea/) | ⚠️ Unaudited |
| GLPWrappedTokenUserVaultV1 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xc1d404...427a53`](./contracts/arbitrum-42161/0xc1d404297e1bb0eebbef4fda22629550cd427a53/); arbitrum `0xdc525a...3f1531` | ⚠️ Unaudited |
| GLPWrapperProxyV1 | unknown | arbitrum | n/a | [`0x3d6189...da9448`](./contracts/arbitrum-42161/0x3d6189afb5efd2117b1c9ccf4742737795da9448/) | ⚠️ Unaudited |
| GLPWrapperTraderV1 | unknown | arbitrum | n/a | [`0xfa60e0...b13bfe`](./contracts/arbitrum-42161/0xfa60e0fc3da354d68f9d3ec5ac638d36bbb13bfe/) | ⚠️ Unaudited |
| GLPWrapperTraderV2 | unknown | arbitrum | n/a | [`0xaa3325...a64225`](./contracts/arbitrum-42161/0xaa33255178a7be031a2d6b8438bfb55ca9a64225/) | ⚠️ Unaudited |
| GMXIsolationModeTokenVaultV1 | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x0ddf58...c0527e`](./contracts/arbitrum-42161/0x0ddf58358f00165cc0463a296905278f2bc0527e/); arbitrum `0x13cdef...39ff37`; arbitrum `0x74e373...23ed27`; arbitrum `0x95f13c...5a26fe`; arbitrum `0xb5f5d2...456eab`; arbitrum `0xc43985...745c0f`; arbitrum `0xd28d59...e85b46`; arbitrum `0xd4cf0d...c402b8` | ⚠️ Unaudited |
| GMXIsolationModeVaultFactory | registry | arbitrum | n/a | [`0x790ff5...b55ca5`](./contracts/arbitrum-42161/0x790ff506ac24b03a21f3d0019227447ae2b55ca5/) | ⚠️ Unaudited |
| GmxRegistryV1 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x068dc7...31166e`](./contracts/arbitrum-42161/0x068dc745455f65c3dc3cf3b439b661113b31166e/); arbitrum `0x07f114...f377a1` | ⚠️ Unaudited |
| GmxRegistryV1 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x39f390...bce7ad`](./contracts/arbitrum-42161/0x39f39051c115d909d25021f5a18137b18abce7ad/); arbitrum `0xdbc616...b30f89` | ⚠️ Unaudited |
| GmxV2IsolationModeTokenVaultV1 | unknown | arbitrum | n/a | 16 deployments: arbitrum [`0x1f975c...62f4dc`](./contracts/arbitrum-42161/0x1f975c95b32859d3d5b37aa85c44c44dd462f4dc/); arbitrum `0x264d5c...75c4ae`; arbitrum `0x4dd20f...3fbb99`; arbitrum `0x5799a6...5211dc`; arbitrum `0x742bb2...3f9e33`; arbitrum `0x7977d3...df6ce6`; arbitrum `0x818f98...440fb1`; arbitrum `0x924a11...a7e0a1`; arbitrum `0x94d181...769e8f`; arbitrum `0xb7919f...629094`; arbitrum `0xb93e57...2162c4`; arbitrum `0xbb86e9...d4524f`; arbitrum `0xbd9f93...933061`; arbitrum `0xc9f503...f2d931`; arbitrum `0xcfc1cd...c3deb1`; arbitrum `0xe72f23...35ed3d` | ⚠️ Unaudited |
| GmxV2IsolationModeUnwrapperTraderV2 | unknown | arbitrum | n/a | 13 deployments: arbitrum [`0x2d898d...8dfe9e`](./contracts/arbitrum-42161/0x2d898d5f9ef550a80bd27ca280ce93e2968dfe9e/); arbitrum `0x342ade...1ab916`; arbitrum `0x4f1272...330c10`; arbitrum `0x55261c...0d4390`; arbitrum `0x5627a9...a0873c`; arbitrum `0x7e0006...f83eff`; arbitrum `0x8690c2...346130`; arbitrum `0x9cd90d...805fd1`; arbitrum `0xa2e03b...c72d8b`; arbitrum `0xa39f1a...1ea0fd`; arbitrum `0xe87bb3...51e9f7`; arbitrum `0xe96151...76eb03`; arbitrum `0xeccd34...71eab6` | ⚠️ Unaudited |
| GmxV2IsolationModeWrapperTraderV2 | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x2059e1...72dbe6`](./contracts/arbitrum-42161/0x2059e12116aabe982475b37af8800ec17572dbe6/); arbitrum `0x471c5c...0d1d2d`; arbitrum `0x6d1da0...013907`; arbitrum `0x86bb92...f72b53`; arbitrum `0x8f6bc6...2e7bf2`; arbitrum `0xba3293...8d7e47`; arbitrum `0xc50306...259ef0`; arbitrum `0xc58ccf...3e06d8` | ⚠️ Unaudited |
| GmxV2IsolationModeWrapperTraderV2 | unknown | arbitrum | n/a | 11 deployments: arbitrum [`0x62f345...520526`](./contracts/arbitrum-42161/0x62f345c0f4482e9e45538a9ec78abbda8d520526/); arbitrum `0x66502c...d8a9db`; arbitrum `0x827246...e166ba`; arbitrum `0x971dcb...3f102b`; arbitrum `0xa3b49d...7f8898`; arbitrum `0xaf9ab8...4fbacf`; arbitrum `0xb19027...f2c9d9`; arbitrum `0xb321b2...654c18`; arbitrum `0xb51e13...de29aa`; arbitrum `0xc99f41...d9ad37`; arbitrum `0xcb62d5...03be7e` | ⚠️ Unaudited |
| GmxV2Library | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x38e254...386d65`](./contracts/arbitrum-42161/0x38e254e3c6ba4077de32e8612bf3112156386d65/); arbitrum `0x517b96...af74d6`; arbitrum `0x5e7b26...b2ab71`; arbitrum `0x6b8964...0229d9`; arbitrum `0x86c466...a75c59`; arbitrum `0xbafd53...874fb2`; arbitrum `0xd4f9fb...dd07e1`; arbitrum `0xd670f7...571454`; arbitrum `0xd7b6b9...b3a374` | ⚠️ Unaudited |
| GmxV2MarketTokenPriceOracle | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x14349a...a596a0`](./contracts/arbitrum-42161/0x14349a78224a45a6e3372e5205098ddc11a596a0/); arbitrum `0xf4596b...b54974`; arbitrum `0xf6cb63...1048cc` | ⚠️ Unaudited |
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
| IsolationModeTraderProxy | unknown | arbitrum | n/a | 7 deployments: arbitrum [`0x039bc4...37362f`](./contracts/arbitrum-42161/0x039bc43fe68d76211b82707b1ee0960fc237362f/); arbitrum `0x16b360...e9b18d`; arbitrum `0x99190d...97b333`; arbitrum `0xc33b3d...f0de09`; arbitrum `0xc87456...fe691f`; arbitrum `0xd55a71...1db5cb`; arbitrum `0xd73cfb...953e66` | ⚠️ Unaudited |
| JonesIsolationModeTokenVaultMigrator | unknown | arbitrum | n/a | [`0x6b4ab9...c384a8`](./contracts/arbitrum-42161/0x6b4ab9b50f451f58f41a36bca95d61dd02c384a8/) | ⚠️ Unaudited |
| JonesUSDCIsolationModeTokenVaultV1 | unknown | arbitrum | n/a | 11 deployments: arbitrum [`0x1d3355...c0e3ca`](./contracts/arbitrum-42161/0x1d33550e923dfc4dbb01d90b32f36b3279c0e3ca/); arbitrum `0x1e61df...86b51a`; arbitrum `0x235c83...a240ff`; arbitrum `0x279682...6c9032`; arbitrum `0x27974a...15f995`; arbitrum `0x2eb274...be5bc4`; arbitrum `0x6c1e20...6ebf9b`; arbitrum `0x6ec8b4...2c6cee`; arbitrum `0x6f2a6b...1e482b`; arbitrum `0x702bbe...848e19`; arbitrum `0x81501e...ed1a70` | ⚠️ Unaudited |
| JonesUSDCIsolationModeTokenVaultV2 | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x504683...1b592b`](./contracts/arbitrum-42161/0x504683343495cbde1eed002ffe1744fed21b592b/); arbitrum `0x73bc3d...018dce`; arbitrum `0x782588...5ec74f`; arbitrum `0xc1e233...3345ce`; arbitrum `0xe01a3c...188aa1` | ⚠️ Unaudited |
| JonesUSDCIsolationModeUnwrapperTraderV2 | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x00e418...3bc8ce`](./contracts/arbitrum-42161/0x00e4180f25896229979a52d73be22963e93bc8ce/); arbitrum `0x61eb7f...4071ec`; arbitrum `0x76306f...3acb79`; arbitrum `0x7abe6b...6c878e`; arbitrum `0x87763a...31ac08`; arbitrum `0x8c24b0...0fb6e0`; arbitrum `0xa8a936...204045`; arbitrum `0xf525be...3f6971` | ⚠️ Unaudited |
| JonesUSDCIsolationModeUnwrapperTraderV2ForLiquidation | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x17dda7...4e6c93`](./contracts/arbitrum-42161/0x17dda7914de4d2b6c94edf59c3e7049ce64e6c93/); arbitrum `0x8ba70c...48aa7c`; arbitrum `0x9750d8...9c9330`; arbitrum `0xcc7ac4...fbec5c`; arbitrum `0xdba4fa...c5d349`; arbitrum `0xdf088c...4dbf0e` | ⚠️ Unaudited |
| JonesUSDCIsolationModeVaultFactory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2adba3...11fc05`](./contracts/arbitrum-42161/0x2adba3f917bb0af2530f8f295ad2a6ff1111fc05/); arbitrum `0x8bfc42...e330a4` | ⚠️ Unaudited |
| JonesUSDCIsolationModeWrapperTraderV2 | unknown | arbitrum | n/a | 7 deployments: arbitrum [`0x22c58e...a23789`](./contracts/arbitrum-42161/0x22c58ef969682a74550f9caea36f10a32aa23789/); arbitrum `0x362b6b...cb5063`; arbitrum `0x8427d5...238767`; arbitrum `0x8f4348...ccf785`; arbitrum `0xbc5029...eb93d0`; arbitrum `0xe4240a...e89915`; arbitrum `0xeff8a5...e2d6f0` | ⚠️ Unaudited |
| JonesUSDCPriceOracle | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2ed567...9f1e0e`](./contracts/arbitrum-42161/0x2ed56783e04b6f11fcc982dd536061945f9f1e0e/); arbitrum `0xe091e7...02f3cf` | ⚠️ Unaudited |
| JonesUSDCRegistry | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x2b989e...945186`](./contracts/arbitrum-42161/0x2b989e06e1887300c7bb01a713d7c899df945186/); arbitrum `0x482c1b...612b77`; arbitrum `0x8b1f06...e6ca31`; arbitrum `0x985559...ab3f9f`; arbitrum `0xdeeaee...63092b` | ⚠️ Unaudited |
| JonesUSDCRegistry | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6856d5...85823b`](./contracts/arbitrum-42161/0x6856d57bf5aa7772f293029aac9002f65985823b/); arbitrum `0xc30a2c...84c0ed` | ⚠️ Unaudited |
| JonesUSDCRegistry | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xea0030...069295`](./contracts/arbitrum-42161/0xea0030692310330f9f844056303519694c069295/); arbitrum `0xef85d5...be7b65` | ⚠️ Unaudited |
| JonesUSDCTransformer | unknown | arbitrum | n/a | [`0x370a47...f10cc3`](./contracts/arbitrum-42161/0x370a47aff17249d010db21db53f3691190f10cc3/) | ⚠️ Unaudited |
| JonesUSDCV2IsolationModeVaultFactory | registry | arbitrum | n/a | [`0x14c60c...e33012`](./contracts/arbitrum-42161/0x14c60cb8301e879dfb9eecbebc013353b7e33012/) | ⚠️ Unaudited |
| LinearStepFunctionInterestSetter | unknown | arbitrum | n/a | 20 deployments: arbitrum [`0x065e35...691a3b`](./contracts/arbitrum-42161/0x065e35073029ad0293d517860138f2ec7d691a3b/); arbitrum `0x093d6d...ead734`; arbitrum `0x22c1b4...a02753`; arbitrum `0x27b285...7f4114`; arbitrum `0x291c75...ad7715`; arbitrum `0x36d9b0...fd1930`; arbitrum `0x5aefd9...83025a`; arbitrum `0x7a6c75...4544d4`; arbitrum `0xad9f52...b3d48b`; arbitrum `0xb1f1e9...aea4fd`; arbitrum `0xb62799...233d11`; arbitrum `0xc10934...e16bfe`; arbitrum `0xcf63a1...ae5081`; arbitrum `0xd25e3b...c1bf12`; arbitrum `0xd3d380...d4a94a`; arbitrum `0xd80b6e...2e69d3`; arbitrum `0xd9378c...2234e8`; arbitrum `0xe3718a...d60a81`; arbitrum `0xe39231...12d8d3`; arbitrum `0xe396aa...8f9886` | ⚠️ Unaudited |
| LiquidateOrVaporizeImpl | unknown | arbitrum | n/a | 8 deployments: mantle `0xb131bf...24691b`; arbitrum [`0x20fad8...b8fa3b`](./contracts/arbitrum-42161/0x20fad8614e40e486c79f26b1c053873119b8fa3b/); arbitrum `0x452ca7...6dee59`; arbitrum `0x5f2eff...f781a2`; arbitrum `0x63bd44...f6d451`; arbitrum `0x78cf9b...1b8720`; arbitrum `0xa222d4...9f5d12`; arbitrum `0xce29b2...d781a0` | ⚠️ Unaudited |
| LiquidatorAssetRegistry | unknown | arbitrum | n/a | 5 deployments: ethereum `0xd82100...c56cfa`; base `0xd82100...c56cfa`; arbitrum [`0x10d987...f44fac`](./contracts/arbitrum-42161/0x10d98759762efac656bd4be7f2f5599208f44fac/); arbitrum `0x893242...0111b2`; berachain `0xd82100...c56cfa` | ⚠️ Unaudited |
| LiquidatorProxyV1 | unknown | arbitrum | n/a | 11 deployments: ethereum `0xdb168c...bf99d3`; base `0xdb168c...bf99d3`; arbitrum [`0x10114c...06e745`](./contracts/arbitrum-42161/0x10114c4d4c6d55474b9c20cdbf622b3c8806e745/); arbitrum `0x227455...812141`; arbitrum `0x6d13e5...8caa53`; arbitrum `0x84b027...c53450`; arbitrum `0x8c6e33...fa715a`; arbitrum `0xa5f4ce...76e2e9`; arbitrum `0xaee9ea...eec122`; arbitrum `0xdda7d8...fab581`; berachain `0xdb168c...bf99d3` | ⚠️ Unaudited |
| LiquidatorProxyV1WithAmm | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x43baa7...7bc198`](./contracts/arbitrum-42161/0x43baa743edb127fe01b655a34193535c637bc198/); arbitrum `0x6e106a...617f77`; arbitrum `0x7a20b3...aaa8c6`; arbitrum `0xaa652e...9bdf63`; arbitrum `0xb38768...febe0b`; arbitrum `0xb3ff98...664e77`; arbitrum `0xe1d717...a6f719`; arbitrum `0xe6b389...6dfd5f`; arbitrum `0xf61a26...41f1f2` | ⚠️ Unaudited |
| LiquidatorProxyV2WithExternalLiquidity | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x1bbc20...f8d3ba`](./contracts/arbitrum-42161/0x1bbc201f68f209a054e3e86891401d7255f8d3ba/); arbitrum `0xcc24ca...77f368`; arbitrum `0xf53f5c...978fb1` | ⚠️ Unaudited |
| LiquidatorProxyV3WithLiquidityToken | unknown | arbitrum | n/a | [`0x0c3588...7fcc02`](./contracts/arbitrum-42161/0x0c35882b90bc7da4d499553a8c681ce4e17fcc02/) | ⚠️ Unaudited |
| LiquidatorProxyV5 | operational_periphery | mantle | n/a | 2 deployments: mantle [`0x1506f8...72b99a`](./contracts/mantle-5000/0x1506f80d2fd5fbef2424573ec86e5481c972b99a/); base [`0x1506f8...72b99a`](./contracts/base-8453/0x1506f80d2fd5fbef2424573ec86e5481c972b99a/) | ⚠️ Unaudited |
| MagicGLPPriceOracle | unknown | arbitrum | n/a | [`0x4dfbb8...a78f5f`](./contracts/arbitrum-42161/0x4dfbb88233c1ebbaf9ff55d4c0aba97343a78f5f/) | ⚠️ Unaudited |
| MagicGLPUnwrapperTrader | unknown | arbitrum | n/a | [`0x9e8d90...ae345d`](./contracts/arbitrum-42161/0x9e8d909c340a7af5d6623c6d7c7aca436eae345d/) | ⚠️ Unaudited |
| MagicGLPUnwrapperTraderV2 | unknown | arbitrum | n/a | [`0x76a03c...5a29dd`](./contracts/arbitrum-42161/0x76a03ced39f0930777974906ee7e792bd25a29dd/) | ⚠️ Unaudited |
| MagicGLPWrapperTrader | unknown | arbitrum | n/a | [`0x36ab95...bb14a1`](./contracts/arbitrum-42161/0x36ab95afa0648598c3c5329b2c26b5179ebb14a1/) | ⚠️ Unaudited |
| MagicGLPWrapperTraderV2 | unknown | arbitrum | n/a | [`0x298a07...06224d`](./contracts/arbitrum-42161/0x298a07c4a5b6bc32e1ef37bf5ccb3a17c106224d/) | ⚠️ Unaudited |
| MarginPositionRegistry | unknown | arbitrum | n/a | [`0x7a952d...c626d0`](./contracts/arbitrum-42161/0x7a952dfab6eddb9a7f8e49d679f778be4bc626d0/) | ⚠️ Unaudited |
| Migrations | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x34bd12...3a6b2b`](./contracts/arbitrum-42161/0x34bd12225d0b4daadc933cb8bed1b506e53a6b2b/); arbitrum `0x4c5aae...7bcb43`; arbitrum `0x51d184...e33d58`; arbitrum `0x987afb...d8a7b1` | ⚠️ Unaudited |
| MineralToken | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x01d963...4e2c5c`](./contracts/arbitrum-42161/0x01d96345e533269b53c282b8c93ed7507c4e2c5c/); arbitrum `0x946f4a...fbf26d` | ⚠️ Unaudited |
| MineralToken | unknown | arbitrum | n/a | [`0xd81bc9...7401ad`](./contracts/arbitrum-42161/0xd81bc90e4f329be8519cefe00b55bb1c327401ad/) | ⚠️ Unaudited |
| MNTIsolationModeTokenVaultV1 | core_logic | mantle | n/a | [`0x660bd8...d88255`](./contracts/mantle-5000/0x660bd80f67aa9c7bfb82933e1068f8f616d88255/) | ⚠️ Unaudited |
| MultiCall | periphery | ethereum | n/a | 3 deployments: ethereum [`0x58142b...617d2a`](./contracts/ethereum-1/0x58142bd85e67c40a7c0ccf2e1eef6eb543617d2a/); base [`0x58142b...617d2a`](./contracts/base-8453/0x58142bd85e67c40a7c0ccf2e1eef6eb543617d2a/); berachain [`0x58142b...617d2a`](./contracts/berachain-80094/0x58142bd85e67c40a7c0ccf2e1eef6eb543617d2a/) | ⚠️ Unaudited |
| OARB | unknown | arbitrum | n/a | [`0xcbed80...5a6a93`](./contracts/arbitrum-42161/0xcbed801b4162bf2a19b06968663438b5165a6a93/) | ⚠️ Unaudited |
| ODOLO | unknown | berachain | n/a | [`0x02e513...c89543`](./contracts/berachain-80094/0x02e513b5b54ee216bf836ceb471507488fc89543/) | ⚠️ Unaudited |
| OdosAggregatorTrader | unknown | arbitrum | n/a | 2 deployments: mantle `0xdce03d...39d379`; arbitrum [`0x2cdbb2...e67f3c`](./contracts/arbitrum-42161/0x2cdbb25b4aca98a55f6b1a0f67d9f43455e67f3c/) | ⚠️ Unaudited |
| OptionAirdrop | operational_periphery | berachain | n/a | [`0xd88f47...9b99ef`](./contracts/berachain-80094/0xd88f473832b0403c7736ef237af5aff8759b99ef/) | ⚠️ Unaudited |
| OracleAggregatorV2 | unknown | arbitrum | n/a | 5 deployments: ethereum `0xa150ef...1d636e`; base `0xa150ef...1d636e`; arbitrum [`0x28a17e...1d8b9c`](./contracts/arbitrum-42161/0x28a17ecb649aa6d225da8cae1ac6d1495e1d8b9c/); arbitrum `0xbfca44...d06ca0`; berachain `0xa150ef...1d636e` | ⚠️ Unaudited |
| ParaswapAggregatorTrader | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6173c3...059a68`](./contracts/arbitrum-42161/0x6173c34e01a18d5897c06b4991152f2969059a68/); arbitrum `0x8ca96f...f5bfd9` | ⚠️ Unaudited |
| ParaswapAggregatorTraderV2 | unknown | arbitrum | n/a | [`0xd991d9...92383a`](./contracts/arbitrum-42161/0xd991d9e0a22a51391c25b258eef8c1c4a392383a/) | ⚠️ Unaudited |
| PartiallyDelayedMultiSig | governance | ethereum | n/a | 2 deployments: ethereum [`0x52d7bc...fd05f9`](./contracts/ethereum-1/0x52d7bcb650c591f6e8da90f797a1d0bfd8fd05f9/); ethereum `0xb48b34...df8754` | ⚠️ Unaudited |
| PayableProxy | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x027db2...6b6fc3`](./contracts/arbitrum-42161/0x027db2781590972d65e7acc7aa3d002ba16b6fc3/); arbitrum `0x6978ff...1bebc5`; arbitrum `0x88a6d8...745866`; arbitrum `0xaa1a2e...75e0fa`; arbitrum `0xc90e5d...b95787` | ⚠️ Unaudited |
| PendleGLPRegistry | unknown | arbitrum | n/a | [`0xa2faf5...55f6b0`](./contracts/arbitrum-42161/0xa2faf5d1bf7ea66f9dae29ab24ce1613b455f6b0/) | ⚠️ Unaudited |
| PendleRegistry | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x154de4...cad2ac`](./contracts/arbitrum-42161/0x154de437ccea5e997c303bdb4eca4de2accad2ac/); arbitrum `0x51df6b...62e33b`; arbitrum `0x5c451e...79fc1d`; arbitrum `0x6c05d6...8f0056`; arbitrum `0x6caec9...ef60a5`; arbitrum `0x7561b6...79f1c6`; arbitrum `0x882835...17d2fe`; arbitrum `0xc822de...077f5d` | ⚠️ Unaudited |
| PlutusVaultGLPIsolationModeTokenVaultV1 | unknown | arbitrum | n/a | 7 deployments: arbitrum [`0x105df7...7a2e11`](./contracts/arbitrum-42161/0x105df7ca44dda2a4934473a564e075f5fe7a2e11/); arbitrum `0x452a5d...c6dc8d`; arbitrum `0x4bcab4...b6bf9f`; arbitrum `0x881079...424297`; arbitrum `0x9c1238...62006f`; arbitrum `0xc929ca...4e2333`; arbitrum `0xe8e7e8...7bc9e9` | ⚠️ Unaudited |
| PlutusVaultGLPIsolationModeUnwrapperTraderV2 | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x025332...216c24`](./contracts/arbitrum-42161/0x025332f3524b1864bf6e6d93d2bbd4deee216c24/); arbitrum `0x18e6e0...51d60b`; arbitrum `0x74d3cb...ba575f`; arbitrum `0xaa3e63...d57b69` | ⚠️ Unaudited |
| PlutusVaultGLPIsolationModeWrapperTraderV2 | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x226b02...26d2a3`](./contracts/arbitrum-42161/0x226b02aa7b2812f168ad2a08c185f76b3926d2a3/); arbitrum `0x850198...33a7a1`; arbitrum `0x89649b...1f4698`; arbitrum `0xcf8d6c...9db576` | ⚠️ Unaudited |
| PlutusVaultGLPPriceOracle | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x11e4e7...50a3a0`](./contracts/arbitrum-42161/0x11e4e70b4ac087624f55d1dccab306440250a3a0/); arbitrum `0x72dfd3...db19ef`; arbitrum `0xcaba6d...f956a7` | ⚠️ Unaudited |
| PlutusVaultGLPUnwrapperTrader | unknown | arbitrum | n/a | [`0xb5010b...3f6d37`](./contracts/arbitrum-42161/0xb5010ba20fd127af143ccfd9d77fd4c6923f6d37/) | ⚠️ Unaudited |
| PlutusVaultGLPWrappedTokenUserVaultFactory | unknown | arbitrum | n/a | [`0x5c80ac...cfb043`](./contracts/arbitrum-42161/0x5c80ac681b6b0e7ef6e0751211012601e6cfb043/) | ⚠️ Unaudited |
| PlutusVaultGLPWrappedTokenUserVaultV1 | unknown | arbitrum | n/a | [`0x978d46...66f8aa`](./contracts/arbitrum-42161/0x978d4694f02474faef4e1d7ac19038968066f8aa/) | ⚠️ Unaudited |
| PlutusVaultGLPWrapperTrader | unknown | arbitrum | n/a | [`0xc2fa9f...010b92`](./contracts/arbitrum-42161/0xc2fa9f48b166bca8706ab53a60dca28979010b92/) | ⚠️ Unaudited |
| PlutusVaultRegistry | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6fceb6...c6d1bb`](./contracts/arbitrum-42161/0x6fceb6c2930d274b703b02a94eebaac7ecc6d1bb/); arbitrum `0x704ed0...2ed8f3` | ⚠️ Unaudited |
| PlutusVaultRegistry | unknown | arbitrum | n/a | [`0xccb359...113ce5`](./contracts/arbitrum-42161/0xccb35971036a6fd0c37e04cb3d6658a57a113ce5/) | ⚠️ Unaudited |
| PtGLPTransformer | unknown | arbitrum | n/a | [`0xc410e7...fac564`](./contracts/arbitrum-42161/0xc410e7d4592dbde2aab26dd28ff0bf6937fac564/) | ⚠️ Unaudited |
| RamsesCLPriceOracle | unknown | arbitrum | n/a | [`0x86acc8...3fe41b`](./contracts/arbitrum-42161/0x86acc8e126b2c5f1bec52d7bcff1ba66b23fe41b/) | ⚠️ Unaudited |
| RamsesLegacyPriceOracle | unknown | arbitrum | n/a | [`0x44d96d...da52e0`](./contracts/arbitrum-42161/0x44d96d7b7b655d8372680075942f1fab41da52e0/) | ⚠️ Unaudited |
| RedstonePriceOracle | unknown | arbitrum | n/a | [`0x67d5c2...c7f759`](./contracts/arbitrum-42161/0x67d5c219e9a91b1918a129c721a58d0f88c7f759/) | ⚠️ Unaudited |
| RedstonePriceOracleV3 | unknown | arbitrum | n/a | 4 deployments: ethereum `0xe09f85...4cdd45`; base `0xe09f85...4cdd45`; arbitrum [`0x5fbae9...be01d2`](./contracts/arbitrum-42161/0x5fbae9cbbc209efdf2054e050baf5a0783be01d2/); berachain `0xe09f85...4cdd45` | ⚠️ Unaudited |
| RegistryProxy | unknown | arbitrum | n/a | 11 deployments: ethereum `0xfee366...24daae`; arbitrum [`0x1572ba...d5b733`](./contracts/arbitrum-42161/0x1572ba6f148240ee2205d38de91c23d644d5b733/); arbitrum `0x1b349d...5777d5`; arbitrum `0x33d83d...eb5315`; arbitrum `0x66ea40...64696e`; arbitrum `0x6a5c48...ac72ea`; arbitrum `0x8169e2...610625`; arbitrum `0x97f893...e1b210`; arbitrum `0x9e3246...fb1169`; arbitrum `0xe5f586...6f6e3f`; arbitrum `0xf088cc...1fd963` | ⚠️ Unaudited |
| RegularAirdrop | operational_periphery | berachain | n/a | [`0xa3f079...838bc9`](./contracts/berachain-80094/0xa3f079292cc35ba64996fe0bce3049928a838bc9/) | ⚠️ Unaudited |
| RewardsDistributor | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x2e3d10...728b4b`](./contracts/arbitrum-42161/0x2e3d10cc42227af0ce908f00c76ffe1de1728b4b/); arbitrum `0x669b04...a598ad`; arbitrum `0x66cd7d...73db67`; arbitrum `0xfb47dc...0d8360` | ⚠️ Unaudited |
| RollingClaims | unknown | berachain | n/a | [`0x79e6e9...a8a026`](./contracts/berachain-80094/0x79e6e932bf6686a4d357d7821e6e08835ba8a026/) | ⚠️ Unaudited |
| RouterProxy | adapter | mantle | n/a | 2 deployments: mantle [`0x7b61cb...72bc6b`](./contracts/mantle-5000/0x7b61cba306cfdb02493b94757143132b1b72bc6b/); mantle `0xf579b3...133d0f` | ⚠️ Unaudited |
| SafeDelegateCallLib | unknown | mantle | n/a | 2 deployments: mantle [`0x52d57f...41a5a9`](./contracts/mantle-5000/0x52d57f0b5df4050d9b44181284e06c6d7341a5a9/); arbitrum `0xaa6509...8bb425` | ⚠️ Unaudited |
| SafeGettersForDolomiteMargin | unknown | arbitrum | n/a | [`0x938194...f7a16a`](./contracts/arbitrum-42161/0x9381942de7a66fdb4741272eab4fc0a362f7a16a/) | ⚠️ Unaudited |
| SafeL2 | unknown | arbitrum | n/a | [`0xa75c21...55a1d4`](./contracts/arbitrum-42161/0xa75c21c5be284122a87a37a76cc6c4dd3e55a1d4/) | ⚠️ Unaudited |
| SignedOperationProxy | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x0a2d7d...11ab5d`](./contracts/arbitrum-42161/0x0a2d7ddd83f04e2afaf5d8f6f08baa97bb11ab5d/); arbitrum `0x3d28c5...5531b1`; arbitrum `0x6da4cf...bbc427`; arbitrum `0x80de7c...3de7fb`; arbitrum `0xfc2806...366ea8` | ⚠️ Unaudited |
| SimpleFeeOwner | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x07e323...da779a`](./contracts/arbitrum-42161/0x07e323c9303b5646ea265e55d826c88625da779a/); arbitrum `0x2fdb2b...6f8785`; arbitrum `0x947f60...9b9aee`; arbitrum `0xd802d4...c631c2` | ⚠️ Unaudited |
| SimpleIsolationModeUnwrapperTraderV2 | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x0234d1...e0db31`](./contracts/arbitrum-42161/0x0234d14f457d17c851c64ac67f364f5969e0db31/); arbitrum `0x192c34...d9d695`; arbitrum `0x66aa62...b7ea4e`; arbitrum `0x77e91d...55ee68`; arbitrum `0x8cdf57...2c145c`; arbitrum `0xe437e7...41d9b0` | ⚠️ Unaudited |
| SimpleIsolationModeWrapperTraderV2 | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x21f339...a83a74`](./contracts/arbitrum-42161/0x21f3395697b529a44ae1f4172ffcb9ebc9a83a74/); arbitrum `0x2e5973...47b77f`; arbitrum `0x32fa54...985b68`; arbitrum `0x4f69f6...b09598`; arbitrum `0x7f9434...beea52`; arbitrum `0xf68eb4...bd8c74` | ⚠️ Unaudited |
| StakedGmxReader | unknown | arbitrum | n/a | [`0x49c4e0...5378ba`](./contracts/arbitrum-42161/0x49c4e0322cc04416d0929ae4e653286d155378ba/) | ⚠️ Unaudited |
| StrategicVestingClaims | operational_periphery | berachain | n/a | [`0x7efd08...061176`](./contracts/berachain-80094/0x7efd088ae500598a19a242d6d48b9f7e0d061176/) | ⚠️ Unaudited |
| TradeImpl | unknown | arbitrum | n/a | 5 deployments: mantle `0xb7576f...699e7e`; arbitrum [`0x1e0be7...cf56d7`](./contracts/arbitrum-42161/0x1e0be797880d3db0ce503cd40429a3a9f1cf56d7/); arbitrum `0x2fe6f5...127642`; arbitrum `0x7d157f...a19f58`; arbitrum `0xdce03d...39d379` | ⚠️ Unaudited |
| TransferImpl | unknown | mantle | n/a | 5 deployments: mantle [`0x21f683...a1cce8`](./contracts/mantle-5000/0x21f683ede5eb0e8a6f1768cc7dbaba0dfca1cce8/); arbitrum `0x2f503b...f9ba90`; arbitrum `0x52d57f...41a5a9`; arbitrum `0xf691b8...4eefa4`; arbitrum `0xfed1f9...e259a4` | ⚠️ Unaudited |
| TWAPPriceOracle | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x1093e0...5af851`](./contracts/arbitrum-42161/0x1093e0e82ec11080d6239538a5d5c60d155af851/); arbitrum `0x7dc900...d5e127`; arbitrum `0x8ddfa8...bf8b21`; arbitrum `0xad635c...9f9b1b`; arbitrum `0xcb1091...aedf47` | ⚠️ Unaudited |
| TWAPPriceOracleV2 | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x289f70...41d645`](./contracts/arbitrum-42161/0x289f703af4999dc51189cd023a6873fd6141d645/); arbitrum `0x5fa8c3...2e9dec`; arbitrum `0x7c72f2...913787`; arbitrum `0x8979c6...5adacd`; arbitrum `0xcaa06e...472dda` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | mantle | n/a | [`0x836b55...34e4e5`](./contracts/mantle-5000/0x836b557cf9ef29fcf49c776841191782df34e4e5/) | ⚠️ Unaudited |
| USDMRouter | adapter | arbitrum | n/a | [`0xa9b377...7f6c6d`](./contracts/arbitrum-42161/0xa9b377b97395c4031750ce8e9397c00c577f6c6d/) | ⚠️ Unaudited |
| VeArt | unknown | berachain | n/a | [`0x54267e...68a6f0`](./contracts/berachain-80094/0x54267e603646648e623a7a3c21dbbd4cd968a6f0/) | ⚠️ Unaudited |
| VeExternalVesterImplementationV2 | operational_periphery | berachain | n/a | [`0x3e9b9a...2d2cec`](./contracts/berachain-80094/0x3e9b9a16743551da49b5e136c716bba7932d2cec/) | ⚠️ Unaudited |
| VeFeeCalculator | unknown | berachain | n/a | [`0xa7b2c7...917ce9`](./contracts/berachain-80094/0xa7b2c7b13e7628b70dda64a257767f7292917ce9/) | ⚠️ Unaudited |
| VesterDiscountCalculatorV1 | unknown | arbitrum | n/a | [`0x8b43f6...d6a4da`](./contracts/arbitrum-42161/0x8b43f6e9de2dc56afee03393a7d80e66ecd6a4da/) | ⚠️ Unaudited |
| VesterExploder | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2c9052...62cb62`](./contracts/arbitrum-42161/0x2c9052bb57898c3c2c6239f3d69567fc5962cb62/); arbitrum `0xc34c2f...7e503a` | ⚠️ Unaudited |
| VesterImplementation | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa8e31f...b2efcd`](./contracts/arbitrum-42161/0xa8e31f2b9e4c91f41a19f82bedefca86d8b2efcd/); arbitrum `0xbf08a2...c1bddc` | ⚠️ Unaudited |
| VesterImplementation | unknown | arbitrum | n/a | [`0xd086c3...91ba80`](./contracts/arbitrum-42161/0xd086c37e84146f6a03bacab54f80db3b2691ba80/) | ⚠️ Unaudited |
| VesterImplementationLibForV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x174860...833f16`](./contracts/arbitrum-42161/0x174860044994694943117b597486071df4833f16/); arbitrum `0xd2b57e...02e682` | ⚠️ Unaudited |
| VesterImplementationV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2960c1...36157d`](./contracts/arbitrum-42161/0x2960c15a51bf8b190b579e6bb2f74c75e136157d/); arbitrum `0x36416f...d73a02` | ⚠️ Unaudited |
| VesterImplementationV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x531bc6...b63797`](./contracts/arbitrum-42161/0x531bc6e97b65adf8b3683240bd594932cfb63797/); arbitrum `0xdb3e6b...8172a5` | ⚠️ Unaudited |
| VestingClaims | operational_periphery | berachain | n/a | [`0x3a025c...c06c07`](./contracts/berachain-80094/0x3a025c7fcf7632197ea82e64acd6ff53e1c06c07/) | ⚠️ Unaudited |
| VestingClaims | operational_periphery | berachain | n/a | [`0xbd225c...f20f7b`](./contracts/berachain-80094/0xbd225c09e4b032e41d5e8aea5f81efff45f20f7b/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | berachain | n/a | [`0xcb86b7...e141d4`](./contracts/berachain-80094/0xcb86b75ee6133d179a12d550b09fb3cdb1e141d4/) | ⚠️ Unaudited |
| WithdrawalImpl | unknown | arbitrum | n/a | 5 deployments: mantle `0x77694d...457d40`; arbitrum [`0x017e2a...0bc4ec`](./contracts/arbitrum-42161/0x017e2a089ec5712bbdb8e7b2a0903269f40bc4ec/); arbitrum `0x43c2fd...4ab4ae`; arbitrum `0x8dc7c0...a88332`; arbitrum `0xa8c900...435da5` | ⚠️ Unaudited |
| WorldLibertyFinancial | unknown | ethereum | n/a | [`0x372235...1a706c`](./contracts/ethereum-1/0x3722359be0bfebb541bc98adfe1250cd901a706c/) | ⚠️ Unaudited |
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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 245 |

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
