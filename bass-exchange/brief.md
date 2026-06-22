# Agentic Audit Brief: Bass Exchange

## Project Overview

- Project: Bass Exchange (`bass-exchange`)
- Lifecycle: active (Tier 0, 73.2% below peak)
- Generated: 2026-06-21T10:50:18.141Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: base
- Contract surface: 3 unique implementations (5 raw deployments)
- DeFi Llama TVL: $248,448.20
- On-chain TVL (included contracts): $49,223.00
- TVL by chain: Base $49,223.00

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 29; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 11 inactive, 13 singleton, 0 uninitialized.
- Deployment units: 0/6 live.
- Detected codebases: none
- Dependencies extracted: 5; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/3 (33.3%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 5
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $49,223.00
- Latest audit: 2023-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 33.3% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Asset | unknown | base | n/a | 3 deployments: base [`0x127fce...e49dec`](./contracts/base-8453/0x127fce29004451beb4e62869adac635353e49dec/); base `0x1dd576...3bec6d`; base `0x38c9d8...a7d731` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | base | n/a | [`0x1f23b7...aebad8`](./contracts/base-8453/0x1f23b787053802108fed5b67cf703f0778aebad8/) | ⚠️ Unaudited |
| SkimmableAsset | unknown | base | n/a | [`0x2bcaa7...ec0a6a`](./contracts/base-8453/0x2bcaa79ab66af39a1d1d83749407845394ec0a6a/) | ⚠️ Unaudited |

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
| [Bass Exchange.pdf](https://github.com/EtherAuthority/Audit/blob/main/Bass%20Exchange.pdf) | unknown | Audit | 2023-09 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x1f23b7...aebad8`](./contracts/base-8453/0x1f23b787053802108fed5b67cf703f0778aebad8/) | Token | token | $49,223.00 | Verified native implementation with $49,223.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2bcaa7...ec0a6a`](./contracts/base-8453/0x2bcaa79ab66af39a1d1d83749407845394ec0a6a/) | SkimmableAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Match method counts: extraction_exact=6

Fork inheritance lineage and inherited audits are included when available.
