# Agentic Audit Brief: stUSDT

## Project Overview

- Project: stUSDT (`stusdt`)
- Website: [https://stusdt.io/#/home](https://stusdt.io/#/home)
- Lifecycle: active (Tier 0, 97.2% below peak)
- Generated: 2026-06-12T07:16:43.977Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-d6af
- Chains: ethereum
- Contract surface: 12 unique implementations (15 raw deployments)
- DeFi Llama TVL: $60,242,632.93
- On-chain TVL (included contracts): $1,869,789.16
- TVL by chain: Ethereum $1,869,789.16

## Project Description

stUSDT is a protocol that tokenizes real-world assets (RWA) by allowing users to stake USDT and receive stUSDT, a yield-bearing token. It also provides wrapped (wstUSDT) and unstaking (UnstUSDT) mechanisms to manage staked positions.

### Architecture

The MinterProxy likely manages minting and burning of stUSDT and its derivatives, serving as shared infrastructure for the stUSDT, wstUSDT, and UnstUSDT contracts. These contracts interact to provide a seamless staking and yield-bearing token experience.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 12
- Raw deployments: 15
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,869,789.16
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StUSDTG1 | token | ethereum | 3 deployments: ethereum [`0x25ec98...145e10`](./contracts/ethereum-1/0x25ec98773d7b4ced4cafab96a2a1c0945f145e10/); ethereum `0x3ece77...cb1f34`; ethereum `0xf68799...911750` | ⚠️ Unaudited |
| UnstUSDTProxy | token | ethereum | [`0x156269...2c058c`](./contracts/ethereum-1/0x156269966404ca72f6721c3228676c56412c058c/) | ⚠️ Unaudited |
| WstUSDT | token | ethereum | 2 deployments: ethereum [`0x572975...fe1ab0`](./contracts/ethereum-1/0x572975ff6d5136c81c8d7448b6361ef9eefe1ab0/); ethereum `0xf7eb89...44d0d5` | ⚠️ Unaudited |
| MinterProxy | proxy | ethereum | [`0xe22d16...73728c`](./contracts/ethereum-1/0xe22d16a16d8a5a92241cf696c35c08eaa873728c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x169065...0cdf27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x510d62...2db610` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6d9154...1fe1f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x811835...865840` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x82bb08...f7358d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa5a49f...19314b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdf0936...124cc1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf97ff1...3396a0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x25ec98...145e10`](./contracts/ethereum-1/0x25ec98773d7b4ced4cafab96a2a1c0945f145e10/) | StUSDTG1 | token | $1,796,991.33 | Verified native implementation with $1,796,991.33 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
