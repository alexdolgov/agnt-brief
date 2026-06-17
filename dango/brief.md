# Agentic Audit Brief: Dango

## Project Overview

- Project: Dango (`dango`)
- Website: [https://dango.exchange/](https://dango.exchange/)
- Lifecycle: active (Tier 0, 14.4% below peak)
- Generated: 2026-06-17T07:00:41.593Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 1 unique implementations (2 raw deployments)
- DeFi Llama TVL: $3,200,872.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Dango is a trading-focused Layer 1 / DeFi hub with spot trading, perpetuals, lending, vaults, unified margin, and on-chain orderbook execution. In the currently verified EVM evidence set, the measured DefiLlama TVL is attributable to the Ethereum Dango Bridge contracts; the listed Ethereum contracts should not be treated as proof of a live multi-chain perps contract surface.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 0/2 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 2
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyAdmin | governance | ethereum | n/a | 2 deployments: ethereum [`0x613942...09e601`](./contracts/ethereum-1/0x613942eff27c6886bb2a33a172cdaf03a009e601/); ethereum `0x947303...361fe6` | ⚠️ Unaudited |

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
| [contest results](https://audits.sherlock.xyz/contests/1066) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [blog](https://informal.systems/blog/jellyfish-merkle-tree-quint-2025) | Zellic | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2639] contest results
- [14306] blog

Fork inheritance lineage and inherited audits are included when available.
