# Agentic Audit Brief: Paradex

⚠️ Lifecycle status: DECLINING - TVL dropped 78.5% over 90 days

## Project Overview

- Project: Paradex (`paradex`)
- Website: [https://app.paradex.trade/r/defillama](https://app.paradex.trade/r/defillama)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:09.180Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 5 unique implementations (6 raw deployments)
- DeFi Llama TVL: $33,260,261.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Paradex is a perpetuals decentralized exchange. The recorded Ethereum contracts appear to represent bridge/deposit-withdrawal infrastructure for Ethereum/Starknet connectivity, not the complete trading protocol or sole on-chain infrastructure.

### Architecture

The Paradex Bridge serves as the sole on-chain infrastructure, with the Proxy contract managing upgrades to the StarknetTokenBridge implementation, which handles all cross-chain token transfers.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 5
- Raw deployments: 6
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
| StarknetERC20Bridge | operational_periphery | ethereum | 2 deployments: ethereum [`0x6fd622...b42c16`](./contracts/ethereum-1/0x6fd62239f3a441d1898683c5a84ce3681bb42c16/); ethereum `0x8a4e51...be1e77` | ⚠️ Unaudited |
| StarknetTokenBridge | operational_periphery | ethereum | [`0xe3cbe3...e53db3`](./contracts/ethereum-1/0xe3cbe3a636ab6a754e9e41b12b09d09ce9e53db3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x2b3c19...9d5f8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5dacc4...c2fcc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd8d79d...97152a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x6fd622...b42c16`](./contracts/ethereum-1/0x6fd62239f3a441d1898683c5a84ce3681bb42c16/) | StarknetERC20Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3cbe3...e53db3`](./contracts/ethereum-1/0xe3cbe3a636ab6a754e9e41b12b09d09ce9e53db3/) | StarknetTokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
