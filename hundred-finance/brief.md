# Agentic Audit Brief: Hundred Finance

## Project Overview

- Project: Hundred Finance (`hundred-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.669Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: arbitrum, ethereum, fantom, gnosis, harmony, moonriver, optimism, polygon
- Contract surface: 3 unique implementations (8 raw deployments)
- DeFi Llama TVL: $102,252.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (6 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 3
- Raw deployments: 8
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Hundred | unknown | ethereum | n/a | 6 deployments: ethereum [`0x10010078a54396f62c96df8532dc2b4847d47ed3`](./contracts/ethereum-1/0x10010078a54396f62c96df8532dc2b4847d47ed3/); optimism [`0x10010078a54396f62c96df8532dc2b4847d47ed3`](./contracts/optimism-10/0x10010078a54396f62c96df8532dc2b4847d47ed3/); gnosis [`0x10010078a54396f62c96df8532dc2b4847d47ed3`](./contracts/gnosis-100/0x10010078a54396f62c96df8532dc2b4847d47ed3/); polygon [`0x10010078a54396f62c96df8532dc2b4847d47ed3`](./contracts/polygon-137/0x10010078a54396f62c96df8532dc2b4847d47ed3/); moonriver [`0x10010078a54396f62c96df8532dc2b4847d47ed3`](./contracts/moonriver-1285/0x10010078a54396f62c96df8532dc2b4847d47ed3/); arbitrum [`0x10010078a54396f62c96df8532dc2b4847d47ed3`](./contracts/arbitrum-42161/0x10010078a54396f62c96df8532dc2b4847d47ed3/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | fantom | n/a | `0x10010078a54396f62c96df8532dc2b4847d47ed3` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0x10010078a54396f62c96df8532dc2b4847d47ed3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [02_Smart Contract Audit Percent Finance.pdf](https://github.com/chainsulting/Smart-Contract-Security-Audits/blob/master/Percent%20Finance/02_Smart%20Contract%20Audit%20Percent%20Finance.pdf) | unknown | Audit | 2020-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x10010078a54396f62c96df8532dc2b4847d47ed3`](./contracts/ethereum-1/0x10010078a54396f62c96df8532dc2b4847d47ed3/) | Hundred | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13250] 02_Smart Contract Audit Percent Finance.pdf

Fork inheritance lineage and inherited audits are included when available.
