# Agentic Audit Brief: Tokenlon

⚠️ Lifecycle status: DECLINING - TVL dropped 52.2% over 90 days

## Project Overview

- Project: Tokenlon (`tokenlon`)
- Website: [https://tokenlon.im](https://tokenlon.im)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-26T16:12:42.970Z
- Pipeline run: v2-pipeline-2026-05-26-695c23-aaf8
- Chains: ethereum
- Contract surface: 21 unique implementations (34 raw deployments)
- DeFi Llama TVL: $37,169,283.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Tokenlon is a decentralized exchange protocol that provides both an aggregator for optimal trade routing and an automated market maker (AMM) for direct token swaps. It also includes staking mechanisms for its native LON token to incentivize liquidity provision and governance participation.

### Architecture

The Tokenlon AMM family relies on the LON token as the core asset, with LONStaking and xLON managing staking and governance power. Multiple StakingRewards contracts distribute incentives to liquidity providers, while UniswapV2Pair contracts facilitate token swaps. Governance is managed via a GnosisSafeProxy, and a TransparentUpgradeableProxy provides permanent storage for protocol parameters.

## Audit Coverage Summary

- Verified implementations audited: 0/21 (0.0%)
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 34
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AMMRatioStrategy | core_logic | ethereum | [`0x224221...5c3430`](./contracts/ethereum-1/0x224221a1431faa24a4455dcbe0cd4f75845c3430/) | ⚠️ Unaudited |
| AMMStrategy | core_logic | ethereum | [`0xd98edf...b1822a`](./contracts/ethereum-1/0xd98edf47faf15ad17baea52bda8ebaa212b1822a/) | ⚠️ Unaudited |
| AMMWrapper | unknown | ethereum | [`0x11be6f...909b83`](./contracts/ethereum-1/0x11be6f5520fee8e867e20af9c9d2c8a09b909b83/) | ⚠️ Unaudited |
| AMMWrapperWithPath | unknown | ethereum | [`0x4a1434...c3650d`](./contracts/ethereum-1/0x4a14347083b80e5216ca31350a2d21702ac3650d/) | ⚠️ Unaudited |
| DelayedMultiSig | governance | ethereum | 2 deployments: ethereum [`0x74c3ca...174f8a`](./contracts/ethereum-1/0x74c3ca9431c009dc35587591dc90780078174f8a/); ethereum `0x9afc22...874465` | ⚠️ Unaudited |
| GenericSwap | unknown | ethereum | [`0xbc9d99...416a91`](./contracts/ethereum-1/0xbc9d99f139f6dbba907a5a2f5d4f67918e416a91/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x3557bd...c20a46`](./contracts/ethereum-1/0x3557bd3d422300198719710cc3f00194e1c20a46/) | ⚠️ Unaudited |
| Lon | unknown | ethereum | [`0x000000...71c952`](./contracts/ethereum-1/0x0000000000095413afc295d19edeb1ad7b71c952/) | ⚠️ Unaudited |
| LONStaking | unknown | ethereum | 2 deployments: ethereum [`0x413ecc...7e289b`](./contracts/ethereum-1/0x413ecce5d56204962090eef1dead4c0a247e289b/); ethereum `0xf88506...d30f23` | ⚠️ Unaudited |
| MarketMakerProxy | unknown | ethereum | [`0x26fa4d...5930a3`](./contracts/ethereum-1/0x26fa4d866f26eac1c17f03f4a3e1a98b775930a3/) | ⚠️ Unaudited |
| MiningTreasury | operational_periphery | ethereum | [`0x292a69...1045e4`](./contracts/ethereum-1/0x292a6921efc261070a0d5c96911c102cbf1045e4/) | ⚠️ Unaudited |
| PermanentStorage | unknown | ethereum | 3 deployments: ethereum [`0x1a2866...5df84d`](./contracts/ethereum-1/0x1a286652288691d086006b81655e4efa895df84d/); ethereum `0x6d9cc1...2e7903`; ethereum `0xa1074e...296086` | ⚠️ Unaudited |
| PMM | unknown | ethereum | [`0x8d9011...5913c6`](./contracts/ethereum-1/0x8d90113a1e286a5ab3e496fbd1853f265e5913c6/) | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | ethereum | [`0xbf1c2c...02ab07`](./contracts/ethereum-1/0xbf1c2c17cc77e7dec3466b96f46f93c09f02ab07/) | ⚠️ Unaudited |
| RFQ | unknown | ethereum | [`0xfd6c2d...fab54f`](./contracts/ethereum-1/0xfd6c2d2499b1331101726a8ac68ccc9da3fab54f/) | ⚠️ Unaudited |
| Spender | unknown | ethereum | [`0x3c68df...b857a6`](./contracts/ethereum-1/0x3c68dfc45dc92c9c605d92b49858073e10b857a6/) | ⚠️ Unaudited |
| StakingMultiRewards | unknown | ethereum | [`0x11520d...b72a7a`](./contracts/ethereum-1/0x11520d501e10e2e02a2715c4a9d3f8aeb1b72a7a/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | 6 deployments: ethereum [`0x539a67...bc03f8`](./contracts/ethereum-1/0x539a67b6f9c3cad58f434cc12624b2d520bc03f8/); ethereum `0x74379c...a278e4`; ethereum `0x929cf6...21bc6a`; ethereum `0x9648b1...dbb547`; ethereum `0xb6bc1a...8fabfd`; ethereum `0xc34831...2d69f4` | ⚠️ Unaudited |
| UniAgent | unknown | ethereum | [`0x4b1200...653369`](./contracts/ethereum-1/0x4b12004b031f13caa8a28e2049f74f3d77653369/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | 2 deployments: ethereum [`0x55d31f...233c2f`](./contracts/ethereum-1/0x55d31f68975e446a40a2d02ffa4b0e1bfb233c2f/); ethereum `0x7924a8...54f31f` | ⚠️ Unaudited |
| UserProxy | unknown | ethereum | 4 deployments: ethereum [`0x03f34b...d59659`](./contracts/ethereum-1/0x03f34be1bf910116595db1b11e9d1b2ca5d59659/); ethereum `0x89062f...c9f1c3`; ethereum `0x8a491b...9a3a56`; ethereum `0xe25ff9...4c46d2` | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x224221...5c3430`](./contracts/ethereum-1/0x224221a1431faa24a4455dcbe0cd4f75845c3430/) | AMMRatioStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd98edf...b1822a`](./contracts/ethereum-1/0xd98edf47faf15ad17baea52bda8ebaa212b1822a/) | AMMStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11be6f...909b83`](./contracts/ethereum-1/0x11be6f5520fee8e867e20af9c9d2c8a09b909b83/) | AMMWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a1434...c3650d`](./contracts/ethereum-1/0x4a14347083b80e5216ca31350a2d21702ac3650d/) | AMMWrapperWithPath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x74c3ca...174f8a`](./contracts/ethereum-1/0x74c3ca9431c009dc35587591dc90780078174f8a/) | DelayedMultiSig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc9d99...416a91`](./contracts/ethereum-1/0xbc9d99f139f6dbba907a5a2f5d4f67918e416a91/) | GenericSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000000...71c952`](./contracts/ethereum-1/0x0000000000095413afc295d19edeb1ad7b71c952/) | Lon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x413ecc...7e289b`](./contracts/ethereum-1/0x413ecce5d56204962090eef1dead4c0a247e289b/) | LONStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26fa4d...5930a3`](./contracts/ethereum-1/0x26fa4d866f26eac1c17f03f4a3e1a98b775930a3/) | MarketMakerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x292a69...1045e4`](./contracts/ethereum-1/0x292a6921efc261070a0d5c96911c102cbf1045e4/) | MiningTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a2866...5df84d`](./contracts/ethereum-1/0x1a286652288691d086006b81655e4efa895df84d/) | PermanentStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d9011...5913c6`](./contracts/ethereum-1/0x8d90113a1e286a5ab3e496fbd1853f265e5913c6/) | PMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf1c2c...02ab07`](./contracts/ethereum-1/0xbf1c2c17cc77e7dec3466b96f46f93c09f02ab07/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd6c2d...fab54f`](./contracts/ethereum-1/0xfd6c2d2499b1331101726a8ac68ccc9da3fab54f/) | RFQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c68df...b857a6`](./contracts/ethereum-1/0x3c68dfc45dc92c9c605d92b49858073e10b857a6/) | Spender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11520d...b72a7a`](./contracts/ethereum-1/0x11520d501e10e2e02a2715c4a9d3f8aeb1b72a7a/) | StakingMultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x539a67...bc03f8`](./contracts/ethereum-1/0x539a67b6f9c3cad58f434cc12624b2d520bc03f8/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b1200...653369`](./contracts/ethereum-1/0x4b12004b031f13caa8a28e2049f74f3d77653369/) | UniAgent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03f34b...d59659`](./contracts/ethereum-1/0x03f34be1bf910116595db1b11e9d1b2ca5d59659/) | UserProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
