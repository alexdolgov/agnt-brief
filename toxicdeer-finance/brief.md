# Agentic Audit Brief: ToxicDeer Finance

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: ToxicDeer Finance (`toxicdeer-finance`)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-20T01:10:07.532Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: cronos
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $23,741.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

ToxicDeer Finance is a DeFi protocol on Cronos offering algorithmic stablecoin mechanisms, likely involving pegged assets, seigniorage, and liquidity provisioning to maintain stability.

### Architecture

All contracts belong to a single product family with no explicit sub-groupings; they likely share common infrastructure such as token standards and access control patterns, but no distinct supporting contracts are identified.

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (0 live, 7 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
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

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | `0x18cd20...0271d2` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x264f27...5bbe6d` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x40d85d...42db54` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x6d6d6b...50a63a` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x6f7151...159520` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x85b607...742a34` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xf6c3e1...65b252` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-ToxicDeer-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ToxicDeer-v1.0.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14023] PeckShield-Audit-Report-ToxicDeer-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
