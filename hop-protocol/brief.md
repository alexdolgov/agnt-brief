# Agentic Audit Brief: Hop Protocol

⚠️ Lifecycle status: DECLINING - TVL changed 0.7% over 90 days

## Project Overview

- Project: Hop Protocol (`hop-protocol`)
- Website: [https://hop.exchange](https://hop.exchange)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:47.514Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, ethereum, gnosis, optimism, polygon
- Contract surface: 297 unique implementations (552 raw deployments)
- DeFi Llama TVL: $3,116,830.02
- On-chain TVL (included contracts): $54,778,795.70
- TVL by chain: Optimism $25,808,957.73 | Gnosis $16,786,608.43 | Polygon $11,970,863.41 | Arbitrum $212,366.13

## Project Description

Hop Protocol is a cross-chain bridge that enables fast transfers of tokens between Ethereum and supported Layer 2 networks using bonders/liquidity providers and AMM pools to provide liquidity and swap assets across chains.

### Architecture

The Cross-Chain Bridge family relies on the Liquidity Pools family to facilitate swaps between canonical tokens and Hop Bridge Tokens during transfers. Both families share the HopBridgeToken contract, which is minted and burned by the bridge contracts and traded in the AMM pools.

## Contract Surface Quality

- Indexed contracts: 876; live-surface contracts included: 552 (88 live, 464 unknown).
- Excluded by liveness: 292 inactive, 32 singleton, 0 uninitialized.
- Deployment units: 2/20 live.
- Detected codebases: none
- Unverified dependencies: 7/68.

## Audit Coverage Summary

- Verified implementations audited: 9/93 (9.7%)
- Verified + Unaudited implementations: 84
- Verified by bytecode match: 0
- Unverified implementations: 204
- Unique implementations: 297
- Raw deployments: 552
- Audits discovered: 4
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $54,778,795.70
- Latest audit: 2021-05 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $54,778,795.70 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| MonocerosAlpha | Tier 2 | 9 | 9.7% | 2021-04 |
| Solidified | Tier 2 | 7 | 7.5% | 2021-05 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbitrumMessengerWrapper | unknown | ethereum | n/a | 3 deployments: ethereum [`0x41bf5f...a6a35c`](./contracts/ethereum-1/0x41bf5fd5d1c85f00fd1f23c77740f1a7eba6a35c/); ethereum `0x967f8e...dc60dc`; ethereum `0xdd378a...da5434` | ✅ Audited |
| HopBridgeToken | operational_periphery | arbitrum | n/a | 20 deployments: optimism `0x25d803...2e6ae8`; optimism `0x3666f6...c5f18a`; gnosis `0x91f849...7355fb`; gnosis `0x9ec955...b3b09d`; gnosis `0xb1ea9f...ef45c4`; gnosis `0xc46f20...7dfd1c`; gnosis `0xe38faf...2c5156`; arbitrum [`0x0ce6c8...dd444d`](./contracts/arbitrum-42161/0x0ce6c85cf43553de10fc56ceca0aef6ff0dd444d/); arbitrum `0x12e59c...e2b5c7`; arbitrum `0x19b216...6acb75`; arbitrum `0x1fdeaf...920c7a`; arbitrum `0x46ae9b...6b5c61`; arbitrum `0x588bae...69423b`; arbitrum `0x774502...1585e9`; arbitrum `0x932e24...e1f891`; arbitrum `0xa08899...e0fcb3`; arbitrum `0xa49600...bceab2`; arbitrum `0xb76e67...0f5c4c`; arbitrum `0xda7c0d...8a77eb`; arbitrum `0xfe35ef...2302b7` | ✅ Audited |
| L1_ERC20_Bridge | operational_periphery | ethereum | n/a | 8 deployments: ethereum [`0x22b1cb...eb1cc2`](./contracts/ethereum-1/0x22b1cbb8d98a01a3b71d034bb899775a76eb1cc2/); ethereum `0x36443f...697d62`; ethereum `0x3666f6...c5f18a`; ethereum `0x3d4cc8...48edd1`; ethereum `0x3e4a3a...6420b6`; ethereum `0x87269b...d0dbec`; ethereum `0x893246...988b96`; ethereum `0xf07454...28e57d` | ✅ Audited |
| L1_ETH_Bridge | operational_periphery | ethereum | n/a | [`0xb8901a...19727f`](./contracts/ethereum-1/0xb8901acb165ed027e32754e0ffe830802919727f/) | ✅ Audited |
| L2_AmmWrapper | unknown | arbitrum | n/a | 10 deployments: gnosis `0x76b22b...a635a7`; arbitrum [`0x16e08c...9a5a95`](./contracts/arbitrum-42161/0x16e08c02e4b78b0a5b3a917ff5feaedd349a5a95/); arbitrum `0x27d28d...bad45f`; arbitrum `0x33ceb2...020417`; arbitrum `0x50a3a6...a912dd`; arbitrum `0xc08055...e7ddb5`; arbitrum `0xcb0a41...d30283`; arbitrum `0xcbb852...f27a11`; arbitrum `0xe22d2b...a26f52`; arbitrum `0xe7f40b...a48cc2` | ✅ Audited |
| L2_ArbitrumBridge | operational_periphery | arbitrum | n/a | 10 deployments: arbitrum [`0x0e0e3d...abf8dd`](./contracts/arbitrum-42161/0x0e0e3d2c5c292161999474247956ef542cabf8dd/); arbitrum `0x24afdc...f6eb24`; arbitrum `0x25fb92...384266`; arbitrum `0x3749c4...8caccc`; arbitrum `0x3e4a3a...6420b6`; arbitrum `0x72209f...42491f`; arbitrum `0x7ac115...a58ba6`; arbitrum `0xc31523...4c57f0`; arbitrum `0xcb4cee...dd3775`; arbitrum `0xea5abf...a6ce98` | ✅ Audited |
| L2_OptimismBridge | operational_periphery | optimism | n/a | [`0xa81d24...77a8fc`](./contracts/optimism-10/0xa81d244a1814468c734e5b4101f7b9c0c577a8fc/) | ✅ Audited |
| L2_XDaiBridge | operational_periphery | gnosis | n/a | 5 deployments: gnosis [`0x046035...ef2238`](./contracts/gnosis-100/0x0460352b91d7cf42b0e1c1c30f06b602d9ef2238/); gnosis `0x6f0305...4eb632`; gnosis `0x7ac71c...885ccc`; gnosis `0xd8926c...af491b`; gnosis `0xfd5a18...0acac2` | ✅ Audited |
| OptimismMessengerWrapper | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9d3a7f...4f5638`](./contracts/ethereum-1/0x9d3a7fb18ca7f1237f977dc5572883f8b24f5638/); ethereum `0x9fc22e...982501`; ethereum `0xa45df1...7aebd1` | ✅ Audited |

### ⚠️ Verified + Unaudited (84)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OVMFiatToken | token | optimism | n/a | [`0x7f5c76...c31607`](./contracts/optimism-10/0x7f5c764cbc14f9669b88837ca1490cca17c31607/) | ⚠️ Unaudited |
| PermittableToken | token | gnosis | unit-29057 | [`0xddafbb...fb7a83`](./contracts/gnosis-100/0xddafbb505ad214d7b80b1f830fccc89b60fb7a83/) | ⚠️ Unaudited |
| ChildERC20 | token | polygon | n/a | 16 deployments: polygon [`0x0b9020...6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/); polygon `0x46ca15...ec1871`; polygon `0x4a8766...e1f2b9`; polygon `0x4e5612...1f6db6`; polygon `0x53e0bc...abad39`; polygon `0x556f50...aa9e6d`; polygon `0x578360...11ed5f`; polygon `0x5fab57...c5c8d6`; polygon `0x6bfb5b...a19243`; polygon `0x71b821...085978`; polygon `0x8484ef...922b30`; polygon `0xadc0c4...69ea73`; polygon `0xb6a508...5c1326`; polygon `0xca3441...28a223`; polygon `0xeffdcb...230e3e`; polygon `0xf2f3bd...2be82a` | ⚠️ Unaudited |
| LPToken | token | optimism | n/a | 3 deployments: optimism [`0x2e17b8...d2d5a8`](./contracts/optimism-10/0x2e17b8193566345a2dd467183526dedc42d2d5a8/); gnosis `0x9d373d...fb1a0a`; arbitrum `0xb67c01...6bff71` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | unit-29074 (2 proxies) | 2 deployments: arbitrum [`0xae6aab...aba689`](./contracts/arbitrum-42161/0xae6aab43c4f3e0cea4ab83752c278f8debaba689/); arbitrum `0xe72ba9...a37333` | ⚠️ Unaudited |
| ChildERC1155 | token | polygon | n/a | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| Vault | core_logic | polygon | n/a | 8 deployments: polygon [`0x082526...1acee9`](./contracts/polygon-137/0x0825266f72e8841d7fea350b20dd65aa861acee9/); polygon `0x5f6f4b...2caed4`; polygon `0x72384b...632351`; polygon `0x90105a...1fd9f5`; polygon `0x9fd185...e8b292`; polygon `0xbc31ec...153a25`; polygon `0xc0acbb...91546c`; polygon `0xe51d29...119ded` | ⚠️ Unaudited |
| UChildERC20Proxy | token | polygon | n/a | 13 deployments: polygon [`0x02daef...057966`](./contracts/polygon-137/0x02daefc2e8aad089d094579499508398e3057966/); polygon `0x313d00...5bd604`; polygon `0x5a2fdf...908d19`; polygon `0x5adf17...2e0a58`; polygon `0x6bd27b...58ea99`; polygon `0x7d836d...f09981`; polygon `0x81a9d2...5c83ca`; polygon `0xa48929...8d5c8f`; polygon `0xc10aac...113e15`; polygon `0xc576e8...1ee78a`; polygon `0xcf46c5...8f5546`; polygon `0xf316a6...676ed9`; polygon `0xfdf922...b39c4c` | ⚠️ Unaudited |
| L2WethGateway | token | arbitrum | unit-29073 | [`0x6c411a...6c623b`](./contracts/arbitrum-42161/0x6c411ad3e74de3e7bd422b94a27770f5b86c623b/) | ⚠️ Unaudited |
| AcrossImplV2 | unknown | polygon | n/a | [`0xeb0344...f59f86`](./contracts/polygon-137/0xeb03440702bb6de23c63ad1c5a24598433f59f86/) | ⚠️ Unaudited |
| BaseMessengerWrapper | unknown | ethereum | n/a | [`0x86ed3b...d3d1ae`](./contracts/ethereum-1/0x86ed3b8ad6b721fd3a2fa73c227987fb9ad3d1ae/) | ⚠️ Unaudited |
| BeaconProxyFactory | registry | arbitrum | n/a | [`0x3fe380...11000f`](./contracts/arbitrum-42161/0x3fe38087a94903a9d946fa1915e1772fe611000f/) | ⚠️ Unaudited |
| CapacitorFactory | registry | polygon | n/a | [`0x915580...c02a2d`](./contracts/polygon-137/0x915580973cdd42cb5c4320a54408702ffdc02a2d/) | ⚠️ Unaudited |
| CelerImplL1L2 | unknown | polygon | n/a | 4 deployments: polygon [`0x14ac5b...736628`](./contracts/polygon-137/0x14ac5b3580dd1e546cd7287cd1fadba9a8736628/); polygon `0xb364b8...357680`; polygon `0xb48b74...b6787f`; polygon `0xe48ae3...948561` | ⚠️ Unaudited |
| ChildChainManager | governance | polygon | n/a | 2 deployments: polygon [`0x195fe6...5dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/); polygon `0x316c79...5548d0` | ⚠️ Unaudited |
| ChildChainManager | governance | polygon | unit-29064 | [`0xa6fa4f...d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| ChildChainManagerProxy | governance | polygon | n/a | [`0xafeea1...171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ⚠️ Unaudited |
| ChildERC721 | token | polygon | n/a | [`0x6ebeac...a93aab`](./contracts/polygon-137/0x6ebeac13f6403d19c95b6b75008b12fd21a93aab/) | ⚠️ Unaudited |
| ChildMintableERC721 | token | polygon | n/a | [`0xd4888f...25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ⚠️ Unaudited |
| CommonPlug | unknown | polygon | n/a | [`0x44ebf1...e08cc2`](./contracts/polygon-137/0x44ebf1a711082e6373fb142ecfcb469cffe08cc2/) | ⚠️ Unaudited |
| ConnectorPlug | unknown | polygon | n/a | 10 deployments: polygon [`0x0c105e...919730`](./contracts/polygon-137/0x0c105e72eb2dbd12b4023e628c2bc90a8b919730/); polygon `0x125d3f...eb24f0`; polygon `0x3e6bd7...94bb0f`; polygon `0x44343a...241b02`; polygon `0x69c2a7...c38ce0`; polygon `0xa042c2...c1bb6c`; polygon `0xb41a8f...728861`; polygon `0xb8d31f...41c56c`; polygon `0xe59678...edcec9`; polygon `0xfecba3...b1c6b9` | ⚠️ Unaudited |
| Controller | governance | polygon | n/a | [`0xe24007...73ddd1`](./contracts/polygon-137/0xe24007ea3fac1ec3fb580d40658600e31c73ddd1/) | ⚠️ Unaudited |
| Counter | unknown | polygon | n/a | 5 deployments: polygon [`0x0eaf03...71fe74`](./contracts/polygon-137/0x0eaf03567a21e32e0ce27f329b7d0e82a971fe74/); polygon `0x626674...1af17c`; polygon `0x7a369b...d821bc`; polygon `0xa3877e...6278ce`; polygon `0xf28fcc...aeca69` | ⚠️ Unaudited |
| DForce | unknown | arbitrum | n/a | [`0x5d8063...a15ba1`](./contracts/arbitrum-42161/0x5d8063df0319457f777a353efef0dc0189a15ba1/) | ⚠️ Unaudited |
| DiamondCutFacet | unknown | polygon | n/a | [`0xc46304...10d617`](./contracts/polygon-137/0xc46304a0b2accc4462d9bdcaa0f6bf632510d617/) | ⚠️ Unaudited |
| Dispatcher | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2ede3d...f6a1f6`](./contracts/ethereum-1/0x2ede3d89877d0015a44f5c927890c95f2ef6a1f6/); ethereum `0x87b850...c4405a`; ethereum `0xa91405...e8728d`; ethereum `0xe2b303...a31fd3` | ⚠️ Unaudited |
| ERC721SeaDrop | token | polygon | n/a | [`0x4fd52e...9841ca`](./contracts/polygon-137/0x4fd52e9c341a6581bb83dbf98fe2be15ba9841ca/) | ⚠️ Unaudited |
| ExecutionHelper | periphery | polygon | n/a | 7 deployments: polygon [`0x2b81e5...da9e8d`](./contracts/polygon-137/0x2b81e5f8f43d2b4cbc1840764c7784808fda9e8d/); polygon `0x705d9f...e02766`; polygon `0x7ecd56...d781eb`; polygon `0x894916...e905e6`; polygon `0xa451cc...bc4ad9`; polygon `0xdd4c71...eab86d`; polygon `0xecd293...02d2fd` | ⚠️ Unaudited |
| ExecutionManager | governance | polygon | n/a | 3 deployments: polygon [`0x289d13...8fb926`](./contracts/polygon-137/0x289d13adee0b7c1128b45825bdd1e5eb648fb926/); polygon `0x7398da...cb1470`; polygon `0xb6a8a2...e795e4` | ⚠️ Unaudited |
| Executor | unknown | ethereum | n/a | 3 deployments: ethereum [`0xcbd8c3...0ef3c3`](./contracts/ethereum-1/0xcbd8c34759706545b0f3092ee4399831080ef3c3/); ethereum `0xd17b1d...34baf2`; ethereum `0xeb5306...cf8079` | ⚠️ Unaudited |
| FastSwitchboard | unknown | polygon | n/a | 6 deployments: polygon [`0x33918b...7ba445`](./contracts/polygon-137/0x33918bbf9f5269d90b8c0abf1fd1134c827ba445/); polygon `0x52a71b...c72daf`; polygon `0x781908...e61786`; polygon `0xb113d7...f1e3f4`; polygon `0xb864fb...10db22`; polygon `0xdce184...6c3518` | ⚠️ Unaudited |
| FeeManager | governance | ethereum | n/a | 4 deployments: ethereum [`0x430738...ef9fff`](./contracts/ethereum-1/0x430738595230271764a21c5336ef975deeef9fff/); ethereum `0xb3d14d...b84c31`; ethereum `0xb640c9...a15c76`; ethereum `0xb927ad...0b4cc6` | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| GasMovr | unknown | polygon | n/a | 5 deployments: polygon [`0x8f9eae...042c6d`](./contracts/polygon-137/0x8f9eaee5c5df888aba3c1ab19689a0660d042c6d/); polygon `0xa7649a...7f03e4`; polygon `0xaa3d9f...4d750e`; polygon `0xac313d...072d91`; polygon `0xd28659...6db27b` | ⚠️ Unaudited |
| GasPriceOracle | operational_periphery | polygon | n/a | [`0xb0e7fd...019d2e`](./contracts/polygon-137/0xb0e7fdb68d67bf8dd753b562c793185a7e019d2e/) | ⚠️ Unaudited |
| Hasher | unknown | polygon | n/a | 5 deployments: polygon [`0x0bcbb8...368ddf`](./contracts/polygon-137/0x0bcbb836b66ad7d0f21f0176f439e71492368ddf/); polygon `0x12061f...51b6ce`; polygon `0x47508d...f75d00`; polygon `0x866829...8ee7d0`; polygon `0x8afacb...c7673e` | ⚠️ Unaudited |
| HopImplL2 | unknown | polygon | n/a | 4 deployments: polygon [`0x030274...dcb2a9`](./contracts/polygon-137/0x03027410f25c527d5aeb3e6e56a6389611dcb2a9/); polygon `0x1d6811...d99ea4`; polygon `0x2b42af...72ccd3`; polygon `0xa3f9a7...a31f68` | ⚠️ Unaudited |
| HubTransporter | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1e31fe...83396d`](./contracts/ethereum-1/0x1e31feaa55d9777aa26554c0702e312c8783396d/); ethereum `0x3e3203...0b7d22`; ethereum `0x85ccf5...069bcd`; ethereum `0xba6cf2...9c1c18` | ⚠️ Unaudited |
| HyphenImplL2 | unknown | polygon | n/a | [`0x64107e...5bd218`](./contracts/polygon-137/0x64107eb9dc50e79fb3977b9d6c927f9b9c5bd218/) | ⚠️ Unaudited |
| HyphenImplV2 | unknown | polygon | n/a | [`0x0fd9f1...3c2204`](./contracts/polygon-137/0x0fd9f11b9c54a9f100234eeef9ee7873d73c2204/) | ⚠️ Unaudited |
| L1_HOP_Bridge | operational_periphery | ethereum | n/a | [`0x914f98...be4273`](./contracts/ethereum-1/0x914f986a44acb623a277d6bd17368171fcbe4273/) | ⚠️ Unaudited |
| L1_HopCCTPImplementation | unknown | ethereum | n/a | [`0x7e7746...a45747`](./contracts/ethereum-1/0x7e77461ca2a9d82d26fd5e0da2243bf72ea45747/) | ⚠️ Unaudited |
| L2_HopCCTPImplementation | unknown | arbitrum | n/a | [`0x6504bf...0bf982`](./contracts/arbitrum-42161/0x6504bfcab789c35325ca4329f1f41fac340bf982/) | ⚠️ Unaudited |
| L2CustomGateway | unknown | arbitrum | unit-29069 | [`0x096760...ef5562`](./contracts/arbitrum-42161/0x096760f208390250649e3e8763348e783aef5562/) | ⚠️ Unaudited |
| L2ERC20Gateway | token | arbitrum | unit-29070 | [`0x09e922...351eee`](./contracts/arbitrum-42161/0x09e9222e96e7b4ae2a407b98d48e330053351eee/) | ⚠️ Unaudited |
| L2GatewayRouter | adapter | arbitrum | unit-29072 | [`0x5288c5...84f933`](./contracts/arbitrum-42161/0x5288c571fd7ad117bea99bf60fe0846c4e84f933/) | ⚠️ Unaudited |
| LimitExecutionHook | unknown | polygon | n/a | 7 deployments: polygon [`0x276a2f...7042a1`](./contracts/polygon-137/0x276a2fea2438c6b4df74e00206e59e553a7042a1/); polygon `0x27f4b2...658f64`; polygon `0x283638...d4b6f7`; polygon `0x31dbda...583c86`; polygon `0x3cba64...f9ae02`; polygon `0x635f08...800688`; polygon `0x7b6423...3037e7` | ⚠️ Unaudited |
| LimitHook | unknown | polygon | n/a | 2 deployments: polygon [`0x46333e...cafdad`](./contracts/polygon-137/0x46333edd8a5bb17080457ca57f20d4086ccafdad/); polygon `0xeab499...602572` | ⚠️ Unaudited |
| LineaMessengerWrapper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x29cfb5...465850`](./contracts/ethereum-1/0x29cfb537c004f5852f5a7ded08be1fc3ba465850/); ethereum `0x789ac9...f26d23` | ⚠️ Unaudited |
| Loot3D | unknown | polygon | n/a | 3 deployments: polygon [`0x0be4ea...a3be36`](./contracts/polygon-137/0x0be4ea5dfb43e9bbeac6c2db819c78ce36a3be36/); polygon `0x13a60c...033c03`; polygon `0x798231...47cc6a` | ⚠️ Unaudited |
| LootDAI | unknown | polygon | n/a | 3 deployments: polygon [`0x1bea4f...313740`](./contracts/polygon-137/0x1bea4f9f93f84fd5a68f321e6003a6b16b313740/); polygon `0xd83650...6c2650`; polygon `0xfaee8c...253ecf` | ⚠️ Unaudited |
| LootVault | core_logic | polygon | n/a | 3 deployments: polygon [`0x001dee...72faf7`](./contracts/polygon-137/0x001dee0dcaa5a2ad07fcf132047a0e5f2b72faf7/); polygon `0x93783b...305e3b`; polygon `0xe0061c...d07bcb` | ⚠️ Unaudited |
| MathUtils | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x142a1a...5ed29b`](./contracts/arbitrum-42161/0x142a1a7b0e245750ddd637e77b551d0bff5ed29b/); arbitrum `0x46fc3a...75a8d8`; arbitrum `0x4d7971...926b1b`; arbitrum `0x7a7658...73c4cc`; arbitrum `0x7aa3c5...051dfd`; arbitrum `0x7d269d...44af3f`; arbitrum `0xb9b8e4...e8f30e`; arbitrum `0xbd7288...18d979`; arbitrum `0xdc38c5...fa7ba5` | ⚠️ Unaudited |
| MaticWETH | token | polygon | n/a | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| MerkleRewards | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0xb3c187...e51853`](./contracts/arbitrum-42161/0xb3c18710fe030a75a3a981a1abac0db984e51853/); arbitrum `0xcd1d7a...16aad6` | ⚠️ Unaudited |
| Messenger | unknown | polygon | n/a | 2 deployments: polygon [`0x3f4e3d...53e88b`](./contracts/polygon-137/0x3f4e3dbcf53252a0aab7a566f1f4c9c45a53e88b/); polygon `0xae42cd...d72be6` | ⚠️ Unaudited |
| Multicall2 | periphery | arbitrum | n/a | [`0x842ec2...c54eb2`](./contracts/arbitrum-42161/0x842ec2c7d803033edf55e478f461fc547bc54eb2/) | ⚠️ Unaudited |
| OneInchRefuelSwapImpl | unknown | polygon | n/a | 3 deployments: polygon [`0x4c9fad...9b8fa9`](./contracts/polygon-137/0x4c9fad010d8be90aba505c85eacc483dff9b8fa9/); polygon `0x734079...344f5c`; polygon `0xdcabb6...f2a44b` | ⚠️ Unaudited |
| OneInchSwapImpl | unknown | polygon | n/a | [`0x2ddf16...b41fc0`](./contracts/polygon-137/0x2ddf16ba6d0180e5357d5e170ef1917a01b41fc0/) | ⚠️ Unaudited |
| OpenExecutionManager | governance | polygon | n/a | 2 deployments: polygon [`0x4d6b52...eab169`](./contracts/polygon-137/0x4d6b5213fab9c61ef94edcf1d71042c26aeab169/); polygon `0xdf7f95...81c00e` | ⚠️ Unaudited |
| OptimisticSwitchboard | unknown | polygon | n/a | 5 deployments: polygon [`0x5490ab...881c25`](./contracts/polygon-137/0x5490abcd9949833fb68e4d222ee68dc225881c25/); polygon `0x73f4c9...e0f5a5`; polygon `0x9cf744...aa716c`; polygon `0xbf0572...cbb5d4`; polygon `0xef7c79...6b4372` | ⚠️ Unaudited |
| PolygonL2Switchboard | unknown | polygon | n/a | 5 deployments: polygon [`0x16e4a6...0a4ee8`](./contracts/polygon-137/0x16e4a6af6e81c7997fc784c8e621316e480a4ee8/); polygon `0x2b351e...86fb7b`; polygon `0x72fb18...a1c9d1`; polygon `0xdcef08...5b2cc9`; polygon `0xe42553...d50b61` | ⚠️ Unaudited |
| PolygonMessengerWrapper | unknown | ethereum | n/a | 4 deployments: ethereum [`0x172cab...bf0da3`](./contracts/ethereum-1/0x172cabe34c757472249ad4bd97560373fbbf0da3/); ethereum `0x1cd391...0e4cd6`; ethereum `0x26a1fd...e6c069`; ethereum `0xaa1603...d8b4dc` | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | [`0xd570ac...c22a86`](./contracts/arbitrum-42161/0xd570ace65c43af47101fc6250fd6fc63d1c22a86/) | ⚠️ Unaudited |
| RefuelBridgeImpl | operational_periphery | polygon | n/a | [`0xcc3ef7...d5bd57`](./contracts/polygon-137/0xcc3ef7f9df10a5f177c30becd4aaa33f42d5bd57/) | ⚠️ Unaudited |
| RefuelImpl | unknown | polygon | n/a | 3 deployments: polygon [`0x09217a...13bf2f`](./contracts/polygon-137/0x09217a4a727418a7a9fc60ae07e31c2dfd13bf2f/); polygon `0x19609e...0d97ac`; polygon `0x602029...14ab7f` | ⚠️ Unaudited |
| SignatureVerifier | periphery | polygon | n/a | 5 deployments: polygon [`0x12e1db...8f6760`](./contracts/polygon-137/0x12e1dbca1ec056421365bbdbc9e4bd124c8f6760/); polygon `0x22d836...8d8a99`; polygon `0x2f04a8...73720d`; polygon `0x3e89c0...580dc5`; polygon `0xf302fa...3fae80` | ⚠️ Unaudited |
| SimulatorUtils | unknown | polygon | n/a | [`0x61ce66...65ff34`](./contracts/polygon-137/0x61ce6673b00b2f0281e8b95c6b68c8275865ff34/) | ⚠️ Unaudited |
| Socket | unknown | polygon | n/a | 5 deployments: polygon [`0x8b3613...8d2571`](./contracts/polygon-137/0x8b361319e3157fa01ffa7b8abd202aacf98d2571/); polygon `0x8bc505...04873f`; polygon `0xad0fa5...7d23b3`; polygon `0xc20687...ded001`; polygon `0xfd1256...c7e47f` | ⚠️ Unaudited |
| SocketBatcher | periphery | polygon | n/a | 6 deployments: polygon [`0x1c2ec0...0bd6b7`](./contracts/polygon-137/0x1c2ec03cf08c77d7a4668c045415a8809d0bd6b7/); polygon `0x1d3695...5eaa49`; polygon `0x1edd57...eca934`; polygon `0x657a9b...3702bc`; polygon `0x69adf4...f944d3`; polygon `0x6a3496...b23a4d` | ⚠️ Unaudited |
| StakingRegistry | registry | ethereum | n/a | 3 deployments: ethereum [`0x1dd61d...8cd61e`](./contracts/ethereum-1/0x1dd61d4c51cc0af8aca9a25201e1b4b8fe8cd61e/); ethereum `0xe5cdea...1889cf`; ethereum `0xeb0a86...fc3356` | ⚠️ Unaudited |
| StakingRewards | unknown | arbitrum | n/a | 20 deployments: gnosis `0x3d4cc8...48edd1`; gnosis `0x636a7e...d440a7`; gnosis `0x712f0c...c1c24c`; gnosis `0xbf7a02...ee5a92`; arbitrum [`0x00001f...d727f5`](./contracts/arbitrum-42161/0x00001fcf29c5fd7846e4332afbfaa48701d727f5/); arbitrum `0x28529f...d3be5c`; arbitrum `0x371afc...dc640c`; arbitrum `0x3d4cad...449b32`; arbitrum `0x4e9840...7e1898`; arbitrum `0x64e5a1...c3bb2a`; arbitrum `0x755569...56d3dd`; arbitrum `0x9dd868...6173c8`; arbitrum `0xb0cabf...7ebc70`; arbitrum `0xb520ac...35b5db`; arbitrum `0xb8f90e...cb1f25`; arbitrum `0xbb9d66...015364`; arbitrum `0xd4d285...789d1e`; arbitrum `0xde8b16...120a6d`; arbitrum `0xe29044...8a6d8f`; arbitrum `0xecf268...e1382a` | ⚠️ Unaudited |
| Swap | unknown | arbitrum | n/a | 13 deployments: gnosis `0x24afdc...f6eb24`; gnosis `0x3aa637...b237e7`; gnosis `0x4014dc...d936d8`; gnosis `0x5c3214...24ac26`; gnosis `0xaa30d6...f68864`; arbitrum [`0x0ded0d...3ee7ca`](./contracts/arbitrum-42161/0x0ded0d521ac7b0d312871d18ea4fde79f03ee7ca/); arbitrum `0x10541b...ade261`; arbitrum `0x2a11a9...a35f56`; arbitrum `0x652d27...ac6d97`; arbitrum `0x719106...addf18`; arbitrum `0xa5a33a...7b5742`; arbitrum `0xb87ac0...422fa1`; arbitrum `0xffe42d...3f0b82` | ⚠️ Unaudited |
| SwapUtils | unknown | optimism | unit-29056 | [`0x3c0ffa...795963`](./contracts/optimism-10/0x3c0ffaca566fccfd9cc95139fef6cba143795963/) | ⚠️ Unaudited |
| SwapUtils | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x08706c...cefb3b`](./contracts/arbitrum-42161/0x08706c95f86305fe76e9ea1be7a2474eb5cefb3b/); arbitrum `0x0b913e...c8580d`; arbitrum `0x266e2d...fe6778`; arbitrum `0x3666f6...c5f18a`; arbitrum `0x544062...174971`; arbitrum `0xb1ea9f...ef45c4`; arbitrum `0xb9a9c5...c92ee2`; arbitrum `0xf181ed...b41810` | ⚠️ Unaudited |
| SwitchboardSimulator | unknown | polygon | n/a | [`0xdef0bf...7aa98e`](./contracts/polygon-137/0xdef0bfbdf7530c75ab3c73f8d2f64d9eaa7aa98e/) | ⚠️ Unaudited |
| SyncPlug | unknown | polygon | n/a | [`0xa621bc...b5c181`](./contracts/polygon-137/0xa621bc5a9d13d39eb098865b723ceee71bb5c181/) | ⚠️ Unaudited |
| TransmitManager | governance | polygon | n/a | 5 deployments: polygon [`0x03d0b0...11d528`](./contracts/polygon-137/0x03d0b006c8d97a025b50adc29d8130760a11d528/); polygon `0x49c79e...38fa82`; polygon `0xa989d2...9a7220`; polygon `0xe59562...3a9a5e`; polygon `0xff7011...0dcc81` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | n/a | [`0xe865df...aa2db8`](./contracts/arbitrum-42161/0xe865df68133fced7c2285ff3896b406cafaa2db8/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | 18 deployments: polygon [`0x0735a6...6f0e12`](./contracts/polygon-137/0x0735a62b0b6e837fa67130589988436fd26f0e12/); polygon `0x12aa9d...38621e`; polygon `0x15e22d...fb0269`; polygon `0x1ce2aa...dba776`; polygon `0x422432...804046`; polygon `0x5e81f3...0f1299`; polygon `0x77d58f...86a32e`; polygon `0x8234e1...bcb209`; polygon `0x9b7a8c...efe32e`; polygon `0x9cceed...622c38`; polygon `0xa42544...4aea96`; polygon `0xa48e39...2d180b`; polygon `0xa5b0ef...4a1f8f`; polygon `0xb2223a...fe24d8`; polygon `0xbfbd88...0468f7`; polygon `0xcd7f85...5752a3`; polygon `0xe47efb...c4f718`; polygon `0xea0d65...685586` | ⚠️ Unaudited |
| UChildUSDT0 | token | polygon | unit-29067 | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | arbitrum | n/a | [`0xf68bb2...167ec1`](./contracts/arbitrum-42161/0xf68bb2d1aa914a4c43f00dfbe765bb7dc8167ec1/) | ⚠️ Unaudited |
| ZeroXRefuelImpl | unknown | polygon | n/a | [`0x3694ab...d5f98e`](./contracts/polygon-137/0x3694ab37011764fa64a648c2d5d6ac0e9cd5f98e/) | ⚠️ Unaudited |
| ZeroXSwapImpl | unknown | polygon | n/a | [`0xae3dd4...b25a2d`](./contracts/polygon-137/0xae3dd4c0e3ca6823cdbe9641b1938551ccb25a2d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (204)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x149d25...bfe5e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17cacf...03fbbe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22aabb...688432` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2649c0...6230cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52f454...b9c1ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x536384...9f8e5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57fc14...e78a04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x590075...df5713` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a6587...f096a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98b9bc...6eab8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabdb14...e79d5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0bda0...addfa2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3a6e3...3cb3d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb52299...a07cfb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb88f86...fd9809` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3d6ea...b0a52d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcdd23...3e3a39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8dfb8...9d8d77` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x04196c...83c2a6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x064509...37efa1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0948b1...65195b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0d50d4...96ace1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1156ba...5a4a21` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x137f30...566215` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x16c2d3...2e88df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x18b237...a72a98` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1bb775...885d2f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1d254a...0243a3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x255745...0ec5d6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x301bd2...a1c0a4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x341903...863459` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3bb3b7...f35984` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3e2fbd...88ef57` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x40a1b2...abc1a3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x450aa5...c01ede` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x454bd3...852aac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x48b4f0...9ac2f2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4bf6e4...848375` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4f04f8...220d00` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4f8ecb...b6563f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4fe1ad...d42abd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x525f02...751a53` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x533398...0fdae3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x565810...686339` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x58f616...ed507b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5d19d6...0ddbcf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5df06c...426fb4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5dfdff...92ca1c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5e0193...184b0f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x64b314...50d957` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x66a127...fb3107` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x68eacb...73b68b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6f6cf2...6c97de` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6f921e...c05d26` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x769874...f033f8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x84689f...b5fa28` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x84b649...083ddf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x853730...efff41` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x86a0a4...06ce6b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x880997...894106` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a5b09...7bbf5a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8ac0a7...b6724b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8b57c3...43ff00` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8d422b...6a243b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8fac85...949b6a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9a9567...b45115` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d1701...87de74` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d245f...9545d0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa44376...c9747b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa858f9...7677bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb15f96...bb83fc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb56843...00c12b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb7a6db...f5ddf9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb81de2...849000` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbd79f2...5d54b2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc20fa4...fb35f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc2bd14...bb43e2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc2de37...04c3be` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc31714...14cd61` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc760de...6d7345` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc8e11c...97d4bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xca75ba...7caef2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd21109...ee4429` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd23678...2a05c8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd5087c...228df5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd550ce...d8f77c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd8e11d...50d67c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xde007c...76757f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe4cb6f...1df6e0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xec5b70...1e8c4b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xedc8eb...b9375f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeee628...f6e327` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf004c4...99eabd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf0cb21...843432` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf19516...b77aa6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf5541e...62df9a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf5b588...6ea2fd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf84890...3632af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfa3ff9...4d0150` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xffcbd4...23b4c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x00d337...908b76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x03d7f7...4e3547` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x07b963...235092` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x07c592...71b6ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x09992d...d38e82` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x13b7f5...38d203` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x16284c...c581a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1747af...e32786` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1990bc...42ad73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1a2836...ac7e23` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1b193b...d2e170` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f4075...ada300` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x22b1cb...eb1cc2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x24e0cc...2bfcbb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x25a5a4...0e36ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x29fba7...93dca6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b566c...f0b9c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d51aa...07853f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2e9bb4...524f13` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x30bd2a...941866` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x30de6a...f24042` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x30e344...06f21b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x33fe5b...2c5201` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x370a51...b355f7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x392b97...48b190` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3d4cc8...48edd1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4014dc...d936d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x40580c...c4689d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x40be56...ec4b22` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4285ca...f05b00` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x452bb4...cae246` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4bf636...84eaeb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4f836a...5981aa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50d7d8...46bfe2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x520409...70f041` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x553bc7...eed5e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x636a7e...d440a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6b8b75...e374d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6c9a1a...2b690b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f0305...4eb632` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x70a772...577d1f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x70af36...ec3d45` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x712f0c...c1c24c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x723194...52c001` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x753219...d9934d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x767ac8...633a14` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x76ab35...fe248d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x77b99c...37db51` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7823e8...80f499` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7ac71c...885ccc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7ccdbf...b0839b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x83f624...14b30e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x86ca30...cb3312` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8741ba...57a2b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x884d1a...bfcbe3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8b3708...c7a019` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8d4063...69bede` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x92d726...cb4fb2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x95d6a9...a8d697` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9c986a...42331c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9e037b...c03839` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f93ac...13f763` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa9a4ed...adce67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa9aa42...bd44e9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa30d6...f68864` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac9bab...c6ae2a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xacf6eb...dca22f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaeb1b4...7b3e0b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb01db0...9575e5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb07c65...817cfb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb143f7...fe02b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb1fc1a...1b8ab4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2f7d2...aadc81` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8901a...19727f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbf7a02...ee5a92` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc2464b...46626a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc46f20...7dfd1c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc5add5...aa4f8e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc2467...ce6741` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd281c4...8550b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd2fa52...ff700d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd704f7...cd9d3e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd7d522...4efadb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd8926c...af491b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdb16fb...4f3d85` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe05cd3...b87ea6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe13a2d...930ba3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe38faf...2c5156` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe62190...5a41f7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7c1d0...8c57b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7e09a...83716d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xea4f19...e761c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeb4fa0...326284` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed2520...d54205` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf11ebb...3b33ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf2a1c5...c51d7e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf587b9...89e93a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf63f1b...9137e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf6f462...1cee55` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf7a67c...b97f24` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf86c14...7aba3c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf8ef31...d3193c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfd7b81...bf6a88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfe789d...0082ec` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [* [Solidified Report (PDF)]()](https://s3.us-west-1.amazonaws.com/assets.hop.exchange/reports/Audit_Report_-_Hop_05.05.2021.pdf) | Solidified | Audit | 2021-05 | stale | Direct | contract_name | 48 | high |
| [* [MonocerosAlpha (PDF)]()](https://s3.us-west-1.amazonaws.com/assets.hop.exchange/reports/MonocerosAlpha_-_Hop_Audit.pdf) | MonocerosAlpha | Audit | 2021-04 | stale | Direct | contract_name | 61 | high |
| [Moreover, Hop has undergone audits by [Solidified]() and [Monoceros Alpha](https://github.com/hop-protocol/contracts/blob/cf9f2765f2cfe8b51e3f4c54f3d451a2300ce379/audits/042021_MonocerosAlpha.pdf). A third audit by Trail of Bits is planned for September.\](https://github.com/hop-protocol/contracts/blob/cf9f2765f2cfe8b51e3f4c54f3d451a2300ce379/audits/052021_Solidified.pdf) | Trail of Bits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Moreover, Hop has undergone audits by [Solidified](https://github.com/hop-protocol/contracts/blob/cf9f2765f2cfe8b51e3f4c54f3d451a2300ce379/audits/052021_Solidified.pdf) and [Monoceros Alpha](). A third audit by Trail of Bits is planned for September.\](https://github.com/hop-protocol/contracts/blob/cf9f2765f2cfe8b51e3f4c54f3d451a2300ce379/audits/042021_MonocerosAlpha.pdf) | Trail of Bits | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| gnosis | [`0xddafbb...fb7a83`](./contracts/gnosis-100/0xddafbb505ad214d7b80b1f830fccc89b60fb7a83/) | PermittableToken | token | $16,769,318.63 | Verified native implementation with $16,769,318.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2e17b8...d2d5a8`](./contracts/optimism-10/0x2e17b8193566345a2dd467183526dedc42d2d5a8/) | LPToken | token | $487,469.01 | Verified native implementation with $487,469.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x082526...1acee9`](./contracts/polygon-137/0x0825266f72e8841d7fea350b20dd65aa861acee9/) | Vault | core_logic | $704.99 | Verified native implementation with $704.99 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86ed3b...d3d1ae`](./contracts/ethereum-1/0x86ed3b8ad6b721fd3a2fa73c227987fb9ad3d1ae/) | BaseMessengerWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x915580...c02a2d`](./contracts/polygon-137/0x915580973cdd42cb5c4320a54408702ffdc02a2d/) | CapacitorFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd4888f...25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ChildMintableERC721 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x44ebf1...e08cc2`](./contracts/polygon-137/0x44ebf1a711082e6373fb142ecfcb469cffe08cc2/) | CommonPlug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0c105e...919730`](./contracts/polygon-137/0x0c105e72eb2dbd12b4023e628c2bc90a8b919730/) | ConnectorPlug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe24007...73ddd1`](./contracts/polygon-137/0xe24007ea3fac1ec3fb580d40658600e31c73ddd1/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0eaf03...71fe74`](./contracts/polygon-137/0x0eaf03567a21e32e0ce27f329b7d0e82a971fe74/) | Counter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ede3d...f6a1f6`](./contracts/ethereum-1/0x2ede3d89877d0015a44f5c927890c95f2ef6a1f6/) | Dispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2b81e5...da9e8d`](./contracts/polygon-137/0x2b81e5f8f43d2b4cbc1840764c7784808fda9e8d/) | ExecutionHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x289d13...8fb926`](./contracts/polygon-137/0x289d13adee0b7c1128b45825bdd1e5eb648fb926/) | ExecutionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbd8c3...0ef3c3`](./contracts/ethereum-1/0xcbd8c34759706545b0f3092ee4399831080ef3c3/) | Executor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x33918b...7ba445`](./contracts/polygon-137/0x33918bbf9f5269d90b8c0abf1fd1134c827ba445/) | FastSwitchboard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x430738...ef9fff`](./contracts/ethereum-1/0x430738595230271764a21c5336ef975deeef9fff/) | FeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb0e7fd...019d2e`](./contracts/polygon-137/0xb0e7fdb68d67bf8dd753b562c793185a7e019d2e/) | GasPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0bcbb8...368ddf`](./contracts/polygon-137/0x0bcbb836b66ad7d0f21f0176f439e71492368ddf/) | Hasher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x030274...dcb2a9`](./contracts/polygon-137/0x03027410f25c527d5aeb3e6e56a6389611dcb2a9/) | HopImplL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e31fe...83396d`](./contracts/ethereum-1/0x1e31feaa55d9777aa26554c0702e312c8783396d/) | HubTransporter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x64107e...5bd218`](./contracts/polygon-137/0x64107eb9dc50e79fb3977b9d6c927f9b9c5bd218/) | HyphenImplL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x914f98...be4273`](./contracts/ethereum-1/0x914f986a44acb623a277d6bd17368171fcbe4273/) | L1_HOP_Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e7746...a45747`](./contracts/ethereum-1/0x7e77461ca2a9d82d26fd5e0da2243bf72ea45747/) | L1_HopCCTPImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6504bf...0bf982`](./contracts/arbitrum-42161/0x6504bfcab789c35325ca4329f1f41fac340bf982/) | L2_HopCCTPImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x276a2f...7042a1`](./contracts/polygon-137/0x276a2fea2438c6b4df74e00206e59e553a7042a1/) | LimitExecutionHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x46333e...cafdad`](./contracts/polygon-137/0x46333edd8a5bb17080457ca57f20d4086ccafdad/) | LimitHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29cfb5...465850`](./contracts/ethereum-1/0x29cfb537c004f5852f5a7ded08be1fc3ba465850/) | LineaMessengerWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0be4ea...a3be36`](./contracts/polygon-137/0x0be4ea5dfb43e9bbeac6c2db819c78ce36a3be36/) | Loot3D | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x001dee...72faf7`](./contracts/polygon-137/0x001dee0dcaa5a2ad07fcf132047a0e5f2b72faf7/) | LootVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x142a1a...5ed29b`](./contracts/arbitrum-42161/0x142a1a7b0e245750ddd637e77b551d0bff5ed29b/) | MathUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb3c187...e51853`](./contracts/arbitrum-42161/0xb3c18710fe030a75a3a981a1abac0db984e51853/) | MerkleRewards | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3f4e3d...53e88b`](./contracts/polygon-137/0x3f4e3dbcf53252a0aab7a566f1f4c9c45a53e88b/) | Messenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4d6b52...eab169`](./contracts/polygon-137/0x4d6b5213fab9c61ef94edcf1d71042c26aeab169/) | OpenExecutionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5490ab...881c25`](./contracts/polygon-137/0x5490abcd9949833fb68e4d222ee68dc225881c25/) | OptimisticSwitchboard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x16e4a6...0a4ee8`](./contracts/polygon-137/0x16e4a6af6e81c7997fc784c8e621316e480a4ee8/) | PolygonL2Switchboard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x172cab...bf0da3`](./contracts/ethereum-1/0x172cabe34c757472249ad4bd97560373fbbf0da3/) | PolygonMessengerWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xcc3ef7...d5bd57`](./contracts/polygon-137/0xcc3ef7f9df10a5f177c30becd4aaa33f42d5bd57/) | RefuelBridgeImpl | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x09217a...13bf2f`](./contracts/polygon-137/0x09217a4a727418a7a9fc60ae07e31c2dfd13bf2f/) | RefuelImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x12e1db...8f6760`](./contracts/polygon-137/0x12e1dbca1ec056421365bbdbc9e4bd124c8f6760/) | SignatureVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x61ce66...65ff34`](./contracts/polygon-137/0x61ce6673b00b2f0281e8b95c6b68c8275865ff34/) | SimulatorUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8b3613...8d2571`](./contracts/polygon-137/0x8b361319e3157fa01ffa7b8abd202aacf98d2571/) | Socket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1c2ec0...0bd6b7`](./contracts/polygon-137/0x1c2ec03cf08c77d7a4668c045415a8809d0bd6b7/) | SocketBatcher | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1dd61d...8cd61e`](./contracts/ethereum-1/0x1dd61d4c51cc0af8aca9a25201e1b4b8fe8cd61e/) | StakingRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00001f...d727f5`](./contracts/arbitrum-42161/0x00001fcf29c5fd7846e4332afbfaa48701d727f5/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0ded0d...3ee7ca`](./contracts/arbitrum-42161/0x0ded0d521ac7b0d312871d18ea4fde79f03ee7ca/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3c0ffa...795963`](./contracts/optimism-10/0x3c0ffaca566fccfd9cc95139fef6cba143795963/) | SwapUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x08706c...cefb3b`](./contracts/arbitrum-42161/0x08706c95f86305fe76e9ea1be7a2474eb5cefb3b/) | SwapUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xdef0bf...7aa98e`](./contracts/polygon-137/0xdef0bfbdf7530c75ab3c73f8d2f64d9eaa7aa98e/) | SwitchboardSimulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa621bc...b5c181`](./contracts/polygon-137/0xa621bc5a9d13d39eb098865b723ceee71bb5c181/) | SyncPlug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x03d0b0...11d528`](./contracts/polygon-137/0x03d0b006c8d97a025b50adc29d8130760a11d528/) | TransmitManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 123 |
| upstream | 17 |
| standard_library | 11 |
| needs_review | 146 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=303

Zero-match audit list:

- [11916] Moreover, Hop has undergone audits by [Solidified]() and [Monoceros Alpha](https://github.com/hop-protocol/contracts/blob/cf9f2765f2cfe8b51e3f4c54f3d451a2300ce379/audits/042021_MonocerosAlpha.pdf). A third audit by Trail of Bits is planned for September.\
- [11917] Moreover, Hop has undergone audits by [Solidified](https://github.com/hop-protocol/contracts/blob/cf9f2765f2cfe8b51e3f4c54f3d451a2300ce379/audits/052021_Solidified.pdf) and [Monoceros Alpha](). A third audit by Trail of Bits is planned for September.\

Fork inheritance lineage and inherited audits are included when available.
