# Agentic Audit Brief: Manta Pacific

## Project Overview

- Project: Manta Pacific (`manta-pacific`)
- Website: [https://pacific-bridge.manta.network](https://pacific-bridge.manta.network)
- Lifecycle: active (Tier 0, 91.2% below peak)
- Generated: 2026-06-11T00:52:54.986Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-2b99
- Chains: ethereum, manta
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $24,646,896.09
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This record covers the canonical bridge for transferring assets between Ethereum and Manta Pacific. It should not be treated as a full audit scope for the entire Manta Pacific Layer 2 unless a separate broader project scope and supporting evidence are added.

### Architecture

All contracts belong to a single product family that implements the OP Stack bridging system. The L1StandardBridge and L1ERC721Bridge handle asset transfers, while the OptimismPortal manages deposits and withdrawals, and the L1CrossDomainMessenger enables cross-chain communication, all configured by the SystemConfig and secured by the L2OutputOracle.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
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

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| L1StandardBridge | bridge_template | ethereum | [`0x3b95bc...9715e5`](./contracts/ethereum-1/0x3b95bc951ee0f553ba487327278cac44f29715e5/) | ⚠️ Unaudited |
| Manta | unknown | manta | [`0x95cef1...c544e5`](./contracts/manta-169/0x95cef13441be50d20ca4558cc0a27b601ac544e5/) | ⚠️ Unaudited |
| OptimismPortal | proxy | ethereum | [`0x916876...0b7622`](./contracts/ethereum-1/0x9168765ee952de7c6f8fc6fad5ec209b960b7622/) | ⚠️ Unaudited |

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
| ethereum | [`0x3b95bc...9715e5`](./contracts/ethereum-1/0x3b95bc951ee0f553ba487327278cac44f29715e5/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x95cef1...c544e5`](./contracts/manta-169/0x95cef13441be50d20ca4558cc0a27b601ac544e5/) | Manta | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x916876...0b7622`](./contracts/ethereum-1/0x9168765ee952de7c6f8fc6fad5ec209b960b7622/) | OptimismPortal | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
