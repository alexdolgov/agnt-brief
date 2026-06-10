# Agentic Audit Brief: Latch

⚠️ Lifecycle status: DECLINING - TVL dropped 89.2% over 90 days

## Project Overview

- Project: Latch (`latch`)
- Website: [https://savings.latch.io/](https://savings.latch.io/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:06.864Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $1,606,674.69
- On-chain TVL (included contracts): $189.85
- TVL by chain: Ethereum $189.85

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Latch is a yield/interoperability protocol on Ethereum where users can deposit idle tokens, select a preferred vault, and earn yield and/or points. Public descriptions position Latch as unifying yield, liquidity, and chains; the currently surfaced DepositPool contract should not be assumed to represent all protocol yield generation or total value at risk without further verification.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $189.85
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $189.85 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DepositPool | core_logic | ethereum | [`0x7cc08f...b8f90c`](./contracts/ethereum-1/0x7cc08f23a6e8222c86a62fce3d4d252dd1b8f90c/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x7cc08f...b8f90c`](./contracts/ethereum-1/0x7cc08f23a6e8222c86a62fce3d4d252dd1b8f90c/) | DepositPool | core_logic | $189.85 | Verified native implementation with $189.85 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
