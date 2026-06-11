# Agentic Audit Brief: OmniBTC

## Project Overview

- Project: OmniBTC (`omnibtc`)
- Website: [https://www.omnibtc.finance](https://www.omnibtc.finance)
- Lifecycle: active (Tier 0, 83.1% below peak)
- Generated: 2026-06-11T01:33:09.654Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-1f48
- Chains: arbitrum, avalanche, base, ethereum, optimism, polygon
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $2,201,232.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

OmniBTC is an omnichain/cross-chain financial platform providing swap and lend/borrow functionality across multiple blockchains, with a focus that includes BTC omnichain lending. Its supported chain footprint includes Sui as a dominant current TVL chain, as well as EVM networks such as Ethereum, Optimism, Polygon, Base, Arbitrum One, Avalanche, and Binance where applicable.

### Architecture

All contracts belong to a single product family with no explicit sub-families or shared infrastructure identified; they likely represent the core lending logic deployed across multiple chains.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0xaa8b23...05b6fc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x233dde...a28975` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc3eb69...4798c3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x689530...329dfa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x53ecc0...4c7935` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc44c29...f3c554` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
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
