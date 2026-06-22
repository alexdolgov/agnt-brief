# Agentic Audit Brief: Crabada

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Crabada (`crabada`)
- Website: [https://www.crabada.com](https://www.crabada.com)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-19T10:05:22.145Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: avalanche
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 76; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 55 inactive, 18 singleton, 0 uninitialized.
- Deployment units: 0/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CRA | unknown | avalanche | n/a | [`0xa32608...b4d1ed`](./contracts/avalanche-43114/0xa32608e873f9ddef944b24798db69d80bbb4d1ed/) | ⚠️ Unaudited |
| TUS | unknown | avalanche | n/a | [`0xf69324...fdd172`](./contracts/avalanche-43114/0xf693248f96fe03422fea95ac0afbbbc4a8fdd172/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x1fa283...db67d8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Verichains Public Audit Report - Crabada Game - v1.1.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Crabada%20Game%20-%20v1.1.pdf) | unknown | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [Verichains Public Audit Report - Crabada Sale - v1.2.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Crabada%20Sale%20-%20v1.2.pdf) | unknown | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0xa32608...b4d1ed`](./contracts/avalanche-43114/0xa32608e873f9ddef944b24798db69d80bbb4d1ed/) | CRA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf69324...fdd172`](./contracts/avalanche-43114/0xf693248f96fe03422fea95ac0afbbbc4a8fdd172/) | TUS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12967] Verichains Public Audit Report - Crabada Game - v1.1.pdf
- [12968] Verichains Public Audit Report - Crabada Sale - v1.2.pdf

Fork inheritance lineage and inherited audits are included when available.
