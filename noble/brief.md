# Agentic Audit Brief: Noble

## Project Overview

- Project: Noble (`noble`)
- Website: [https://www.noble.xyz](https://www.noble.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.771Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: base, ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $150,506,818.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Message | unknown | ethereum | n/a | [`0xbd3fa81b58ba92a82136038b25adec7066af3155`](./contracts/ethereum-1/0xbd3fa81b58ba92a82136038b25adec7066af3155/) | ⚠️ Unaudited |
| TokenMessenger | unknown | base | n/a | [`0x1682ae6375c4e4a97e4b583bc394c861a46d8962`](./contracts/base-8453/0x1682ae6375c4e4a97e4b583bc394c861a46d8962/) | ⚠️ Unaudited |

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
| [2023-03-13 Audit Report - Noble v1.0.pdf](https://github.com/oak-security/audit-reports/blob/main/Noble/2023-03-13%20Audit%20Report%20-%20Noble%20v1.0.pdf) | Oak Security | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [2023-07-08 Audit Report - Noble Tariff Module v1.0.pdf](https://github.com/oak-security/audit-reports/blob/main/Noble/2023-07-08%20Audit%20Report%20-%20Noble%20Tariff%20Module%20v1.0.pdf) | Oak Security | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [2024-01-17 Audit Report - Noble tokenfactory Changes and fiattokenfactory v1.0.pdf](https://github.com/oak-security/audit-reports/blob/main/Noble/2024-01-17%20Audit%20Report%20-%20Noble%20tokenfactory%20Changes%20and%20fiattokenfactory%20v1.0.pdf) | Oak Security | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xbd3fa81b58ba92a82136038b25adec7066af3155`](./contracts/ethereum-1/0xbd3fa81b58ba92a82136038b25adec7066af3155/) | Message | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20891] 2023-03-13 Audit Report - Noble v1.0.pdf
- [20892] 2023-07-08 Audit Report - Noble Tariff Module v1.0.pdf
- [20893] 2024-01-17 Audit Report - Noble tokenfactory Changes and fiattokenfactory v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
