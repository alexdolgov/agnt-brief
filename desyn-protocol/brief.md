# Agentic Audit Brief: DeSyn Protocol

⚠️ Lifecycle status: DECLINING - TVL changed 10.9% over 90 days

## Project Overview

- Project: DeSyn Protocol (`desyn-protocol`)
- Website: [https://www.desyn.io/#/](https://www.desyn.io/#/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-10T22:51:53.369Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-03d9
- Chains: ethereum, mode
- Contract surface: 11 unique implementations (15 raw deployments)
- DeFi Llama TVL: $10,730,444.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DeSyn Protocol is a decentralized asset management platform spanning multiple product families tracked as DeSyn Basis Trading, DeSyn Liquid Strategy, and DeSyn Safe/Farm. Its current protocol surface should be modeled across the active TVL-bearing deployments, with parent-protocol TVL primarily associated with Basis Trading rather than only legacy Ethereum or Mode DeSyn Safe liquidity pools.

### Architecture

The governance family (GnosisSafeProxy) likely manages upgrades and parameters for the DeSyn Safe liquidity pools. The unnamed supporting contracts in DeSyn Safe may include adapters, registries, or access control modules that facilitate pool operations and strategy execution.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 11
- Raw deployments: 15
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| GnosisSafe | governance | ethereum | [`0xf87709...20e174`](./contracts/ethereum-1/0xf8770931fc94d05ab4982d06bd6572bdf520e174/) | ⚠️ Unaudited |
| LiquidityPool | core_logic | mode | 5 deployments: mode [`0x02a9ad...db78c0`](./contracts/mode-34443/0x02a9ad4d451407faa6039f07ef596203c0db78c0/); mode `0x26f9fa...cd9805`; mode `0x34075f...879eef`; mode `0x87374d...ed3d0a`; mode `0xbfb3a6...e34c96` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | mode | `0x203cbb...dc7faa` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x5d2b9c...242ce3` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x5e69d8...7b44bb` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x66a50e...d2dc5c` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x6cb698...518079` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xb7669c...1ef23a` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xc017af...8f5943` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xd4d402...f7889a` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xda8c0b...b3e95d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mode | [`0x02a9ad...db78c0`](./contracts/mode-34443/0x02a9ad4d451407faa6039f07ef596203c0db78c0/) | LiquidityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 1 |
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
