# Agentic Audit Brief: Obsidian

## Project Overview

- Project: Obsidian (`obsidian`)
- Website: [https://obsidian.finance](https://obsidian.finance)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T19:58:01.638Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-6f9b
- Chains: cronos
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $1,378,164.48
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Obsidian is a Smart DEX and DEX aggregator ecosystem on Cronos and Cronos zkEVM, offering swap aggregation alongside staking/yield, launchpad, and bridge functionality.

### Architecture

All contracts belong to a single product family with no explicit sub-families or shared infrastructure identified beyond the aggregation logic.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (0 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

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

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | `0x1215b7...93904f` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x1ec6e8...d0c566` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x4e5cdf...877275` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x6d5599...e00deb` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xcd2e5c...1570c9` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xedc17b...7a7804` | ❓ Unverified |

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
