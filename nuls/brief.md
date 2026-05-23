# Agentic Audit Brief: Nuls

## Project Overview

- Project: Nuls (`nuls`)
- Website: [https://nuls.io](https://nuls.io)
- Lifecycle: active (Tier 0, 79.6% below peak)
- Generated: 2026-05-23T09:13:13.282Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, aurora, avalanche, boba, bsc, celo, cronos, ethereum, fantom, gnosis, harmony, heco, manta, moonbeam, moonriver, optimism, polygon
- Contract surface: 904 unique implementations (1288 raw deployments)
- DeFi Llama TVL: $7,331,698.00
- On-chain TVL (included contracts): $1,847,012.61
- TVL by chain: Ethereum $1,691,224.64 | Arbitrum $155,787.27 | Bsc $0.70

## Project Description

Nuls is a multi-chain DeFi protocol offering yield farming, staking, and liquidity provision across numerous blockchains. It aggregates various vaults, pools, and reward mechanisms to enable users to earn yield on deposited assets.

### Architecture

The Nuls family shares infrastructure through governance controllers (FarmV2Controller, FarmV3Controller) that manage multiple farm and vault contracts, while proxy patterns (ArcProxy, TransparentUpgradeableProxy) enable upgradeability across tokens and cross-chain gateways. Liquidity pool tokens (PancakePair, UniswapV2Pair) are commonly used as underlying assets in vaults and staking contracts.

## Audit Coverage Summary

- Verified implementations audited: 0/185 (0.0%)
- Verified + Unaudited implementations: 185
- Verified by bytecode match: 0
- Unverified implementations: 719
- Unique implementations: 904
- Raw deployments: 1288
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,847,012.61
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (185)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ArcxTokenV2 | token | ethereum | [`0x1321f1...9bb288`](./contracts/ethereum-1/0x1321f1f1aa541a56c31682c57b80ecfccd9bb288/) | ⚠️ Unaudited |
| bVault | core_logic | ethereum | 6 deployments: ethereum [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/); ethereum `0x378388...a35153`; ethereum `0x3fb6b0...15a2cc`; ethereum `0x750d30...7996d0`; ethereum `0x801690...85dc0e`; ethereum `0x8d9a39...ec6108` | ⚠️ Unaudited |
| TokenStore | token | ethereum | 2 deployments: ethereum [`0x0440ae...25c87c`](./contracts/ethereum-1/0x0440ae12f329dbd7306b6d9edbb0e667c225c87c/); ethereum `0xa90e66...a79405` | ⚠️ Unaudited |
| BACDAIPool | core_logic | ethereum | [`0xebd126...02bde8`](./contracts/ethereum-1/0xebd12620e29dc6c452db7b96e1f190f3ee02bde8/) | ⚠️ Unaudited |
| BACUSDCPool | core_logic | ethereum | [`0x518821...429fd4`](./contracts/ethereum-1/0x51882184b7f9beed6db9c617846140da1d429fd4/) | ⚠️ Unaudited |
| BACUSDTPool | core_logic | ethereum | [`0x2833bd...877e44`](./contracts/ethereum-1/0x2833bdc5b31269d356bdf92d0fd8f3674e877e44/) | ⚠️ Unaudited |
| MIMETHStrategy2 | core_logic | arbitrum | [`0x47a156...46a49b`](./contracts/arbitrum-42161/0x47a156668f1ecc659efbbf4910508ace1b46a49b/) | ⚠️ Unaudited |
| ArbisETHLPFarmStrategy | core_logic | arbitrum | [`0x303f12...b86a3e`](./contracts/arbitrum-42161/0x303f12da29fa6346361a9e4feb5db073c5b86a3e/) | ⚠️ Unaudited |
| NyanToken | token | arbitrum | [`0xed3fb7...188dfc`](./contracts/arbitrum-42161/0xed3fb761414da74b74f33e5c5a1f78104b188dfc/) | ⚠️ Unaudited |
| StakingAccrualERC20V5 | token | ethereum | [`0x9bffad...fd7d9d`](./contracts/ethereum-1/0x9bffad7a6d5f52dbc51cae33e419793c72fd7d9d/) | ⚠️ Unaudited |
| StrategyArpa | core_logic | ethereum | [`0xa3063c...63095e`](./contracts/ethereum-1/0xa3063cf3a934068cbe8f55212577a1ffbe63095e/) | ⚠️ Unaudited |
| SwaprLPFarmStrategy | core_logic | arbitrum | [`0x1c3e7f...da1a56`](./contracts/arbitrum-42161/0x1c3e7f51a9d24e813fa7c2614713b727a4da1a56/) | ⚠️ Unaudited |
| CarbonToken | token | arbitrum | [`0xfa42da...a98b40`](./contracts/arbitrum-42161/0xfa42da1bd08341537a44a4ca9d236d1c00a98b40/) | ⚠️ Unaudited |
| BASPool | core_logic | ethereum | [`0x5859ad...8120c0`](./contracts/ethereum-1/0x5859adb05988946b9d08dce2e12ae29af58120c0/) | ⚠️ Unaudited |
| MIMETHARBISSHARESFarmStrategy | core_logic | arbitrum | [`0xaed29d...fd879d`](./contracts/arbitrum-42161/0xaed29d87da3e3294854c8b966b54ccae3bfd879d/) | ⚠️ Unaudited |
| MarinateStrategyFarm | core_logic | arbitrum | 2 deployments: arbitrum [`0x6a0f4a...8f339b`](./contracts/arbitrum-42161/0x6a0f4afb31e90c378fa2aaa40371a652578f339b/); arbitrum `0xd8a18e...01b72d` | ⚠️ Unaudited |
| HoneyETHLPStrategy | core_logic | arbitrum | [`0x9ab60e...37d41c`](./contracts/arbitrum-42161/0x9ab60e8db1ff7d1d18d03e8d821bd440c337d41c/) | ⚠️ Unaudited |
| SPELLETHStrategy | core_logic | arbitrum | 3 deployments: arbitrum [`0x5ec477...85a9fc`](./contracts/arbitrum-42161/0x5ec477eda75303450a4185b3557c2c2fbb85a9fc/); arbitrum `0xdc2d66...f2cd51`; arbitrum `0xe5eb0b...e0b562` | ⚠️ Unaudited |
| BACSUSDPool | core_logic | ethereum | [`0xdc42a2...93305c`](./contracts/ethereum-1/0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c/) | ⚠️ Unaudited |
| ERC20Peg | token | ethereum | 2 deployments: ethereum [`0x76bac8...4c6e32`](./contracts/ethereum-1/0x76bac85e1e82cd677faa2b3f00c4a2626c4c6e32/); ethereum `0x8f68fe...9900ec` | ⚠️ Unaudited |
| AtmosSoftToken | token | bsc | 7 deployments: bsc [`0x093933...5c7b24`](./contracts/bsc-56/0x0939334570c289f70ab5c63b9387d6f0845c7b24/); bsc `0x12b514...829bb8`; bsc `0x33eba2...907d7c`; bsc `0x4d232f...8c1a76`; bsc `0xaaffbd...df6f74`; bsc `0xc3a83d...79c4c1`; bsc `0xc53c65...0270a3` | ⚠️ Unaudited |
| Address | unknown | bsc | [`0x481ca9...a1694b`](./contracts/bsc-56/0x481ca976d8fffb079fe410100cdedfa76ba1694b/) | ⚠️ Unaudited |
| Airdrop | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x92f605...64923f`](./contracts/arbitrum-42161/0x92f6052f5c9efe4f7486e1a0a79cd8961964923f/); arbitrum `0xc4431d...2696b7` | ⚠️ Unaudited |
| AirdropController | operational_periphery | optimism | [`0x4f9ba0...4e3a0e`](./contracts/optimism-10/0x4f9ba083132033594326a69fa90ad3f1a84e3a0e/) | ⚠️ Unaudited |
| AirdropV2Controller | operational_periphery | optimism | [`0x94e92b...07de7f`](./contracts/optimism-10/0x94e92b32adf955494606b0119fd8a0d6f607de7f/) | ⚠️ Unaudited |
| ApeRewards | unknown | arbitrum | 3 deployments: arbitrum [`0x1179c7...6ce81e`](./contracts/arbitrum-42161/0x1179c7619be6d0ab8d4d7c3ec187bce59c6ce81e/); arbitrum `0x6a01a9...dd5d60`; arbitrum `0xb970e2...e46655` | ⚠️ Unaudited |
| ApeRewardsETH | unknown | arbitrum | 5 deployments: arbitrum [`0x4b7321...98f867`](./contracts/arbitrum-42161/0x4b7321dbb67ef6e4cf88252ccadcbd86cd98f867/); arbitrum `0x4ded0b...5a41a1`; arbitrum `0x5e598d...a313f2`; arbitrum `0xda02cb...370e61`; arbitrum `0xf750ea...f00575` | ⚠️ Unaudited |
| ApeStrategy | core_logic | arbitrum | [`0xab4bf7...d2621a`](./contracts/arbitrum-42161/0xab4bf76a278fd67c649b41dd8f349ec87cd2621a/) | ⚠️ Unaudited |
| ApeToken | token | arbitrum | 2 deployments: arbitrum [`0x575cef...cb158b`](./contracts/arbitrum-42161/0x575cef1826fcff308b4c3e98aa29fb7856cb158b/); arbitrum `0x7fe4b7...f96ce8` | ⚠️ Unaudited |
| ArbiRewards | unknown | arbitrum | 2 deployments: arbitrum [`0xaafb61...006ad2`](./contracts/arbitrum-42161/0xaafb614b238bf003d35c97c4f46503e164006ad2/); arbitrum `0xb68c54...9de7d9` | ⚠️ Unaudited |
| ARBIS | unknown | arbitrum | [`0x9f20de...b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ⚠️ Unaudited |
| ArbiSPARTA | unknown | arbitrum | [`0xf86e25...15970a`](./contracts/arbitrum-42161/0xf86e25f235d2107b4886dab3e1ecd00e8e15970a/) | ⚠️ Unaudited |
| ArbitrumWormholeGatewayUpgraded | unknown | arbitrum | [`0x1293a5...a15458`](./contracts/arbitrum-42161/0x1293a54e160d1cd7075487898d65266081a15458/) | ⚠️ Unaudited |
| AtmosSoftNFTMarket | token | bsc | [`0x06f2ab...c1d4dd`](./contracts/bsc-56/0x06f2ab649fd575574444ff8e4e92323492c1d4dd/) | ⚠️ Unaudited |
| AutoFarm | unknown | bsc | 5 deployments: bsc [`0x0df9c5...fd41fb`](./contracts/bsc-56/0x0df9c5fb57bc3b90e73563e9adb672bea2fd41fb/); bsc `0x17f619...60172f`; bsc `0x267ef1...fc1bb8`; bsc `0x65620c...187b62`; bsc `0x68def7...68e3d5` | ⚠️ Unaudited |
| AutoFarmV2 | unknown | bsc | 8 deployments: bsc [`0x089519...450452`](./contracts/bsc-56/0x0895196562c7868c5be92459fae7f877ed450452/); bsc `0x1217ff...0a7b99`; bsc `0x238a9d...50e4ab`; bsc `0x25f9b7...00a89e`; bsc `0xf0d2d0...a898f1`; bsc `0xf44d42...e32dfb`; bsc `0xf6c361...07cde2`; bsc `0xfad31b...17968a` | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | celo | 13 deployments: gnosis `0xfada8c...d4680e`; polygon `0x7e8503...d35b13`; polygon `0x89d065...eb0b76`; polygon `0xc26e54...ace833`; moonbeam `0x77286f...8573a6`; moonriver `0xfada8c...d4680e`; celo [`0x1900b5...5a22fc`](./contracts/celo-42220/0x1900b571ff3fcbc60208f3e5d6f25497745a22fc/); celo `0x5f60f1...3242be`; celo `0xdd11b6...12303f`; avalanche `0x864a0b...23f213`; aurora `0x3b2763...5b69a5`; aurora `0x4b6ed3...b2f68f`; aurora `0x625374...71a700` | ⚠️ Unaudited |
| AUTOToken | token | bsc | 7 deployments: bsc [`0x097509...fdaff0`](./contracts/bsc-56/0x09750927d289131d40d6e5ff34d431432bfdaff0/); bsc `0x2099a8...b62a85`; bsc `0x37facf...7a9870`; bsc `0x4508ab...85eccb`; bsc `0x9fa3c8...29188f`; bsc `0xaa3a59...759bba`; bsc `0xd26532...848ceb` | ⚠️ Unaudited |
| AUTOv2 | unknown | bsc | 4 deployments: bsc [`0x12300e...abfe24`](./contracts/bsc-56/0x12300ea3d3444e9106c65913de24c58462abfe24/); bsc `0xa18408...78b827`; bsc `0xee22d7...ef3220`; bsc `0xf93053...38d3a6` | ⚠️ Unaudited |
| BabyPair | unknown | bsc | [`0xaf18cd...1875d8`](./contracts/bsc-56/0xaf18cde26fdd22561df2a02958cba092f41875d8/) | ⚠️ Unaudited |
| BACPool | core_logic | ethereum | [`0x7e7ae8...d6ed8c`](./contracts/ethereum-1/0x7e7ae8923876955d6dcb7285c04065a1b9d6ed8c/) | ⚠️ Unaudited |
| BACyCRVPool | core_logic | ethereum | [`0xc462d8...14c3bf`](./contracts/ethereum-1/0xc462d8ee54953e7d7bf276612b75387ea114c3bf/) | ⚠️ Unaudited |
| BadgerHunt | unknown | ethereum | 3 deployments: ethereum [`0x6b6356...e9a140`](./contracts/ethereum-1/0x6b63564a8b3f145b3ef085bcc197c0ff64e9a140/); ethereum `0xc798ca...62d05c`; ethereum `0xf0b24a...eb37c2` | ⚠️ Unaudited |
| BellaStaking | unknown | ethereum | [`0x6cb6ff...04649d`](./contracts/ethereum-1/0x6cb6ff550ea4473ed462f8bda38ae3226c04649d/) | ⚠️ Unaudited |
| Berry | unknown | bsc | 6 deployments: bsc [`0x0cef58...3d5faa`](./contracts/bsc-56/0x0cef58f80fad7904556fc7801e46a7618e3d5faa/); bsc `0x0e3001...7fdbdb`; bsc `0x4bb2cb...0bfbd3`; bsc `0x4faf8a...7238a1`; bsc `0x89c0be...384ed4`; bsc `0xc2f0d6...207fcc` | ⚠️ Unaudited |
| BerryBox | unknown | bsc | 2 deployments: bsc [`0x08f230...be998e`](./contracts/bsc-56/0x08f2303633a8e376ee02d0c4f07952bf05be998e/); bsc `0x1a9038...ce80ce` | ⚠️ Unaudited |
| BerryDataNFT | token | bsc | [`0x0aef47...a14da8`](./contracts/bsc-56/0x0aef47fe18180f61b87de7e85712652bd8a14da8/) | ⚠️ Unaudited |
| BerryDispute | unknown | bsc | [`0x624d25...ebcf9f`](./contracts/bsc-56/0x624d25cb42c7f0940531101d47414e3a58ebcf9f/) | ⚠️ Unaudited |
| BerryLibrary | unknown | bsc | [`0x734e3b...3390e1`](./contracts/bsc-56/0x734e3b5bd16b43eb82f203950f983ef6003390e1/) | ⚠️ Unaudited |
| BerryMaster | unknown | bsc | 2 deployments: bsc [`0x7e7fe9...dbee2e`](./contracts/bsc-56/0x7e7fe9e40fc3b8a7ce85da44801f9efe9bdbee2e/); bsc `0xf859bf...07f830` | ⚠️ Unaudited |
| BerryStake | unknown | bsc | [`0x283af9...f6b3ae`](./contracts/bsc-56/0x283af939416eebf8413b382338bf1537c1f6b3ae/) | ⚠️ Unaudited |
| BerryTransfer | unknown | bsc | [`0xee9a08...5b30ca`](./contracts/bsc-56/0xee9a080a7773669870f58d024d25b157cb5b30ca/) | ⚠️ Unaudited |
| BIP11 | unknown | ethereum | [`0xa6f889...c115a2`](./contracts/ethereum-1/0xa6f889c3cedbdf6cb524813da0ee0ffaddc115a2/) | ⚠️ Unaudited |
| BitANTOptimism | unknown | optimism | [`0x5029c2...beded3`](./contracts/optimism-10/0x5029c236320b8f15ef0a657054b84d90bfbeded3/) | ⚠️ Unaudited |
| BitBTCL2BridgeOptimism | operational_periphery | optimism | [`0x158f51...6725e2`](./contracts/optimism-10/0x158f513096923ff2d3aab2bcf4478536de6725e2/) | ⚠️ Unaudited |
| BitBTCOptimism | unknown | optimism | [`0xc98b98...e1f272`](./contracts/optimism-10/0xc98b98d17435aa00830c87ea02474c5007e1f272/) | ⚠️ Unaudited |
| BlackPoolToken | core_logic | ethereum | 2 deployments: ethereum [`0x0ec9f7...7e37da`](./contracts/ethereum-1/0x0ec9f76202a7061eb9b3a7d6b59d36215a7e37da/); ethereum `0x5feabd...d828e2` | ⚠️ Unaudited |
| Boardroom | unknown | ethereum | 4 deployments: ethereum [`0x27c20f...96fd4f`](./contracts/ethereum-1/0x27c20f0b0ad78805084eeb8407291326e996fd4f/); ethereum `0x4b1824...0a342c`; ethereum `0xa01ffb...154a65`; ethereum `0xffd035...5d6118` | ⚠️ Unaudited |
| BoardroomV2 | unknown | ethereum | [`0xecf0dd...33e42a`](./contracts/ethereum-1/0xecf0dde35f6d895c065e7526348af1e79433e42a/) | ⚠️ Unaudited |
| BOG | unknown | bsc | [`0xb09fe1...f36b09`](./contracts/bsc-56/0xb09fe1613fe03e7361319d2a43edc17422f36b09/) | ⚠️ Unaudited |
| BOGDEXUtils | unknown | bsc | [`0xf5df07...ae4589`](./contracts/bsc-56/0xf5df072fd5b89cb481cb1c112b4cfcd5e5ae4589/) | ⚠️ Unaudited |
| BOGMigrationData | operational_periphery | bsc | 2 deployments: bsc [`0x7edc99...776107`](./contracts/bsc-56/0x7edc998a097d372388f1a142ca92401538776107/); bsc `0xa48589...a1b3b9` | ⚠️ Unaudited |
| BOGMigrationDistributor | operational_periphery | bsc | 2 deployments: bsc [`0x3e4cd6...c116de`](./contracts/bsc-56/0x3e4cd6f7fdda6712ca93713fc1425ca69ec116de/); bsc `0xf36b3c...38b231` | ⚠️ Unaudited |
| BOGRouterV1 | adapter | bsc | [`0xa86b60...1e2812`](./contracts/bsc-56/0xa86b6018ffb7d29f9a3ab59ba27d9e424c1e2812/) | ⚠️ Unaudited |
| BOGRouterV2 | adapter | bsc | [`0x6bbf1f...9351e3`](./contracts/bsc-56/0x6bbf1fa4a7ee6525f36ae8ffb6ee22dd009351e3/) | ⚠️ Unaudited |
| BOGRouterV3 | adapter | bsc | [`0xb2ddf4...9ceba4`](./contracts/bsc-56/0xb2ddf4b9116a64bf80082a2efa1821ca5f9ceba4/) | ⚠️ Unaudited |
| BOGStaking | unknown | bsc | 6 deployments: bsc [`0x297b04...5a3744`](./contracts/bsc-56/0x297b04683d0d8f230ec03e9f815cd47b065a3744/); bsc `0x2f0596...8d978b`; bsc `0x54c0d1...d86dd6`; bsc `0xc056aa...94cd67`; bsc `0xc3ab35...a18b65`; bsc `0xcd4826...b690b9` | ⚠️ Unaudited |
| BOGWhitelist | unknown | bsc | [`0xe77570...539b08`](./contracts/bsc-56/0xe77570724e7c6c339cdb22f0d3dabcbbec539b08/) | ⚠️ Unaudited |
| Bond | unknown | ethereum | [`0xc36824...f5abc5`](./contracts/ethereum-1/0xc36824905dff2eaaee7ecc09fcc63abc0af5abc5/) | ⚠️ Unaudited |
| Bondroom | unknown | ethereum | [`0xd9a904...efe109`](./contracts/ethereum-1/0xd9a904a1320b5f0a1f742a9e431ded2a55efe109/) | ⚠️ Unaudited |
| CarbonRewards | unknown | arbitrum | 4 deployments: arbitrum [`0x27f040...e4e10d`](./contracts/arbitrum-42161/0x27f0408729dcc6a4672e1062f5003d2a07e4e10d/); arbitrum `0x2c5058...d49f45`; arbitrum `0x45acd6...818722`; arbitrum `0x701e59...ec97d7` | ⚠️ Unaudited |
| CarbonStrategy | core_logic | arbitrum | [`0xbb6121...331fc2`](./contracts/arbitrum-42161/0xbb6121d3c929360ade1c1d4b515cf5c2fc331fc2/) | ⚠️ Unaudited |
| Cash | unknown | ethereum | [`0x3449fc...03a69a`](./contracts/ethereum-1/0x3449fc1cd036255ba1eb19d65ff4ba2b8903a69a/) | ⚠️ Unaudited |
| CavePool | core_logic | bsc | 4 deployments: bsc [`0x282ffb...020b9c`](./contracts/bsc-56/0x282ffbe782f903340a14955649032302e8020b9c/); bsc `0xa65d60...73cfe4`; bsc `0xf313ed...586ea9`; bsc `0xffda3f...6ce8fd` | ⚠️ Unaudited |
| CENNZnetBridge | operational_periphery | ethereum | 2 deployments: ethereum [`0x369e22...0913ec`](./contracts/ethereum-1/0x369e2285ccf43483e76746cebbf3d1d6060913ec/); ethereum `0xf7997b...a53930` | ⚠️ Unaudited |
| ChefMaster | unknown | bsc | 7 deployments: bsc [`0x1e3709...9417f9`](./contracts/bsc-56/0x1e37097fc71fd892219b266f9bb12558719417f9/); bsc `0x5906ab...ae8984`; bsc `0x72618d...e594b8`; bsc `0x81c9e8...4e3cca`; bsc `0x8ce942...ced915`; bsc `0xa1a240...b8a0ba`; bsc `0xb88a38...64f01a` | ⚠️ Unaudited |
| ControlledAsset | unknown | ethereum | [`0x4c48fd...47d30c`](./contracts/ethereum-1/0x4c48fd8ed6f6a50bf03dbdefe7d74983f447d30c/) | ⚠️ Unaudited |
| Controller | governance | ethereum | [`0xd8c534...504d2a`](./contracts/ethereum-1/0xd8c5344e331d5f4161f03726870ce9da8b504d2a/) | ⚠️ Unaudited |
| DAIBACLPTokenSharePool | core_logic | ethereum | [`0x067d4d...f9db0f`](./contracts/ethereum-1/0x067d4d3ce63450e74f880f86b5b52ea3edf9db0f/) | ⚠️ Unaudited |
| DAIBASLPTokenSharePool | core_logic | ethereum | [`0x9569d4...fb0d0a`](./contracts/ethereum-1/0x9569d4cd7ac5b010da5697e952efb1ec0efb0d0a/) | ⚠️ Unaudited |
| Distribution | unknown | ethereum | [`0x818f83...402f2e`](./contracts/ethereum-1/0x818f83333244ba4bb72dab0b60b1901158402f2e/) | ⚠️ Unaudited |
| Distributor | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x14897d...dd40db`](./contracts/arbitrum-42161/0x14897d1510f60640f7c2e5a3eea48f21eddd40db/); arbitrum `0x7ff964...eed12a` | ⚠️ Unaudited |
| DPXStrategy | core_logic | arbitrum | [`0x0b9c52...98f427`](./contracts/arbitrum-42161/0x0b9c52febf284c4cfc20c6311e90cca0b198f427/) | ⚠️ Unaudited |
| ERC20VestingRescindable | operational_periphery | arbitrum | 4 deployments: arbitrum [`0x1d047d...ab149d`](./contracts/arbitrum-42161/0x1d047d01ff68188f4d2079d8f9119d7b33ab149d/); arbitrum `0x50ef42...0d3328`; arbitrum `0x61318c...3c1b3e`; arbitrum `0x812f04...59b050` | ⚠️ Unaudited |
| ERC721Timelock | governance | optimism | [`0xa61f98...641b92`](./contracts/optimism-10/0xa61f98fd2bd043bb7c2d560b67204334b0641b92/) | ⚠️ Unaudited |
| FarmerToken | token | bsc | [`0x864a0b...23f213`](./contracts/bsc-56/0x864a0b7f8466247a0e44558d29cdc37d4623f213/) | ⚠️ Unaudited |
| FarmList | unknown | arbitrum | 2 deployments: arbitrum [`0x78dddc...dbcd0f`](./contracts/arbitrum-42161/0x78dddc12ec57b3a80b9160cfaa4274e3d8dbcd0f/); arbitrum `0xdd7e7a...0cedca` | ⚠️ Unaudited |
| FarmV2Controller | governance | optimism | 2 deployments: optimism [`0x03bba8...702d85`](./contracts/optimism-10/0x03bba86e68c7dd733703cbcd44072082af702d85/); optimism `0x30ee8f...2d0d9f` | ⚠️ Unaudited |
| FarmV3Controller | governance | optimism | [`0xecbaff...cad827`](./contracts/optimism-10/0xecbaffaa5c4e94219f4c166dac9d4a1520cad827/) | ⚠️ Unaudited |
| Feeder | unknown | ethereum | [`0x065894...8eb1b0`](./contracts/ethereum-1/0x06589479a31f826410bbd6d43410e7ff2d8eb1b0/) | ⚠️ Unaudited |
| GovernorBravoDelegate | governance | arbitrum | [`0xd4722a...70c673`](./contracts/arbitrum-42161/0xd4722a14d0b73edb948e9c96fa9278d8d870c673/) | ⚠️ Unaudited |
| GovernorBravoDelegator | governance | arbitrum | [`0x0ff9ea...ac3587`](./contracts/arbitrum-42161/0x0ff9eab68d3a17258d90796d2b328008e7ac3587/) | ⚠️ Unaudited |
| HoneyADOGELPStrategy | core_logic | arbitrum | [`0x1cc155...0b6266`](./contracts/arbitrum-42161/0x1cc1554b76acc2968d6ecb15681e7e95c80b6266/) | ⚠️ Unaudited |
| HoneyEscrow | operational_periphery | arbitrum | [`0x989f62...62c233`](./contracts/arbitrum-42161/0x989f625a4536f0710be11e7292a9f5e0d562c233/) | ⚠️ Unaudited |
| HoneyUSDCLPStrategy | core_logic | arbitrum | [`0xe91713...bae18d`](./contracts/arbitrum-42161/0xe91713db2fabfef98a882de9bb7c583b5ebae18d/) | ⚠️ Unaudited |
| IbTokenOracle | operational_periphery | bsc | [`0x958a90...d9a8be`](./contracts/bsc-56/0x958a906585a6d2cf5367f38f1ea306bbadd9a8be/) | ⚠️ Unaudited |
| InitialCashDistributor | operational_periphery | ethereum | [`0x666c2a...54c0cd`](./contracts/ethereum-1/0x666c2a4625ef5f8cf66a24fbff9f22437754c0cd/) | ⚠️ Unaudited |
| InitialShareDistributor | operational_periphery | ethereum | [`0x3c5323...e2f4bb`](./contracts/ethereum-1/0x3c53230875877321023f757c33d2faf71de2f4bb/) | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | 2 deployments: arbitrum [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/); arbitrum `0xda534b...681365` | ⚠️ Unaudited |
| LinearThreshold | unknown | ethereum | [`0xcdbae6...120b11`](./contracts/ethereum-1/0xcdbae6de88c7525369d6826ae1cdcab415120b11/) | ⚠️ Unaudited |
| LinearVester | operational_periphery | arbitrum | 5 deployments: arbitrum [`0x09eab9...e3200e`](./contracts/arbitrum-42161/0x09eab9c75152ee707b8da7595aa0b8c87be3200e/); arbitrum `0x5b39f5...84b5c1`; arbitrum `0x659c62...532e8f`; arbitrum `0x6f9e32...f47400`; arbitrum `0xe7a848...6151ae` | ⚠️ Unaudited |
| MagicETH2Strategy | core_logic | arbitrum | [`0xb31a8c...2b8d5f`](./contracts/arbitrum-42161/0xb31a8caac061206ea4be16a6fc547e8bd92b8d5f/) | ⚠️ Unaudited |
| MAGICStrategy | core_logic | arbitrum | [`0xee589b...ef8bce`](./contracts/arbitrum-42161/0xee589bc5e65e7e43199e9b0701768ada3cef8bce/) | ⚠️ Unaudited |
| MantaMintableERC20 | token | manta | 17 deployments: manta [`0x01d275...dbc02a`](./contracts/manta-169/0x01d27580c464d5b3b26f78bee12e684901dbc02a/); manta `0x078f71...90604b`; manta `0x091745...627442`; manta `0x0f52a5...3ccbb4`; manta `0x207d76...8a2181`; manta `0x4220e9...e8c8ff`; manta `0x6025f8...06cfb0`; manta `0x8d7090...ab566a`; manta `0x90e957...eb6917`; manta `0x916476...295f9a`; manta `0x975896...85eadd`; manta `0xab8653...fa5605`; manta `0xb01e11...7c5aa9`; manta `0xb385e5...88e1ce`; manta `0xbab1c5...59d154`; manta `0xd21237...0bc46d`; manta `0xe22e3d...7f0020` | ⚠️ Unaudited |
| MantaMintableERC20WithBridgeFlag | operational_periphery | manta | [`0xbdad40...61fb07`](./contracts/manta-169/0xbdad407f77f44f7da6684b416b1951eca461fb07/) | ⚠️ Unaudited |
| MarinateAutoCompounder | adapter | arbitrum | [`0x1922c3...1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | ⚠️ Unaudited |
| MarinateV2 | unknown | arbitrum | 4 deployments: arbitrum [`0x28e8fb...c9bb9d`](./contracts/arbitrum-42161/0x28e8fbea79201a134bf9506c47926f179bc9bb9d/); arbitrum `0x2adabd...4a92a4`; arbitrum `0x5f6207...4da6b7`; arbitrum `0xaf2283...0e8032` | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | 2 deployments: ethereum [`0x01d41b...e3b40e`](./contracts/ethereum-1/0x01d41bb9964e95df586974fe68996e3bd4e3b40e/); ethereum `0xc2edad...a888cd` | ⚠️ Unaudited |
| MechBotsNFT | token | bsc | [`0x30b866...ccafd1`](./contracts/bsc-56/0x30b86606f89c09d2a77cb2929092230351ccafd1/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | [`0x1b6043...ade677`](./contracts/ethereum-1/0x1b604349100a318e369b59a6d6c1b65a31ade677/) | ⚠️ Unaudited |
| Migrator | periphery | ethereum | 2 deployments: ethereum [`0x818180...d94830`](./contracts/ethereum-1/0x818180acb9d300ffc023be2300addb6879d94830/); ethereum `0x820670...b7f154` | ⚠️ Unaudited |
| Multicall | periphery | aurora | [`0xd26ddb...4e0a23`](./contracts/aurora-1313161554/0xd26ddb60efb6267db68f18801491c2292c4e0a23/) | ⚠️ Unaudited |
| MultiSigPeriodicTimeLock | governance | arbitrum | [`0x53c9ca...4c675b`](./contracts/arbitrum-42161/0x53c9ca5d494b9a41c43637d12e8369db7b4c675b/) | ⚠️ Unaudited |
| MythicsNFT | token | bsc | [`0x820d13...ed6e40`](./contracts/bsc-56/0x820d132571e112ff6264b0327ba77a7a99ed6e40/) | ⚠️ Unaudited |
| NFTCavePool | core_logic | bsc | 6 deployments: bsc [`0x0a7847...99f5d4`](./contracts/bsc-56/0x0a78471cb73f87ffa1377c3425999ea8ec99f5d4/); bsc `0x2f58a3...72e052`; bsc `0x600f4b...7f546e`; bsc `0xc54ada...c204cc`; bsc `0xc90bc4...e96d25`; bsc `0xf750f3...a7c0af` | ⚠️ Unaudited |
| NFTCavePoolTriple | core_logic | bsc | 3 deployments: bsc [`0x67d252...4804b1`](./contracts/bsc-56/0x67d252f051645320339f9a8e26b86b3bf74804b1/); bsc `0x7bce8a...bab864`; bsc `0xf5b852...8f062e` | ⚠️ Unaudited |
| NyanBridge | operational_periphery | arbitrum | [`0x504027...76d393`](./contracts/arbitrum-42161/0x504027bb37a1d34dbdb19cd494f2d1afb476d393/) | ⚠️ Unaudited |
| NyanEscrow | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x211a39...d4ef63`](./contracts/arbitrum-42161/0x211a39dcbf67d3781af34a824c716ad0c8d4ef63/); arbitrum `0xce789f...b555be` | ⚠️ Unaudited |
| NYANETHStrategy | core_logic | arbitrum | 2 deployments: arbitrum [`0x6f7bf5...1840e6`](./contracts/arbitrum-42161/0x6f7bf5cb2b274e654a16e64f8259fceaf41840e6/); arbitrum `0xf28510...7ec7b9` | ⚠️ Unaudited |
| NyanRewards | unknown | arbitrum | 8 deployments: arbitrum [`0x01b5e2...84230b`](./contracts/arbitrum-42161/0x01b5e2a392da78c8d42644272c4b7adbfb84230b/); arbitrum `0x245e27...1b0c8c`; arbitrum `0x32e559...1aa724`; arbitrum `0x516beb...37d3eb`; arbitrum `0x62ff5b...d2da2c`; arbitrum `0x9f7968...03a76f`; arbitrum `0xd0d65a...7e5cc2`; arbitrum `0xf6a377...4a703d` | ⚠️ Unaudited |
| NyanStrategy | core_logic | arbitrum | 4 deployments: arbitrum [`0x1ea9c7...e9e52f`](./contracts/arbitrum-42161/0x1ea9c72b8152c7fc0128351e42536f7b7be9e52f/); arbitrum `0x7864ba...920b3a`; arbitrum `0xb7cf07...45581c`; arbitrum `0xfa92f7...51c251` | ⚠️ Unaudited |
| Oracle | operational_periphery | ethereum | 6 deployments: ethereum [`0x1b3868...8ff7ed`](./contracts/ethereum-1/0x1b3868247dfbc155fa59b30ec03e63b10a8ff7ed/); ethereum `0x3e233a...7fdfec`; ethereum `0x6a8618...30ff44`; ethereum `0x751d0e...bf75ca`; ethereum `0x8a573c...1f9502`; ethereum `0xe4efd8...7debfa` | ⚠️ Unaudited |
| PancakePair | unknown | bsc | 7 deployments: bsc [`0x34943e...2830cd`](./contracts/bsc-56/0x34943e562503bfec83250e5069ad21100c2830cd/); bsc `0x68955a...b5bea8`; bsc `0x6922e6...9e5cf8`; bsc `0x9d1b71...ad57d4`; bsc `0xdd901f...0d49ae`; bsc `0xdf825e...e886a4`; bsc `0xf6088c...bb5207` | ⚠️ Unaudited |
| PEGGStrategy | core_logic | arbitrum | [`0x485e17...bd183d`](./contracts/arbitrum-42161/0x485e17a5b692134db279792054c6cc0b72bd183d/) | ⚠️ Unaudited |
| PickleProxy | unknown | ethereum | 3 deployments: ethereum [`0x0cf4ac...912828`](./contracts/ethereum-1/0x0cf4acf926a4d973e4a1775e4a82839988912828/); ethereum `0x190503...2e799f`; ethereum `0x4d89dd...8fd5fd` | ⚠️ Unaudited |
| Pipeline | unknown | arbitrum | [`0x8b3b94...57d3c9`](./contracts/arbitrum-42161/0x8b3b94b035fee148e9d5955f025fcc2f2c57d3c9/) | ⚠️ Unaudited |
| PlatinumMonsterNFT | token | bsc | [`0x2add07...4ce15b`](./contracts/bsc-56/0x2add0701f6827f6f9d824614b4d0fc9e914ce15b/) | ⚠️ Unaudited |
| PMOTNftPromo | token | bsc | [`0xd6213c...89cd45`](./contracts/bsc-56/0xd6213c2b9944e7619dc47a8b9c958e490989cd45/) | ⚠️ Unaudited |
| PMOTTreasureChestGame | unknown | bsc | 2 deployments: bsc [`0x89cfc3...e738e4`](./contracts/bsc-56/0x89cfc378a42ccfb6821f57d4068675da85e738e4/); bsc `0xee4e8e...44d22f` | ⚠️ Unaudited |
| PMOTTreasureChestGameV2 | unknown | bsc | 5 deployments: bsc [`0x20b114...e2b662`](./contracts/bsc-56/0x20b114a66c6021fb1e2fef91abd3b90bbae2b662/); bsc `0x2c37cd...1ff149`; bsc `0x39689e...25e8a7`; bsc `0x439f23...45bc19`; bsc `0x4f86ea...e75a27` | ⚠️ Unaudited |
| PMOTTreasureChestGameV3 | unknown | bsc | 2 deployments: bsc [`0x279e25...9517c2`](./contracts/bsc-56/0x279e2565e19e3daa55c3a3c20fd46a9f019517c2/); bsc `0x68d70d...6ebf60` | ⚠️ Unaudited |
| PMOTTreasureChestGameV4 | unknown | bsc | [`0x13daed...4c384e`](./contracts/bsc-56/0x13daed27e4b5353587a2e7d32f071f02044c384e/) | ⚠️ Unaudited |
| PONGRewards | unknown | arbitrum | 5 deployments: arbitrum [`0x0add6a...d06f9d`](./contracts/arbitrum-42161/0x0add6a7d756dd337ee343b47b0e4e2dcc3d06f9d/); arbitrum `0x405870...b62ab6`; arbitrum `0x98d342...4ae753`; arbitrum `0xca0add...77f6b8`; arbitrum `0xe34003...098bc2` | ⚠️ Unaudited |
| PongStrategy | core_logic | arbitrum | [`0xe74e9f...50a7ec`](./contracts/arbitrum-42161/0xe74e9f3b9f862b7707531abf425621f53050a7ec/) | ⚠️ Unaudited |
| PONGToken | token | arbitrum | 2 deployments: arbitrum [`0x976fa2...cd5d60`](./contracts/arbitrum-42161/0x976fa2e7ba147be63b0f88b76849c3d065cd5d60/); arbitrum `0xfb6db1...59040d` | ⚠️ Unaudited |
| Ponzu | unknown | arbitrum | [`0x7d2d35...228d35`](./contracts/arbitrum-42161/0x7d2d35cf256cb47b8caa6eb4d793f1c7e2228d35/) | ⚠️ Unaudited |
| PonzuStrategy | core_logic | arbitrum | [`0x7a20ee...e36b24`](./contracts/arbitrum-42161/0x7a20ee66ca1696d516c1bb780ae153ee1de36b24/) | ⚠️ Unaudited |
| PoolMigrator | core_logic | ethereum | [`0x66d7fa...30b7bb`](./contracts/ethereum-1/0x66d7fa132b5550205d4d6a6645b66283e330b7bb/) | ⚠️ Unaudited |
| PoolProxy | core_logic | ethereum | 6 deployments: ethereum [`0x1fe765...b432c5`](./contracts/ethereum-1/0x1fe7656fa41eea50b0ee8591fd6b405c94b432c5/); ethereum `0x5312ec...2f6bf2`; ethereum `0x81ee0e...e71e96`; ethereum `0x824770...2fe192`; ethereum `0xa4210a...c58677`; ethereum `0xdebe83...f51b50` | ⚠️ Unaudited |
| PoolStore | core_logic | ethereum | 3 deployments: ethereum [`0x01592e...a00ae6`](./contracts/ethereum-1/0x01592e349258233a6f13685228060511eca00ae6/); ethereum `0x3855c2...658f7d`; ethereum `0x4bd3a0...689f10` | ⚠️ Unaudited |
| PoolWrapper | core_logic | ethereum | [`0x2e3d21...41510c`](./contracts/ethereum-1/0x2e3d21e2730b4e5d5ee7214d4723ea96d041510c/) | ⚠️ Unaudited |
| PPEGGEscrow | operational_periphery | arbitrum | [`0x2906c8...be1a95`](./contracts/arbitrum-42161/0x2906c88ae542deda106cb3e8e65071f99dbe1a95/) | ⚠️ Unaudited |
| PPEGGETHStrategy | core_logic | arbitrum | [`0x60ae12...ab3cf5`](./contracts/arbitrum-42161/0x60ae12b7999c5ced1c57230d2040fd1e5cab3cf5/) | ⚠️ Unaudited |
| PremiaETHStrategy | core_logic | arbitrum | 3 deployments: arbitrum [`0x38bfa7...d6bd1e`](./contracts/arbitrum-42161/0x38bfa71260b24e5f7d3ad0c28823820131d6bd1e/); arbitrum `0x9f1d08...da7bde`; arbitrum `0xa04d02...8ab96e` | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | [`0x02612d...8a3db3`](./contracts/arbitrum-42161/0x02612d20cc087670a959bb12ca3c5fd56c8a3db3/) | ⚠️ Unaudited |
| Share | unknown | ethereum | [`0xa7ed29...b63696`](./contracts/ethereum-1/0xa7ed29b253d8b4e3109ce07c80fc570f81b63696/) | ⚠️ Unaudited |
| ShareV2 | unknown | ethereum | [`0x106538...875287`](./contracts/ethereum-1/0x106538cc16f938776c7c180186975bca23875287/) | ⚠️ Unaudited |
| SigmoidThreshold | unknown | ethereum | [`0xa72872...07f7f3`](./contracts/ethereum-1/0xa728721394084ea78f10cebb192323f50407f7f3/) | ⚠️ Unaudited |
| SimpleERC20 | token | ethereum | [`0x4849d2...01cc5c`](./contracts/ethereum-1/0x4849d2a7fec8572f12f369659cf48a826601cc5c/) | ⚠️ Unaudited |
| SimpleERCFund | unknown | ethereum | [`0x7b075b...98fe22`](./contracts/ethereum-1/0x7b075b3aa2f1143775101986b52e32da9d98fe22/) | ⚠️ Unaudited |
| Sminem | unknown | bsc | [`0x8e0060...74c143`](./contracts/bsc-56/0x8e006025674039f149249cbd48f341794a74c143/) | ⚠️ Unaudited |
| SolarFightersNFT | token | bsc | 2 deployments: bsc [`0x8812f0...287e29`](./contracts/bsc-56/0x8812f0b82464f58a381a5eae25194a595a287e29/); bsc `0xb57f0d...9c2435` | ⚠️ Unaudited |
| StakedBPT | token | ethereum | [`0x46c509...7b1ee2`](./contracts/ethereum-1/0x46c5098f73fa656e82d7e9afbf3c00b32b7b1ee2/) | ⚠️ Unaudited |
| stARBIS | unknown | arbitrum | 8 deployments: arbitrum [`0x1ec62f...9062de`](./contracts/arbitrum-42161/0x1ec62f8367ad3ff61c3f3b0ab1d0297a539062de/); arbitrum `0x4446e4...bd0c6e`; arbitrum `0x7093e0...9d3a3d`; arbitrum `0xa8a07c...b3deb8`; arbitrum `0xbf0075...d2db86`; arbitrum `0xbf3e46...4d9f89`; arbitrum `0xde905e...9c288f`; arbitrum `0xef1f3f...276f16` | ⚠️ Unaudited |
| stARBISReceiver | unknown | arbitrum | 6 deployments: arbitrum [`0x26804f...785308`](./contracts/arbitrum-42161/0x26804fdd4d4d893686233f8399174f2d2a785308/); arbitrum `0x429ede...4975bb`; arbitrum `0x8abbcf...ef5511`; arbitrum `0xa3bf87...74d93b`; arbitrum `0xb5f6f3...b1c0dc`; arbitrum `0xe0cd92...4a266d` | ⚠️ Unaudited |
| Strat1 | unknown | bsc | 2 deployments: bsc [`0x1a40a8...ff0d48`](./contracts/bsc-56/0x1a40a8c7d965f3929e0c56bb301ebe82f5ff0d48/); bsc `0x9ba2a9...b6f55b` | ⚠️ Unaudited |
| StrategyBusd | core_logic | ethereum | [`0xcbc00c...a362d5`](./contracts/ethereum-1/0xcbc00cccbce9d798c412f568436901ff46a362d5/) | ⚠️ Unaudited |
| StrategyHbtc | core_logic | ethereum | [`0xf7f9c7...c68c0b`](./contracts/ethereum-1/0xf7f9c789852025862cc160f464d42ca18fc68c0b/) | ⚠️ Unaudited |
| StrategyUsdc | core_logic | ethereum | [`0x9db02f...cbad5a`](./contracts/ethereum-1/0x9db02f1d70ac934faca6bdef78a0fa080fcbad5a/) | ⚠️ Unaudited |
| StrategyUsdt | core_logic | ethereum | [`0x15e926...ecd695`](./contracts/ethereum-1/0x15e926954b0013ae37d4241fc6e7bcb1e0ecd695/) | ⚠️ Unaudited |
| StrategyWbtc | core_logic | ethereum | [`0x964a64...72bc36`](./contracts/ethereum-1/0x964a640e90fa759c1de9951ebddba730c872bc36/) | ⚠️ Unaudited |
| StratSwipe | unknown | bsc | [`0x1f042f...1e66ce`](./contracts/bsc-56/0x1f042f2fd6878edcd75f1f1400bc1d53671e66ce/) | ⚠️ Unaudited |
| StratVLEV | unknown | bsc | 42 deployments: bsc [`0x13057e...624910`](./contracts/bsc-56/0x13057e42bbf1b5d980ea79df5549be49ee624910/); bsc `0x1a2eb7...5de82c`; bsc `0x238d2b...e6395b`; bsc `0x2c48d2...0866b0`; bsc `0x3a795f...f613e1`; bsc `0x40afa7...10a4de`; bsc `0x414b4f...7330c9`; bsc `0x440c7e...de7c32`; bsc `0x48620b...32c6fe`; bsc `0x52a9f3...fff1f0`; bsc `0x54d001...a0cb39`; bsc `0x5796b4...1743ff`; bsc `0x57d699...6e4b01`; bsc `0x602817...525f4b`; bsc `0x65579f...f58a12`; bsc `0x6a1878...65d073`; bsc `0x6f5bf5...3e6db5`; bsc `0x89e150...fbe9a1`; bsc `0x8e24b8...651d84`; bsc `0x91277c...0307ff`; bsc `0x95d3ee...d80192`; bsc `0x97d41b...c54032`; bsc `0xa05d4f...3a1dec`; bsc `0xb2059d...9345f5`; bsc `0xb33f66...349fa5`; bsc `0xc71b72...ab95f7`; bsc `0xc7322b...7da24c`; bsc `0xcc48c5...0ab5dd`; bsc `0xcd3a59...f29af3`; bsc `0xd12b91...9d84db`; bsc `0xd21c3b...d5dcc9`; bsc `0xd57e87...a1dd3f`; bsc `0xd9dc13...0f0f0a`; bsc `0xdcd765...d50437`; bsc `0xe041ad...12ee3f`; bsc `0xe24776...3a7e8e`; bsc `0xe4bf08...01fd09`; bsc `0xe839e1...907808`; bsc `0xebc44c...e6a3c3`; bsc `0xf67cce...aae43f`; bsc `0xf7cdda...23c492`; bsc `0xfffe1b...cf159a` | ⚠️ Unaudited |
| StratX | unknown | bsc | 43 deployments: bsc [`0x098945...b4205d`](./contracts/bsc-56/0x0989454fcf48c66aee3fe8cf4feccae2e9b4205d/); bsc `0x0b4305...288bf0`; bsc `0x0ce929...205fe3`; bsc `0x1004a5...cd5bbe`; bsc `0x164d04...517b70`; bsc `0x172d40...240ec5`; bsc `0x1a5715...a98eba`; bsc `0x1edf8e...acd2d7`; bsc `0x306258...d247f8`; bsc `0x344866...2bc1f1`; bsc `0x36ac93...dab483`; bsc `0x375e7f...811477`; bsc `0x38d409...21c8a7`; bsc `0x3a8475...249084`; bsc `0x3b4e26...fc0c5b`; bsc `0x3f4580...5c23f0`; bsc `0x4551e5...b6ee99`; bsc `0x512090...bb58a8`; bsc `0x5935db...e63ad8`; bsc `0x5f9302...a8ca5c`; bsc `0x65168c...66874b`; bsc `0x671c90...82c893`; bsc `0x6f6851...0b3ed0`; bsc `0x7f7b23...563ff1`; bsc `0x8a1a10...e195cd`; bsc `0x8db789...dbb5d5`; bsc `0x9b3f9f...918fd4`; bsc `0xa5ca6b...6b1e22`; bsc `0xa7df74...cfc2f1`; bsc `0xac622b...73a234`; bsc `0xad1245...2090e0`; bsc `0xae9720...4868e8`; bsc `0xbaa677...9b370c`; bsc `0xc75b6f...f87f60`; bsc `0xd84cf4...fdb2fc`; bsc `0xdd42e8...1dd917`; bsc `0xdf3dad...15e9e5`; bsc `0xe23ec9...871b54`; bsc `0xe8adf9...cc2f72`; bsc `0xe9d78b...791130`; bsc `0xeae1f3...38311b`; bsc `0xed3f07...b78687`; bsc `0xf2aec8...47209d` | ⚠️ Unaudited |
| StratX_AUTO | unknown | bsc | [`0xc5eb5a...f9eb40`](./contracts/bsc-56/0xc5eb5a3490d2a2e4a1e1c9a1b965b4eef4f9eb40/) | ⚠️ Unaudited |
| StratX_Pathed | unknown | bsc | 2 deployments: bsc [`0x3aa4f1...11e024`](./contracts/bsc-56/0x3aa4f1ad7094d263dad4ead5b8bc09ddc211e024/); bsc `0x7328cb...78e7e4` | ⚠️ Unaudited |
| TestToken | token | arbitrum | [`0x5d0fc0...e3c02a`](./contracts/arbitrum-42161/0x5d0fc0860db7526b537db8800b5d40b487e3c02a/) | ⚠️ Unaudited |
| Timelock | governance | arbitrum | 6 deployments: ethereum `0x2b057a...b2b66b`; ethereum `0x9a8541...d47bd1`; ethereum `0xd98bc1...5d0e6a`; bsc `0x2044b1...a023b9`; bsc `0xcbbb03...ee3cb4`; arbitrum [`0x1a5c34...411eda`](./contracts/arbitrum-42161/0x1a5c344db58b3d9094a1761272a27c08ba411eda/) | ⚠️ Unaudited |
| TimelockController | governance | bsc | 8 deployments: bsc [`0x28579e...876a04`](./contracts/bsc-56/0x28579eca0a326e53340edd93e18698d379876a04/); bsc `0x2a84a5...6fdb21`; bsc `0x6aa35f...77b5ff`; bsc `0x7d09ac...9025b5`; bsc `0x99d334...807b89`; bsc `0xc2f7ba...bd2596`; polygon `0x643743...85d252`; polygon `0xf40951...fa400d` | ⚠️ Unaudited |
| TimelockController_RewardsDistributor2 | operational_periphery | gnosis | 6 deployments: gnosis [`0x1dc6cd...5449a1`](./contracts/gnosis-100/0x1dc6cd9f76972039cd8e071ec65cc4bd035449a1/); celo `0x65f100...98eba6`; celo `0xbf19c3...de343a`; avalanche `0x4b6ed3...b2f68f`; avalanche `0x562bdc...e42cbe`; aurora `0xaea5f4...77e800` | ⚠️ Unaudited |
| TimelockController_RewardsDistributor3 | operational_periphery | moonbeam | [`0x0c98e5...7c0931`](./contracts/moonbeam-1284/0x0c98e59e8327f156ab12a042f5e1f0adb97c0931/) | ⚠️ Unaudited |
| TokenPool | core_logic | ethereum | [`0xc93528...793d84`](./contracts/ethereum-1/0xc935285b0d88069305431dace0c3c01d7e793d84/) | ⚠️ Unaudited |
| TokenTimelock | governance | bsc | 9 deployments: bsc [`0x02360b...23ffcf`](./contracts/bsc-56/0x02360b5e75a84696416f0f446267d5384b23ffcf/); bsc `0x1e141f...3841ac`; bsc `0x4a712a...549451`; bsc `0x5b7380...a20547`; bsc `0x6c9619...0a0b3c`; bsc `0x7cdb05...c8ffb2`; bsc `0xa2ddd7...d9e6d7`; bsc `0xb35c0c...eaaa88`; bsc `0xddc5bc...36154b` | ⚠️ Unaudited |
| TokenTimelockVesting | operational_periphery | bsc | 2 deployments: bsc [`0x5d21fe...cc8afc`](./contracts/bsc-56/0x5d21fec965082e003219c6036844327c2dcc8afc/); bsc `0xf261f7...e8263a` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | bsc | 3 deployments: ethereum `0xf840f3...950935`; bsc [`0x3cb2f8...781a3f`](./contracts/bsc-56/0x3cb2f8f2312ab981c4da6f98735a2af79e781a3f/); bsc `0x6aec9e...0b4fc4` | ⚠️ Unaudited |
| Treasury | operational_periphery | ethereum | 14 deployments: ethereum [`0x02957a...c877f5`](./contracts/ethereum-1/0x02957ae53173f58dc9989c4a09853f9528c877f5/); ethereum `0x0f5ecb...e0f7b3`; ethereum `0x121bae...1078bd`; ethereum `0x4e153d...5e19d3`; ethereum `0x67a883...f2117a`; ethereum `0x7715a2...df3430`; ethereum `0x88da51...4ee747`; ethereum `0x9dcea4...d3c216`; ethereum `0xa89572...8e2e22`; ethereum `0xaf7005...24ebe2`; ethereum `0xcd2dfe...8d1fba`; ethereum `0xe5fc22...b27884`; ethereum `0xf43775...28fb93`; ethereum `0xf8acea...d72dea` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | 2 deployments: ethereum [`0x570242...6507e5`](./contracts/ethereum-1/0x57024267e8272618f9c5037d373043a8646507e5/); ethereum `0x9f624b...980808` | ⚠️ Unaudited |
| USDCETHStrategy | core_logic | arbitrum | [`0x62055d...01fe23`](./contracts/arbitrum-42161/0x62055dba1d132dbe91805062fb3dcfce3501fe23/) | ⚠️ Unaudited |
| Vesting | operational_periphery | arbitrum | [`0x6ffb81...6d2a79`](./contracts/arbitrum-42161/0x6ffb81770eb66d9d5e1ce6f6a48753e6c26d2a79/) | ⚠️ Unaudited |
| VoteProxy | unknown | ethereum | [`0x6bddf1...eb729b`](./contracts/ethereum-1/0x6bddf10f9956dcda89998c2e673f74a09deb729b/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 67 deployments: ethereum [`0x06364f...d6c763`](./contracts/ethereum-1/0x06364f10b501e868329afbc005b3492902d6c763/); ethereum `0x075b1b...e70fb3`; ethereum `0x0dfdc4...939a9d`; ethereum `0x14f9bd...0d7d15`; ethereum `0x179484...19762c`; ethereum `0x192092...3b36ef`; ethereum `0x1bd65c...ceaace`; ethereum `0x1f2a66...62b275`; ethereum `0x2088a8...2d8f6c`; ethereum `0x2146b0...f881b6`; ethereum `0x2b645a...8d1434`; ethereum `0x2e60cf...0ef419`; ethereum `0x319967...9cf3d7`; ethereum `0x3740fb...06f5fd`; ethereum `0x3b3ac5...24333b`; ethereum `0x45f783...055f51`; ethereum `0x49849c...fb3675`; ethereum `0x4e680f...357bd4`; ethereum `0x4f0e0e...053841`; ethereum `0x52ea46...35d85c`; ethereum `0x54ee22...68b800`; ethereum `0x5e71f0...cf0e8d`; ethereum `0x61dc3c...896e87`; ethereum `0x6812c0...50fc74`; ethereum `0x6ff57e...d4fa00`; ethereum `0x76827f...21f5c7`; ethereum `0x7771f7...cbc812`; ethereum `0x79a8c4...5a4f27`; ethereum `0x7adbf7...4456de`; ethereum `0x7b5a09...f5f55b`; ethereum `0x7fc77b...0a9714`; ethereum `0x7fe97b...44ecfd`; ethereum `0x7fffa7...7dfc7d`; ethereum `0x845838...37f8a2`; ethereum `0x8474c1...ba9f4f`; ethereum `0x849eab...f2bb2e`; ethereum `0x884be2...ceb75c`; ethereum `0x930541...f0895b`; ethereum `0x9726e9...97313e`; ethereum `0x97b7e9...b9f86d`; ethereum `0x9fc689...4a1f23`; ethereum `0xa27476...d0eadb`; ethereum `0xa2b47e...fb7a56`; ethereum `0xa50ccc...187287`; ethereum `0xa5407e...3efbfd`; ethereum `0xaaaeee...0e9c35`; ethereum `0xac795d...747a80`; ethereum `0xb10c49...2e23e2`; ethereum `0xb241a8...e7188f`; ethereum `0xb527c4...ec5a0b`; ethereum `0xb6a793...e2eb44`; ethereum `0xb6c057...b59edb`; ethereum `0xbbc81d...73a5d3`; ethereum `0xbc7e83...f40a35`; ethereum `0xc25a3a...72917f`; ethereum `0xc97ef4...0451db`; ethereum `0xd133d1...e2f778`; ethereum `0xd905e2...1db0d8`; ethereum `0xdc31f5...96838e`; ethereum `0xdf5e0e...d806a8`; ethereum `0xeb2120...b6bc06`; ethereum `0xebdd53...957f20`; ethereum `0xedf54b...16a966`; ethereum `0xf129d6...971bab`; ethereum `0xf79d92...324b8d`; ethereum `0xfcba3e...f12851`; ethereum `0xff1188...7d5b97` | ⚠️ Unaudited |
| WBNB | unknown | bsc | [`0x6461ac...9f914c`](./contracts/bsc-56/0x6461ac51ac85698e3db8b8a666c660c51e9f914c/) | ⚠️ Unaudited |
| WeightFeeder | unknown | ethereum | [`0x5800fc...816546`](./contracts/ethereum-1/0x5800fc35f004c1218b18a22940ee7e8be4816546/) | ⚠️ Unaudited |
| WhiteList | unknown | ethereum | [`0x19f35c...8e493e`](./contracts/ethereum-1/0x19f35ce3c3875c120ab602386c8d6a59e88e493e/) | ⚠️ Unaudited |
| Zap | adapter | bsc | 5 deployments: bsc [`0x2f7d6f...92a878`](./contracts/bsc-56/0x2f7d6f408b3e7f2c4667055ff5bc33f4c592a878/); bsc `0x3ff41d...09e61d`; bsc `0x6965ca...71323d`; bsc `0x7fc83b...ce7e6c`; bsc `0xf1999f...88f49d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (719)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x04af91...b5303d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1ada83...2e401f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ed872...2fc25c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x45d9a3...cc145b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5c5395...0c013b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6ed2d6...71c79a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x776968...83516c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x80caaa...c89af2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb43593...45efd4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbbb805...b35b8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbbee53...b86fd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xced2c6...24cdc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdbe281...b1a0a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe146dc...f3cf36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5fdba...95cba5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfef6ee...6d1135` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x15ee12...41d1a6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x3ef241...925b40` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x76b8c3...34cbaa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x02c690...2c1936` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x044c72...4518b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x056cd6...97d8c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0711c0...82f971` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x07f7ac...7023ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0acdbb...6d1e94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0bc53e...e46341` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0bf2e7...9d4d1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0dd9b5...1eccf8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0e1644...8775e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0f0b90...40379c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x110e62...809c9f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x140f38...be8c76` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x14d598...81e466` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x155b4c...068f08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x15b709...a2c3c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x162fe0...442c97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x167251...8f12e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x17441a...3119c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x184e11...0fdb86` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x18cfd9...01aea8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x18fb6e...8ca80f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1ad82a...ba5341` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1ae452...26498e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1e132f...6a99af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1ea4b6...cc25f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1edec2...67fb73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1fa889...6d5b8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1fe1aa...4ef6c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x23a167...7bdccb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x273299...7d314a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x27b801...7c643e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x296560...980a54` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x31bae9...d4102d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x325e73...bc0abe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x328dd6...484a0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x332387...1483ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x339784...2f3371` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x359443...c1b5b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x379439...b0b2e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x37afb0...028e79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x382ef1...76520d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x38a70d...64d56c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x39bd3f...eaadc4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3ad825...8eb2db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3ae422...cdbd92` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3baf49...70e7b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3eb784...bb0a2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4238dd...5edc41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x42b7db...85d85e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x42c1fc...de0207` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x467643...e2ff81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x46d6b3...0e56b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x486b87...6c6bc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x48d1f9...8d0b59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4ab3de...74b0e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4cadb5...94430f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4d85c2...d11c10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4db402...aacd2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4fbcc8...1450f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x508e84...cd1e8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x52453a...ebd3fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x52bfdd...07beb4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x52caf0...d386ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x57d510...f5fc50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x585779...956755` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5a6b1e...e2aee1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5cbb8e...c266c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5dc52e...b9d03a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5e93b3...f0a074` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5edbaa...a0e17b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6030a7...fbd2d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6196eb...33d3b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x63257e...969b82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x63a848...7f212b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x653c41...96f045` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x68b9d0...74890e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x69c88a...4a8760` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6a87d7...d0d640` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6e4370...48f51b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x70903d...189f25` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x730fcb...49f7fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x74f530...5ed0ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7515a2...6d898a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x75d813...2d5b5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x761d21...dec8cc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7627bd...864d16` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x76b8c3...34cbaa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x79924e...497499` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x79aca5...40ffbd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7bcf3c...8de266` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7e5fe2...7f9b43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7ed81a...987885` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x815aa0...f533ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x819e88...cc8928` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x81b1c2...1d970c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x82004f...53c72b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8733fd...e17916` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x88cdea...c6ee0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8c9813...187db7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8d78c6...2c8164` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8edece...c63811` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8ef73c...8ba971` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8fe813...078113` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x909961...5394ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x92cdd3...a4890a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x93dbc2...cc21e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9462a2...5a66ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x95e7f6...27d301` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9667fc...fad8fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x970195...da0077` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x997d60...d2b093` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9c30e4...ed894e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9dc12a...ede9f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9e2423...809085` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa02f4e...953e8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa0c219...ba7948` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa2fd94...e3ff89` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa409c2...5686d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa646da...b6148d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xab4520...a03e0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xac9f30...335930` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xacd65e...664502` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xacfc54...1119b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xadfdf4...fd5ebc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb4111b...020471` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb8283a...f3cdb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb93c9f...183547` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb951f7...b847bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb9eb02...3984aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbcb546...7905b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc1bcbc...3847d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc33645...bbac2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc577a3...621b71` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc8686e...559af1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc92338...fb835c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcb5f25...ee5e05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcc4c2a...682e6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xce43e8...e6e355` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xce7ace...9548e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd1923d...9f59da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd28049...be2633` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd29331...c1d192` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd4428b...5587e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd634f3...17cdcf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd6744b...fc4aec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd74a42...169da9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd7c11c...cc616e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd9649e...81f6c9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xda1473...3e88b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdb47cb...bb51db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdbb1a5...220be7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xde51a0...d6cbdb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdeabc4...080edf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdf0653...c9afeb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdf61c4...81ce17` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe01157...f1fc46` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe0e762...5fbc44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe340da...a66af9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe34249...663653` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe4b404...33f4a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe4dfeb...719b2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe84ef4...b36948` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe85bf1...6c33b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe90173...7f7b5c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xea54f3...62bbb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xea6b0b...f8567c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xebcc0d...56e9e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xed4bca...5f7151` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xee18b2...7259cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xefe8fb...4653d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf030f4...389afc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf13112...474253` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf2ffec...962cdf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf44693...365862` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf72c54...459408` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf7a639...35aca1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf940b7...0c2fd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf9f98f...52516b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfa78cd...0cb0ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfb9d03...a90d2d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x0aec91...4b4443` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x140f38...be8c76` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x143371...8653bf` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x1a40a8...ff0d48` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2dcc0c...7bfcd0` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x438587...a65b11` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x51ad82...592d8d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x53c3b1...1cce01` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x67cc99...0a4436` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x6b88b0...f43b73` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x704fcd...6aad1b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x7e8503...d35b13` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x8eadda...d0f2a2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x95ef70...a239ca` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x996145...d6fc7c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9ba2a9...b6f55b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9c83f0...0f8c20` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9c9d29...377ebe` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xacc391...e397a6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xaea5f4...77e800` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xaf03df...d3c063` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb55b06...68e423` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xbb0bb4...264399` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xbbda48...916723` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc9a950...39f6d4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd5d0e3...9f4437` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd92b9c...930cff` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xdbb5f3...f4e46e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe0ccde...7a850a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe3fa2f...af879e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe8c9dd...8ca48c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xed2ce4...69a8fd` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xefe8fb...4653d0` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf06a06...36e663` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xf97b1f...7f8c73` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xfbd73f...904359` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xfd4371...304c56` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xffcdb4...e6cf3e` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0x96a29c...0d5d99` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x027da2...830a71` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x02a124...95194e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x086efc...e574c6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0eaa78...53bd04` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x11e963...cd8033` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x143371...8653bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x144c0c...2f9f22` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x17f619...60172f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1cae78...253067` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1deaee...32ef38` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x20e260...73ceeb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x31c818...c494eb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x36ac93...dab483` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x37da0f...bea1ab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x38d409...21c8a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x39acf8...68a98e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3b4e26...fc0c5b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3c7a4e...fc2d32` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x495682...e21b29` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x49a215...a3d89b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4a9e97...f9ced2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4e176b...40be01` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x51567c...aabc80` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x533152...f60e6f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x53bae3...036d17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x582cc1...91deab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5d4346...055dee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5dd9ba...654572` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5eb8ae...dcfa27` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5fa81b...d0242e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x602817...525f4b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x61989e...a9372a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x61b7bd...e60874` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x654776...e88733` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x65620c...187b62` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x67030a...1eb409` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6841c2...fa34d9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7347c5...2aeaa0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7d29b5...558113` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7ea728...f22681` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7f7b23...563ff1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x807c4d...03cc10` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x88bf81...760643` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x89d829...c48206` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x99c1de...98d27e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9c5765...d13eea` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9c9d29...377ebe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9e98b8...ff5f8f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa92c75...04b04d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xadb1c7...2c0297` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xae9720...4868e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb09a88...2f36f9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb43ad6...ea7877` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb6dddf...947499` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbc8722...4b8db2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbe12ff...0b0395` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xca4b64...b3509a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd3be99...5dd0ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd69fb7...fe7079` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd717db...f8296b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xda4f3e...e4f86a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdbb5f3...f4e46e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe457cd...0ef170` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe5d2b9...fe6060` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xeba805...5fccfb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xeca70a...9c3556` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xeeee27...222c95` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf75687...9a2158` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfbc177...2a3d1a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfbd96c...b63047` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x2c9bfc...2d7c0f` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x6731a6...dfde2a` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x994be2...96f5a7` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x9e98de...91ca35` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xbe138a...966cc3` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xbf2b95...23980c` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xc865dd...8c1df9` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xf0d110...edf61a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x76b8c3...34cbaa` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x9c30e4...ed894e` | ❓ Unverified |
| UnnamedContract | unknown | boba | `0x864a0b...23f213` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x036f2f...44472f` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x1deaee...32ef38` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x24b832...3eede3` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x2dcc0c...7bfcd0` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x362358...26ddbd` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x36ac93...dab483` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x3aace1...bf7b49` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x68def7...68e3d5` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x9b5900...4d77cb` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xa881b9...de3617` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xca4b64...b3509a` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xccd19e...604cd2` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xe0ccde...7a850a` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xed2ce4...69a8fd` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xfada8c...d4680e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x0c98e5...7c0931` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x143371...8653bf` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x1a40a8...ff0d48` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x438587...a65b11` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x5b13cc...2adb63` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x67cc99...0a4436` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x75cef5...925088` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x7e8503...d35b13` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x864a0b...23f213` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x95ef70...a239ca` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xab1606...5994f9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xacc391...e397a6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xad1245...2090e0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xaea5f4...77e800` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xaf03df...d3c063` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xb55b06...68e423` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xbf19c3...de343a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xc9a950...39f6d4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xed2ce4...69a8fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x015ac2...3268f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0167b6...72f668` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x02edb9...831606` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x062af6...db41f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x08e353...878e2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0bcc62...890ac3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0dc368...58ec5c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0e01c2...bcd8b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1dd0aa...f208be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1e5ed8...5ce8cc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1fe31e...d89b97` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x207505...1a831f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x214520...b22c6f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x21d1cd...6be8ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x227dda...5d9733` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x256f25...2ac50e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x257950...b2da83` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x26b93f...04e0fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x280073...024f29` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2b878c...066c2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2ccacc...1d8574` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2fedaf...332eaf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x30d698...44a402` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x316702...f04282` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x317f3b...8f936e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3294be...1ac197` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x35b555...074e65` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x35d8f3...ef0eae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x374e9f...3af13a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x375d70...a62914` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3894f7...7c01f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3a6ec7...de2020` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3dd098...a6a9f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x42b524...f72b7a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x437928...740db5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4628d8...e0847f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x49ba5e...1176d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4cd20c...554ab9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4d12ae...3881e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4d70d7...bb42b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4deb14...7e63e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4f0de3...6f1376` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x50dcb0...389dd4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x580961...2553fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x581aed...088a76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5b4cd8...914762` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5d0ea9...a09427` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5f315a...12ea15` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5fa520...bb9266` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x618794...95e09e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x652065...526d3b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x65ebc2...6be78e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x676428...3c625e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x687094...a9d748` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x68bfc0...868716` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6b004d...ac3726` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6c3171...100897` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6fb5bd...8ffdc8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6fe46f...f558ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x70aa88...690889` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x72adb5...f0e7a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x72c5e7...b87297` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x747ea3...3c33be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x75e90d...2d448e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x77b4aa...92508a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8016fa...02dd26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x808e25...899c9d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x87c171...188d3e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x892e01...611c96` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x89c416...26f593` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8aec9a...eca989` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8c26c8...79bc3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8c4983...ac916e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8d2cdc...f98b48` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8dafe1...1e6b32` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8ef7d0...05ca09` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9551ba...6a33d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x96d15d...53acd6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9e343b...c1f05e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa2dfa5...2dd7a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa4ca55...c1b999` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa56061...75e99f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa5d7f1...799838` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa85391...765e67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xad31a9...cc8fe2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaeaa3d...fc4a77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb176e0...f6a921` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb45f49...c4341d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb590e9...f018c3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb69752...ce7481` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb6b01f...fc8883` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb760c9...b48b8f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb7a103...44c393` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb82d97...2ccd73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbb910e...d8f3d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbef14c...b1c9a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc1060d...fa5439` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc114fb...9864e8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc17b78...3736be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xce0eaf...95b9ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd10051...5ff860` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd1f5e0...d2e779` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd20e33...634ad0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd7d486...5ad709` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdc11d4...926a6c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdcc1d3...16cf2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdef2b3...0dc044` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdfff87...3de01e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe3d0d4...72abb6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe8e7d0...d1786c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe9ed4e...6ba5f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeb4891...fc1c8d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xec15d1...a95270` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xecb083...058f69` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xed75fa...1ca123` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xef2c65...3b05cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xefc66a...212663` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf26dee...325293` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf279ad...f0621f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf46df4...ef17aa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf77752...1563e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfb86ae...6a1b0d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x089ee9...480e76` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x1009ef...7570d7` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x19795c...a01454` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x1d1779...d49977` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x1f7ceb...e85db3` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x222f69...6aee7a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x29bc02...c25557` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x2dc13f...e2af08` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x2e29b0...49cc6b` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x2f39b9...a0f927` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x3581ae...62edb4` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x4508ab...85eccb` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x4b6ed3...b2f68f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x4e176b...40be01` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x5e0b1a...da82b6` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x61989e...a9372a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x65ac8a...7268f3` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x67030a...1eb409` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x68def7...68e3d5` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x703730...5c58ca` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x71f3ba...12a767` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x75e41f...543f9d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x7d29b5...558113` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x7e8503...d35b13` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x9c5765...d13eea` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x9f4bef...1687f1` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x9fbfe1...6e9a8e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa07b88...1bdef1` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa0c634...7fd9e8` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa5d057...6d3ac6` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa92c75...04b04d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xc0db3c...ab4e5f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd39e81...8bf8a0` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd4ca9f...790dfc` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xdef8c1...9bdca8` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe3fa2f...af879e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe8c9dd...8ca48c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xed2ce4...69a8fd` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xf3a2bf...5439b9` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xf4cf09...62921c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xfd4371...304c56` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x036f2f...44472f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0880ae...8ea2b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0b14cf...ca0c5a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0c98e5...7c0931` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0e9bfb...f1c615` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x107898...2f6d38` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x12196f...73edfb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x143d7b...67479d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x15a7db...d9af97` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x166e27...23fce3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x173b92...31761e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1e99f6...154e2c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1f784f...bcc0d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x22496a...d3187c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x24b832...3eede3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x260c93...c9333b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x260e7d...4de0a8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2ca290...51ec1d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2d894f...5d18d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2ee0f5...47dfb1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x31e291...0eda44` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x38d409...21c8a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x39ea1b...64be60` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3aace1...bf7b49` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4460d4...e6185b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x452d65...625183` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x48620b...32c6fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4dd60d...95b478` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4ff8d0...37dcc4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x50c551...a2fab1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x554df3...c1552f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x56b890...f3eb12` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x579cca...dac235` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5aefdb...631218` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5ca61a...7e4887` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x608480...b19c5c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x62d9db...a46337` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x631a14...05a6da` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x686e4f...092fbd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x703730...5c58ca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x718e4d...67c576` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x71970c...796696` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7347c5...2aeaa0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x74fa2b...a16c62` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x757858...8e2864` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x76b8c3...34cbaa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x78d5f2...4c904f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7997f3...e8a600` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7adba1...d47cca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7f5d70...f795ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x868fe2...b07fcd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8b0889...6bc832` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x92453c...bb5105` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x93e6dc...0d526a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x99c1de...98d27e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa039d2...158a3b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa1737e...56c44a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa20283...9d814d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa30278...064da5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa40b92...230057` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa55dc6...88da66` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa5bb4c...6bb503` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa5efee...841714` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa7eac0...4f8f23` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa881b9...de3617` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa993ae...f6dcbe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaac353...9b60b4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaae582...fc3b5b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xae9720...4868e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb278ef...1b0347` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb6dddf...947499` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb72ef7...4b466f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbb15fb...5ad69e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbb3904...c7d726` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbe487a...d187a6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc388d5...417d49` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc3ba68...23c13b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc4d81c...6be2e0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd218c1...174048` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd2adf2...9ce708` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd60d41...5142f4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd784dd...f67fc3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd8b9e9...223bed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xda4f3e...e4f86a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe2babe...452460` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe442be...6bd605` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xeb9dba...a978a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xeca70a...9c3556` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xee02ea...ccf3c5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xee7fbb...80f365` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf1bed9...7063ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf23a3b...2b6cd6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf5a5cd...f9f8be` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf843b0...927fe7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf977e0...6a3cb0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfac251...28c0c8` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x00fbc4...fd2370` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x062f30...387714` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x087225...d81723` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x097509...fdaff0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x0d6a7b...28371c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x0df9c5...fd41fb` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x0ec7d2...adc470` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x0f06e1...ac1a1b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x107340...17a7b1` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x143371...8653bf` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x2511c5...c51a55` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x294df2...9fdc3e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x2f3661...135726` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x30ed29...081aa5` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x31c818...c494eb` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x328a36...ff97ca` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x32d8c8...6d8912` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x39ea1b...64be60` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x3a795f...f613e1` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x3b4e26...fc0c5b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x3d63c2...dfdbf5` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x3fcbf6...d82ef6` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x438587...a65b11` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x43f747...d69a0c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x450e40...c53d6f` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4596b1...a9d1b4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x47883a...594fdc` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x48bc4b...f1fb0e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x48d1f9...8d0b59` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4c3da4...19b5c3` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4f03d9...c79541` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x530ec2...611c24` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x5dc52e...b9d03a` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x5ed6ca...444d12` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x60c590...9548af` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x61ed55...54ff05` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x67cc99...0a4436` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6a6ccd...179190` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6c3205...137c00` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6dedb2...8ba7b7` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6f0e21...22f435` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6f6636...9cbcc6` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6f6851...0b3ed0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6f7829...c59f75` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x7003de...0f7555` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x725186...eee472` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x7397ab...d1ca26` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x740e60...a0347e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x7b514f...e1a715` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x7b84c0...257991` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x7d29b5...558113` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x825921...e8d4b0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x82c919...2b6cf0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x8b492a...e574ed` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x8dbd87...3ea055` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x8e61dc...7b1574` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x94e36b...98300c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x9769be...db7c65` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x9ae422...ec7954` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x9c9d29...377ebe` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x9e6114...f15985` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xa8ebfd...020311` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xaceb38...7755a9` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xad1245...2090e0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xaf8999...518fe9` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xb1243b...ee443c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xb2059d...9345f5` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xb63333...282266` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xb88007...1d6f6b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xbb56f7...cf8381` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xbba51c...d3b8ce` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xc0bd31...787d19` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xc1c06c...f53ee6` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xc220a8...bb31a4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xc222e1...203487` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xc694c4...41dfba` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xc96442...0d7860` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xcde4fa...d504c1` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xcea6be...4dae97` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xd21e29...dc6475` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xd489f7...e941c4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xd74dc7...dba899` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xd8ce4c...77cc2f` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xdc5eea...6c2596` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xdf7797...411e59` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xe0d56b...0c83ff` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xe50c10...b8ced9` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xe61d39...3004f8` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xe67cc5...f5f89b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xe6f44a...ec153c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xea8417...943be7` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xea8a72...835f4e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xeae1f3...38311b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xedd978...71ceea` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xef44f3...956649` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xefa291...2e56dc` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf083f9...0dff36` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf25769...5f97aa` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf31067...ac8e90` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf5854f...5a6be7` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf609d0...358a11` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf6e062...342ee5` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf8ac5d...511d25` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xfaf371...c5a98b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xfb080a...904ee1` | ❓ Unverified |
| UnnamedContract | unknown | harmony | `0x9c5765...d13eea` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1321f1...9bb288`](./contracts/ethereum-1/0x1321f1f1aa541a56c31682c57b80ecfccd9bb288/) | ArcxTokenV2 | token | $949,182.70 | Verified native implementation with $949,182.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/) | bVault | core_logic | $298,716.69 | Verified native implementation with $298,716.69 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0440ae...25c87c`](./contracts/ethereum-1/0x0440ae12f329dbd7306b6d9edbb0e667c225c87c/) | TokenStore | token | $178,765.50 | Verified native implementation with $178,765.50 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xebd126...02bde8`](./contracts/ethereum-1/0xebd12620e29dc6c452db7b96e1f190f3ee02bde8/) | BACDAIPool | core_logic | $88,280.57 | Verified native implementation with $88,280.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x518821...429fd4`](./contracts/ethereum-1/0x51882184b7f9beed6db9c617846140da1d429fd4/) | BACUSDCPool | core_logic | $86,330.94 | Verified native implementation with $86,330.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2833bd...877e44`](./contracts/ethereum-1/0x2833bdc5b31269d356bdf92d0fd8f3674e877e44/) | BACUSDTPool | core_logic | $71,162.70 | Verified native implementation with $71,162.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x47a156...46a49b`](./contracts/arbitrum-42161/0x47a156668f1ecc659efbbf4910508ace1b46a49b/) | MIMETHStrategy2 | core_logic | $66,601.85 | Verified native implementation with $66,601.85 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x303f12...b86a3e`](./contracts/arbitrum-42161/0x303f12da29fa6346361a9e4feb5db073c5b86a3e/) | ArbisETHLPFarmStrategy | core_logic | $49,929.85 | Verified native implementation with $49,929.85 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9bffad...fd7d9d`](./contracts/ethereum-1/0x9bffad7a6d5f52dbc51cae33e419793c72fd7d9d/) | StakingAccrualERC20V5 | token | $12,500.28 | Verified native implementation with $12,500.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3063c...63095e`](./contracts/ethereum-1/0xa3063cf3a934068cbe8f55212577a1ffbe63095e/) | StrategyArpa | core_logic | $4,881.63 | Verified native implementation with $4,881.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1c3e7f...da1a56`](./contracts/arbitrum-42161/0x1c3e7f51a9d24e813fa7c2614713b727a4da1a56/) | SwaprLPFarmStrategy | core_logic | $4,416.89 | Verified native implementation with $4,416.89 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5859ad...8120c0`](./contracts/ethereum-1/0x5859adb05988946b9d08dce2e12ae29af58120c0/) | BASPool | core_logic | $1,391.62 | Verified native implementation with $1,391.62 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6a0f4a...8f339b`](./contracts/arbitrum-42161/0x6a0f4afb31e90c378fa2aaa40371a652578f339b/) | MarinateStrategyFarm | core_logic | $154.29 | Verified native implementation with $154.29 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9ab60e...37d41c`](./contracts/arbitrum-42161/0x9ab60e8db1ff7d1d18d03e8d821bd440c337d41c/) | HoneyETHLPStrategy | core_logic | $34.87 | Verified native implementation with $34.87 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5ec477...85a9fc`](./contracts/arbitrum-42161/0x5ec477eda75303450a4185b3557c2c2fbb85a9fc/) | SPELLETHStrategy | core_logic | $31.12 | Verified native implementation with $31.12 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc42a2...93305c`](./contracts/ethereum-1/0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c/) | BACSUSDPool | core_logic | $10.00 | Verified native implementation with $10.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76bac8...4c6e32`](./contracts/ethereum-1/0x76bac85e1e82cd677faa2b3f00c4a2626c4c6e32/) | ERC20Peg | token | $2.00 | Verified native implementation with $2.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x093933...5c7b24`](./contracts/bsc-56/0x0939334570c289f70ab5c63b9387d6f0845c7b24/) | AtmosSoftToken | token | $0.70 | Verified native implementation with $0.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x92f605...64923f`](./contracts/arbitrum-42161/0x92f6052f5c9efe4f7486e1a0a79cd8961964923f/) | Airdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4f9ba0...4e3a0e`](./contracts/optimism-10/0x4f9ba083132033594326a69fa90ad3f1a84e3a0e/) | AirdropController | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x94e92b...07de7f`](./contracts/optimism-10/0x94e92b32adf955494606b0119fd8a0d6f607de7f/) | AirdropV2Controller | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4b7321...98f867`](./contracts/arbitrum-42161/0x4b7321dbb67ef6e4cf88252ccadcbd86cd98f867/) | ApeRewardsETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x575cef...cb158b`](./contracts/arbitrum-42161/0x575cef1826fcff308b4c3e98aa29fb7856cb158b/) | ApeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9f20de...b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ARBIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x06f2ab...c1d4dd`](./contracts/bsc-56/0x06f2ab649fd575574444ff8e4e92323492c1d4dd/) | AtmosSoftNFTMarket | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0df9c5...fd41fb`](./contracts/bsc-56/0x0df9c5fb57bc3b90e73563e9adb672bea2fd41fb/) | AutoFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x089519...450452`](./contracts/bsc-56/0x0895196562c7868c5be92459fae7f877ed450452/) | AutoFarmV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x1900b5...5a22fc`](./contracts/celo-42220/0x1900b571ff3fcbc60208f3e5d6f25497745a22fc/) | AutoFarmV2_CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x097509...fdaff0`](./contracts/bsc-56/0x09750927d289131d40d6e5ff34d431432bfdaff0/) | AUTOToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x12300e...abfe24`](./contracts/bsc-56/0x12300ea3d3444e9106c65913de24c58462abfe24/) | AUTOv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e7ae8...d6ed8c`](./contracts/ethereum-1/0x7e7ae8923876955d6dcb7285c04065a1b9d6ed8c/) | BACPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc462d8...14c3bf`](./contracts/ethereum-1/0xc462d8ee54953e7d7bf276612b75387ea114c3bf/) | BACyCRVPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b6356...e9a140`](./contracts/ethereum-1/0x6b63564a8b3f145b3ef085bcc197c0ff64e9a140/) | BadgerHunt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6cb6ff...04649d`](./contracts/ethereum-1/0x6cb6ff550ea4473ed462f8bda38ae3226c04649d/) | BellaStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0cef58...3d5faa`](./contracts/bsc-56/0x0cef58f80fad7904556fc7801e46a7618e3d5faa/) | Berry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x08f230...be998e`](./contracts/bsc-56/0x08f2303633a8e376ee02d0c4f07952bf05be998e/) | BerryBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0aef47...a14da8`](./contracts/bsc-56/0x0aef47fe18180f61b87de7e85712652bd8a14da8/) | BerryDataNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x624d25...ebcf9f`](./contracts/bsc-56/0x624d25cb42c7f0940531101d47414e3a58ebcf9f/) | BerryDispute | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x734e3b...3390e1`](./contracts/bsc-56/0x734e3b5bd16b43eb82f203950f983ef6003390e1/) | BerryLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7e7fe9...dbee2e`](./contracts/bsc-56/0x7e7fe9e40fc3b8a7ce85da44801f9efe9bdbee2e/) | BerryMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x283af9...f6b3ae`](./contracts/bsc-56/0x283af939416eebf8413b382338bf1537c1f6b3ae/) | BerryStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xee9a08...5b30ca`](./contracts/bsc-56/0xee9a080a7773669870f58d024d25b157cb5b30ca/) | BerryTransfer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6f889...c115a2`](./contracts/ethereum-1/0xa6f889c3cedbdf6cb524813da0ee0ffaddc115a2/) | BIP11 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5029c2...beded3`](./contracts/optimism-10/0x5029c236320b8f15ef0a657054b84d90bfbeded3/) | BitANTOptimism | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x158f51...6725e2`](./contracts/optimism-10/0x158f513096923ff2d3aab2bcf4478536de6725e2/) | BitBTCL2BridgeOptimism | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ec9f7...7e37da`](./contracts/ethereum-1/0x0ec9f76202a7061eb9b3a7d6b59d36215a7e37da/) | BlackPoolToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27c20f...96fd4f`](./contracts/ethereum-1/0x27c20f0b0ad78805084eeb8407291326e996fd4f/) | Boardroom | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xecf0dd...33e42a`](./contracts/ethereum-1/0xecf0dde35f6d895c065e7526348af1e79433e42a/) | BoardroomV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf5df07...ae4589`](./contracts/bsc-56/0xf5df072fd5b89cb481cb1c112b4cfcd5e5ae4589/) | BOGDEXUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7edc99...776107`](./contracts/bsc-56/0x7edc998a097d372388f1a142ca92401538776107/) | BOGMigrationData | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3e4cd6...c116de`](./contracts/bsc-56/0x3e4cd6f7fdda6712ca93713fc1425ca69ec116de/) | BOGMigrationDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa86b60...1e2812`](./contracts/bsc-56/0xa86b6018ffb7d29f9a3ab59ba27d9e424c1e2812/) | BOGRouterV1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe77570...539b08`](./contracts/bsc-56/0xe77570724e7c6c339cdb22f0d3dabcbbec539b08/) | BOGWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc36824...f5abc5`](./contracts/ethereum-1/0xc36824905dff2eaaee7ecc09fcc63abc0af5abc5/) | Bond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9a904...efe109`](./contracts/ethereum-1/0xd9a904a1320b5f0a1f742a9e431ded2a55efe109/) | Bondroom | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x27f040...e4e10d`](./contracts/arbitrum-42161/0x27f0408729dcc6a4672e1062f5003d2a07e4e10d/) | CarbonRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3449fc...03a69a`](./contracts/ethereum-1/0x3449fc1cd036255ba1eb19d65ff4ba2b8903a69a/) | Cash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x282ffb...020b9c`](./contracts/bsc-56/0x282ffbe782f903340a14955649032302e8020b9c/) | CavePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x369e22...0913ec`](./contracts/ethereum-1/0x369e2285ccf43483e76746cebbf3d1d6060913ec/) | CENNZnetBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1e3709...9417f9`](./contracts/bsc-56/0x1e37097fc71fd892219b266f9bb12558719417f9/) | ChefMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c48fd...47d30c`](./contracts/ethereum-1/0x4c48fd8ed6f6a50bf03dbdefe7d74983f447d30c/) | ControlledAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8c534...504d2a`](./contracts/ethereum-1/0xd8c5344e331d5f4161f03726870ce9da8b504d2a/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x067d4d...f9db0f`](./contracts/ethereum-1/0x067d4d3ce63450e74f880f86b5b52ea3edf9db0f/) | DAIBACLPTokenSharePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9569d4...fb0d0a`](./contracts/ethereum-1/0x9569d4cd7ac5b010da5697e952efb1ec0efb0d0a/) | DAIBASLPTokenSharePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x818f83...402f2e`](./contracts/ethereum-1/0x818f83333244ba4bb72dab0b60b1901158402f2e/) | Distribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x14897d...dd40db`](./contracts/arbitrum-42161/0x14897d1510f60640f7c2e5a3eea48f21eddd40db/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0b9c52...98f427`](./contracts/arbitrum-42161/0x0b9c52febf284c4cfc20c6311e90cca0b198f427/) | DPXStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x864a0b...23f213`](./contracts/bsc-56/0x864a0b7f8466247a0e44558d29cdc37d4623f213/) | FarmerToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x78dddc...dbcd0f`](./contracts/arbitrum-42161/0x78dddc12ec57b3a80b9160cfaa4274e3d8dbcd0f/) | FarmList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x03bba8...702d85`](./contracts/optimism-10/0x03bba86e68c7dd733703cbcd44072082af702d85/) | FarmV2Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xecbaff...cad827`](./contracts/optimism-10/0xecbaffaa5c4e94219f4c166dac9d4a1520cad827/) | FarmV3Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x065894...8eb1b0`](./contracts/ethereum-1/0x06589479a31f826410bbd6d43410e7ff2d8eb1b0/) | Feeder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0ff9ea...ac3587`](./contracts/arbitrum-42161/0x0ff9eab68d3a17258d90796d2b328008e7ac3587/) | GovernorBravoDelegator | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1cc155...0b6266`](./contracts/arbitrum-42161/0x1cc1554b76acc2968d6ecb15681e7e95c80b6266/) | HoneyADOGELPStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x989f62...62c233`](./contracts/arbitrum-42161/0x989f625a4536f0710be11e7292a9f5e0d562c233/) | HoneyEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x958a90...d9a8be`](./contracts/bsc-56/0x958a906585a6d2cf5367f38f1ea306bbadd9a8be/) | IbTokenOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x666c2a...54c0cd`](./contracts/ethereum-1/0x666c2a4625ef5f8cf66a24fbff9f22437754c0cd/) | InitialCashDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c5323...e2f4bb`](./contracts/ethereum-1/0x3c53230875877321023f757c33d2faf71de2f4bb/) | InitialShareDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09eab9...e3200e`](./contracts/arbitrum-42161/0x09eab9c75152ee707b8da7595aa0b8c87be3200e/) | LinearVester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x01d275...dbc02a`](./contracts/manta-169/0x01d27580c464d5b3b26f78bee12e684901dbc02a/) | MantaMintableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xbdad40...61fb07`](./contracts/manta-169/0xbdad407f77f44f7da6684b416b1951eca461fb07/) | MantaMintableERC20WithBridgeFlag | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1922c3...1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | MarinateAutoCompounder | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x28e8fb...c9bb9d`](./contracts/arbitrum-42161/0x28e8fbea79201a134bf9506c47926f179bc9bb9d/) | MarinateV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01d41b...e3b40e`](./contracts/ethereum-1/0x01d41bb9964e95df586974fe68996e3bd4e3b40e/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x30b866...ccafd1`](./contracts/bsc-56/0x30b86606f89c09d2a77cb2929092230351ccafd1/) | MechBotsNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b6043...ade677`](./contracts/ethereum-1/0x1b604349100a318e369b59a6d6c1b65a31ade677/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x818180...d94830`](./contracts/ethereum-1/0x818180acb9d300ffc023be2300addb6879d94830/) | Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x820d13...ed6e40`](./contracts/bsc-56/0x820d132571e112ff6264b0327ba77a7a99ed6e40/) | MythicsNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0a7847...99f5d4`](./contracts/bsc-56/0x0a78471cb73f87ffa1377c3425999ea8ec99f5d4/) | NFTCavePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x67d252...4804b1`](./contracts/bsc-56/0x67d252f051645320339f9a8e26b86b3bf74804b1/) | NFTCavePoolTriple | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x504027...76d393`](./contracts/arbitrum-42161/0x504027bb37a1d34dbdb19cd494f2d1afb476d393/) | NyanBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x211a39...d4ef63`](./contracts/arbitrum-42161/0x211a39dcbf67d3781af34a824c716ad0c8d4ef63/) | NyanEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6f7bf5...1840e6`](./contracts/arbitrum-42161/0x6f7bf5cb2b274e654a16e64f8259fceaf41840e6/) | NYANETHStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01b5e2...84230b`](./contracts/arbitrum-42161/0x01b5e2a392da78c8d42644272c4b7adbfb84230b/) | NyanRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1ea9c7...e9e52f`](./contracts/arbitrum-42161/0x1ea9c72b8152c7fc0128351e42536f7b7be9e52f/) | NyanStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b3868...8ff7ed`](./contracts/ethereum-1/0x1b3868247dfbc155fa59b30ec03e63b10a8ff7ed/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x485e17...bd183d`](./contracts/arbitrum-42161/0x485e17a5b692134db279792054c6cc0b72bd183d/) | PEGGStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cf4ac...912828`](./contracts/ethereum-1/0x0cf4acf926a4d973e4a1775e4a82839988912828/) | PickleProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8b3b94...57d3c9`](./contracts/arbitrum-42161/0x8b3b94b035fee148e9d5955f025fcc2f2c57d3c9/) | Pipeline | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2add07...4ce15b`](./contracts/bsc-56/0x2add0701f6827f6f9d824614b4d0fc9e914ce15b/) | PlatinumMonsterNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd6213c...89cd45`](./contracts/bsc-56/0xd6213c2b9944e7619dc47a8b9c958e490989cd45/) | PMOTNftPromo | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x89cfc3...e738e4`](./contracts/bsc-56/0x89cfc378a42ccfb6821f57d4068675da85e738e4/) | PMOTTreasureChestGame | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20b114...e2b662`](./contracts/bsc-56/0x20b114a66c6021fb1e2fef91abd3b90bbae2b662/) | PMOTTreasureChestGameV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x279e25...9517c2`](./contracts/bsc-56/0x279e2565e19e3daa55c3a3c20fd46a9f019517c2/) | PMOTTreasureChestGameV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x13daed...4c384e`](./contracts/bsc-56/0x13daed27e4b5353587a2e7d32f071f02044c384e/) | PMOTTreasureChestGameV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x976fa2...cd5d60`](./contracts/arbitrum-42161/0x976fa2e7ba147be63b0f88b76849c3d065cd5d60/) | PONGToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7d2d35...228d35`](./contracts/arbitrum-42161/0x7d2d35cf256cb47b8caa6eb4d793f1c7e2228d35/) | Ponzu | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7a20ee...e36b24`](./contracts/arbitrum-42161/0x7a20ee66ca1696d516c1bb780ae153ee1de36b24/) | PonzuStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66d7fa...30b7bb`](./contracts/ethereum-1/0x66d7fa132b5550205d4d6a6645b66283e330b7bb/) | PoolMigrator | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fe765...b432c5`](./contracts/ethereum-1/0x1fe7656fa41eea50b0ee8591fd6b405c94b432c5/) | PoolProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01592e...a00ae6`](./contracts/ethereum-1/0x01592e349258233a6f13685228060511eca00ae6/) | PoolStore | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e3d21...41510c`](./contracts/ethereum-1/0x2e3d21e2730b4e5d5ee7214d4723ea96d041510c/) | PoolWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2906c8...be1a95`](./contracts/arbitrum-42161/0x2906c88ae542deda106cb3e8e65071f99dbe1a95/) | PPEGGEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x60ae12...ab3cf5`](./contracts/arbitrum-42161/0x60ae12b7999c5ced1c57230d2040fd1e5cab3cf5/) | PPEGGETHStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7ed29...b63696`](./contracts/ethereum-1/0xa7ed29b253d8b4e3109ce07c80fc570f81b63696/) | Share | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x106538...875287`](./contracts/ethereum-1/0x106538cc16f938776c7c180186975bca23875287/) | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa72872...07f7f3`](./contracts/ethereum-1/0xa728721394084ea78f10cebb192323f50407f7f3/) | SigmoidThreshold | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4849d2...01cc5c`](./contracts/ethereum-1/0x4849d2a7fec8572f12f369659cf48a826601cc5c/) | SimpleERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b075b...98fe22`](./contracts/ethereum-1/0x7b075b3aa2f1143775101986b52e32da9d98fe22/) | SimpleERCFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8e0060...74c143`](./contracts/bsc-56/0x8e006025674039f149249cbd48f341794a74c143/) | Sminem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8812f0...287e29`](./contracts/bsc-56/0x8812f0b82464f58a381a5eae25194a595a287e29/) | SolarFightersNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46c509...7b1ee2`](./contracts/ethereum-1/0x46c5098f73fa656e82d7e9afbf3c00b32b7b1ee2/) | StakedBPT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1ec62f...9062de`](./contracts/arbitrum-42161/0x1ec62f8367ad3ff61c3f3b0ab1d0297a539062de/) | stARBIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x26804f...785308`](./contracts/arbitrum-42161/0x26804fdd4d4d893686233f8399174f2d2a785308/) | stARBISReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1a40a8...ff0d48`](./contracts/bsc-56/0x1a40a8c7d965f3929e0c56bb301ebe82f5ff0d48/) | Strat1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbc00c...a362d5`](./contracts/ethereum-1/0xcbc00cccbce9d798c412f568436901ff46a362d5/) | StrategyBusd | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf7f9c7...c68c0b`](./contracts/ethereum-1/0xf7f9c789852025862cc160f464d42ca18fc68c0b/) | StrategyHbtc | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9db02f...cbad5a`](./contracts/ethereum-1/0x9db02f1d70ac934faca6bdef78a0fa080fcbad5a/) | StrategyUsdc | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15e926...ecd695`](./contracts/ethereum-1/0x15e926954b0013ae37d4241fc6e7bcb1e0ecd695/) | StrategyUsdt | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x964a64...72bc36`](./contracts/ethereum-1/0x964a640e90fa759c1de9951ebddba730c872bc36/) | StrategyWbtc | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1f042f...1e66ce`](./contracts/bsc-56/0x1f042f2fd6878edcd75f1f1400bc1d53671e66ce/) | StratSwipe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x13057e...624910`](./contracts/bsc-56/0x13057e42bbf1b5d980ea79df5549be49ee624910/) | StratVLEV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x098945...b4205d`](./contracts/bsc-56/0x0989454fcf48c66aee3fe8cf4feccae2e9b4205d/) | StratX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc5eb5a...f9eb40`](./contracts/bsc-56/0xc5eb5a3490d2a2e4a1e1c9a1b965b4eef4f9eb40/) | StratX_AUTO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3aa4f1...11e024`](./contracts/bsc-56/0x3aa4f1ad7094d263dad4ead5b8bc09ddc211e024/) | StratX_Pathed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5d0fc0...e3c02a`](./contracts/arbitrum-42161/0x5d0fc0860db7526b537db8800b5d40b487e3c02a/) | TestToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1a5c34...411eda`](./contracts/arbitrum-42161/0x1a5c344db58b3d9094a1761272a27c08ba411eda/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x0c98e5...7c0931`](./contracts/moonbeam-1284/0x0c98e59e8327f156ab12a042f5e1f0adb97c0931/) | TimelockController_RewardsDistributor3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc93528...793d84`](./contracts/ethereum-1/0xc935285b0d88069305431dace0c3c01d7e793d84/) | TokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5d21fe...cc8afc`](./contracts/bsc-56/0x5d21fec965082e003219c6036844327c2dcc8afc/) | TokenTimelockVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3cb2f8...781a3f`](./contracts/bsc-56/0x3cb2f8f2312ab981c4da6f98735a2af79e781a3f/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02957a...c877f5`](./contracts/ethereum-1/0x02957ae53173f58dc9989c4a09853f9528c877f5/) | Treasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x62055d...01fe23`](./contracts/arbitrum-42161/0x62055dba1d132dbe91805062fb3dcfce3501fe23/) | USDCETHStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6ffb81...6d2a79`](./contracts/arbitrum-42161/0x6ffb81770eb66d9d5e1ce6f6a48753e6c26d2a79/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bddf1...eb729b`](./contracts/ethereum-1/0x6bddf10f9956dcda89998c2e673f74a09deb729b/) | VoteProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5800fc...816546`](./contracts/ethereum-1/0x5800fc35f004c1218b18a22940ee7e8be4816546/) | WeightFeeder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19f35c...8e493e`](./contracts/ethereum-1/0x19f35ce3c3875c120ab602386c8d6a59e88e493e/) | WhiteList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f7d6f...92a878`](./contracts/bsc-56/0x2f7d6f408b3e7f2c4667055ff5bc33f4c592a878/) | Zap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 233 |
| upstream | 7 |
| standard_library | 7 |
| needs_review | 657 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
