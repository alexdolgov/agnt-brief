# Agentic Audit Brief: Goose

## Project Overview

- Project: Goose (`goose`)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-31T08:13:53.811Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: ethereum
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $12,801,021.87
- On-chain TVL (included contracts): $7.87
- TVL by chain: Ethereum $7.87

## Project Description

Goose is a CeDeFi protocol that combines centralized and decentralized finance elements to offer yield-bearing vaults. It allows users to deposit assets into vaults that generate returns through managed strategies.

### Architecture

The USDVault relies on DataStorage for configuration and state management, while the unnamed contract likely serves as an access control or factory component.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $7.87
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| USDVault | core_logic | ethereum | [`0xe8a01d...e7e9fb`](./contracts/ethereum-1/0xe8a01d8dac4af19ec7a22cf87f3d141ce6e7e9fb/) | ⚠️ Unaudited |
| DataStorage | unknown | ethereum | [`0x857ab0...0c2d3b`](./contracts/ethereum-1/0x857ab0b4f236f7dd7e5ac5f96c0bbebf230c2d3b/) | ⚠️ Unaudited |
| VaultFactory | registry | ethereum | [`0x739a8f...303d18`](./contracts/ethereum-1/0x739a8f9cb6ec2b79006554dbc3a42fbf75303d18/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0874f9...232899` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7da1ea...448ef3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa988bf...ae6e3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf00a14...b328de` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe8a01d...e7e9fb`](./contracts/ethereum-1/0xe8a01d8dac4af19ec7a22cf87f3d141ce6e7e9fb/) | USDVault | core_logic | $7.87 | Verified native implementation with $7.87 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x857ab0...0c2d3b`](./contracts/ethereum-1/0x857ab0b4f236f7dd7e5ac5f96c0bbebf230c2d3b/) | DataStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x739a8f...303d18`](./contracts/ethereum-1/0x739a8f9cb6ec2b79006554dbc3a42fbf75303d18/) | VaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
