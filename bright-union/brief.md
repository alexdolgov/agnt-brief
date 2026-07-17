# Agentic Audit Brief: Bright Union

## Project Overview

- Project: Bright Union (`bright-union`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:08.580Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-1bf2
- Chains: ethereum
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

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/3 (100.0%)
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/3
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 100.0% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BrightRiskToken | token | ethereum | n/a | [`0xa4b032895bcb6b11ec7d21380f557919d448fd04`](./contracts/ethereum-1/0xa4b032895bcb6b11ec7d21380f557919d448fd04/) | ✅ Audited |
| BrightStaking | unknown | ethereum | n/a | [`0x1eb7c3cbac942983b80b384a978946dcedc6cf5a`](./contracts/ethereum-1/0x1eb7c3cbac942983b80b384a978946dcedc6cf5a/) | ✅ Audited |
| BRIGHTToken | token | ethereum | n/a | [`0xbeab712832112bd7664226db7cd025b153d3af55`](./contracts/ethereum-1/0xbeab712832112bd7664226db7cd025b153d3af55/) | ✅ Audited |

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
| [Bright Union BV_audit.pdf](https://github.com/Bright-Union/security/blob/199fa66e474d4cbc003db3b0ed11bda105d32a6d/audits/Bright%20Union%20BV_audit.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 2 | n/a |
| [Bright Union Staking_audit.pdf](https://github.com/Bright-Union/security/blob/199fa66e474d4cbc003db3b0ed11bda105d32a6d/audits/Bright%20Union%20Staking_audit.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

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
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=4

Fork inheritance lineage and inherited audits are included when available.
