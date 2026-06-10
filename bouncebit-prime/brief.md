# Agentic Audit Brief: BounceBit Prime

## Project Overview

- Project: BounceBit Prime (`bouncebit-prime`)
- Website: [https://prime.bouncebit.io/](https://prime.bouncebit.io/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-10T20:59:01.078Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 9 unique implementations (13 raw deployments)
- DeFi Llama TVL: $11,944,143.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

BounceBit Prime provides tokenized income and RWA strategy vaults using collateral such as Franklin BENJI and BlackRock BUIDL held in custody and deployed as collateral for delta-neutral or basis strategies across approved venues.

### Architecture

The protocol consists of a single product family with one core proxy contract, indicating a monolithic architecture without shared infrastructure across multiple families.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 9
- Raw deployments: 13
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ProxyAdmin | governance | ethereum | [`0x576238...6aba1d`](./contracts/ethereum-1/0x5762385b22f72e6cc620c1cb44782fd8a36aba1d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | 5 deployments: ethereum [`0x539f1d...b32484`](./contracts/ethereum-1/0x539f1d37983e31c70ce29c9384ac67f367b32484/); ethereum `0x6f776d...95c580`; ethereum `0x95917f...3bb90c`; ethereum `0xa6b612...1630ba`; ethereum `0xcb7ad2...24726f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x235519...b9a19f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x26fbb1...4fad1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x33072b...97b9e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e9041...6596f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7cd93d...c26712` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x98d1fd...d749d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf17c30...934208` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
