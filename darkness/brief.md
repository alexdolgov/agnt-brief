# Agentic Audit Brief: Darkness

⚠️ Lifecycle status: DEAD - TVL dropped 4.5% over 90 days

## Project Overview

- Project: Darkness (`darkness`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T21:05:53.721Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: cronos
- Contract surface: 14 unique implementations (14 raw deployments)
- DeFi Llama TVL: $7,649.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Darkness is a decentralized exchange (DEX) protocol on Cronos that enables users to swap tokens, provide liquidity, and earn fees. It appears to be a fork of Uniswap V2, using a standard AMM model with factory, router, and pair contracts.

### Architecture

All contracts belong to a single product family, likely consisting of a factory, router, and multiple pair contracts that share the same AMM infrastructure. The factory creates pair contracts for each token pair, while the router facilitates user interactions with those pairs.

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 14 (0 live, 14 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

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

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | `0x1ecaf6...f68217` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x63df75...d7a6c5` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x6582c7...cda47a` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x83b2ac...2c48b5` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x8c183c...40bbe8` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x92631e...1af1ca` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x9d3bbb...d9c81c` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xa4aa24...ee45a3` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xa93248...32074e` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xbfaab2...dcba2d` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xd9deba...b124e6` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xe72724...e5f0c8` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xf2001b...5f677d` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xfa202a...8f0e9a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-DarkNess-Dollar-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-DarkNess-Dollar-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12999] PeckShield-Audit-Report-DarkNess-Dollar-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
