# Agentic Audit Brief: Safe

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Safe (`safe`)
- Website: [https://safe.global/](https://safe.global/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-27T10:43:25.174Z
- Pipeline run: v2-pipeline-2026-05-27-de70dc-1ce2
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $99,267,282.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Safe provides a vesting pool service that allows for the distribution of tokens over time, likely for team or investor allocations.

### Architecture

The project consists of a single product family with one core contract, so there are no inter-family relationships or shared infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| VestingPool | operational_periphery | ethereum | [`0x96b71e...1ea4ff`](./contracts/ethereum-1/0x96b71e2551915d98d22c448b040a3bc4801ea4ff/) | ⚠️ Unaudited |

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
| ethereum | [`0x96b71e...1ea4ff`](./contracts/ethereum-1/0x96b71e2551915d98d22c448b040a3bc4801ea4ff/) | VestingPool | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
