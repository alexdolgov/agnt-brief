# Agentic Audit Brief: Unslashed

⚠️ Lifecycle status: DECLINING - TVL changed 9.3% over 90 days

## Project Overview

- Project: Unslashed (`unslashed`)
- Lifecycle: declining (Tier 0, 98.2% below peak)
- Generated: 2026-06-10T20:59:18.516Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $3,066,570.36
- On-chain TVL (included contracts): $3,126,687.15
- TVL by chain: Ethereum $3,126,687.15

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Unslashed is a decentralized insurance protocol that allows users to provide underwriting capital and earn premiums by depositing assets into vaults. Unsupported or third-party components such as MasterChef rewards, Uniswap pairs, BAC pools, BlackPoolToken, ArcProxy, and other non-surface tokens or pools should not be described as part of the Unslashed contract surface unless independently verified as Unslashed-owned.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,126,687.15
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $3,126,687.15 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| VaultLib | core_logic | ethereum | [`0x86fb84...bd6701`](./contracts/ethereum-1/0x86fb84e92c1eedc245987d28a42e123202bd6701/) | ⚠️ Unaudited |

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
| ethereum | [`0x86fb84...bd6701`](./contracts/ethereum-1/0x86fb84e92c1eedc245987d28a42e123202bd6701/) | VaultLib | core_logic | $3,126,687.15 | Verified native implementation with $3,126,687.15 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

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
