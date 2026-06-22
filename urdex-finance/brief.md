# Agentic Audit Brief: UrDEX Finance

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: UrDEX Finance (`urdex-finance`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T08:39:43.087Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: arbitrum
- Contract surface: 3 unique implementations (4 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): $261,822.00
- TVL by chain: Arbitrum $261,822.00

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 122; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 56 inactive, 62 singleton, 0 uninitialized.
- Deployment units: 0/31 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/3 (66.7%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 4
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 66.7% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UrdToken | token | arbitrum | n/a | [`0x842216...0c5311`](./contracts/arbitrum-42161/0x842216e0aa2ae608699f7b1063f26ce6b30c5311/) | ✅ Audited |
| UrdexTimelock | governance | arbitrum | n/a | [`0xa6a689...7d78b0`](./contracts/arbitrum-42161/0xa6a68944e222b6e89d51e77ec83acc5fc47d78b0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LPToken | token | arbitrum | n/a | 2 deployments: arbitrum [`0x3240e0...7091f7`](./contracts/arbitrum-42161/0x3240e018db6e2c751faf689d5292e4a40e7091f7/); arbitrum `0xeac6b2...049b42` | ⚠️ Unaudited |

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
| [urDex Smart Contract Audit Report - QuillAudits.pdf](https://github.com/Quillhash/QuillAudit_Reports/blob/0f50d3ad59e14547e816b256c2ede1282f9ab403/urDex%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x3240e0...7091f7`](./contracts/arbitrum-42161/0x3240e018db6e2c751faf689d5292e4a40e7091f7/) | LPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Match method counts: extraction_exact=5

Fork inheritance lineage and inherited audits are included when available.
