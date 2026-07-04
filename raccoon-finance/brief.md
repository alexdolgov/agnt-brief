# Agentic Audit Brief: Raccoon Finance

## Project Overview

- Project: Raccoon Finance (`raccoon-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.457Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: base
- Contract surface: 10 unique implementations (10 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 4 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 31; live-surface contracts included: 10 (1 live, 9 unknown).
- Excluded by liveness: 21 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/1 (100.0%)
- Deployed-live implementations: 1 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 10
- Raw deployments: 10
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 100.0% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RACToken | token | base | n/a | [`0x1299aa...0b7450`](./contracts/base-8453/0x1299aa83eca28d799349e9946d38c84d310b7450/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x0267f1...95c91a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x47889a...72cff8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x548d3b...48314f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x730703...bf6b0b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x89a458...2adbe1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa8dd30...784850` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbf5edf...31f258` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd96ed6...f45500` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeaefde...bb7449` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SmartContract_Audit_Solidproof_RaccoonFinance.pdf](https://github.com/solidproof/projects/blob/main/2023/Raccoon%20Finance/SmartContract_Audit_Solidproof_RaccoonFinance.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
