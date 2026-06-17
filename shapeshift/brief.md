# Agentic Audit Brief: ShapeShift

## Project Overview

- Project: ShapeShift (`shapeshift`)
- Website: [https://shapeshift.com](https://shapeshift.com)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:40.248Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, ethereum, gnosis, polygon
- Contract surface: 14 unique implementations (45 raw deployments)
- DeFi Llama TVL: $1,236,304.60
- On-chain TVL (included contracts): $746,230.49
- TVL by chain: Ethereum $392,544.19 | Arbitrum $274,819.67 | Gnosis $48,399.61 | Polygon $30,467.03

## Project Description

ShapeShift is a community-owned, non-custodial multichain crypto app and wallet with FOX governance, DEX-aggregator routing, and DeFi/earn integrations. It routes trades through external DEXs and aggregators and should not be described as owning all underlying liquidity pools or upstream protocol contracts used by the app.

### Architecture

All contracts belong to a single product family, sharing the same governance token (FOX) and staking infrastructure. Proxies like TransparentUpgradeableProxy and ERC1967Proxy are used across pools and staking contracts to enable upgradeability, while token proxies (TokenProxy, UChildERC20Proxy) represent wrapped or bridged assets used within the ecosystem.

## Contract Surface Quality

- Indexed contracts: 111; live-surface contracts included: 45 (43 live, 2 unknown).
- Excluded by liveness: 38 inactive, 28 singleton, 0 uninitialized.
- Deployment units: 6/22 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 12; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/14 (14.3%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 14
- Raw deployments: 45
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $746,230.49
- Latest audit: 2024-06 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 14.3% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Staking | unknown | ethereum | unit-24479 | [`0x96f98e...3417d3`](./contracts/ethereum-1/0x96f98ed74639689c3a11daf38ef86e59f43417d3/) | ✅ Audited |
| Staking | unknown | ethereum | n/a | [`0xee77aa...85ea4b`](./contracts/ethereum-1/0xee77aa3fd23bbebaf94386dd44b548e9a785ea4b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Pool | core_logic | ethereum | unit-24471 (21 proxies) | 21 deployments: ethereum [`0x03dccc...2d360d`](./contracts/ethereum-1/0x03dcccd17cc36ee61f9004bcfd7a85f58b2d360d/); ethereum `0x04bda0...0e860d`; ethereum `0x061aee...b2a7e7`; ethereum `0x0ce34f...fdfb75`; ethereum `0x15a629...b79415`; ethereum `0x1b429e...192fd3`; ethereum `0x2e9f9b...bd4fed`; ethereum `0x2fc6e9...ad22e1`; ethereum `0x41f6a9...b00263`; ethereum `0x482258...e6b03d`; ethereum `0x721150...ad4b4c`; ethereum `0x808d3e...ed5311`; ethereum `0x8858a7...61faa3`; ethereum `0x8d2254...d97832`; ethereum `0x94671a...20efb2`; ethereum `0x9eee9e...9797a3`; ethereum `0xadf15e...81e655`; ethereum `0xd3b5d9...f9aa84`; ethereum `0xdc0b02...9709b0`; ethereum `0xeff721...ffc8de`; ethereum `0xf49764...629777` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | unit-24492 | [`0xf929de...513c73`](./contracts/arbitrum-42161/0xf929de51d91c77e42f5090069e0ad7a09e513c73/) | ⚠️ Unaudited |
| PermittableToken | token | gnosis | unit-24487 | [`0x21a426...67509d`](./contracts/gnosis-100/0x21a42669643f45bc0e086b8fc2ed70c23d67509d/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | unit-24488 | [`0x65a05d...5b0aa8`](./contracts/polygon-137/0x65a05db8322701724c197af82c9cae41195b0aa8/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | arbitrum | n/a | 2 deployments: ethereum `0xad0e10...f8b376`; arbitrum [`0x76d4d1...e9041e`](./contracts/arbitrum-42161/0x76d4d1eaa0c4b3645e75c46e573c1d4f75e9041e/) | ⚠️ Unaudited |
| AccToke | unknown | ethereum | unit-24481 | [`0xa374a6...7c0972`](./contracts/ethereum-1/0xa374a62ddbd21e3d5716cb04821cb710897c0972/) | ⚠️ Unaudited |
| FOX | unknown | ethereum | n/a | [`0xc770ee...8ee52d`](./contracts/ethereum-1/0xc770eefad204b5180df6a14ee197d99d808ee52d/) | ⚠️ Unaudited |
| Foxy | unknown | ethereum | n/a | [`0xdc4910...386ed3`](./contracts/ethereum-1/0xdc49108ce5c57bc3408c3a5e95f3d864ec386ed3/) | ⚠️ Unaudited |
| RewardHash | unknown | ethereum | n/a | [`0x5ec3ec...d02fb6`](./contracts/ethereum-1/0x5ec3ec6a8ac774c7d53665ebc5ddf89145d02fb6/) | ⚠️ Unaudited |
| Rewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x086b97...e27054`](./contracts/ethereum-1/0x086b9734d33783bbe4fbc8249df4c686aae27054/); ethereum `0x79dd22...a713c5` | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | 7 deployments: ethereum [`0x212ebf...c3932b`](./contracts/ethereum-1/0x212ebf9fd3c10f371557b08e993eaab385c3932b/); ethereum `0x24fd7f...f67fa0`; ethereum `0x593978...c1fbcb`; ethereum `0xc14eaa...a7e555`; ethereum `0xc54b9f...9c42a0`; ethereum `0xdd80e2...5d9e72`; ethereum `0xebb176...c40b68` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 4 deployments: ethereum [`0x470e8d...47f08c`](./contracts/ethereum-1/0x470e8de2ebaef52014a47cb5e6af86884947f08c/); gnosis `0x8a0bee...7889df`; gnosis `0xc22313...464bac`; arbitrum `0x5f6ce0...339c24` | ⚠️ Unaudited |

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
| [rFOX_v02.pdf](https://github.com/shapeshift/rFOX/blob/main/audits/rFOX_v02.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 0 | n/a |
| [ZokyoAudit.pdf](https://github.com/shapeshift/yearn-router/blob/development/security/ZokyoAudit.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [Zokyo_Security_Audit.pdf](https://github.com/shapeshift/yieldies/blob/develop/docs/Zokyo_Security_Audit.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xf929de...513c73`](./contracts/arbitrum-42161/0xf929de51d91c77e42f5090069e0ad7a09e513c73/) | StandardArbERC20 | token | $267,437.12 | Verified native implementation with $267,437.12 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x21a426...67509d`](./contracts/gnosis-100/0x21a42669643f45bc0e086b8fc2ed70c23d67509d/) | PermittableToken | token | $48,399.61 | Verified native implementation with $48,399.61 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x65a05d...5b0aa8`](./contracts/polygon-137/0x65a05db8322701724c197af82c9cae41195b0aa8/) | UChildERC20 | token | $30,467.03 | Verified native implementation with $30,467.03 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc770ee...8ee52d`](./contracts/ethereum-1/0xc770eefad204b5180df6a14ee197d99d808ee52d/) | FOX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc4910...386ed3`](./contracts/ethereum-1/0xdc49108ce5c57bc3408c3a5e95f3d864ec386ed3/) | Foxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ec3ec...d02fb6`](./contracts/ethereum-1/0x5ec3ec6a8ac774c7d53665ebc5ddf89145d02fb6/) | RewardHash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x086b97...e27054`](./contracts/ethereum-1/0x086b9734d33783bbe4fbc8249df4c686aae27054/) | Rewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x212ebf...c3932b`](./contracts/ethereum-1/0x212ebf9fd3c10f371557b08e993eaab385c3932b/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=13

Zero-match audit list:

- [9416] rFOX_v02.pdf
- [9427] ZokyoAudit.pdf

Fork inheritance lineage and inherited audits are included when available.
