# Agentic Audit Brief: T RIZE

## Project Overview

- Project: T RIZE (`t-rize`)
- Website: [https://www.t-rize.io](https://www.t-rize.io)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-22T13:47:18.156Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: base
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $23,000,000.00
- On-chain TVL (included contracts): $15,005,448.61
- TVL by chain: Base $15,005,448.61

## Project Description

T RIZE is a protocol for tokenizing real-world assets (RWA), enabling on-chain representation and transfer of off-chain assets. It provides a single token contract on Base that likely represents fractional ownership or claims on underlying real-world assets.

### Architecture

The protocol consists of a single product family with one core token contract; there are no additional families or shared infrastructure to relate.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $15,005,448.61
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| RizeToken | token | base | [`0x9818b6...c93583`](./contracts/base-8453/0x9818b6c09f5ecc843060927e8587c427c7c93583/) | ⚠️ Unaudited |

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
| base | [`0x9818b6...c93583`](./contracts/base-8453/0x9818b6c09f5ecc843060927e8587c427c7c93583/) | RizeToken | token | $15,005,448.61 | Verified native implementation with $15,005,448.61 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
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
