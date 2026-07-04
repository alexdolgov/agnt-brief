# Agentic Audit Brief: Coffer Network

## Project Overview

- Project: Coffer Network (`coffer-network`)
- Website: [https://www.coffer.network](https://www.coffer.network)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:41.065Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: bsc
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $348,478.63
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

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
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
| CofferManageErc20 | unknown | bsc | n/a | [`0x918b3a...92dabc`](./contracts/bsc-56/0x918b3aa73e2d42d96cf64cbdb16838985992dabc/) | ⚠️ Unaudited |
| CoUSD | unknown | bsc | n/a | [`0xc481a5...d8d981`](./contracts/bsc-56/0xc481a577e0fdf5db93f925e5ee2726ee57d8d981/) | ⚠️ Unaudited |

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
| [Coffer App API Security Report](https://docs.coffer.network/audit-reports/250116_Defense_by_Thesis_Coffer_Network_Coffer_App_API_Security.pdf) | Defense by Thesis | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [250123_Defense_by_Thesis_Coffer_Network_Smart_Contracts_Security.pdf](https://docs.coffer.network/audit-reports/250123_Defense_by_Thesis_Coffer_Network_Smart_Contracts_Security.pdf) | Thesis | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19648] Coffer App API Security Report
- [19649] 250123_Defense_by_Thesis_Coffer_Network_Smart_Contracts_Security.pdf

Fork inheritance lineage and inherited audits are included when available.
