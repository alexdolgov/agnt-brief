# Agentic Audit Brief: Gains Network

## Project Overview

- Project: Gains Network (`gains-network`)
- Website: [https://gains.trade/](https://gains.trade/)
- Lifecycle: active (Tier 0, 76.5% below peak)
- Generated: 2026-06-17T07:00:32.931Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, polygon
- Contract surface: 26 unique implementations (41 raw deployments)
- DeFi Llama TVL: $18,758,967.07
- On-chain TVL (included contracts): $53,819,657.20
- TVL by chain: Polygon $44,140,889.95 | Arbitrum $7,959,415.22 | Base $1,719,352.03

## Project Description

Gains Network / gTrade is a decentralized perpetuals exchange supporting leveraged trading across crypto, forex, stocks, indices and commodities, alongside lending vaults and GNS governance, staking and rewards components. GNS is the protocol governance and utility token, but the protocol also includes multi-collateral trading and lending components that use other assets.

### Architecture

The Gains Network family is a monolithic suite where all contracts share the same GNS token for staking, rewards, and fee mechanisms. Trading contracts rely on price aggregators and pair storage for market data, while staking and rewards contracts distribute incentives to users and oracles, all interconnected through the core token and trading flow.

## Contract Surface Quality

- Indexed contracts: 1798; live-surface contracts included: 41 (41 live, 0 unknown).
- Excluded by liveness: 1385 inactive, 372 singleton, 0 uninitialized.
- Deployment units: 2/133 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 43/104.

## Audit Coverage Summary

- Verified implementations audited: 0/26 (0.0%)
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 26
- Raw deployments: 41
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $53,819,657.20
- Latest audit: 2022-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GFarm2Token | token | polygon | n/a | [`0x7075ca...1379e2`](./contracts/polygon-137/0x7075cab6bcca06613e2d071bd918d1a0241379e2/) | ⚠️ Unaudited |
| GainsNetworkToken | token | arbitrum | n/a | 3 deployments: polygon `0xe5417a...397896`; base `0xfb1aab...7ee7ac`; arbitrum [`0x18c11f...63a122`](./contracts/arbitrum-42161/0x18c11fd286c5ec11c3b683caa813b77f5163a122/) | ⚠️ Unaudited |
| GToken | token | base | unit-20594 | [`0xb7cb7c...bbadc6`](./contracts/base-8453/0xb7cb7cb7c3cd96e251c9bf8800b9631134bbadc6/) | ⚠️ Unaudited |
| GNSTradingVaultV5 | core_logic | polygon | n/a | [`0xd7052e...58804f`](./contracts/polygon-137/0xd7052ec0fe1fe25b20b7d65f6f3d490fce58804f/) | ⚠️ Unaudited |
| ARBIS | unknown | arbitrum | n/a | [`0x9f20de...b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | polygon | n/a | [`0x89d065...eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | ⚠️ Unaudited |
| ERC20Bridge | operational_periphery | arbitrum | n/a | 3 deployments: polygon `0xdf774a...ff75bd`; base `0x1671e2...2143a9`; arbitrum [`0x01caaa...5fa5e2`](./contracts/arbitrum-42161/0x01caaaa682ceba8cd6c02f93bb1393fb415fa5e2/) | ⚠️ Unaudited |
| GainsNetworkNft1 | token | arbitrum | n/a | [`0x75cbcc...2d6f89`](./contracts/arbitrum-42161/0x75cbcc5414c539c2b302a5fa60e30b949d2d6f89/) | ⚠️ Unaudited |
| GainsNetworkNft2 | token | arbitrum | n/a | [`0xd1f024...8e8a4e`](./contracts/arbitrum-42161/0xd1f024ba4dbb1593b486cb5031b3ac5ac28e8a4e/) | ⚠️ Unaudited |
| GainsNetworkNft3 | token | arbitrum | n/a | [`0x983415...84b384`](./contracts/arbitrum-42161/0x9834159eaf9811cf4c568294d5c7c9158f84b384/) | ⚠️ Unaudited |
| GainsNetworkNft4 | token | arbitrum | n/a | [`0x40f0ae...1a21a1`](./contracts/arbitrum-42161/0x40f0aeab6383be2f254ce40b79089070fa1a21a1/) | ⚠️ Unaudited |
| GFarmNft3 | token | polygon | n/a | [`0x3378ad...601921`](./contracts/polygon-137/0x3378ad81d09de23725ee9b9270635c97ed601921/) | ⚠️ Unaudited |
| GFarmNft4 | token | polygon | n/a | [`0x02e2c5...f3e6c2`](./contracts/polygon-137/0x02e2c5825c1a3b69c0417706dbe1327c2af3e6c2/) | ⚠️ Unaudited |
| GNSStakingV6_2 | unknown | polygon | n/a | [`0xfb06a7...c0819d`](./contracts/polygon-137/0xfb06a737f549eb2512eb6082a808fc7f16c0819d/) | ⚠️ Unaudited |
| GNSTimelockOwner | governance | arbitrum | n/a | [`0x5f5e48...c4df0f`](./contracts/arbitrum-42161/0x5f5e4892bab94d94dc57a3edea3c138167c4df0f/) | ⚠️ Unaudited |
| GNSTradingInteractions | unknown | arbitrum | n/a | [`0x9197b7...db471a`](./contracts/arbitrum-42161/0x9197b730af08b9f8b5ab233560feb2ecd1db471a/) | ⚠️ Unaudited |
| GNSTradingV6 | unknown | polygon | n/a | [`0xf8a140...4fe559`](./contracts/polygon-137/0xf8a140db8b05bec52c7e86d0d40d72f8e54fe559/) | ⚠️ Unaudited |
| GNSTradingV6_1 | unknown | polygon | n/a | [`0xd8d177...5f8f58`](./contracts/polygon-137/0xd8d177efc926a18ee455da6f5f6a6cfcee5f8f58/) | ⚠️ Unaudited |
| GNSTradingV6_3_2 | unknown | arbitrum | n/a | [`0xcdcb43...72c44d`](./contracts/arbitrum-42161/0xcdcb434d576c5b1cf387cb272756199b7e72c44d/) | ⚠️ Unaudited |
| GTokenLockedDepositNft | token | base | n/a | 3 deployments: polygon `0xdd42aa...69bcc1`; base [`0x7d0131...a05ceb`](./contracts/base-8453/0x7d0131aceefd2acc919d7b2ac32e8e6c81a05ceb/); arbitrum `0xd846b1...df3804` | ⚠️ Unaudited |
| GTokenOpenPnlFeed | token | arbitrum | n/a | 9 deployments: polygon `0x8d6872...f4440c`; polygon `0xf07f45...894473`; polygon `0xff84e7...6fe822`; base `0xcec10c...365cc8`; base `0xefa1c2...33be37`; arbitrum [`0x018d9a...f9f27e`](./contracts/arbitrum-42161/0x018d9a3f0d06ccb7c305b7c9219a4307e1f9f27e/); arbitrum `0x4ca163...30e0d1`; arbitrum `0x990ba9...a4a23d`; arbitrum `0xbf55c7...d47982` | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | unit-20652 | [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| MarinateAutoCompounder | adapter | arbitrum | n/a | [`0x1922c3...1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | ⚠️ Unaudited |
| NyanRewards | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x32e559...1aa724`](./contracts/arbitrum-42161/0x32e5594f14de658b0d577d6560fa0d9c6f1aa724/); arbitrum `0x62ff5b...d2da2c` | ⚠️ Unaudited |
| stARBIS | unknown | arbitrum | n/a | [`0xbf0075...d2db86`](./contracts/arbitrum-42161/0xbf00759d7e329d7a7fa1d4dcdc914c53d1d2db86/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | n/a | [`0x6e53cb...cd25c4`](./contracts/polygon-137/0x6e53cb6942e518376e9e763554db1a45ddcd25c4/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/gains-network) | CertiK | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3379] DL audit link

Fork inheritance lineage and inherited audits are included when available.
