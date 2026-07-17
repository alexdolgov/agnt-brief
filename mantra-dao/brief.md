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
| AlgebraCommunityVault | core_logic | polygon | n/a | 2 deployments: ethereum `0x8c97d1566ed686249b6e818e664ace873ccfe442`; polygon [`0x5da34437a38da232094f9a17dd5c5eef92dbc6f9`](./contracts/polygon-137/0x5da34437a38da232094f9a17dd5c5eef92dbc6f9/) | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x3012e9049d05b4b5369d690114d5a5861ebb85cb`](./contracts/ethereum-1/0x3012e9049d05b4b5369d690114d5a5861ebb85cb/); polygon `0x7779c2df9e64932eb63797b4aa2ea1e352ce12e8` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | polygon | n/a | 2 deployments: ethereum `0x83d4a9ea77a4dba073cd90b30410ac9f95f93e7c`; polygon [`0x18a3dcf6d9383486ea7b0fa5c336369aeead5007`](./contracts/polygon-137/0x18a3dcf6d9383486ea7b0fa5c336369aeead5007/) | ⚠️ Unaudited |
| AlgebraFactory | registry | ethereum | n/a | 7 deployments: ethereum [`0x3b22094a64d3d6801a27db4e58ac0b859a4c066d`](./contracts/ethereum-1/0x3b22094a64d3d6801a27db4e58ac0b859a4c066d/); ethereum `0x95e325a85b9e6cb4dea2ccd96218e5f8365e0b0f`; ethereum `0xd265f57c36ac60d3f7931ec5c7396966f0c246a7`; polygon `0x744c3126f6ae063e01a8156228a71d12a0152184`; polygon `0xa0d8885e59bda7a8f6c5d253410582275b05fd6c`; polygon `0xb496aaaed649a640bd5e3c99e45a67991f9d587f`; polygon `0xe1f7f36b7fda6ae5deda904e29cf23daefc77f3b` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | ethereum | n/a | 2 deployments: ethereum [`0x38a5c36fa8c8c9e4649b51fcd61810b14e7ce047`](./contracts/ethereum-1/0x38a5c36fa8c8c9e4649b51fcd61810b14e7ce047/); polygon `0xa19b72cc2490c557296c4a44c0ee765009ce1794` | ⚠️ Unaudited |
| AlgebraLimitOrderPluginFactory | registry | polygon | n/a | [`0x36249b67938ab840197321ac609b92867b0bbf33`](./contracts/polygon-137/0x36249b67938ab840197321ac609b92867b0bbf33/) | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | polygon | n/a | 11 deployments: ethereum `0xfe3becd788320465ab649015f34f7771220a88b2`; polygon [`0x2682cd4cc7c8b8b13bb31e4e3861649363c76cad`](./contracts/polygon-137/0x2682cd4cc7c8b8b13bb31e4e3861649363c76cad/); polygon `0x2ab74de2a7b9f19fdec589dea7cb21c6aadcac1f`; polygon `0x431fb6b15be099bb3cdeb0986e23e68eae150303`; polygon `0x6ce8e0660818dc6d099f97b894c377364ff5ecb9`; polygon `0x7a6b92507653f2d36f3132afbc28743859771421`; polygon `0x7e7dca93606cdca0981423d7d38793eed6860604`; polygon `0xa2f3c48cea95bd77a3695fa2849f862a0d5fd250`; polygon `0xdf4a44510f4cbfcf435113814cf1456cd7051d05`; polygon `0xefdf672bdbb047597fcd018e20a649c809f7a54c`; polygon `0xfd7cfcb74e630d1ddf090342d6d6a7968a2e2326` | ⚠️ Unaudited |
| AlgebraUpgradeablePlugin | unknown | polygon | n/a | 2 deployments: ethereum `0xaaa81db3cb943c20b032d16d9cbf471a3757931d`; polygon [`0x9713d284abddfb84328babaf4306ca57b099d4ad`](./contracts/polygon-137/0x9713d284abddfb84328babaf4306ca57b099d4ad/) | ⚠️ Unaudited |
| AlgebraVaultFactoryStub | registry | polygon | n/a | [`0x9552594ac707941e7ecf474eabcc018770c9241f`](./contracts/polygon-137/0x9552594ac707941e7ecf474eabcc018770c9241f/) | ⚠️ Unaudited |
| AlmPluginImplementation | unknown | ethereum | n/a | [`0x37a4950b4ea0c46596404895c5027b088b0e70e7`](./contracts/ethereum-1/0x37a4950b4ea0c46596404895c5027b088b0e70e7/) | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | polygon | n/a | [`0x89d065572136814230a55ddeeddec9df34eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | ⚠️ Unaudited |
| CErc20 | token | polygon | n/a | [`0x5a55c731b73b325f7df53a013529267f79cce8e4`](./contracts/polygon-137/0x5a55c731b73b325f7df53a013529267f79cce8e4/) | ⚠️ Unaudited |
| CErc20Immutable | token | ethereum | n/a | 5 deployments: ethereum [`0x0968c90198f08b67365840fa37631b29fe2aa9fc`](./contracts/ethereum-1/0x0968c90198f08b67365840fa37631b29fe2aa9fc/); ethereum `0x11c70caa910647d820bd014d676dcd97edd64a99`; polygon `0x6929e97453575eb2a3a2679a74f0340b9c2a919f`; polygon `0xd3f3545b140dbffb4280e3aae0ff7b1a93bcebf2`; polygon `0xf533c78c0790676008d576c5cc2e63e0856ed4f0` | ⚠️ Unaudited |
| DynamicFeePluginImplementation | unknown | ethereum | n/a | [`0xf2a0bc44debd394076c67962bb4869fd43c78018`](./contracts/ethereum-1/0xf2a0bc44debd394076c67962bb4869fd43c78018/) | ⚠️ Unaudited |
| EntryPoint | unknown | polygon | n/a | 3 deployments: ethereum `0x5ff137d4b0fdcd49dca30c7cf57e578a026d2789`; polygon [`0x0000000071727de22e5e9d8baf0edac6f37da032`](./contracts/polygon-137/0x0000000071727de22e5e9d8baf0edac6f37da032/); polygon `0x5ff137d4b0fdcd49dca30c7cf57e578a026d2789` | ⚠️ Unaudited |
| ERC1820Registry | registry | polygon | n/a | [`0x1820a4b7618bde71dce8cdc73aab6c95905fad24`](./contracts/polygon-137/0x1820a4b7618bde71dce8cdc73aab6c95905fad24/) | ⚠️ Unaudited |
| FarmingCenter | unknown | polygon | n/a | 2 deployments: ethereum `0xec250e6856e14a494cb1f0abc61d72348c79f418`; polygon [`0x4ccfc37c06f99ef96bba3d04d798ef5ca44400e1`](./contracts/polygon-137/0x4ccfc37c06f99ef96bba3d04d798ef5ca44400e1/) | ⚠️ Unaudited |
| FarmingProxyPluginImplementation | unknown | ethereum | n/a | [`0x49a390a3dfd2d01389f799965f3af5961f87d228`](./contracts/ethereum-1/0x49a390a3dfd2d01389f799965f3af5961f87d228/) | ⚠️ Unaudited |
| FeeDiscountRegistry | registry | polygon | n/a | [`0x23fa6ed4d1c6c14dafc1217700a4d5b6f42e6e83`](./contracts/polygon-137/0x23fa6ed4d1c6c14dafc1217700a4d5b6f42e6e83/) | ⚠️ Unaudited |
| FixedSwap | unknown | ethereum | n/a | [`0x81de9be5dcb080db6e8fc6ff76836959c228a899`](./contracts/ethereum-1/0x81de9be5dcb080db6e8fc6ff76836959c228a899/) | ⚠️ Unaudited |
| GameStationToken | token | polygon | n/a | [`0x3f6b3595ecf70735d3f48d69b09c4e4506db3f47`](./contracts/polygon-137/0x3f6b3595ecf70735d3f48d69b09c4e4506db3f47/) | ⚠️ Unaudited |
| HypERC20Collateral | token | ethereum | n/a | 3 deployments: ethereum [`0x7d0497a61590f3e83bab465008ac69e94730f398`](./contracts/ethereum-1/0x7d0497a61590f3e83bab465008ac69e94730f398/); ethereum `0x9e57a6c31a72cc12af119d8c76e36d8299dc67ec`; ethereum `0xec0343416595e6899c160fd2fc905eb3d937190e` | ⚠️ Unaudited |
| Issuance | unknown | polygon | n/a | [`0xe8041548c62aad4c55e36b8ec83fc26f28dc3db7`](./contracts/polygon-137/0xe8041548c62aad4c55e36b8ec83fc26f28dc3db7/) | ⚠️ Unaudited |
| JumpRateModel | operational_periphery | polygon | n/a | 2 deployments: polygon [`0x0968c90198f08b67365840fa37631b29fe2aa9fc`](./contracts/polygon-137/0x0968c90198f08b67365840fa37631b29fe2aa9fc/); polygon `0x398a5fee22e0deb67da1bd15fa4841b6aa64c471` | ⚠️ Unaudited |
| LimitOrderManager | governance | polygon | n/a | [`0x94dbc4e017415885e65e45ac984a62cb87465900`](./contracts/polygon-137/0x94dbc4e017415885e65e45ac984a62cb87465900/) | ⚠️ Unaudited |
| LinearFee | unknown | ethereum | n/a | 31 deployments: ethereum [`0x067158586f6469f5269a74337b4c8e27e7c3588e`](./contracts/ethereum-1/0x067158586f6469f5269a74337b4c8e27e7c3588e/); ethereum `0x08dba95c9a59aac68d3d30d3778fe953eb1005d1`; ethereum `0x142d074c13bc556315f99555bbbf5be42dca5d57`; ethereum `0x1b466229b92966a948b5885590e468f18da7926e`; ethereum `0x33cb685519da2b57c86428ae716ff94f06d01c4e`; ethereum `0x427ff067fe5cabeaa9bd68f00e89eed29d594946`; ethereum `0x4ad70e1c03f52415a764c8f027376e60125fd61f`; ethereum `0x5d2d3dc8b17af38fa601bb40a5043d67be34bbd9`; ethereum `0x5dd40f46fcd6a2d085b2ac00a3d2b0e61aec7dd3`; ethereum `0x5e61097952ee6bf9b5d1234b043f3a3d26125e1e`; ethereum `0x6283beac30a925fb49da7c9c1150fc465a3c7e56`; ethereum `0x68844b9140111d4ddba75ff1e42d7367b80be6b1`; ethereum `0x76219dfe8c42e37c8c1f02b1397a54bfb0f1937e`; ethereum `0x79fb650e38bd23f221dab87362e8fad0af23e851`; ethereum `0x7fc17a3f2dfb949109a54a7f18ec3b769261c33f`; ethereum `0x83523ee653e712f078b13f30f599808cdab82795`; ethereum `0x8cc02c2ee1d8013da28d0022c15803b8b4c82c74`; ethereum `0x9a9da7056cb14d7361487b709d91b3aa49b19102`; ethereum `0xa4a7e48e9c763de709ee33b2db4b13a95e203ef3`; ethereum `0xabf172a8dcad6674698436d2234978c54a282a6d`; ethereum `0xb1aeed624f3e0ffaa6d76ebed53325708c3551a1`; ethereum `0xb1d38fc65111d2cb93d1f51fa7337b40c896b385`; ethereum `0xb312b5f089caea7f2e2129043738903707629805`; ethereum `0xbed93a1c9ce10afc8e36db1e066ad42774f5be0b`; ethereum `0xd4590cfb9d9409a4f9fec81fd93b666945f15c0e`; ethereum `0xdd81a6ed1194e6df629a3ce531eed42bf2252f64`; ethereum `0xdffb326135445b74c027905ad0e1c635418d6c6f`; ethereum `0xe62a82e2d9bdbc76f90d4203bcb5fae28350d5ed`; ethereum `0xf5c404a31c7009fddad8fb0d3d26e1186747c9ba`; ethereum `0xf7333d171c25d36d64443b57b06956bada2236db`; ethereum `0xfd06542f8a6adc17c54d2d6ef6cc9e544d451c75` | ⚠️ Unaudited |
| MevxPluginImplementation | unknown | polygon | n/a | 3 deployments: polygon [`0x14cf4464bfd5638b1e0ddabb51fc85198ebd3ee6`](./contracts/polygon-137/0x14cf4464bfd5638b1e0ddabb51fc85198ebd3ee6/); polygon `0x480b4b4f8f7d3f2ce48e592dbdea2efc8e144d68`; polygon `0x9d611847985fab636bb8603cf0e4d1339754f0e7` | ⚠️ Unaudited |
| Multicall3 | periphery | ethereum | n/a | 2 deployments: ethereum [`0xca11bde05977b3631167028862be2a173976ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/); polygon [`0xca11bde05977b3631167028862be2a173976ca11`](./contracts/polygon-137/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | ethereum | n/a | 3 deployments: ethereum [`0x28ded2af752655df5ee92450dc259f92a5abe449`](./contracts/ethereum-1/0x28ded2af752655df5ee92450dc259f92a5abe449/); polygon `0x6cd7dcd88f3994e57557690d20d20105b72c1cba`; polygon `0x7f71e9b6c3d60ae3a0e68961dd4109d135fe6fb3` | ⚠️ Unaudited |
| OMTokenV2 | token | ethereum | n/a | [`0x3593d125a4f7849a1b059e64f4517a86dd60c95d`](./contracts/ethereum-1/0x3593d125a4f7849a1b059e64f4517a86dd60c95d/) | ⚠️ Unaudited |
| OMV1ToV2Migrator | periphery | ethereum | n/a | [`0xe4ff95557f9aba07507ac0851a54c1244be4b723`](./contracts/ethereum-1/0xe4ff95557f9aba07507ac0851a54c1244be4b723/) | ⚠️ Unaudited |
| Permit2 | unknown | polygon | n/a | [`0x000000000022d473030f116ddee9f6b43ac78ba3`](./contracts/polygon-137/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| PrimeDeployable | unknown | ethereum | n/a | [`0xdef1da03061ddd2a5ef6c59220c135dec623116d`](./contracts/ethereum-1/0xdef1da03061ddd2a5ef6c59220c135dec623116d/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 19 deployments: ethereum [`0x0f460a2b3e8ba1cc4d33e47f207ea03b37a286a7`](./contracts/ethereum-1/0x0f460a2b3e8ba1cc4d33e47f207ea03b37a286a7/); ethereum `0x2477d867347e01a58f064cd749f25e0d977ff6cc`; ethereum `0x3e9ca1167e41522862364c5205da156f6376f6d2`; ethereum `0x3fadedd805b7026c682d935448188fd56d6d4ec7`; ethereum `0x45b83eba8da35cd7e98271a806080a67098db39b`; ethereum `0x60b958d77570d007644083cf098211cae46e791e`; ethereum `0xa85efbe23e614e1745e5f39b05be3fc04b1bcba7`; ethereum `0xaf6a1ba2c94acc3eeb57c395e3e0692509727cf3`; ethereum `0xb76d057cb31f1c3f0890b9aec36207f27f54820e`; ethereum `0xbb0eac527a57d662aea06bb73ca43527aff7203a`; ethereum `0xbb94ef6f4448ea83d2807acab274d7360f1adf90`; ethereum `0xc52224a2aa936b9174287846254b3e2015542621`; ethereum `0xd4647e9547a08189d4230f7d096e65be31e64f92`; ethereum `0xdd7399b74c48b6b7fcb0998ecc25dad5d571881a`; ethereum `0xde87f1c98acc0491c8a43c1594d36328b7fde499`; ethereum `0xea5b509048d2a89d023adec2cb2bd6b9099e1b09`; ethereum `0xebb2ac9d214c164093f97da92d975999f5e397cc`; ethereum `0xed191b89d9d1f73357ce0c2392393633e4b3a330`; ethereum `0xeefbdd73e057571e578d65c4b7494121ea55c532` | ⚠️ Unaudited |
| Quoter | periphery | ethereum | n/a | 3 deployments: ethereum [`0x69d57b9d705ead73a5d2f2476c30c55bd755cc2f`](./contracts/ethereum-1/0x69d57b9d705ead73a5d2f2476c30c55bd755cc2f/); polygon `0x8a5164be96b21194e37de2053f18736f10ea22fd`; polygon `0xed24dcb9cb0a96eab2e19ff2b2dc757d68068f4e` | ⚠️ Unaudited |
| QuoterV2 | periphery | polygon | n/a | 2 deployments: ethereum `0xb4f9b6b019e75cbe51af4425b2fc12797e2ee2a1`; polygon [`0x11a1e71148532ba5e4ef9724513b545cf57447f4`](./contracts/polygon-137/0x11a1e71148532ba5e4ef9724513b545cf57447f4/) | ⚠️ Unaudited |
| RFuelToken | token | ethereum | n/a | [`0xaf9f549774ecedbd0966c52f250acc548d3f36e5`](./contracts/ethereum-1/0xaf9f549774ecedbd0966c52f250acc548d3f36e5/) | ⚠️ Unaudited |
| RoutingFee | unknown | ethereum | n/a | 9 deployments: ethereum [`0x12f96537ca46b2e73e1f628e1753f69ae1213c11`](./contracts/ethereum-1/0x12f96537ca46b2e73e1f628e1753f69ae1213c11/); ethereum `0x219743c7df89e4314001117f019183c7fef33d15`; ethereum `0x3345f7f224cba8d3295679cf7fc47e95be24b668`; ethereum `0x5e7a3156bd008c40c0c9df289a76dc95da21c9c5`; ethereum `0x6bbee1dfecf126f42ec0b211d32686f56e3a149c`; ethereum `0x776d48ac95098c6de277fc9d7a1763a8e2b87394`; ethereum `0x815f0b64f15ba0f716d9698f929be44c13455b10`; ethereum `0x81c07522eafba39dbdd033cd5ef8db6c3de33304`; ethereum `0xb9d58155b9ea1e082b3a1e548929498641d8d2f7` | ⚠️ Unaudited |
| RoyaleLP | unknown | ethereum | n/a | [`0xfdc4ca4f70c59d3cd306beb3ecd83b1d1c71172c`](./contracts/ethereum-1/0xfdc4ca4f70c59d3cd306beb3ecd83b1d1c71172c/) | ⚠️ Unaudited |
| RoyaleToken | token | ethereum | n/a | [`0x7eaf9c89037e4814dc0d9952ac7f888c784548db`](./contracts/ethereum-1/0x7eaf9c89037e4814dc0d9952ac7f888c784548db/) | ⚠️ Unaudited |
| SecurityPluginImplementation | unknown | ethereum | n/a | [`0x1b3b62b519a60e8927d4ffbb54681871e1bb6f11`](./contracts/ethereum-1/0x1b3b62b519a60e8927d4ffbb54681871e1bb6f11/) | ⚠️ Unaudited |
| SecurityRegistry | registry | ethereum | n/a | 3 deployments: ethereum [`0x7b4553a35d3020064cb464a8d75a4735ffda15bd`](./contracts/ethereum-1/0x7b4553a35d3020064cb464a8d75a4735ffda15bd/); ethereum `0xe94de02e52eaf9f0f6bf7f16e4927fcbc2c09bc7`; polygon `0x827da8df165436f46a31fbb0e0d09d9a4f1d25df` | ⚠️ Unaudited |
| SingletonFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0xce0042b868300000d44a59004da54a005ffdcf9f`](./contracts/ethereum-1/0xce0042b868300000d44a59004da54a005ffdcf9f/); polygon [`0xce0042b868300000d44a59004da54a005ffdcf9f`](./contracts/polygon-137/0xce0042b868300000d44a59004da54a005ffdcf9f/) | ⚠️ Unaudited |
| StakingPool | core_logic | ethereum | n/a | 15 deployments: ethereum [`0x04493f715b08dea8af77814d600bef22f1f0c63b`](./contracts/ethereum-1/0x04493f715b08dea8af77814d600bef22f1f0c63b/); ethereum `0x1dfdb0fb85402dc7f8d72d92ada8fbbb3ffc8633`; ethereum `0x1ea973a69643091410721c7d91aa5499cf8d2cb7`; ethereum `0x6ae05b5db520011bf76645ebb4d6a697e5b3774b`; ethereum `0x6bcdc61a7a6d86f7b7b66d461b7ef7fa268571a0`; ethereum `0x9e15ad979919bb4db331bfe864475ae3bffeba93`; ethereum `0xa01892d97e9c8290c2c225fb0b756bfe26bc9802`; ethereum `0xdbc34d084393ed8d7b750ffccea5a139ec7b9349`; bsc `0x41a32c610fa23dea9e85d471cad66ea828853153`; bsc `0xefc2d65302eb6345a7c0e212b791e0d45c2c3c91`; bsc `0xf0185520cc773502f0f208433ca178f2f57157a9`; polygon `0x427756e0bbb792f24018e670d570b1b147dbf1f8`; polygon `0xcdd0f77a2a158b0c7cfe38d00443e9a4731d6ea6`; polygon `0xd1ecdc553651dab068486d9c4d066ecdc614416e`; polygon `0xd77f495ce60cd9414f99670bec8657a021e34c83` | ⚠️ Unaudited |
| StakingPoolsMigrator | core_logic | ethereum | n/a | [`0x81d387219627833452f3d615a76b2eaa71383a5b`](./contracts/ethereum-1/0x81d387219627833452f3d615a76b2eaa71383a5b/) | ⚠️ Unaudited |
| SwapRouter | adapter | polygon | n/a | 4 deployments: ethereum `0x50fcbf85d23af7c91f94842fecd83d16665d27ba`; ethereum `0x888b035e6f64b1c1aebcd6ddf0c9fd7aebea39ed`; polygon [`0x2da0f95641fe5168593df1cc2efadbf29c443b39`](./contracts/polygon-137/0x2da0f95641fe5168593df1cc2efadbf29c443b39/); polygon `0xf362506e11d7692af1e6df4a0c1cfd64c5d9bed0` | ⚠️ Unaudited |
| TickLens | periphery | polygon | n/a | 6 deployments: ethereum `0x6ad6a4f233f1e33613e996ccc17409b93ff8bf5f`; polygon [`0x32e3f485696b2c6dbbc5c83a5cb803af72e1ecf3`](./contracts/polygon-137/0x32e3f485696b2c6dbbc5c83a5cb803af72e1ecf3/); polygon `0x3b22094a64d3d6801a27db4e58ac0b859a4c066d`; polygon `0x4b194de9c22d0a24ecf5ead4cf687d97b3a69aa3`; polygon `0xa278e7e32c3f646bfefe6bb6eec396f9c207b2f9`; polygon `0xd9a0ffa58143cdc5c1767208dddb64a1889d78ae` | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0xc3ec80343d2bae2f8e680fdadde7c17e71e114ea`](./contracts/polygon-137/0xc3ec80343d2bae2f8e680fdadde7c17e71e114ea/) | ⚠️ Unaudited |
| UniStakingSyntheticToken | token | polygon | n/a | 5 deployments: ethereum `0x9fd38604ed3ca1477650125fbd5e99f7bbf244f9`; bsc `0xcbf42ace1dbd895ffdcabc1b841488542626014d`; bsc `0xf25897a7edf1dfa9c65f5db7ec4bad868873805b`; polygon [`0x92fce8affb2a68d418badf8e360e0cde06c39356`](./contracts/polygon-137/0x92fce8affb2a68d418badf8e360e0cde06c39356/); polygon `0xc552de9b0eee964fe6e49b8d571e5b8b147f9d5f` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | polygon | n/a | [`0x13fce0acbe6fb11641ab753212550574cad31415`](./contracts/polygon-137/0x13fce0acbe6fb11641ab753212550574cad31415/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | n/a | 2 deployments: polygon [`0x1df661fc4319415a2f990bd5f49d5ca70efdee1c`](./contracts/polygon-137/0x1df661fc4319415a2f990bd5f49d5ca70efdee1c/); polygon `0xff2bbcb399ad50bbd06debadd47d290933ae1038` | ⚠️ Unaudited |
| V3Migrator | periphery | polygon | n/a | [`0x510f22c161387473de5e82cb882312facf6979a5`](./contracts/polygon-137/0x510f22c161387473de5e82cb882312facf6979a5/) | ⚠️ Unaudited |
| VolatilityOraclePluginImplementation | operational_periphery | ethereum | n/a | [`0x5aefba317baba46eaf98fd6f381d07673bca6467`](./contracts/ethereum-1/0x5aefba317baba46eaf98fd6f381d07673bca6467/) | ⚠️ Unaudited |
| ZenterestPriceFeed | operational_periphery | polygon | n/a | [`0xe2d496ca2a350f431cf0fe6c705b83c2f30677b6`](./contracts/polygon-137/0xe2d496ca2a350f431cf0fe6c705b83c2f30677b6/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x004c0908518e19aa8b27a55c171564097fa3c354` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01a8f03e4efb1cef12d796d21468c5903a6ed5d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02d28685e808a962af327180ad55cee32eb94c94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x078a80df3b820738613696552743e0730c93f1a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x07d22cd5d483b1242518d5cd26b21b552f0cfcdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x07f7c1a8ac45a628cec667b8a5cacfa09f0da4b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08f6f4797ac5297cf8962acea84a8e8739a8008a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09aad9e4cec08275b5b619db762b2b8963a2cb53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09ea9486f992643a1a3ee10f87e5a28c7d1def6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0bc57adfd8f7ba507db761bf1fbd7855de38a3e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c91f1795e012bcef586c925f747f23b0969b5ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e0055bf26f4bdde57b112112e5db25d56706580` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fc41a92f526a8cd22060a4052e156502d6b9db0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11a483d69cc67140fb98a0082837aec11246a0ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x132e549262f2b2ad48aa306c3d389e55bb510419` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x135c3940bce091d19163391d08dd7fa4ff88d566` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13d200673ccc1c91bb93fed4c7307f58858e90e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x144bdf52690c59b510da5dbc09bb5f145fbdb8e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14f7f160e14fc38ab0ab80469780baa44a2da2db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15e897a43265b26ab5b73870b3f54fed428194c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15fcfd53fec9b72cf3725649f3ec4603077ad21e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x161c886a5ef51c4b20f2f4ca2cadb20c93245705` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x180087a6a87fd6b09a78c9b9b87b71335906c61d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18ba986ed3128fc7e3e86a09e902436e900a899c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a22188b5f6faf7253a3defcc576884c0ff50a91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b6d730a1dcaeb870ba3b0c6e51f801c1cca0499` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1badcb0833072b986c845681d3c73603adc5ba54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c1bb5efec38b1b01e0e72fa0c8521d695299b60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1eaecaf57995775ad7e512c8d5e3d22f640f26bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f38747c14b4f015da2ed47eb2f9e5516a7b2385` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x206fdbcfffabb3d186d1581f5d6a1ef78fbc970d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21436e0c53252e7a60420d63d670262d511af7b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21da0e4595f15d3037bde7bc17c5941c9958606d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x223f6fc2696beeb0d096a72b8db674e6bd520398` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x236f7cce81558b36ce0d866017ecf006be7d5c30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25942b9496282ce18c3b8d8c722ccf8e5112b252` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2746b1a7b780f128f0db99d9fc60c2db3e4a7bd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27d15446176b469ee7fbdec1e5a4b506fd77c0cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x290a565ec7c28557ae872de2f3a5ce500f46a5d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a872ae01375a5ca7e044cb0e75cb97621ca954a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d0ea72db9f9a63f4b185eab1ca74137d808ebfa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d3df44d8522950f523466f4a726d7848cc73e06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2dd28391d7552363eed30eb172116cf3e13eca23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ddfd56221568b6d4350b68432569a57bc1f9572` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2fd419dac5dcf9470f391ee9236d244a9db4fa2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31b992fda33c6c52c602cf379b9bbe1745a903f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33a9f9bace23cfb8dad597a564d055ad415648ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35d1848b61490ec2ff19feec9ef2d5e46ffda2a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x391f902c8979050ba8036e3d61d13d79cf545db8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39621a555554a7ff77f2b64185c53e04c90cd540` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a8504271aabcc50e335b06c603fc21bf7071bd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bafa9cd93c7bdc07fd9609e95e04a8904eacf7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bdbd2b661560bcdf59bdc74576f65e2f714b836` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3dd713aafb46cb359c8711f4783836ba2e3e426c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f2e9a93428a22d2f4cacc3f184f1aad85054e1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x404c36758a0fb71e3131fd2d4f468cfc87ed91dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4222d96f9a577e1327e437727c334e7f3c01a951` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4307b5dd8d6c38f16e0ad51fde4ca885eb04af13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x448cb15b00ced3ac47467e33493d602f34c8e77e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45362763166cfed6174d312fa1449ea1fc37988a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x456df576962289256a92290c9e48ee116b8cb413` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x479e0f9928db50ad276e093292df6e6e658a897e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47d748c9babd5cca642f9f98e07442c0b5b04d2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x491bf5613f23bfaf9a6cc9b2cd6fedeba7ab803e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49a39e062aaf28950f9d0d5fd423dfb3175c0bb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49be8aa6c684b15e0c5450e8fa0b16bec1435596` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a3bc48c156384f9564fd65a53a2f3d534d8f2b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a5b823592c2a1e95502c0b55afba2397e71799d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4cd4c0eedb2bc21f4e280d0fe4c45b17430f94a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4cd9eb9bf56de4cdc8fce5c3f2840c7636093f2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d081f600b480b0ce8b422fba3a5ea1fb4b36b3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4dd6d5d861edcd361455b330fa28c4c9817da687` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e421c9fd0ac9985091235bd73f7352a621d9269` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e50972850822f8be8a034e23891b7063893cc34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e59b44847b379578588920ca78fbf26c0b4956c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ee05cf7d9d8d6b03d7cf63f1068b69040ba8d8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f905f75f5576228ed2d0ea508fb0c32a0696090` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x520341700b76c30089e0a14bf6cf78716da39ac6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53987963535bebfda64e3c40b0f3b4a2da084ce9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53bafba543f8f1283ed5b21cafe7925c367ec3bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55e0f2ce66fa8c86ef478fa47ba0be978efc2647` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x561fe2f3323b92d5a1c50566f07eb5e029e60a46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57a8cb15e9575bf9bf80f3531183395703912f57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b37c72dde4c4efc3e2eeff4107ef6eb61f5de10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b4463bbd7b2e870601e91161e0f1f7f84cde214` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b836d147e32b951af4d754be99c5a7abd1618fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5dbeaec137d1ef9a240599656073ae3e717fae3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e76be0f4e09057d75140216f70fd4ce3365bb29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f3b4318b377b35a22d1e385b50729c2ab1c8ad0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f81a986611c600a3656d9adc202283186c6121d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x606246e9ef6c70dcb6cee42136cd06d127e2b7c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6406788d1cd4fdd823ef607a924c00a4244a841d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6435821a260b6a8ecb4ab723b84e1bc3bc8b5304` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x649402f07f32d87e2f7c9c2ac24503cd1690817b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x650d62fcb1f22a10a2b810bfe305c1312a24a367` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x658e287e9c820484f5808f687dc4863b552de37d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65ca6fee33585271ee12318b466de0fe0f0eec31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66d696474784ded49b5d0a43e50bf59d63402d74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6701d503369cf6aa9e5edffebfa40a2ffdf3db21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x672bb0a1ac120cb61ecdc6d2c3aa1e042f0eb941` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x680e8ecb908a2040232ef139a0a52cbe47b9f15b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x689bf113d8f4b61600e46589126b0c8a9e6dc8fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a4e7daf7e1244944bda17390b1ec5f44c9df671` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6af368e945f4458690deb4f696edc6ed72ad3266` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ddf7743f56efa60a4834afed16b2dc13308f13e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f0db359309cad297d2e7952a4f5f081bdc1e373` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70d7172c9d95ff8c61ab6f93af3454db2b588a9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7283fe6ae81f39d07850b78f282037b65448a2bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x733bc1f0d76ab8f0ab7c1c8044ecc4720cd402ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x756bab721e2becce2f816746b2b0969cba2fa876` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a47a54233cb9826410b9187bf450b9f5bac2c69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a665de4b80835295901dd84ece07e942a9fe400` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c6cdcdfe88dde9dcb372ba419cf1705954b8c30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c82127b14c69c05fa482b7b079a59f2d114d333` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d98346b3b000c55904918e3d9e2fc3f94683b01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80b4359dccf06f62fdb0e008b1d76be27ed0ac3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80de5040d956dd5c367ec96007a94b466a90e993` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81063d413ed6eac3fcf0521eea14906fd27feb1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x817c51688c57ba79954e3063807128d61264acbf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x843896e474c809897e45000470787d66a82b60f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85e9ae52b10f35e3d15264f1e906895b1d7da1a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88dd52e3576b82571347f62a98d5334ff31dc5ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x893388ba29248261a0f13371bd4ae3700ce06ec9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8934bedc734481071ba486e6e5e7dda21fc4eb35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a2a1aec6d7acfc349fa0fd9385a8ef39774bcfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ce6bc284deb7db7ddac24e0005e6fb83c388339` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d7aacb52a7eac7b8db59a5aa2dce81cf0f28cae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ec3e4978e531565a46c22fbe0423be1bb8e1156` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fb35c58e48660a29c80452d3c7bf98fe81de921` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90ea640fd96b10d79b95166ea9d4b5fb2fb4f4be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x914d7fec6aac8cd542e72bca78b30650d45643d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91fe14df53eae3a87e310ec6edcdd2d775e1a23f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93666797a2ae5cc8876d9bc00a67ecdcc6e7a4fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94930cbfed2483b69dfbed9d96a9cdd7c27d1393` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94a766ebdfbbff21428b6c504be7405e74c02774` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94e388d6410a40c36cde41a7ad8e60a820b5971a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95fbd1037a307a49587174e06a6600fd05c5f58e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9dc2d9c4f9d7841e3bba7d3ef3be4e43fba0512d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa023d1e94027f11e39fe08eae1e3e5f250d49e4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa07be94d721df448b63ec6c3160138a2b2619e1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0998fc7dcf51169d97a74f0b0b7d97e4af8e873` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0b923456b08944be30d0f237c041f191eb0c9d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa24c0e9195481821f9b5292e8c6a4209cc8cc3c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa335f77f4c1d8418e01c0f12674a424f6eef0a5a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3968dabf386d99f67c92c4e3c7cfdf2c0ccc396` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3c5409a987c9325d8598b4731bf513a41c2287d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa452bdb132cdf8d11e070786d78907ddb95c5120` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa571309b1267676568bf9f155606a08790896fe2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6826c7dd74c4e1b400aef4a362692f99872f5f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6b8cbb493fe5682d627bdb9a6b361488086a2fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8e31ad81d609ff616645849987fef30a3ffabd9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa901e6974c8f0fcc2f44451b0e788cd6957e02e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa92d6084709469a2b2339919ffc568b7c5d7888d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa95d1a59cf9be8a53fecea7cbb5bd6e6b1bc1060` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa4bf06dc8c1c408e4ea0076a1eb6dfc71fcb451` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaab14c2115aad338cedb93e423834897651a3ee2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab576bcbb0c3303c9e680fbfdeca67e062eae59c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabac6f23fdf1313fc2e9c9244f666157ccd32990` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabb5e5b46112ca652481d1117459dc289a1ee282` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac86b1938c0f8f1ca6a09c7542d4f18925652bb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb12f0cbcc89457d44323139e6bb0526fd82f12f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb15e13bc622315e29a7142fea3d0c67464b44e97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb19b94d53d362cdfc7360c951a85ca2c1d5400ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3c114d12cc260ff0a07a2cf22a910625367b403` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4daa7980a53f1789e51d1f26390befc7ce43958` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb595a7715d7d5a0252e5d3cdddfa2e1c7c1feebe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5a82d5e8e30dac53519907470c8c5143b1d178a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb96e42c0de658ca26048b0e200f9a1e05ad89e0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb98f519b00d41657920e8f8c2cd3417b11964f5a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb996031c6be0dde7b03e045bc787798b77b25f5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba028dad0c8adc0e5941b244ecd5fad2dff8e34b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb0a70289b89977cdbf2a7fad8f54bbab798cd15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcb0635eee4ff826d5f3cc394eccd4379a234e29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc47f57a487d1b955eb881d328063c38982429463` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4bdaa3b4f2c9a78baa4442cd81874881850ff2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8899da25423ac52aa711b97ae04c8888fa1e1d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbf42ace1dbd895ffdcabc1b841488542626014d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc0549cf5c12726cd444776e19392d93bcc8b1b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcdd0f77a2a158b0c7cfe38d00443e9a4731d6ea6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd198097db1c372acbd3907df8a1bed3c7d1b53cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2cc7eae32e010ba80ce26b084b9a69f6109871f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd444517a7932a3eafd132f53d89de0e8d9ae8413` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5d5eeb7781827ed9c42755d462edf9df0dfe279` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7756be9aedc211a9d5677d7d67295e6d7dd86c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd84701828745c98405a3e1153fccea627963859a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9866fc987afcfc0c20b22a2b04b0574735032c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd98f5a16de519866980f2e3389967ea01dc3822d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2a80a76b084b51cfae5b2c3e0ff5232e0408201` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe3334e66634acf17b2b97ab560ec92d6861b25fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe37a3e429183a0f9e632ce1420859186d5e09ca2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe47c9d7423ad7793646bf3e57d180942507fc685` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe516a113316cfdf8a44e125e4e3970de6df0cc59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb608207c00602f624f0d5924b63bf2132be04e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeceb2edbb628d6d8bff55050152714c258f34b1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf25897a7edf1dfa9c65f5db7ec4bad868873805b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf533c78c0790676008d576c5cc2e63e0856ed4f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf76cc2dc02f56b27761dbdb7a62e2b1c4a22afcd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf85379cf296f84871dee84826153d6f5cca9de3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9aea09993e1a43b5f7dcdbd67cda89690a51491` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9f170aff03231771e35b1cc5361c014c17df562` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa3198ecf05303a6d96e57a45e6c815055d255b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc8e3b55897d8cef791451bbe69b204b9c58fc8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc9f3387eb4385785420f661ce7a9e486f404b8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff964d0bf9f81c401932a6b975eae54129712ee5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x004c0908518e19aa8b27a55c171564097fa3c354` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x00c4506ee6e409c8b7882253e21add8d559bde56` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0968c90198f08b67365840fa37631b29fe2aa9fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x115a1fcc4af9b0755c99526fd86a26f4a32f8cc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1882241d9c330ef4e5c13bfdf5c4a20da0d69525` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e8bc897bf03ebac570df7e5526561f8a42ece05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x356dc904c2a60bba56701935160a2a9729bf4e1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x398a5fee22e0deb67da1bd15fa4841b6aa64c471` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ba3e2f3caccdbe3c56d3046ffe859cc9dee08a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3bafa9cd93c7bdc07fd9609e95e04a8904eacf7d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f2e9a93428a22d2f4cacc3f184f1aad85054e1c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b57f610ac49c937ea3d6a5ff8a16e3007d7761a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4e26902decd8557423829c90931d85263f74afac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f905f75f5576228ed2d0ea508fb0c32a0696090` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54b00d00ccb923a4365fc52602f42efcca21ff08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x55e1ff581d11c38df5df9ffdcc02b28d99adb14c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b4463bbd7b2e870601e91161e0f1f7f84cde214` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x66d696474784ded49b5d0a43e50bf59d63402d74` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6928f1da848f31b30fcc3fdca578e1c15e629ffa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x753a3a57679b0eeb1497fb4f5c3761fb9f71b051` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7dd79e93dba1d677574d0b5e99721f2e4b45e297` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8214a38c5938eca5aaab2ea46684f7c0e01ff16e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x878dc2f389fa581af34892ddc20d73803975a616` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92fce8affb2a68d418badf8e360e0cde06c39356` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa072cc93333cc7a643803d90f728adc01c68aa09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb352cd280323d6b421675c29f98f35e8c258f2c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb41f2d0a7ad958448ea8d6bc1d2b8b6f9801eafd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc47f57a487d1b955eb881d328063c38982429463` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc85c6fdf1c32ec67d4b47fb5b52a6aafba8edd8b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcdd0f77a2a158b0c7cfe38d00443e9a4731d6ea6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1ecdc553651dab068486d9c4d066ecdc614416e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd862866599ca681c492492e1b7b9ab80066f2fac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd8aac27e4ea153c5d45a517655a57e8a1570901f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5d7df5a6a057b6a909d564dddabdc848e51a038` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8041548c62aad4c55e36b8ec83fc26f28dc3db7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0297224634aa837ca7ab8f74f9fe7d4c65448bc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe01b1a49b2b02bbe2e453d318398898ca0aeb7c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x004c0908518e19aa8b27a55c171564097fa3c354` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0105fa46539565c66cb1203f663489f93c773c4c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x03f8b4b140249dc7b2503c928e7258cce1d91f1a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x04acde7811f23b69fb1759a3f2fc98bd18d60894` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x076c2027a6534f00b4eb94e475e2a24e37b9d2e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0bface9a5c9f884a4f09fadb83b69e81ea41424b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x11c70caa910647d820bd014d676dcd97edd64a99` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1450850920a286026bd1a60b0ce2ee85658dd9df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x15fcbf9bc0797567053a8265b7e6f4ec43ea7327` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1c4cbb62e18cf9c137c5d85096b5bc7819082691` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1fdf2a70afc4374111e686c4708f6b66ac1734d1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x200302c99d93ae1a024ecf9475df7d71b125efed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2066c6d8726c7aa782fac4988aef49bfaaede6e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2650e9efe6d841622aa627cb9e493a8b8b2f9d7a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x26984e07e5f69c89b7361859e717762c1b585c25` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2713abd9d973fa88915ed31f38b469bee1bf2601` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2848ad172f660c9facdf329a3eb462e03e1aaf22` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2a6a7f70ce367517a64975bc37cc3c7b37c89e53` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2e638ad25242be0af768297da02f991787758e3e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3012e9049d05b4b5369d690114d5a5861ebb85cb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x385524ff6c66272bca61f3ed00f31327a9bec015` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3aa96edb755c44f3e50c5408a36abb52f28326ba` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3fb466fa73831faa51fce49a8517436617eaa89b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x459630bbae6e3b8be8fe2c27f2ea6664910c6cc9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x493ec6b7651d74939a9c5d582a347bd2d80256fb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4a3bc48c156384f9564fd65a53a2f3d534d8f2b7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4ce4f61ebc23d9e48ffcd5f071c0199ca39d1f75` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4e59b44847b379578588920ca78fbf26c0b4956c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4f01295e162adea1db6d99aa02163b9db76219b8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x520341700b76c30089e0a14bf6cf78716da39ac6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x53bc7c66660f87c91451e58a12e8f61f367fa527` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x55e1ff581d11c38df5df9ffdcc02b28d99adb14c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x57ef5c0ba79ce54bea9dc946f9b408740e3ddec7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x59a662ed724f19ad019307126cbebdcf4b57d6b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5cd40c7e21a15e7fc2503fffd77cf70c60628f6c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5ced17221d9ef407ee67135cfffc63721527f6df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6051646081e3ad35ef54eeb85143ccbc4cba17cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6207dc4f7f0632d8e90034be5e04dfa3a731b564` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x652071af348a44d38be519fa17ee9183a6e38f99` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6b1e8f877b81afef4d0bb1f56a46f09f4b89c566` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7064c7bb85979f008212877c4ce41285ddf5374c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x731d17b6a08c0c326aad5d6b8cf9361dad8d9b25` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x73c9a2b16b0aa92cff4f4517e5e8aa4df45e5761` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7d53cc81173cc3212b162b5937f6dc5988833c1b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x805488daa81c1b9e7c5ce3f1dcea28f21448ec6a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x82bd4ab73212e3447fedf23dcc7922f70367a409` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x840cd8bf655c78f51dfb458d1b174d2971e84e6a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x84d29244eff4d098b865a938d0e0abdd5cadf27a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x886ab87bcdcfe920bd3c86fb03cda02ec994b6e6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8895e4fd3e88613cd39898469b3097ae19a7bf7b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8ad26dc9f724c9a7319e0e25b907d15626d9a056` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8c97d1566ed686249b6e818e664ace873ccfe442` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8fff6402215870cbb8cb216c7a587cb17d524b81` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x914d7fec6aac8cd542e72bca78b30650d45643d7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x92fbc10a6f595dcd570125e255910c91397de791` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9386352fe3dae61f578775e0e71cd7b1d591fbdd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9901de850eb7132d1c37573c4be522e727f7ee70` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x998756eb8d93d6729d10e0d909deaa50aedf91fa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9af039ddbec415bb135fdea69d065b78858b1341` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9cb57c3e31d50fa5c273ec0a5a51cf9cb3b127a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9e7109c339fb292b3b261800754815116d07ea58` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9f9a94803808b5899ac3f13310d524ed9e4ae601` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa35659b073fffd5740c01238b5650a35f6e5c5f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa77ad9f635a3fb3bccc5e6d1a87cb269746aba17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa9bf3035f80e07309838c8b4845434f3828eb973` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaab91422ad832f2a1e05ea8ab70cafdf0da597a1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb1fb5afcd690b5e601172cb2cc766bcc789da387` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5479224a742c01f17cccdc7780c1664cddfe709` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb57366482cd045cecb6b54d5162b64fc1be429b5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5a82d5e8e30dac53519907470c8c5143b1d178a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbf4eeb833f23634bd6b711f62304f40bc319121a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbfc4ec9b6669a573304a32854b681d348ea58490` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc1c2539e27c53d402bfc82164c582ce9f5ef13a0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc45e0e18a82670a6dd1d19b5d6cc7a4314b3e07d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc47f57a487d1b955eb881d328063c38982429463` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc63e9672f8e93234c73ce954a1d1292e4103ab86` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc8545252e7304c93d173db700f9307c2b91ac42a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcbf42ace1dbd895ffdcabc1b841488542626014d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xceeaffe7e3dfeb7656b1e7e9c3516455a7bb7af9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd0f5d2af4c1d81b59fe9a6ef6ad9d786823300df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd265f57c36ac60d3f7931ec5c7396966f0c246a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd3712643ec7138dd09ae6322e7626ad99542cc04` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd5d5eeb7781827ed9c42755d462edf9df0dfe279` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd862866599ca681c492492e1b7b9ab80066f2fac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd9866fc987afcfc0c20b22a2b04b0574735032c5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe0e840c629402ab33433d00937fe065634b1b1af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe1909bca4e528f7361b63f82330269d3001011e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe5d7df5a6a057b6a909d564dddabdc848e51a038` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe90946566379fea24e09cb06433e035cb474f2e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xec84f899467d64f1e669388cab4fd08b9d9bec02` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf0297224634aa837ca7ab8f74f9fe7d4c65448bc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf494e400e924188d9be68d128fa4a49606e5f1d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfab49a96e2f00c5581050c0c53e08b4365077ed3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfae85a331210e905215ebcbe54f06ab8889eb6ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfbe8019638ac2c754264894ad45becb97a4a870b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfe3becd788320465ab649015f34f7771220a88b2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [security-audit-certificate.html](https://www.slowmist.com/en/security-audit-certificate.html?id=1193264f67af7c2bb840306b82eff6218471cf4fbed79a7d48d6a01a93030e35) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x5da34437a38da232094f9a17dd5c5eef92dbc6f9`](./contracts/polygon-137/0x5da34437a38da232094f9a17dd5c5eef92dbc6f9/) | AlgebraCommunityVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3012e9049d05b4b5369d690114d5a5861ebb85cb`](./contracts/ethereum-1/0x3012e9049d05b4b5369d690114d5a5861ebb85cb/) | AlgebraCustomPoolEntryPoint | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x18a3dcf6d9383486ea7b0fa5c336369aeead5007`](./contracts/polygon-137/0x18a3dcf6d9383486ea7b0fa5c336369aeead5007/) | AlgebraEternalFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b22094a64d3d6801a27db4e58ac0b859a4c066d`](./contracts/ethereum-1/0x3b22094a64d3d6801a27db4e58ac0b859a4c066d/) | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38a5c36fa8c8c9e4649b51fcd61810b14e7ce047`](./contracts/ethereum-1/0x38a5c36fa8c8c9e4649b51fcd61810b14e7ce047/) | AlgebraInterfaceMulticall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x36249b67938ab840197321ac609b92867b0bbf33`](./contracts/polygon-137/0x36249b67938ab840197321ac609b92867b0bbf33/) | AlgebraLimitOrderPluginFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2682cd4cc7c8b8b13bb31e4e3861649363c76cad`](./contracts/polygon-137/0x2682cd4cc7c8b8b13bb31e4e3861649363c76cad/) | AlgebraPoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9713d284abddfb84328babaf4306ca57b099d4ad`](./contracts/polygon-137/0x9713d284abddfb84328babaf4306ca57b099d4ad/) | AlgebraUpgradeablePlugin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9552594ac707941e7ecf474eabcc018770c9241f`](./contracts/polygon-137/0x9552594ac707941e7ecf474eabcc018770c9241f/) | AlgebraVaultFactoryStub | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37a4950b4ea0c46596404895c5027b088b0e70e7`](./contracts/ethereum-1/0x37a4950b4ea0c46596404895c5027b088b0e70e7/) | AlmPluginImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x89d065572136814230a55ddeeddec9df34eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | AutoFarmV2_CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5a55c731b73b325f7df53a013529267f79cce8e4`](./contracts/polygon-137/0x5a55c731b73b325f7df53a013529267f79cce8e4/) | CErc20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0968c90198f08b67365840fa37631b29fe2aa9fc`](./contracts/ethereum-1/0x0968c90198f08b67365840fa37631b29fe2aa9fc/) | CErc20Immutable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2a0bc44debd394076c67962bb4869fd43c78018`](./contracts/ethereum-1/0xf2a0bc44debd394076c67962bb4869fd43c78018/) | DynamicFeePluginImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0000000071727de22e5e9d8baf0edac6f37da032`](./contracts/polygon-137/0x0000000071727de22e5e9d8baf0edac6f37da032/) | EntryPoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1820a4b7618bde71dce8cdc73aab6c95905fad24`](./contracts/polygon-137/0x1820a4b7618bde71dce8cdc73aab6c95905fad24/) | ERC1820Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4ccfc37c06f99ef96bba3d04d798ef5ca44400e1`](./contracts/polygon-137/0x4ccfc37c06f99ef96bba3d04d798ef5ca44400e1/) | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49a390a3dfd2d01389f799965f3af5961f87d228`](./contracts/ethereum-1/0x49a390a3dfd2d01389f799965f3af5961f87d228/) | FarmingProxyPluginImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x23fa6ed4d1c6c14dafc1217700a4d5b6f42e6e83`](./contracts/polygon-137/0x23fa6ed4d1c6c14dafc1217700a4d5b6f42e6e83/) | FeeDiscountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81de9be5dcb080db6e8fc6ff76836959c228a899`](./contracts/ethereum-1/0x81de9be5dcb080db6e8fc6ff76836959c228a899/) | FixedSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3f6b3595ecf70735d3f48d69b09c4e4506db3f47`](./contracts/polygon-137/0x3f6b3595ecf70735d3f48d69b09c4e4506db3f47/) | GameStationToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d0497a61590f3e83bab465008ac69e94730f398`](./contracts/ethereum-1/0x7d0497a61590f3e83bab465008ac69e94730f398/) | HypERC20Collateral | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe8041548c62aad4c55e36b8ec83fc26f28dc3db7`](./contracts/polygon-137/0xe8041548c62aad4c55e36b8ec83fc26f28dc3db7/) | Issuance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0968c90198f08b67365840fa37631b29fe2aa9fc`](./contracts/polygon-137/0x0968c90198f08b67365840fa37631b29fe2aa9fc/) | JumpRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x94dbc4e017415885e65e45ac984a62cb87465900`](./contracts/polygon-137/0x94dbc4e017415885e65e45ac984a62cb87465900/) | LimitOrderManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x067158586f6469f5269a74337b4c8e27e7c3588e`](./contracts/ethereum-1/0x067158586f6469f5269a74337b4c8e27e7c3588e/) | LinearFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x14cf4464bfd5638b1e0ddabb51fc85198ebd3ee6`](./contracts/polygon-137/0x14cf4464bfd5638b1e0ddabb51fc85198ebd3ee6/) | MevxPluginImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28ded2af752655df5ee92450dc259f92a5abe449`](./contracts/ethereum-1/0x28ded2af752655df5ee92450dc259f92a5abe449/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3593d125a4f7849a1b059e64f4517a86dd60c95d`](./contracts/ethereum-1/0x3593d125a4f7849a1b059e64f4517a86dd60c95d/) | OMTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe4ff95557f9aba07507ac0851a54c1244be4b723`](./contracts/ethereum-1/0xe4ff95557f9aba07507ac0851a54c1244be4b723/) | OMV1ToV2Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdef1da03061ddd2a5ef6c59220c135dec623116d`](./contracts/ethereum-1/0xdef1da03061ddd2a5ef6c59220c135dec623116d/) | PrimeDeployable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69d57b9d705ead73a5d2f2476c30c55bd755cc2f`](./contracts/ethereum-1/0x69d57b9d705ead73a5d2f2476c30c55bd755cc2f/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x11a1e71148532ba5e4ef9724513b545cf57447f4`](./contracts/polygon-137/0x11a1e71148532ba5e4ef9724513b545cf57447f4/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf9f549774ecedbd0966c52f250acc548d3f36e5`](./contracts/ethereum-1/0xaf9f549774ecedbd0966c52f250acc548d3f36e5/) | RFuelToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12f96537ca46b2e73e1f628e1753f69ae1213c11`](./contracts/ethereum-1/0x12f96537ca46b2e73e1f628e1753f69ae1213c11/) | RoutingFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfdc4ca4f70c59d3cd306beb3ecd83b1d1c71172c`](./contracts/ethereum-1/0xfdc4ca4f70c59d3cd306beb3ecd83b1d1c71172c/) | RoyaleLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7eaf9c89037e4814dc0d9952ac7f888c784548db`](./contracts/ethereum-1/0x7eaf9c89037e4814dc0d9952ac7f888c784548db/) | RoyaleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b3b62b519a60e8927d4ffbb54681871e1bb6f11`](./contracts/ethereum-1/0x1b3b62b519a60e8927d4ffbb54681871e1bb6f11/) | SecurityPluginImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b4553a35d3020064cb464a8d75a4735ffda15bd`](./contracts/ethereum-1/0x7b4553a35d3020064cb464a8d75a4735ffda15bd/) | SecurityRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce0042b868300000d44a59004da54a005ffdcf9f`](./contracts/ethereum-1/0xce0042b868300000d44a59004da54a005ffdcf9f/) | SingletonFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04493f715b08dea8af77814d600bef22f1f0c63b`](./contracts/ethereum-1/0x04493f715b08dea8af77814d600bef22f1f0c63b/) | StakingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81d387219627833452f3d615a76b2eaa71383a5b`](./contracts/ethereum-1/0x81d387219627833452f3d615a76b2eaa71383a5b/) | StakingPoolsMigrator | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2da0f95641fe5168593df1cc2efadbf29c443b39`](./contracts/polygon-137/0x2da0f95641fe5168593df1cc2efadbf29c443b39/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x32e3f485696b2c6dbbc5c83a5cb803af72e1ecf3`](./contracts/polygon-137/0x32e3f485696b2c6dbbc5c83a5cb803af72e1ecf3/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc3ec80343d2bae2f8e680fdadde7c17e71e114ea`](./contracts/polygon-137/0xc3ec80343d2bae2f8e680fdadde7c17e71e114ea/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x92fce8affb2a68d418badf8e360e0cde06c39356`](./contracts/polygon-137/0x92fce8affb2a68d418badf8e360e0cde06c39356/) | UniStakingSyntheticToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x510f22c161387473de5e82cb882312facf6979a5`](./contracts/polygon-137/0x510f22c161387473de5e82cb882312facf6979a5/) | V3Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5aefba317baba46eaf98fd6f381d07673bca6467`](./contracts/ethereum-1/0x5aefba317baba46eaf98fd6f381d07673bca6467/) | VolatilityOraclePluginImplementation | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe2d496ca2a350f431cf0fe6c705b83c2f30677b6`](./contracts/polygon-137/0xe2d496ca2a350f431cf0fe6c705b83c2f30677b6/) | ZenterestPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
