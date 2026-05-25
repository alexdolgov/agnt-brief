# Agentic Audit Brief: ShapeShift

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: ShapeShift (`shapeshift`)
- Website: [https://shapeshift.com](https://shapeshift.com)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-25T11:40:35.989Z
- Pipeline run: v2-pipeline-2026-05-25-eff36e-79e6
- Chains: arbitrum, ethereum, gnosis, polygon
- Contract surface: 40 unique implementations (115 raw deployments)
- DeFi Llama TVL: $1,637,398.07
- On-chain TVL (included contracts): $1,339,796.19
- TVL by chain: Ethereum $986,109.89 | Arbitrum $274,819.67 | Gnosis $48,399.61 | Polygon $30,467.03

## Project Description

ShapeShift is a decentralized exchange (DEX) aggregator and DeFi platform that enables users to trade, earn yield, and stake assets across multiple chains. It provides liquidity pools, staking contracts, and governance tokens to facilitate decentralized trading and rewards.

### Architecture

All contracts belong to a single product family, sharing the same governance token (FOX) and staking infrastructure. Proxies like TransparentUpgradeableProxy and ERC1967Proxy are used across pools and staking contracts to enable upgradeability, while token proxies (TokenProxy, UChildERC20Proxy) represent wrapped or bridged assets used within the ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 0/28 (0.0%)
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 40
- Raw deployments: 115
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,339,796.19
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $1,339,796.19 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| EthPool | core_logic | ethereum | 4 deployments: ethereum [`0x77f18a...b864ee`](./contracts/ethereum-1/0x77f18a6968a38f9aef1af676420c4799e8b864ee/); ethereum `0xb104a7...8246d5`; ethereum `0xca77a2...d5da31`; ethereum `0xd3d13a...2a2f36` | ⚠️ Unaudited |
| Pool | core_logic | ethereum | 28 deployments: ethereum [`0x0139b3...e6f15a`](./contracts/ethereum-1/0x0139b34012a6639e896b883901b7dc1bb6e6f15a/); ethereum `0x03dccc...2d360d`; ethereum `0x04bda0...0e860d`; ethereum `0x061aee...b2a7e7`; ethereum `0x0ce34f...fdfb75`; ethereum `0x15a629...b79415`; ethereum `0x1b429e...192fd3`; ethereum `0x2d3ead...022029`; ethereum `0x2e9f9b...bd4fed`; ethereum `0x2fc6e9...ad22e1`; ethereum `0x41f6a9...b00263`; ethereum `0x482258...e6b03d`; ethereum `0x721150...ad4b4c`; ethereum `0x7a75ec...ac63fd`; ethereum `0x808d3e...ed5311`; ethereum `0x8858a7...61faa3`; ethereum `0x8d2254...d97832`; ethereum `0x94671a...20efb2`; ethereum `0x9eee9e...9797a3`; ethereum `0xadf15e...81e655`; ethereum `0xbbfc7d...c7ba8a`; ethereum `0xca5e07...d58d4e`; ethereum `0xd3b5d9...f9aa84`; ethereum `0xd899ac...5fc03e`; ethereum `0xdc0b02...9709b0`; ethereum `0xe7a7d1...31532d`; ethereum `0xeff721...ffc8de`; ethereum `0xf49764...629777` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | [`0xf929de...513c73`](./contracts/arbitrum-42161/0xf929de51d91c77e42f5090069e0ad7a09e513c73/) | ⚠️ Unaudited |
| PermittableToken | token | gnosis | [`0x21a426...67509d`](./contracts/gnosis-100/0x21a42669643f45bc0e086b8fc2ed70c23d67509d/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | [`0x65a05d...5b0aa8`](./contracts/polygon-137/0x65a05db8322701724c197af82c9cae41195b0aa8/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | arbitrum | 2 deployments: ethereum `0xad0e10...f8b376`; arbitrum [`0x76d4d1...e9041e`](./contracts/arbitrum-42161/0x76d4d1eaa0c4b3645e75c46e573c1d4f75e9041e/) | ⚠️ Unaudited |
| AccToke | unknown | ethereum | [`0xa374a6...7c0972`](./contracts/ethereum-1/0xa374a62ddbd21e3d5716cb04821cb710897c0972/) | ⚠️ Unaudited |
| AddressRegistry | registry | ethereum | 2 deployments: ethereum [`0x2445e2...91e63c`](./contracts/ethereum-1/0x2445e2f04d6bd2995003c1cb115292942d91e63c/); ethereum `0x28cb0d...f44d45` | ⚠️ Unaudited |
| DefiRound | unknown | ethereum | [`0xc80373...00ac38`](./contracts/ethereum-1/0xc803737d3e12cc4034dde0b2457684322100ac38/) | ⚠️ Unaudited |
| FOX | unknown | ethereum | [`0xc770ee...8ee52d`](./contracts/ethereum-1/0xc770eefad204b5180df6a14ee197d99d808ee52d/) | ⚠️ Unaudited |
| FoxStakingV1 | unknown | arbitrum | 2 deployments: arbitrum [`0x06875e...5fbb55`](./contracts/arbitrum-42161/0x06875e37e780a5aed7e57dc648d5ae7c455fbb55/); arbitrum `0x0c66f3...0910ef` | ⚠️ Unaudited |
| Foxy | unknown | ethereum | [`0xdc4910...386ed3`](./contracts/ethereum-1/0xdc49108ce5c57bc3408c3a5e95f3d864ec386ed3/) | ⚠️ Unaudited |
| LiquidityReserve | unknown | ethereum | [`0x8ec637...25cd39`](./contracts/ethereum-1/0x8ec637fe2800940c7959f9bad4fe69e41225cd39/) | ⚠️ Unaudited |
| Manager | governance | ethereum | 7 deployments: ethereum [`0x0ad818...3bb7f7`](./contracts/ethereum-1/0x0ad818271471f2430be55aba528efb58713bb7f7/); ethereum `0x1d7858...1b4d43`; ethereum `0x47fa86...f705df`; ethereum `0x59170d...f9f4c9`; ethereum `0xa86e41...b86a14`; ethereum `0xf31d02...6f2651`; ethereum `0xf663f4...2a244c` | ⚠️ Unaudited |
| OnChainVoteL1 | unknown | ethereum | 6 deployments: ethereum [`0x160317...a915be`](./contracts/ethereum-1/0x16031783d3d27ce25ebcfb341f4eec8f7ba915be/); ethereum `0x43094e...6ca511`; ethereum `0x803ec0...bc22bc`; ethereum `0xa1a7ec...7721dd`; ethereum `0xabcf56...fa195c`; ethereum `0xc6807b...66e0bb` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 2 deployments: ethereum [`0xc89f74...cf00df`](./contracts/ethereum-1/0xc89f742452f534ece603c7b62df76102aacf00df/); ethereum `0xd813b2...c51a21` | ⚠️ Unaudited |
| RewardHash | unknown | ethereum | 2 deployments: ethereum [`0x3cce05...7661dd`](./contracts/ethereum-1/0x3cce05568008916d739479958f7a1af5f67661dd/); ethereum `0x5ec3ec...d02fb6` | ⚠️ Unaudited |
| Rewards | unknown | ethereum | 2 deployments: ethereum [`0x086b97...e27054`](./contracts/ethereum-1/0x086b9734d33783bbe4fbc8249df4c686aae27054/); ethereum `0x79dd22...a713c5` | ⚠️ Unaudited |
| RewardsManager | governance | ethereum | 2 deployments: ethereum [`0x1b0512...7d4404`](./contracts/ethereum-1/0x1b05128b262ca335de162c8ad5e9281d5f7d4404/); ethereum `0x7cdbbd...e96d06` | ⚠️ Unaudited |
| Staking | unknown | ethereum | 8 deployments: ethereum [`0x0fc455...954b4f`](./contracts/ethereum-1/0x0fc45523d4c63a70f263dceaec9d08c947954b4f/); ethereum `0x1dddf8...1d0122`; ethereum `0x596723...11ebee`; ethereum `0x96f98e...3417d3`; ethereum `0xe5943d...6ba92f`; ethereum `0xee77aa...85ea4b`; ethereum `0xef8670...4a955b`; ethereum `0xf82337...b54f63` | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | 8 deployments: ethereum [`0x212ebf...c3932b`](./contracts/ethereum-1/0x212ebf9fd3c10f371557b08e993eaab385c3932b/); ethereum `0x24fd7f...f67fa0`; ethereum `0x593978...c1fbcb`; ethereum `0x662da6...bd8ac3`; ethereum `0xc14eaa...a7e555`; ethereum `0xc54b9f...9c42a0`; ethereum `0xdd80e2...5d9e72`; ethereum `0xebb176...c40b68` | ⚠️ Unaudited |
| StakingV1 | unknown | arbitrum | 4 deployments: arbitrum [`0x1094c4...62d304`](./contracts/arbitrum-42161/0x1094c4a99fce60e69ffe75849309408f1262d304/); arbitrum `0x4f9c6a...a899c9`; arbitrum `0xac2a4f...0e2b56`; arbitrum `0xad661c...920380` | ⚠️ Unaudited |
| TokeMigrationPool | operational_periphery | ethereum | [`0xa760e2...8eb930`](./contracts/ethereum-1/0xa760e26aa76747020171fcf8bda108dfde8eb930/) | ⚠️ Unaudited |
| Token | token | ethereum | [`0x168ef8...2536ff`](./contracts/ethereum-1/0x168ef867e3009c1864103c746d399b66482536ff/) | ⚠️ Unaudited |
| TransferController | governance | ethereum | [`0x9d98a2...6d145e`](./contracts/ethereum-1/0x9d98a2792e78e8975eae54abd7e845f3646d145e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | 6 deployments: ethereum [`0x378ba0...3fbaf8`](./contracts/ethereum-1/0x378ba0c8b4b04b4409103711846e46e63b3fbaf8/); ethereum `0x38c279...4736c1`; ethereum `0x3bc59a...2d3671`; ethereum `0x50b82e...80feea`; ethereum `0x7d4a5e...41fc96`; ethereum `0x93b34b...3d25f8` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | 6 deployments: ethereum [`0x470e8d...47f08c`](./contracts/ethereum-1/0x470e8de2ebaef52014a47cb5e6af86884947f08c/); gnosis `0x75594f...2313d1`; gnosis `0x8a0bee...7889df`; gnosis `0xc22313...464bac`; polygon `0x93ef61...e8f200`; arbitrum `0x5f6ce0...339c24` | ⚠️ Unaudited |
| WethController | governance | ethereum | [`0x3eb1b5...dc0a23`](./contracts/ethereum-1/0x3eb1b58dbe245b89c8494b8cff42b8ddbadc0a23/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0882ab...e7da64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1c5868...ccba7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x21910e...ec171c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2650d4...72e28f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x45a11b...cdd409` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x61fcab...ead816` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x66ded3...d80176` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb7df31...48a4a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc8e257...44da8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd54d2b...695bd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xecaa8d...385e19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf46dae...c516d0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x77f18a...b864ee`](./contracts/ethereum-1/0x77f18a6968a38f9aef1af676420c4799e8b864ee/) | EthPool | core_logic | $593,565.70 | Verified native implementation with $593,565.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0139b3...e6f15a`](./contracts/ethereum-1/0x0139b34012a6639e896b883901b7dc1bb6e6f15a/) | Pool | core_logic | $392,544.19 | Verified native implementation with $392,544.19 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf929de...513c73`](./contracts/arbitrum-42161/0xf929de51d91c77e42f5090069e0ad7a09e513c73/) | StandardArbERC20 | token | $267,437.12 | Verified native implementation with $267,437.12 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x21a426...67509d`](./contracts/gnosis-100/0x21a42669643f45bc0e086b8fc2ed70c23d67509d/) | PermittableToken | token | $48,399.61 | Verified native implementation with $48,399.61 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x65a05d...5b0aa8`](./contracts/polygon-137/0x65a05db8322701724c197af82c9cae41195b0aa8/) | UChildERC20 | token | $30,467.03 | Verified native implementation with $30,467.03 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2445e2...91e63c`](./contracts/ethereum-1/0x2445e2f04d6bd2995003c1cb115292942d91e63c/) | AddressRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc80373...00ac38`](./contracts/ethereum-1/0xc803737d3e12cc4034dde0b2457684322100ac38/) | DefiRound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc770ee...8ee52d`](./contracts/ethereum-1/0xc770eefad204b5180df6a14ee197d99d808ee52d/) | FOX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x06875e...5fbb55`](./contracts/arbitrum-42161/0x06875e37e780a5aed7e57dc648d5ae7c455fbb55/) | FoxStakingV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc4910...386ed3`](./contracts/ethereum-1/0xdc49108ce5c57bc3408c3a5e95f3d864ec386ed3/) | Foxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ec637...25cd39`](./contracts/ethereum-1/0x8ec637fe2800940c7959f9bad4fe69e41225cd39/) | LiquidityReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ad818...3bb7f7`](./contracts/ethereum-1/0x0ad818271471f2430be55aba528efb58713bb7f7/) | Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x160317...a915be`](./contracts/ethereum-1/0x16031783d3d27ce25ebcfb341f4eec8f7ba915be/) | OnChainVoteL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3cce05...7661dd`](./contracts/ethereum-1/0x3cce05568008916d739479958f7a1af5f67661dd/) | RewardHash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x086b97...e27054`](./contracts/ethereum-1/0x086b9734d33783bbe4fbc8249df4c686aae27054/) | Rewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fc455...954b4f`](./contracts/ethereum-1/0x0fc45523d4c63a70f263dceaec9d08c947954b4f/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x212ebf...c3932b`](./contracts/ethereum-1/0x212ebf9fd3c10f371557b08e993eaab385c3932b/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x168ef8...2536ff`](./contracts/ethereum-1/0x168ef867e3009c1864103c746d399b66482536ff/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d98a2...6d145e`](./contracts/ethereum-1/0x9d98a2792e78e8975eae54abd7e845f3646d145e/) | TransferController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3eb1b5...dc0a23`](./contracts/ethereum-1/0x3eb1b58dbe245b89c8494b8cff42b8ddbadc0a23/) | WethController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 2 |
| standard_library | 5 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
