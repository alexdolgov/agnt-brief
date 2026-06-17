# Agentic Audit Brief: Neemo Finance

## Project Overview

- Project: Neemo Finance (`neemo-finance`)
- Website: [https://neemo.finance/](https://neemo.finance/)
- Lifecycle: active (Tier 0, 74.5% below peak)
- Generated: 2026-06-17T07:00:52.474Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $1,118,880.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Neemo Finance is an Astar/Soneium-focused liquid staking and restaking protocol for ASTR and ETH. Users receive liquid derivative tokens such as nsASTR and nrETH while participating in staking/restaking strategies. Current public TVL attribution should be treated as Astar/Soneium-focused rather than Ethereum-mainnet-primary unless supported by matching chain TVL and deployed contracts.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 12 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | proxy | ethereum | unit-31926 | [`0x54cd23...c13525`](./contracts/ethereum-1/0x54cd23460df45559fd5feeaada7ba25f89c13525/) | ⚠️ Unaudited |

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
| [DL audit link](https://hacken.io/audits/neemo-finance) | Hacken | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3061] DL audit link

Fork inheritance lineage and inherited audits are included when available.
