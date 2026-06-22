# Agentic Audit Brief: Conic Finance

⚠️ Lifecycle status: DEAD - TVL dropped 38.5% over 90 days

## Project Overview

- Project: Conic Finance (`conic-finance`)
- Website: [https://conic.finance](https://conic.finance)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T07:01:06.412Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $52,378.58
- On-chain TVL (included contracts): $7,852.25
- TVL by chain: Ethereum $7,852.25

## Project Description

Conic Finance is a yield optimization protocol that allows users to deposit stablecoins or ETH into omnipools, which allocate liquidity across multiple Curve pools to maximize returns. It uses the CNC token for governance and incentives, and includes mechanisms for debt, bonding, and inflation management.

### Architecture

The Core family's Controller governs the Conic Finance family by managing parameters and access for pools, tokens, and reward mechanisms. Conic Finance contracts like ConicPool and DebtPool rely on the Controller for authorization, while CNC token flows through staking, bonding, and inflation contracts to incentivize liquidity provision.

## Contract Surface Quality

- Indexed contracts: 72; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 67 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/2 live.
- Detected codebases: none
- Unverified dependencies: 3/277.

## Audit Coverage Summary

- Verified implementations audited: 5/5 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: 80.0% (ChainSecurity, MixBytes)
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 4 | 80.0% | 2023-12 |
| PeckShield | Tier 2 | 3 | 60.0% | 2023-02 |
| MixBytes | Tier 1 | 2 | 40.0% | 2024-01 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CNCToken | token | ethereum | n/a | [`0x9ae380...0f5cfc`](./contracts/ethereum-1/0x9ae380f0272e2162340a5bb646c354271c0f5cfc/) | ✅ Audited |
| Bonding | unknown | ethereum | n/a | [`0xc3d0d5...7d6b9c`](./contracts/ethereum-1/0xc3d0d54aff5209118aed32253cc8ec5f417d6b9c/) | ✅ Audited |
| CNCLockerV3 | unknown | ethereum | n/a | [`0x8b318d...5b2c93`](./contracts/ethereum-1/0x8b318d1d27ee1e4329d88f0c1e9bc3a1025b2c93/) | ✅ Audited |
| ConicPool | core_logic | ethereum | n/a | [`0x72c23c...263140`](./contracts/ethereum-1/0x72c23c94f68669c7b6a5b6e8c87aa9b70c263140/) | ✅ Audited |
| LpToken | token | ethereum | n/a | [`0x9961bd...564a8c`](./contracts/ethereum-1/0x9961bdbe8b7091e584c2bf9d0a160c583f564a8c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [DL audit link](https://conic.finance/media/PeckShield-Audit-Report-ConicFinance.pdf) | PeckShield | Audit | 2023-02 | stale | Direct | contract_name | 3 | high |
| [ChainSecurity: <>](https://conic.finance/media/ChainSecurity-Audit-Report-ConicFinance.pdf) | ChainSecurity | Audit | 2023-12 | stale | Direct | contract_name | 4 | high |
| [MixBytes: <>](https://conic.finance/media/MixBytes-Audit-Report-ConicFinance.pdf) | MixBytes | Audit | 2024-01 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=104

Fork inheritance lineage and inherited audits are included when available.
