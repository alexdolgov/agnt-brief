# Agentic Audit Brief: Zircon Gamma

⚠️ Lifecycle status: DEAD - TVL changed 0.0% over 90 days

## Project Overview

- Project: Zircon Gamma (`zircon-gamma`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T11:48:45.248Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: moonriver
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $2.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 232; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 231 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ZirconGammaToken | token | moonriver | n/a | [`0x4545e9...152055`](./contracts/moonriver-1285/0x4545e94974adacb82fc56bcf136b07943e152055/) | ⚠️ Unaudited |

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
| [Zircon_Protocol2_SecAssessment_report_v1.1.pdf](https://github.com/Zircon-Finance/zircon-protocol-2/blob/master/audit/chaintroopers/Zircon_Protocol2_SecAssessment_report_v1.1.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonriver | [`0x4545e9...152055`](./contracts/moonriver-1285/0x4545e94974adacb82fc56bcf136b07943e152055/) | ZirconGammaToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=21

Zero-match audit list:

- [14174] Zircon_Protocol2_SecAssessment_report_v1.1.pdf

Fork inheritance lineage and inherited audits are included when available.
