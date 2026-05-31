# Agentic Audit Brief: OSL

## Project Overview

- Project: OSL (`osl`)
- Website: [https://www.osl.com/en](https://www.osl.com/en)
- Lifecycle: active (Tier 0, 60% below peak)
- Generated: 2026-05-31T10:09:24.406Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: scroll
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $41,485,095.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

OSL is a centralized exchange (CEX) operating on the Scroll chain, providing trading and related financial services through a set of smart contracts.

### Architecture

All contracts belong to a single product family with no explicit sub-families or shared infrastructure identified; they likely interact directly to facilitate exchange operations.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 4
- Raw deployments: 4
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

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | scroll | `0x136848...ea11ce` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0x14dc2b...91b15e` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0x19c8ed...9f6175` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xa853b3...02efc6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
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
