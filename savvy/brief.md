# Agentic Audit Brief: Savvy

## Project Overview

- Project: Savvy (`savvy`)
- Website: [https://savvydefi.io](https://savvydefi.io)
- Lifecycle: active (Tier 0, 87.7% below peak)
- Generated: 2026-06-21T09:36:11.237Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum
- Contract surface: 2 unique implementations (4 raw deployments)
- DeFi Llama TVL: $126,421.31
- On-chain TVL (included contracts): $530,876.01
- TVL by chain: Arbitrum $530,876.01

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 164; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 70 inactive, 90 singleton, 0 uninitialized.
- Deployment units: 0/34 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/2 (50.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 4
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $17,040.20
- Latest audit: 2023-01 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 50.0% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SavvySyntheticToken | token | arbitrum | n/a | 3 deployments: arbitrum [`0xeee183...b8c2a6`](./contracts/arbitrum-42161/0xeee18334c414a47fb886a7317e1885b2bfb8c2a6/); arbitrum `0xf202ab...037706`; arbitrum `0xf77285...863ffa` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SavvyProtocolToken | token | arbitrum | n/a | [`0x43ab8f...b9f034`](./contracts/arbitrum-42161/0x43ab8f7d2a8dd4102ccea6b438f6d747b1b9f034/) | ⚠️ Unaudited |

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
| [Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-01 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x43ab8f...b9f034`](./contracts/arbitrum-42161/0x43ab8f7d2a8dd4102ccea6b438f6d747b1b9f034/) | SavvyProtocolToken | token | $17,040.20 | Verified native implementation with $17,040.20 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

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
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=56

Fork inheritance lineage and inherited audits are included when available.
