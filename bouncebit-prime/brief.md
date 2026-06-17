# Agentic Audit Brief: BounceBit Prime

## Project Overview

- Project: BounceBit Prime (`bouncebit-prime`)
- Website: [https://prime.bouncebit.io/](https://prime.bouncebit.io/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:45.173Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc, ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $11,944,606.08
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

BounceBit Prime provides tokenized income and RWA strategy vaults using collateral such as Franklin BENJI and BlackRock BUIDL held in custody and deployed as collateral for delta-neutral or basis strategies across approved venues.

### Architecture

The protocol consists of a single product family with one core proxy contract, indicating a monolithic architecture without shared infrastructure across multiple families.

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 9 singleton, 0 uninitialized.
- Deployment units: 1/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 5
- Raw deployments: 5
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

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyAdmin | governance | ethereum | n/a | [`0x576238...6aba1d`](./contracts/ethereum-1/0x5762385b22f72e6cc620c1cb44782fd8a36aba1d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | unit-19885 | [`0x6f776d...95c580`](./contracts/bsc-56/0x6f776d791612a22a70e206602cff96185695c580/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x235519...b9a19f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26fbb1...4fad1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98d1fd...d749d3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
