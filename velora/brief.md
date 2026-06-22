# Agentic Audit Brief: Velora

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Velora (`velora`)
- Website: [https://app.velora.xyz](https://app.velora.xyz)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-21T11:12:59.414Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: avalanche, base, bsc, ethereum, optimism, polygon
- Contract surface: 16 unique implementations (27 raw deployments)
- DeFi Llama TVL: $248,180.60
- On-chain TVL (included contracts): $157,612.25
- TVL by chain: Optimism $116,576.09 | Ethereum $41,036.16

## Project Description

Velora is a DEX aggregator that routes trades across multiple liquidity sources to provide users with optimal swap rates. It also includes a staking system for its governance token PSP, allowing users to earn rewards and participate in protocol governance.

### Architecture

The Velora family's PSP token is used for governance and staking, while the Addresses by chain family handles trade aggregation and fee collection. Fees collected by AugustusFeeVault may be distributed to stakers in the Velora family, linking the two families through a shared economic incentive.

## Contract Surface Quality

- Indexed contracts: 246; live-surface contracts included: 27 (27 live, 0 unknown).
- Excluded by liveness: 209 inactive, 10 singleton, 0 uninitialized.
- Deployment units: 1/7 live.
- Detected codebases: balancer-v2
- Unverified dependencies: 2/34.

## Audit Coverage Summary

- Verified implementations audited: 1/16 (6.3%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 27
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $157,612.25
- Latest audit: 2021-01 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $157,612.25 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 6.3% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AugustusSwapper | adapter | base | n/a | [`0x59c7c8...a08a52`](./contracts/base-8453/0x59c7c832e96d2568bea6db468c1aadcbbda08a52/) | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| L2StandardERC20 | token | optimism | n/a | [`0xd3594e...d49d48`](./contracts/optimism-10/0xd3594e879b358f430e20f82bea61e83562d49d48/) | ⚠️ Unaudited |
| AugustusFeeVault | core_logic | ethereum | n/a | [`0x007000...0010cc`](./contracts/ethereum-1/0x00700052c0608f670705380a4900e0a8080010cc/) | ⚠️ Unaudited |
| AugustusRFQ | unknown | avalanche | n/a | 4 deployments: ethereum `0xe92b58...f55a06`; bsc `0x8dcdfe...0288bb`; polygon `0xf3cd47...09a043`; avalanche [`0x34302c...9df51f`](./contracts/avalanche-43114/0x34302c4267d0da0a8c65510282cc22e9e39df51f/) | ⚠️ Unaudited |
| AugustusV6 | unknown | ethereum | n/a | [`0x6a000f...001068`](./contracts/ethereum-1/0x6a000f20005980200259b80c5102003040001068/) | ⚠️ Unaudited |
| CumulativeMerkleDistributor | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x2cf552...b36892`](./contracts/ethereum-1/0x2cf552a87adae03b1f53a760f81c0c0b5fb36892/); optimism `0x7e202c...d1cd4a` | ⚠️ Unaudited |
| DeltaWrappedNative | unknown | ethereum | n/a | [`0x0a0d53...406742`](./contracts/ethereum-1/0x0a0d53b6684c7b32b4cbef5fe8483bfcc8406742/) | ⚠️ Unaudited |
| FeeClaimer | operational_periphery | bsc | n/a | 5 deployments: ethereum `0xef1310...6952f7`; bsc [`0x2df174...b89347`](./contracts/bsc-56/0x2df17455b96dde3618fd6b1c3a9aa06d6ab89347/); polygon `0x8b5cf4...96c060`; base `0x9aab4b...efb3c7`; avalanche `0xbfcd68...a29e67` | ⚠️ Unaudited |
| MerkleRedeem | operational_periphery | optimism | n/a | [`0xd57fd7...c21ce6`](./contracts/optimism-10/0xd57fd755f53666ce2d3ed8c862a8d06e38c21ce6/) | ⚠️ Unaudited |
| PreSignatureModule | unknown | ethereum | unit-42310 | [`0x000000...33c96d`](./contracts/ethereum-1/0x0000000000bbf5c5fd284e657f01bd000933c96d/) | ⚠️ Unaudited |
| PSP | unknown | ethereum | n/a | [`0xcafe00...7f3de5`](./contracts/ethereum-1/0xcafe001067cdef266afb7eb5a286dcfd277f3de5/) | ⚠️ Unaudited |
| PSPStakingMigratorV1 | periphery | ethereum | n/a | [`0x81df86...18eed3`](./contracts/ethereum-1/0x81df863e89429b0d4230a2a922de4f37f718eed3/) | ⚠️ Unaudited |
| sePSP | unknown | ethereum | n/a | 2 deployments: ethereum [`0x716fbc...c5ffab`](./contracts/ethereum-1/0x716fbc68e0c761684d9280484243ff094cc5ffab/); optimism `0x8c934b...348615` | ⚠️ Unaudited |
| sePSP2 | unknown | optimism | n/a | 2 deployments: ethereum `0x593f39...03c485`; optimism [`0x26ee65...4fb2c8`](./contracts/optimism-10/0x26ee65874f5dbefa629eb103e7bbb2deaf4fb2c8/) | ⚠️ Unaudited |
| sePSPStakingMigratorV1 | periphery | optimism | n/a | [`0x18e1a8...f8c583`](./contracts/optimism-10/0x18e1a8431ce39cbfe95958207da2d68a7ef8c583/) | ⚠️ Unaudited |
| WeightedPool | core_logic | optimism | n/a | 2 deployments: ethereum `0xcb0e14...e5061d`; optimism [`0x11f0b5...c68440`](./contracts/optimism-10/0x11f0b5cca01b0f0a9fe6265ad6e8ee3419c68440/) | ⚠️ Unaudited |

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
| [Audit Report - ParaSwap [20.01.2021].pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20ParaSwap%20%5B20.01.2021%5D.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x007000...0010cc`](./contracts/ethereum-1/0x00700052c0608f670705380a4900e0a8080010cc/) | AugustusFeeVault | core_logic | $41,036.16 | Verified native implementation with $41,036.16 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x34302c...9df51f`](./contracts/avalanche-43114/0x34302c4267d0da0a8c65510282cc22e9e39df51f/) | AugustusRFQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a000f...001068`](./contracts/ethereum-1/0x6a000f20005980200259b80c5102003040001068/) | AugustusV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cf552...b36892`](./contracts/ethereum-1/0x2cf552a87adae03b1f53a760f81c0c0b5fb36892/) | CumulativeMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a0d53...406742`](./contracts/ethereum-1/0x0a0d53b6684c7b32b4cbef5fe8483bfcc8406742/) | DeltaWrappedNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2df174...b89347`](./contracts/bsc-56/0x2df17455b96dde3618fd6b1c3a9aa06d6ab89347/) | FeeClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xd57fd7...c21ce6`](./contracts/optimism-10/0xd57fd755f53666ce2d3ed8c862a8d06e38c21ce6/) | MerkleRedeem | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000000...33c96d`](./contracts/ethereum-1/0x0000000000bbf5c5fd284e657f01bd000933c96d/) | PreSignatureModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcafe00...7f3de5`](./contracts/ethereum-1/0xcafe001067cdef266afb7eb5a286dcfd277f3de5/) | PSP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81df86...18eed3`](./contracts/ethereum-1/0x81df863e89429b0d4230a2a922de4f37f718eed3/) | PSPStakingMigratorV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x716fbc...c5ffab`](./contracts/ethereum-1/0x716fbc68e0c761684d9280484243ff094cc5ffab/) | sePSP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x26ee65...4fb2c8`](./contracts/optimism-10/0x26ee65874f5dbefa629eb103e7bbb2deaf4fb2c8/) | sePSP2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x18e1a8...f8c583`](./contracts/optimism-10/0x18e1a8431ce39cbfe95958207da2d68a7ef8c583/) | sePSPStakingMigratorV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=4

Fork inheritance lineage and inherited audits are included when available.
