# Agentic Audit Brief: Dango

## Project Overview

- Project: Dango (`dango`)
- Website: [https://dango.exchange/](https://dango.exchange/)
- Lifecycle: active (Tier 0, 14.4% below peak)
- Generated: 2026-06-10T20:59:01.617Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 3 unique implementations (6 raw deployments)
- DeFi Llama TVL: $3,870,467.00
- On-chain TVL (included contracts): $4,073,057.79
- TVL by chain: Ethereum $4,073,057.79

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Dango is a trading-focused Layer 1 / DeFi hub with spot trading, perpetuals, lending, vaults, unified margin, and on-chain orderbook execution. In the currently verified EVM evidence set, the measured DefiLlama TVL is attributable to the Ethereum Dango Bridge contracts; the listed Ethereum contracts should not be treated as proof of a live multi-chain perps contract surface.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 6
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $4,073,057.79
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| HypERC20Collateral | token | ethereum | 2 deployments: ethereum [`0xd05909...c0f36c`](./contracts/ethereum-1/0xd05909852ae07118857f9d071781671d12c0f36c/); ethereum `0xe07165...fc84f9` | ⚠️ Unaudited |
| HypNative | unknown | ethereum | 2 deployments: ethereum [`0x9d0ea3...cf73d4`](./contracts/ethereum-1/0x9d0ea335355da17ee89e50df43ab823416cf73d4/); ethereum `0x9d259a...3154cb` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 2 deployments: ethereum [`0x613942...09e601`](./contracts/ethereum-1/0x613942eff27c6886bb2a33a172cdaf03a009e601/); ethereum `0x947303...361fe6` | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2639] contest results

Fork inheritance lineage and inherited audits are included when available.
