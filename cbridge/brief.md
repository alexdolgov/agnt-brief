# Agentic Audit Brief: cBridge

## Project Overview

- Project: cBridge (`cbridge`)
- Website: [https://cbridge.celer.network/#/transfer](https://cbridge.celer.network/#/transfer)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-17T07:00:33.278Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, boba, bsc, celo, ethereum, fantom, gnosis, harmony, heco, linea, metis, moonbeam, moonriver, optimism, polygon, polygon-zkevm, scroll, zksync-era
- Contract surface: 217 unique implementations (324 raw deployments)
- DeFi Llama TVL: $15,020,171.14
- On-chain TVL (included contracts): $52,097.76
- TVL by chain: Avalanche $34,985.12 | Bsc $17,112.51 | Arbitrum $0.12

## Project Description

cBridge is Celer Network's cross-chain asset bridge for transferring tokens across supported blockchains, using bridge/liquidity mechanisms together with Celer SGN and messaging infrastructure. Specific on-chain contract roles should be treated as unknown unless verified from official deployment records, source code, or documentation.

### Architecture

The cBridge family consists of a single product line where core bridge contracts (liquidity pools, relay nodes) are deployed across multiple chains and share a common architecture. Supporting contracts include token adapters and access control modules that facilitate asset transfers and governance across the bridge network.

## Contract Surface Quality

- Indexed contracts: 2382; live-surface contracts included: 324 (264 live, 60 unknown).
- Excluded by liveness: 1723 inactive, 335 singleton, 0 uninitialized.
- Deployment units: 39/210 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 28/221.

## Audit Coverage Summary

- Verified implementations audited: 0/145 (0.0%)
- Verified + Unaudited implementations: 145
- Verified by bytecode match: 0
- Unverified implementations: 72
- Unique implementations: 217
- Raw deployments: 324
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $52,097.76
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (145)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LQTYToken | token | avalanche | n/a | [`0x094bd7...0fddcc`](./contracts/avalanche-43114/0x094bd7b2d99711a1486fb94d4395801c6d0fddcc/) | ⚠️ Unaudited |
| OriginalTokenVaultV2 | core_logic | bsc | n/a | 5 deployments: ethereum `0x751079...f2bae1`; optimism `0x6e380a...13be4f`; bsc [`0x11a0c9...44a980`](./contracts/bsc-56/0x11a0c9270d88c99e221360bca50c2f6fda44a980/); arbitrum `0xea4b1b...a4a58b`; avalanche `0xb51541...4502bb` | ⚠️ Unaudited |
| StabilityPool | core_logic | avalanche | n/a | [`0x7aed63...607522`](./contracts/avalanche-43114/0x7aed63385c03dc8ed2133f705bbb63e8ea607522/) | ⚠️ Unaudited |
| L2WethGateway | token | arbitrum | unit-20269 | [`0x6c411a...6c623b`](./contracts/arbitrum-42161/0x6c411ad3e74de3e7bd422b94a27770f5b86c623b/) | ⚠️ Unaudited |
| AelinPool | unknown | optimism | n/a | [`0x29e146...ffb15e`](./contracts/optimism-10/0x29e146346242e3d206dd36a79e274c753bffb15e/) | ⚠️ Unaudited |
| AelinToken | unknown | optimism | n/a | 2 deployments: optimism [`0x04432a...c08363`](./contracts/optimism-10/0x04432a6fd94e8bc8559d10ac1d98f15cd9c08363/); optimism `0x61baad...5e0b76` | ⚠️ Unaudited |
| AmmVault | unknown | optimism | unit-20182 (3 proxies) | 3 deployments: optimism [`0x43318d...649c83`](./contracts/optimism-10/0x43318de9e8f65b591598f17add87ae7247649c83/); optimism `0x6c7fd4...bca29f`; optimism `0xb48402...196f93` | ⚠️ Unaudited |
| AmyFinanceToken | unknown | arbitrum | n/a | [`0x8fbd42...f2389c`](./contracts/arbitrum-42161/0x8fbd420956fdd301f4493500fd0bcaaa80f2389c/) | ⚠️ Unaudited |
| Animal | unknown | ethereum | n/a | [`0x38b0e3...f003e2`](./contracts/ethereum-1/0x38b0e3a59183814957d83df2a97492aed1f003e2/) | ⚠️ Unaudited |
| ArbStip | unknown | arbitrum | n/a | [`0x403fd3...e72fb8`](./contracts/arbitrum-42161/0x403fd39cbb6f1a1b5a842a29a88b2d262ce72fb8/) | ⚠️ Unaudited |
| AvocadoDAOToken | unknown | ethereum | n/a | [`0xa41f14...2f311f`](./contracts/ethereum-1/0xa41f142b6eb2b164f8164cae0716892ce02f311f/) | ⚠️ Unaudited |
| BlankToken | unknown | ethereum | n/a | [`0xaec7e1...c48966`](./contracts/ethereum-1/0xaec7e1f531bb09115103c53ba76829910ec48966/) | ⚠️ Unaudited |
| BMIToken | unknown | ethereum | n/a | [`0x725c26...1ee688`](./contracts/ethereum-1/0x725c263e32c72ddc3a19bea12c5a0479a81ee688/) | ⚠️ Unaudited |
| BOBA | unknown | ethereum | n/a | [`0x42bbfa...53efbc`](./contracts/ethereum-1/0x42bbfa2e77757c645eeaad1655e0911a7553efbc/) | ⚠️ Unaudited |
| BorrowerOperations | core_logic | avalanche | n/a | [`0xf582ca...be0307`](./contracts/avalanche-43114/0xf582cae047853cbe7f0bc8f8321bef4a1ebe0307/) | ⚠️ Unaudited |
| Bridge | unknown | arbitrum | n/a | 12 deployments: ethereum `0x5427fe...da1820`; optimism `0x9d39fc...cc3401`; bsc `0xdd90e5...81a1af`; gnosis `0x3795c3...b60283`; polygon `0x88dcdc...958a78`; metis `0x841ce4...d0738c`; moonbeam `0x841ce4...d0738c`; moonriver `0x841ce4...d0738c`; arbitrum [`0x1619de...63feca`](./contracts/arbitrum-42161/0x1619de6b6b20ed217a58d00f37b9d47c7663feca/); avalanche `0xef3c71...82e5d4`; linea `0x9b36f1...8f3a1f`; scroll `0x9b36f1...8f3a1f` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | avalanche | n/a | 19 deployments: avalanche [`0x19860c...8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/); avalanche `0x37b608...2e4f76`; avalanche `0x3bd2b1...5b2339`; avalanche `0x49d5c2...c10bab`; avalanche `0x50b754...87b218`; avalanche `0x5947bb...3227a3`; avalanche `0x596fa4...cde0d2`; avalanche `0x63a728...d386d9`; avalanche `0x88128f...b72d42`; avalanche `0x8a0cac...e85cb9`; avalanche `0x8ebaf2...ba8580`; avalanche `0x98443b...690588`; avalanche `0x9eaac1...2f52dc`; avalanche `0xabc954...58d083`; avalanche `0xbec243...4b209b`; avalanche `0xc3048e...6e2437`; avalanche `0xc71984...b95118`; avalanche `0xd50128...28f267`; avalanche `0xd586e7...9d8d70` | ⚠️ Unaudited |
| CelerToken | unknown | ethereum | n/a | [`0x4f9254...81c667`](./contracts/ethereum-1/0x4f9254c83eb525f9fcf346490bbb3ed28a81c667/) | ⚠️ Unaudited |
| CGGToken | unknown | ethereum | n/a | [`0x1fe24f...fa5e43`](./contracts/ethereum-1/0x1fe24f25b1cf609b9c4e7e12d802e3640dfa5e43/) | ⚠️ Unaudited |
| ChainGuardiansToken900 | unknown | ethereum | n/a | [`0x2a2ad5...ff0379`](./contracts/ethereum-1/0x2a2ad5a2eacf35194d39afe1d727c39710ff0379/) | ⚠️ Unaudited |
| ClonableBeaconProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x753d22...1d3dac`](./contracts/arbitrum-42161/0x753d224bcf9aafacd81558c32341416df61d3dac/); arbitrum `0xf0a571...735fba` | ⚠️ Unaudited |
| CloutArtToken | unknown | polygon | n/a | [`0x262b8a...02b728`](./contracts/polygon-137/0x262b8aa7542004f023b0eb02bc6b96350a02b728/) | ⚠️ Unaudited |
| ContributorVesting | unknown | arbitrum | n/a | [`0xa99096...ce68c8`](./contracts/arbitrum-42161/0xa99096428f1bd2065dcaa141c59c46729cce68c8/) | ⚠️ Unaudited |
| ControllerV2BLP | unknown | optimism | unit-20204 | [`0xa300a8...d8bcf4`](./contracts/optimism-10/0xa300a84d8970718dac32f54f61bd568142d8bcf4/) | ⚠️ Unaudited |
| ControllerV2BLP | unknown | polygon | unit-20234 | [`0x52eacd...025f37`](./contracts/polygon-137/0x52eacd19e38d501d006d2023c813d7e37f025f37/) | ⚠️ Unaudited |
| ControllerV2BLP | unknown | arbitrum | unit-20272 | [`0x8e7e9e...1e5408`](./contracts/arbitrum-42161/0x8e7e9ea9023b81457ae7e6d2a51b003d421e5408/) | ⚠️ Unaudited |
| ConvergenceToken | unknown | ethereum | n/a | [`0xc834fa...aa8b50`](./contracts/ethereum-1/0xc834fa996fa3bec7aad3693af486ae53d8aa8b50/) | ⚠️ Unaudited |
| CrazyBunny | unknown | ethereum | n/a | [`0x9f4564...213aae`](./contracts/ethereum-1/0x9f4564b85cb77ce76cc725f29758cbfe20213aae/) | ⚠️ Unaudited |
| CrossProxy | proxy | avalanche | unit-20295 | [`0x74e121...037c3a`](./contracts/avalanche-43114/0x74e121a34a66d54c33f3291f2cdf26b1cd037c3a/) | ⚠️ Unaudited |
| Cvp | unknown | ethereum | n/a | [`0x38e4ad...e7dca1`](./contracts/ethereum-1/0x38e4adb44ef08f22f5b5b76a8f0c2d0dcbe7dca1/) | ⚠️ Unaudited |
| DFProtocol | unknown | ethereum | n/a | [`0x5843f1...d1a1e8`](./contracts/ethereum-1/0x5843f1ccc5baa448528eb0e8bc567cda7ed1a1e8/) | ⚠️ Unaudited |
| DODOToken | unknown | ethereum | n/a | [`0x43dfc4...7d4ddd`](./contracts/ethereum-1/0x43dfc4159d86f3a37a5a4b3d4580b888ad7d4ddd/) | ⚠️ Unaudited |
| DomiToken | unknown | ethereum | n/a | [`0x45c2f8...fef83f`](./contracts/ethereum-1/0x45c2f8c9b4c0bdc76200448cc26c48ab6ffef83f/) | ⚠️ Unaudited |
| DSToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x431ad2...f7dbe0`](./contracts/ethereum-1/0x431ad2ff6a9c365805ebad47ee021148d6f7dbe0/); ethereum `0xeb2697...a83549` | ⚠️ Unaudited |
| EmiRouter | unknown | ethereum | n/a | [`0x22b8cc...d79f01`](./contracts/ethereum-1/0x22b8ccdeeeacb1f3879e36e06af413d44fd79f01/) | ⚠️ Unaudited |
| ERC20 | unknown | ethereum | n/a | [`0x41a3db...c29666`](./contracts/ethereum-1/0x41a3dba3d677e573636ba691a70ff2d606c29666/) | ⚠️ Unaudited |
| ESW | unknown | ethereum | unit-20125 | [`0x5a75a0...18031d`](./contracts/ethereum-1/0x5a75a093747b72a0e14056352751edf03518031d/) | ⚠️ Unaudited |
| ESW | unknown | polygon | unit-20244 | [`0xd2a2a3...4a7d8f`](./contracts/polygon-137/0xd2a2a353d28e4833faffc882f6649c9c884a7d8f/) | ⚠️ Unaudited |
| ETHPlatform | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5005e8...cf0e79`](./contracts/ethereum-1/0x5005e8dc0033e78af80cfc8d10f5163f2fcf0e79/); ethereum `0xbe857e...52be72` | ⚠️ Unaudited |
| Farming | unknown | moonbeam | n/a | [`0xa22687...918c2d`](./contracts/moonbeam-1284/0xa226877393fc4e3b5f2b43a1bae3c5d72c918c2d/) | ⚠️ Unaudited |
| FINN | unknown | moonriver | n/a | [`0x9a92b5...35a756`](./contracts/moonriver-1285/0x9a92b5ebf1f6f6f7d93696fcd44e5cf75035a756/) | ⚠️ Unaudited |
| FinnBar | unknown | moonriver | n/a | [`0x37619c...c9210b`](./contracts/moonriver-1285/0x37619cc85325afea778830e184cb60a3abc9210b/) | ⚠️ Unaudited |
| GamerCoin | unknown | ethereum | n/a | [`0x728f30...b1387d`](./contracts/ethereum-1/0x728f30fa2f100742c7949d1961804fa8e0b1387d/) | ⚠️ Unaudited |
| GOVI | unknown | ethereum | n/a | [`0xeeaa40...6c6107`](./contracts/ethereum-1/0xeeaa40b28a2d1b0b08f6f97bb1dd4b75316c6107/) | ⚠️ Unaudited |
| GOVIETHSLPStakingRewards | unknown | ethereum | n/a | [`0xcf05a6...8f466a`](./contracts/ethereum-1/0xcf05a60bcbc9c85cb2548dafdc444c666a8f466a/) | ⚠️ Unaudited |
| GOVIETHStakingRewards | unknown | ethereum | n/a | [`0x936dd3...975fb7`](./contracts/ethereum-1/0x936dd3112a9d39af39adda798503d9e7e7975fb7/) | ⚠️ Unaudited |
| HuckleberryFarm | unknown | moonriver | n/a | [`0x1f4b76...e343e6`](./contracts/moonriver-1285/0x1f4b7660b6adc3943b5038e3426b33c1c0e343e6/) | ⚠️ Unaudited |
| HuhToken | unknown | polygon | n/a | 2 deployments: ethereum `0x86d49f...5002ab`; polygon [`0x086484...c37786`](./contracts/polygon-137/0x08648471b5aad25feeeb853d6829048f3fc37786/) | ⚠️ Unaudited |
| iETHV2BLP | unknown | optimism | unit-20205 | [`0xa7a084...a7b3b4`](./contracts/optimism-10/0xa7a084538de04d808f20c785762934dd5da7b3b4/) | ⚠️ Unaudited |
| iETHV2BLP | unknown | polygon | unit-20239 | [`0x6a3fe5...678c74`](./contracts/polygon-137/0x6a3fe5342a4bd09efcd44ac5b9387475a0678c74/) | ⚠️ Unaudited |
| iETHV2BLP | unknown | arbitrum | unit-20287 | [`0xee3383...5dcc15`](./contracts/arbitrum-42161/0xee338313f022caee84034253174fa562495dcc15/) | ⚠️ Unaudited |
| iMSDV2BLP | unknown | arbitrum | unit-20264 (2 proxies) | 2 deployments: arbitrum [`0x5be49b...322021`](./contracts/arbitrum-42161/0x5be49b2e04ac55a17c72ac37e3a85d9602322021/); arbitrum `0xe8c85b...fea56c` | ⚠️ Unaudited |
| iMUSX | unknown | optimism | unit-20206 | [`0xabf7fc...213f07`](./contracts/optimism-10/0xabf7fc467846923a9e3c573725daa1e6fb213f07/) | ⚠️ Unaudited |
| Imx | unknown | ethereum | n/a | [`0x7b35ce...764a00`](./contracts/ethereum-1/0x7b35ce522cb72e4077baeb96cb923a5529764a00/) | ⚠️ Unaudited |
| iTokenV2BLP | unknown | optimism | unit-20172 (12 proxies) | 12 deployments: optimism [`0x1f144c...8e2ed7`](./contracts/optimism-10/0x1f144cd63d7007945292ebcde14a6df8628e2ed7/); optimism `0x24d302...06eb27`; optimism `0x4b3488...e09a16`; optimism `0x5bede6...78564c`; optimism `0x5d05c1...48fc44`; optimism `0x683236...4a6ce6`; optimism `0x7702dc...f1d725`; optimism `0x7e7e1d...44ce43`; optimism `0xb34479...1a2cc2`; optimism `0xd65a18...1288d5`; optimism `0xdd40bb...b28ece`; optimism `0xed3c20...aff36f` | ⚠️ Unaudited |
| iTokenV2BLP | unknown | polygon | unit-20228 (10 proxies) | 10 deployments: polygon [`0x0c9261...d81740`](./contracts/polygon-137/0x0c92617df0753af1cab2d9cc6a56173970d81740/); polygon `0x159624...31ad6d`; polygon `0x38d0c4...1cd6f9`; polygon `0x5268b3...b65234`; polygon `0x7d86ee...691b68`; polygon `0x94a14b...45876a`; polygon `0xb3ab71...6a504e`; polygon `0xc171eb...a29882`; polygon `0xcb5d9b...f939b2`; polygon `0xec85f7...96d95b` | ⚠️ Unaudited |
| iTokenV2BLP | unknown | arbitrum | unit-20247 (9 proxies) | 9 deployments: arbitrum [`0x013ee4...9802c8`](./contracts/arbitrum-42161/0x013ee4934ecbfa5723933c4b08ea5e47449802c8/); arbitrum `0x0385f8...56cbaa`; arbitrum `0x46eca1...feb17a`; arbitrum `0x567554...3b0b8b`; arbitrum `0x8dc331...4d4ae0`; arbitrum `0xaea8e2...9c4a63`; arbitrum `0xd3204e...ee0acc`; arbitrum `0xf52f07...9692a9`; arbitrum `0xf69959...12b628` | ⚠️ Unaudited |
| izumiToken | unknown | ethereum | n/a | [`0x9ad372...c5c200`](./contracts/ethereum-1/0x9ad37205d608b8b219e6a2573f922094cec5c200/) | ⚠️ Unaudited |
| JonesAsset | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x1f6fa7...eccb23`](./contracts/arbitrum-42161/0x1f6fa7a58701b3773b08a1a16d06b656b0eccb23/); arbitrum `0x537561...dce421`; arbitrum `0x662d0f...ac08a3`; arbitrum `0xf01886...b9ea19` | ⚠️ Unaudited |
| JonesERC20VaultV3 | unknown | arbitrum | n/a | [`0x8883e5...73f3f5`](./contracts/arbitrum-42161/0x8883e5bb2920bbe766a2c9e86ad9aa45a573f3f5/) | ⚠️ Unaudited |
| JonesToken | unknown | arbitrum | n/a | [`0x10393c...cd67da`](./contracts/arbitrum-42161/0x10393c20975cf177a3513071bc110f7962cd67da/) | ⚠️ Unaudited |
| JonesWETHVaultV3Adapter | unknown | arbitrum | n/a | [`0xbcb55b...6f3c2d`](./contracts/arbitrum-42161/0xbcb55bdb669e756e982169c19c20c987c26f3c2d/) | ⚠️ Unaudited |
| Kromatika | unknown | ethereum | n/a | [`0x3af33b...a4d789`](./contracts/ethereum-1/0x3af33bef05c2dcb3c7288b77fe1c8d2aeba4d789/) | ⚠️ Unaudited |
| L2CustomGateway | unknown | arbitrum | unit-20248 | [`0x096760...ef5562`](./contracts/arbitrum-42161/0x096760f208390250649e3e8763348e783aef5562/) | ⚠️ Unaudited |
| L2ERC20Gateway | token | arbitrum | unit-20249 | [`0x09e922...351eee`](./contracts/arbitrum-42161/0x09e9222e96e7b4ae2a407b98d48e330053351eee/) | ⚠️ Unaudited |
| L2GatewayRouter | adapter | arbitrum | unit-20259 | [`0x5288c5...84f933`](./contracts/arbitrum-42161/0x5288c571fd7ad117bea99bf60fe0846c4e84f933/) | ⚠️ Unaudited |
| L2StandardERC20 | unknown | optimism | n/a | 2 deployments: optimism [`0x9e1028...6840e0`](./contracts/optimism-10/0x9e1028f5f1d5ede59748ffcee5532509976840e0/); optimism `0xf98dcd...590b07` | ⚠️ Unaudited |
| LandsaleNFT_ESTATE | unknown | ethereum | n/a | [`0x28cd29...8dc654`](./contracts/ethereum-1/0x28cd2990f34db387d011d7cc693a2bcedd8dc654/) | ⚠️ Unaudited |
| LockedTokenVault | unknown | ethereum | n/a | [`0x0e504d...673be4`](./contracts/ethereum-1/0x0e504d3e053885a82bd1cb5c29cbaae5b3673be4/) | ⚠️ Unaudited |
| LockingContract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6e1f65...53f3c2`](./contracts/ethereum-1/0x6e1f655ee65bc554c4357daae391e2094053f3c2/); ethereum `0xee88e0...bfadb0` | ⚠️ Unaudited |
| LPStakingRewards | unknown | optimism | unit-20178 | [`0x31a20e...c1f6bf`](./contracts/optimism-10/0x31a20e5b7b1b067705419d57ab4f72e81cc1f6bf/) | ⚠️ Unaudited |
| LQTYStaking | unknown | avalanche | n/a | [`0xb4387d...e1053c`](./contracts/avalanche-43114/0xb4387d93b5a9392f64963cd44389e7d9d2e1053c/) | ⚠️ Unaudited |
| LUSDToken | unknown | avalanche | n/a | [`0x4fbf04...066095`](./contracts/avalanche-43114/0x4fbf0429599460d327bd5f55625e30e4fc066095/) | ⚠️ Unaudited |
| Lyra | unknown | ethereum | n/a | [`0x01ba67...5105bf`](./contracts/ethereum-1/0x01ba67aac7f75f647d94220cc98fb30fcc5105bf/) | ⚠️ Unaudited |
| LyraSafetyModule | unknown | ethereum | unit-20153 | [`0xcb9f85...c77d49`](./contracts/ethereum-1/0xcb9f85730f57732fc899fb158164b9ed60c77d49/) | ⚠️ Unaudited |
| MappingTokenV2 | unknown | moonriver | n/a | 2 deployments: moonriver [`0x900f1e...802667`](./contracts/moonriver-1285/0x900f1ec5819fa087d368877cd03b265bf1802667/); avalanche `0xea6887...5cddef` | ⚠️ Unaudited |
| MaskToken | unknown | ethereum | n/a | [`0x69af81...623074`](./contracts/ethereum-1/0x69af81e73a73b40adf4f3d4223cd9b1ece623074/) | ⚠️ Unaudited |
| MELOS | unknown | ethereum | n/a | [`0x1afb69...19e647`](./contracts/ethereum-1/0x1afb69dbc9f54d08dab1bd3436f8da1af819e647/) | ⚠️ Unaudited |
| MessageBus | unknown | ethereum | unit-20114 | [`0x4066d1...4e200c`](./contracts/ethereum-1/0x4066d196a423b2b3b8b054f4f40efb47a74e200c/) | ⚠️ Unaudited |
| MessageBus | unknown | bsc | unit-20226 | [`0x957148...aeea6b`](./contracts/bsc-56/0x95714818fdd7a5454f73da9c777b3ee6ebaeea6b/) | ⚠️ Unaudited |
| MessageBus | unknown | polygon | unit-20242 | [`0xafdb9c...093fe6`](./contracts/polygon-137/0xafdb9c40c7144022811f034ee07ce2e110093fe6/) | ⚠️ Unaudited |
| MessageBus | operational_periphery | linea | n/a | [`0x0dfabd...15674c`](./contracts/linea-59144/0x0dfabdd2dc27cf93910f7bd4bc3860d5af15674c/) | ⚠️ Unaudited |
| MetavaultRefund | unknown | arbitrum | n/a | [`0x287bfe...d60b09`](./contracts/arbitrum-42161/0x287bfe9ee929842d1af340814332e7548ad60b09/) | ⚠️ Unaudited |
| MillinerV2 | unknown | arbitrum | n/a | [`0xb94d19...0fd756`](./contracts/arbitrum-42161/0xb94d1959084081c5a11c460012ab522f5a0fd756/) | ⚠️ Unaudited |
| MiniChefV2 | unknown | arbitrum | n/a | [`0x0aefad...6fac38`](./contracts/arbitrum-42161/0x0aefad19aa454bcc1b1dd86e18a7d58d0a6fac38/) | ⚠️ Unaudited |
| MiniMeToken | unknown | ethereum | n/a | [`0x8765b1...203656`](./contracts/ethereum-1/0x8765b1a0eb57ca49be7eacd35b24a574d0203656/) | ⚠️ Unaudited |
| MSNFT | unknown | ethereum | n/a | [`0xf38ee8...833d32`](./contracts/ethereum-1/0xf38ee864e36650f8c0abd14622a55bb1f6833d32/) | ⚠️ Unaudited |
| MToken | unknown | ethereum | n/a | [`0x9e32b1...d6ed8e`](./contracts/ethereum-1/0x9e32b13ce7f2e80a01932b42553652e053d6ed8e/) | ⚠️ Unaudited |
| MultiBridgeToken | operational_periphery | linea | n/a | 4 deployments: linea [`0x265b25...7567e8`](./contracts/linea-59144/0x265b25e22bcd7f10a5bd6e6410f10537cc7567e8/); linea `0x5471ea...a953e4`; linea `0x7d43aa...42c0ad`; linea `0xf5c682...3476f5` | ⚠️ Unaudited |
| Multicall2 | unknown | metis | n/a | 3 deployments: optimism `0x7e2dc2...90076b`; metis [`0x32960f...d771ed`](./contracts/metis-1088/0x32960f513727b54876d8974bcb3f107b07d771ed/); arbitrum `0x842ec2...c54eb2` | ⚠️ Unaudited |
| OneTokenV1 | unknown | ethereum | unit-20152 | [`0xca3753...deaf90`](./contracts/ethereum-1/0xca37530e7c5968627be470081d1c993eb1deaf90/) | ⚠️ Unaudited |
| OpenDAO | unknown | ethereum | n/a | [`0x3b484b...c0aee0`](./contracts/ethereum-1/0x3b484b82567a09e2588a13d54d032153f0c0aee0/) | ⚠️ Unaudited |
| OpenDAOMembershipNFT | unknown | ethereum | n/a | [`0xd22f83...abc44d`](./contracts/ethereum-1/0xd22f83e8a1502b1d41c0b40cf64b291a6eabc44d/) | ⚠️ Unaudited |
| OpenDAOStaking | unknown | ethereum | n/a | [`0xedd27c...90d7d1`](./contracts/ethereum-1/0xedd27c961ce6f79afc16fd287d934ee31a90d7d1/) | ⚠️ Unaudited |
| OpThales | unknown | optimism | n/a | 2 deployments: ethereum `0x8947da...a8c3c5`; optimism [`0x217d47...a5bb11`](./contracts/optimism-10/0x217d47011b23bb961eb6d93ca9945b7501a5bb11/) | ⚠️ Unaudited |
| OriginalTokenVault | unknown | avalanche | n/a | 6 deployments: ethereum `0xb37d31...518595`; optimism `0xbcfef6...40aa11`; polygon `0xc1a2d9...d51eea`; arbitrum `0xfe31bf...040f76`; celo `0xd9d103...66752c`; avalanche [`0x5427fe...da1820`](./contracts/avalanche-43114/0x5427fefa711eff984124bfbb1ab6fbf5e3da1820/) | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | ethereum | n/a | [`0x16365b...9b95eb`](./contracts/ethereum-1/0x16365b45eb269b5b5dacb34b4a15399ec79b95eb/) | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | unknown | bsc | n/a | 8 deployments: ethereum `0x52e4f2...4de084`; optimism `0xc3c5b9...d9699a`; bsc [`0x26c76f...1e1e4b`](./contracts/bsc-56/0x26c76f7fef00e02a5dd4b5cc8a0f717eb61e1e4b/); polygon `0xb51541...4502bb`; base `0x5471ea...a953e4`; arbitrum `0xc72e7f...3aaf6b`; avalanche `0xb774c6...fed195`; linea `0x9bb46d...233f4d` | ⚠️ Unaudited |
| Perlin | unknown | ethereum | n/a | [`0xeca821...860318`](./contracts/ethereum-1/0xeca82185adce47f39c684352b0439f030f860318/) | ⚠️ Unaudited |
| Perpetual | unknown | ethereum | n/a | [`0x220a9f...777f76`](./contracts/ethereum-1/0x220a9f0dd581cbc58fcfb907de0454cbf3777f76/) | ⚠️ Unaudited |
| PerpToken | unknown | ethereum | n/a | [`0xbc3966...233447`](./contracts/ethereum-1/0xbc396689893d065f41bc2c6ecbee5e0085233447/) | ⚠️ Unaudited |
| Platform | unknown | ethereum | n/a | [`0xe0437b...0bd1da`](./contracts/ethereum-1/0xe0437beb5bb7cf980e90983f6029033d710bd1da/) | ⚠️ Unaudited |
| Pluto | unknown | ethereum | n/a | [`0xdfe3ac...ed5447`](./contracts/ethereum-1/0xdfe3ac769b2d8e382cb86143e0b0b497e1ed5447/) | ⚠️ Unaudited |
| PolkaExToken | unknown | ethereum | unit-20157 | [`0xe6f143...206920`](./contracts/ethereum-1/0xe6f143a0e0a8f24f6294ce3432ea10fad0206920/) | ⚠️ Unaudited |
| PPTimedVesting | unknown | ethereum | n/a | [`0x60842a...6b28b3`](./contracts/ethereum-1/0x60842a6b44cca5eb7685d1135acf69b1336b28b3/) | ⚠️ Unaudited |
| PriceFeed | unknown | optimism | unit-20224 | [`0xf4aef2...6390dd`](./contracts/optimism-10/0xf4aef21d906992afadde7a9676e1db4feb6390dd/) | ⚠️ Unaudited |
| PSP | unknown | ethereum | n/a | [`0xcafe00...7f3de5`](./contracts/ethereum-1/0xcafe001067cdef266afb7eb5a286dcfd277f3de5/) | ⚠️ Unaudited |
| QiStablecoin | unknown | polygon | n/a | [`0xa3fa99...6997f1`](./contracts/polygon-137/0xa3fa99a148fa48d14ed51d610c367c61876997f1/) | ⚠️ Unaudited |
| RamsesClaimer | unknown | arbitrum | n/a | [`0xe14e75...1f75c6`](./contracts/arbitrum-42161/0xe14e7506a70781bc36a6e72d46ef2b028d1f75c6/) | ⚠️ Unaudited |
| ReefToken | unknown | ethereum | n/a | [`0xfe3e6a...735acf`](./contracts/ethereum-1/0xfe3e6a25e6b192a42a44ecddcd13796471735acf/) | ⚠️ Unaudited |
| Router | unknown | moonbeam | n/a | [`0x7a3909...fcab71`](./contracts/moonbeam-1284/0x7a3909c7996efe42d425cd932fc44e3840fcab71/) | ⚠️ Unaudited |
| Router01 | unknown | ethereum | n/a | [`0x5e1690...43127d`](./contracts/ethereum-1/0x5e169082fff23cee6766062b96051a78c543127d/) | ⚠️ Unaudited |
| SafeBoxBuyback | unknown | optimism | unit-20191 | [`0x679c01...7c59e7`](./contracts/optimism-10/0x679c0174f6c288c4bcd5c95c9ec99d50357c59e7/) | ⚠️ Unaudited |
| SafleToken | unknown | polygon | n/a | [`0x04b330...8ea126`](./contracts/polygon-137/0x04b33078ea1aef29bf3fb29c6ab7b200c58ea126/) | ⚠️ Unaudited |
| SmallToken | unknown | ethereum | n/a | [`0x7fa384...23d2f2`](./contracts/ethereum-1/0x7fa38443e5caec9f8d9c3fc37cd1dae2a523d2f2/) | ⚠️ Unaudited |
| SportAMMLiquidityPool | unknown | optimism | unit-20198 | [`0x842e89...e0eba5`](./contracts/optimism-10/0x842e89b7a7ef8ce099540b3613264c933ce0eba5/) | ⚠️ Unaudited |
| SportVault | unknown | optimism | unit-20183 (4 proxies) | 4 deployments: optimism [`0x43d198...16d98e`](./contracts/optimism-10/0x43d19841d818b2ccc63a8b44ce8c7def8616d98e/); optimism `0x5e2b49...632d3f`; optimism `0xbaac54...65fd5f`; optimism `0xc922f4...f6cecd` | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0xdb3130...9beacb`](./contracts/ethereum-1/0xdb3130952ed9b5fa7108dedaaa921ae8f59beacb/) | ⚠️ Unaudited |
| StakingPools | unknown | ethereum | n/a | [`0x37c7c2...36d6ee`](./contracts/ethereum-1/0x37c7c2ae51e968cefb82cff2102727256d36d6ee/) | ⚠️ Unaudited |
| StakingRewards | unknown | optimism | n/a | 2 deployments: optimism [`0x4aec98...83f4f8`](./contracts/optimism-10/0x4aec980a0daef4905520a11b99971c7b9583f4f8/); optimism `0xfe757a...986a4d` | ⚠️ Unaudited |
| Standard | unknown | ethereum | n/a | [`0x9040e2...2b999d`](./contracts/ethereum-1/0x9040e237c3bf18347bb00957dc22167d0f2b999d/) | ⚠️ Unaudited |
| StandardArbERC20 | unknown | arbitrum | unit-20254 (8 proxies) | 8 deployments: arbitrum [`0x3a8b78...f345ab`](./contracts/arbitrum-42161/0x3a8b787f78d775aecfeea15706d4221b40f345ab/); arbitrum `0x55ff62...a4bf70`; arbitrum `0x69eb4f...59a581`; arbitrum `0x9c67ee...7dd39c`; arbitrum `0xa72159...1e9b87`; arbitrum `0xae6aab...aba689`; arbitrum `0xcafcd8...efd07b`; arbitrum `0xe72ba9...a37333` | ⚠️ Unaudited |
| TaleOfThalesNFTs | unknown | optimism | n/a | [`0xa9218c...be7021`](./contracts/optimism-10/0xa9218c6d51b87eb3ee74e14cb5d50bde00be7021/) | ⚠️ Unaudited |
| ThalesAMMLiquidityPool | unknown | optimism | unit-20213 | [`0xc10a0a...85ea40`](./contracts/optimism-10/0xc10a0a6ff6496e0bd896f9f6da5a7b640b85ea40/) | ⚠️ Unaudited |
| Tickets | unknown | ethereum | n/a | [`0x7a58c0...736c71`](./contracts/ethereum-1/0x7a58c0be72be218b41c608b7fe7c5bb630736c71/) | ⚠️ Unaudited |
| TokenVesting | unknown | ethereum | n/a | [`0x2b79e1...7659ea`](./contracts/ethereum-1/0x2b79e11984514ece5b2db561f49c0466cc7659ea/) | ⚠️ Unaudited |
| TomVault | unknown | moonriver | n/a | [`0xd90a92...c00fe7`](./contracts/moonriver-1285/0xd90a92bd23b30dc3a69403e00651ff6d08c00fe7/) | ⚠️ Unaudited |
| TORN | unknown | ethereum | n/a | [`0x77777f...6a116c`](./contracts/ethereum-1/0x77777feddddffc19ff86db637967013e6c6a116c/) | ⚠️ Unaudited |
| TracerToken | unknown | ethereum | n/a | [`0x9c4a42...22f050`](./contracts/ethereum-1/0x9c4a4204b79dd291d6b6571c5be8bbcd0622f050/) | ⚠️ Unaudited |
| TransferAgent | unknown | bsc | n/a | 2 deployments: ethereum `0x9b274b...661a0b`; bsc [`0x3d85b5...5da541`](./contracts/bsc-56/0x3d85b598b734a0e7c8c1b62b00e972e9265da541/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | unit-20194 | [`0x70a354...413bd4`](./contracts/optimism-10/0x70a35414fad53752c9352401be211779ec413bd4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | unit-20241 | [`0x99e835...fe372c`](./contracts/polygon-137/0x99e8352d079326bc431633a61954f713aafe372c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | moonriver | n/a | [`0xe31a0d...7c994f`](./contracts/moonriver-1285/0xe31a0da5e59df4c82c60d2dd14be64e7ec7c994f/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | unit-20227 | [`0x08c15f...47e0a3`](./contracts/polygon-137/0x08c15fa26e519a78a666d19ce5c646d55047e0a3/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | unit-20229 | [`0x14af1f...63b83c`](./contracts/polygon-137/0x14af1f2f02dccb1e43402339099a05a5e363b83c/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | unit-20230 | [`0x1b815d...a8c603`](./contracts/polygon-137/0x1b815d120b3ef02039ee11dc2d33de7aa4a8c603/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | unit-20238 | [`0x60bb3d...c5bd05`](./contracts/polygon-137/0x60bb3d364b765c497c8ce50ae0ae3f0882c5bd05/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | unit-20246 | [`0xecc417...c4f09d`](./contracts/polygon-137/0xecc4176b90613ed78185f01bd1e42c5640c4f09d/) | ⚠️ Unaudited |
| Unipool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x308777...2fe874`](./contracts/ethereum-1/0x308777ddec61f5000d8394626d55dbb0312fe874/); ethereum `0xdc7a84...9a8adc` | ⚠️ Unaudited |
| VirtualAelinToken | unknown | optimism | n/a | [`0x780f70...24748a`](./contracts/optimism-10/0x780f70882ff4929d1a658a4e8ec8d4316b24748a/) | ⚠️ Unaudited |
| WirexToken | unknown | ethereum | n/a | [`0xa02120...b0e915`](./contracts/ethereum-1/0xa02120696c7b8fe16c09c749e4598819b2b0e915/) | ⚠️ Unaudited |
| WootradeNetwork | unknown | ethereum | n/a | [`0x469193...945d4b`](./contracts/ethereum-1/0x4691937a7508860f876c9c0a2a617e7d9e945d4b/) | ⚠️ Unaudited |
| xCVP | unknown | ethereum | n/a | [`0x9ae236...c2c204`](./contracts/ethereum-1/0x9ae236653325b29d5ab4a2c8cb285e8059c2c204/) | ⚠️ Unaudited |
| xIMX | unknown | ethereum | n/a | [`0x363b2d...96bf59`](./contracts/ethereum-1/0x363b2deac84f0100d63c7427335f8350f596bf59/) | ⚠️ Unaudited |
| ZenlinkToken | unknown | moonriver | n/a | 2 deployments: moonbeam `0x3fd9b6...39100c`; moonriver [`0x0f47ba...a1173b`](./contracts/moonriver-1285/0x0f47ba9d9bde3442b42175e51d6a367928a1173b/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | optimism | n/a | `0x9b216a...b718bb` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x4668e0...c0924b` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x5d96d4...79bfc6` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x779a81...1a8fdc` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xbb7684...1ad573` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe3bd74...36be2f` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x374b8a...1c57ef` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x6626c4...5e8d8a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x74b238...58c76d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x7d9160...8f03e9` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0x4c882e...8a7c0c` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0x5008f8...5a9610` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0x841ce4...d0738c` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0x8db213...073da0` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0xce055e...be8197` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x0d72be...c9ee46` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x54069e...1cd66c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0090eb...7c9081` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0253ee...44b331` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x056e1e...e3e480` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0aef44...5f4aa8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x124f71...0adb9a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x141133...19e3a1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x234232...8bec28` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2f57a0...aaf9f9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x307dd1...f09716` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x375ec6...6ddabb` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x3a7bff...99f603` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4d7168...b4ec76` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5b5ef5...0b4f19` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x670cf2...bd7b78` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6dc265...82eae0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x722377...3c4cb4` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x78d6c2...79bb43` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x80620e...df67ce` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x813195...48388b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8347b8...100857` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8b3d37...3f0225` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8f17b4...657fc7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x98b4b1...5ec533` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x99965f...c14ca8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa0a9b4...b5bd57` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa1341d...3269a2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb1662f...6048a7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb4938b...2c8633` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbf4dd7...56a8a9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbf5979...9f3912` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc0012a...2148ed` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc12cac...6ee58e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc34372...ff2b92` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xcc9b8e...df58fe` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xcdfd49...8a001e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd2d802...ba5f9e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd9b5a5...911b9f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xdb19e9...9ce589` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe0f5f1...ce2639` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xed026c...aa067c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf4dde0...52d5b6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf81bd6...bb8658` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfa68ba...ddca53` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfc4e82...a8b67c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfc7611...5baebe` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfcc0a9...7d2d1b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfde96c...1c1a66` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xd46f8e...7388d1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x425880...a9e263` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb58078...39aeef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xccf619...818e24` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe0866e...03047f` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x78a21c...20ceec` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x985458...9dfab4` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xbd8064...7b8b96` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 217 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
