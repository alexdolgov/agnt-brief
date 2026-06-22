# Agentic Audit Brief: Unite Finance

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Unite Finance (`unite-finance`)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-21T10:47:43.182Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: harmony
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $281,388.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Unite Finance is an algorithmic stablecoin protocol on Harmony that maintains a stable asset through seigniorage and bonding mechanisms. It uses a multi-contract system to manage token minting, redemption, and treasury operations.

### Architecture

All contracts belong to a single product family and likely share infrastructure such as a common treasury, oracle, or access control, though specific roles are not detailed in the provided metadata.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (0 live, 8 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-12 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

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

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | harmony | n/a | `0x6372d1...4da9e8` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x68beec...b826bd` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xa0377f...56d534` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xb44410...48c59e` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xd0105c...9dea8a` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xe302a9...8b5bda` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xe3f4e2...7710fe` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xee2208...deae0c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Unite-Finance_final-audit-report.pdf](https://github.com/0xGuard-com/audit-reports/blob/master/unite-finance/Unite-Finance_final-audit-report.pdf) | unknown | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14054] Unite-Finance_final-audit-report.pdf

Fork inheritance lineage and inherited audits are included when available.
