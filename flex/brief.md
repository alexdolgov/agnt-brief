# Agentic Audit Brief: Flex

## Project Overview

- Project: Flex (`flex`)
- Website: [https://flexmeow.com/](https://flexmeow.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-10T20:59:04.010Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $611,657.73
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Flex is an Ethereum fixed-rate money market and lending protocol where borrowers choose their own interest rates.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Staleness: 2 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Registry | registry | ethereum | [`0x911744...7c77c8`](./contracts/ethereum-1/0x9117440a7d03238905d1c8908157bd7a547c77c8/) | ⚠️ Unaudited |

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
| [FLEX-Audit-28-February-2026.md](https://github.com/flexmeow/flex-contracts/blob/master/audits/FLEX-Audit-28-February-2026.md) | unknown | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [Flex-May-07-2026-Dedaub.pdf](https://github.com/flexmeow/flex-contracts/blob/master/audits/Flex-May-07-2026-Dedaub.pdf) | Dedaub | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [flex-audit-27-april.md](https://github.com/flexmeow/flex-contracts/blob/master/audits/flex-audit-27-april.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x911744...7c77c8`](./contracts/ethereum-1/0x9117440a7d03238905d1c8908157bd7a547c77c8/) | Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [9630] FLEX-Audit-28-February-2026.md
- [9631] Flex-May-07-2026-Dedaub.pdf
- [9632] flex-audit-27-april.md

Fork inheritance lineage and inherited audits are included when available.
