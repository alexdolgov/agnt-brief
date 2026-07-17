# Agentic Audit Brief: Burve

## Project Overview

- Project: Burve (`burve`)
- Website: [https://www.burve.fi/pools/](https://www.burve.fi/pools/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.005Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-1bf2
- Chains: berachain
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $32,267.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 1 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 0 unknown
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
| SimplexAdminFacet | unknown | berachain | n/a | [`0xa1bed164c12cd9479a1049f97bde5b3d6ec21089`](./contracts/berachain-80094/0xa1bed164c12cd9479a1049f97bde5b3d6ec21089/) | ⚠️ Unaudited |

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
| [2025.06.18 - Final - Burve Public Best Efforts Audit Contest Report.pdf](https://github.com/itos-finance/Burve/blob/Dev.20250528/audits/2025.06.18%20-%20Final%20-%20Burve%20Public%20Best%20Efforts%20Audit%20Contest%20Report.pdf) | unknown | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Itos-security-review_2025-05-24.pdf](https://github.com/itos-finance/Burve/blob/Dev.20250528/audits/Itos-security-review_2025-05-24.pdf) | unknown | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0xa1bed164c12cd9479a1049f97bde5b3d6ec21089`](./contracts/berachain-80094/0xa1bed164c12cd9479a1049f97bde5b3d6ec21089/) | SimplexAdminFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
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

- [12866] 2025.06.18 - Final - Burve Public Best Efforts Audit Contest Report.pdf
- [12867] Itos-security-review_2025-05-24.pdf

Fork inheritance lineage and inherited audits are included when available.
