# Agentic Audit Brief: Valas Finance

⚠️ Lifecycle status: DEAD - TVL dropped 100.0% over 90 days

## Project Overview

- Project: Valas Finance (`valas-finance`)
- Website: [https://valasfinance.com/](https://valasfinance.com/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-20T00:32:37.593Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 5 unique implementations (6 raw deployments)
- DeFi Llama TVL: $22,074.68
- On-chain TVL (included contracts): $193,685.15
- TVL by chain: Bsc $193,685.15

## Project Description

Valas Finance is a decentralized lending protocol on BSC that enables users to deposit assets to earn interest and borrow against them. It uses a pool-based model with variable interest rates, collateralized loans, and governance via the VALAS token.

### Architecture

The Deployment Addresses family provides the core logic and configuration for the lending pools, while the valTokens family represents the tokenized positions. The LendingPool interacts with AToken proxies to mint/burn tokens on deposit/withdraw, and relies on oracles and the configurator for asset parameters.

## Contract Surface Quality

- Indexed contracts: 46; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 25 inactive, 15 singleton, 0 uninitialized.
- Deployment units: 0/4 live.
- Detected codebases: aave-v2
- Unverified dependencies: 1/27.

## Audit Coverage Summary

- Verified implementations audited: 3/5 (60.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 6
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 3 | 60.0% | 2022-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ValasToken | token | bsc | n/a | [`0xb1ebdd...42ea6f`](./contracts/bsc-56/0xb1ebdd56729940089ecc3ad0bbeeb12b6842ea6f/) | ✅ Audited |
| ChefIncentivesController | governance | bsc | n/a | [`0xb7c1d9...e7ecbf`](./contracts/bsc-56/0xb7c1d99069a4eb582fc04e7e1124794000e7ecbf/) | ✅ Audited |
| MultiFeeDistribution | unknown | bsc | n/a | [`0x685d3b...15a3b3`](./contracts/bsc-56/0x685d3b02b9b0f044a3c01dbb95408fc2eb15a3b3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| IncentiveEarner | unknown | bsc | n/a | 2 deployments: bsc [`0x45db28...c304a7`](./contracts/bsc-56/0x45db28f16c21d441006069a269c0442e4cc304a7/); bsc `0xa6e85e...dd09d2` | ⚠️ Unaudited |
| WETHGateway | token | bsc | n/a | [`0x3025d9...c28a29`](./contracts/bsc-56/0x3025d9f822d399fd7fb6275b5164bbde6dc28a29/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-ValasFinance-v1.0.pdf](https://github.com/valas-finance/valas-protocol/blob/main/audits/PeckShield-Audit-Report-ValasFinance-v1.0.pdf) | PeckShield | Audit | 2022-06 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x45db28...c304a7`](./contracts/bsc-56/0x45db28f16c21d441006069a269c0442e4cc304a7/) | IncentiveEarner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=23

Fork inheritance lineage and inherited audits are included when available.
