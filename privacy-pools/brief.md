# Agentic Audit Brief: Privacy Pools

## Project Overview

- Project: Privacy Pools (`privacy-pools`)
- Website: [https://privacypools.com/](https://privacypools.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-11T02:04:14.132Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-bd5e
- Chains: arbitrum, ethereum, optimism
- Contract surface: 1 unique implementations (3 raw deployments)
- DeFi Llama TVL: $6,624,610.42
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Privacy Pools is a protocol enabling private transactions on Ethereum, Optimism, and Arbitrum One. It allows users to deposit and withdraw funds while preserving privacy through zero-knowledge proofs.

## Audit Coverage Summary

- Verified implementations audited: 1/1 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 3
- Audits discovered: 4
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 3 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 100.0% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Entrypoint | proxy | optimism | 3 deployments: ethereum `0x681880...526b46`; optimism [`0x441922...25d15e`](./contracts/optimism-10/0x44192215fed782896be2ce24e0bfbf0bf825d15e/); arbitrum [`0x441922...25d15e`](./contracts/arbitrum-42161/0x44192215fed782896be2ce24e0bfbf0bf825d15e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [circuits_audit_oxorio.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/circuits_audit_oxorio.md) | unknown | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [contracts_audit_auditware.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/contracts_audit_auditware.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | high |
| [contracts_audit_oxorio.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/contracts_audit_oxorio.md) | unknown | Audit | 2025-03 | aging | Direct | contract_name | 3 | high |
| [entrypoint_upgrade_audit_oxorio.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/entrypoint_upgrade_audit_oxorio.md) | unknown | Audit | 2025-05 | aging | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=9

Zero-match audit list:

- [7629] circuits_audit_oxorio.md

Fork inheritance lineage and inherited audits are included when available.
