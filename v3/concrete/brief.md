# Agentic Audit Brief: Concrete

## Project Overview

- Project: Concrete (`concrete`)
- Website: [https://app.concrete.xyz](https://app.concrete.xyz)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.063Z
- Pipeline run: v2-pipeline-2026-06-30-2b719a-8edf
- Chains: ethereum
- Contract surface: 3 unique implementations (4 raw deployments)
- DeFi Llama TVL: $757,965,722.30
- On-chain TVL (included contracts): $26.81
- TVL by chain: Ethereum $26.81

## Project Description

Onchain Capital Allocator. Structurally: 1 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 2 contract(s).

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (3 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/2 (100.0%)
- Deployed-live implementations: 2 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/2
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 4
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 50.0% | 2025-09 |
| Zellic | Tier 2 | 1 | 50.0% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConcreteMultiStrategyVault | core_logic | ethereum | n/a | [`0x15ce9b...ea5fac`](./contracts/ethereum-1/0x15ce9be6609db102b70d68ca75a39c555bea5fac/) | ✅ Audited |
| ConcreteStandardVaultImpl | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x5854c7...e0e5fd`](./contracts/ethereum-1/0x5854c7693459c6e316a96565776b72d94ee0e5fd/); ethereum `0xb04e16...55a08f` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x38f20a...40db53` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf](https://docs.concrete.xyz/assets/files/Standard-Implementation-9948d7fcebb518e5c29051bc2326b5ec.pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | 1 | n/a |
| [Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf](https://docs.concrete.xyz/assets/files/Zellic-Audit-Report-5dbb9d52d444adcd197dfbaa941a86ab.pdf) | Zellic | Audit | 2025-06 | aging | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
