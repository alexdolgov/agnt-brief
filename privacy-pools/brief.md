# Agentic Audit Brief: Privacy Pools

## Project Overview

- Project: Privacy Pools (`privacy-pools`)
- Website: [https://privacypools.com/](https://privacypools.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:52.564Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $8,128,155.92
- On-chain TVL (included contracts): $54,356.63
- TVL by chain: Ethereum $54,356.63

## Project Description

Privacy Pools is a protocol enabling private transactions on Ethereum, Optimism, and Arbitrum One. It allows users to deposit and withdraw funds while preserving privacy through zero-knowledge proofs.

### Architecture

The protocol consists of a single product family with Entrypoint contracts deployed behind ERC1967Proxy proxies. All contracts share the same deployer and are deployed on multiple chains, indicating a unified infrastructure.

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 5 (2 live, 3 unknown).
- Excluded by liveness: 0 inactive, 6 singleton, 0 uninitialized.
- Deployment units: 0/3 live.
- Detected codebases: none
- Unverified dependencies: 3/9.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 4
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $54,356.63
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 3 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PrivacyPoolComplex | core_logic | ethereum | n/a | [`0x1a604e...b61633`](./contracts/ethereum-1/0x1a604e9dfa0efdc7ffda378af16cb81243b61633/) | ⚠️ Unaudited |
| PrivacyPoolSimple | core_logic | ethereum | n/a | [`0xf241d5...a9c9fb`](./contracts/ethereum-1/0xf241d57c6debae225c0f2e6ea1529373c9a9c9fb/) | ⚠️ Unaudited |
| CommitmentVerifier | unknown | ethereum | n/a | [`0xa45aca...565ec6`](./contracts/ethereum-1/0xa45aca8604a73d80c551faad6355a5c3a5565ec6/) | ⚠️ Unaudited |
| Entrypoint | unknown | ethereum | n/a | [`0xdd8aa0...fbd4c1`](./contracts/ethereum-1/0xdd8aa0560a08e39c0b3a84bba356bc025afbd4c1/) | ⚠️ Unaudited |
| WithdrawalVerifier | unknown | ethereum | n/a | [`0x022891...897d6d`](./contracts/ethereum-1/0x022891f938ae7fdc8ab9ead0fbf50aba8c897d6d/) | ⚠️ Unaudited |

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
| [contracts_audit_auditware.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/contracts_audit_auditware.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 0 | n/a |
| [contracts_audit_oxorio.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/contracts_audit_oxorio.md) | unknown | Audit | 2025-03 | aging | Direct | contract_name | 0 | n/a |
| [entrypoint_upgrade_audit_oxorio.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/entrypoint_upgrade_audit_oxorio.md) | unknown | Audit | 2025-05 | aging | Direct | contract_name | 0 | n/a |

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
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=9

Zero-match audit list:

- [7629] circuits_audit_oxorio.md
- [7630] contracts_audit_auditware.md
- [7631] contracts_audit_oxorio.md
- [7632] entrypoint_upgrade_audit_oxorio.md

Fork inheritance lineage and inherited audits are included when available.
