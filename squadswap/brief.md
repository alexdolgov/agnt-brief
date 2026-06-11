# Agentic Audit Brief: SquadSwap

## Project Overview

- Project: SquadSwap (`squadswap`)
- Website: [https://squadswap.com/](https://squadswap.com/)
- Lifecycle: active (Tier 0, 92.9% below peak)
- Generated: 2026-06-11T03:02:39.329Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-79ef
- Chains: arbitrum, base, blast, bsc, optimism, polygon
- Contract surface: 214 unique implementations (721 raw deployments)
- DeFi Llama TVL: $1,525,876.00
- On-chain TVL (included contracts): $13,040,877.00
- TVL by chain: Bsc $13,040,877.00

## Project Description

SquadSwap is a multi-chain decentralized exchange (DEX) protocol that enables users to swap tokens, provide liquidity, and earn yield through farming. It supports automated market-making (AMM) with concentrated liquidity (V3) and classic AMM (V2) pools, along with staking and yield optimization features.

### Architecture

SquadSwap V3 and V2 families share common farming infrastructure (MasterChefV2/V3) and token descriptors, while SquadSwap Dynamo is a separate V2 instance with its own factory and token. All families operate independently but may share peripheral contracts like routers and multicall interfaces across deployments.

## Audit Coverage Summary

- Verified implementations audited: 24/38 (63.2%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 1
- Unverified implementations: 176
- Unique implementations: 214
- Raw deployments: 721
- Audits discovered: 5
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Staleness: 0 fresh, 1 aging, 4 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 23 | 60.5% | 2023-12 |
| PeckShield | Tier 2 | 7 | 18.4% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (23)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SquadToken | token | bsc | [`0x2d2567...2e310c`](./contracts/bsc-56/0x2d2567dec25c9795117228adc7fd58116d2e310c/) | ✅ Audited |
| FeeManager | governance | arbitrum | 40 deployments: optimism `0xfa6eb2...1e2f85`; bsc `0x0a0c8a...f5213b`; bsc `0x0bfbf7...5780d1`; bsc `0x140377...652975`; bsc `0x215f4b...83ad95`; bsc `0x32be40...436d7c`; bsc `0x368cf1...2f13c8`; bsc `0x37c1fc...fa0f7d`; bsc `0x4b70dc...e58077`; bsc `0x5af85b...424b00`; bsc `0x6777b9...607d92`; bsc `0x7a7d74...e528e9`; bsc `0x7f478b...d225a4`; bsc `0x87983b...f7fae7`; bsc `0x8e3c31...7f004f`; bsc `0x90cea4...0d8e3a`; bsc `0x9d8b42...cafb3c`; bsc `0xaeae15...5e61e5`; bsc `0xb520d5...06fa42`; bsc `0xc6f46f...c6a4e9`; bsc `0xccca34...5efc52`; bsc `0xd5a339...839939`; bsc `0xdb0e65...a45959`; bsc `0xf950c9...bff370`; bsc `0xfe30df...04d591`; bsc `0xffa78f...da9c9a`; polygon `0x29626c...c2af09`; polygon `0x2e815e...94f39a`; polygon `0x369967...78d279`; polygon `0x423a83...11e6a7`; polygon `0x6daafc...acf576`; base `0xc639f1...8d90e2`; base `0xfa6eb2...1e2f85`; arbitrum [`0x07fd20...838251`](./contracts/arbitrum-42161/0x07fd20b71e3ea3e2cbe21070a042e58b42838251/); arbitrum `0x2e815e...94f39a`; arbitrum `0xfa6eb2...1e2f85`; blast `0x34bc76...61f2b9`; blast `0x4969e5...6e7212`; blast `0x53616b...1dd62a`; blast `0xafedaf...c3abbc` | ✅ Audited |
| MasterChefV2 | unknown | polygon | 10 deployments: optimism `0xb61715...2ebb48`; bsc `0x2e881a...4879b4`; bsc `0x6316f6...22b82a`; bsc `0xec6743...7a76ca`; polygon [`0x1d9f43...3b6ac1`](./contracts/polygon-137/0x1d9f43a6195054313ac1ae423b1f810f593b6ac1/); base `0xb3a209...dd529e`; base `0xb61715...2ebb48`; base `0xc49f63...71d25c`; arbitrum `0x6daafc...acf576`; blast `0xdee103...673063` | ✅ Audited |
| MasterChefV3 | unknown | blast | 13 deployments: optimism `0x89c061...266711`; bsc `0x19bcd1...029359`; bsc `0x2ca14a...f96868`; bsc `0x44ec81...0202b5`; bsc `0x87dd4b...80200f`; polygon `0xb4286e...3b49c2`; base `0x87b104...749d09`; base `0x89c061...266711`; arbitrum `0xa9e236...da5dca`; blast [`0x16fbb3...058788`](./contracts/blast-81457/0x16fbb33001d74e4fb6d1423189a74f89da058788/); blast `0x58fea8...178dc7`; blast `0xc639f1...8d90e2`; blast `0xda3840...ccff8b` | ✅ Audited |
| MixedRouteQuoterV1 | periphery | blast | [`0x84ff9b...9f3898`](./contracts/blast-81457/0x84ff9b09b56c3858c38cc7aa678fabb73b9f3898/) | ✅ Audited |
| NonfungiblePositionManager | operational_periphery | blast | 33 deployments: optimism `0xd70eb1...d080f8`; bsc `0x18825a...a5aa02`; bsc `0x1ad99e...e7d85b`; bsc `0x1db019...ef7f2a`; bsc `0x3e8d24...4dc0b7`; bsc `0x43d665...492a07`; bsc `0x4d9dff...f496a1`; bsc `0x4f0ece...eda1b8`; bsc `0x501535...1db7b4`; bsc `0x50b2f7...82f553`; bsc `0x5a2457...bcde2c`; bsc `0x652590...7c423c`; bsc `0x709d09...ce884d`; bsc `0x7bce43...9cd10c`; bsc `0x8b3aa3...7d0a02`; bsc `0x9e6b2d...0cb071`; bsc `0xba0035...3acf04`; bsc `0xc7b975...beea56`; bsc `0xc8ad44...62fadf`; bsc `0xdfc061...e9e9a0`; bsc `0xe5a7fe...ef0adf`; bsc `0xf3de35...ef037a`; bsc `0xfc008d...a4a37b`; polygon `0x3767e2...66aa9f`; polygon `0x87b104...749d09`; base `0x933f97...a409b9`; base `0xd70eb1...d080f8`; arbitrum `0x7ea21a...4a14bb`; arbitrum `0xd6bd39...a83e64`; blast [`0x03439c...c8f7bb`](./contracts/blast-81457/0x03439c1f8161c37e37202ab7fa9f390e01c8f7bb/); blast `0x2c0126...fe2d7a`; blast `0x824300...b78d1c`; blast `0xac5b61...6f72f3` | ✅ Audited |
| NonfungibleTokenPositionDescriptorOffChain | token | bsc | 45 deployments: optimism `0xac5b61...6f72f3`; optimism `0xcf2a34...80ae3b`; bsc [`0x0a4224...377778`](./contracts/bsc-56/0x0a4224cbecec4a8337f722ed105916544e377778/); bsc `0x20dcd7...4c0274`; bsc `0x26583d...792df4`; bsc `0x2bcb99...2cfdc4`; bsc `0x2f314b...93d3b2`; bsc `0x3109db...5bfb4c`; bsc `0x32d4a7...1d5c86`; bsc `0x35b936...2266fb`; bsc `0x38197c...99727b`; bsc `0x388a6f...829150`; bsc `0x4546db...bdb7a2`; bsc `0x499138...370360`; bsc `0x504eba...893295`; bsc `0x5a547c...6d8d59`; bsc `0x5e4edd...52e377`; bsc `0x6967cb...9ed648`; bsc `0x80ff20...cf17ed`; bsc `0x816e5d...c15f8b`; bsc `0x92008f...f88317`; bsc `0xa149f9...ddd4f8`; bsc `0xa4a858...d6b362`; bsc `0xa5fc80...3d0ba2`; bsc `0xac9240...18a7e1`; bsc `0xbb2731...9e310d`; bsc `0xcbdf56...968a00`; bsc `0xd01a4a...0d071a`; bsc `0xdc3dd3...aa9be6`; bsc `0xe5200b...cd915b`; polygon `0x11b701...be7d99`; polygon `0x824300...b78d1c`; polygon `0x9c486d...dfa96a`; polygon `0xff29b1...27c261`; base `0xac5b61...6f72f3`; base `0xcf2a34...80ae3b`; base `0xea6fd4...a68eed`; arbitrum `0x824300...b78d1c`; arbitrum `0x84ff9b...9f3898`; arbitrum `0xbee320...543365`; blast `0x295f6a...1649c5`; blast `0x64d6f4...ce3693`; blast `0x7b7a8f...cb8172`; blast `0x7da1ec...f9f620`; blast `0xd43261...905b6a` | ✅ Audited |
| NonfungibleTokenPositionDescriptorOffChainV2 | token | bsc | 2 deployments: bsc [`0x9cbbb3...00e365`](./contracts/bsc-56/0x9cbbb360867fe5b10d143f870ffb699b3300e365/); bsc `0xfa0c02...6c24d3` | ✅ Audited |
| QuoterV2 | periphery | blast | 36 deployments: optimism `0x6785dc...10ed4c`; optimism `0x84ff9b...9f3898`; bsc `0x291b83...4b0b4b`; bsc `0x2a5d10...d266dd`; bsc `0x330dab...0f4310`; bsc `0x465cca...6ddff3`; bsc `0x516557...b9f714`; bsc `0x547b40...db23a2`; bsc `0x57e621...036bee`; bsc `0x629c12...197215`; bsc `0x699de5...7cc6a3`; bsc `0x72992f...2eab6e`; bsc `0x732431...199eeb`; bsc `0x81da0d...6f21e0`; bsc `0x86a3b5...ac70d7`; bsc `0x9c3ab9...89f1a0`; bsc `0xaabe3a...1e89b9`; bsc `0xaf78c3...7cfe7f`; bsc `0xcad9ec...6edad5`; bsc `0xce631c...3e61f9`; polygon `0x110909...bc1abf`; polygon `0xc566fb...17a5cb`; base `0x144403...cf27fc`; base `0x6785dc...10ed4c`; base `0x84ff9b...9f3898`; base `0xb00152...288fa2`; arbitrum `0x1bc323...bb70e7`; arbitrum `0xb124a8...83212e`; blast [`0x061856...186a3d`](./contracts/blast-81457/0x061856959b3bbfe9353b2cc157a44ddba5186a3d/); blast `0x59378a...c9ae42`; blast `0x7b8227...085b5c`; blast `0x7e9832...7c9a88`; blast `0x7ea21a...4a14bb`; blast `0x829ce7...464aee`; blast `0xd60507...b713aa`; blast `0xee8f37...1299f0` | ✅ Audited |
| SmartChefFactory | registry | bsc | 10 deployments: optimism `0x29626c...c2af09`; optimism `0xea0069...da7fb1`; bsc [`0x04e54d...9407f7`](./contracts/bsc-56/0x04e54d8d216d55bec7ae9fb528168582a79407f7/); bsc `0x28aa1b...2ce150`; bsc `0x642782...52ec16`; polygon `0xb3228e...9a7a19`; base `0x29626c...c2af09`; base `0x7171ea...fea1a7`; arbitrum `0xea6fd4...a68eed`; blast `0x6d3a3a...c8fd75` | ✅ Audited |
| SmartChefInitializable | unknown | blast | [`0xc566fb...17a5cb`](./contracts/blast-81457/0xc566fb4ac9bcd311b5fad9686e9b855aa217a5cb/) | ✅ Audited |
| SmartRouter | adapter | arbitrum | 10 deployments: optimism `0xf48d22...facacc`; bsc `0x8b0c61...cc727b`; bsc `0xfb96f5...0b8b5b`; base `0xe55d12...524377`; base `0xf48d22...facacc`; arbitrum [`0x110909...bc1abf`](./contracts/arbitrum-42161/0x110909bc7d16465d1d0fa76c3fcd498830bc1abf/); blast `0x152176...2c53dd`; blast `0x5fbd88...a234c9`; blast `0x95e801...9fe902`; blast `0xdeb0bf...2870c0` | ✅ Audited |
| SmartRouterHelper | adapter | blast | 10 deployments: optimism `0x7ea21a...4a14bb`; bsc `0x5ba247...0d6ed3`; bsc `0xf1a0c1...79a811`; base `0x369967...78d279`; base `0x7ea21a...4a14bb`; arbitrum `0x95e801...9fe902`; blast [`0x1bc323...bb70e7`](./contracts/blast-81457/0x1bc323a5a87e6c7f463b805112db39507fbb70e7/); blast `0x5dbbf7...53312f`; blast `0xbee320...543365`; blast `0xdfc40e...ef090f` | ✅ Audited |
| SquadAirdrop | operational_periphery | bsc | 16 deployments: bsc [`0x0faf03...a3ad11`](./contracts/bsc-56/0x0faf03221993513de5c03e2484c114a4c8a3ad11/); bsc `0x3234a2...2e4556`; bsc `0x344263...284381`; bsc `0x44b002...1fc5f0`; bsc `0x6c8d18...856954`; bsc `0x75dd15...cf72ab`; bsc `0x8dd8d2...45a9e8`; bsc `0xae6afd...28985a`; bsc `0xb34563...db6c21`; bsc `0xb9abf7...79ec24`; bsc `0xbce603...a294d1`; bsc `0xc47b5e...38a458`; bsc `0xd1ed24...6b3f83`; bsc `0xe51042...c130d5`; bsc `0xf48a35...c919d4`; bsc `0xf735d6...a90ba6` | ✅ Audited |
| SquadInterfaceMulticall | periphery | blast | 11 deployments: optimism `0xee8f37...1299f0`; polygon `0xa2a1e6...482878`; polygon `0xd60507...b713aa`; base `0xdee103...673063`; base `0xee8f37...1299f0`; arbitrum `0x11b701...be7d99`; arbitrum `0xf48d22...facacc`; blast [`0x02ce24...c4e691`](./contracts/blast-81457/0x02ce24a6bdb469645e3615f418676f48c8c4e691/); blast `0x07fd20...838251`; blast `0xd6bd39...a83e64`; blast `0xf90391...9834c9` | ✅ Audited |
| SquadswapRouter02 | adapter | optimism | 17 deployments: optimism [`0x03ae53...4009f8`](./contracts/optimism-10/0x03ae536d3a7f0d7a4316107e6242a162ca4009f8/); optimism `0xa3f309...4e395c`; optimism `0xe58b1e...e144f1`; bsc `0x850774...55611c`; bsc `0xcf870c...5ee48d`; polygon `0x2149e9...9e1a9c`; polygon `0x6785dc...10ed4c`; polygon `0xa1288b...f7c0ea`; polygon `0xfa6eb2...1e2f85`; base `0x3767e2...66aa9f`; base `0x95e801...9fe902`; base `0xa3f309...4e395c`; base `0xd60507...b713aa`; base `0xe58b1e...e144f1`; arbitrum `0xa3f309...4e395c`; arbitrum `0xe58b1e...e144f1`; blast `0xa3f309...4e395c` | ✅ Audited |
| SquadV3Factory | registry | bsc | 18 deployments: optimism `0xa1288b...f7c0ea`; bsc [`0x009c4e...1367c3`](./contracts/bsc-56/0x009c4ef7c0e0dd6bd1ea28417c01ea16341367c3/); bsc `0x10d861...6bc07b`; polygon `0x055892...c0c671`; polygon `0x633faf...4714dc`; polygon `0x7cf7f5...d7ff81`; polygon `0x89c061...266711`; polygon `0x9cbb06...a41691`; polygon `0xa932f8...4dc0c7`; base `0x829ce7...464aee`; base `0xa1288b...f7c0ea`; arbitrum `0x055892...c0c671`; arbitrum `0xa1288b...f7c0ea`; arbitrum `0xd43261...905b6a`; blast `0x2ea306...08ebb6`; blast `0x6ea64b...34e8fd`; blast `0xba34aa...35eef9`; blast `0xea0069...da7fb1` | ✅ Audited |
| SquadV3LmPoolDeployer | core_logic | bsc | 6 deployments: bsc [`0x182b98...578216`](./contracts/bsc-56/0x182b980080d172b28512432299c7208695578216/); bsc `0x8dae3d...f93a52`; blast `0x6785dc...10ed4c`; blast `0x97eed6...a4bc8a`; blast `0xa9e236...da5dca`; blast `0xc4e896...7ace3d` | ✅ Audited |
| SquadV3PoolDeployer | core_logic | bsc | 52 deployments: optimism `0x53616b...1dd62a`; bsc [`0x031e47...75ae9f`](./contracts/bsc-56/0x031e47c7abceb6703eeac7033274696a8675ae9f/); bsc `0x092f47...d43135`; bsc `0x127aa9...9144a4`; bsc `0x18b762...f2dd10`; bsc `0x2360f5...ed70c3`; bsc `0x2d9577...ef0097`; bsc `0x346821...1b1653`; bsc `0x38e09d...3b75ea`; bsc `0x3edaf9...90e5e7`; bsc `0x439430...084741`; bsc `0x45352e...fa96d1`; bsc `0x47cab1...3a90e2`; bsc `0x498e10...416e34`; bsc `0x4ee6a2...bfb1ea`; bsc `0x502cbb...fb61ad`; bsc `0x51cfd3...9d52e9`; bsc `0x53f10a...a3035e`; bsc `0x5a6f8e...3e646c`; bsc `0x6ce6cd...2e321a`; bsc `0x754489...b65bfa`; bsc `0x7cd988...c76a22`; bsc `0x7cf7f5...d7ff81`; bsc `0x7ddb13...3ecba7`; bsc `0xa7f93f...fd8e92`; bsc `0xb20049...95015c`; bsc `0xb65ce8...d7f659`; bsc `0xbf24ca...a11b81`; bsc `0xc28e76...8ca944`; bsc `0xd3f800...470692`; bsc `0xe156a7...e3cfdd`; bsc `0xe2973d...021cce`; bsc `0xf747c5...b10f76`; bsc `0xf89aa6...27e821`; bsc `0xfc8641...4b1617`; polygon `0x202de6...b794a3`; polygon `0x6d3a3a...c8fd75`; polygon `0x850774...55611c`; polygon `0xa9e236...da5dca`; polygon `0xb124a8...83212e`; polygon `0xc639f1...8d90e2`; polygon `0xd51b46...01bd8d`; polygon `0xea0069...da7fb1`; base `0x110909...bc1abf`; base `0x53616b...1dd62a`; arbitrum `0x2149e9...9e1a9c`; arbitrum `0x53616b...1dd62a`; arbitrum `0xea0069...da7fb1`; blast `0x03ae53...4009f8`; blast `0x29626c...c2af09`; blast `0xf99185...dd4a35`; blast `0xfefa8e...710c08` | ✅ Audited |
| SwapRouter | adapter | bsc | 40 deployments: optimism `0xd43261...905b6a`; bsc [`0x02190b...423a96`](./contracts/bsc-56/0x02190be3a410af6a2445b08147ee759947423a96/); bsc `0x0356d3...d32a0f`; bsc `0x06f136...e6d737`; bsc `0x275ed0...81f6de`; bsc `0x2b1a9d...bebf2a`; bsc `0x499fbc...2a092a`; bsc `0x4a56d1...0580d0`; bsc `0x4cdb0a...fe89c4`; bsc `0x56956a...38ef70`; bsc `0x71ddad...3615da`; bsc `0x882ebb...9f5f14`; bsc `0x8a99f9...c79d91`; bsc `0xa5605a...b1a438`; bsc `0xaf4b33...0bcbc0`; bsc `0xb0e18f...ee29b4`; bsc `0xb33395...cced5e`; bsc `0xc2fd30...037a45`; bsc `0xc30395...59e925`; bsc `0xc8b3d3...f8af5f`; bsc `0xcb3342...ef7c82`; bsc `0xcb497a...f70644`; bsc `0xd1d55d...c4ff5b`; bsc `0xe31ede...faed69`; bsc `0xe3b51b...1505db`; bsc `0xe40b58...011e09`; bsc `0xf0f06c...53df01`; bsc `0xff79ba...2265ba`; polygon `0x7da1ec...f9f620`; polygon `0x829ce7...464aee`; polygon `0xb00152...288fa2`; polygon `0xdee103...673063`; base `0x6daafc...acf576`; base `0xd43261...905b6a`; arbitrum `0x7da1ec...f9f620`; arbitrum `0xee8f37...1299f0`; blast `0x416a2c...ae4b0c`; blast `0x8fb20c...8eb60e`; blast `0xafec6a...3a6b8c`; blast `0xfa6eb2...1e2f85` | ✅ Audited |
| TickLens | periphery | bsc | 28 deployments: optimism `0x5fbd88...a234c9`; bsc [`0x010508...79d332`](./contracts/bsc-56/0x01050803073b69754576ec026c2383e10f79d332/); bsc `0x0441c3...dc09f4`; bsc `0x154a55...704507`; bsc `0x2bac1a...736d06`; bsc `0x32218b...2839cd`; bsc `0x330d5c...6f77d2`; bsc `0x469d09...e1f9b2`; bsc `0x5dee12...af14b1`; bsc `0x6162ec...a013a8`; bsc `0x7c9c92...0a6373`; bsc `0x835e78...48e861`; bsc `0xabe715...cd41fc`; bsc `0xcf0e4a...d18f14`; bsc `0xf34d8b...971d44`; bsc `0xfb7448...fee884`; bsc `0xfdadd8...c6b0b0`; bsc `0xff4432...c8e39d`; polygon `0x8716f1...8715a3`; polygon `0x95e801...9fe902`; base `0x5fbd88...a234c9`; base `0x633faf...4714dc`; arbitrum `0x6785dc...10ed4c`; arbitrum `0xd60507...b713aa`; blast `0x3767e2...66aa9f`; blast `0xad2fea...e6a24b`; blast `0xd5f7be...7669d7`; blast `0xd70eb1...d080f8` | ✅ Audited |
| TokenValidator | token | arbitrum | [`0xc639f1...8d90e2`](./contracts/arbitrum-42161/0xc639f1a10c10df80500713dd8b7e2ef85f8d90e2/) | ✅ Audited |
| V3Migrator | periphery | blast | 29 deployments: optimism `0xbee320...543365`; bsc `0x129b14...c3227c`; bsc `0x29abee...467a43`; bsc `0x3bb5dd...75ebc5`; bsc `0x5c3969...6ff07d`; bsc `0x5d23d8...d0a0ba`; bsc `0x6308a2...c42749`; bsc `0x6cf90a...386c79`; bsc `0x791eed...50eb07`; bsc `0x7a6b59...f22927`; bsc `0x9d19dd...9ca47f`; bsc `0x9e7625...b75b85`; bsc `0xa61086...8a9918`; bsc `0xc5d3c5...0f1571`; bsc `0xc8eb52...c652f7`; bsc `0xcdc7f8...87b47c`; bsc `0xe5bcbf...af8ee0`; bsc `0xf40de9...ee5e60`; bsc `0xf834c7...b6ec56`; polygon `0x1bc323...bb70e7`; polygon `0xecfa6b...99d229`; base `0x6d3a3a...c8fd75`; base `0xbee320...543365`; arbitrum `0x16fbb3...058788`; arbitrum `0x3767e2...66aa9f`; blast [`0x11b701...be7d99`](./contracts/blast-81457/0x11b7018204cb458741b56725422bc64cf7be7d99/); blast `0x6778d8...1a9c22`; blast `0xa58659...b674ab`; blast `0xcf2a34...80ae3b` | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BinFeeManagerHook | governance | bsc | 4 deployments: bsc [`0x0ec6a9...60ab86`](./contracts/bsc-56/0x0ec6a90be27728272796d456656e05989860ab86/); bsc `0x73e5fd...a58113`; base `0xd4db07...c6abdd`; base `0xda3eb4...019426` | ⚠️ Unaudited |
| CLFeeManagerHook | governance | bsc | 4 deployments: bsc [`0x73c5c8...255c0a`](./contracts/bsc-56/0x73c5c84703540ed1f1f279614853a302cc255c0a/); bsc `0x79a4be...4b0b18`; base `0x84863e...0a2598`; base `0xf397f1...e86c97` | ⚠️ Unaudited |
| CryptoV3Factory | registry | bsc | 27 deployments: bsc [`0x14af39...2eb28a`](./contracts/bsc-56/0x14af3968913145ee83a64509125a6484262eb28a/); bsc `0x211068...0ede52`; bsc `0x2d53ad...3380b7`; bsc `0x315223...df8140`; bsc `0x3874f3...21af19`; bsc `0x39f4d9...6f01e6`; bsc `0x41c9b3...756fd0`; bsc `0x423a83...11e6a7`; bsc `0x4645d4...b4a630`; bsc `0x4bb63a...54b572`; bsc `0x514fb3...7bf3b6`; bsc `0x817d75...b02cd1`; bsc `0x8e5c10...038826`; bsc `0x9199c3...0bbdd1`; bsc `0xa1f15e...844b1a`; bsc `0xa76cc2...ed40f5`; bsc `0xb24954...bf7eac`; bsc `0xb4feca...5290ec`; bsc `0xc1aa76...ef0cb9`; bsc `0xc7c00e...8f93e2`; bsc `0xcb2079...b46c45`; bsc `0xd51b46...01bd8d`; bsc `0xdd344b...faa980`; bsc `0xe4d849...afe50f`; bsc `0xe7745b...9bc32f`; bsc `0xeb0516...92322f`; bsc `0xf80812...70623c` | ⚠️ Unaudited |
| FarmBooster | core_logic | bsc | 6 deployments: bsc [`0x52e2f8...cda89e`](./contracts/bsc-56/0x52e2f8f52e27918aeb3995b5e49da38ce9cda89e/); bsc `0x672d60...08c9ca`; bsc `0x832c70...421099`; bsc `0x9ee6c6...08a820`; base `0x7f5f5a...6fd4cf`; base `0xc589b6...c6061e` | ⚠️ Unaudited |
| IFODeployerV10 | unknown | bsc | 2 deployments: bsc [`0x05fff7...c5fb39`](./contracts/bsc-56/0x05fff74251a29dac98e10a4314ecf05031c5fb39/); base `0x143bc7...7d94d9` | ⚠️ Unaudited |
| LovelySwapInterfaceMulticall | periphery | bsc | 19 deployments: bsc [`0x04df0e...e7ec09`](./contracts/bsc-56/0x04df0e8168e5d0c42dfd6dc5c414957975e7ec09/); bsc `0x3e89de...cc42d5`; bsc `0x4543fa...38c3d5`; bsc `0x48f413...ff34f1`; bsc `0x572456...1b9635`; bsc `0x6d705b...c7fee7`; bsc `0x7230a2...59ad17`; bsc `0x77bec3...f1c351`; bsc `0x902dc5...72d38b`; bsc `0x96b68d...023a58`; bsc `0x997534...906b88`; bsc `0x9d758e...b43d74`; bsc `0xb148c1...9253ae`; bsc `0xb1d3bf...dc81ca`; bsc `0xb4b76b...f1a62c`; bsc `0xb66e73...5b8039`; bsc `0xc96bf5...e6229e`; bsc `0xd34fea...f7c4ab`; bsc `0xdf1996...b720ce` | ⚠️ Unaudited |
| ProxyAdmin | governance | optimism | 10 deployments: optimism [`0x07fd20...838251`](./contracts/optimism-10/0x07fd20b71e3ea3e2cbe21070a042e58b42838251/); bsc `0x17f24a...b107f7`; bsc `0x622122...921769`; bsc `0x6c8d43...f1448a`; bsc `0xa313c4...41bf13`; bsc `0xa4af76...b3d7bf`; polygon `0xd6bd39...a83e64`; base [`0x07fd20...838251`](./contracts/base-8453/0x07fd20b71e3ea3e2cbe21070a042e58b42838251/); arbitrum `0x5fbd88...a234c9`; blast `0x2149e9...9e1a9c` | ⚠️ Unaudited |
| SquadLimitOrder | unknown | bsc | [`0x62490b...56aab9`](./contracts/bsc-56/0x62490b11b335f3b27fc3fbadc29ccdaf7b56aab9/) | ⚠️ Unaudited |
| SquadOFT | unknown | optimism | 6 deployments: optimism [`0x08ccb8...a68b7e`](./contracts/optimism-10/0x08ccb86a31270fd97d927a4e17934c6262a68b7e/); polygon [`0x08ccb8...a68b7e`](./contracts/polygon-137/0x08ccb86a31270fd97d927a4e17934c6262a68b7e/); polygon `0x5ebb1f...d0d050`; base [`0x08ccb8...a68b7e`](./contracts/base-8453/0x08ccb86a31270fd97d927a4e17934c6262a68b7e/); arbitrum [`0x08ccb8...a68b7e`](./contracts/arbitrum-42161/0x08ccb86a31270fd97d927a4e17934c6262a68b7e/); blast [`0x08ccb8...a68b7e`](./contracts/blast-81457/0x08ccb86a31270fd97d927a4e17934c6262a68b7e/) | ⚠️ Unaudited |
| SquadswapInterfaceMulticallV2 | periphery | bsc | [`0xa4843b...67592d`](./contracts/bsc-56/0xa4843b1247460dd9a66a70386cb9a5934f67592d/) | ⚠️ Unaudited |
| SquadSwapNftStake | token | bsc | [`0xb216ab...ac7e41`](./contracts/bsc-56/0xb216abd79263ec6c85dd243928c7beaaffac7e41/) | ⚠️ Unaudited |
| SquadV3PoolManager | core_logic | bsc | 2 deployments: bsc [`0x391eaa...782ef5`](./contracts/bsc-56/0x391eaa90f931c6330132efe6c73ebdf77d782ef5/); base `0x9cbb06...a41691` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | 2 deployments: bsc [`0x3c577f...376ffb`](./contracts/bsc-56/0x3c577f2edf2f6bd580a9c5ba537f779a8d376ffb/); base `0xc4e896...7ace3d` | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | base | 2 deployments: bsc `0x27f233...d8cfaa`; base [`0x13efb0...41560b`](./contracts/base-8453/0x13efb07140ce67f45256f8ceb230563fc041560b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SquadswapFactory | registry | polygon | 28 deployments: optimism `0x4b599f...ad6551`; optimism `0xba34aa...35eef9`; bsc `0x1d9f43...3b6ac1`; bsc `0x918adf...653dba`; polygon [`0x07fd20...838251`](./contracts/polygon-137/0x07fd20b71e3ea3e2cbe21070a042e58b42838251/); polygon `0x16fbb3...058788`; polygon `0x2d2567...2e310c`; polygon `0x53616b...1dd62a`; polygon `0x572d55...55a91c`; polygon `0x5fbd88...a234c9`; polygon `0x64d6f4...ce3693`; polygon `0x6c8d18...856954`; polygon `0x7ea21a...4a14bb`; polygon `0x84ff9b...9f3898`; polygon `0xac5b61...6f72f3`; polygon `0xbee320...543365`; polygon `0xcf2a34...80ae3b`; polygon `0xd43261...905b6a`; polygon `0xee8f37...1299f0`; polygon `0xf48d22...facacc`; base `0x11b701...be7d99`; base `0x1bc323...bb70e7`; base `0x4b599f...ad6551`; base `0xba34aa...35eef9`; base `0xd6bd39...a83e64`; arbitrum `0x4b599f...ad6551`; arbitrum `0xba34aa...35eef9`; blast `0x4b599f...ad6551` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (176)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0xc49355f78858b4143a25a4ad7e57e48d9f5e217f) | proxy | base | `0x29fb8f...fab69c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x16fbb3...058788` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x202de6...b794a3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xb124a8...83212e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x08c39e...85828d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x098ca9...4b988f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0a7048...b031c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0de41b...50ea1f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0e6a57...d59bb6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0eea7b...d3b9e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x10fd1f...df5d41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x120bc1...844fd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x129790...0d387d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x12b57e...e38a29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x139ca0...2c0237` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x19bfb8...0b4b5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1a0ce3...2de6aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1ae30b...8e05bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1c3fa0...6423fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1d8027...040784` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x27ee18...812965` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x286c0d...161bc8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2ca692...ac2db8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2cb040...57f6d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2d7230...0e1618` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2edc98...548e5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2fa963...e2aca3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2fe498...dce453` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x32780b...8f3a4b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x329e3e...512a70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x32c9a3...969740` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x336be6...e2d11c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x354c87...27e4de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x36cdb4...290cd5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x37a76e...aafd07` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x37ddd0...8b6b23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x386c4f...4ac655` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x395f4b...d3d5a1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3ccbf5...07ed78` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x40ada5...ccb51d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4123e9...53126a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x41953d...695820` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x44d4ef...cf789f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x46680d...dbcc6b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x48470d...8d6ddb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4962a1...05755f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4b937c...81a94b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4d77ef...6aea6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x511530...aaeac1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5d7fab...d7e7d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5f9341...91d0a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x60efb4...99d0f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x61ef63...a348c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x630f58...16c08b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6698e3...66c8a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x671d58...ec1294` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6b2663...4463ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6fd3de...080981` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x739d61...24ef08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x73b7e7...1d3cf1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7473fa...d21313` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x77d373...903929` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x799d14...bd2030` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7cafae...11e924` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7dc292...1f45fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x810c5d...3a5f23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x82847d...133758` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x831355...18c9d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x86eb5e...0ce9bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x870ab6...479450` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8788d1...095b5c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x896002...7e2431` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8973db...52dfef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8b2e09...cc4855` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8e3169...5e06a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9070b5...3279fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x92e56d...83c388` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x936a39...152246` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x956208...d52ff2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9603e2...7253ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x983942...94f740` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa1551c...6e128e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa9712b...fb2e4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xade16f...8c08b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaee2b8...db16cc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb1d753...108183` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb3ba27...188c22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb6d43d...2b1198` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb793db...089955` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb951c0...0ada88` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb9b1a1...6b8f0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb9f43d...20235e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xba2a8b...0f1a6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbc9e03...d06dae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc1fa2a...e217b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc2c434...4ef5a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc3fe3d...e591a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcbe6b9...6494b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcd6f94...b0e7a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcfbb55...0a9666` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd108e1...2918b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd3d678...f3328a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd58ccf...cb62de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd5ddc0...c7652c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd669fe...85bd2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd67021...2d482b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd6ceae...1374a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd71dcd...326fa8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd74848...17b3a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd81414...54082f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdc946e...af6dfa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe10a60...53de69` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe27875...620acf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe3ca07...72098b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf1fbb8...8d426f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf2c8a9...b479de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf58290...afbec0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf6dcd5...8b9a87` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf9b3a7...82d695` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfa7fc5...0c780f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfc600b...b129fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfcfc67...52b13d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfd399f...7852bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfd3bc2...545a2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfdde3e...b61000` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfea79d...3306fc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0bd41d...7dc369` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3a5800...982286` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7f5f5a...6fd4cf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb3a209...dd529e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc49f63...71d25c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc589b6...c6061e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x061856...186a3d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0bd703...6dcfbc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x145e6b...874b76` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x16fbb3...058788` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1f2436...bed21f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1f8939...773b7e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x202de6...b794a3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x340a67...d7b911` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x34bc76...61f2b9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3a5800...982286` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x51c97e...fe03a5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x58fea8...178dc7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5d202a...122f5c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5dbbf7...53312f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8b39a3...ce2b0e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x93c8b2...119f1a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9627ea...236a0a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x97f426...169fc7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9f4b97...1fdf5c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa2a1e6...482878` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xac47c0...cfed58` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb124a8...83212e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc49355...5e217f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcc6c58...4596eb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcd32cd...e1c49b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd39f3c...8659e3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd9d71b...f5d10f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdeb0bf...2870c0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xff29b1...27c261` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x202de6...b794a3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x29626c...c2af09` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x829ce7...464aee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x89c061...266711` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9c486d...dfa96a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9cbb06...a41691` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa932f8...4dc0c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb61715...2ebb48` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x110909...bc1abf` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x29fb8f...fab69c` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x87048e...e7e36a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x9ab779...02014a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x9c486d...dfa96a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xa37843...b7a111` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xf48d22...facacc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf) | PeckShield | Audit | 2025-02 | aging | Direct | contract_name | 53 | high |
| [DL audit link](https://www.cyberscope.io/audits/squadswap) | unknown | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [squadswap.pdf](https://github.com/cyberscope-io/audits/blob/main/squadswap/squadswap.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | 37 | high |
| [audit.pdf (also discovered via alternate URL)](https://github.com/cyberscope-io/audits/blob/main/squadswap/v1/audit.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 408 | high |
| [PeckShield Audit Report](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SquadSwap-v1.0.pdf) | PeckShield | Audit | 2024-02 | stale | Direct | contract_name | 41 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x0ec6a9...60ab86`](./contracts/bsc-56/0x0ec6a90be27728272796d456656e05989860ab86/) | BinFeeManagerHook | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x73c5c8...255c0a`](./contracts/bsc-56/0x73c5c84703540ed1f1f279614853a302cc255c0a/) | CLFeeManagerHook | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x14af39...2eb28a`](./contracts/bsc-56/0x14af3968913145ee83a64509125a6484262eb28a/) | CryptoV3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x52e2f8...cda89e`](./contracts/bsc-56/0x52e2f8f52e27918aeb3995b5e49da38ce9cda89e/) | FarmBooster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05fff7...c5fb39`](./contracts/bsc-56/0x05fff74251a29dac98e10a4314ecf05031c5fb39/) | IFODeployerV10 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04df0e...e7ec09`](./contracts/bsc-56/0x04df0e8168e5d0c42dfd6dc5c414957975e7ec09/) | LovelySwapInterfaceMulticall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x62490b...56aab9`](./contracts/bsc-56/0x62490b11b335f3b27fc3fbadc29ccdaf7b56aab9/) | SquadLimitOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x08ccb8...a68b7e`](./contracts/optimism-10/0x08ccb86a31270fd97d927a4e17934c6262a68b7e/) | SquadOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa4843b...67592d`](./contracts/bsc-56/0xa4843b1247460dd9a66a70386cb9a5934f67592d/) | SquadswapInterfaceMulticallV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x391eaa...782ef5`](./contracts/bsc-56/0x391eaa90f931c6330132efe6c73ebdf77d782ef5/) | SquadV3PoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 137 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=564

Zero-match audit list:

- [3034] DL audit link

Fork inheritance lineage and inherited audits are included when available.
