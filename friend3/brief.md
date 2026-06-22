# Agentic Audit Brief: Friend3

⚠️ Lifecycle status: UNKNOWN - TVL dropped 6.7% over 90 days

## Project Overview

- Project: Friend3 (`friend3`)
- Website: [https://friend3.group](https://friend3.group)
- Lifecycle: unknown (Tier 0, 56.2% below peak)
- Generated: 2026-06-21T07:21:25.588Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: bsc, opbnb
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $67,158.71
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/2 (50.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 4
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

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

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | opbnb | n/a | `0x2c5bf6...6b29f0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Friend3.pdf](https://github.com/Friend3-Group/PeckShield-Audit-Report-Friend3/blob/main/PeckShield-Audit-Report-Friend3.pdf) | PeckShield | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Verichains Public Audit Report - Friend3 Token - v1.0.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Friend3%20Token%20-%20v1.0.pdf) | Verichains | Audit | 2023-11 | stale | Direct | contract_name | 1 | high |
| [*<mark style="color:purple;">**here**</mark>*](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Friend3-v1.0.pdf) | PeckShield | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [While our smart contracts have undergone audits by leading security firms like [**PeckShield**](), smart contracts are subject to various risks, including but not limited to, vulnerabilities in the code. Users should perform their due diligence.](https://github.com/Friend3-Group/PeckShield-Audit-Report-Friend3) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x1e7097...b3bd5d`](./contracts/bsc-56/0x1e70972ec6c8a3fae3ac34c9f3818ec46eb3bd5d/) | Friend3V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [13136] PeckShield-Audit-Report-Friend3.pdf
- [13138] *<mark style="color:purple;">**here**</mark>*
- [13139] While our smart contracts have undergone audits by leading security firms like [**PeckShield**](), smart contracts are subject to various risks, including but not limited to, vulnerabilities in the code. Users should perform their due diligence.

Fork inheritance lineage and inherited audits are included when available.
