# Agentic Audit Brief: ShardingDAO

## Project Overview

- Project: ShardingDAO (`shardingdao`)
- Website: [https://shardingdao.com/](https://shardingdao.com/)
- Lifecycle: active (Tier 0, 47.7% below peak)
- Generated: 2026-06-17T07:00:46.019Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $6,279,557.56
- On-chain TVL (included contracts): $1,376,629.69
- TVL by chain: Ethereum $1,376,629.69

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

ShardingDAO is an Ethereum staking and NFT-fragmentation protocol. It supports staking assets such as WBTC and ETH for rewards, fractionalizing NFTs into tradable shards, shard marketplace trading, collective shard ownership, buyout and governance mechanisms, and SHD-related reward/token features.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 9 inactive, 12 singleton, 0 uninitialized.
- Deployment units: 0/6 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,376,629.69
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SHDToken | token | ethereum | n/a | [`0x5845cd...db060f`](./contracts/ethereum-1/0x5845cd0205b5d43af695412a79cf7c1aeddb060f/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5845cd...db060f`](./contracts/ethereum-1/0x5845cd0205b5d43af695412a79cf7c1aeddb060f/) | SHDToken | token | $1,376,629.69 | Verified native implementation with $1,376,629.69 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2141] Audit: <>

Fork inheritance lineage and inherited audits are included when available.
