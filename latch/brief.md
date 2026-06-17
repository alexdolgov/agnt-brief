# Agentic Audit Brief: Latch

⚠️ Lifecycle status: DECLINING - TVL dropped 89.6% over 90 days

## Project Overview

- Project: Latch (`latch`)
- Website: [https://savings.latch.io/](https://savings.latch.io/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:01:01.714Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 3 unique implementations (5 raw deployments)
- DeFi Llama TVL: $1,560,879.72
- On-chain TVL (included contracts): $375,749.61
- TVL by chain: Ethereum $375,749.61

## Project Description

Latch is a yield/interoperability protocol on Ethereum where users can deposit idle tokens, select a preferred vault, and earn yield and/or points. Public descriptions position Latch as unifying yield, liquidity, and chains; the currently surfaced DepositPool contract should not be assumed to represent all protocol yield generation or total value at risk without further verification.

### Architecture

The protocol consists of a single product family with one core contract, so there are no cross-family relationships or shared infrastructure.

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 5
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $375,749.61
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $375,749.61 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakingPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x29403b...119b95`](./contracts/ethereum-1/0x29403b1ac2b745c806e4d4988e4c1b6f4c119b95/); ethereum `0x899f88...d3245b` | ⚠️ Unaudited |
| DepositPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x7cc08f...b8f90c`](./contracts/ethereum-1/0x7cc08f23a6e8222c86a62fce3d4d252dd1b8f90c/); ethereum `0xfe606e...31a023` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-32618 | [`0x774388...4562e7`](./contracts/ethereum-1/0x774388454c92fe33e781ab535a5e9d186a4562e7/) | ⚠️ Unaudited |

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
| ethereum | [`0x29403b...119b95`](./contracts/ethereum-1/0x29403b1ac2b745c806e4d4988e4c1b6f4c119b95/) | StakingPool | core_logic | $375,544.42 | Verified native implementation with $375,544.42 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7cc08f...b8f90c`](./contracts/ethereum-1/0x7cc08f23a6e8222c86a62fce3d4d252dd1b8f90c/) | DepositPool | core_logic | $205.19 | Verified native implementation with $205.19 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
