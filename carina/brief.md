# Agentic Audit Brief: Carina

## Project Overview

- Project: Carina (`carina`)
- Website: [https://app.carina.finance/](https://app.carina.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.085Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-1bf2
- Chains: sei
- Contract surface: 2 unique implementations (2 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DEX Aggregator. Structurally: 2 project-authored contract(s) across 1 chain(s); built on permit2.

### Architecture

The protocol forms a single structural family (Core Logic) of 2 contract(s).

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/1 (100.0%)
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 50.0% | 2025-10 |
| Zellic | Tier 2 | 1 | 50.0% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultRelayer | core_logic | sei | n/a | [`0xe077a0...f8dafb`](./contracts/sei-1329/0xe077a0eda893f0f9cbd37a5942dece86f4f8dafb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Permit2 | unknown | sei | n/a | [`0xb95257...cee578`](./contracts/sei-1329/0xb952578f3520ee8ea45b7914994dcf4702cee578/) | ⚠️ Unaudited |

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
| [038_CODESPECT_CARINA.pdf](https://github.com/CODESPECT-security/audit-reports/blob/main/038_CODESPECT_CARINA.pdf) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | 1 | n/a |
| [Carina Smart Contracts - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Carina%20Smart%20Contracts%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-10 | fresh | Direct | contract_name | 1 | n/a |
| [privacy_policy.pdf](https://raw.githubusercontent.com/carina-finance/carina-docs/db68b3858579371607e8423bbd4cc70d867072a3/privacy_policy.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Zero-match audit list:

- [12887] privacy_policy.pdf

Fork inheritance lineage and inherited audits are included when available.
