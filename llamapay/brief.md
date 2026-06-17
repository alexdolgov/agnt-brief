# Agentic Audit Brief: LlamaPay

## Project Overview

- Project: LlamaPay (`llamapay`)
- Website: [https://llamapay.io](https://llamapay.io)
- Lifecycle: active (Tier 0, 71.7% below peak)
- Generated: 2026-06-17T07:00:41.745Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, berachain, bsc, cronos, ethereum, fantom, gnosis, metis, optimism, polygon, sonic, zora
- Contract surface: 13 unique implementations (33 raw deployments)
- DeFi Llama TVL: $21,007,339.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

LlamaPay is a multi-chain protocol for by-the-second recurring payment streams, commonly used for salaries, grants, subscriptions, and other continuous token payments. It also supports related vesting and escrow functionality through factory-deployed payment contracts. Claim automation/bots and upstream Disperse-style batch distribution utilities should be treated as supporting or external utilities rather than the core product purpose.

### Architecture

The Live family's LlamaPayFactory and Vesting Escrow Factory deploy TokenEscrow instances from the Scheduled Payments family, which hold and release funds. LlamaPayBot contracts interact with these escrows to automate payment execution, while Disperse assists in batch token distributions.

## Contract Surface Quality

- Indexed contracts: 104; live-surface contracts included: 33 (23 live, 10 unknown).
- Excluded by liveness: 71 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 1
- Unverified implementations: 7
- Unique implementations: 13
- Raw deployments: 33
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LlamaPayBot | unknown | avalanche | n/a | 3 deployments: ethereum `0xc5a4fe...074ab9`; bsc `0xc5a4fe...074ab9`; avalanche [`0x57547f...0353d7`](./contracts/avalanche-43114/0x57547f79d8344accab21dc0a9c9d186e240353d7/) | ⚠️ Unaudited |
| LlamaPayFactory | registry | base | n/a | 6 deployments: ethereum `0xde1c04...f84c7f`; bsc `0xde1c04...f84c7f`; metis `0x43634d...030600`; base [`0x09c39b...3aea07`](./contracts/base-8453/0x09c39b8311e4b7c678cbdad76556877ecd3aea07/); arbitrum `0xde1c04...f84c7f`; berachain [`0x09c39b...3aea07`](./contracts/berachain-80094/0x09c39b8311e4b7c678cbdad76556877ecd3aea07/) | ⚠️ Unaudited |
| Simple Vesting Escrow | operational_periphery | base | n/a | 3 deployments: base [`0x0d5e12...d62cce`](./contracts/base-8453/0x0d5e12e2bd630fc231d68f3cbf95ff5bb1d62cce/); base `0x2b3a5d...d15e49`; base `0x4c0f3d...6d4be5` | ⚠️ Unaudited |
| TokenEscrow | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x02266e...121c01`](./contracts/ethereum-1/0x02266e3b5ce26d62ea73ea7f2c542ebc24121c01/); optimism `0xb4e9d1...404779`; arbitrum `0x1564d7...528734`; avalanche `0x4c48f1...84fa0c` | ⚠️ Unaudited |
| TokenEscrow | operational_periphery | ethereum | unit-25361 | [`0x056e39...532b72`](./contracts/ethereum-1/0x056e39bdd2d35f4eb27478369bdade51e0532b72/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vesting Escrow Factory | operational_periphery | berachain | n/a | 9 deployments: ethereum `0xcf6178...6ab347`; bsc `0x62e13b...cd4c10`; gnosis `0x62e13b...cd4c10`; polygon `0x62e13b...cd4c10`; sonic `0xb93427...10411a`; base `0x62e13b...cd4c10`; arbitrum `0x62e13b...cd4c10`; avalanche `0x62e13b...cd4c10`; berachain [`0x4ace3e...2b84bd`](./contracts/berachain-80094/0x4ace3edd57eff1176a862e7b72db090ecf2b84bd/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | `0x62e13b...cd4c10` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x62e13b...cd4c10` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xc5a4fe...074ab9` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xd152f5...452150` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xda33d4...5294d1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xde1c04...f84c7f` | ❓ Unverified |
| UnnamedContract | unknown | zora | n/a | `0x62e13b...cd4c10` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-LlamaPay-v1.0.pdf](https://github.com/LlamaPay/llamapay/blob/master/audits/PeckShield-Audit-Report-LlamaPay-v1.0.pdf) | PeckShield | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [5984] PeckShield-Audit-Report-LlamaPay-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
