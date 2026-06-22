# Agentic Audit Brief: DarkCrypto

⚠️ Lifecycle status: DEAD - TVL dropped 22.5% over 90 days

## Project Overview

- Project: DarkCrypto (`darkcrypto`)
- Website: [https://www.darkcrypto.finance](https://www.darkcrypto.finance)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-20T00:09:08.239Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: cronos
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $19,770.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DarkCrypto is an algorithmic stablecoin protocol on Cronos that maintains a dollar-pegged token through seigniorage and bonding mechanisms, using a multi-token system to stabilize its value.

### Architecture

All contracts belong to a single product family with no explicit sub-groupings; they likely interact through shared token logic and stabilization mechanisms, but no distinct infrastructure contracts are identified.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (0 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
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

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | `0x2e7d17...2bf630` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x42b652...e7db8c` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x83b2ac...2c48b5` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x9d3bbb...d9c81c` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xaa0845...f56a77` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-DarkCrypto-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-DarkCrypto-v1.0.pdf) | PeckShield | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12998] PeckShield-Audit-Report-DarkCrypto-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
