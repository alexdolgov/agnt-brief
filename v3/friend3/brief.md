# Agentic Audit Brief: Friend3

## Project Overview

- Project: Friend3 (`friend3`)
- Website: [https://friend3.group](https://friend3.group)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:52.932Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: bsc, opbnb
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $61,990.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

SoFi. Structurally: 3 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 4 (2 live, 2 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Verichains | Tier 2 | 1 | 50.0% | 2023-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| F3 | unknown | bsc | n/a | [`0x9e57e8...00e167`](./contracts/bsc-56/0x9e57e83ad79ac5312ba82940ba037ed30600e167/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Friend3V1 | unknown | bsc | n/a | [`0x1e7097...b3bd5d`](./contracts/bsc-56/0x1e70972ec6c8a3fae3ac34c9f3818ec46eb3bd5d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | opbnb | n/a | `0x2c5bf6...6b29f0` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x55f904...a0ca3b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Friend3.pdf](https://github.com/Friend3-Group/PeckShield-Audit-Report-Friend3/blob/main/PeckShield-Audit-Report-Friend3.pdf) | PeckShield | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Verichains Public Audit Report - Friend3 Token - v1.0.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Friend3%20Token%20-%20v1.0.pdf) | Verichains | Audit | 2023-11 | stale | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-Friend3-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Friend3-v1.0.pdf) | PeckShield | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Friend3 (GitHub directory)](https://github.com/Friend3-Group/PeckShield-Audit-Report-Friend3) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Zero-match audit list:

- [13136] PeckShield-Audit-Report-Friend3.pdf
- [13138] PeckShield-Audit-Report-Friend3-v1.0.pdf
- [13139] PeckShield-Audit-Report-Friend3 (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
