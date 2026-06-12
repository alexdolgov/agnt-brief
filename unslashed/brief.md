# Agentic Audit Brief: Unslashed

⚠️ Lifecycle status: DECLINING - TVL changed 9.3% over 90 days

## Project Overview

- Project: Unslashed (`unslashed`)
- Lifecycle: declining (Tier 0, 98.2% below peak)
- Generated: 2026-06-12T05:35:29.120Z
- Pipeline run: v2-pipeline-2026-06-12-c31370-dba8
- Chains: ethereum
- Contract surface: 2 unique implementations (3 raw deployments)
- DeFi Llama TVL: $2,445,762.04
- On-chain TVL (included contracts): $3,126,687.15
- TVL by chain: Ethereum $3,126,687.15

## Project Description

Unslashed is a decentralized insurance protocol that allows users to provide underwriting capital and earn premiums by depositing assets into vaults. Unsupported or third-party components such as MasterChef rewards, Uniswap pairs, BAC pools, BlackPoolToken, ArcProxy, and other non-surface tokens or pools should not be described as part of the Unslashed contract surface unless independently verified as Unslashed-owned.

### Architecture

The Unslashed family centers on bVault contracts that hold underwriting capital, while BAC pools provide stablecoin risk coverage. Tokens like BlackPoolToken and ArcProxy facilitate governance and staking, with MasterChef distributing rewards, and Uniswap pairs providing liquidity for these tokens.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 3
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

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| VaultLib | core_logic | ethereum | 2 deployments: ethereum [`0x86fb84...bd6701`](./contracts/ethereum-1/0x86fb84e92c1eedc245987d28a42e123202bd6701/); ethereum `0x891dee...468a38` | ⚠️ Unaudited |
| ComptrollerLib | unknown | ethereum | [`0xba4f4c...86e87d`](./contracts/ethereum-1/0xba4f4c8b685098f8f207c647c9e326288c86e87d/) | ⚠️ Unaudited |

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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
