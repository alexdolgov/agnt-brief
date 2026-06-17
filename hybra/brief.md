# Agentic Audit Brief: Hybra

## Project Overview

- Project: Hybra (`hybra`)
- Website: [https://www.hybra.finance?code=GRYN2U](https://www.hybra.finance?code=GRYN2U)
- Lifecycle: active (Tier 0, 92.2% below peak)
- Generated: 2026-06-17T07:00:46.728Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: hyperliquid
- Contract surface: 66 unique implementations (72 raw deployments)
- DeFi Llama TVL: $1,589,153.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Hybra is a decentralized exchange (DEX) protocol on HyperEVM that facilitates token swaps, liquidity provision, and yield farming. It employs a ve(3,3) tokenomics model with gauges, bribes, and voting to incentivize liquidity and governance.

### Architecture

The Hybra V4 family relies on shared infrastructure contracts such as GaugeFactory, BribeFactoryV3, VoterV3, and MinterUpgradeable to manage liquidity incentives, governance voting, and token emissions across the protocol.

## Contract Surface Quality

- Indexed contracts: 92; live-surface contracts included: 72 (72 live, 0 unknown).
- Excluded by liveness: 0 inactive, 20 singleton, 0 uninitialized.
- Deployment units: 1/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/10 (0.0%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 56
- Unique implementations: 66
- Raw deployments: 72
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

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CLFactory | registry | hyperliquid | n/a | [`0x32b9da...1324c2`](./contracts/hyperliquid-999/0x32b9da73215255d50d84feb51540b75acc1324c2/) | ⚠️ Unaudited |
| CLPool | core_logic | hyperliquid | n/a | 2 deployments: hyperliquid [`0xa421f7...9552ab`](./contracts/hyperliquid-999/0xa421f7aada7d11eb6002bc53090fb8d5409552ab/); hyperliquid `0xe31c7b...4e1e23` | ⚠️ Unaudited |
| GrowthHYBR | unknown | hyperliquid | n/a | [`0x348b11...2b8aa5`](./contracts/hyperliquid-999/0x348b11cbb801fab12834e66691b7f25fe72b8aa5/) | ⚠️ Unaudited |
| HYBR | unknown | hyperliquid | n/a | [`0x067b0c...25a9c8`](./contracts/hyperliquid-999/0x067b0c72aa4c6bd3bfefff443c536dcd6a25a9c8/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | hyperliquid | n/a | 3 deployments: hyperliquid [`0x48b88f...097350`](./contracts/hyperliquid-999/0x48b88f07f22fcab3b72e5659f94f1bb773097350/); hyperliquid `0x88d4c3...43176f`; hyperliquid `0xcc9e39...1a2568` | ⚠️ Unaudited |
| PositionValueQuery | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x05db07...07dbc0`](./contracts/hyperliquid-999/0x05db07299ee752aef6aa1b3e895c973a6007dbc0/); hyperliquid `0x2ea324...17c068` | ⚠️ Unaudited |
| QuoterV2 | periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x8cd6ac...91e4e2`](./contracts/hyperliquid-999/0x8cd6acff822ee9e3240501b3ceda64364791e4e2/); hyperliquid `0xf5fcff...29a3e6` | ⚠️ Unaudited |
| RewardHYBR | unknown | hyperliquid | n/a | [`0x6879db...f4bc98`](./contracts/hyperliquid-999/0x6879db7e84c38e5f580b464d2f19e91e09f4bc98/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | hyperliquid | n/a | [`0x04fcae...8739a9`](./contracts/hyperliquid-999/0x04fcae9af38e79b7bb96d4f2ef0f020e9c8739a9/) | ⚠️ Unaudited |
| SwapRouter | adapter | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0384c7...8304b7`](./contracts/hyperliquid-999/0x0384c767774a51e395f913c64d744dd00a8304b7/); hyperliquid `0xbec2bf...806426` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (56)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x5faebfc659fe95a49f536d8e8ba6ab9dbede7d9a) | proxy | hyperliquid | unit-28188 | `0x110e1c...a41525` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x020351...31228b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x067440...802aff` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x088d2c...d3b76d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x08e95b...7953f4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0deade...f96570` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2caf27...d93cb4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x37ed68...70d36e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3a14a5...4c1e93` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3c9c60...6d73fa` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3dcfa0...900f58` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4992d9...134ab7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x51ac83...c0fded` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x54dc14...247369` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x57952b...ec1f16` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5acb02...a6d6f0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5b3443...c087f0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5c981f...6f0836` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5e33a1...ac3dcc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5fbb1a...03b793` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6aeb86...cc0e79` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6d1d4a...fd58fc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6f1bf1...154d53` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7babb7...9a1931` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7cda9f...7c51b3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x814af8...528028` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x85046a...53cbe9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x85d0e9...6c1869` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x88374a...e742f3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9670a0...3cc624` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x976adf...846ed8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9e2b82...1f0efc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa2fc9b...82ba77` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa313d1...08f78b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xaae698...559d38` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xac256d...391f5f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb72e05...50907a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbac384...b9412d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbdf3b2...b56c67` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc03da9...8e4020` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc4ad2a...5ff021` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc6ac41...3d1853` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd0b902...f5aac1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd4d779...c93307` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd7ed77...87f4fd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd9df85...d0b396` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdbf13a...0fb78b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xeb109e...e5e939` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xed0ca8...778ca2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf00e3b...71de20` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf658fd...6cb978` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf722f4...dfc3b1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf7f86e...2acc52` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf9cbef...df93fc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfda9fd...315865` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfe3390...f9f398` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x32b9da...1324c2`](./contracts/hyperliquid-999/0x32b9da73215255d50d84feb51540b75acc1324c2/) | CLFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xa421f7...9552ab`](./contracts/hyperliquid-999/0xa421f7aada7d11eb6002bc53090fb8d5409552ab/) | CLPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x348b11...2b8aa5`](./contracts/hyperliquid-999/0x348b11cbb801fab12834e66691b7f25fe72b8aa5/) | GrowthHYBR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x067b0c...25a9c8`](./contracts/hyperliquid-999/0x067b0c72aa4c6bd3bfefff443c536dcd6a25a9c8/) | HYBR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x48b88f...097350`](./contracts/hyperliquid-999/0x48b88f07f22fcab3b72e5659f94f1bb773097350/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x05db07...07dbc0`](./contracts/hyperliquid-999/0x05db07299ee752aef6aa1b3e895c973a6007dbc0/) | PositionValueQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x8cd6ac...91e4e2`](./contracts/hyperliquid-999/0x8cd6acff822ee9e3240501b3ceda64364791e4e2/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x6879db...f4bc98`](./contracts/hyperliquid-999/0x6879db7e84c38e5f580b464d2f19e91e09f4bc98/) | RewardHYBR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x04fcae...8739a9`](./contracts/hyperliquid-999/0x04fcae9af38e79b7bb96d4f2ef0f020e9c8739a9/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0384c7...8304b7`](./contracts/hyperliquid-999/0x0384c767774a51e395f913c64d744dd00a8304b7/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 56 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
