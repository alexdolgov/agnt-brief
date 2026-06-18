# Agentic Audit Brief: Gro

⚠️ Lifecycle status: DECLINING - TVL changed 0.1% over 90 days

## Project Overview

- Project: Gro (`gro`)
- Lifecycle: declining (Tier 0, 97.4% below peak)
- Generated: 2026-06-18T15:21:07.920Z
- Pipeline run: v2-pipeline-2026-06-13-546062-8c0a
- Chains: avalanche, ethereum
- Contract surface: 12 unique implementations (13 raw deployments)
- DeFi Llama TVL: $4,661,055.86
- On-chain TVL (included contracts): $2,925,881.96
- TVL by chain: Ethereum $2,925,656.52 | Avalanche $225.44

## Project Description

Gro is a stablecoin yield aggregator that optimizes DeFi yield while tranching risk and return across its main products, including PWRD for lower-risk protected exposure and Vault strategies for higher-yield stablecoin exposure.

### Architecture

The Gro family integrates yield-bearing tokens (RebasingGToken, NonRebasingGToken) with staking contracts (LPTokenStaker) for the governance token (GROToken), while liquidity pools (UniswapV2Pair, WeightedPool) facilitate trading and deeper liquidity for the ecosystem.

## Contract Surface Quality

- Indexed contracts: 178; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 165 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: balancer-v2, compound-v2, uniswap-v2
- Unverified dependencies: 9/130.

## Audit Coverage Summary

- Verified implementations audited: 0/12 (0.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 13
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,925,881.96
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,925,881.96 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RebasingGToken | token | ethereum | n/a | [`0xf0a93d...3cb86b`](./contracts/ethereum-1/0xf0a93d4994b3d98fb5e3a2f90dbc2d69073cb86b/) | ⚠️ Unaudited |
| GROToken | token | ethereum | n/a | [`0x3ec879...0b74d7`](./contracts/ethereum-1/0x3ec8798b81485a254928b70cda1cf0a2bb0b74d7/) | ⚠️ Unaudited |
| NonRebasingGToken | token | ethereum | n/a | [`0x3adb04...c52a0c`](./contracts/ethereum-1/0x3adb04e127b9c0a5d36094125669d4603ac52a0c/) | ⚠️ Unaudited |
| VaultAdaptorMK2 | core_logic | avalanche | n/a | [`0x606359...e3ef55`](./contracts/avalanche-43114/0x6063597b9356b246e706fd6a48c780f897e3ef55/) | ⚠️ Unaudited |
| GMerkleVestor | operational_periphery | ethereum | n/a | [`0x02c133...31c720`](./contracts/ethereum-1/0x02c133b9fbffb8d2e8cb7b7a94c7c880b331c720/) | ⚠️ Unaudited |
| GRouter | adapter | ethereum | n/a | [`0xd4139e...83790d`](./contracts/ethereum-1/0xd4139e090e43ff77172d9dd8ba449d2a9683790d/) | ⚠️ Unaudited |
| GROVesting | operational_periphery | ethereum | n/a | [`0x748218...178360`](./contracts/ethereum-1/0x748218256afe0a19a88ebeb2e0c5ce86d2178360/) | ⚠️ Unaudited |
| LPTokenStaker | core_logic | ethereum | n/a | [`0x2e32ba...ed376c`](./contracts/ethereum-1/0x2e32bad45a1c29c1ea27cf4dd588df9e68ed376c/) | ⚠️ Unaudited |
| RedemptionPool | core_logic | ethereum | n/a | [`0x204d9d...27b6ef`](./contracts/ethereum-1/0x204d9de758217a39149767731a87bcc32427b6ef/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 2 deployments: ethereum [`0x21c591...bfd2f6`](./contracts/ethereum-1/0x21c5918ccb42d20a2368bdca8feda0399ebfd2f6/); ethereum `0x2ac5bc...67e9bb` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0xbcb91e...df4105`](./contracts/ethereum-1/0xbcb91e689114b9cc865ad7871845c95241df4105/) | ⚠️ Unaudited |
| WeightedPool | core_logic | ethereum | n/a | [`0x702605...7b31ba`](./contracts/ethereum-1/0x702605f43471183158938c1a3e5f5a359d7b31ba/) | ⚠️ Unaudited |

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
| ethereum | [`0xf0a93d...3cb86b`](./contracts/ethereum-1/0xf0a93d4994b3d98fb5e3a2f90dbc2d69073cb86b/) | RebasingGToken | token | $1,758,331.88 | Verified native implementation with $1,758,331.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ec879...0b74d7`](./contracts/ethereum-1/0x3ec8798b81485a254928b70cda1cf0a2bb0b74d7/) | GROToken | token | $841,338.88 | Verified native implementation with $841,338.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3adb04...c52a0c`](./contracts/ethereum-1/0x3adb04e127b9c0a5d36094125669d4603ac52a0c/) | NonRebasingGToken | token | $325,985.76 | Verified native implementation with $325,985.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x606359...e3ef55`](./contracts/avalanche-43114/0x6063597b9356b246e706fd6a48c780f897e3ef55/) | VaultAdaptorMK2 | core_logic | $225.44 | Verified native implementation with $225.44 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02c133...31c720`](./contracts/ethereum-1/0x02c133b9fbffb8d2e8cb7b7a94c7c880b331c720/) | GMerkleVestor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd4139e...83790d`](./contracts/ethereum-1/0xd4139e090e43ff77172d9dd8ba449d2a9683790d/) | GRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x748218...178360`](./contracts/ethereum-1/0x748218256afe0a19a88ebeb2e0c5ce86d2178360/) | GROVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e32ba...ed376c`](./contracts/ethereum-1/0x2e32bad45a1c29c1ea27cf4dd588df9e68ed376c/) | LPTokenStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x204d9d...27b6ef`](./contracts/ethereum-1/0x204d9de758217a39149767731a87bcc32427b6ef/) | RedemptionPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
