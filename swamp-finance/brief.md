# Agentic Audit Brief: Swamp Finance

⚠️ Lifecycle status: DECLINING - TVL changed 9.0% over 90 days

## Project Overview

- Project: Swamp Finance (`swamp-finance`)
- Lifecycle: declining (Tier 0, 97.2% below peak)
- Generated: 2026-06-17T16:16:13.237Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-a893
- Chains: bsc
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $1,066,907.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Swamp Finance is a BSC yield optimizer/yield protocol with multiple strategy contracts, alongside NativeFarm and SWAMP token reward components. Any governance-token characterization should be omitted or qualified unless supported by project documentation.

## Contract Surface Quality

- Indexed contracts: 55; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 53 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Unverified dependencies: 4/8.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NativeFarm | unknown | bsc | n/a | [`0x33adbf...afdee3`](./contracts/bsc-56/0x33adbf5f1ec364a4ea3a5ca8f310b597b8afdee3/) | ⚠️ Unaudited |
| SWAMP | unknown | bsc | n/a | [`0xc5a49b...f9765d`](./contracts/bsc-56/0xc5a49b4cbe004b6fd55b30ba1de6ac360ff9765d/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x33adbf...afdee3`](./contracts/bsc-56/0x33adbf5f1ec364a4ea3a5ca8f310b597b8afdee3/) | NativeFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc5a49b...f9765d`](./contracts/bsc-56/0xc5a49b4cbe004b6fd55b30ba1de6ac360ff9765d/) | SWAMP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
