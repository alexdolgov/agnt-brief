# Agentic Audit Brief: Rainbow Bridge

⚠️ Lifecycle status: DEAD - TVL changed 13.6% over 90 days

## Project Overview

- Project: Rainbow Bridge (`rainbow-bridge`)
- Website: [https://rainbowbridge.app/transfer](https://rainbowbridge.app/transfer)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-24T14:19:45.093Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $2,145,504.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Rainbow Bridge is a trustless bridge enabling asset transfers between Ethereum and NEAR Protocol. It uses a custodian contract on Ethereum to lock assets and a corresponding contract on NEAR to mint wrapped tokens, secured by light client verification.

### Architecture

The EthCustodian contract is the sole Ethereum component, interacting with NEAR's light client and prover contracts to validate transfers. No additional infrastructure contracts are present on Ethereum.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| EthCustodian | unknown | ethereum | [`0x6bfad4...89fa52`](./contracts/ethereum-1/0x6bfad42cfc4efc96f529d786d643ff4a8b89fa52/) | ⚠️ Unaudited |
| NearBridge | operational_periphery | ethereum | [`0x015156...efc362`](./contracts/ethereum-1/0x0151568af92125fb289f1dd81d9d8f7484efc362/) | ⚠️ Unaudited |

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
| ethereum | [`0x6bfad4...89fa52`](./contracts/ethereum-1/0x6bfad42cfc4efc96f529d786d643ff4a8b89fa52/) | EthCustodian | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x015156...efc362`](./contracts/ethereum-1/0x0151568af92125fb289f1dd81d9d8f7484efc362/) | NearBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
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
