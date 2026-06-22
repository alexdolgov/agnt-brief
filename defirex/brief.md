# Agentic Audit Brief: Defirex

⚠️ Lifecycle status: DECLINING - TVL dropped 4.8% over 90 days

## Project Overview

- Project: Defirex (`defirex`)
- Lifecycle: declining (Tier 0, 99.9% below peak)
- Generated: 2026-06-19T19:51:46.726Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc, ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $4,606.77
- On-chain TVL (included contracts): $10,107,598.05
- TVL by chain: Ethereum $10,053,473.23 | Bsc $54,124.82

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 373; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 325 inactive, 45 singleton, 0 uninitialized.
- Deployment units: 2/24 live.
- Detected codebases: compound-v2
- Unverified dependencies: 9/136.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $10,107,598.05
- Latest audit: 2021-01 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $10,107,598.05 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CErc20Delegate | token | ethereum | unit-39935 | [`0x5d3a53...8e3643`](./contracts/ethereum-1/0x5d3a536e4d6dbd6114cc1ead35777bab948e3643/) | ⚠️ Unaudited |
| PermittableToken | token | bsc | unit-39948 | [`0x74b3ab...b2aacf`](./contracts/bsc-56/0x74b3abb94e9e1ecc25bd77d6872949b4a9b2aacf/) | ⚠️ Unaudited |
| CEther | unknown | ethereum | n/a | [`0x4ddc2d...270ed5`](./contracts/ethereum-1/0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5/) | ⚠️ Unaudited |

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
| [DeFireX Security Audit by Pessimistic Public.pdf](https://github.com/pessimistic-io/audits/blob/main/DeFireX%20Security%20Audit%20by%20Pessimistic%20Public.pdf) | yAudit | Audit | 2021-01 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x74b3ab...b2aacf`](./contracts/bsc-56/0x74b3abb94e9e1ecc25bd77d6872949b4a9b2aacf/) | PermittableToken | token | $54,124.82 | Verified native implementation with $54,124.82 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=37

Zero-match audit list:

- [13003] DeFireX Security Audit by Pessimistic Public.pdf

Fork inheritance lineage and inherited audits are included when available.
