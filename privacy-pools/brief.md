# Agentic Audit Brief: Privacy Pools

## Project Overview

- Project: Privacy Pools (`privacy-pools`)
- Website: [https://privacypools.com/](https://privacypools.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-12T05:28:55.793Z
- Pipeline run: v2-pipeline-2026-06-12-c31370-dba8
- Chains: arbitrum, ethereum, optimism
- Contract surface: 5 unique implementations (11 raw deployments)
- DeFi Llama TVL: $8,128,155.92
- On-chain TVL (included contracts): $54,356.63
- TVL by chain: Ethereum $54,356.63

## Project Description

Privacy Pools is a protocol enabling private transactions on Ethereum, Optimism, and Arbitrum One. It allows users to deposit and withdraw funds while preserving privacy through zero-knowledge proofs.

### Architecture

The protocol consists of a single product family with Entrypoint contracts deployed behind ERC1967Proxy proxies. All contracts share the same deployer and are deployed on multiple chains, indicating a unified infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 1/5 (20.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 11
- Audits discovered: 4
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $54,356.63
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 3 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 20.0% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Entrypoint | unknown | ethereum | 7 deployments: ethereum [`0x15e355...5b1a2c`](./contracts/ethereum-1/0x15e355024de1cdc74addea7ebdf98418ba5b1a2c/); ethereum `0x681880...526b46`; ethereum `0xdd8aa0...fbd4c1`; optimism `0x1cabfd...a7b364`; optimism `0x441922...25d15e`; arbitrum `0x1cabfd...a7b364`; arbitrum `0x441922...25d15e` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PrivacyPoolComplex | core_logic | ethereum | [`0x1a604e...b61633`](./contracts/ethereum-1/0x1a604e9dfa0efdc7ffda378af16cb81243b61633/) | ⚠️ Unaudited |
| PrivacyPoolSimple | core_logic | ethereum | [`0xf241d5...a9c9fb`](./contracts/ethereum-1/0xf241d57c6debae225c0f2e6ea1529373c9a9c9fb/) | ⚠️ Unaudited |
| CommitmentVerifier | unknown | ethereum | [`0xa45aca...565ec6`](./contracts/ethereum-1/0xa45aca8604a73d80c551faad6355a5c3a5565ec6/) | ⚠️ Unaudited |
| WithdrawalVerifier | unknown | ethereum | [`0x022891...897d6d`](./contracts/ethereum-1/0x022891f938ae7fdc8ab9ead0fbf50aba8c897d6d/) | ⚠️ Unaudited |

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
| standard_library | 0 |
| needs_review | 5 |

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
