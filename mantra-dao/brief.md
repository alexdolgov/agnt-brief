# Agentic Audit Brief: MANTRA DAO

⚠️ Lifecycle status: DECLINING - TVL changed 16.5% over 90 days

## Project Overview

- Project: MANTRA DAO (`mantra-dao`)
- Website: [https://mantrachain.io/](https://mantrachain.io/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:45.401Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc, ethereum, polygon
- Contract surface: 149 unique implementations (274 raw deployments)
- DeFi Llama TVL: $1,597,243.01
- On-chain TVL (included contracts): $279,008,003.21
- TVL by chain: Ethereum $278,588,790.55 | Polygon $402,792.13 | Bsc $16,420.53

## Project Description

The current MANTRA website markets MANTRA Chain as an EVM-compatible Layer 1 blockchain focused on real-world assets and regulatory compliance. The DefiLlama `mantra-dao` entry, however, tracks legacy MANTRA DAO lending, staking, and pool2 activity. Any audit or TVL brief should distinguish the current MANTRA Chain identity from the older MANTRA DAO DeFi surface and should not treat unrelated infrastructure or upstream protocol deployments as MANTRA-owned contracts.

### Architecture

The protocol's families share infrastructure through common token standards (e.g., OMTokenV2, ArcxTokenV2) and proxy patterns (TransparentUpgradeableProxy, Unitroller). Staking pools often interact with synthetic tokens and liquidity pairs, while cross-chain bridges rely on upgradeable proxies for token collateral management.

## Contract Surface Quality

- Indexed contracts: 506; live-surface contracts included: 274 (161 live, 113 unknown).
- Excluded by liveness: 176 inactive, 56 singleton, 0 uninitialized.
- Deployment units: 1/29 live.
- Detected codebases: compound-v2, uniswap-v2
- Unverified dependencies: 3/24.

## Audit Coverage Summary

- Verified implementations audited: 0/54 (0.0%)
- Verified + Unaudited implementations: 53
- Verified by bytecode match: 1
- Unverified implementations: 95
- Unique implementations: 149
- Raw deployments: 274
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $279,008,003.21
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $279,008,003.21 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (53)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakingPool | core_logic | ethereum | n/a | 15 deployments: ethereum [`0x04493f...f0c63b`](./contracts/ethereum-1/0x04493f715b08dea8af77814d600bef22f1f0c63b/); ethereum `0x1dfdb0...fc8633`; ethereum `0x1ea973...8d2cb7`; ethereum `0x6ae05b...b3774b`; ethereum `0x6bcdc6...8571a0`; ethereum `0x9e15ad...feba93`; ethereum `0xa01892...bc9802`; ethereum `0xdbc34d...7b9349`; bsc `0x41a32c...853153`; bsc `0xefc2d6...2c3c91`; bsc `0xf01855...7157a9`; polygon `0x427756...dbf1f8`; polygon `0xcdd0f7...1d6ea6`; polygon `0xd1ecdc...14416e`; polygon `0xd77f49...e34c83` | ⚠️ Unaudited |
| OMTokenV2 | token | ethereum | n/a | [`0x3593d1...60c95d`](./contracts/ethereum-1/0x3593d125a4f7849a1b059e64f4517a86dd60c95d/) | ⚠️ Unaudited |
| RFuelToken | token | ethereum | n/a | [`0xaf9f54...3f36e5`](./contracts/ethereum-1/0xaf9f549774ecedbd0966c52f250acc548d3f36e5/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | unit-27540 | [`0xc3ec80...e114ea`](./contracts/polygon-137/0xc3ec80343d2bae2f8e680fdadde7c17e71e114ea/) | ⚠️ Unaudited |
| GameStationToken | token | polygon | n/a | [`0x3f6b35...db3f47`](./contracts/polygon-137/0x3f6b3595ecf70735d3f48d69b09c4e4506db3f47/) | ⚠️ Unaudited |
| StakingPoolsMigrator | core_logic | ethereum | n/a | [`0x81d387...383a5b`](./contracts/ethereum-1/0x81d387219627833452f3d615a76b2eaa71383a5b/) | ⚠️ Unaudited |
| RoyaleToken | token | ethereum | n/a | [`0x7eaf9c...4548db`](./contracts/ethereum-1/0x7eaf9c89037e4814dc0d9952ac7f888c784548db/) | ⚠️ Unaudited |
| CErc20Immutable | token | ethereum | n/a | 5 deployments: ethereum [`0x0968c9...2aa9fc`](./contracts/ethereum-1/0x0968c90198f08b67365840fa37631b29fe2aa9fc/); ethereum `0x11c70c...d64a99`; polygon `0x6929e9...2a919f`; polygon `0xd3f354...bcebf2`; polygon `0xf533c7...6ed4f0` | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x3012e9...bb85cb`](./contracts/ethereum-1/0x3012e9049d05b4b5369d690114d5a5861ebb85cb/); polygon `0x7779c2...ce12e8` | ⚠️ Unaudited |
| AlgebraCommunityVault | core_logic | polygon | n/a | 2 deployments: ethereum `0x8c97d1...cfe442`; polygon [`0x5da344...dbc6f9`](./contracts/polygon-137/0x5da34437a38da232094f9a17dd5c5eef92dbc6f9/) | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | polygon | n/a | 2 deployments: ethereum `0x83d4a9...f93e7c`; polygon [`0x18a3dc...ad5007`](./contracts/polygon-137/0x18a3dcf6d9383486ea7b0fa5c336369aeead5007/) | ⚠️ Unaudited |
| AlgebraFactory | registry | ethereum | n/a | 7 deployments: ethereum [`0x3b2209...4c066d`](./contracts/ethereum-1/0x3b22094a64d3d6801a27db4e58ac0b859a4c066d/); ethereum `0x95e325...5e0b0f`; ethereum `0xd265f5...c246a7`; polygon `0x744c31...152184`; polygon `0xa0d888...05fd6c`; polygon `0xb496aa...9d587f`; polygon `0xe1f7f3...c77f3b` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | ethereum | n/a | 2 deployments: ethereum [`0x38a5c3...7ce047`](./contracts/ethereum-1/0x38a5c36fa8c8c9e4649b51fcd61810b14e7ce047/); polygon `0xa19b72...ce1794` | ⚠️ Unaudited |
| AlgebraLimitOrderPluginFactory | registry | polygon | n/a | [`0x36249b...0bbf33`](./contracts/polygon-137/0x36249b67938ab840197321ac609b92867b0bbf33/) | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | polygon | n/a | 11 deployments: ethereum `0xfe3bec...0a88b2`; polygon [`0x2682cd...c76cad`](./contracts/polygon-137/0x2682cd4cc7c8b8b13bb31e4e3861649363c76cad/); polygon `0x2ab74d...dcac1f`; polygon `0x431fb6...150303`; polygon `0x6ce8e0...f5ecb9`; polygon `0x7a6b92...771421`; polygon `0x7e7dca...860604`; polygon `0xa2f3c4...5fd250`; polygon `0xdf4a44...051d05`; polygon `0xefdf67...f7a54c`; polygon `0xfd7cfc...2e2326` | ⚠️ Unaudited |
| AlgebraUpgradeablePlugin | unknown | ethereum | n/a | [`0xaaa81d...57931d`](./contracts/ethereum-1/0xaaa81db3cb943c20b032d16d9cbf471a3757931d/) | ⚠️ Unaudited |
| AlgebraVaultFactoryStub | registry | polygon | n/a | [`0x955259...c9241f`](./contracts/polygon-137/0x9552594ac707941e7ecf474eabcc018770c9241f/) | ⚠️ Unaudited |
| AlmPluginImplementation | unknown | ethereum | n/a | [`0x37a495...0e70e7`](./contracts/ethereum-1/0x37a4950b4ea0c46596404895c5027b088b0e70e7/) | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | polygon | n/a | [`0x89d065...eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | ⚠️ Unaudited |
| CErc20 | token | polygon | n/a | [`0x5a55c7...cce8e4`](./contracts/polygon-137/0x5a55c731b73b325f7df53a013529267f79cce8e4/) | ⚠️ Unaudited |
| DynamicFeePluginImplementation | unknown | ethereum | n/a | [`0xf2a0bc...c78018`](./contracts/ethereum-1/0xf2a0bc44debd394076c67962bb4869fd43c78018/) | ⚠️ Unaudited |
| EntryPoint | unknown | polygon | n/a | 3 deployments: ethereum `0x5ff137...6d2789`; polygon [`0x000000...7da032`](./contracts/polygon-137/0x0000000071727de22e5e9d8baf0edac6f37da032/); polygon `0x5ff137...6d2789` | ⚠️ Unaudited |
| ERC1820Registry | registry | polygon | n/a | [`0x1820a4...5fad24`](./contracts/polygon-137/0x1820a4b7618bde71dce8cdc73aab6c95905fad24/) | ⚠️ Unaudited |
| FarmingCenter | unknown | polygon | n/a | 2 deployments: ethereum `0xec250e...79f418`; polygon [`0x4ccfc3...4400e1`](./contracts/polygon-137/0x4ccfc37c06f99ef96bba3d04d798ef5ca44400e1/) | ⚠️ Unaudited |
| FarmingProxyPluginImplementation | unknown | ethereum | n/a | [`0x49a390...87d228`](./contracts/ethereum-1/0x49a390a3dfd2d01389f799965f3af5961f87d228/) | ⚠️ Unaudited |
| FeeDiscountRegistry | registry | polygon | n/a | [`0x23fa6e...2e6e83`](./contracts/polygon-137/0x23fa6ed4d1c6c14dafc1217700a4d5b6f42e6e83/) | ⚠️ Unaudited |
| FixedSwap | unknown | ethereum | n/a | [`0x81de9b...28a899`](./contracts/ethereum-1/0x81de9be5dcb080db6e8fc6ff76836959c228a899/) | ⚠️ Unaudited |
| HypERC20Collateral | token | ethereum | n/a | 3 deployments: ethereum [`0x7d0497...30f398`](./contracts/ethereum-1/0x7d0497a61590f3e83bab465008ac69e94730f398/); ethereum `0x9e57a6...dc67ec`; ethereum `0xec0343...37190e` | ⚠️ Unaudited |
| Issuance | unknown | polygon | n/a | [`0xe80415...dc3db7`](./contracts/polygon-137/0xe8041548c62aad4c55e36b8ec83fc26f28dc3db7/) | ⚠️ Unaudited |
| JumpRateModel | operational_periphery | polygon | n/a | 2 deployments: polygon [`0x0968c9...2aa9fc`](./contracts/polygon-137/0x0968c90198f08b67365840fa37631b29fe2aa9fc/); polygon `0x398a5f...64c471` | ⚠️ Unaudited |
| LimitOrderManager | governance | polygon | n/a | [`0x94dbc4...465900`](./contracts/polygon-137/0x94dbc4e017415885e65e45ac984a62cb87465900/) | ⚠️ Unaudited |
| LinearFee | unknown | ethereum | n/a | 31 deployments: ethereum [`0x067158...c3588e`](./contracts/ethereum-1/0x067158586f6469f5269a74337b4c8e27e7c3588e/); ethereum `0x08dba9...1005d1`; ethereum `0x142d07...ca5d57`; ethereum `0x1b4662...a7926e`; ethereum `0x33cb68...d01c4e`; ethereum `0x427ff0...594946`; ethereum `0x4ad70e...5fd61f`; ethereum `0x5d2d3d...34bbd9`; ethereum `0x5dd40f...ec7dd3`; ethereum `0x5e6109...125e1e`; ethereum `0x6283be...3c7e56`; ethereum `0x68844b...0be6b1`; ethereum `0x76219d...f1937e`; ethereum `0x79fb65...23e851`; ethereum `0x7fc17a...61c33f`; ethereum `0x83523e...b82795`; ethereum `0x8cc02c...c82c74`; ethereum `0x9a9da7...b19102`; ethereum `0xa4a7e4...203ef3`; ethereum `0xabf172...282a6d`; ethereum `0xb1aeed...3551a1`; ethereum `0xb1d38f...96b385`; ethereum `0xb312b5...629805`; ethereum `0xbed93a...f5be0b`; ethereum `0xd4590c...f15c0e`; ethereum `0xdd81a6...252f64`; ethereum `0xdffb32...8d6c6f`; ethereum `0xe62a82...50d5ed`; ethereum `0xf5c404...47c9ba`; ethereum `0xf7333d...2236db`; ethereum `0xfd0654...451c75` | ⚠️ Unaudited |
| MevxPluginImplementation | unknown | polygon | n/a | 3 deployments: polygon [`0x14cf44...bd3ee6`](./contracts/polygon-137/0x14cf4464bfd5638b1e0ddabb51fc85198ebd3ee6/); polygon `0x480b4b...144d68`; polygon `0x9d6118...54f0e7` | ⚠️ Unaudited |
| Multicall3 | periphery | ethereum | n/a | 2 deployments: ethereum [`0xca11bd...76ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/); polygon [`0xca11bd...76ca11`](./contracts/polygon-137/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | ethereum | n/a | 3 deployments: ethereum [`0x28ded2...abe449`](./contracts/ethereum-1/0x28ded2af752655df5ee92450dc259f92a5abe449/); polygon `0x6cd7dc...2c1cba`; polygon `0x7f71e9...fe6fb3` | ⚠️ Unaudited |
| OMV1ToV2Migrator | periphery | ethereum | n/a | [`0xe4ff95...e4b723`](./contracts/ethereum-1/0xe4ff95557f9aba07507ac0851a54c1244be4b723/) | ⚠️ Unaudited |
| Permit2 | unknown | polygon | n/a | [`0x000000...c78ba3`](./contracts/polygon-137/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| PrimeDeployable | unknown | ethereum | n/a | [`0xdef1da...23116d`](./contracts/ethereum-1/0xdef1da03061ddd2a5ef6c59220c135dec623116d/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 19 deployments: ethereum [`0x0f460a...a286a7`](./contracts/ethereum-1/0x0f460a2b3e8ba1cc4d33e47f207ea03b37a286a7/); ethereum `0x2477d8...7ff6cc`; ethereum `0x3e9ca1...76f6d2`; ethereum `0x3faded...6d4ec7`; ethereum `0x45b83e...8db39b`; ethereum `0x60b958...6e791e`; ethereum `0xa85efb...1bcba7`; ethereum `0xaf6a1b...727cf3`; ethereum `0xb76d05...54820e`; ethereum `0xbb0eac...f7203a`; ethereum `0xbb94ef...1adf90`; ethereum `0xc52224...542621`; ethereum `0xd4647e...e64f92`; ethereum `0xdd7399...71881a`; ethereum `0xde87f1...fde499`; ethereum `0xea5b50...9e1b09`; ethereum `0xebb2ac...e397cc`; ethereum `0xed191b...b3a330`; ethereum `0xeefbdd...55c532` | ⚠️ Unaudited |
| Quoter | periphery | ethereum | n/a | 3 deployments: ethereum [`0x69d57b...55cc2f`](./contracts/ethereum-1/0x69d57b9d705ead73a5d2f2476c30c55bd755cc2f/); polygon `0x8a5164...ea22fd`; polygon `0xed24dc...068f4e` | ⚠️ Unaudited |
| QuoterV2 | periphery | polygon | n/a | 2 deployments: ethereum `0xb4f9b6...2ee2a1`; polygon [`0x11a1e7...7447f4`](./contracts/polygon-137/0x11a1e71148532ba5e4ef9724513b545cf57447f4/) | ⚠️ Unaudited |
| RoutingFee | unknown | ethereum | n/a | 9 deployments: ethereum [`0x12f965...213c11`](./contracts/ethereum-1/0x12f96537ca46b2e73e1f628e1753f69ae1213c11/); ethereum `0x219743...f33d15`; ethereum `0x3345f7...24b668`; ethereum `0x5e7a31...21c9c5`; ethereum `0x6bbee1...3a149c`; ethereum `0x776d48...b87394`; ethereum `0x815f0b...455b10`; ethereum `0x81c075...e33304`; ethereum `0xb9d581...d8d2f7` | ⚠️ Unaudited |
| RoyaleLP | unknown | ethereum | n/a | [`0xfdc4ca...71172c`](./contracts/ethereum-1/0xfdc4ca4f70c59d3cd306beb3ecd83b1d1c71172c/) | ⚠️ Unaudited |
| SecurityPluginImplementation | unknown | ethereum | n/a | [`0x1b3b62...bb6f11`](./contracts/ethereum-1/0x1b3b62b519a60e8927d4ffbb54681871e1bb6f11/) | ⚠️ Unaudited |
| SecurityRegistry | registry | ethereum | n/a | 3 deployments: ethereum [`0x7b4553...da15bd`](./contracts/ethereum-1/0x7b4553a35d3020064cb464a8d75a4735ffda15bd/); ethereum `0xe94de0...c09bc7`; polygon `0x827da8...1d25df` | ⚠️ Unaudited |
| SingletonFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0xce0042...fdcf9f`](./contracts/ethereum-1/0xce0042b868300000d44a59004da54a005ffdcf9f/); polygon [`0xce0042...fdcf9f`](./contracts/polygon-137/0xce0042b868300000d44a59004da54a005ffdcf9f/) | ⚠️ Unaudited |
| SwapRouter | adapter | ethereum | n/a | 3 deployments: ethereum [`0x50fcbf...5d27ba`](./contracts/ethereum-1/0x50fcbf85d23af7c91f94842fecd83d16665d27ba/); ethereum `0x888b03...ea39ed`; polygon `0xf36250...d9bed0` | ⚠️ Unaudited |
| TickLens | periphery | polygon | n/a | 6 deployments: ethereum `0x6ad6a4...f8bf5f`; polygon [`0x32e3f4...e1ecf3`](./contracts/polygon-137/0x32e3f485696b2c6dbbc5c83a5cb803af72e1ecf3/); polygon `0x3b2209...4c066d`; polygon `0x4b194d...a69aa3`; polygon `0xa278e7...07b2f9`; polygon `0xd9a0ff...9d78ae` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | polygon | n/a | [`0x13fce0...d31415`](./contracts/polygon-137/0x13fce0acbe6fb11641ab753212550574cad31415/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | n/a | 2 deployments: polygon [`0x1df661...fdee1c`](./contracts/polygon-137/0x1df661fc4319415a2f990bd5f49d5ca70efdee1c/); polygon `0xff2bbc...ae1038` | ⚠️ Unaudited |
| V3Migrator | periphery | polygon | n/a | [`0x510f22...6979a5`](./contracts/polygon-137/0x510f22c161387473de5e82cb882312facf6979a5/) | ⚠️ Unaudited |
| VolatilityOraclePluginImplementation | operational_periphery | ethereum | n/a | [`0x5aefba...ca6467`](./contracts/ethereum-1/0x5aefba317baba46eaf98fd6f381d07673bca6467/) | ⚠️ Unaudited |
| ZenterestPriceFeed | operational_periphery | polygon | n/a | [`0xe2d496...0677b6`](./contracts/polygon-137/0xe2d496ca2a350f431cf0fe6c705b83c2f30677b6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UniStakingSyntheticToken | unknown | polygon | n/a | 7 deployments: ethereum `0x9fd386...f244f9`; bsc `0xcbf42a...26014d`; bsc `0xf25897...73805b`; polygon [`0x55e1ff...adb14c`](./contracts/polygon-137/0x55e1ff581d11c38df5df9ffdcc02b28d99adb14c/); polygon `0x92fce8...c39356`; polygon `0xc552de...7f9d5f`; polygon `0xf02972...5448bc` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (95)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x161c88...245705` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2746b1...4a7bd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x453627...37988a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a3bc4...d8f2b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x520341...a39ac6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x658e28...2de37d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x672bb0...0eb941` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x914d7f...5643d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5a82d...1d178a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5d5ee...dfe279` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9866f...5032c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd98f5a...c3822d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0105fa...773c4c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x03f8b4...d91f1a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x04acde...d60894` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x076c20...b9d2e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0bface...41424b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x145085...8dd9df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x15fcbf...ea7327` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1c4cbb...082691` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1fdf2a...1734d1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x200302...25efed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2066c6...ede6e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2650e9...2f9d7a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x26984e...585c25` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2713ab...bf2601` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2848ad...1aaf22` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2da0f9...443b39` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2e638a...758e3e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3012e9...bb85cb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3aa96e...8326ba` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3fb466...eaa89b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x459630...0c6cc9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x493ec6...0256fb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4a3bc4...d8f2b7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4ce4f6...9d1f75` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4f0129...6219b8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x520341...a39ac6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x53bc7c...7fa527` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x59a662...57d6b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5cd40c...628f6c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5ced17...27f6df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6207dc...31b564` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x652071...e38f99` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6b1e8f...89c566` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7064c7...f5374c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x731d17...8d9b25` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x73c9a2...5e5761` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7d53cc...833c1b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x805488...48ec6a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x840cd8...e84e6a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x84d292...adf27a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8895e4...a7bf7b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8ad26d...d9a056` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8c97d1...cfe442` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8fff64...524b81` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x914d7f...5643d7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x92fbc1...7de791` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9713d2...99d4ad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9901de...f7ee70` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x998756...df91fa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9af039...8b1341` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9cb57c...b127a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9e7109...07ea58` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9f9a94...4ae601` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa35659...e5c5f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa77ad9...6aba17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa9bf30...8eb973` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaab914...a597a1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb1fb5a...9da387` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb57366...e429b5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5a82d...1d178a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbf4eeb...19121a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbfc4ec...a58490` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc1c253...ef13a0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc45e0e...b3e07d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc63e96...03ab86` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc85452...1ac42a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xceeaff...bb7af9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd0f5d2...3300df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd265f5...c246a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd37126...42cc04` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd5d5ee...dfe279` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd9866f...5032c5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe0e840...b1b1af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe1909b...1011e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe90946...74f2e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xec84f8...9bec02` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf494e4...e5f1d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfab49a...077ed3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfae85a...9eb6ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfbe801...4a870b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfe3bec...0a88b2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://www.slowmist.com/en/security-audit-certificate.html?id=1193264f67af7c2bb840306b82eff6218471cf4fbed79a7d48d6a01a93030e35) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x04493f...f0c63b`](./contracts/ethereum-1/0x04493f715b08dea8af77814d600bef22f1f0c63b/) | StakingPool | core_logic | $218,852,378.34 | Verified native implementation with $218,852,378.34 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3593d1...60c95d`](./contracts/ethereum-1/0x3593d125a4f7849a1b059e64f4517a86dd60c95d/) | OMTokenV2 | token | $59,396,154.75 | Verified native implementation with $59,396,154.75 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf9f54...3f36e5`](./contracts/ethereum-1/0xaf9f549774ecedbd0966c52f250acc548d3f36e5/) | RFuelToken | token | $252,769.87 | Verified native implementation with $252,769.87 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3f6b35...db3f47`](./contracts/polygon-137/0x3f6b3595ecf70735d3f48d69b09c4e4506db3f47/) | GameStationToken | token | $173,296.00 | Verified native implementation with $173,296.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81d387...383a5b`](./contracts/ethereum-1/0x81d387219627833452f3d615a76b2eaa71383a5b/) | StakingPoolsMigrator | core_logic | $40,230.68 | Verified native implementation with $40,230.68 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7eaf9c...4548db`](./contracts/ethereum-1/0x7eaf9c89037e4814dc0d9952ac7f888c784548db/) | RoyaleToken | token | $39,864.96 | Verified native implementation with $39,864.96 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x36249b...0bbf33`](./contracts/polygon-137/0x36249b67938ab840197321ac609b92867b0bbf33/) | AlgebraLimitOrderPluginFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37a495...0e70e7`](./contracts/ethereum-1/0x37a4950b4ea0c46596404895c5027b088b0e70e7/) | AlmPluginImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49a390...87d228`](./contracts/ethereum-1/0x49a390a3dfd2d01389f799965f3af5961f87d228/) | FarmingProxyPluginImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x23fa6e...2e6e83`](./contracts/polygon-137/0x23fa6ed4d1c6c14dafc1217700a4d5b6f42e6e83/) | FeeDiscountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81de9b...28a899`](./contracts/ethereum-1/0x81de9be5dcb080db6e8fc6ff76836959c228a899/) | FixedSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe80415...dc3db7`](./contracts/polygon-137/0xe8041548c62aad4c55e36b8ec83fc26f28dc3db7/) | Issuance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x94dbc4...465900`](./contracts/polygon-137/0x94dbc4e017415885e65e45ac984a62cb87465900/) | LimitOrderManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe4ff95...e4b723`](./contracts/ethereum-1/0xe4ff95557f9aba07507ac0851a54c1244be4b723/) | OMV1ToV2Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfdc4ca...71172c`](./contracts/ethereum-1/0xfdc4ca4f70c59d3cd306beb3ecd83b1d1c71172c/) | RoyaleLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b3b62...bb6f11`](./contracts/ethereum-1/0x1b3b62b519a60e8927d4ffbb54681871e1bb6f11/) | SecurityPluginImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b4553...da15bd`](./contracts/ethereum-1/0x7b4553a35d3020064cb464a8d75a4735ffda15bd/) | SecurityRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5aefba...ca6467`](./contracts/ethereum-1/0x5aefba317baba46eaf98fd6f381d07673bca6467/) | VolatilityOraclePluginImplementation | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe2d496...0677b6`](./contracts/polygon-137/0xe2d496ca2a350f431cf0fe6c705b83c2f30677b6/) | ZenterestPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 22 |
| standard_library | 11 |
| needs_review | 96 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3252] DL audit link

Fork inheritance lineage and inherited audits are included when available.
