# Agentic Audit Brief: Bright Union

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Bright Union (`bright-union`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T08:58:20.585Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): $36,858.32
- TVL by chain: Ethereum $36,858.32

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 2/3 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/3 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 100.0% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BRIGHTToken | token | ethereum | n/a | [`0xbeab71...d3af55`](./contracts/ethereum-1/0xbeab712832112bd7664226db7cd025b153d3af55/) | ✅ Audited |
| BrightRiskToken | token | ethereum | unit-39459 | [`0xa4b032...48fd04`](./contracts/ethereum-1/0xa4b032895bcb6b11ec7d21380f557919d448fd04/) | ✅ Audited |
| BrightStaking | unknown | ethereum | unit-39458 | [`0x1eb7c3...c6cf5a`](./contracts/ethereum-1/0x1eb7c3cbac942983b80b384a978946dcedc6cf5a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [Bright Union BV_audit.pdf](https://github.com/Bright-Union/security/blob/199fa66e474d4cbc003db3b0ed11bda105d32a6d/audits/Bright%20Union%20BV_audit.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 2 | high |
| [Bright Union Staking_audit.pdf](https://github.com/Bright-Union/security/blob/199fa66e474d4cbc003db3b0ed11bda105d32a6d/audits/Bright%20Union%20Staking_audit.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=5

Fork inheritance lineage and inherited audits are included when available.
