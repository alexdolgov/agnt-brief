# Agentic Audit Brief: AlphaX

## Project Overview

- Project: AlphaX (`alphax`)
- Website: [https://alphax.com/](https://alphax.com/)
- Lifecycle: active (Tier 0, 13% below peak)
- Generated: 2026-06-17T07:00:52.393Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $1,481,982.45
- On-chain TVL (included contracts): $933,747.34
- TVL by chain: Bsc $933,747.34

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

AlphaX is a derivatives protocol that enables users to trade perpetual contracts and other derivative products on-chain. It uses vault-based architecture to manage liquidity and positions.

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 2 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 1/5 live.
- Detected codebases: none
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
- ASD (verified + unaudited TVL): $933,747.34
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DEXVaultV1 | core_logic | bsc | unit-18539 | [`0x8259f6...534ca6`](./contracts/bsc-56/0x8259f6010a030bcd54335503ba91bba70a534ca6/) | ⚠️ Unaudited |

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
| [AlphaX Audit final.pdf](https://github.com/AlphaX-Protocol/AlphaX-Protocol-Contract/blob/master/Audit-Report/AlphaX%20Audit%20final.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

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
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3060] AlphaX Audit final.pdf

Fork inheritance lineage and inherited audits are included when available.
