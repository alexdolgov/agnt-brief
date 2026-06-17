# Agentic Audit Brief: CREAM Finance

⚠️ Lifecycle status: DECLINING - TVL changed 11.6% over 90 days

## Project Overview

- Project: CREAM Finance (`cream-finance`)
- Website: [https://cream.finance/](https://cream.finance/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-17T07:00:32.691Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, bsc, ethereum, polygon
- Contract surface: 19 unique implementations (88 raw deployments)
- DeFi Llama TVL: $1,322,568.00
- On-chain TVL (included contracts): $355,751,506.53
- TVL by chain: Bsc $220,410,111.38 | Ethereum $135,341,383.46 | Arbitrum $11.68

## Project Description

CREAM Finance is a decentralized lending protocol that allows users to supply and borrow a wide range of cryptocurrencies across multiple blockchains. It also includes a decentralized exchange (CreamSwap) and a liquid staking derivative (CRETH2) for Ethereum 2.0 staking.

### Architecture

The lending family uses Unitroller/Comptroller as the central risk management and interest rate model, with crToken contracts representing user positions. CreamSwap and CRETH2 operate independently but share the CREAM token for incentives and governance, while the Long-term CREAM Staking contracts lock CREAM tokens to support the ecosystem.

## Contract Surface Quality

- Indexed contracts: 652; live-surface contracts included: 88 (88 live, 0 unknown).
- Excluded by liveness: 388 inactive, 176 singleton, 0 uninitialized.
- Deployment units: 7/43 live.
- Detected codebases: compound-v2, uniswap-v2
- Unverified dependencies: 10/89.

## Audit Coverage Summary

- Verified implementations audited: 0/18 (0.0%)
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 19
- Raw deployments: 88
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $355,751,506.53
- Latest audit: 2021-01 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $355,751,506.53 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CCollateralCapErc20Delegate | token | bsc | unit-20408 (34 proxies) | 34 deployments: bsc [`0x0e9d90...a09baa`](./contracts/bsc-56/0x0e9d900c884964dc4b26db96ba113825b1a09baa/); bsc `0x11883c...8ce069`; bsc `0x19ee64...2ec907`; bsc `0x1af8c1...04fd16`; bsc `0x264bc4...87fcbc`; bsc `0x2bc4eb...289b7c`; bsc `0x2d3bfa...98aa06`; bsc `0x394293...dd9b22`; bsc `0x3b0be4...469d68`; bsc `0x4cb7f1...74fec4`; bsc `0x4ebdef...28a48f`; bsc `0x53d88d...a8515f`; bsc `0x738f38...92c43b`; bsc `0x7e545c...9ccac2`; bsc `0x7f746a...6de418`; bsc `0x816697...5a06cf`; bsc `0x81c15d...25fc55`; bsc `0x84902b...043beb`; bsc `0x8cc7e2...5e09b2`; bsc `0x9095e8...7a1b22`; bsc `0x9b53e7...7bcee5`; bsc `0xa8d75a...019c96`; bsc `0xaa46e2...66e20c`; bsc `0xb31f5d...3e2bcd`; bsc `0xbe7e1d...0fce6b`; bsc `0xbf9b95...e1ff82`; bsc `0xc17c8c...51488c`; bsc `0xcb87ce...6f90b1`; bsc `0xd83c88...f5f727`; bsc `0xdcf60e...86ed1c`; bsc `0xe69271...52de8e`; bsc `0xea466c...8fb0a5`; bsc `0xef6d45...4975de`; bsc `0xf77df3...bcf0b1` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | token | ethereum | unit-20380 (23 proxies) | 23 deployments: ethereum [`0x00e5c0...c84bf3`](./contracts/ethereum-1/0x00e5c0774a5f065c285068170b20393925c84bf3/); ethereum `0x12a9cc...93d12c`; ethereum `0x1b3e95...bd12d5`; ethereum `0x215f34...e264b1`; ethereum `0x226f37...46102f`; ethereum `0x30190a...f22340`; ethereum `0x3c9f53...080101`; ethereum `0x48759f...e4166a`; ethereum `0x672473...0bf40b`; ethereum `0x76eb2f...b2a37c`; ethereum `0x7736ff...732992`; ethereum `0x86bbd9...7548aa`; ethereum `0x8e5954...2ec68f`; ethereum `0x8fc8bf...92b431`; ethereum `0x9e8e20...69c1a9`; ethereum `0xa7c405...5c9806`; ethereum `0xa8caea...a73e4f`; ethereum `0xb8c5af...6109f9`; ethereum `0xca55f9...17fd54`; ethereum `0xe7bff2...03aa16`; ethereum `0xecab2c...a97ecf`; ethereum `0xfa3472...7621b9`; ethereum `0xfeeb92...7db59f` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | token | ethereum | unit-20393 | [`0x41c84c...c6b393`](./contracts/ethereum-1/0x41c84c0e2ee0b740cf0d31f63f3b6f627dc6b393/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | unit-20405 | [`0xc581b7...ede491`](./contracts/ethereum-1/0xc581b735a1688071a1746c968e0798d642ede491/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | unit-20422 | [`0xf4d48c...4d7234`](./contracts/arbitrum-42161/0xf4d48ce3ee1ac3651998971541badbb9a14d7234/) | ⚠️ Unaudited |
| CCakeLPDelegate | unknown | bsc | unit-20407 (10 proxies) | 10 deployments: bsc [`0x04c61e...ee69fb`](./contracts/bsc-56/0x04c61ef58a6f1d6c572045a39a5434ab9dee69fb/); bsc `0x19b08f...477a41`; bsc `0x26a490...6a7110`; bsc `0x36cdf5...c065d9`; bsc `0x5ea2dd...9b2a0e`; bsc `0x5fa61a...0440b7`; bsc `0x7fd568...ab1c5f`; bsc `0x98b787...f872d0`; bsc `0x9972dd...f7ca85`; bsc `0xe39b9e...8b14e0` | ⚠️ Unaudited |
| CEther | unknown | bsc | n/a | 2 deployments: ethereum `0xd06527...2860ee`; bsc [`0x1ffe17...90ff3a`](./contracts/bsc-56/0x1ffe17b99b439be0afc831239ddecda2a790ff3a/) | ⚠️ Unaudited |
| Comp | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2ba592...7cb200`](./contracts/ethereum-1/0x2ba592f78db6436527729929aaf6c908497cb200/); bsc `0xd4cb32...f3e888` | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | unit-20402 | [`0xab1c34...144cbb`](./contracts/ethereum-1/0xab1c342c7bf5ec5f02adea1c2270670bca144cbb/) | ⚠️ Unaudited |
| Comptroller | unknown | bsc | n/a | [`0x49a08f...988fb4`](./contracts/bsc-56/0x49a08f9f445af5734cf15a1deab3b1c6a7988fb4/) | ⚠️ Unaudited |
| CreamEth2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x49d72e...9fdb64`](./contracts/ethereum-1/0x49d72e3973900a195a155a46441f0c08179fdb64/); ethereum `0xcbc106...ab89fd` | ⚠️ Unaudited |
| CreamLock | unknown | ethereum | n/a | 3 deployments: ethereum [`0x780f75...7a8b45`](./contracts/ethereum-1/0x780f75ad0b02afeb6039672e6a6cede7447a8b45/); ethereum `0xd5586c...e20a6c`; ethereum `0xe618c2...2f5945` | ⚠️ Unaudited |
| CreamY | unknown | ethereum | n/a | [`0x1d0914...bdc10c`](./contracts/ethereum-1/0x1d09144f3479bb805cb7c92346987420bcbdc10c/) | ⚠️ Unaudited |
| Maximillion | unknown | bsc | n/a | [`0x803bb4...9b6245`](./contracts/bsc-56/0x803bb411e0c0200349e30314d60c30a7509b6245/) | ⚠️ Unaudited |
| PriceOracle | operational_periphery | polygon | n/a | [`0x0a4acc...8bf2f5`](./contracts/polygon-137/0x0a4accd9d150ad4ddc7ea2e6151243ce668bf2f5/) | ⚠️ Unaudited |
| PriceOracleV1 | operational_periphery | arbitrum | n/a | [`0x20ca53...114c24`](./contracts/arbitrum-42161/0x20ca53e2395fa571798623f1cfbd11fe2c114c24/) | ⚠️ Unaudited |
| StakingRewardsLock | unknown | ethereum | n/a | [`0x0b471a...85e150`](./contracts/ethereum-1/0x0b471a71c3f6d4aadc7eb20aab7d730ae385e150/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x398642...5c0043`](./contracts/ethereum-1/0x3986425b96f11972d31c78ff340908832c5c0043/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x6af473...28822d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Publications GitHub](https://github.com/trailofbits/publications/blob/master/reviews/CREAMSummary.pdf) | Trail of Bits | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |
| [trailofbits-CREAMSummary.pdf](https://github.com/CreamFi/compound-protocol/blob/master/audits/trailofbits-CREAMSummary.pdf) | Trail of Bits | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x0e9d90...a09baa`](./contracts/bsc-56/0x0e9d900c884964dc4b26db96ba113825b1a09baa/) | CCollateralCapErc20Delegate | token | $220,410,111.38 | Verified native implementation with $220,410,111.38 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00e5c0...c84bf3`](./contracts/ethereum-1/0x00e5c0774a5f065c285068170b20393925c84bf3/) | CCollateralCapErc20Delegate | token | $86,718,743.40 | Verified native implementation with $86,718,743.40 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41c84c...c6b393`](./contracts/ethereum-1/0x41c84c0e2ee0b740cf0d31f63f3b6f627dc6b393/) | CCollateralCapErc20Delegate | token | $44,919,573.85 | Verified native implementation with $44,919,573.85 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf4d48c...4d7234`](./contracts/arbitrum-42161/0xf4d48ce3ee1ac3651998971541badbb9a14d7234/) | StandardArbERC20 | token | $11.68 | Verified native implementation with $11.68 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04c61e...ee69fb`](./contracts/bsc-56/0x04c61ef58a6f1d6c572045a39a5434ab9dee69fb/) | CCakeLPDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1ffe17...90ff3a`](./contracts/bsc-56/0x1ffe17b99b439be0afc831239ddecda2a790ff3a/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ba592...7cb200`](./contracts/ethereum-1/0x2ba592f78db6436527729929aaf6c908497cb200/) | Comp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab1c34...144cbb`](./contracts/ethereum-1/0xab1c342c7bf5ec5f02adea1c2270670bca144cbb/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x49a08f...988fb4`](./contracts/bsc-56/0x49a08f9f445af5734cf15a1deab3b1c6a7988fb4/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49d72e...9fdb64`](./contracts/ethereum-1/0x49d72e3973900a195a155a46441f0c08179fdb64/) | CreamEth2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x780f75...7a8b45`](./contracts/ethereum-1/0x780f75ad0b02afeb6039672e6a6cede7447a8b45/) | CreamLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d0914...bdc10c`](./contracts/ethereum-1/0x1d09144f3479bb805cb7c92346987420bcbdc10c/) | CreamY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x803bb4...9b6245`](./contracts/bsc-56/0x803bb411e0c0200349e30314d60c30a7509b6245/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0a4acc...8bf2f5`](./contracts/polygon-137/0x0a4accd9d150ad4ddc7ea2e6151243ce668bf2f5/) | PriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x20ca53...114c24`](./contracts/arbitrum-42161/0x20ca53e2395fa571798623f1cfbd11fe2c114c24/) | PriceOracleV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b471a...85e150`](./contracts/ethereum-1/0x0b471a71c3f6d4aadc7eb20aab7d730ae385e150/) | StakingRewardsLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x398642...5c0043`](./contracts/ethereum-1/0x3986425b96f11972d31c78ff340908832c5c0043/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2998] Publications GitHub
- [2999] trailofbits-CREAMSummary.pdf

Fork inheritance lineage and inherited audits are included when available.
