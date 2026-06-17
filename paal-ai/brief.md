# Agentic Audit Brief: PAAL AI

## Project Overview

- Project: PAAL AI (`paal-ai`)
- Website: [https://www.paal.ai/](https://www.paal.ai/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:01:01.720Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 3 unique implementations (5 raw deployments)
- DeFi Llama TVL: $1,299,518.17
- On-chain TVL (included contracts): $830,132.91
- TVL by chain: Ethereum $830,132.91

## Project Description

PAAL AI is an AI bot and application ecosystem with on-chain infrastructure identified in this brief limited to the PAALAI token and Ethereum staking pools. The Ethereum contracts include the native PAALAI token and multiple staking pool contracts used for token staking participation.

### Architecture

The PAALAI token is the central asset used across all staking pools. Each StakingPool contract operates independently but shares the same token, allowing users to stake PAALAI in different pools, likely with varying reward structures or conditions.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 1/2.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 5
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $830,132.91
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakingPool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x163ad6...942d7b`](./contracts/ethereum-1/0x163ad6ac78ffe40e194310faeada8f6615942d7b/); ethereum `0x843106...80894f`; ethereum `0x85e253...69d624` | ⚠️ Unaudited |
| PAALAI | unknown | ethereum | n/a | [`0x14fee6...d10e16`](./contracts/ethereum-1/0x14fee680690900ba0cccfc76ad70fd1b95d10e16/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x2a6c34...a9259f`](./contracts/ethereum-1/0x2a6c340bcbb0a79d3deecd3bc5cbc2605ea9259f/) | ⚠️ Unaudited |

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
| ethereum | [`0x163ad6...942d7b`](./contracts/ethereum-1/0x163ad6ac78ffe40e194310faeada8f6615942d7b/) | StakingPool | core_logic | $830,132.91 | Verified native implementation with $830,132.91 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14fee6...d10e16`](./contracts/ethereum-1/0x14fee680690900ba0cccfc76ad70fd1b95d10e16/) | PAALAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 1 |
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
