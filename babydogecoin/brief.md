# Agentic Audit Brief: BabyDogeCoin

⚠️ Lifecycle status: DECLINING - TVL changed 5.0% over 90 days

## Project Overview

- Project: BabyDogeCoin (`babydogecoin`)
- Website: [https://swap.babydoge.com/](https://swap.babydoge.com/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:58:58.019Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: bsc
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $2,082,997.00
- On-chain TVL (included contracts): $164,864,498.52
- TVL by chain: Bsc $164,864,498.52

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

BabyDogeCoin is primarily a BSC-based BabyDoge token project with associated DEX, swap, farms, and staking-related interfaces. The verified contract surface for this evidence package is limited to the BSC CoinToken contract; native multi-chain vaults, reward systems, bridges, and perpetual trading contracts should not be treated as part of the verified protocol contract surface without separate ownership and deployment evidence.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $164,864,498.52
- Latest audit: 2025-08 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $164,864,498.52 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CoinToken | token | bsc | [`0xc74867...02e8de`](./contracts/bsc-56/0xc748673057861a797275cd8a068abb95a902e8de/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/baby-doge-coin) | CertiK | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2926] DL audit link

Fork inheritance lineage and inherited audits are included when available.
