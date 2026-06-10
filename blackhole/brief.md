# Agentic Audit Brief: Blackhole

⚠️ Lifecycle status: DECLINING - TVL dropped 31.5% over 90 days

## Project Overview

- Project: Blackhole (`blackhole`)
- Website: [https://blackhole.xyz/](https://blackhole.xyz/)
- Lifecycle: declining (Tier 0, 89.8% below peak)
- Generated: 2026-06-10T20:59:00.978Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: avalanche
- Contract surface: 86 unique implementations (144 raw deployments)
- DeFi Llama TVL: $29,689,404.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Blackhole is an Avalanche decentralized exchange protocol with both AMM and concentrated-liquidity AMM (CLMM) components. It supports token swaps, liquidity pool creation and management, LP position infrastructure, and gauge-based incentive mechanisms for liquidity providers.

### Architecture

The Blackhole CLMM family relies on a set of factory contracts (AlgebraFactory, PairFactory, GaugeFactoryCL) to deploy pool and gauge instances, while the RouterV2 facilitates user swaps. Supporting infrastructure includes multiple CustomPoolDeployer proxies for pool creation and TransparentUpgradeableProxy instances for upgradeability across core components.

## Audit Coverage Summary

- Verified implementations audited: 14/45 (31.1%)
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 41
- Unique implementations: 86
- Raw deployments: 144
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (fresh)
- Staleness: 1 fresh, 2 aging, 0 stale, 0 unknown
- Tier 1 coverage: 31.1% (Code4rena)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 14 | 31.1% | 2025-07 |
| PeckShield | Tier 2 | 4 | 8.9% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AlgebraPoolAPIStorage | core_logic | avalanche | 2 deployments: avalanche [`0x263625...27c84e`](./contracts/avalanche-43114/0x263625c4dff7a2c7d64e141ed45189681a27c84e/); avalanche `0xa90bc0...32cb7f` | ✅ Audited |
| Black | unknown | avalanche | [`0xcd94a8...1c43f6`](./contracts/avalanche-43114/0xcd94a87696fac69edae3a70fe5725307ae1c43f6/) | ✅ Audited |
| GaugeFactory | operational_periphery | avalanche | 2 deployments: avalanche [`0xaecb52...f50586`](./contracts/avalanche-43114/0xaecb52909176a46e2b3114dc1e9c4ddf4ef50586/); avalanche `0xe46d24...67b5e1` | ✅ Audited |
| GaugeFactoryCL | operational_periphery | avalanche | 2 deployments: avalanche [`0x6b6a3d...a6ea5e`](./contracts/avalanche-43114/0x6b6a3d5a1c536ace1d761685af241b2cb7a6ea5e/); avalanche `0x824dbc...3f0296` | ✅ Audited |
| GaugeManager | operational_periphery | avalanche | 3 deployments: avalanche [`0x59aa17...76cbf6`](./contracts/avalanche-43114/0x59aa177312ff6bdf39c8af6f46dae217bf76cbf6/); avalanche `0x66c665...974091`; avalanche `0x93c601...dc0b8f` | ✅ Audited |
| GenesisPoolFactory | registry | avalanche | [`0xdeb50a...53260f`](./contracts/avalanche-43114/0xdeb50ac7a0a03332626b3c45eb20e7310653260f/) | ✅ Audited |
| GenesisPoolManager | core_logic | avalanche | [`0x0eb1e1...4840dd`](./contracts/avalanche-43114/0x0eb1e103116b8ec5f13a72f6943440340c4840dd/) | ✅ Audited |
| PairFactory | registry | avalanche | 2 deployments: avalanche [`0x0dea37...ad26f8`](./contracts/avalanche-43114/0x0dea372e70350d9c298a3825f0249fe2dbad26f8/); avalanche `0xfe9260...8c265c` | ✅ Audited |
| PairGenerator | unknown | avalanche | [`0x34098b...9afe1c`](./contracts/avalanche-43114/0x34098b39ec2e2c1a8f815bb8fa840d0d389afe1c/) | ✅ Audited |
| PermissionsRegistry | registry | avalanche | [`0x751b71...1a65ff`](./contracts/avalanche-43114/0x751b7152aa11e39216cd00c0f65311efdf1a65ff/) | ✅ Audited |
| RewardsDistributor | operational_periphery | avalanche | [`0x7c7bd8...83ba28`](./contracts/avalanche-43114/0x7c7bd86baf240db3dbcc3f7a22b35c5baa83ba28/) | ✅ Audited |
| RouterV2 | adapter | avalanche | 4 deployments: avalanche [`0x04e1de...212fec`](./contracts/avalanche-43114/0x04e1dee021cd12bba022a72806441b43d8212fec/); avalanche `0x9eed16...f3c111`; avalanche `0xcad684...c01b01`; avalanche `0xd1447c...bda08a` | ✅ Audited |
| VoterV3 | unknown | avalanche | [`0x6bd81e...0c4525`](./contracts/avalanche-43114/0x6bd81e7eafa4b21d5ad069b452ab4b8bb40c4525/) | ✅ Audited |
| VotingEscrow | operational_periphery | avalanche | [`0xeac562...9ad763`](./contracts/avalanche-43114/0xeac562811cc6abdbb2c9ee88719eca4ee79ad763/) | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AlgebraCustomPoolEntryPoint | core_logic | avalanche | [`0x580be5...294bfc`](./contracts/avalanche-43114/0x580be59a0461eae3414352c0abd88e485a294bfc/) | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | avalanche | 3 deployments: avalanche [`0x01a8a0...77271a`](./contracts/avalanche-43114/0x01a8a00a6fc8106b94f84aabaef689fd0d77271a/); avalanche `0x9c70be...248f5c`; avalanche `0xb6180a...c40fe5` | ⚠️ Unaudited |
| AlgebraFactory | registry | avalanche | [`0x512eb7...5e9e5f`](./contracts/avalanche-43114/0x512eb749541b7cf294be882d636218c84a5e9e5f/) | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | avalanche | [`0x9df945...5be48e`](./contracts/avalanche-43114/0x9df9457d5c55b4c880dc86c67ae323b00b5be48e/) | ⚠️ Unaudited |
| AlgebraPoolAPI | core_logic | avalanche | 2 deployments: avalanche [`0x16766b...9c99ca`](./contracts/avalanche-43114/0x16766b107b5716b2de18bbc8587b0ac7dc9c99ca/); avalanche `0xf0274c...485b99` | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | avalanche | [`0x9b2441...8dba1e`](./contracts/avalanche-43114/0x9b2441037e286d5bf9456a3be7b5273fe28dba1e/) | ⚠️ Unaudited |
| AlgebraVaultFactory | registry | avalanche | [`0xdc0b5d...d079b3`](./contracts/avalanche-43114/0xdc0b5db6f5f957ad0ac5e0af8a2c084077d079b3/) | ⚠️ Unaudited |
| BasePluginV3Factory | registry | avalanche | 2 deployments: avalanche [`0x5af551...1176ff`](./contracts/avalanche-43114/0x5af551ba1bf743978b42d4e133bff8b6231176ff/); avalanche `0x74544e...e52ed0` | ⚠️ Unaudited |
| BlackholePairAPIV2 | unknown | avalanche | [`0x3935f7...e32d43`](./contracts/avalanche-43114/0x3935f7e11e33e676b6108f6e86ab8578d8e32d43/) | ⚠️ Unaudited |
| BridgeFeeWrapper | operational_periphery | avalanche | [`0x8c2207...b8888b`](./contracts/avalanche-43114/0x8c2207c82b54d37b0d3ceb80a50a3392aeb8888b/) | ⚠️ Unaudited |
| CustomPoolDeployer | core_logic | avalanche | 11 deployments: avalanche [`0x0aff49...76efa2`](./contracts/avalanche-43114/0x0aff494476dc74cf7bb5dd005c2b1fe7be76efa2/); avalanche `0x14e4e3...e51cc8`; avalanche `0x43c4b7...4bf8db`; avalanche `0x48b1d4...133ace`; avalanche `0x58b050...c56994`; avalanche `0x5d433a...960584`; avalanche `0x5ef387...1eff43`; avalanche `0x9f52f2...d4d74f`; avalanche `0xc046f2...221aee`; avalanche `0xdcfccf...125d29`; avalanche `0xf9221d...45d767` | ⚠️ Unaudited |
| FarmingCenter | unknown | avalanche | 3 deployments: avalanche [`0xa47ad2...b3a449`](./contracts/avalanche-43114/0xa47ad2c95fae476a73b85a355a5855adb4b3a449/); avalanche `0xcbf15e...0932ab`; avalanche `0xcecc64...f45541` | ⚠️ Unaudited |
| FeeDiscountRegistry | registry | avalanche | 2 deployments: avalanche [`0x233433...3adc02`](./contracts/avalanche-43114/0x2334338da0bb192dcfc33356f5d1cc6bc03adc02/); avalanche `0x6a8591...106aa9` | ⚠️ Unaudited |
| GaugeOwner | operational_periphery | avalanche | 2 deployments: avalanche [`0x6c6630...c66de5`](./contracts/avalanche-43114/0x6c6630b76c7d2b0269cf66fd4425491d9ec66de5/); avalanche `0xdd3589...f3f946` | ⚠️ Unaudited |
| GSCORE | unknown | avalanche | [`0xd9c5a9...bcc6f1`](./contracts/avalanche-43114/0xd9c5a9b5fe4006cd0fce1f4020beb9020cbcc6f1/) | ⚠️ Unaudited |
| NFTDescriptor | token | avalanche | 2 deployments: avalanche [`0x469412...519e13`](./contracts/avalanche-43114/0x4694123cbe1d3d1f72ccc4d68122ddfb5a519e13/); avalanche `0xf91d96...ec3485` | ⚠️ Unaudited |
| NonfungiblePositionManager | operational_periphery | avalanche | 3 deployments: avalanche [`0x3fed01...252146`](./contracts/avalanche-43114/0x3fed017ec0f5517cdf2e8a9a4156c64d74252146/); avalanche `0xbf5b19...9b9d70`; avalanche `0xfd1c72...329545` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | avalanche | 2 deployments: avalanche [`0x23b216...9a81e7`](./contracts/avalanche-43114/0x23b216788e78c8a4755473b8b2ed7be7929a81e7/); avalanche `0x8ce534...f8830e` | ⚠️ Unaudited |
| PairBootstrapper | unknown | avalanche | 2 deployments: avalanche [`0xa053ca...e09a22`](./contracts/avalanche-43114/0xa053ca9c51524d67e5e435c62031ad2031e09a22/); avalanche `0xa589c8...b2bd8d` | ⚠️ Unaudited |
| PluginV3Deployer | unknown | avalanche | 2 deployments: avalanche [`0xecbbc0...7863d3`](./contracts/avalanche-43114/0xecbbc09d3f52a2133bed0304ed0dcdf4b67863d3/); avalanche `0xefc098...bde662` | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | [`0xd76306...c74bed`](./contracts/avalanche-43114/0xd763061cc3015642ca104496107bc69944c74bed/) | ⚠️ Unaudited |
| Quoter | periphery | avalanche | [`0x7a88c4...48d214`](./contracts/avalanche-43114/0x7a88c46740fdfe446dd6ad97cc0a94716848d214/) | ⚠️ Unaudited |
| QuoterV2 | periphery | avalanche | [`0x3e182b...9eb689`](./contracts/avalanche-43114/0x3e182bcf14be6142b9217847ec1112e3c39eb689/) | ⚠️ Unaudited |
| RouterHelper | adapter | avalanche | [`0xb88897...2af336`](./contracts/avalanche-43114/0xb888979122365cee81d274e4bb6c970ce42af336/) | ⚠️ Unaudited |
| RouterHelperZap | adapter | avalanche | [`0xd68b9c...9636e1`](./contracts/avalanche-43114/0xd68b9cf89ffc4432977bdb3f9e2c02148d9636e1/) | ⚠️ Unaudited |
| SecurityRegistry | registry | avalanche | 2 deployments: avalanche [`0x275e24...d82cb5`](./contracts/avalanche-43114/0x275e246c0f2a76a5ba4b3e13198ef92381d82cb5/); avalanche `0xd2fe84...537b02` | ⚠️ Unaudited |
| SwapRouter | adapter | avalanche | [`0xabfc48...19709d`](./contracts/avalanche-43114/0xabfc48e8bed7b26762745f3139555f320119709d/) | ⚠️ Unaudited |
| TickLens | periphery | avalanche | [`0xe66aae...4a822e`](./contracts/avalanche-43114/0xe66aae9cb5ab27ec6662c0ec9b9b28764d4a822e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | 25 deployments: avalanche [`0x1112f6...9dfec3`](./contracts/avalanche-43114/0x1112f67a7098d80c35fcd139fa951496749dfec3/); avalanche `0x18bf86...7d001f`; avalanche `0x3755df...ed11c3`; avalanche `0x516ab0...789f85`; avalanche `0x53d569...4ae480`; avalanche `0x553901...6f9988`; avalanche `0x58318f...9631d1`; avalanche `0x6499d2...be40d6`; avalanche `0x6cdc88...5f8c3e`; avalanche `0x83700b...d0b21f`; avalanche `0x8ba179...978fdc`; avalanche `0x98e329...afd615`; avalanche `0x9aebf5...1c2f8b`; avalanche `0x9d45e1...ee0bb0`; avalanche `0x9e95ef...ca6552`; avalanche `0xa9257e...b5431b`; avalanche `0xacc34a...06479b`; avalanche `0xb603a7...ca37d7`; avalanche `0xc200e6...c60524`; avalanche `0xc9384c...2e7012`; avalanche `0xca756e...23afde`; avalanche `0xdca25b...3df21e`; avalanche `0xe30d0c...64d9e3`; avalanche `0xea6f59...03219b`; avalanche `0xfe8428...b365df` | ⚠️ Unaudited |
| veNFTAPI | token | avalanche | [`0xb3629c...b35de9`](./contracts/avalanche-43114/0xb3629c89ed9cb172a3fba66dfdf8c06a85b35de9/) | ⚠️ Unaudited |
| VotingEscrowSplitHelper | operational_periphery | avalanche | [`0x1d67c7...500e6f`](./contracts/avalanche-43114/0x1d67c7729135583f2ee11fd34c7921a8ae500e6f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (41)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | `0x038cba...0268bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x109309...2a82aa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x19844c...33f0b9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x21760a...2d66b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x27ae8c...02c0f0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2e694d...8256d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x376021...0ab3d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3d3921...84ecd3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4cd133...e520f2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x52ae67...be8d21` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5b0f5a...5929e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5b2c91...c517bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x631c0e...88b41b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6b1915...bfd9da` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6c4acf...7baf2f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6cab65...f993d2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x73c4b0...e8cdbc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7dbab3...2f4ff4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x86cf4b...84428a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x86eba1...f753e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x88a49c...2a9cd0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8f6c94...c287c4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x91b8c8...4f7736` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9b0c4d...20b47b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9cc445...50104f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa46552...951c68` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa9ba8b...b34430` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb8f679...f98f45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc35af3...d3f422` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd62c86...3f01d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd6b661...0049b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdc469e...a15c84` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe168fc...2f06c6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe809b7...4d2a19` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe93b68...e5fc95` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe946a9...f2f981` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe98aec...1cf0be` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xec9099...3033d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf19a0f...8bfb9d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf7f32f...54112e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xff39c5...3b2fb6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [link](https://security-audit-links.s3.us-east-1.amazonaws.com/PeckShield-Audit-Report-Blackhole-AlgebraPools-v1.0.pdf) | PeckShield | Audit | 2025-05 | aging | Direct | contract_name | 7 | high |
| [Report](https://security-audit-links.s3.us-east-1.amazonaws.com/Code4rena+Audit-Blackhole-report.pdf) | Code4rena | Contest | 2025-06 | aging | Direct | contract_name | 23 | high |
| [link](https://security-audit-links.s3.us-east-1.amazonaws.com/Addendum+to+Code4rena+Audit+Report.pdf) | Code4rena | Contest | 2025-07 | fresh | Direct | contract_name | 8 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x580be5...294bfc`](./contracts/avalanche-43114/0x580be59a0461eae3414352c0abd88e485a294bfc/) | AlgebraCustomPoolEntryPoint | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
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
| avalanche | [`0x469412...519e13`](./contracts/avalanche-43114/0x4694123cbe1d3d1f72ccc4d68122ddfb5a519e13/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3fed01...252146`](./contracts/avalanche-43114/0x3fed017ec0f5517cdf2e8a9a4156c64d74252146/) | NonfungiblePositionManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x23b216...9a81e7`](./contracts/avalanche-43114/0x23b216788e78c8a4755473b8b2ed7be7929a81e7/) | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa053ca...e09a22`](./contracts/avalanche-43114/0xa053ca9c51524d67e5e435c62031ad2031e09a22/) | PairBootstrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xecbbc0...7863d3`](./contracts/avalanche-43114/0xecbbc09d3f52a2133bed0304ed0dcdf4b67863d3/) | PluginV3Deployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7a88c4...48d214`](./contracts/avalanche-43114/0x7a88c46740fdfe446dd6ad97cc0a94716848d214/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3e182b...9eb689`](./contracts/avalanche-43114/0x3e182bcf14be6142b9217847ec1112e3c39eb689/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb88897...2af336`](./contracts/avalanche-43114/0xb888979122365cee81d274e4bb6c970ce42af336/) | RouterHelper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd68b9c...9636e1`](./contracts/avalanche-43114/0xd68b9cf89ffc4432977bdb3f9e2c02148d9636e1/) | RouterHelperZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x275e24...d82cb5`](./contracts/avalanche-43114/0x275e246c0f2a76a5ba4b3e13198ef92381d82cb5/) | SecurityRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xabfc48...19709d`](./contracts/avalanche-43114/0xabfc48e8bed7b26762745f3139555f320119709d/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe66aae...4a822e`](./contracts/avalanche-43114/0xe66aae9cb5ab27ec6662c0ec9b9b28764d4a822e/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb3629c...b35de9`](./contracts/avalanche-43114/0xb3629c89ed9cb172a3fba66dfdf8c06a85b35de9/) | veNFTAPI | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1d67c7...500e6f`](./contracts/avalanche-43114/0x1d67c7729135583f2ee11fd34c7921a8ae500e6f/) | VotingEscrowSplitHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 65 |
| upstream | 3 |
| standard_library | 5 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2, medium=1
- Match method counts: extraction_exact=38

Fork inheritance lineage and inherited audits are included when available.
