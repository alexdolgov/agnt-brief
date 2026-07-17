# Agentic Audit Brief: Blackhole

⚠️ Lifecycle status: DECLINING - TVL dropped 79.1% over 90 days

## Project Overview

- Project: Blackhole (`blackhole`)
- Website: [https://blackhole.xyz/](https://blackhole.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:53:07.544Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: avalanche
- Contract surface: 97 unique implementations (158 raw deployments)
- DeFi Llama TVL: $7,708,891.00
- On-chain TVL (included contracts): $372,881.52
- TVL by chain: Avalanche $372,881.52

## Project Description

Dexs. Structurally: 46 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 5 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 6 common project-authored base contract(s) (peripheryimmutablestate, multicall, blocktimestamp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 161; live-surface contracts included: 150 (100 live, 50 unknown).
- Excluded by liveness: 11 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 10/67 (14.9%)
- Deployed-live implementations: 70 of 97 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 10/74
- Verified + Unaudited implementations: 64
- Verified by bytecode match: 0
- Unverified implementations: 23
- Unique implementations: 97
- Raw deployments: 158
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $372,881.52
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: 14.9% (Code4rena)
- Note: This protocol is classified as [declining]. ASD of $372,881.52 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 10 | 13.5% | 2025-07 |
| PeckShield | Tier 2 | 4 | 5.4% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Black | unknown | avalanche | n/a | [`0xcd94a87696fac69edae3a70fe5725307ae1c43f6`](./contracts/avalanche-43114/0xcd94a87696fac69edae3a70fe5725307ae1c43f6/) | ✅ Audited |
| GaugeFactory | operational_periphery | avalanche | n/a | [`0xaecb52909176a46e2b3114dc1e9c4ddf4ef50586`](./contracts/avalanche-43114/0xaecb52909176a46e2b3114dc1e9c4ddf4ef50586/) | ✅ Audited |
| GaugeManager | operational_periphery | avalanche | n/a | [`0x93c601c31145185787dab3617d6b419894dc0b8f`](./contracts/avalanche-43114/0x93c601c31145185787dab3617d6b419894dc0b8f/) | ✅ Audited |
| GenesisPoolFactory | registry | avalanche | n/a | [`0xdeb50ac7a0a03332626b3c45eb20e7310653260f`](./contracts/avalanche-43114/0xdeb50ac7a0a03332626b3c45eb20e7310653260f/) | ✅ Audited |
| GenesisPoolManager | core_logic | avalanche | n/a | [`0x0eb1e103116b8ec5f13a72f6943440340c4840dd`](./contracts/avalanche-43114/0x0eb1e103116b8ec5f13a72f6943440340c4840dd/) | ✅ Audited |
| PairGenerator | unknown | avalanche | n/a | [`0x34098b39ec2e2c1a8f815bb8fa840d0d389afe1c`](./contracts/avalanche-43114/0x34098b39ec2e2c1a8f815bb8fa840d0d389afe1c/) | ✅ Audited |
| PermissionsRegistry | registry | avalanche | n/a | [`0x751b7152aa11e39216cd00c0f65311efdf1a65ff`](./contracts/avalanche-43114/0x751b7152aa11e39216cd00c0f65311efdf1a65ff/) | ✅ Audited |
| RewardsDistributor | operational_periphery | avalanche | n/a | [`0x7c7bd86baf240db3dbcc3f7a22b35c5baa83ba28`](./contracts/avalanche-43114/0x7c7bd86baf240db3dbcc3f7a22b35c5baa83ba28/) | ✅ Audited |
| RouterV2 | adapter | avalanche | n/a | 2 deployments: avalanche [`0x04e1dee021cd12bba022a72806441b43d8212fec`](./contracts/avalanche-43114/0x04e1dee021cd12bba022a72806441b43d8212fec/); avalanche `0x9eed160d7d8253dec1a2a512e504de5e7ff3c111` | ✅ Audited |
| VotingEscrow | operational_periphery | avalanche | n/a | [`0xeac562811cc6abdbb2c9ee88719eca4ee79ad763`](./contracts/avalanche-43114/0xeac562811cc6abdbb2c9ee88719eca4ee79ad763/) | ✅ Audited |

### ⚠️ Verified + Unaudited (64)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraPool | core_logic | avalanche | n/a | 2 deployments: avalanche [`0x64b9b45dbf624d63d15c04c576faf5c8366d0696`](./contracts/avalanche-43114/0x64b9b45dbf624d63d15c04c576faf5c8366d0696/); avalanche `0x930487d060fcd5fa7ff5167a8f5b6407bc7ca365` | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | core_logic | avalanche | n/a | [`0x580be59a0461eae3414352c0abd88e485a294bfc`](./contracts/avalanche-43114/0x580be59a0461eae3414352c0abd88e485a294bfc/) | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | avalanche | n/a | 3 deployments: avalanche [`0x01a8a00a6fc8106b94f84aabaef689fd0d77271a`](./contracts/avalanche-43114/0x01a8a00a6fc8106b94f84aabaef689fd0d77271a/); avalanche `0x9c70bedd11cf874f07b1bd9c29e3e41f9f248f5c`; avalanche `0xb6180a0f879c675d4eafeaafbd2d876578c40fe5` | ⚠️ Unaudited |
| AlgebraFactory | registry | avalanche | n/a | [`0x512eb749541b7cf294be882d636218c84a5e9e5f`](./contracts/avalanche-43114/0x512eb749541b7cf294be882d636218c84a5e9e5f/) | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | avalanche | n/a | [`0x9df9457d5c55b4c880dc86c67ae323b00b5be48e`](./contracts/avalanche-43114/0x9df9457d5c55b4c880dc86c67ae323b00b5be48e/) | ⚠️ Unaudited |
| AlgebraPoolAPI | unknown | avalanche | n/a | 2 deployments: avalanche [`0x16766b107b5716b2de18bbc8587b0ac7dc9c99ca`](./contracts/avalanche-43114/0x16766b107b5716b2de18bbc8587b0ac7dc9c99ca/); avalanche `0xf0274c793d16713338af4b8bf2bef64ba2485b99` | ⚠️ Unaudited |
| AlgebraPoolAPIStorage | unknown | avalanche | n/a | 2 deployments: avalanche [`0x263625c4dff7a2c7d64e141ed45189681a27c84e`](./contracts/avalanche-43114/0x263625c4dff7a2c7d64e141ed45189681a27c84e/); avalanche `0xa90bc0e1d28151206530daba53a5b8d28332cb7f` | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | avalanche | n/a | [`0x9b2441037e286d5bf9456a3be7b5273fe28dba1e`](./contracts/avalanche-43114/0x9b2441037e286d5bf9456a3be7b5273fe28dba1e/) | ⚠️ Unaudited |
| AlgebraVaultFactory | registry | avalanche | n/a | [`0xdc0b5db6f5f957ad0ac5e0af8a2c084077d079b3`](./contracts/avalanche-43114/0xdc0b5db6f5f957ad0ac5e0af8a2c084077d079b3/) | ⚠️ Unaudited |
| ASSET | unknown | avalanche | n/a | 2 deployments: avalanche [`0x1997ef8b2e8f6cbb853dad6c588d4639cd0b5767`](./contracts/avalanche-43114/0x1997ef8b2e8f6cbb853dad6c588d4639cd0b5767/); avalanche `0xd36d9209cd5e8a32682c0d1ba761dc00e0729d21` | ⚠️ Unaudited |
| BasePluginV3Factory | registry | avalanche | n/a | 2 deployments: avalanche [`0x5af551ba1bf743978b42d4e133bff8b6231176ff`](./contracts/avalanche-43114/0x5af551ba1bf743978b42d4e133bff8b6231176ff/); avalanche `0x74544e33aad327c3f6d01028fdba8cacb1e52ed0` | ⚠️ Unaudited |
| BlackholePairAPIV2 | unknown | avalanche | n/a | [`0x3935f7e11e33e676b6108f6e86ab8578d8e32d43`](./contracts/avalanche-43114/0x3935f7e11e33e676b6108f6e86ab8578d8e32d43/) | ⚠️ Unaudited |
| BridgeFeeWrapper | operational_periphery | avalanche | n/a | [`0x8c2207c82b54d37b0d3ceb80a50a3392aeb8888b`](./contracts/avalanche-43114/0x8c2207c82b54d37b0d3ceb80a50a3392aeb8888b/) | ⚠️ Unaudited |
| CustomPoolDeployer | unknown | avalanche | n/a | 6 deployments: avalanche [`0x0aff494476dc74cf7bb5dd005c2b1fe7be76efa2`](./contracts/avalanche-43114/0x0aff494476dc74cf7bb5dd005c2b1fe7be76efa2/); avalanche `0x14e4e36f70ff06dc874f0e827b174ced91e51cc8`; avalanche `0x43c4b7bd4c173992c6711c631859a2eac84bf8db`; avalanche `0x48b1d49fb891bab3543db6e902cc54726a133ace`; avalanche `0x5ef3876ca93b93c9bcfd637783ed99412b1eff43`; avalanche `0x9f52f2beec30f2ebc9bbeb105e68cfe73dd4d74f` | ⚠️ Unaudited |
| CustomPoolDeployer | unknown | avalanche | n/a | 5 deployments: avalanche [`0x58b05074d52d1a84d8ffdadda3c1b652e8c56994`](./contracts/avalanche-43114/0x58b05074d52d1a84d8ffdadda3c1b652e8c56994/); avalanche `0x5d433a94a4a2aa8f9aa34d8d15692dc2e9960584`; avalanche `0xc046f2f09549e20039ca67496ebcf4f7a0221aee`; avalanche `0xdcfccf2e8c4efbba9127b80eac76c5a122125d29`; avalanche `0xf9221de143a0e57c324bf2a0f281e605e845d767` | ⚠️ Unaudited |
| FarmingCenter | unknown | avalanche | n/a | 3 deployments: avalanche [`0xa47ad2c95fae476a73b85a355a5855adb4b3a449`](./contracts/avalanche-43114/0xa47ad2c95fae476a73b85a355a5855adb4b3a449/); avalanche `0xcbf15ea9f0e44d563ed07d6496ceba01790932ab`; avalanche `0xcecc64211f1ed70a71bd47eb656f7067c1f45541` | ⚠️ Unaudited |
| FeeDiscountRegistry | registry | avalanche | n/a | 2 deployments: avalanche [`0x2334338da0bb192dcfc33356f5d1cc6bc03adc02`](./contracts/avalanche-43114/0x2334338da0bb192dcfc33356f5d1cc6bc03adc02/); avalanche `0x6a8591adb2ca2427021906e223e2b5de20106aa9` | ⚠️ Unaudited |
| GaugeFactoryCL | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6b6a3d5a1c536ace1d761685af241b2cb7a6ea5e`](./contracts/avalanche-43114/0x6b6a3d5a1c536ace1d761685af241b2cb7a6ea5e/); avalanche `0x824dbc85b7609f294148b122a2cb826ab13f0296` | ⚠️ Unaudited |
| GaugeManager | unknown | avalanche | n/a | 2 deployments: avalanche [`0x59aa177312ff6bdf39c8af6f46dae217bf76cbf6`](./contracts/avalanche-43114/0x59aa177312ff6bdf39c8af6f46dae217bf76cbf6/); avalanche `0x66c6650a106e82fc40824077fa501d6f28974091` | ⚠️ Unaudited |
| GaugeOwner | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x6c6630b76c7d2b0269cf66fd4425491d9ec66de5`](./contracts/avalanche-43114/0x6c6630b76c7d2b0269cf66fd4425491d9ec66de5/); avalanche `0xdd35894a790ee9625c3aad49e8bd14e135f3f946` | ⚠️ Unaudited |
| GSCORE | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0c8b3108f5ce56bfdaac375e3da71834ebc4e2e5`](./contracts/avalanche-43114/0x0c8b3108f5ce56bfdaac375e3da71834ebc4e2e5/); avalanche `0x2118048486b400f3b6ea73b2d652ce21b3f038a5` | ⚠️ Unaudited |
| GSCORE | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0fd4a527a4422aca27f48cd79e4093867544a616`](./contracts/avalanche-43114/0x0fd4a527a4422aca27f48cd79e4093867544a616/); avalanche `0xddfa1f6eee4d09baa0707cfc7f8400b4b7aa3507` | ⚠️ Unaudited |
| GSCORE | unknown | avalanche | n/a | [`0xd9c5a9b5fe4006cd0fce1f4020beb9020cbcc6f1`](./contracts/avalanche-43114/0xd9c5a9b5fe4006cd0fce1f4020beb9020cbcc6f1/) | ⚠️ Unaudited |
| NFTDescriptor | token | avalanche | n/a | 2 deployments: avalanche [`0x4694123cbe1d3d1f72ccc4d68122ddfb5a519e13`](./contracts/avalanche-43114/0x4694123cbe1d3d1f72ccc4d68122ddfb5a519e13/); avalanche `0xf91d96f66e0fc9ee9f0182803b9c546b82ec3485` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | avalanche | n/a | 3 deployments: avalanche [`0x3fed017ec0f5517cdf2e8a9a4156c64d74252146`](./contracts/avalanche-43114/0x3fed017ec0f5517cdf2e8a9a4156c64d74252146/); avalanche `0xbf5b19925b9bc2d3966b4193544a8644ff9b9d70`; avalanche `0xfd1c727d8a2259493c66899f478ebfea41329545` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | avalanche | n/a | 2 deployments: avalanche [`0x23b216788e78c8a4755473b8b2ed7be7929a81e7`](./contracts/avalanche-43114/0x23b216788e78c8a4755473b8b2ed7be7929a81e7/); avalanche `0x8ce534f3fcb4c0f4f8cf3ca06e744739f9f8830e` | ⚠️ Unaudited |
| Pair | unknown | avalanche | n/a | 2 deployments: avalanche [`0x14e4a5bed2e5e688ee1a5ca3a4914250d1abd573`](./contracts/avalanche-43114/0x14e4a5bed2e5e688ee1a5ca3a4914250d1abd573/); avalanche `0xc26e546b632348e76ebbd2811f4458a32ea29b7a` | ⚠️ Unaudited |
| PairBootstrapper | unknown | avalanche | n/a | 2 deployments: avalanche [`0xa053ca9c51524d67e5e435c62031ad2031e09a22`](./contracts/avalanche-43114/0xa053ca9c51524d67e5e435c62031ad2031e09a22/); avalanche `0xa589c80e228df3671c4fa3d02cdf000e05b2bd8d` | ⚠️ Unaudited |
| PairFactory | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0dea372e70350d9c298a3825f0249fe2dbad26f8`](./contracts/avalanche-43114/0x0dea372e70350d9c298a3825f0249fe2dbad26f8/); avalanche `0xfe926062fb99ca5653080d6c14fe945ad68c265c` | ⚠️ Unaudited |
| PluginV3Deployer | unknown | avalanche | n/a | 2 deployments: avalanche [`0xecbbc09d3f52a2133bed0304ed0dcdf4b67863d3`](./contracts/avalanche-43114/0xecbbc09d3f52a2133bed0304ed0dcdf4b67863d3/); avalanche `0xefc098ca1bba02104590cda910f7f9d494bde662` | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | n/a | 2 deployments: avalanche [`0x775ebcce9310a097f39847e23cc88b38bbac4327`](./contracts/avalanche-43114/0x775ebcce9310a097f39847e23cc88b38bbac4327/); avalanche `0xd763061cc3015642ca104496107bc69944c74bed` | ⚠️ Unaudited |
| Quoter | periphery | avalanche | n/a | [`0x7a88c46740fdfe446dd6ad97cc0a94716848d214`](./contracts/avalanche-43114/0x7a88c46740fdfe446dd6ad97cc0a94716848d214/) | ⚠️ Unaudited |
| QuoterV2 | periphery | avalanche | n/a | [`0x3e182bcf14be6142b9217847ec1112e3c39eb689`](./contracts/avalanche-43114/0x3e182bcf14be6142b9217847ec1112e3c39eb689/) | ⚠️ Unaudited |
| RouterHelperZap | adapter | avalanche | n/a | [`0xd68b9cf89ffc4432977bdb3f9e2c02148d9636e1`](./contracts/avalanche-43114/0xd68b9cf89ffc4432977bdb3f9e2c02148d9636e1/) | ⚠️ Unaudited |
| RouterV2 | unknown | avalanche | n/a | 2 deployments: avalanche [`0xcad684775d7879e63f5d319dacc8086eecc01b01`](./contracts/avalanche-43114/0xcad684775d7879e63f5d319dacc8086eecc01b01/); avalanche `0xd1447c4140b1f6ecae955813b779a2a59dbda08a` | ⚠️ Unaudited |
| SecurityRegistry | registry | avalanche | n/a | 2 deployments: avalanche [`0x275e246c0f2a76a5ba4b3e13198ef92381d82cb5`](./contracts/avalanche-43114/0x275e246c0f2a76a5ba4b3e13198ef92381d82cb5/); avalanche `0xd2fe840c24e1e4b217909bd3f88fed6bf3537b02` | ⚠️ Unaudited |
| SHARE | unknown | avalanche | n/a | 2 deployments: avalanche [`0x005ff8b18fb3f61a69a492c7a062dc497226b430`](./contracts/avalanche-43114/0x005ff8b18fb3f61a69a492c7a062dc497226b430/); avalanche `0xb6c18bb7e0167e5e92268bf6f7f667f49408f66c` | ⚠️ Unaudited |
| SwapRouter | adapter | avalanche | n/a | [`0xabfc48e8bed7b26762745f3139555f320119709d`](./contracts/avalanche-43114/0xabfc48e8bed7b26762745f3139555f320119709d/) | ⚠️ Unaudited |
| TickLens | periphery | avalanche | n/a | [`0xe66aae9cb5ab27ec6662c0ec9b9b28764d4a822e`](./contracts/avalanche-43114/0xe66aae9cb5ab27ec6662c0ec9b9b28764d4a822e/) | ⚠️ Unaudited |
| TimelockController | governance | avalanche | n/a | [`0xb5bb4c84da2d5de0af12c301818012802e64e750`](./contracts/avalanche-43114/0xb5bb4c84da2d5de0af12c301818012802e64e750/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x1112f67a7098d80c35fcd139fa951496749dfec3`](./contracts/avalanche-43114/0x1112f67a7098d80c35fcd139fa951496749dfec3/); avalanche `0xe93b6875d7bc4aab57b2473f2d974d0f8de5fc95` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x18bf868878fc0722a7400de93dcb791aba7d001f`](./contracts/avalanche-43114/0x18bf868878fc0722a7400de93dcb791aba7d001f/); avalanche `0xe98aec7fe3648c104fac23a350926c17951cf0be` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x19844c931406cc9bd237aa3e169310978a33f0b9`](./contracts/avalanche-43114/0x19844c931406cc9bd237aa3e169310978a33f0b9/); avalanche `0xfe842861b9f79bb77ccb6043731d433d63b365df` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x21760a0269c99a711269b60df59d9a35dc2d66b2`](./contracts/avalanche-43114/0x21760a0269c99a711269b60df59d9a35dc2d66b2/); avalanche `0xc200e687ae4da86fc4b649d9d145dde86ec60524` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x2e694d02cf3da855b19ee31f5f61c0b8608256d0`](./contracts/avalanche-43114/0x2e694d02cf3da855b19ee31f5f61c0b8608256d0/); avalanche `0x9aebf5fa3ede9cd4a483759a69843cc4c81c2f8b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3755df8a937e9505af7b14d8b13e83f133ed11c3`](./contracts/avalanche-43114/0x3755df8a937e9505af7b14d8b13e83f133ed11c3/); avalanche `0xf7f32fe3af99005fb4839a735458321f8754112e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3d39212cbca54627c0fc4e27aa316d10c184ecd3`](./contracts/avalanche-43114/0x3d39212cbca54627c0fc4e27aa316d10c184ecd3/); avalanche `0x98e3299de7edac19446ec3792afbd7211aafd615` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 3 deployments: avalanche [`0x516ab0f04dd90ee755f5ea2533888b5333789f85`](./contracts/avalanche-43114/0x516ab0f04dd90ee755f5ea2533888b5333789f85/); avalanche `0x6b19153936b35eb5d035193463491ee902bfd9da`; avalanche `0x8ba179fbbc41d36573097a6cc9924db7c3978fdc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 3 deployments: avalanche [`0x53d569bc4b37adbbdb6ab447d92adf42514ae480`](./contracts/avalanche-43114/0x53d569bc4b37adbbdb6ab447d92adf42514ae480/); avalanche `0xb603a73eb0e8713b87f957051d5128548bca37d7`; avalanche `0xb888979122365cee81d274e4bb6c970ce42af336` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x553901e346fcadebfd15adffd2ba3c58ac6f9988`](./contracts/avalanche-43114/0x553901e346fcadebfd15adffd2ba3c58ac6f9988/); avalanche `0xf19a0fbade62210d6b67d63ec95fa0febd8bfb9d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x58318fd6adb8caea00727ee4f579d48e6c9631d1`](./contracts/avalanche-43114/0x58318fd6adb8caea00727ee4f579d48e6c9631d1/); avalanche `0x631c0eae26937c0beae293b3be4518e51288b41b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6499d25b850fa00da2fa33d9ef036b33b4be40d6`](./contracts/avalanche-43114/0x6499d25b850fa00da2fa33d9ef036b33b4be40d6/); avalanche `0xca756ef397b8f039d04b4ff967f43417b723afde` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6c4acf40b81b15643ab58ac145a8b043497baf2f`](./contracts/avalanche-43114/0x6c4acf40b81b15643ab58ac145a8b043497baf2f/); avalanche `0x9d45e1acf9f164be11eeae206b459dd575ee0bb0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6cdc88fdd9695fce81c3d09471fed66d0e5f8c3e`](./contracts/avalanche-43114/0x6cdc88fdd9695fce81c3d09471fed66d0e5f8c3e/); avalanche `0xdc469e32771df0a7ff3ba33ed1993a92f9a15c84` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x73c4b095b0cb52cb02db918138324f8009e8cdbc`](./contracts/avalanche-43114/0x73c4b095b0cb52cb02db918138324f8009e8cdbc/); avalanche `0xea6f5924acd41817fd9a4f04b52d9e6cb303219b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x83700b8809754f67f824532ee167ef7880d0b21f`](./contracts/avalanche-43114/0x83700b8809754f67f824532ee167ef7880d0b21f/); avalanche `0xc35af3a31e354ce4b4396aeb478009540ad3f422` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x86cf4b676056aedfc8ffeba0cffd047f7b84428a`](./contracts/avalanche-43114/0x86cf4b676056aedfc8ffeba0cffd047f7b84428a/); avalanche `0xdca25b5ff3a4be4b8c4bb9f45edc77bc0c3df21e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x86eba1b766667b99dd4f9a40d01960e36cf753e3`](./contracts/avalanche-43114/0x86eba1b766667b99dd4f9a40d01960e36cf753e3/); avalanche `0xacc34ad51457930989fb5050c2dce6339f06479b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x8f6c94dc1ab34bb9586a0c15cfb7cb4d31c287c4`](./contracts/avalanche-43114/0x8f6c94dc1ab34bb9586a0c15cfb7cb4d31c287c4/); avalanche `0xa9257e4a3e1af0c162fef2d41f9e7de4d5b5431b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x9e95ef7d8b87708641923c48c4eb298ed7ca6552`](./contracts/avalanche-43114/0x9e95ef7d8b87708641923c48c4eb298ed7ca6552/); avalanche `0xe46d245942dc01c5ea3e1dd05f3268ace867b5e1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0xa46552eda2f84fe843a66bbe244515bbfa951c68`](./contracts/avalanche-43114/0xa46552eda2f84fe843a66bbe244515bbfa951c68/); avalanche `0xc9384c77faa29183d2bc54d120c78ccbe92e7012` | ⚠️ Unaudited |
| veNFTAPI | token | avalanche | n/a | [`0xb3629c89ed9cb172a3fba66dfdf8c06a85b35de9`](./contracts/avalanche-43114/0xb3629c89ed9cb172a3fba66dfdf8c06a85b35de9/) | ⚠️ Unaudited |
| VoterV3 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6bd81e7eafa4b21d5ad069b452ab4b8bb40c4525`](./contracts/avalanche-43114/0x6bd81e7eafa4b21d5ad069b452ab4b8bb40c4525/); avalanche `0xe30d0c8532721551a51a9fec7fb233759964d9e3` | ⚠️ Unaudited |
| VotingEscrowSplitHelper | operational_periphery | avalanche | n/a | [`0x1d67c7729135583f2ee11fd34c7921a8ae500e6f`](./contracts/avalanche-43114/0x1d67c7729135583f2ee11fd34c7921a8ae500e6f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x038cba84d1cdf5b0820fc6a1fae93f42240268bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x109309e885ee9023bd22e4f45a347640bb2a82aa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x27ae8c52a41ec52a4150ba6321007ec41702c0f0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3760211121b776945b38584f440d724ea80ab3d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4cd13301c1b0555272be010bfbe8901a55e520f2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x52ae672484074893a3e60b91a5e983da08be8d21` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5b0f5acde0a779856d6885a67253529c235929e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5b2c919000c6e368307904d50ccc66c98bc517bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6cab6577257523e1d609de76104764f042f993d2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7dbab3faa00c286cb65996535f2562a5ef2f4ff4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x88a49cfcee0ed5b176073dde12186c4c922a9cd0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x91b8c8c51a11a7033c34257c3768035eff4f7736` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9b0c4d5114f6a0373ca521e50b8c3da97b20b47b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9cc44526f59c12d3f675d307241d6ed97b50104f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa9ba8b96d390478eb84164cc97f7e2340db34430` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb8f679e2cb42965c99e72035184a7a9d6df98f45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd62c869a90224cf30e9a2c059e5ee8dea13f01d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd6b6618cbddfc8f33cc6ad44fb6557fa900049b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe168fcd8f27c22e1c5e9c7aa6cf78afed82f06c6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe809b72e7b1e62cb2a38baf2f681887d054d2a19` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe946a9f39312e2346ba79dab865b0e9a74f2f981` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xec909973d7a8da5ec010c380924462abca3033d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xff39c52b6649af0f73c8d3088344436a5e3b2fb6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Blackhole-AlgebraPools-v1.0.pdf](https://security-audit-links.s3.us-east-1.amazonaws.com/PeckShield-Audit-Report-Blackhole-AlgebraPools-v1.0.pdf) | PeckShield | Audit | 2025-05 | aging | Direct | contract_name | 4 | n/a |
| [Code4rena+Audit-Blackhole-report.pdf](https://security-audit-links.s3.us-east-1.amazonaws.com/Code4rena+Audit-Blackhole-report.pdf) | Code4rena | Contest | 2025-06 | aging | Direct | contract_name | 10 | n/a |
| [Addendum+to+Code4rena+Audit+Report.pdf](https://security-audit-links.s3.us-east-1.amazonaws.com/Addendum+to+Code4rena+Audit+Report.pdf) | Code4rena | Contest | 2025-07 | aging | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x64b9b45dbf624d63d15c04c576faf5c8366d0696`](./contracts/avalanche-43114/0x64b9b45dbf624d63d15c04c576faf5c8366d0696/) | AlgebraPool | core_logic | $372,881.52 | Verified native implementation with $372,881.52 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x580be59a0461eae3414352c0abd88e485a294bfc`](./contracts/avalanche-43114/0x580be59a0461eae3414352c0abd88e485a294bfc/) | AlgebraCustomPoolEntryPoint | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x01a8a00a6fc8106b94f84aabaef689fd0d77271a`](./contracts/avalanche-43114/0x01a8a00a6fc8106b94f84aabaef689fd0d77271a/) | AlgebraEternalFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x512eb749541b7cf294be882d636218c84a5e9e5f`](./contracts/avalanche-43114/0x512eb749541b7cf294be882d636218c84a5e9e5f/) | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9df9457d5c55b4c880dc86c67ae323b00b5be48e`](./contracts/avalanche-43114/0x9df9457d5c55b4c880dc86c67ae323b00b5be48e/) | AlgebraInterfaceMulticall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x16766b107b5716b2de18bbc8587b0ac7dc9c99ca`](./contracts/avalanche-43114/0x16766b107b5716b2de18bbc8587b0ac7dc9c99ca/) | AlgebraPoolAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x263625c4dff7a2c7d64e141ed45189681a27c84e`](./contracts/avalanche-43114/0x263625c4dff7a2c7d64e141ed45189681a27c84e/) | AlgebraPoolAPIStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9b2441037e286d5bf9456a3be7b5273fe28dba1e`](./contracts/avalanche-43114/0x9b2441037e286d5bf9456a3be7b5273fe28dba1e/) | AlgebraPoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdc0b5db6f5f957ad0ac5e0af8a2c084077d079b3`](./contracts/avalanche-43114/0xdc0b5db6f5f957ad0ac5e0af8a2c084077d079b3/) | AlgebraVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1997ef8b2e8f6cbb853dad6c588d4639cd0b5767`](./contracts/avalanche-43114/0x1997ef8b2e8f6cbb853dad6c588d4639cd0b5767/) | ASSET | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5af551ba1bf743978b42d4e133bff8b6231176ff`](./contracts/avalanche-43114/0x5af551ba1bf743978b42d4e133bff8b6231176ff/) | BasePluginV3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3935f7e11e33e676b6108f6e86ab8578d8e32d43`](./contracts/avalanche-43114/0x3935f7e11e33e676b6108f6e86ab8578d8e32d43/) | BlackholePairAPIV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x8c2207c82b54d37b0d3ceb80a50a3392aeb8888b`](./contracts/avalanche-43114/0x8c2207c82b54d37b0d3ceb80a50a3392aeb8888b/) | BridgeFeeWrapper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0aff494476dc74cf7bb5dd005c2b1fe7be76efa2`](./contracts/avalanche-43114/0x0aff494476dc74cf7bb5dd005c2b1fe7be76efa2/) | CustomPoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x58b05074d52d1a84d8ffdadda3c1b652e8c56994`](./contracts/avalanche-43114/0x58b05074d52d1a84d8ffdadda3c1b652e8c56994/) | CustomPoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa47ad2c95fae476a73b85a355a5855adb4b3a449`](./contracts/avalanche-43114/0xa47ad2c95fae476a73b85a355a5855adb4b3a449/) | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2334338da0bb192dcfc33356f5d1cc6bc03adc02`](./contracts/avalanche-43114/0x2334338da0bb192dcfc33356f5d1cc6bc03adc02/) | FeeDiscountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6b6a3d5a1c536ace1d761685af241b2cb7a6ea5e`](./contracts/avalanche-43114/0x6b6a3d5a1c536ace1d761685af241b2cb7a6ea5e/) | GaugeFactoryCL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x59aa177312ff6bdf39c8af6f46dae217bf76cbf6`](./contracts/avalanche-43114/0x59aa177312ff6bdf39c8af6f46dae217bf76cbf6/) | GaugeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6c6630b76c7d2b0269cf66fd4425491d9ec66de5`](./contracts/avalanche-43114/0x6c6630b76c7d2b0269cf66fd4425491d9ec66de5/) | GaugeOwner | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0c8b3108f5ce56bfdaac375e3da71834ebc4e2e5`](./contracts/avalanche-43114/0x0c8b3108f5ce56bfdaac375e3da71834ebc4e2e5/) | GSCORE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0fd4a527a4422aca27f48cd79e4093867544a616`](./contracts/avalanche-43114/0x0fd4a527a4422aca27f48cd79e4093867544a616/) | GSCORE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd9c5a9b5fe4006cd0fce1f4020beb9020cbcc6f1`](./contracts/avalanche-43114/0xd9c5a9b5fe4006cd0fce1f4020beb9020cbcc6f1/) | GSCORE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4694123cbe1d3d1f72ccc4d68122ddfb5a519e13`](./contracts/avalanche-43114/0x4694123cbe1d3d1f72ccc4d68122ddfb5a519e13/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3fed017ec0f5517cdf2e8a9a4156c64d74252146`](./contracts/avalanche-43114/0x3fed017ec0f5517cdf2e8a9a4156c64d74252146/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x23b216788e78c8a4755473b8b2ed7be7929a81e7`](./contracts/avalanche-43114/0x23b216788e78c8a4755473b8b2ed7be7929a81e7/) | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x14e4a5bed2e5e688ee1a5ca3a4914250d1abd573`](./contracts/avalanche-43114/0x14e4a5bed2e5e688ee1a5ca3a4914250d1abd573/) | Pair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa053ca9c51524d67e5e435c62031ad2031e09a22`](./contracts/avalanche-43114/0xa053ca9c51524d67e5e435c62031ad2031e09a22/) | PairBootstrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0dea372e70350d9c298a3825f0249fe2dbad26f8`](./contracts/avalanche-43114/0x0dea372e70350d9c298a3825f0249fe2dbad26f8/) | PairFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xecbbc09d3f52a2133bed0304ed0dcdf4b67863d3`](./contracts/avalanche-43114/0xecbbc09d3f52a2133bed0304ed0dcdf4b67863d3/) | PluginV3Deployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7a88c46740fdfe446dd6ad97cc0a94716848d214`](./contracts/avalanche-43114/0x7a88c46740fdfe446dd6ad97cc0a94716848d214/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3e182bcf14be6142b9217847ec1112e3c39eb689`](./contracts/avalanche-43114/0x3e182bcf14be6142b9217847ec1112e3c39eb689/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd68b9cf89ffc4432977bdb3f9e2c02148d9636e1`](./contracts/avalanche-43114/0xd68b9cf89ffc4432977bdb3f9e2c02148d9636e1/) | RouterHelperZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xcad684775d7879e63f5d319dacc8086eecc01b01`](./contracts/avalanche-43114/0xcad684775d7879e63f5d319dacc8086eecc01b01/) | RouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x275e246c0f2a76a5ba4b3e13198ef92381d82cb5`](./contracts/avalanche-43114/0x275e246c0f2a76a5ba4b3e13198ef92381d82cb5/) | SecurityRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x005ff8b18fb3f61a69a492c7a062dc497226b430`](./contracts/avalanche-43114/0x005ff8b18fb3f61a69a492c7a062dc497226b430/) | SHARE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xabfc48e8bed7b26762745f3139555f320119709d`](./contracts/avalanche-43114/0xabfc48e8bed7b26762745f3139555f320119709d/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe66aae9cb5ab27ec6662c0ec9b9b28764d4a822e`](./contracts/avalanche-43114/0xe66aae9cb5ab27ec6662c0ec9b9b28764d4a822e/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb3629c89ed9cb172a3fba66dfdf8c06a85b35de9`](./contracts/avalanche-43114/0xb3629c89ed9cb172a3fba66dfdf8c06a85b35de9/) | veNFTAPI | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6bd81e7eafa4b21d5ad069b452ab4b8bb40c4525`](./contracts/avalanche-43114/0x6bd81e7eafa4b21d5ad069b452ab4b8bb40c4525/) | VoterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1d67c7729135583f2ee11fd34c7921a8ae500e6f`](./contracts/avalanche-43114/0x1d67c7729135583f2ee11fd34c7921a8ae500e6f/) | VotingEscrowSplitHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 57 |
| upstream | 0 |
| standard_library | 13 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=17

Fork inheritance lineage and inherited audits are included when available.
