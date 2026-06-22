# Agentic Audit Brief: Nabla Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 78.9% over 90 days

## Project Overview

- Project: Nabla Finance (`nabla-finance`)
- Website: [https://nabla.fi](https://nabla.fi)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-21T08:01:32.308Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, base, berachain, hyperliquid
- Contract surface: 152 unique implementations (152 raw deployments)
- DeFi Llama TVL: $87,976.39
- On-chain TVL (included contracts): $517,889,644.27
- TVL by chain: Arbitrum $451,141,599.57 | Base $66,748,044.70

## Project Description

Nabla Finance is a decentralized exchange (DEX) protocol that enables users to swap assets across multiple chains, provide liquidity to earn fees, and stake tokens for rewards. It includes a native token (NablaToken), oracle infrastructure for price feeds, and a portal for cross-chain interactions.

### Architecture

The Swap Pools rely on the Nabla Oracle and Pyth Adapter V2 for accurate asset pricing, while the Router directs user trades to these pools. Staking and Backstop Pool contracts interact with NablaToken and LP tokens from Swap Pools, and the Nabla Portal enables cross-chain asset movement across all families.

## Contract Surface Quality

- Indexed contracts: 237; live-surface contracts included: 152 (152 live, 0 unknown).
- Excluded by liveness: 73 inactive, 12 singleton, 0 uninitialized.
- Deployment units: 7/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/13 (0.0%)
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 139
- Unique implementations: 152
- Raw deployments: 152
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $517,889,644.27
- Latest audit: 2024-07 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $517,889,644.27 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StandardArbERC20 | token | arbitrum | unit-41678 | [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/) | ⚠️ Unaudited |
| DegenToken | token | base | n/a | [`0x4ed4e8...efefed`](./contracts/base-8453/0x4ed4e862860bed51a9570b96d89af5e1b0efefed/) | ⚠️ Unaudited |
| NablaToken | token | base | n/a | [`0x01ed85...fd679b`](./contracts/base-8453/0x01ed85d73645523b0d62c7a8e35d03601cfd679b/) | ⚠️ Unaudited |
| aeWETH | token | arbitrum | unit-41679 | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | arbitrum | unit-41682 | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ⚠️ Unaudited |
| FiatTokenProxy | token | arbitrum | n/a | [`0xcbb7c0...ed33bf`](./contracts/arbitrum-42161/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | unit-41677 | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | unit-41676 | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | unit-41681 | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| L2ArbitrumToken | token | arbitrum | unit-41680 | [`0x912ce5...9e6548`](./contracts/arbitrum-42161/0x912ce59144191c1204e64559fe8253a0e49e6548/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0x2da56a...a7af71`](./contracts/base-8453/0x2da56acb9ea78330f947bd57c54119debda7af71/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WHYPE9 | unknown | hyperliquid | n/a | [`0x555555...555555`](./contracts/hyperliquid-999/0x5555555555555555555555555555555555555555/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (139)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | hyperliquid | n/a | `0x0d9ce4...279a2e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1056d1...ddb7ea` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x11b406...56276c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x15dacd...a6378e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x194f34...a3c516` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1f0f3c...109b59` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1fa1fd...296811` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1fe0bf...cafc9e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x212376...48d0ea` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2341ca...ff4b81` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2634ef...8a207d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x283781...eef44c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x28901e...9b2840` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x29403e...0199a1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x29f4af...65022d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2cd52f...6d2363` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x374704...def97d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x378574...5fb560` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x37b524...d57d78` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3ab310...b2110b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3e3ae8...21c8c9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x41cb73...f249aa` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x45a2c9...f8c948` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x45f119...c3aaee` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4e9f70...0d457a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4fbe52...d4e2d3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x503b62...6b4a0a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x57a90b...4fa97e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x59e4c7...98872e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5c2352...3aadd7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5c542c...27b3dd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5e8f29...385c97` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5f4d79...e5cec6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x60bd06...c74366` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6288d7...075b00` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x64e141...75ce98` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x669727...34774e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6a5696...a96e7e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6b1b4a...1444d7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x74de33...3c186e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7a6852...a7ae8a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7bad49...0f23fb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7c9afa...2aea0c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7f5e34...7297b7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8319eb...2fa891` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8426d3...39ad73` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x87e33a...698f9b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x87f4af...d96562` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8c5049...2b20a6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8cea80...5d7f53` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x94ef11...67f759` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x95e4f3...c97f59` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x97d40a...0425ba` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9cd99f...295057` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa16360...730237` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa25a72...7b6620` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa2ab9c...1939ff` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa69eec...722181` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb0adcf...98b832` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb0b504...cc3b7f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb0bb9a...281477` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb230e6...b29853` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb2677f...c78ea3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb5e4c3...3b65e5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xba97b1...990c61` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbb534b...36b9ea` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc2490e...887ce5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc85d88...56705d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc94374...2d34bc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xca450a...2a3818` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcb0dea...c5aea8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd98461...9576c9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdae614...099b6e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdc49a9...3bbc38` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdc557e...12ee49` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdc6712...1d9d7c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdca0a2...b3d2e9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xde73e6...aa3c55` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdfc0f7...83ce3d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe3cb38...f52825` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe62b7c...2d426f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe6b08b...c8e3bf` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe6e9b6...428b8e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xea5206...2e7fea` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf1ae7b...76ea1f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf34170...cb7606` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf346bc...fe352c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf45505...d3338a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfad4f3...3b506b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfbcb7d...9c160f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfc68ee...bd152a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfe0136...36e75f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0706e6...8e8992` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x123456...9c12eb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2e56ce...7674f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x50841f...892b69` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d970c...1c1983` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x84bec2...9c494d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x925d24...be5976` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa83a20...b39b85` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaeeca6...a787cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf6072...b35e6b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb11ad7...4cd457` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd24d14...e67fff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd8f26...67dab0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x058a08...ccd9a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x272df8...76a155` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x337b03...68a29a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3aa4b1...a0318c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x411ef7...32bf12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d044d...1dd3c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x563a8a...269859` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5862f4...777408` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c9afa...2aea0c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c5049...2b20a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8e74ed...b00d39` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2677f...c78ea3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb77388...0599b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc5bc16...e21d0e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc85d88...56705d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xca8b86...35b8d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcb94ee...6b676b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe70292...06efeb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeccd1d...9a4584` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1df59...58264f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf82bfa...b7f185` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x0555e3...0d2b9c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x2f6f07...6e7590` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x45a01e...2033cd` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x549943...1d3241` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x6d6190...66e441` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x808d7c...bc0949` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x8756fd...64d2a4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x896bde...0b8b5f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x9d1b16...25b944` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xba8cc2...fb3282` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe97144...dddae7` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xfa158c...2447f6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Nabla-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Nabla-security-review.pdf) | Pashov Audit Group | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x01ed85...fd679b`](./contracts/base-8453/0x01ed85d73645523b0d62c7a8e35d03601cfd679b/) | NablaToken | token | $2,575,680.00 | Verified native implementation with $2,575,680.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 8 |
| standard_library | 6 |
| needs_review | 118 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13545] Nabla-security-review.pdf

Fork inheritance lineage and inherited audits are included when available.
