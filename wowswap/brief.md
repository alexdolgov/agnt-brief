# Agentic Audit Brief: WOWswap

⚠️ Lifecycle status: DECLINING - TVL dropped 11.3% over 90 days

## Project Overview

- Project: WOWswap (`wowswap`)
- Website: [https://wowswap.io](https://wowswap.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-20T02:29:50.869Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: avalanche, bsc, ethereum, heco, kava, metis, polygon
- Contract surface: 49 unique implementations (64 raw deployments)
- DeFi Llama TVL: $34,383.45
- On-chain TVL (included contracts): $9,744,434.41
- TVL by chain: Polygon $9,692,650.55 | Avalanche $39,909.55 | Bsc $11,022.32 | Ethereum $852.00

## Project Description

WOWswap is a decentralized exchange (DEX) protocol that enables leveraged trading and liquidity provision across multiple chains. It uses a system of proxy contracts and tokens to facilitate swaps, farming, and staking, with a focus on capital efficiency and cross-chain interoperability.

### Architecture

The WOWswap family relies on a shared set of proxy contracts (TransparentUpgradeableProxy, AdminUpgradeabilityProxy, UChildERC20Proxy) to manage upgradeability and cross-chain token representations. Core liquidity pairs and tokens are deployed across multiple chains, with proxies pointing to various implementations that handle trading logic and token bridging.

## Contract Surface Quality

- Indexed contracts: 716; live-surface contracts included: 64 (23 live, 41 unknown).
- Excluded by liveness: 571 inactive, 81 singleton, 0 uninitialized.
- Deployment units: 6/56 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 5/17.

## Audit Coverage Summary

- Verified implementations audited: 0/18 (0.0%)
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 1
- Unverified implementations: 31
- Unique implementations: 49
- Raw deployments: 64
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $9,744,434.41
- Latest audit: 2021-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $9,744,434.41 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChildERC20 | token | polygon | n/a | 4 deployments: polygon [`0x53e0bc...abad39`](./contracts/polygon-137/0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39/); polygon `0x556f50...aa9e6d`; polygon `0x578360...11ed5f`; polygon `0x71b821...085978` | ⚠️ Unaudited |
| AnyswapV4ERC20 | token | avalanche | n/a | [`0xd67de0...850454`](./contracts/avalanche-43114/0xd67de0e0a0fd7b15dc8348bb9be742f3c5850454/) | ⚠️ Unaudited |
| WOWToken | token | bsc | n/a | [`0x4da996...c5e36a`](./contracts/bsc-56/0x4da996c5fe84755c80e108cf96fe705174c5e36a/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | ethereum | n/a | 3 deployments: ethereum [`0x3405a1...026e45`](./contracts/ethereum-1/0x3405a1bd46b85c5c029483fbecf2f3e611026e45/); polygon `0x855d42...b1968a`; avalanche `0xa384bc...0f4e0b` | ⚠️ Unaudited |
| UChildERC20Proxy | token | polygon | n/a | 2 deployments: polygon [`0x313d00...5bd604`](./contracts/polygon-137/0x313d009888329c9d1cf4f75ca3f32566335bd604/); polygon `0x5a2fdf...908d19` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | proxy | bsc | unit-40994 | [`0x8ee584...42ffb7`](./contracts/bsc-56/0x8ee5849366735a3f89c3b86270f9073cc942ffb7/) | ⚠️ Unaudited |
| ChildChainManager | governance | polygon | unit-41012 | [`0xa6fa4f...d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| ChildERC1155 | token | polygon | n/a | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| L2StandardERC20 | token | metis | n/a | [`0x5ce34d...6d80b7`](./contracts/metis-1088/0x5ce34d9abe4bf239cbc08b89287c87f4cd6d80b7/) | ⚠️ Unaudited |
| MaticWETH | token | polygon | n/a | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| NetswapPair | unknown | metis | n/a | [`0x1f9a2b...956e30`](./contracts/metis-1088/0x1f9a2b3b05e1c43ec6aaef2fb727e43c4b956e30/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x73cabb...870e4d`](./contracts/bsc-56/0x73cabbe6e05290a09b9432eb765521941c870e4d/) | ⚠️ Unaudited |
| ProxyAdmin | governance | metis | n/a | 2 deployments: metis [`0x8428b4...04901a`](./contracts/metis-1088/0x8428b4b785df678bcfe5cbb660d2cd555904901a/); metis `0xd8bfb5...90712f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | metis | n/a | 7 deployments: metis [`0x01b5b4...6e5f9c`](./contracts/metis-1088/0x01b5b462b55a65101d7c7637b056d2dae16e5f9c/); metis `0x0d5d5d...435ea8`; metis `0x3b6426...aec35f`; metis `0x91d57f...a7ae35`; metis `0x9bb0af...ac2137`; metis `0xa65576...fa44d8`; metis `0xa98fd6...8ea602` | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x422432...804046`](./contracts/polygon-137/0x42243231fb4a64a5bcfc7f4b7a9ad92576804046/) | ⚠️ Unaudited |
| UChildUSDT0 | token | polygon | unit-41016 | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | proxy | bsc | unit-40992 | 3 deployments: bsc [`0x3b94b8...35cff8`](./contracts/bsc-56/0x3b94b8e62c1cf0795ec6427aabc23b269b35cff8/); polygon `0xc7ae2c...bfb903`; polygon `0xe876f5...a56293` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | heco | n/a | `0x518c21...d1724a` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x5e5f16...388253` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x72c0a2...bf159b` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x86fea7...cb1872` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xefaeee...d40d73` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1a95eb...79a5cd` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x527805...2a21f0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x574213...199b21` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x617b12...a981bb` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x67538f...0048c3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6c5796...e00682` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x71a19b...e90029` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x994e45...47819c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa0d680...461aa3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa61df2...8bb2e7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa8fba3...e34721` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa95f47...9601c9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd4c42f...c46d9b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xddfe01...39c4ff` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe1f5e1...928dcc` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xec5945...0cd003` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf5bb48...54dca8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf93e91...3a05fe` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf9f619...fdc028` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfceca4...194dfe` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfed8d5...3a379b` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x3b6426...aec35f` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x527805...2a21f0` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xa53230...51babf` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xa98fd6...8ea602` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf527f8...672072` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://hacken.io/audits/wowswap/sca-wowsap-defi-jun2021) | Hacken | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x4da996...c5e36a`](./contracts/bsc-56/0x4da996c5fe84755c80e108cf96fe705174c5e36a/) | WOWToken | token | $11,022.32 | Verified native implementation with $11,022.32 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | MaticWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 7 |
| standard_library | 4 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14143] DL audit link

Fork inheritance lineage and inherited audits are included when available.
