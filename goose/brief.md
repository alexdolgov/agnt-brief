# Agentic Audit Brief: Goose

## Project Overview

- Project: Goose (`goose`)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-12T20:36:43.342Z
- Pipeline run: v2-pipeline-2026-06-12-546062-9988
- Chains: arbitrum, ethereum, opbnb
- Contract surface: 11 unique implementations (15 raw deployments)
- DeFi Llama TVL: $12,780,200.87
- On-chain TVL (included contracts): $1,572.23
- TVL by chain: Ethereum $1,246.82 | Arbitrum $325.41

## Project Description

Goose is a CeDeFi/super-hybrid yield protocol with yield-bearing vault/factory-style Ethereum contracts and multi-chain TVL reported through DefiLlama. Users deposit assets into vaults intended to generate returns through managed strategies. Any contract-surface or TVL figures based only on the recorded Ethereum DataStorage contract should be treated as partial Ethereum-only coverage, not project-wide totals.

### Architecture

The USDVault relies on DataStorage for configuration and state management, while the unnamed contract likely serves as an access control or factory component.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 11
- Raw deployments: 15
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,572.23
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LRTVault | core_logic | ethereum | 2 deployments: ethereum [`0x234c01...4f6299`](./contracts/ethereum-1/0x234c013dccb6af642fcb7060a91c9c71504f6299/); ethereum `0xd31fab...1bad5d` | ⚠️ Unaudited |
| USDVault | core_logic | arbitrum | 2 deployments: ethereum `0xe8a01d...e7e9fb`; arbitrum [`0x0874f9...232899`](./contracts/arbitrum-42161/0x0874f961178879cdbde3500544c49f864f232899/) | ⚠️ Unaudited |
| DataStorage | unknown | arbitrum | 2 deployments: ethereum `0x857ab0...0c2d3b`; arbitrum [`0x7da1ea...448ef3`](./contracts/arbitrum-42161/0x7da1ea975cfa94c230fe527b9d36a62a77448ef3/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | [`0x509b38...d695e0`](./contracts/ethereum-1/0x509b38c5f884067e2128c4fc89d1489813d695e0/) | ⚠️ Unaudited |
| VaultFactory | registry | ethereum | 2 deployments: ethereum [`0x739a8f...303d18`](./contracts/ethereum-1/0x739a8f9cb6ec2b79006554dbc3a42fbf75303d18/); arbitrum `0xa988bf...ae6e3f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0874f9...232899` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7da1ea...448ef3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa988bf...ae6e3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf00a14...b328de` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0x857ab0...0c2d3b` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | `0xe4bf4e...6ec8d3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x234c01...4f6299`](./contracts/ethereum-1/0x234c013dccb6af642fcb7060a91c9c71504f6299/) | LRTVault | core_logic | $1,238.95 | Verified native implementation with $1,238.95 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0874f9...232899`](./contracts/arbitrum-42161/0x0874f961178879cdbde3500544c49f864f232899/) | USDVault | core_logic | $333.28 | Verified native implementation with $333.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7da1ea...448ef3`](./contracts/arbitrum-42161/0x7da1ea975cfa94c230fe527b9d36a62a77448ef3/) | DataStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x739a8f...303d18`](./contracts/ethereum-1/0x739a8f9cb6ec2b79006554dbc3a42fbf75303d18/) | VaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
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
