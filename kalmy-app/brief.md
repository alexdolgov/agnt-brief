# Agentic Audit Brief: Kalmy App

⚠️ Lifecycle status: DEAD - TVL dropped 4.7% over 90 days

## Project Overview

- Project: Kalmy App (`kalmy-app`)
- Website: [https://kalmy.app](https://kalmy.app)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-20T01:52:46.055Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $31,929.93
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Kalmy App is a yield farming protocol on BSC that allows users to stake LP tokens and earn rewards. It uses multiple MasterChef-style contracts to manage staking pools and distribute incentives.

### Architecture

All core contracts are independent staking pools that share a common deployer and proxy pattern, but no explicit shared infrastructure is visible from the contract surface.

## Contract Surface Quality

- Indexed contracts: 596; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 572 inactive, 15 singleton, 0 uninitialized.
- Deployment units: 0/7 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 1/73.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KalmarBondingStrategy | core_logic | bsc | n/a | [`0x2cc563...9cbc3a`](./contracts/bsc-56/0x2cc5638523d90494d8b604a95ea1f0c3929cbc3a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x46c593...14e855` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ba005...d43515` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x557d49...e366b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x71af48...4ac09d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x72f6a4...f6e275` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa4d106...16094c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbf59a8...965e23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef5c87...65e8ae` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://hacken.io/audits) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x2cc563...9cbc3a`](./contracts/bsc-56/0x2cc5638523d90494d8b604a95ea1f0c3929cbc3a/) | KalmarBondingStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13339] DL audit link

Fork inheritance lineage and inherited audits are included when available.
