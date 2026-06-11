# Agentic Audit Brief: Wan Bridge

## Project Overview

- Project: Wan Bridge (`wan-bridge`)
- Website: [https://bridge.wanchain.org](https://bridge.wanchain.org)
- Lifecycle: active (Tier 0, 38% below peak)
- Generated: 2026-06-11T04:04:31.322Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-7b75
- Chains: arbitrum, avalanche, base, blast, celo, ethereum, fantom, linea, metis, moonbeam, moonriver, optimism, polygon, polygon-zkevm
- Contract surface: 129 unique implementations (338 raw deployments)
- DeFi Llama TVL: $26,052,327.62
- On-chain TVL (included contracts): $4,597.48
- TVL by chain: Base $3,871.21 | Avalanche $676.35 | Moonbeam $49.92

## Project Description

Wan Bridge is Wanchain's cross-chain interoperability and asset-transfer protocol. Its relevant protocol surface should be limited to bridge, router, proxy, token-manager, oracle, verifier, and messaging infrastructure used for cross-chain transfers. Staking, farming, liquidity-pool, reward, and unrelated token contracts should not be described as Wan Bridge core functionality unless independently verified as project-owned bridge infrastructure.

### Architecture

The Wan Bridge family relies on CrossProxy and CrossDelegateV4 contracts to manage cross-chain message passing and asset transfers, while bVault and various pool contracts handle liquidity and staking. Governance controllers (FarmV2Controller, FarmV3Controller) and reward contracts (NyanRewards, etc.) support farming incentives, and oracle proxies provide price feeds across chains.

## Audit Coverage Summary

- Verified implementations audited: 0/48 (0.0%)
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 4
- Unverified implementations: 81
- Unique implementations: 129
- Raw deployments: 338
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $4,597.48
- Latest audit: 2019-07 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| WrappedToken | token | base | 12 deployments: base [`0x05e030...010282`](./contracts/base-8453/0x05e0302e690632b33b831c61a847f159ae010282/); base `0x1e7e46...b4a625`; base `0x3bb870...85e3ee`; base `0x4b1690...0fc95e`; base `0x72ccf6...9178ae`; base `0x73d923...62728c`; base `0x7e5fe1...a35aac`; base `0xb1f19e...325b4d`; base `0xb30778...bb2546`; base `0xc5cd7e...3810c2`; base `0xd7466f...a34c69`; base `0xe0cf5a...3a5e01` | ⚠️ Unaudited |
| MappingTokenV2 | token | moonriver | 29 deployments: moonbeam `0x283ad8...812d09`; moonbeam `0x30950e...bbbc27`; moonbeam `0x455feb...878d90`; moonbeam `0x533114...c89ef4`; moonbeam `0x5f0061...d52776`; moonbeam `0x935ad1...3a93bb`; moonbeam `0xb43645...7f2c36`; moonbeam `0xcd6f47...b2dedd`; moonriver [`0x147dba...57446d`](./contracts/moonriver-1285/0x147dbae284bbd624b7b5a98dc862e21e8857446d/); moonriver `0x15b9ca...b3d445`; moonriver `0x41562a...36b09f`; moonriver `0x53f14c...6925ae`; moonriver `0x576fde...af1111`; moonriver `0x748134...4bdeb3`; moonriver `0x78f811...2897c3`; moonriver `0x9d5bc9...bba2fe`; moonriver `0xa4dd0b...f27862`; moonriver `0xa4fc4a...406cac`; moonriver `0xb668cd...b32804`; moonriver `0xbef008...6e958f`; moonriver `0xc005a7...304993`; moonriver `0xd924f1...6039de`; moonriver `0xdd7f2b...374ae7`; moonriver `0xe936ca...84cda7`; moonriver `0xffef26...b20613`; avalanche `0x8d9dcc...eb70b6`; avalanche `0x9e529b...1448e5`; avalanche `0xd38bfd...21fff9`; avalanche `0xea6887...5cddef` | ⚠️ Unaudited |
| ApeRewards | unknown | arbitrum | [`0xb970e2...e46655`](./contracts/arbitrum-42161/0xb970e280f9ddaa3349ab9f3ecf778970cde46655/) | ⚠️ Unaudited |
| ARBIS | unknown | arbitrum | [`0x9f20de...b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | moonbeam | 4 deployments: moonbeam [`0x77286f...8573a6`](./contracts/moonbeam-1284/0x77286f5257e090b1bedbc6df6726d53cbf8573a6/); moonriver `0xfada8c...d4680e`; celo `0xdd11b6...12303f`; avalanche `0x864a0b...23f213` | ⚠️ Unaudited |
| Bn128SchnorrVerifier | periphery | moonriver | 12 deployments: ethereum `0x842715...70321a`; optimism `0x8d42d3...3f3fe8`; polygon `0x86b830...558d0e`; metis `0x8d42d3...3f3fe8`; moonbeam `0x6e228a...16354d`; moonriver [`0x0e3f52...c8414d`](./contracts/moonriver-1285/0x0e3f52157df2d2974949570b1871aecbaec8414d/); base `0x7e0195...e4dfc9`; arbitrum `0x86b830...558d0e`; celo `0x86ec03...9ea4e4`; avalanche `0xe162d7...0887b5`; linea `0x9c17ec...59b85f`; blast `0x5b0b9d...530f6b` | ⚠️ Unaudited |
| CarbonRewards | unknown | arbitrum | [`0x2c5058...d49f45`](./contracts/arbitrum-42161/0x2c5058325373d02dfd6c08e48d91fcaf8fd49f45/) | ⚠️ Unaudited |
| CommonProxy | unknown | polygon | [`0x2055ae...f58a3a`](./contracts/polygon-137/0x2055ae7250f814995ab41499ba1963f2c2f58a3a/) | ⚠️ Unaudited |
| CrossAdminManager | governance | optimism | [`0xe1efc9...cbd269`](./contracts/optimism-10/0xe1efc9336d6ee679f1b47a01d4d0ef5ab8cbd269/) | ⚠️ Unaudited |
| CrossDelegate | bridge_template | ethereum | 2 deployments: ethereum [`0x0b9818...5d3895`](./contracts/ethereum-1/0x0b98183f06ce5694736880ed644c74606e5d3895/); ethereum `0x81677c...bb388e` | ⚠️ Unaudited |
| CrossDelegateV2 | unknown | arbitrum | [`0x75df5d...6f9e85`](./contracts/arbitrum-42161/0x75df5dc2769770789e6a053fe2e14454e36f9e85/) | ⚠️ Unaudited |
| CrossProxy | proxy | avalanche | 4 deployments: metis `0xc6ae1d...bf9dbf`; avalanche [`0x079ae7...81099e`](./contracts/avalanche-43114/0x079ae74b9ebd1d4f51ce2d1848565829b081099e/); avalanche `0x74e121...037c3a`; linea `0xc21e55...91f603` | ⚠️ Unaudited |
| CrossSwapEntrance | unknown | base | 2 deployments: optimism `0x9cf661...3a28c6`; base [`0x5bc813...e444d6`](./contracts/base-8453/0x5bc813a8bf026e099ee8ec16fe6b178761e444d6/) | ⚠️ Unaudited |
| FeeHelper | periphery | linea | 2 deployments: optimism `0xeac9c2...574988`; linea [`0xb30778...bb2546`](./contracts/linea-59144/0xb30778550a959c207601d77ff13fe38a5abb2546/) | ⚠️ Unaudited |
| GroupApprove | unknown | blast | 6 deployments: optimism `0x329f16...f1cf83`; metis `0x16b389...3b4c6b`; base `0xd97de6...2ca082`; celo `0x48dbcc...204d38`; linea `0x3cc979...3c1058`; blast [`0x131dfc...655132`](./contracts/blast-81457/0x131dfc3ca32d3a959012606855320cbe8e655132/) | ⚠️ Unaudited |
| HTLCDebtLib | unknown | ethereum | [`0x6b052e...14aeef`](./contracts/ethereum-1/0x6b052e5abeaed172cb485ae11cdecd130c14aeef/) | ⚠️ Unaudited |
| HTLCDebtLibV2 | unknown | polygon | 2 deployments: polygon [`0x47be7c...61ba53`](./contracts/polygon-137/0x47be7cc7c13315fdd1bbf3dbab512af23961ba53/); arbitrum [`0x47be7c...61ba53`](./contracts/arbitrum-42161/0x47be7cc7c13315fdd1bbf3dbab512af23961ba53/) | ⚠️ Unaudited |
| HTLCTxLib | unknown | polygon | 3 deployments: ethereum `0xe6b408...f34483`; polygon [`0x63c5ac...34f18f`](./contracts/polygon-137/0x63c5acc9bd1cfc14582a5520415480c33734f18f/); arbitrum [`0x63c5ac...34f18f`](./contracts/arbitrum-42161/0x63c5acc9bd1cfc14582a5520415480c33734f18f/) | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| Layer2BridgeDelegate | operational_periphery | arbitrum | 2 deployments: polygon `0xbd4191...425e49`; arbitrum [`0x382b08...61af7a`](./contracts/arbitrum-42161/0x382b085a47cff1ea34bac4fe016f5fa5f061af7a/) | ⚠️ Unaudited |
| Layer2BridgeDelegateV2 | operational_periphery | polygon | 5 deployments: polygon [`0x011754...5b2a06`](./contracts/polygon-137/0x011754d9a4661d914141a96a03684f147e5b2a06/); polygon `0x4dee9c...305dfb`; polygon `0xd557cc...fe727e`; arbitrum `0x599b4d...10c016`; arbitrum `0x783353...00ca6c` | ⚠️ Unaudited |
| MarinateAutoCompounder | adapter | arbitrum | [`0x1922c3...1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | ⚠️ Unaudited |
| Messager | unknown | optimism | [`0x012297...c86f86`](./contracts/optimism-10/0x012297f3d1cb0d685b195a70231730f4c8c86f86/) | ⚠️ Unaudited |
| Multicall2 | periphery | celo | 7 deployments: base `0x1ed353...232fb6`; base `0xbe5187...5000d3`; celo [`0x149180...160765`](./contracts/celo-42220/0x149180976acce60ced0a9c339853c9d1d4160765/); linea `0x5b0b9d...530f6b`; linea `0x8d42d3...3f3fe8`; linea `0xd4b5f1...8a1437`; blast `0xd4b5f1...8a1437` | ⚠️ Unaudited |
| MulticallV2 | periphery | metis | [`0x0d10a0...22353b`](./contracts/metis-1088/0x0d10a02696cb9cfdc4de45bd5580eda85f22353b/) | ⚠️ Unaudited |
| NyanRewards | unknown | arbitrum | 3 deployments: arbitrum [`0x32e559...1aa724`](./contracts/arbitrum-42161/0x32e5594f14de658b0d577d6560fa0d9c6f1aa724/); arbitrum `0x62ff5b...d2da2c`; arbitrum `0xf6a377...4a703d` | ⚠️ Unaudited |
| OracleDelegate | operational_periphery | moonbeam | 26 deployments: ethereum `0xbb38d1...b9f228`; ethereum `0xeeeab4...64fda2`; optimism `0xbe5187...5000d3`; optimism `0xc21e55...91f603`; polygon `0x7f70d0...ea93aa`; polygon `0x8d5085...1c5858`; polygon `0xbf9076...f47d18`; metis `0xc21e55...91f603`; moonbeam [`0x079497...8935ba`](./contracts/moonbeam-1284/0x079497f92f4522b3b17112aa8d28c4ce138935ba/); moonbeam `0xcaa36d...3b1748`; moonriver `0x1d920b...27627c`; moonriver `0x9c9ec2...7d7d79`; moonriver `0xffd3e7...dd6e05`; base `0x290108...78a61b`; base `0x70114d...491799`; arbitrum `0x7f70d0...ea93aa`; arbitrum `0xbf9076...f47d18`; celo `0x4c0cad...04c11a`; celo `0x9c1153...b914c8`; avalanche `0x69f3cd...3a0fbb`; avalanche `0x716f88...ebd035`; linea `0x7e0195...e4dfc9`; linea `0xbe5187...5000d3`; linea `0xdf8af8...85e3fe`; blast `0x8d42d3...3f3fe8`; blast `0xbe5187...5000d3` | ⚠️ Unaudited |
| OracleProxy | operational_periphery | polygon | 2 deployments: polygon [`0x75df5d...6f9e85`](./contracts/polygon-137/0x75df5dc2769770789e6a053fe2e14454e36f9e85/); metis `0xbe5187...5000d3` | ⚠️ Unaudited |
| PONGRewards | unknown | arbitrum | [`0xe34003...098bc2`](./contracts/arbitrum-42161/0xe340031b61a394c7811868ef81d2eacc79098bc2/) | ⚠️ Unaudited |
| PooledMappingToken | core_logic | avalanche | [`0xae110a...2b7534`](./contracts/avalanche-43114/0xae110a0e6e5ddb0108f6d752f754b575d62b7534/) | ⚠️ Unaudited |
| QuotaDelegate | unknown | ethereum | 8 deployments: ethereum [`0x0eff4c...10c601`](./contracts/ethereum-1/0x0eff4c50f6c32a2815d79bded30eb60e2410c601/); ethereum `0x169ea2...831f62`; moonriver `0x5950e8...ef1969`; moonriver `0x603be4...d076a5`; moonriver `0x7ee4c2...d5cb4a`; moonriver `0x83600c...c51f0d`; avalanche `0x3c84ef...28281b`; avalanche `0x4c4ca7...40c845` | ⚠️ Unaudited |
| RapidityLib | unknown | ethereum | [`0xf6fad8...b6bd9c`](./contracts/ethereum-1/0xf6fad8f166c4a766568f0d821a30ff5d21b6bd9c/) | ⚠️ Unaudited |
| RapidityLibV2 | unknown | arbitrum | 2 deployments: polygon `0xf7ba15...b97613`; arbitrum [`0x8d5085...1c5858`](./contracts/arbitrum-42161/0x8d508595f094c42ade6d3625a206abe9551c5858/) | ⚠️ Unaudited |
| Secp256k1SchnorrVerifier | periphery | ethereum | [`0xc654a9...cc6ff0`](./contracts/ethereum-1/0xc654a945e8ed388c0477f81f1be531946fcc6ff0/) | ⚠️ Unaudited |
| SignatureVerifier | periphery | optimism | 12 deployments: ethereum `0x9276ee...d28f3d`; optimism [`0x09cdfc...82bcd2`](./contracts/optimism-10/0x09cdfc56439643d151585b77899d0dc0f982bcd2/); polygon `0x8818c7...e62999`; metis [`0x09cdfc...82bcd2`](./contracts/metis-1088/0x09cdfc56439643d151585b77899d0dc0f982bcd2/); moonbeam `0xe727e8...2b825a`; moonriver `0xc565ed...77702c`; base `0xffb876...5f4a65`; arbitrum `0x8818c7...e62999`; celo `0xe0c8c2...4536ff`; avalanche `0x4f1d3d...12345c`; linea `0x6957e0...4ebfbd`; blast [`0x09cdfc...82bcd2`](./contracts/blast-81457/0x09cdfc56439643d151585b77899d0dc0f982bcd2/) | ⚠️ Unaudited |
| SimpleMultiSender | unknown | base | 2 deployments: optimism `0x1e7e46...b4a625`; base [`0x0e57db...a9f1df`](./contracts/base-8453/0x0e57db96f34aaa743a3f77e8fc0b17641ca9f1df/) | ⚠️ Unaudited |
| stARBIS | unknown | arbitrum | [`0xbf0075...d2db86`](./contracts/arbitrum-42161/0xbf00759d7e329d7a7fa1d4dcdc914c53d1d2db86/) | ⚠️ Unaudited |
| TimelockController | governance | blast | 4 deployments: optimism `0x858df5...462155`; metis `0x7f27b1...319c4b`; celo `0xf865a3...436e24`; blast [`0x6584d7...856006`](./contracts/blast-81457/0x6584d72dbc6b1a5d74f49bc9300042b586856006/) | ⚠️ Unaudited |
| TokenManagerDelegate | governance | ethereum | [`0x6a132d...2c288d`](./contracts/ethereum-1/0x6a132d12b674d93e32b4877dc0381c72332c288d/) | ⚠️ Unaudited |
| TokenManagerDelegateV2 | governance | base | 23 deployments: ethereum `0xbab933...b6e9e1`; optimism `0x1ed353...232fb6`; optimism `0xd4b5f1...8a1437`; polygon `0x1bc20d...08e865`; polygon `0x9b1f4c...5839e7`; polygon `0xc928c8...c6111e`; metis `0xd4b5f1...8a1437`; moonbeam `0xc814ff...184169`; moonriver `0x32e150...a53b7f`; base [`0x09cdfc...82bcd2`](./contracts/base-8453/0x09cdfc56439643d151585b77899d0dc0f982bcd2/); base `0x50133f...1f0cf2`; base `0x8d42d3...3f3fe8`; arbitrum `0x5585cb...cbd415`; arbitrum `0xc928c8...c6111e`; celo `0x77e369...0c7059`; celo `0xd6965a...e7c694`; avalanche `0xf06d72...5e8355`; linea [`0x09cdfc...82bcd2`](./contracts/linea-59144/0x09cdfc56439643d151585b77899d0dc0f982bcd2/); linea `0x1ed353...232fb6`; linea `0x4f1ab7...935bad`; linea `0x97e088...d3ca7b`; blast `0x1ed353...232fb6`; blast `0x50133f...1f0cf2` | ⚠️ Unaudited |
| TokenManagerProxy | governance | base | 4 deployments: metis `0x1ed353...232fb6`; moonriver `0xe136d1...20a78b`; base [`0x1289f7...ac9f8b`](./contracts/base-8453/0x1289f70b8a16797cccbfcca8a845f36324ac9f8b/); linea `0x50133f...1f0cf2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | [`0xeb986d...373674`](./contracts/ethereum-1/0xeb986da994e4a118d5956b02d8b7c3c7ce373674/) | ⚠️ Unaudited |
| WanCctpV2 | unknown | base | 10 deployments: optimism `0x2f676c...2296fb`; optimism `0x555cf9...9cd6a3`; optimism `0xa63a35...7b4f27`; optimism `0xf5db31...3b5d43`; base [`0x2ab376...38c838`](./contracts/base-8453/0x2ab37662ac4dc8aada595256cd57221c0c38c838/); base `0x40c1aa...4e890d`; base `0x441bff...24d859`; base `0x510703...5c72f8`; base `0x697986...d7ed15`; base `0x76c513...a4610e` | ⚠️ Unaudited |
| WmbGateway | unknown | linea | 4 deployments: optimism `0x9c0e23...478408`; base `0xa67a44...ee252e`; base `0xe15698...7fb272`; linea [`0x2e042c...389a3d`](./contracts/linea-59144/0x2e042cf87aea59c4826b379e3302b8ac02389a3d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (4)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CrossDelegateV4 | bridge_template | optimism | 24 deployments: ethereum `0xfceaaa...bc334e`; optimism [`0x00e533...8f5e28`](./contracts/optimism-10/0x00e5330ece02a25be85cfdfc1a19d5f06c8f5e28/); optimism `0xc6ae1d...bf9dbf`; optimism `0xc95a4b...55446d`; polygon `0x221607...f201ab`; polygon `0x6a60b5...5a72f6`; metis `0xc02642...383e41`; metis `0xc95a4b...55446d`; moonbeam `0x6372ae...6b95b5`; moonriver `0xde1ae3...d6671d`; base `0x2715aa...60cd04`; base `0x2f676c...2296fb`; base `0x97e088...d3ca7b`; arbitrum `0x011754...5b2a06`; arbitrum `0xf7ba15...b97613`; celo `0x14ca89...4d6a1d`; celo `0xee9192...96858e`; linea `0x65b3ae...5d3bf9`; linea `0x70114d...491799`; linea `0xc6ae1d...bf9dbf`; linea `0xffb876...5f4a65`; blast [`0x00e533...8f5e28`](./contracts/blast-81457/0x00e5330ece02a25be85cfdfc1a19d5f06c8f5e28/); blast `0xc21e55...91f603`; blast `0xc6ae1d...bf9dbf` | ⚠️ Unaudited (bytecode match) |
| Fee | unknown | base | 2 deployments: optimism `0x592de3...02e0b6`; base [`0x012297...c86f86`](./contracts/base-8453/0x012297f3d1cb0d685b195a70231730f4c8c86f86/) | ⚠️ Unaudited (bytecode match) |
| NFTLibV1 | unknown | linea | 11 deployments: optimism `0x50133f...1f0cf2`; optimism `0xb30778...bb2546`; metis `0x50133f...1f0cf2`; base `0x5b0b9d...530f6b`; base `0xa63a35...7b4f27`; base `0xc95a4b...55446d`; linea [`0x1289f7...ac9f8b`](./contracts/linea-59144/0x1289f70b8a16797cccbfcca8a845f36324ac9f8b/); linea `0x2715aa...60cd04`; linea `0x8968cc...a6b5f3`; blast [`0x1289f7...ac9f8b`](./contracts/blast-81457/0x1289f70b8a16797cccbfcca8a845f36324ac9f8b/); blast `0xb30778...bb2546` | ⚠️ Unaudited (bytecode match) |
| RapidityLibV4 | unknown | optimism | 10 deployments: optimism [`0x1289f7...ac9f8b`](./contracts/optimism-10/0x1289f70b8a16797cccbfcca8a845f36324ac9f8b/); optimism `0xbe2019...5aa17d`; metis [`0x1289f7...ac9f8b`](./contracts/metis-1088/0x1289f70b8a16797cccbfcca8a845f36324ac9f8b/); base `0x4f1ab7...935bad`; base `0x555cf9...9cd6a3`; linea `0x290108...78a61b`; linea `0x3bb870...85e3ee`; linea `0xc95a4b...55446d`; blast `0xbe2019...5aa17d`; blast `0xc95a4b...55446d` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (81)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x72ccf64ee5e2c7629ee4eee3e6ad6990289178ae) | proxy | linea | `0xe1efc9...cbd269` | ❓ Unverified |
| Proxy (impl: 0x8afac7ba82bbd551032330cb9f3b21d9b7ba0d9d) | proxy | base | `0xeac9c2...574988` | ❓ Unverified |
| Proxy (impl: 0xc0264277fcca5fcfabd41a8bc01c1fcaf8383e41) | proxy | optimism | `0x7f27b1...319c4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2532d7...dfa000` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2af614...55bc37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x88f54a...f030e3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x3bb870...85e3ee` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x8ba0fb...5656bc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xc02642...383e41` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xc5cd7e...3810c2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xdd4b9b...be6e2c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xe15698...7fb272` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x16b8ca...833c59` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1bbc16...d1e9ab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3906d8...a7cbec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5585cb...cbd415` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdb9728...1452b3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xea0c75...cbee2b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xeeaaf9...91b997` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x76b8c3...34cbaa` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x9c30e4...ed894e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xccffe9...d69ee3` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x691201...5640c6` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xdd4b9b...be6e2c` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xb13afe...39a754` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xbe5187...5000d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xc21e55...91f603` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x0de505...342275` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x247a1b...3f0e3f` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x2a8bdd...30d3f9` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x398d96...43939e` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x3a6e4f...9c5ce1` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x46ebef...b7ec73` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x634cd4...fb3c88` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x75609d...507924` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x75b12f...433a52` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xb2db18...2be6c1` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xb83410...a024cf` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xbacaaa...713477` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x1fe0c2...ee4b16` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x2c2c7d...d9fb12` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x864a0b...23f213` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x947934...af2131` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xbf19c3...de343a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xce8201...deaa1b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xdd5f00...efe423` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xe91893...b647f9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xf8b0d1...af5762` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4dcb61...ce50a1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8afac7...ba0d9d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc21e55...91f603` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc6ae1d...bf9dbf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdd4b9b...be6e2c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x374e9f...3af13a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4dee9c...305dfb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x71f7f4...ba0824` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb66f96...5cb3a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xea0c75...cbee2b` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x1faa6f...af7655` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x526a2a...e95913` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0a7cdb...2c6aa7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x265fc6...d2c114` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x26834c...d64576` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3a0e43...339d3e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4cbce6...8434fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x52f447...fdbcaa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x574d44...940dcb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6473af...3f0a19` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x69e9fb...77c5cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x822c43...c8c379` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x841d89...5183ee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa47267...7dfc88` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb24999...89d969` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb58078...39aeef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc9ea89...056c9d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xccf619...818e24` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe0866e...03047f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf1ea78...110200` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfe6317...75b249` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfe6b1a...2cd15b` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x72ccf6...9178ae` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Wanchain 1.0.pdf](https://github.com/wanchain/Audits/blob/master/Wanchain%201.0.pdf) | unknown | Audit | 2018-07 | stale | Direct | n/a | 0 | n/a |
| [Wanchain Open Storeman.pdf](https://github.com/wanchain/Audits/blob/master/Wanchain%20Open%20Storeman.pdf) | unknown | Audit | 2019-02 | stale | Direct | n/a | 0 | n/a |
| [Wanchain PoS.pdf](https://github.com/wanchain/Audits/blob/master/Wanchain%20PoS.pdf) | unknown | Audit | 2019-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x05e030...010282`](./contracts/base-8453/0x05e0302e690632b33b831c61a847f159ae010282/) | WrappedToken | token | $3,871.21 | Verified native implementation with $3,871.21 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x147dba...57446d`](./contracts/moonriver-1285/0x147dbae284bbd624b7b5a98dc862e21e8857446d/) | MappingTokenV2 | token | $726.27 | Verified native implementation with $726.27 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb970e2...e46655`](./contracts/arbitrum-42161/0xb970e280f9ddaa3349ab9f3ecf778970cde46655/) | ApeRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9f20de...b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ARBIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x77286f...8573a6`](./contracts/moonbeam-1284/0x77286f5257e090b1bedbc6df6726d53cbf8573a6/) | AutoFarmV2_CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2c5058...d49f45`](./contracts/arbitrum-42161/0x2c5058325373d02dfd6c08e48d91fcaf8fd49f45/) | CarbonRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2055ae...f58a3a`](./contracts/polygon-137/0x2055ae7250f814995ab41499ba1963f2c2f58a3a/) | CommonProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xe1efc9...cbd269`](./contracts/optimism-10/0xe1efc9336d6ee679f1b47a01d4d0ef5ab8cbd269/) | CrossAdminManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b9818...5d3895`](./contracts/ethereum-1/0x0b98183f06ce5694736880ed644c74606e5d3895/) | CrossDelegate | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x75df5d...6f9e85`](./contracts/arbitrum-42161/0x75df5dc2769770789e6a053fe2e14454e36f9e85/) | CrossDelegateV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x00e533...8f5e28`](./contracts/optimism-10/0x00e5330ece02a25be85cfdfc1a19d5f06c8f5e28/) | CrossDelegateV4 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x079ae7...81099e`](./contracts/avalanche-43114/0x079ae74b9ebd1d4f51ce2d1848565829b081099e/) | CrossProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5bc813...e444d6`](./contracts/base-8453/0x5bc813a8bf026e099ee8ec16fe6b178761e444d6/) | CrossSwapEntrance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xb30778...bb2546`](./contracts/linea-59144/0xb30778550a959c207601d77ff13fe38a5abb2546/) | FeeHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x131dfc...655132`](./contracts/blast-81457/0x131dfc3ca32d3a959012606855320cbe8e655132/) | GroupApprove | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b052e...14aeef`](./contracts/ethereum-1/0x6b052e5abeaed172cb485ae11cdecd130c14aeef/) | HTLCDebtLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x47be7c...61ba53`](./contracts/polygon-137/0x47be7cc7c13315fdd1bbf3dbab512af23961ba53/) | HTLCDebtLibV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x63c5ac...34f18f`](./contracts/polygon-137/0x63c5acc9bd1cfc14582a5520415480c33734f18f/) | HTLCTxLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x382b08...61af7a`](./contracts/arbitrum-42161/0x382b085a47cff1ea34bac4fe016f5fa5f061af7a/) | Layer2BridgeDelegate | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x011754...5b2a06`](./contracts/polygon-137/0x011754d9a4661d914141a96a03684f147e5b2a06/) | Layer2BridgeDelegateV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1922c3...1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | MarinateAutoCompounder | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x012297...c86f86`](./contracts/optimism-10/0x012297f3d1cb0d685b195a70231730f4c8c86f86/) | Messager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x32e559...1aa724`](./contracts/arbitrum-42161/0x32e5594f14de658b0d577d6560fa0d9c6f1aa724/) | NyanRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x079497...8935ba`](./contracts/moonbeam-1284/0x079497f92f4522b3b17112aa8d28c4ce138935ba/) | OracleDelegate | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x75df5d...6f9e85`](./contracts/polygon-137/0x75df5dc2769770789e6a053fe2e14454e36f9e85/) | OracleProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe34003...098bc2`](./contracts/arbitrum-42161/0xe340031b61a394c7811868ef81d2eacc79098bc2/) | PONGRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xae110a...2b7534`](./contracts/avalanche-43114/0xae110a0e6e5ddb0108f6d752f754b575d62b7534/) | PooledMappingToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0eff4c...10c601`](./contracts/ethereum-1/0x0eff4c50f6c32a2815d79bded30eb60e2410c601/) | QuotaDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6fad8...b6bd9c`](./contracts/ethereum-1/0xf6fad8f166c4a766568f0d821a30ff5d21b6bd9c/) | RapidityLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8d5085...1c5858`](./contracts/arbitrum-42161/0x8d508595f094c42ade6d3625a206abe9551c5858/) | RapidityLibV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1289f7...ac9f8b`](./contracts/optimism-10/0x1289f70b8a16797cccbfcca8a845f36324ac9f8b/) | RapidityLibV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0e57db...a9f1df`](./contracts/base-8453/0x0e57db96f34aaa743a3f77e8fc0b17641ca9f1df/) | SimpleMultiSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbf0075...d2db86`](./contracts/arbitrum-42161/0xbf00759d7e329d7a7fa1d4dcdc914c53d1d2db86/) | stARBIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a132d...2c288d`](./contracts/ethereum-1/0x6a132d12b674d93e32b4877dc0381c72332c288d/) | TokenManagerDelegate | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x09cdfc...82bcd2`](./contracts/base-8453/0x09cdfc56439643d151585b77899d0dc0f982bcd2/) | TokenManagerDelegateV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1289f7...ac9f8b`](./contracts/base-8453/0x1289f70b8a16797cccbfcca8a845f36324ac9f8b/) | TokenManagerProxy | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ab376...38c838`](./contracts/base-8453/0x2ab37662ac4dc8aada595256cd57221c0c38c838/) | WanCctpV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x2e042c...389a3d`](./contracts/linea-59144/0x2e042cf87aea59c4826b379e3302b8ac02389a3d/) | WmbGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 85 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3319] Wanchain 1.0.pdf
- [3320] Wanchain Open Storeman.pdf
- [3321] Wanchain PoS.pdf

Fork inheritance lineage and inherited audits are included when available.
