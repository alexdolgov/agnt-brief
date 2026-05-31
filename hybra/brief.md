# Agentic Audit Brief: Hybra

## Project Overview

- Project: Hybra (`hybra`)
- Website: [https://www.hybra.finance?code=GRYN2U](https://www.hybra.finance?code=GRYN2U)
- Lifecycle: active (Tier 0, 92.2% below peak)
- Generated: 2026-05-31T08:24:52.749Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: hyperliquid
- Contract surface: 81 unique implementations (92 raw deployments)
- DeFi Llama TVL: $1,819,335.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Hybra is a decentralized exchange (DEX) protocol on HyperEVM that facilitates token swaps, liquidity provision, and yield farming. It employs a ve(3,3) tokenomics model with gauges, bribes, and voting to incentivize liquidity and governance.

### Architecture

The Hybra V4 family relies on shared infrastructure contracts such as GaugeFactory, BribeFactoryV3, VoterV3, and MinterUpgradeable to manage liquidity incentives, governance voting, and token emissions across the protocol.

## Audit Coverage Summary

- Verified implementations audited: 0/15 (0.0%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 66
- Unique implementations: 81
- Raw deployments: 92
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BribeFactoryV3 | operational_periphery | hyperliquid | 2 deployments: hyperliquid [`0x2555f7...5fc82f`](./contracts/hyperliquid-999/0x2555f79ac6e8096c755096e3a8d175a4bf5fc82f/); hyperliquid `0x6ba9f9...7f752a` | ⚠️ Unaudited |
| CLFactory | registry | hyperliquid | [`0x32b9da...1324c2`](./contracts/hyperliquid-999/0x32b9da73215255d50d84feb51540b75acc1324c2/) | ⚠️ Unaudited |
| CLPool | core_logic | hyperliquid | 2 deployments: hyperliquid [`0xa421f7...9552ab`](./contracts/hyperliquid-999/0xa421f7aada7d11eb6002bc53090fb8d5409552ab/); hyperliquid `0xe31c7b...4e1e23` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | hyperliquid | 2 deployments: hyperliquid [`0x84fa8d...e0de45`](./contracts/hyperliquid-999/0x84fa8d513ee93ddea72b6fbd45fa957bd9e0de45/); hyperliquid `0xb4892c...aa5a46` | ⚠️ Unaudited |
| GaugeFactoryCL | operational_periphery | hyperliquid | 2 deployments: hyperliquid [`0x1c0ebc...abdd09`](./contracts/hyperliquid-999/0x1c0ebc5cf683e20d427d08d9e0920b07f9abdd09/); hyperliquid `0xeb6088...63e4f9` | ⚠️ Unaudited |
| GrowthHYBR | unknown | hyperliquid | [`0x348b11...2b8aa5`](./contracts/hyperliquid-999/0x348b11cbb801fab12834e66691b7f25fe72b8aa5/) | ⚠️ Unaudited |
| HYBR | unknown | hyperliquid | [`0x067b0c...25a9c8`](./contracts/hyperliquid-999/0x067b0c72aa4c6bd3bfefff443c536dcd6a25a9c8/) | ⚠️ Unaudited |
| MinterUpgradeable | unknown | hyperliquid | 2 deployments: hyperliquid [`0x8a89c7...e01d2f`](./contracts/hyperliquid-999/0x8a89c7f32f0ed4d186eb73d458354fda68e01d2f/); hyperliquid `0xa8265e...3e149b` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | hyperliquid | 3 deployments: hyperliquid [`0x48b88f...097350`](./contracts/hyperliquid-999/0x48b88f07f22fcab3b72e5659f94f1bb773097350/); hyperliquid `0x88d4c3...43176f`; hyperliquid `0xcc9e39...1a2568` | ⚠️ Unaudited |
| PositionValueQuery | unknown | hyperliquid | 2 deployments: hyperliquid [`0x05db07...07dbc0`](./contracts/hyperliquid-999/0x05db07299ee752aef6aa1b3e895c973a6007dbc0/); hyperliquid `0x2ea324...17c068` | ⚠️ Unaudited |
| QuoterV2 | periphery | hyperliquid | 2 deployments: hyperliquid [`0x8cd6ac...91e4e2`](./contracts/hyperliquid-999/0x8cd6acff822ee9e3240501b3ceda64364791e4e2/); hyperliquid `0xf5fcff...29a3e6` | ⚠️ Unaudited |
| RewardHYBR | unknown | hyperliquid | [`0x6879db...f4bc98`](./contracts/hyperliquid-999/0x6879db7e84c38e5f580b464d2f19e91e09f4bc98/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | hyperliquid | [`0x04fcae...8739a9`](./contracts/hyperliquid-999/0x04fcae9af38e79b7bb96d4f2ef0f020e9c8739a9/) | ⚠️ Unaudited |
| SwapRouter | adapter | hyperliquid | 2 deployments: hyperliquid [`0x0384c7...8304b7`](./contracts/hyperliquid-999/0x0384c767774a51e395f913c64d744dd00a8304b7/); hyperliquid `0xbec2bf...806426` | ⚠️ Unaudited |
| VoterV3 | unknown | hyperliquid | 2 deployments: hyperliquid [`0x5623f0...9e4fa3`](./contracts/hyperliquid-999/0x5623f012d15eb828c12fe32e46d40adc2a9e4fa3/); hyperliquid `0xcd9599...920576` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (66)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x3cda22a593b35a3554300b8968d20b9fc15bab8c) | proxy | hyperliquid | `0x218e66...0f73e6` | ❓ Unverified |
| Proxy (impl: 0x5faebfc659fe95a49f536d8e8ba6ab9dbede7d9a) | proxy | hyperliquid | `0x110e1c...a41525` | ❓ Unverified |
| Proxy (impl: 0x69edd0c8f85faff4f4610941816a2301fc10647b) | proxy | hyperliquid | `0x775e40...350197` | ❓ Unverified |
| Proxy (impl: 0xb761a187808fbb307cb5c5e01c01b729da432471) | proxy | hyperliquid | `0x45ea86...ecd316` | ❓ Unverified |
| Proxy (impl: 0xcd5f4e4cf2dcd7d9d72ef997ebd5f57bc0443988) | proxy | hyperliquid | `0x742caa...b65d5e` | ❓ Unverified |
| Proxy (impl: 0xdcb84d0b4036a2467ca01e0e5adf0a0d078eb78c) | proxy | hyperliquid | `0x9c4bcf...6233e2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x020351...31228b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x067440...802aff` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x088d2c...d3b76d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x08e95b...7953f4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x0deade...f96570` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x2caf27...d93cb4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x37ed68...70d36e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x3a14a5...4c1e93` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x3c9c60...6d73fa` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x3cda22...5bab8c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x3dcfa0...900f58` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x4992d9...134ab7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x51ac83...c0fded` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x54dc14...247369` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x57952b...ec1f16` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x5acb02...a6d6f0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x5b3443...c087f0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x5c981f...6f0836` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x5e33a1...ac3dcc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x5fbb1a...03b793` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x69edd0...10647b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x6aeb86...cc0e79` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x6d1d4a...fd58fc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x6f1bf1...154d53` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x7babb7...9a1931` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x7cda9f...7c51b3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x814af8...528028` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x85046a...53cbe9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x85d0e9...6c1869` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x88374a...e742f3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x9670a0...3cc624` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x976adf...846ed8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x9e2b82...1f0efc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xa2fc9b...82ba77` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xa313d1...08f78b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xaae698...559d38` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xac256d...391f5f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xb72e05...50907a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xb761a1...432471` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xbac384...b9412d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xbdf3b2...b56c67` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xc03da9...8e4020` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xc4ad2a...5ff021` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xc6ac41...3d1853` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xcd5f4e...443988` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xd0b902...f5aac1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xd4d779...c93307` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xd7ed77...87f4fd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xd9df85...d0b396` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xdbf13a...0fb78b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xdcb84d...8eb78c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xeb109e...e5e939` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xed0ca8...778ca2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xf00e3b...71de20` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xf658fd...6cb978` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xf722f4...dfc3b1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xf7f86e...2acc52` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xf9cbef...df93fc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xfda9fd...315865` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xfe3390...f9f398` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x32b9da...1324c2`](./contracts/hyperliquid-999/0x32b9da73215255d50d84feb51540b75acc1324c2/) | CLFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xa421f7...9552ab`](./contracts/hyperliquid-999/0xa421f7aada7d11eb6002bc53090fb8d5409552ab/) | CLPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x84fa8d...e0de45`](./contracts/hyperliquid-999/0x84fa8d513ee93ddea72b6fbd45fa957bd9e0de45/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x1c0ebc...abdd09`](./contracts/hyperliquid-999/0x1c0ebc5cf683e20d427d08d9e0920b07f9abdd09/) | GaugeFactoryCL | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x348b11...2b8aa5`](./contracts/hyperliquid-999/0x348b11cbb801fab12834e66691b7f25fe72b8aa5/) | GrowthHYBR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x067b0c...25a9c8`](./contracts/hyperliquid-999/0x067b0c72aa4c6bd3bfefff443c536dcd6a25a9c8/) | HYBR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x8a89c7...e01d2f`](./contracts/hyperliquid-999/0x8a89c7f32f0ed4d186eb73d458354fda68e01d2f/) | MinterUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x48b88f...097350`](./contracts/hyperliquid-999/0x48b88f07f22fcab3b72e5659f94f1bb773097350/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x05db07...07dbc0`](./contracts/hyperliquid-999/0x05db07299ee752aef6aa1b3e895c973a6007dbc0/) | PositionValueQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x8cd6ac...91e4e2`](./contracts/hyperliquid-999/0x8cd6acff822ee9e3240501b3ceda64364791e4e2/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x6879db...f4bc98`](./contracts/hyperliquid-999/0x6879db7e84c38e5f580b464d2f19e91e09f4bc98/) | RewardHYBR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x04fcae...8739a9`](./contracts/hyperliquid-999/0x04fcae9af38e79b7bb96d4f2ef0f020e9c8739a9/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0384c7...8304b7`](./contracts/hyperliquid-999/0x0384c767774a51e395f913c64d744dd00a8304b7/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 68 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
