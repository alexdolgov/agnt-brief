# Agentic Audit Brief: Palladium Protocol

## Project Overview

- Project: Palladium Protocol (`palladium-protocol`)
- Website: [https://palladiumlabs.org](https://palladiumlabs.org)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:39.395Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: ethereum
- Contract surface: 18 unique implementations (18 raw deployments)
- DeFi Llama TVL: $1,120.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Contract surface contains 0 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

### Architecture

No relationship narrative (skeletal or single-family surface).

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 18 (0 live, 18 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 18 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 18
- Raw deployments: 18
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
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

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0127b0...f65618` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d2af8...9e05b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x341927...6c4120` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a7bfc...a06ca0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42725b...cb4de9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ebbcb...534032` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x741145...6c45e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d8c01...c3f19d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0730d...393ec5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb294d1...480eae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4445b...d92abf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb48503...1ec751` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb95fa5...1b4977` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3f389...6a7fa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcba259...a1c400` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9c1ad...62a101` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe18521...5b1f15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee015c...21d711` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [20250617-Palladium-Labs-Final-Audit-Report.pdf](https://scalebit.xyz/reports/20250617-Palladium-Labs-Final-Audit-Report.pdf) | unknown | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [hacken.io/audits/palladium](https://hacken.io/audits/palladium) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13653] 20250617-Palladium-Labs-Final-Audit-Report.pdf
- [13654] hacken.io/audits/palladium

Fork inheritance lineage and inherited audits are included when available.
