# Agentic Audit Brief: Sable Finance

## Project Overview

- Project: Sable Finance (`sable-finance`)
- Website: [https://sable.finance](https://sable.finance)
- Lifecycle: active (Tier 0, 55.4% below peak)
- Generated: 2026-06-21T14:58:25.791Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: bsc
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $625,575.34
- On-chain TVL (included contracts): $339,399.30
- TVL by chain: Bsc $339,399.30

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 31; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 28 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Unverified dependencies: 1/30.

## Audit Coverage Summary

- Verified implementations audited: 1/3 (33.3%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $339,399.30
- Latest audit: 2023-05 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: 33.3% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 1 | 33.3% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SableStakingV2 | unknown | bsc | n/a | [`0xfbc81a...25b16c`](./contracts/bsc-56/0xfbc81aeb7e5c11d4a60a0690db9f36f93e25b16c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SABLEToken | token | bsc | n/a | [`0x1ee098...5a878d`](./contracts/bsc-56/0x1ee098cbaf1f846d5df1993f7e2d10afb35a878d/) | ⚠️ Unaudited |
| USDSToken | token | bsc | n/a | [`0x0c6ed1...240fa0`](./contracts/bsc-56/0x0c6ed1e73ba73b8441868538e210ebd5dd240fa0/) | ⚠️ Unaudited |

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
| [Mainnet_SlowMist Audit Report - Sable Finance.pdf](https://github.com/Sable-Finance/sable_audit/blob/main/reports/Mainnet_SlowMist%20Audit%20Report%20-%20Sable%20Finance.pdf) | SlowMist | Audit | 2023-05 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x1ee098...5a878d`](./contracts/bsc-56/0x1ee098cbaf1f846d5df1993f7e2d10afb35a878d/) | SABLEToken | token | $248,524.00 | Verified native implementation with $248,524.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0c6ed1...240fa0`](./contracts/bsc-56/0x0c6ed1e73ba73b8441868538e210ebd5dd240fa0/) | USDSToken | token | $90,875.30 | Verified native implementation with $90,875.30 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

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
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=11

Fork inheritance lineage and inherited audits are included when available.
