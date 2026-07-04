# Agentic Audit Brief: MANTRA DAO

## Project Overview

- Project: MANTRA DAO (`mantra-dao`)
- Website: [https://mantrachain.io/](https://mantrachain.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.419Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16da
- Chains: bsc, ethereum, polygon
- Contract surface: 391 unique implementations (516 raw deployments)
- DeFi Llama TVL: $46,969.09
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 61 project-authored contract(s) across 2 chain(s); 12 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 31 common project-authored base contract(s) (twostageownable, basefee, packageversioned). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 516; live-surface contracts included: 516 (179 live, 337 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/49 (0.0%)
- Deployed-live implementations: 54 of 391 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/54
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 337
- Unique implementations: 391
- Raw deployments: 516
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraCommunityVault | core_logic | polygon | n/a | 2 deployments: ethereum `0x8c97d1...cfe442`; polygon [`0x5da344...dbc6f9`](./contracts/polygon-137/0x5da34437a38da232094f9a17dd5c5eef92dbc6f9/) | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x3012e9...bb85cb`](./contracts/ethereum-1/0x3012e9049d05b4b5369d690114d5a5861ebb85cb/); polygon `0x7779c2...ce12e8` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | polygon | n/a | 2 deployments: ethereum `0x83d4a9...f93e7c`; polygon [`0x18a3dc...ad5007`](./contracts/polygon-137/0x18a3dcf6d9383486ea7b0fa5c336369aeead5007/) | ⚠️ Unaudited |
| AlgebraFactory | registry | ethereum | n/a | 7 deployments: ethereum [`0x3b2209...4c066d`](./contracts/ethereum-1/0x3b22094a64d3d6801a27db4e58ac0b859a4c066d/); ethereum `0x95e325...5e0b0f`; ethereum `0xd265f5...c246a7`; polygon `0x744c31...152184`; polygon `0xa0d888...05fd6c`; polygon `0xb496aa...9d587f`; polygon `0xe1f7f3...c77f3b` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | ethereum | n/a | 2 deployments: ethereum [`0x38a5c3...7ce047`](./contracts/ethereum-1/0x38a5c36fa8c8c9e4649b51fcd61810b14e7ce047/); polygon `0xa19b72...ce1794` | ⚠️ Unaudited |
| AlgebraLimitOrderPluginFactory | registry | polygon | n/a | [`0x36249b...0bbf33`](./contracts/polygon-137/0x36249b67938ab840197321ac609b92867b0bbf33/) | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | polygon | n/a | 11 deployments: ethereum `0xfe3bec...0a88b2`; polygon [`0x2682cd...c76cad`](./contracts/polygon-137/0x2682cd4cc7c8b8b13bb31e4e3861649363c76cad/); polygon `0x2ab74d...dcac1f`; polygon `0x431fb6...150303`; polygon `0x6ce8e0...f5ecb9`; polygon `0x7a6b92...771421`; polygon `0x7e7dca...860604`; polygon `0xa2f3c4...5fd250`; polygon `0xdf4a44...051d05`; polygon `0xefdf67...f7a54c`; polygon `0xfd7cfc...2e2326` | ⚠️ Unaudited |
| AlgebraUpgradeablePlugin | unknown | polygon | n/a | 2 deployments: ethereum `0xaaa81d...57931d`; polygon [`0x9713d2...99d4ad`](./contracts/polygon-137/0x9713d284abddfb84328babaf4306ca57b099d4ad/) | ⚠️ Unaudited |
| AlgebraVaultFactoryStub | registry | polygon | n/a | [`0x955259...c9241f`](./contracts/polygon-137/0x9552594ac707941e7ecf474eabcc018770c9241f/) | ⚠️ Unaudited |
| AlmPluginImplementation | unknown | ethereum | n/a | [`0x37a495...0e70e7`](./contracts/ethereum-1/0x37a4950b4ea0c46596404895c5027b088b0e70e7/) | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | polygon | n/a | [`0x89d065...eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | ⚠️ Unaudited |
| CErc20 | token | polygon | n/a | [`0x5a55c7...cce8e4`](./contracts/polygon-137/0x5a55c731b73b325f7df53a013529267f79cce8e4/) | ⚠️ Unaudited |
| CErc20Immutable | token | ethereum | n/a | 5 deployments: ethereum [`0x0968c9...2aa9fc`](./contracts/ethereum-1/0x0968c90198f08b67365840fa37631b29fe2aa9fc/); ethereum `0x11c70c...d64a99`; polygon `0x6929e9...2a919f`; polygon `0xd3f354...bcebf2`; polygon `0xf533c7...6ed4f0` | ⚠️ Unaudited |
| DynamicFeePluginImplementation | unknown | ethereum | n/a | [`0xf2a0bc...c78018`](./contracts/ethereum-1/0xf2a0bc44debd394076c67962bb4869fd43c78018/) | ⚠️ Unaudited |
| EntryPoint | unknown | polygon | n/a | 3 deployments: ethereum `0x5ff137...6d2789`; polygon [`0x000000...7da032`](./contracts/polygon-137/0x0000000071727de22e5e9d8baf0edac6f37da032/); polygon `0x5ff137...6d2789` | ⚠️ Unaudited |
| ERC1820Registry | registry | polygon | n/a | [`0x1820a4...5fad24`](./contracts/polygon-137/0x1820a4b7618bde71dce8cdc73aab6c95905fad24/) | ⚠️ Unaudited |
| FarmingCenter | unknown | polygon | n/a | 2 deployments: ethereum `0xec250e...79f418`; polygon [`0x4ccfc3...4400e1`](./contracts/polygon-137/0x4ccfc37c06f99ef96bba3d04d798ef5ca44400e1/) | ⚠️ Unaudited |
| FarmingProxyPluginImplementation | unknown | ethereum | n/a | [`0x49a390...87d228`](./contracts/ethereum-1/0x49a390a3dfd2d01389f799965f3af5961f87d228/) | ⚠️ Unaudited |
| FeeDiscountRegistry | registry | polygon | n/a | [`0x23fa6e...2e6e83`](./contracts/polygon-137/0x23fa6ed4d1c6c14dafc1217700a4d5b6f42e6e83/) | ⚠️ Unaudited |
| FixedSwap | unknown | ethereum | n/a | [`0x81de9b...28a899`](./contracts/ethereum-1/0x81de9be5dcb080db6e8fc6ff76836959c228a899/) | ⚠️ Unaudited |
| GameStationToken | token | polygon | n/a | [`0x3f6b35...db3f47`](./contracts/polygon-137/0x3f6b3595ecf70735d3f48d69b09c4e4506db3f47/) | ⚠️ Unaudited |
| HypERC20Collateral | token | ethereum | n/a | 3 deployments: ethereum [`0x7d0497...30f398`](./contracts/ethereum-1/0x7d0497a61590f3e83bab465008ac69e94730f398/); ethereum `0x9e57a6...dc67ec`; ethereum `0xec0343...37190e` | ⚠️ Unaudited |
| Issuance | unknown | polygon | n/a | [`0xe80415...dc3db7`](./contracts/polygon-137/0xe8041548c62aad4c55e36b8ec83fc26f28dc3db7/) | ⚠️ Unaudited |
| JumpRateModel | operational_periphery | polygon | n/a | 2 deployments: polygon [`0x0968c9...2aa9fc`](./contracts/polygon-137/0x0968c90198f08b67365840fa37631b29fe2aa9fc/); polygon `0x398a5f...64c471` | ⚠️ Unaudited |
| LimitOrderManager | governance | polygon | n/a | [`0x94dbc4...465900`](./contracts/polygon-137/0x94dbc4e017415885e65e45ac984a62cb87465900/) | ⚠️ Unaudited |
| LinearFee | unknown | ethereum | n/a | 31 deployments: ethereum [`0x067158...c3588e`](./contracts/ethereum-1/0x067158586f6469f5269a74337b4c8e27e7c3588e/); ethereum `0x08dba9...1005d1`; ethereum `0x142d07...ca5d57`; ethereum `0x1b4662...a7926e`; ethereum `0x33cb68...d01c4e`; ethereum `0x427ff0...594946`; ethereum `0x4ad70e...5fd61f`; ethereum `0x5d2d3d...34bbd9`; ethereum `0x5dd40f...ec7dd3`; ethereum `0x5e6109...125e1e`; ethereum `0x6283be...3c7e56`; ethereum `0x68844b...0be6b1`; ethereum `0x76219d...f1937e`; ethereum `0x79fb65...23e851`; ethereum `0x7fc17a...61c33f`; ethereum `0x83523e...b82795`; ethereum `0x8cc02c...c82c74`; ethereum `0x9a9da7...b19102`; ethereum `0xa4a7e4...203ef3`; ethereum `0xabf172...282a6d`; ethereum `0xb1aeed...3551a1`; ethereum `0xb1d38f...96b385`; ethereum `0xb312b5...629805`; ethereum `0xbed93a...f5be0b`; ethereum `0xd4590c...f15c0e`; ethereum `0xdd81a6...252f64`; ethereum `0xdffb32...8d6c6f`; ethereum `0xe62a82...50d5ed`; ethereum `0xf5c404...47c9ba`; ethereum `0xf7333d...2236db`; ethereum `0xfd0654...451c75` | ⚠️ Unaudited |
| MevxPluginImplementation | unknown | polygon | n/a | 3 deployments: polygon [`0x14cf44...bd3ee6`](./contracts/polygon-137/0x14cf4464bfd5638b1e0ddabb51fc85198ebd3ee6/); polygon `0x480b4b...144d68`; polygon `0x9d6118...54f0e7` | ⚠️ Unaudited |
| Multicall3 | periphery | ethereum | n/a | 2 deployments: ethereum [`0xca11bd...76ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/); polygon [`0xca11bd...76ca11`](./contracts/polygon-137/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | ethereum | n/a | 3 deployments: ethereum [`0x28ded2...abe449`](./contracts/ethereum-1/0x28ded2af752655df5ee92450dc259f92a5abe449/); polygon `0x6cd7dc...2c1cba`; polygon `0x7f71e9...fe6fb3` | ⚠️ Unaudited |
| OMTokenV2 | token | ethereum | n/a | [`0x3593d1...60c95d`](./contracts/ethereum-1/0x3593d125a4f7849a1b059e64f4517a86dd60c95d/) | ⚠️ Unaudited |
| OMV1ToV2Migrator | periphery | ethereum | n/a | [`0xe4ff95...e4b723`](./contracts/ethereum-1/0xe4ff95557f9aba07507ac0851a54c1244be4b723/) | ⚠️ Unaudited |
| Permit2 | unknown | polygon | n/a | [`0x000000...c78ba3`](./contracts/polygon-137/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| PrimeDeployable | unknown | ethereum | n/a | [`0xdef1da...23116d`](./contracts/ethereum-1/0xdef1da03061ddd2a5ef6c59220c135dec623116d/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 19 deployments: ethereum [`0x0f460a...a286a7`](./contracts/ethereum-1/0x0f460a2b3e8ba1cc4d33e47f207ea03b37a286a7/); ethereum `0x2477d8...7ff6cc`; ethereum `0x3e9ca1...76f6d2`; ethereum `0x3faded...6d4ec7`; ethereum `0x45b83e...8db39b`; ethereum `0x60b958...6e791e`; ethereum `0xa85efb...1bcba7`; ethereum `0xaf6a1b...727cf3`; ethereum `0xb76d05...54820e`; ethereum `0xbb0eac...f7203a`; ethereum `0xbb94ef...1adf90`; ethereum `0xc52224...542621`; ethereum `0xd4647e...e64f92`; ethereum `0xdd7399...71881a`; ethereum `0xde87f1...fde499`; ethereum `0xea5b50...9e1b09`; ethereum `0xebb2ac...e397cc`; ethereum `0xed191b...b3a330`; ethereum `0xeefbdd...55c532` | ⚠️ Unaudited |
| Quoter | periphery | ethereum | n/a | 3 deployments: ethereum [`0x69d57b...55cc2f`](./contracts/ethereum-1/0x69d57b9d705ead73a5d2f2476c30c55bd755cc2f/); polygon `0x8a5164...ea22fd`; polygon `0xed24dc...068f4e` | ⚠️ Unaudited |
| QuoterV2 | periphery | polygon | n/a | 2 deployments: ethereum `0xb4f9b6...2ee2a1`; polygon [`0x11a1e7...7447f4`](./contracts/polygon-137/0x11a1e71148532ba5e4ef9724513b545cf57447f4/) | ⚠️ Unaudited |
| RFuelToken | token | ethereum | n/a | [`0xaf9f54...3f36e5`](./contracts/ethereum-1/0xaf9f549774ecedbd0966c52f250acc548d3f36e5/) | ⚠️ Unaudited |
| RoutingFee | unknown | ethereum | n/a | 9 deployments: ethereum [`0x12f965...213c11`](./contracts/ethereum-1/0x12f96537ca46b2e73e1f628e1753f69ae1213c11/); ethereum `0x219743...f33d15`; ethereum `0x3345f7...24b668`; ethereum `0x5e7a31...21c9c5`; ethereum `0x6bbee1...3a149c`; ethereum `0x776d48...b87394`; ethereum `0x815f0b...455b10`; ethereum `0x81c075...e33304`; ethereum `0xb9d581...d8d2f7` | ⚠️ Unaudited |
| RoyaleLP | unknown | ethereum | n/a | [`0xfdc4ca...71172c`](./contracts/ethereum-1/0xfdc4ca4f70c59d3cd306beb3ecd83b1d1c71172c/) | ⚠️ Unaudited |
| RoyaleToken | token | ethereum | n/a | [`0x7eaf9c...4548db`](./contracts/ethereum-1/0x7eaf9c89037e4814dc0d9952ac7f888c784548db/) | ⚠️ Unaudited |
| SecurityPluginImplementation | unknown | ethereum | n/a | [`0x1b3b62...bb6f11`](./contracts/ethereum-1/0x1b3b62b519a60e8927d4ffbb54681871e1bb6f11/) | ⚠️ Unaudited |
| SecurityRegistry | registry | ethereum | n/a | 3 deployments: ethereum [`0x7b4553...da15bd`](./contracts/ethereum-1/0x7b4553a35d3020064cb464a8d75a4735ffda15bd/); ethereum `0xe94de0...c09bc7`; polygon `0x827da8...1d25df` | ⚠️ Unaudited |
| SingletonFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0xce0042...fdcf9f`](./contracts/ethereum-1/0xce0042b868300000d44a59004da54a005ffdcf9f/); polygon [`0xce0042...fdcf9f`](./contracts/polygon-137/0xce0042b868300000d44a59004da54a005ffdcf9f/) | ⚠️ Unaudited |
| StakingPool | core_logic | ethereum | n/a | 15 deployments: ethereum [`0x04493f...f0c63b`](./contracts/ethereum-1/0x04493f715b08dea8af77814d600bef22f1f0c63b/); ethereum `0x1dfdb0...fc8633`; ethereum `0x1ea973...8d2cb7`; ethereum `0x6ae05b...b3774b`; ethereum `0x6bcdc6...8571a0`; ethereum `0x9e15ad...feba93`; ethereum `0xa01892...bc9802`; ethereum `0xdbc34d...7b9349`; bsc `0x41a32c...853153`; bsc `0xefc2d6...2c3c91`; bsc `0xf01855...7157a9`; polygon `0x427756...dbf1f8`; polygon `0xcdd0f7...1d6ea6`; polygon `0xd1ecdc...14416e`; polygon `0xd77f49...e34c83` | ⚠️ Unaudited |
| StakingPoolsMigrator | core_logic | ethereum | n/a | [`0x81d387...383a5b`](./contracts/ethereum-1/0x81d387219627833452f3d615a76b2eaa71383a5b/) | ⚠️ Unaudited |
| SwapRouter | adapter | polygon | n/a | 4 deployments: ethereum `0x50fcbf...5d27ba`; ethereum `0x888b03...ea39ed`; polygon [`0x2da0f9...443b39`](./contracts/polygon-137/0x2da0f95641fe5168593df1cc2efadbf29c443b39/); polygon `0xf36250...d9bed0` | ⚠️ Unaudited |
| TickLens | periphery | polygon | n/a | 6 deployments: ethereum `0x6ad6a4...f8bf5f`; polygon [`0x32e3f4...e1ecf3`](./contracts/polygon-137/0x32e3f485696b2c6dbbc5c83a5cb803af72e1ecf3/); polygon `0x3b2209...4c066d`; polygon `0x4b194d...a69aa3`; polygon `0xa278e7...07b2f9`; polygon `0xd9a0ff...9d78ae` | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0xc3ec80...e114ea`](./contracts/polygon-137/0xc3ec80343d2bae2f8e680fdadde7c17e71e114ea/) | ⚠️ Unaudited |
| UniStakingSyntheticToken | token | polygon | n/a | 5 deployments: ethereum `0x9fd386...f244f9`; bsc `0xcbf42a...26014d`; bsc `0xf25897...73805b`; polygon [`0x92fce8...c39356`](./contracts/polygon-137/0x92fce8affb2a68d418badf8e360e0cde06c39356/); polygon `0xc552de...7f9d5f` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | polygon | n/a | [`0x13fce0...d31415`](./contracts/polygon-137/0x13fce0acbe6fb11641ab753212550574cad31415/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | n/a | 2 deployments: polygon [`0x1df661...fdee1c`](./contracts/polygon-137/0x1df661fc4319415a2f990bd5f49d5ca70efdee1c/); polygon `0xff2bbc...ae1038` | ⚠️ Unaudited |
| V3Migrator | periphery | polygon | n/a | [`0x510f22...6979a5`](./contracts/polygon-137/0x510f22c161387473de5e82cb882312facf6979a5/) | ⚠️ Unaudited |
| VolatilityOraclePluginImplementation | operational_periphery | ethereum | n/a | [`0x5aefba...ca6467`](./contracts/ethereum-1/0x5aefba317baba46eaf98fd6f381d07673bca6467/) | ⚠️ Unaudited |
| ZenterestPriceFeed | operational_periphery | polygon | n/a | [`0xe2d496...0677b6`](./contracts/polygon-137/0xe2d496ca2a350f431cf0fe6c705b83c2f30677b6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (337)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x004c09...a3c354` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01a8f0...6ed5d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02d286...b94c94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x078a80...93f1a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x07d22c...0cfcdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x07f7c1...0da4b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08f6f4...a8008a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09aad9...a2cb53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09ea94...1def6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0bc57a...38a3e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c91f1...69b5ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e0055...706580` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fc41a...6b9db0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11a483...46a0ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x132e54...510419` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x135c39...88d566` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13d200...8e90e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x144bdf...bdb8e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14f7f1...2da2db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15e897...8194c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15fcfd...7ad21e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x161c88...245705` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x180087...06c61d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18ba98...0a899c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a2218...f50a91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b6d73...ca0499` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1badcb...c5ba54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c1bb5...299b60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1eaeca...0f26bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f3874...7b2385` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x206fdb...bc970d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21436e...1af7b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21da0e...58606d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x223f6f...520398` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x236f7c...7d5c30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25942b...12b252` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2746b1...4a7bd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27d154...77c0cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x290a56...46a5d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a872a...ca954a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d0ea7...08ebfa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d3df4...c73e06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2dd283...3eca23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ddfd5...1f9572` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2fd419...b4fa2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31b992...a903f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33a9f9...5648ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35d184...fda2a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x391f90...545db8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39621a...0cd540` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a8504...071bd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bafa9...eacf7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bdbd2...14b836` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3dd713...3e426c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f2e9a...054e1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x404c36...ed91dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4222d9...01a951` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4307b5...04af13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x448cb1...c8e77e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x453627...37988a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x456df5...8cb413` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x479e0f...8a897e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47d748...b04d2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x491bf5...ab803e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49a39e...5c0bb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49be8a...435596` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a3bc4...d8f2b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a5b82...71799d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4cd4c0...0f94a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4cd9eb...093f2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d081f...b36b3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4dd6d5...7da687` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e421c...1d9269` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e5097...93cc34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ee05c...ba8d8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f905f...696090` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x520341...a39ac6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x539879...084ce9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53bafb...7ec3bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55e0f2...fc2647` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x561fe2...e60a46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57a8cb...912f57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b37c7...f5de10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b4463...cde214` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b836d...1618fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5dbeae...7fae3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e76be...65bb29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f3b43...1c8ad0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f81a9...c6121d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x606246...e2b7c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x640678...4a841d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x643582...8b5304` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x649402...90817b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x650d62...24a367` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x658e28...2de37d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65ca6f...0eec31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66d696...402d74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6701d5...f3db21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x672bb0...0eb941` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x680e8e...b9f15b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x689bf1...6dc8fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a4e7d...9df671` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6af368...ad3266` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ddf77...08f13e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f0db3...c1e373` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70d717...588a9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7283fe...48a2bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x733bc1...d402ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x756bab...2fa876` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a47a5...ac2c69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a665d...9fe400` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c6cdc...4b8c30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c8212...14d333` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d9834...683b01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80b435...d0ac3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80de50...90e993` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81063d...7feb1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x817c51...64acbf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x843896...2b60f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85e9ae...7da1a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88dd52...1dc5ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x893388...e06ec9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8934be...c4eb35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a2a1a...74bcfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ce6bc...388339` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d7aac...f28cae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ec3e4...8e1156` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fb35c...1de921` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90ea64...b4f4be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x914d7f...5643d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91fe14...e1a23f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x936667...e7a4fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94930c...7d1393` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94a766...c02774` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94e388...b5971a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95fbd1...c5f58e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9dc2d9...a0512d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa023d1...d49e4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa07be9...619e1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0998f...f8e873` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0b923...b0c9d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa24c0e...8cc3c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa335f7...ef0a5a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3968d...ccc396` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3c540...c2287d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa452bd...5c5120` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa57130...896fe2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6826c...72f5f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6b8cb...86a2fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8e31a...ffabd9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa901e6...7e02e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa92d60...d7888d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa95d1a...bc1060` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa4bf0...fcb451` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaab14c...1a3ee2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab576b...eae59c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabac6f...d32990` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabb5e5...1ee282` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac86b1...652bb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb12f0c...2f12f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb15e13...b44e97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb19b94...5400ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3c114...67b403` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4daa7...e43958` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb595a7...1feebe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5a82d...1d178a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb96e42...d89e0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb98f51...964f5a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb99603...b25f5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba028d...f8e34b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb0a70...98cd15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcb063...234e29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc47f57...429463` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4bdaa...50ff2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8899d...a1e1d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbf42a...26014d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc0549...c8b1b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcdd0f7...1d6ea6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd19809...1b53cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2cc7e...09871f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd44451...ae8413` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5d5ee...dfe279` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7756b...dd86c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd84701...63859a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9866f...5032c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd98f5a...c3822d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2a80a...408201` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe3334e...1b25fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe37a3e...e09ca2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe47c9d...7fc685` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe516a1...f0cc59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb6082...be04e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeceb2e...f34b1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf25897...73805b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf533c7...6ed4f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf76cc2...22afcd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf85379...a9de3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9aea0...a51491` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9f170...7df562` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa3198...d255b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc8e3b...58fc8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc9f33...404b8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff964d...712ee5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x004c09...a3c354` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x00c450...9bde56` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0968c9...2aa9fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x115a1f...2f8cc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x188224...d69525` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e8bc8...2ece05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x356dc9...bf4e1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x398a5f...64c471` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ba3e2...ee08a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3bafa9...eacf7d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f2e9a...054e1c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b57f6...d7761a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4e2690...74afac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f905f...696090` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54b00d...21ff08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x55e1ff...adb14c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b4463...cde214` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x66d696...402d74` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6928f1...629ffa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x753a3a...71b051` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7dd79e...45e297` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8214a3...1ff16e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x878dc2...75a616` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92fce8...c39356` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa072cc...68aa09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb352cd...58f2c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb41f2d...01eafd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc47f57...429463` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc85c6f...8edd8b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcdd0f7...1d6ea6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1ecdc...14416e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd86286...6f2fac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd8aac2...70901f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5d7df...51a038` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe80415...dc3db7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf02972...5448bc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe01b1...0aeb7c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x004c09...a3c354` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0105fa...773c4c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x03f8b4...d91f1a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x04acde...d60894` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x076c20...b9d2e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0bface...41424b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x11c70c...d64a99` | ❓ Unverified |
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
| UnnamedContract | unknown | polygon | n/a | `0x2a6a7f...c89e53` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2e638a...758e3e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3012e9...bb85cb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x385524...bec015` | ❓ Unverified |
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
| UnnamedContract | unknown | polygon | n/a | `0x55e1ff...adb14c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x57ef5c...3ddec7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x59a662...57d6b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5cd40c...628f6c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5ced17...27f6df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x605164...ba17cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6207dc...31b564` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x652071...e38f99` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6b1e8f...89c566` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7064c7...f5374c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x731d17...8d9b25` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x73c9a2...5e5761` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7d53cc...833c1b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x805488...48ec6a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x82bd4a...67a409` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x840cd8...e84e6a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x84d292...adf27a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x886ab8...94b6e6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8895e4...a7bf7b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8ad26d...d9a056` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8c97d1...cfe442` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8fff64...524b81` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x914d7f...5643d7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x92fbc1...7de791` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x938635...91fbdd` | ❓ Unverified |
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
| UnnamedContract | unknown | polygon | n/a | `0xb54792...dfe709` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb57366...e429b5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5a82d...1d178a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbf4eeb...19121a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbfc4ec...a58490` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc1c253...ef13a0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc45e0e...b3e07d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc47f57...429463` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc63e96...03ab86` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc85452...1ac42a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcbf42a...26014d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xceeaff...bb7af9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd0f5d2...3300df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd265f5...c246a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd37126...42cc04` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd5d5ee...dfe279` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd86286...6f2fac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd9866f...5032c5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe0e840...b1b1af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe1909b...1011e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe5d7df...51a038` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe90946...74f2e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xec84f8...9bec02` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf02972...5448bc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf494e4...e5f1d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfab49a...077ed3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfae85a...9eb6ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfbe801...4a870b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfe3bec...0a88b2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [security-audit-certificate.html](https://www.slowmist.com/en/security-audit-certificate.html?id=1193264f67af7c2bb840306b82eff6218471cf4fbed79a7d48d6a01a93030e35) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x5da344...dbc6f9`](./contracts/polygon-137/0x5da34437a38da232094f9a17dd5c5eef92dbc6f9/) | AlgebraCommunityVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3012e9...bb85cb`](./contracts/ethereum-1/0x3012e9049d05b4b5369d690114d5a5861ebb85cb/) | AlgebraCustomPoolEntryPoint | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x18a3dc...ad5007`](./contracts/polygon-137/0x18a3dcf6d9383486ea7b0fa5c336369aeead5007/) | AlgebraEternalFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b2209...4c066d`](./contracts/ethereum-1/0x3b22094a64d3d6801a27db4e58ac0b859a4c066d/) | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38a5c3...7ce047`](./contracts/ethereum-1/0x38a5c36fa8c8c9e4649b51fcd61810b14e7ce047/) | AlgebraInterfaceMulticall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x36249b...0bbf33`](./contracts/polygon-137/0x36249b67938ab840197321ac609b92867b0bbf33/) | AlgebraLimitOrderPluginFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2682cd...c76cad`](./contracts/polygon-137/0x2682cd4cc7c8b8b13bb31e4e3861649363c76cad/) | AlgebraPoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9713d2...99d4ad`](./contracts/polygon-137/0x9713d284abddfb84328babaf4306ca57b099d4ad/) | AlgebraUpgradeablePlugin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x955259...c9241f`](./contracts/polygon-137/0x9552594ac707941e7ecf474eabcc018770c9241f/) | AlgebraVaultFactoryStub | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37a495...0e70e7`](./contracts/ethereum-1/0x37a4950b4ea0c46596404895c5027b088b0e70e7/) | AlmPluginImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x89d065...eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | AutoFarmV2_CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5a55c7...cce8e4`](./contracts/polygon-137/0x5a55c731b73b325f7df53a013529267f79cce8e4/) | CErc20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0968c9...2aa9fc`](./contracts/ethereum-1/0x0968c90198f08b67365840fa37631b29fe2aa9fc/) | CErc20Immutable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2a0bc...c78018`](./contracts/ethereum-1/0xf2a0bc44debd394076c67962bb4869fd43c78018/) | DynamicFeePluginImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x000000...7da032`](./contracts/polygon-137/0x0000000071727de22e5e9d8baf0edac6f37da032/) | EntryPoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1820a4...5fad24`](./contracts/polygon-137/0x1820a4b7618bde71dce8cdc73aab6c95905fad24/) | ERC1820Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4ccfc3...4400e1`](./contracts/polygon-137/0x4ccfc37c06f99ef96bba3d04d798ef5ca44400e1/) | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49a390...87d228`](./contracts/ethereum-1/0x49a390a3dfd2d01389f799965f3af5961f87d228/) | FarmingProxyPluginImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x23fa6e...2e6e83`](./contracts/polygon-137/0x23fa6ed4d1c6c14dafc1217700a4d5b6f42e6e83/) | FeeDiscountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81de9b...28a899`](./contracts/ethereum-1/0x81de9be5dcb080db6e8fc6ff76836959c228a899/) | FixedSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3f6b35...db3f47`](./contracts/polygon-137/0x3f6b3595ecf70735d3f48d69b09c4e4506db3f47/) | GameStationToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d0497...30f398`](./contracts/ethereum-1/0x7d0497a61590f3e83bab465008ac69e94730f398/) | HypERC20Collateral | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe80415...dc3db7`](./contracts/polygon-137/0xe8041548c62aad4c55e36b8ec83fc26f28dc3db7/) | Issuance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0968c9...2aa9fc`](./contracts/polygon-137/0x0968c90198f08b67365840fa37631b29fe2aa9fc/) | JumpRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x94dbc4...465900`](./contracts/polygon-137/0x94dbc4e017415885e65e45ac984a62cb87465900/) | LimitOrderManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x067158...c3588e`](./contracts/ethereum-1/0x067158586f6469f5269a74337b4c8e27e7c3588e/) | LinearFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x14cf44...bd3ee6`](./contracts/polygon-137/0x14cf4464bfd5638b1e0ddabb51fc85198ebd3ee6/) | MevxPluginImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28ded2...abe449`](./contracts/ethereum-1/0x28ded2af752655df5ee92450dc259f92a5abe449/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3593d1...60c95d`](./contracts/ethereum-1/0x3593d125a4f7849a1b059e64f4517a86dd60c95d/) | OMTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe4ff95...e4b723`](./contracts/ethereum-1/0xe4ff95557f9aba07507ac0851a54c1244be4b723/) | OMV1ToV2Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdef1da...23116d`](./contracts/ethereum-1/0xdef1da03061ddd2a5ef6c59220c135dec623116d/) | PrimeDeployable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69d57b...55cc2f`](./contracts/ethereum-1/0x69d57b9d705ead73a5d2f2476c30c55bd755cc2f/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x11a1e7...7447f4`](./contracts/polygon-137/0x11a1e71148532ba5e4ef9724513b545cf57447f4/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf9f54...3f36e5`](./contracts/ethereum-1/0xaf9f549774ecedbd0966c52f250acc548d3f36e5/) | RFuelToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12f965...213c11`](./contracts/ethereum-1/0x12f96537ca46b2e73e1f628e1753f69ae1213c11/) | RoutingFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfdc4ca...71172c`](./contracts/ethereum-1/0xfdc4ca4f70c59d3cd306beb3ecd83b1d1c71172c/) | RoyaleLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7eaf9c...4548db`](./contracts/ethereum-1/0x7eaf9c89037e4814dc0d9952ac7f888c784548db/) | RoyaleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b3b62...bb6f11`](./contracts/ethereum-1/0x1b3b62b519a60e8927d4ffbb54681871e1bb6f11/) | SecurityPluginImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b4553...da15bd`](./contracts/ethereum-1/0x7b4553a35d3020064cb464a8d75a4735ffda15bd/) | SecurityRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce0042...fdcf9f`](./contracts/ethereum-1/0xce0042b868300000d44a59004da54a005ffdcf9f/) | SingletonFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04493f...f0c63b`](./contracts/ethereum-1/0x04493f715b08dea8af77814d600bef22f1f0c63b/) | StakingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81d387...383a5b`](./contracts/ethereum-1/0x81d387219627833452f3d615a76b2eaa71383a5b/) | StakingPoolsMigrator | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2da0f9...443b39`](./contracts/polygon-137/0x2da0f95641fe5168593df1cc2efadbf29c443b39/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x32e3f4...e1ecf3`](./contracts/polygon-137/0x32e3f485696b2c6dbbc5c83a5cb803af72e1ecf3/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc3ec80...e114ea`](./contracts/polygon-137/0xc3ec80343d2bae2f8e680fdadde7c17e71e114ea/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x92fce8...c39356`](./contracts/polygon-137/0x92fce8affb2a68d418badf8e360e0cde06c39356/) | UniStakingSyntheticToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x510f22...6979a5`](./contracts/polygon-137/0x510f22c161387473de5e82cb882312facf6979a5/) | V3Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5aefba...ca6467`](./contracts/ethereum-1/0x5aefba317baba46eaf98fd6f381d07673bca6467/) | VolatilityOraclePluginImplementation | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe2d496...0677b6`](./contracts/polygon-137/0xe2d496ca2a350f431cf0fe6c705b83c2f30677b6/) | ZenterestPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 337 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3252] security-audit-certificate.html

Fork inheritance lineage and inherited audits are included when available.
