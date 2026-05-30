# Agentic Audit Brief: ShardingDAO

## Project Overview

- Project: ShardingDAO (`shardingdao`)
- Website: [https://shardingdao.com/](https://shardingdao.com/)
- Lifecycle: active (Tier 0, 47.7% below peak)
- Generated: 2026-05-30T11:22:45.350Z
- Pipeline run: v2-pipeline-2026-05-30-255779-2e4e
- Chains: ethereum
- Contract surface: 12 unique implementations (22 raw deployments)
- DeFi Llama TVL: $7,781,100.38
- On-chain TVL (included contracts): $1,376,629.69
- TVL by chain: Ethereum $1,376,629.69

## Project Description

ShardingDAO is a staking pool protocol that allows users to stake assets and earn rewards. It includes mechanisms for marketing mining, token bar staking, shards market trading, and buyout proposals.

### Architecture

All contracts are deployed by the same deployer and share a common proxy pattern where delegator proxies point to delegate implementations. The protocol's components are tightly integrated under a single product family, with no separate families identified.

## Audit Coverage Summary

- Verified implementations audited: 0/12 (0.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 22
- Audits discovered: 4
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,376,629.69
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 4 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SHDToken | token | ethereum | [`0x5845cd...db060f`](./contracts/ethereum-1/0x5845cd0205b5d43af695412a79cf7c1aeddb060f/) | ⚠️ Unaudited |
| BuyoutProposals | unknown | ethereum | 2 deployments: ethereum [`0x01da4a...5653f2`](./contracts/ethereum-1/0x01da4a4a0ed7757e95848112dbb9f005b55653f2/); ethereum `0xdf83c1...505cfd` | ⚠️ Unaudited |
| CrossChain | unknown | ethereum | 2 deployments: ethereum [`0xb661ef...97bbfb`](./contracts/ethereum-1/0xb661ef22dd089063d48efce2cf8e19917797bbfb/); ethereum `0xfdaa41...76fb26` | ⚠️ Unaudited |
| MarketingMiningDelegate | unknown | ethereum | 2 deployments: ethereum [`0x0feccb...770dce`](./contracts/ethereum-1/0x0feccb11c5b61b3922c511d0f002c0b72d770dce/); ethereum `0xab2cc3...bd0db0` | ⚠️ Unaudited |
| MarketRegulator | unknown | ethereum | [`0xdddf6b...799b29`](./contracts/ethereum-1/0xdddf6b2c719d04f5f87230dd02c12ea062799b29/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | [`0xff31e3...eddfdd`](./contracts/ethereum-1/0xff31e3921f5bef7dcea1b01c9f7ed1153beddfdd/) | ⚠️ Unaudited |
| ShardingDAOMiningDelegate | unknown | ethereum | 5 deployments: ethereum [`0x5cb8a5...b72540`](./contracts/ethereum-1/0x5cb8a52bb5191be839bbdb69bd0b24b8cbb72540/); ethereum `0x627af3...e737a1`; ethereum `0x73aaf8...98a947`; ethereum `0x84ef19...45278c`; ethereum `0xbae5d3...b5672e` | ⚠️ Unaudited |
| ShardsFactory | registry | ethereum | [`0xc1a012...cf8d9f`](./contracts/ethereum-1/0xc1a0129499b5633ba0dcad1f24289fd3bfcf8d9f/) | ⚠️ Unaudited |
| ShardsMarketDelegateV0 | unknown | ethereum | 2 deployments: ethereum [`0x13a246...feb824`](./contracts/ethereum-1/0x13a246e429ff8e7cf7d371133b511e601bfeb824/); ethereum `0xe77149...758c20` | ⚠️ Unaudited |
| SHDVote | unknown | ethereum | [`0xec7879...5ec540`](./contracts/ethereum-1/0xec78795492cfb5dee4a54a38efb512c9095ec540/) | ⚠️ Unaudited |
| Timelock | governance | ethereum | 2 deployments: ethereum [`0xaeb5bc...375756`](./contracts/ethereum-1/0xaeb5bcdb55e6abc2450595df27f993b82f375756/); ethereum `0xc8d11b...016b0b` | ⚠️ Unaudited |
| TokenBarDelegate | token | ethereum | 2 deployments: ethereum [`0x5953eb...e19b16`](./contracts/ethereum-1/0x5953eb2e1790b9a0cba6f02cc20026a688e19b16/); ethereum `0xea1e9f...1be078` | ⚠️ Unaudited |

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
| [Audit: <>](https://shardingdao.com/files/shd_smart_contract_audit_report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5845cd...db060f`](./contracts/ethereum-1/0x5845cd0205b5d43af695412a79cf7c1aeddb060f/) | SHDToken | token | $1,376,629.69 | Verified native implementation with $1,376,629.69 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01da4a...5653f2`](./contracts/ethereum-1/0x01da4a4a0ed7757e95848112dbb9f005b55653f2/) | BuyoutProposals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb661ef...97bbfb`](./contracts/ethereum-1/0xb661ef22dd089063d48efce2cf8e19917797bbfb/) | CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0feccb...770dce`](./contracts/ethereum-1/0x0feccb11c5b61b3922c511d0f002c0b72d770dce/) | MarketingMiningDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdddf6b...799b29`](./contracts/ethereum-1/0xdddf6b2c719d04f5f87230dd02c12ea062799b29/) | MarketRegulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5cb8a5...b72540`](./contracts/ethereum-1/0x5cb8a52bb5191be839bbdb69bd0b24b8cbb72540/) | ShardingDAOMiningDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1a012...cf8d9f`](./contracts/ethereum-1/0xc1a0129499b5633ba0dcad1f24289fd3bfcf8d9f/) | ShardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13a246...feb824`](./contracts/ethereum-1/0x13a246e429ff8e7cf7d371133b511e601bfeb824/) | ShardsMarketDelegateV0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xec7879...5ec540`](./contracts/ethereum-1/0xec78795492cfb5dee4a54a38efb512c9095ec540/) | SHDVote | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaeb5bc...375756`](./contracts/ethereum-1/0xaeb5bcdb55e6abc2450595df27f993b82f375756/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5953eb...e19b16`](./contracts/ethereum-1/0x5953eb2e1790b9a0cba6f02cc20026a688e19b16/) | TokenBarDelegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2141] Audit: <>
- [10449] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [10450] 0002-metadata-manifest-and-pull-command.md
- [10451] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
