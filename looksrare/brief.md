# Agentic Audit Brief: LooksRare

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: LooksRare (`looksrare`)
- Website: [https://looksrare.org/](https://looksrare.org/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-20T01:18:51.154Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: ethereum
- Contract surface: 13 unique implementations (14 raw deployments)
- DeFi Llama TVL: $27,887.10
- On-chain TVL (included contracts): $224,981.83
- TVL by chain: Ethereum $224,981.83

## Project Description

LooksRare is an NFT marketplace protocol that enables users to trade NFTs, earn rewards through staking and trading, and participate in raffles and other incentive programs. It includes its own native token (LOOKS) and integrates with Uniswap for liquidity.

### Architecture

The NFT Marketplace family relies on the Token and Governance family for fee collection and protocol parameters, while the Staking and Rewards family uses the LOOKS token and distributes rewards to marketplace users. Raffles and YOLO are standalone games that may use NFTs from the marketplace.

## Contract Surface Quality

- Indexed contracts: 57; live-surface contracts included: 14 (13 live, 1 unknown).
- Excluded by liveness: 43 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Dependencies extracted: 65; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 4/13 (30.8%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 14
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $0.63
- Latest audit: 2022-03 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: 23.1% (Trail of Bits)
- Note: This protocol is classified as [unknown]. ASD of $0.63 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 3 | 23.1% | 2022-03 |
| Trail of Bits | Tier 1 | 3 | 23.1% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LooksRareToken | token | ethereum | n/a | [`0xf4d288...92421e`](./contracts/ethereum-1/0xf4d2888d29d722226fafa5d9b24f9164c092421e/) | ✅ Audited |
| AggregatorFeeSharingWithUniswapV3 | unknown | ethereum | n/a | [`0x3ab16a...0fd9ba`](./contracts/ethereum-1/0x3ab16af1315dc6c95f83cbf522fecf98d00fd9ba/) | ✅ Audited |
| FeeSharingSystem | unknown | ethereum | n/a | [`0xbcd725...cc12ce`](./contracts/ethereum-1/0xbcd7254a1d759efa08ec7c3291b2e85c5dcc12ce/) | ✅ Audited |
| LooksRareExchange | unknown | ethereum | n/a | [`0x597285...17ce3a`](./contracts/ethereum-1/0x59728544b08ab483533076417fbbb2fd0b17ce3a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakingPoolForUniswapV2Tokens | core_logic | ethereum | n/a | [`0x2a70e7...bfadc5`](./contracts/ethereum-1/0x2a70e7f51f6cd40c3e9956aa964137668cbfadc5/) | ⚠️ Unaudited |
| LooksRareProtocol | unknown | ethereum | n/a | [`0x000000...3b2377`](./contracts/ethereum-1/0x0000000000e655fae4d56241588680f86e3b2377/) | ⚠️ Unaudited |
| RaffleV2 | unknown | ethereum | n/a | [`0x000000...52c1d0`](./contracts/ethereum-1/0x0000000000adead599c11a0c9a7475b67852c1d0/) | ⚠️ Unaudited |
| SeasonRewardsDistributor | operational_periphery | ethereum | n/a | [`0x5c073c...8ed472`](./contracts/ethereum-1/0x5c073cecafc56ee9f4335230a09933965c8ed472/) | ⚠️ Unaudited |
| StrategyCollectionOffer | core_logic | ethereum | n/a | [`0x000000...bfc8d2`](./contracts/ethereum-1/0x0000000000e58692bf5fa347312da78ca8bfc8d2/) | ⚠️ Unaudited |
| TransferManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x000000...d29e1d`](./contracts/ethereum-1/0x00000000000ea4af05656c17b90f4d64add29e1d/); ethereum `0x000000...33fe3d` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xdc00ba...1a32f7`](./contracts/ethereum-1/0xdc00ba87cc2d99468f7f34bc04cbf72e111a32f7/) | ⚠️ Unaudited |
| WrappedLooksRareToken | token | ethereum | n/a | [`0xe7bac7...e13ce4`](./contracts/ethereum-1/0xe7bac7d798d66d353b9e50ebfc6859950fe13ce4/) | ⚠️ Unaudited |
| Yolo | unknown | ethereum | n/a | [`0x000000...e4a231`](./contracts/ethereum-1/0x00000000007767d79f9f4aa1ff0d71b8e2e4a231/) | ⚠️ Unaudited |

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
| [LooksRare.pdf](https://github.com/trailofbits/publications/blob/master/reviews/LooksRare.pdf) | Trail of Bits | Audit | 2022-03 | stale | Direct | contract_name | 3 | high |
| [PeckShield-Audit-Report-LooksRare-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-LooksRare-v1.0.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | 2 | high |
| [PeckShield-Audit-Report-LooksRare-AggregatorFeeSharing-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-LooksRare-AggregatorFeeSharing-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2a70e7...bfadc5`](./contracts/ethereum-1/0x2a70e7f51f6cd40c3e9956aa964137668cbfadc5/) | StakingPoolForUniswapV2Tokens | core_logic | $0.63 | Verified native implementation with $0.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000000...3b2377`](./contracts/ethereum-1/0x0000000000e655fae4d56241588680f86e3b2377/) | LooksRareProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000000...52c1d0`](./contracts/ethereum-1/0x0000000000adead599c11a0c9a7475b67852c1d0/) | RaffleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c073c...8ed472`](./contracts/ethereum-1/0x5c073cecafc56ee9f4335230a09933965c8ed472/) | SeasonRewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000000...bfc8d2`](./contracts/ethereum-1/0x0000000000e58692bf5fa347312da78ca8bfc8d2/) | StrategyCollectionOffer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000000...d29e1d`](./contracts/ethereum-1/0x00000000000ea4af05656c17b90f4d64add29e1d/) | TransferManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe7bac7...e13ce4`](./contracts/ethereum-1/0xe7bac7d798d66d353b9e50ebfc6859950fe13ce4/) | WrappedLooksRareToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000000...e4a231`](./contracts/ethereum-1/0x00000000007767d79f9f4aa1ff0d71b8e2e4a231/) | Yolo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=16

Fork inheritance lineage and inherited audits are included when available.
