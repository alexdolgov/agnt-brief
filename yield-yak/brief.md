# Agentic Audit Brief: Yield Yak

⚠️ Lifecycle status: DECLINING - TVL dropped 18.5% over 90 days

## Project Overview

- Project: Yield Yak (`yield-yak`)
- Website: [https://yieldyak.com](https://yieldyak.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-12T19:22:29.041Z
- Pipeline run: v2-pipeline-2026-06-12-546062-9988
- Chains: arbitrum, avalanche, mantle
- Contract surface: 64 unique implementations (131 raw deployments)
- DeFi Llama TVL: $13,741,669.00
- On-chain TVL (included contracts): $772,189.69
- TVL by chain: Avalanche $771,608.06 | Mantle $581.64

## Project Description

Yield Yak is an Avalanche-focused DeFi yield optimizer that provides set-and-forget, autocompounding yield vaults. Users deposit assets into vaults that automatically reinvest rewards to maximize returns. The protocol also offers a liquid staking token for AVAX.

### Architecture

The Yield Yak Aggregator and Staked Avax families share the YAK token for governance and incentives. The YAK token is used across both families, with staking mechanisms (YyStaking) supporting the aggregator's tokenomics.

## Audit Coverage Summary

- Verified implementations audited: 0/28 (0.0%)
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 64
- Raw deployments: 131
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $772,189.69
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $772,189.69 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| YakToken | token | avalanche | [`0x59414b...776ec7`](./contracts/avalanche-43114/0x59414b3089ce2af0010e7523dea7e2b35d776ec7/) | ⚠️ Unaudited |
| ERC20InterfaceUpgradable | token | avalanche | 6 deployments: avalanche [`0x08b201...fa4142`](./contracts/avalanche-43114/0x08b201c31201e1b75ad6c18a8d70492259fa4142/); avalanche `0x9835c0...653d20`; avalanche `0xcf9216...4af488`; avalanche `0xd7c3ec...a33227`; avalanche `0xf7d928...965d27`; avalanche `0xf94534...d65390` | ⚠️ Unaudited |
| YakTokenProxyOFTV2 | token | avalanche | [`0x656d33...18a8d9`](./contracts/avalanche-43114/0x656d33bfb74863e7ab1f5496a7a86a717a18a8d9/) | ⚠️ Unaudited |
| YakTokenOFTV2 | token | mantle | [`0x7f4db3...f13696`](./contracts/mantle-5000/0x7f4db37d7beb31f445307782bc3da0f18df13696/) | ⚠️ Unaudited |
| MoeStrategy | core_logic | mantle | 21 deployments: mantle [`0x029a64...d03397`](./contracts/mantle-5000/0x029a64e090f906944d9c7ec39da107081fd03397/); mantle `0x07a009...773663`; mantle `0x0af312...3e577c`; mantle `0x0b7efc...e8b781`; mantle `0x0f8403...80620a`; mantle `0x187a95...b54981`; mantle `0x398e8e...a50a26`; mantle `0x430a75...1993c2`; mantle `0x4373e4...ec7833`; mantle `0x49e01a...5c7e7a`; mantle `0x53290a...b3faf0`; mantle `0x6a7828...14ef0e`; mantle `0x6eda40...50b66c`; mantle `0x73ae78...1e8529`; mantle `0x7c5456...7b6777`; mantle `0x7e0c01...7eb124`; mantle `0x8b3df8...3054c5`; mantle `0xc47c50...106aff`; mantle `0xe7705d...086ed7`; mantle `0xeb9045...817bd5`; mantle `0xf871d8...0f2017` | ⚠️ Unaudited |
| AlgebraIntegralAdapter | adapter | avalanche | [`0xe3d2c1...b24d6d`](./contracts/avalanche-43114/0xe3d2c10c2122e6f02c702064015554d468b24d6d/) | ⚠️ Unaudited |
| AmplificationUtils | unknown | avalanche | 2 deployments: avalanche [`0x0220ba...e9b72b`](./contracts/avalanche-43114/0x0220ba3dcecf50fa376cce84d1d9ecc0bee9b72b/); avalanche `0xbb4c9b...00daa8` | ⚠️ Unaudited |
| ArenaAdapter | adapter | avalanche | [`0xef3cce...76f13c`](./contracts/avalanche-43114/0xef3ccefb2fe23e9d0aa7b578724b92f59f76f13c/) | ⚠️ Unaudited |
| BlackholeAdapter | adapter | avalanche | [`0x123577...d8a651`](./contracts/avalanche-43114/0x123577a1560004d4432dc5e31f97363d0cd8a651/) | ⚠️ Unaudited |
| DataStoreUtils | unknown | avalanche | 2 deployments: avalanche [`0xb25a42...fdc570`](./contracts/avalanche-43114/0xb25a4298f51d6028b50df845c3cbf49f4cfdc570/); avalanche `0xc7332d...f8f9fb` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | avalanche | 2 deployments: avalanche [`0x4948d8...2284fa`](./contracts/avalanche-43114/0x4948d893b6c71fc1736789b8fef90907ef2284fa/); avalanche `0xd8d00f...a3fb11` | ⚠️ Unaudited |
| gAVAX | unknown | avalanche | 6 deployments: avalanche [`0x1cfbdc...27b24b`](./contracts/avalanche-43114/0x1cfbdc5468f7d10d136c3d92317d50294127b24b/); avalanche `0x1f3b51...fa8015`; avalanche `0x47d3f5...78ef1f`; avalanche `0x4b181c...bd0909`; avalanche `0x6026a8...2d9808`; avalanche `0x667f9d...38e1b5` | ⚠️ Unaudited |
| GeodeUtils | unknown | avalanche | 3 deployments: avalanche [`0x76e42b...59fa5b`](./contracts/avalanche-43114/0x76e42b4c138e03f4e1719ca5cd1fec13e459fa5b/); avalanche `0x9a85a2...296baf`; avalanche `0xb72e3b...2b85b9` | ⚠️ Unaudited |
| LB2WhitelistAdapter | adapter | avalanche | [`0xe76329...46750c`](./contracts/avalanche-43114/0xe7632926806e9513708232bcda8f70356646750c/) | ⚠️ Unaudited |
| LendleStrategy | core_logic | mantle | 7 deployments: mantle [`0x1a7d36...7163e5`](./contracts/mantle-5000/0x1a7d36d12e12abfa91e8da437bda4c86657163e5/); mantle `0x298981...9816c3`; mantle `0x485240...1ee151`; mantle `0x6ea142...c762e5`; mantle `0xa75af2...9d28c9`; mantle `0xf4af1b...430055`; mantle `0xfa96ca...de118f` | ⚠️ Unaudited |
| LPToken | token | avalanche | 5 deployments: avalanche [`0x71b0cd...0dbe8c`](./contracts/avalanche-43114/0x71b0cd5c4db483ae8a09df0f83f69bac400dbe8c/); avalanche `0xce74a5...bcca50`; avalanche `0xcf0b89...c82ee8`; avalanche `0xf15bf8...327e2a`; avalanche `0xfe2fd3...7d3316` | ⚠️ Unaudited |
| MasterYak | unknown | avalanche | [`0x0cf605...5daf5f`](./contracts/avalanche-43114/0x0cf605484a512d3f3435fed77ab5ddc0525daf5f/) | ⚠️ Unaudited |
| Portal | unknown | avalanche | 15 deployments: avalanche [`0x115fe1...a07e63`](./contracts/avalanche-43114/0x115fe12263515047d2f87f1a04870f33afa07e63/); avalanche `0x220f1c...da9882`; avalanche `0x280b64...bfc4b7`; avalanche `0x360410...bcb073`; avalanche `0x3c6166...a65444`; avalanche `0x4fe8c6...56a8c8`; avalanche `0x5a08ac...66afba`; avalanche `0x647845...13dbd0`; avalanche `0x89cb6a...acfb8c`; avalanche `0x8edd2a...a4f791`; avalanche `0xad9b12...3597ee`; avalanche `0xc4233d...b28395`; avalanche `0xcf5162...93958b`; avalanche `0xd8cd2c...313de6`; avalanche `0xfbddb3...4e418a` | ⚠️ Unaudited |
| SAvaxAdapter | adapter | avalanche | [`0x2f6ca0...faa80b`](./contracts/avalanche-43114/0x2f6ca0a98cf8f7d407e98993fd576f70f0faa80b/) | ⚠️ Unaudited |
| SimpleRouter | adapter | mantle | 2 deployments: mantle [`0xb3d469...0456f2`](./contracts/mantle-5000/0xb3d469b9073a9066642a8f9b0f69c4e8e50456f2/); mantle `0xf321fd...8b1196` | ⚠️ Unaudited |
| StakeUtils | unknown | avalanche | 4 deployments: avalanche [`0x1ea723...692332`](./contracts/avalanche-43114/0x1ea72390e12cbe0da8304ab19b6e521a31692332/); avalanche `0x8ef0bf...35be8a`; avalanche `0xbf4c04...46f218`; avalanche `0xce7cb2...f1c6af` | ⚠️ Unaudited |
| Swap | unknown | avalanche | 3 deployments: avalanche [`0x577a73...355f09`](./contracts/avalanche-43114/0x577a73075f35a0a013afc651126f714284355f09/); avalanche `0xcd8951...88b3ac`; avalanche `0xe36d71...471e10` | ⚠️ Unaudited |
| SwapUtils | unknown | avalanche | 2 deployments: avalanche [`0x29be47...702c09`](./contracts/avalanche-43114/0x29be4798db7eb77d20ed35ad642da852ae702c09/); avalanche `0xca4e42...726b51` | ⚠️ Unaudited |
| UnilikeAdapter | adapter | avalanche | [`0xdb6668...b90148`](./contracts/avalanche-43114/0xdb66686ac8bea67400cf9e5dd6c8849575b90148/) | ⚠️ Unaudited |
| UniswapV3Adapter | adapter | avalanche | [`0x29decc...2acacd`](./contracts/avalanche-43114/0x29deccd2f4fdb046d24585d01b1dcdfb902acacd/) | ⚠️ Unaudited |
| WAvaxAdapter | adapter | avalanche | [`0x5c4d23...18d0b1`](./contracts/avalanche-43114/0x5c4d23fd18fc4128f77426f42237acfce618d0b1/) | ⚠️ Unaudited |
| YakRouter | adapter | avalanche | [`0xc4729e...77488c`](./contracts/avalanche-43114/0xc4729e56b831d74bbc18797e0e17a295fa77488c/) | ⚠️ Unaudited |
| YyStaking | unknown | arbitrum | 2 deployments: mantle `0xf54d65...1a6ce1`; arbitrum [`0xbb82b4...1f3403`](./contracts/arbitrum-42161/0xbb82b43bf2057b804253d5db8c18a647fc1f3403/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | mantle | `0x30d703...102961` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x87a416...5c43bf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xf0e9be...d2b7dd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x00b421...ab49f4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x030b6d...72694c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x05b254...10f3f9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1254f5...b389a3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x204bc0...1dfb98` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2c5f49...69d361` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x370a64...e46603` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x431ebd...1bf077` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x452fe6...8e8bf1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x593533...bdcfb7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x59e3dc...57f730` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5c46bf...e824e5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6d9038...cf5860` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x72cf49...01a064` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x79632b...579c20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7a0568...5c8406` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7de32c...603046` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x831c84...fbdd30` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x892573...3b9770` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa7f6db...d1ce55` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb28094...563697` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb83556...5fdae2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbd80ea...40862f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc86ce0...0b7fe8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcc7eb8...b6f887` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd310f5...f759ef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd7415c...489982` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdd63ef...e87815` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdd9f6e...789b39` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xde324f...a4dc13` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf48704...c31736` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf9f824...26261e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xff250c...737d98` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/Se7en-Seas/boring-vault/blob/main/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0xmacro-boring-vault-arctic-1.pdf](https://github.com/Se7en-Seas/boring-vault/blob/main/audit/0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/Se7en-Seas/boring-vault/blob/main/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x59414b...776ec7`](./contracts/avalanche-43114/0x59414b3089ce2af0010e7523dea7e2b35d776ec7/) | YakToken | token | $410,284.77 | Verified native implementation with $410,284.77 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x656d33...18a8d9`](./contracts/avalanche-43114/0x656d33bfb74863e7ab1f5496a7a86a717a18a8d9/) | YakTokenProxyOFTV2 | token | $2,590.83 | Verified native implementation with $2,590.83 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x7f4db3...f13696`](./contracts/mantle-5000/0x7f4db37d7beb31f445307782bc3da0f18df13696/) | YakTokenOFTV2 | token | $581.24 | Verified native implementation with $581.24 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x029a64...d03397`](./contracts/mantle-5000/0x029a64e090f906944d9c7ec39da107081fd03397/) | MoeStrategy | core_logic | $0.40 | Verified native implementation with $0.40 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe3d2c1...b24d6d`](./contracts/avalanche-43114/0xe3d2c10c2122e6f02c702064015554d468b24d6d/) | AlgebraIntegralAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0220ba...e9b72b`](./contracts/avalanche-43114/0x0220ba3dcecf50fa376cce84d1d9ecc0bee9b72b/) | AmplificationUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xef3cce...76f13c`](./contracts/avalanche-43114/0xef3ccefb2fe23e9d0aa7b578724b92f59f76f13c/) | ArenaAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x123577...d8a651`](./contracts/avalanche-43114/0x123577a1560004d4432dc5e31f97363d0cd8a651/) | BlackholeAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb25a42...fdc570`](./contracts/avalanche-43114/0xb25a4298f51d6028b50df845c3cbf49f4cfdc570/) | DataStoreUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1cfbdc...27b24b`](./contracts/avalanche-43114/0x1cfbdc5468f7d10d136c3d92317d50294127b24b/) | gAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x76e42b...59fa5b`](./contracts/avalanche-43114/0x76e42b4c138e03f4e1719ca5cd1fec13e459fa5b/) | GeodeUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe76329...46750c`](./contracts/avalanche-43114/0xe7632926806e9513708232bcda8f70356646750c/) | LB2WhitelistAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x1a7d36...7163e5`](./contracts/mantle-5000/0x1a7d36d12e12abfa91e8da437bda4c86657163e5/) | LendleStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x71b0cd...0dbe8c`](./contracts/avalanche-43114/0x71b0cd5c4db483ae8a09df0f83f69bac400dbe8c/) | LPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0cf605...5daf5f`](./contracts/avalanche-43114/0x0cf605484a512d3f3435fed77ab5ddc0525daf5f/) | MasterYak | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2f6ca0...faa80b`](./contracts/avalanche-43114/0x2f6ca0a98cf8f7d407e98993fd576f70f0faa80b/) | SAvaxAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xb3d469...0456f2`](./contracts/mantle-5000/0xb3d469b9073a9066642a8f9b0f69c4e8e50456f2/) | SimpleRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1ea723...692332`](./contracts/avalanche-43114/0x1ea72390e12cbe0da8304ab19b6e521a31692332/) | StakeUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x577a73...355f09`](./contracts/avalanche-43114/0x577a73075f35a0a013afc651126f714284355f09/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x29be47...702c09`](./contracts/avalanche-43114/0x29be4798db7eb77d20ed35ad642da852ae702c09/) | SwapUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdb6668...b90148`](./contracts/avalanche-43114/0xdb66686ac8bea67400cf9e5dd6c8849575b90148/) | UnilikeAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5c4d23...18d0b1`](./contracts/avalanche-43114/0x5c4d23fd18fc4128f77426f42237acfce618d0b1/) | WAvaxAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc4729e...77488c`](./contracts/avalanche-43114/0xc4729e56b831d74bbc18797e0e17a295fa77488c/) | YakRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbb82b4...1f3403`](./contracts/arbitrum-42161/0xbb82b43bf2057b804253d5db8c18a647fc1f3403/) | YyStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 30 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11729] 0xmacro-boring-vault-arctic-0.pdf
- [11730] 0xmacro-boring-vault-arctic-1.pdf
- [11731] spearbit-boring-vault-arctic-0.pdf

Fork inheritance lineage and inherited audits are included when available.
