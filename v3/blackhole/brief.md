# Agentic Audit Brief: Blackhole

⚠️ Lifecycle status: DECLINING - TVL dropped 79.1% over 90 days

## Project Overview

- Project: Blackhole (`blackhole`)
- Website: [https://blackhole.xyz/](https://blackhole.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-03T21:05:35.824Z
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

- Coverage of deployed-live implementations: 10/70 (14.3%)
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
- Tier 1 coverage: 14.3% (Code4rena)
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
| Black | unknown | avalanche | n/a | [`0xcd94a8...1c43f6`](./contracts/avalanche-43114/0xcd94a87696fac69edae3a70fe5725307ae1c43f6/) | ✅ Audited |
| GaugeFactory | operational_periphery | avalanche | n/a | [`0xaecb52...f50586`](./contracts/avalanche-43114/0xaecb52909176a46e2b3114dc1e9c4ddf4ef50586/) | ✅ Audited |
| GaugeManager | operational_periphery | avalanche | n/a | [`0x93c601...dc0b8f`](./contracts/avalanche-43114/0x93c601c31145185787dab3617d6b419894dc0b8f/) | ✅ Audited |
| GenesisPoolFactory | registry | avalanche | n/a | [`0xdeb50a...53260f`](./contracts/avalanche-43114/0xdeb50ac7a0a03332626b3c45eb20e7310653260f/) | ✅ Audited |
| GenesisPoolManager | core_logic | avalanche | n/a | [`0x0eb1e1...4840dd`](./contracts/avalanche-43114/0x0eb1e103116b8ec5f13a72f6943440340c4840dd/) | ✅ Audited |
| PairGenerator | unknown | avalanche | n/a | [`0x34098b...9afe1c`](./contracts/avalanche-43114/0x34098b39ec2e2c1a8f815bb8fa840d0d389afe1c/) | ✅ Audited |
| PermissionsRegistry | registry | avalanche | n/a | [`0x751b71...1a65ff`](./contracts/avalanche-43114/0x751b7152aa11e39216cd00c0f65311efdf1a65ff/) | ✅ Audited |
| RewardsDistributor | operational_periphery | avalanche | n/a | [`0x7c7bd8...83ba28`](./contracts/avalanche-43114/0x7c7bd86baf240db3dbcc3f7a22b35c5baa83ba28/) | ✅ Audited |
| RouterV2 | adapter | avalanche | n/a | 2 deployments: avalanche [`0x04e1de...212fec`](./contracts/avalanche-43114/0x04e1dee021cd12bba022a72806441b43d8212fec/); avalanche `0x9eed16...f3c111` | ✅ Audited |
| VotingEscrow | operational_periphery | avalanche | n/a | [`0xeac562...9ad763`](./contracts/avalanche-43114/0xeac562811cc6abdbb2c9ee88719eca4ee79ad763/) | ✅ Audited |

### ⚠️ Verified + Unaudited (64)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraPool | core_logic | avalanche | n/a | 2 deployments: avalanche [`0x64b9b4...6d0696`](./contracts/avalanche-43114/0x64b9b45dbf624d63d15c04c576faf5c8366d0696/); avalanche `0x930487...7ca365` | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | core_logic | avalanche | n/a | [`0x580be5...294bfc`](./contracts/avalanche-43114/0x580be59a0461eae3414352c0abd88e485a294bfc/) | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | avalanche | n/a | 3 deployments: avalanche [`0x01a8a0...77271a`](./contracts/avalanche-43114/0x01a8a00a6fc8106b94f84aabaef689fd0d77271a/); avalanche `0x9c70be...248f5c`; avalanche `0xb6180a...c40fe5` | ⚠️ Unaudited |
| AlgebraFactory | registry | avalanche | n/a | [`0x512eb7...5e9e5f`](./contracts/avalanche-43114/0x512eb749541b7cf294be882d636218c84a5e9e5f/) | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | avalanche | n/a | [`0x9df945...5be48e`](./contracts/avalanche-43114/0x9df9457d5c55b4c880dc86c67ae323b00b5be48e/) | ⚠️ Unaudited |
| AlgebraPoolAPI | unknown | avalanche | n/a | 2 deployments: avalanche [`0x16766b...9c99ca`](./contracts/avalanche-43114/0x16766b107b5716b2de18bbc8587b0ac7dc9c99ca/); avalanche `0xf0274c...485b99` | ⚠️ Unaudited |
| AlgebraPoolAPIStorage | unknown | avalanche | n/a | 2 deployments: avalanche [`0x263625...27c84e`](./contracts/avalanche-43114/0x263625c4dff7a2c7d64e141ed45189681a27c84e/); avalanche `0xa90bc0...32cb7f` | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | avalanche | n/a | [`0x9b2441...8dba1e`](./contracts/avalanche-43114/0x9b2441037e286d5bf9456a3be7b5273fe28dba1e/) | ⚠️ Unaudited |
| AlgebraVaultFactory | registry | avalanche | n/a | [`0xdc0b5d...d079b3`](./contracts/avalanche-43114/0xdc0b5db6f5f957ad0ac5e0af8a2c084077d079b3/) | ⚠️ Unaudited |
| ASSET | unknown | avalanche | n/a | 2 deployments: avalanche [`0x1997ef...0b5767`](./contracts/avalanche-43114/0x1997ef8b2e8f6cbb853dad6c588d4639cd0b5767/); avalanche `0xd36d92...729d21` | ⚠️ Unaudited |
| BasePluginV3Factory | registry | avalanche | n/a | 2 deployments: avalanche [`0x5af551...1176ff`](./contracts/avalanche-43114/0x5af551ba1bf743978b42d4e133bff8b6231176ff/); avalanche `0x74544e...e52ed0` | ⚠️ Unaudited |
| BlackholePairAPIV2 | unknown | avalanche | n/a | [`0x3935f7...e32d43`](./contracts/avalanche-43114/0x3935f7e11e33e676b6108f6e86ab8578d8e32d43/) | ⚠️ Unaudited |
| BridgeFeeWrapper | operational_periphery | avalanche | n/a | [`0x8c2207...b8888b`](./contracts/avalanche-43114/0x8c2207c82b54d37b0d3ceb80a50a3392aeb8888b/) | ⚠️ Unaudited |
| CustomPoolDeployer | unknown | avalanche | n/a | 6 deployments: avalanche [`0x0aff49...76efa2`](./contracts/avalanche-43114/0x0aff494476dc74cf7bb5dd005c2b1fe7be76efa2/); avalanche `0x14e4e3...e51cc8`; avalanche `0x43c4b7...4bf8db`; avalanche `0x48b1d4...133ace`; avalanche `0x5ef387...1eff43`; avalanche `0x9f52f2...d4d74f` | ⚠️ Unaudited |
| CustomPoolDeployer | unknown | avalanche | n/a | 5 deployments: avalanche [`0x58b050...c56994`](./contracts/avalanche-43114/0x58b05074d52d1a84d8ffdadda3c1b652e8c56994/); avalanche `0x5d433a...960584`; avalanche `0xc046f2...221aee`; avalanche `0xdcfccf...125d29`; avalanche `0xf9221d...45d767` | ⚠️ Unaudited |
| FarmingCenter | unknown | avalanche | n/a | 3 deployments: avalanche [`0xa47ad2...b3a449`](./contracts/avalanche-43114/0xa47ad2c95fae476a73b85a355a5855adb4b3a449/); avalanche `0xcbf15e...0932ab`; avalanche `0xcecc64...f45541` | ⚠️ Unaudited |
| FeeDiscountRegistry | registry | avalanche | n/a | 2 deployments: avalanche [`0x233433...3adc02`](./contracts/avalanche-43114/0x2334338da0bb192dcfc33356f5d1cc6bc03adc02/); avalanche `0x6a8591...106aa9` | ⚠️ Unaudited |
| GaugeFactoryCL | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6b6a3d...a6ea5e`](./contracts/avalanche-43114/0x6b6a3d5a1c536ace1d761685af241b2cb7a6ea5e/); avalanche `0x824dbc...3f0296` | ⚠️ Unaudited |
| GaugeManager | unknown | avalanche | n/a | 2 deployments: avalanche [`0x59aa17...76cbf6`](./contracts/avalanche-43114/0x59aa177312ff6bdf39c8af6f46dae217bf76cbf6/); avalanche `0x66c665...974091` | ⚠️ Unaudited |
| GaugeOwner | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x6c6630...c66de5`](./contracts/avalanche-43114/0x6c6630b76c7d2b0269cf66fd4425491d9ec66de5/); avalanche `0xdd3589...f3f946` | ⚠️ Unaudited |
| GSCORE | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0c8b31...c4e2e5`](./contracts/avalanche-43114/0x0c8b3108f5ce56bfdaac375e3da71834ebc4e2e5/); avalanche `0x211804...f038a5` | ⚠️ Unaudited |
| GSCORE | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0fd4a5...44a616`](./contracts/avalanche-43114/0x0fd4a527a4422aca27f48cd79e4093867544a616/); avalanche `0xddfa1f...aa3507` | ⚠️ Unaudited |
| GSCORE | unknown | avalanche | n/a | [`0xd9c5a9...bcc6f1`](./contracts/avalanche-43114/0xd9c5a9b5fe4006cd0fce1f4020beb9020cbcc6f1/) | ⚠️ Unaudited |
| NFTDescriptor | token | avalanche | n/a | 2 deployments: avalanche [`0x469412...519e13`](./contracts/avalanche-43114/0x4694123cbe1d3d1f72ccc4d68122ddfb5a519e13/); avalanche `0xf91d96...ec3485` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | avalanche | n/a | 3 deployments: avalanche [`0x3fed01...252146`](./contracts/avalanche-43114/0x3fed017ec0f5517cdf2e8a9a4156c64d74252146/); avalanche `0xbf5b19...9b9d70`; avalanche `0xfd1c72...329545` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | avalanche | n/a | 2 deployments: avalanche [`0x23b216...9a81e7`](./contracts/avalanche-43114/0x23b216788e78c8a4755473b8b2ed7be7929a81e7/); avalanche `0x8ce534...f8830e` | ⚠️ Unaudited |
| Pair | unknown | avalanche | n/a | 2 deployments: avalanche [`0x14e4a5...abd573`](./contracts/avalanche-43114/0x14e4a5bed2e5e688ee1a5ca3a4914250d1abd573/); avalanche `0xc26e54...a29b7a` | ⚠️ Unaudited |
| PairBootstrapper | unknown | avalanche | n/a | 2 deployments: avalanche [`0xa053ca...e09a22`](./contracts/avalanche-43114/0xa053ca9c51524d67e5e435c62031ad2031e09a22/); avalanche `0xa589c8...b2bd8d` | ⚠️ Unaudited |
| PairFactory | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0dea37...ad26f8`](./contracts/avalanche-43114/0x0dea372e70350d9c298a3825f0249fe2dbad26f8/); avalanche `0xfe9260...8c265c` | ⚠️ Unaudited |
| PluginV3Deployer | unknown | avalanche | n/a | 2 deployments: avalanche [`0xecbbc0...7863d3`](./contracts/avalanche-43114/0xecbbc09d3f52a2133bed0304ed0dcdf4b67863d3/); avalanche `0xefc098...bde662` | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | n/a | 2 deployments: avalanche [`0x775ebc...ac4327`](./contracts/avalanche-43114/0x775ebcce9310a097f39847e23cc88b38bbac4327/); avalanche `0xd76306...c74bed` | ⚠️ Unaudited |
| Quoter | periphery | avalanche | n/a | [`0x7a88c4...48d214`](./contracts/avalanche-43114/0x7a88c46740fdfe446dd6ad97cc0a94716848d214/) | ⚠️ Unaudited |
| QuoterV2 | periphery | avalanche | n/a | [`0x3e182b...9eb689`](./contracts/avalanche-43114/0x3e182bcf14be6142b9217847ec1112e3c39eb689/) | ⚠️ Unaudited |
| RouterHelperZap | adapter | avalanche | n/a | [`0xd68b9c...9636e1`](./contracts/avalanche-43114/0xd68b9cf89ffc4432977bdb3f9e2c02148d9636e1/) | ⚠️ Unaudited |
| RouterV2 | unknown | avalanche | n/a | 2 deployments: avalanche [`0xcad684...c01b01`](./contracts/avalanche-43114/0xcad684775d7879e63f5d319dacc8086eecc01b01/); avalanche `0xd1447c...bda08a` | ⚠️ Unaudited |
| SecurityRegistry | registry | avalanche | n/a | 2 deployments: avalanche [`0x275e24...d82cb5`](./contracts/avalanche-43114/0x275e246c0f2a76a5ba4b3e13198ef92381d82cb5/); avalanche `0xd2fe84...537b02` | ⚠️ Unaudited |
| SHARE | unknown | avalanche | n/a | 2 deployments: avalanche [`0x005ff8...26b430`](./contracts/avalanche-43114/0x005ff8b18fb3f61a69a492c7a062dc497226b430/); avalanche `0xb6c18b...08f66c` | ⚠️ Unaudited |
| SwapRouter | adapter | avalanche | n/a | [`0xabfc48...19709d`](./contracts/avalanche-43114/0xabfc48e8bed7b26762745f3139555f320119709d/) | ⚠️ Unaudited |
| TickLens | periphery | avalanche | n/a | [`0xe66aae...4a822e`](./contracts/avalanche-43114/0xe66aae9cb5ab27ec6662c0ec9b9b28764d4a822e/) | ⚠️ Unaudited |
| TimelockController | governance | avalanche | n/a | [`0xb5bb4c...64e750`](./contracts/avalanche-43114/0xb5bb4c84da2d5de0af12c301818012802e64e750/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x1112f6...9dfec3`](./contracts/avalanche-43114/0x1112f67a7098d80c35fcd139fa951496749dfec3/); avalanche `0xe93b68...e5fc95` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x18bf86...7d001f`](./contracts/avalanche-43114/0x18bf868878fc0722a7400de93dcb791aba7d001f/); avalanche `0xe98aec...1cf0be` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x19844c...33f0b9`](./contracts/avalanche-43114/0x19844c931406cc9bd237aa3e169310978a33f0b9/); avalanche `0xfe8428...b365df` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x21760a...2d66b2`](./contracts/avalanche-43114/0x21760a0269c99a711269b60df59d9a35dc2d66b2/); avalanche `0xc200e6...c60524` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x2e694d...8256d0`](./contracts/avalanche-43114/0x2e694d02cf3da855b19ee31f5f61c0b8608256d0/); avalanche `0x9aebf5...1c2f8b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3755df...ed11c3`](./contracts/avalanche-43114/0x3755df8a937e9505af7b14d8b13e83f133ed11c3/); avalanche `0xf7f32f...54112e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3d3921...84ecd3`](./contracts/avalanche-43114/0x3d39212cbca54627c0fc4e27aa316d10c184ecd3/); avalanche `0x98e329...afd615` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 3 deployments: avalanche [`0x516ab0...789f85`](./contracts/avalanche-43114/0x516ab0f04dd90ee755f5ea2533888b5333789f85/); avalanche `0x6b1915...bfd9da`; avalanche `0x8ba179...978fdc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 3 deployments: avalanche [`0x53d569...4ae480`](./contracts/avalanche-43114/0x53d569bc4b37adbbdb6ab447d92adf42514ae480/); avalanche `0xb603a7...ca37d7`; avalanche `0xb88897...2af336` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x553901...6f9988`](./contracts/avalanche-43114/0x553901e346fcadebfd15adffd2ba3c58ac6f9988/); avalanche `0xf19a0f...8bfb9d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x58318f...9631d1`](./contracts/avalanche-43114/0x58318fd6adb8caea00727ee4f579d48e6c9631d1/); avalanche `0x631c0e...88b41b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6499d2...be40d6`](./contracts/avalanche-43114/0x6499d25b850fa00da2fa33d9ef036b33b4be40d6/); avalanche `0xca756e...23afde` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6c4acf...7baf2f`](./contracts/avalanche-43114/0x6c4acf40b81b15643ab58ac145a8b043497baf2f/); avalanche `0x9d45e1...ee0bb0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6cdc88...5f8c3e`](./contracts/avalanche-43114/0x6cdc88fdd9695fce81c3d09471fed66d0e5f8c3e/); avalanche `0xdc469e...a15c84` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x73c4b0...e8cdbc`](./contracts/avalanche-43114/0x73c4b095b0cb52cb02db918138324f8009e8cdbc/); avalanche `0xea6f59...03219b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x83700b...d0b21f`](./contracts/avalanche-43114/0x83700b8809754f67f824532ee167ef7880d0b21f/); avalanche `0xc35af3...d3f422` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x86cf4b...84428a`](./contracts/avalanche-43114/0x86cf4b676056aedfc8ffeba0cffd047f7b84428a/); avalanche `0xdca25b...3df21e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x86eba1...f753e3`](./contracts/avalanche-43114/0x86eba1b766667b99dd4f9a40d01960e36cf753e3/); avalanche `0xacc34a...06479b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x8f6c94...c287c4`](./contracts/avalanche-43114/0x8f6c94dc1ab34bb9586a0c15cfb7cb4d31c287c4/); avalanche `0xa9257e...b5431b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x9e95ef...ca6552`](./contracts/avalanche-43114/0x9e95ef7d8b87708641923c48c4eb298ed7ca6552/); avalanche `0xe46d24...67b5e1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0xa46552...951c68`](./contracts/avalanche-43114/0xa46552eda2f84fe843a66bbe244515bbfa951c68/); avalanche `0xc9384c...2e7012` | ⚠️ Unaudited |
| veNFTAPI | token | avalanche | n/a | [`0xb3629c...b35de9`](./contracts/avalanche-43114/0xb3629c89ed9cb172a3fba66dfdf8c06a85b35de9/) | ⚠️ Unaudited |
| VoterV3 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6bd81e...0c4525`](./contracts/avalanche-43114/0x6bd81e7eafa4b21d5ad069b452ab4b8bb40c4525/); avalanche `0xe30d0c...64d9e3` | ⚠️ Unaudited |
| VotingEscrowSplitHelper | operational_periphery | avalanche | n/a | [`0x1d67c7...500e6f`](./contracts/avalanche-43114/0x1d67c7729135583f2ee11fd34c7921a8ae500e6f/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | avalanche | n/a | `0x038cba...0268bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x109309...2a82aa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x27ae8c...02c0f0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x376021...0ab3d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4cd133...e520f2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x52ae67...be8d21` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5b0f5a...5929e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5b2c91...c517bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6cab65...f993d2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7dbab3...2f4ff4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x88a49c...2a9cd0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x91b8c8...4f7736` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9b0c4d...20b47b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9cc445...50104f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa9ba8b...b34430` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb8f679...f98f45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd62c86...3f01d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd6b661...0049b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe168fc...2f06c6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe809b7...4d2a19` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe946a9...f2f981` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xec9099...3033d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xff39c5...3b2fb6` | ❓ Unverified |

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
| avalanche | [`0x64b9b4...6d0696`](./contracts/avalanche-43114/0x64b9b45dbf624d63d15c04c576faf5c8366d0696/) | AlgebraPool | core_logic | $372,881.52 | Verified native implementation with $372,881.52 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x580be5...294bfc`](./contracts/avalanche-43114/0x580be59a0461eae3414352c0abd88e485a294bfc/) | AlgebraCustomPoolEntryPoint | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x01a8a0...77271a`](./contracts/avalanche-43114/0x01a8a00a6fc8106b94f84aabaef689fd0d77271a/) | AlgebraEternalFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x512eb7...5e9e5f`](./contracts/avalanche-43114/0x512eb749541b7cf294be882d636218c84a5e9e5f/) | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9df945...5be48e`](./contracts/avalanche-43114/0x9df9457d5c55b4c880dc86c67ae323b00b5be48e/) | AlgebraInterfaceMulticall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9b2441...8dba1e`](./contracts/avalanche-43114/0x9b2441037e286d5bf9456a3be7b5273fe28dba1e/) | AlgebraPoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdc0b5d...d079b3`](./contracts/avalanche-43114/0xdc0b5db6f5f957ad0ac5e0af8a2c084077d079b3/) | AlgebraVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5af551...1176ff`](./contracts/avalanche-43114/0x5af551ba1bf743978b42d4e133bff8b6231176ff/) | BasePluginV3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3935f7...e32d43`](./contracts/avalanche-43114/0x3935f7e11e33e676b6108f6e86ab8578d8e32d43/) | BlackholePairAPIV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x8c2207...b8888b`](./contracts/avalanche-43114/0x8c2207c82b54d37b0d3ceb80a50a3392aeb8888b/) | BridgeFeeWrapper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa47ad2...b3a449`](./contracts/avalanche-43114/0xa47ad2c95fae476a73b85a355a5855adb4b3a449/) | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x233433...3adc02`](./contracts/avalanche-43114/0x2334338da0bb192dcfc33356f5d1cc6bc03adc02/) | FeeDiscountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6c6630...c66de5`](./contracts/avalanche-43114/0x6c6630b76c7d2b0269cf66fd4425491d9ec66de5/) | GaugeOwner | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd9c5a9...bcc6f1`](./contracts/avalanche-43114/0xd9c5a9b5fe4006cd0fce1f4020beb9020cbcc6f1/) | GSCORE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x469412...519e13`](./contracts/avalanche-43114/0x4694123cbe1d3d1f72ccc4d68122ddfb5a519e13/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3fed01...252146`](./contracts/avalanche-43114/0x3fed017ec0f5517cdf2e8a9a4156c64d74252146/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x14e4a5...abd573`](./contracts/avalanche-43114/0x14e4a5bed2e5e688ee1a5ca3a4914250d1abd573/) | Pair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa053ca...e09a22`](./contracts/avalanche-43114/0xa053ca9c51524d67e5e435c62031ad2031e09a22/) | PairBootstrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xecbbc0...7863d3`](./contracts/avalanche-43114/0xecbbc09d3f52a2133bed0304ed0dcdf4b67863d3/) | PluginV3Deployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7a88c4...48d214`](./contracts/avalanche-43114/0x7a88c46740fdfe446dd6ad97cc0a94716848d214/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3e182b...9eb689`](./contracts/avalanche-43114/0x3e182bcf14be6142b9217847ec1112e3c39eb689/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd68b9c...9636e1`](./contracts/avalanche-43114/0xd68b9cf89ffc4432977bdb3f9e2c02148d9636e1/) | RouterHelperZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x275e24...d82cb5`](./contracts/avalanche-43114/0x275e246c0f2a76a5ba4b3e13198ef92381d82cb5/) | SecurityRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xabfc48...19709d`](./contracts/avalanche-43114/0xabfc48e8bed7b26762745f3139555f320119709d/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe66aae...4a822e`](./contracts/avalanche-43114/0xe66aae9cb5ab27ec6662c0ec9b9b28764d4a822e/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb3629c...b35de9`](./contracts/avalanche-43114/0xb3629c89ed9cb172a3fba66dfdf8c06a85b35de9/) | veNFTAPI | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1d67c7...500e6f`](./contracts/avalanche-43114/0x1d67c7729135583f2ee11fd34c7921a8ae500e6f/) | VotingEscrowSplitHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 43 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 52 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=17

Fork inheritance lineage and inherited audits are included when available.
