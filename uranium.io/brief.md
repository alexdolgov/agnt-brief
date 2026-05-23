# Agentic Audit Brief: Uranium.io

## Project Overview

- Project: Uranium.io (`uranium.io`)
- Website: [https://uranium.io/en](https://uranium.io/en)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-23T08:55:26.809Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 3 unique implementations (7 raw deployments)
- DeFi Llama TVL: $7,364,323.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Uranium.io is a protocol for tokenizing real-world assets (RWA) on Ethereum. It issues and manages asset-backed tokens using upgradeable ERC-20 contracts, enabling on-chain representation of off-chain assets.

### Architecture

All proxy contracts share a single implementation (ExtendedERC20), forming a family of upgradeable tokens deployed from the same deployer cluster. There are no other infrastructure contracts, so the family is self-contained.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 3
- Raw deployments: 7
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

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ExtendedERC20 | token | ethereum | 5 deployments: ethereum [`0x0f974d...fe0652`](./contracts/ethereum-1/0x0f974dfb0d5d4850db78c56f07c7d62a3efe0652/); ethereum `0x623899...b6b141`; ethereum `0x79052a...f0b1fd`; ethereum `0x953f47...b098ec`; ethereum `0xaa3072...6aca62` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x45f811...d67f22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5d5eb4...583a42` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0f974d...fe0652`](./contracts/ethereum-1/0x0f974dfb0d5d4850db78c56f07c7d62a3efe0652/) | ExtendedERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
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
