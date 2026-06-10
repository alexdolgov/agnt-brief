# Agentic Audit Brief: Aegis

## Project Overview

- Project: Aegis (`aegis`)
- Website: [https://aegis.im/](https://aegis.im/)
- Lifecycle: active (Tier 0, 19.3% below peak)
- Generated: 2026-06-10T20:14:47.919Z
- Pipeline run: v2-pipeline-2026-06-10-b79301-df6b
- Chains: ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $35,799,876.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Aegis is an active stablecoin and yield protocol centered on YUSD and marketed/upcoming jUSD, using delta-neutral, basis-trading, and funding-rate strategies to generate stablecoin yield. Its Ethereum contract topology includes YUSD as the stablecoin token, AegisMinting for core issuance/minting, AegisRewards for rewards/distribution, AegisOracle for pricing/periphery infrastructure, and AegisConfig for governance/configuration. The currently verified Ethereum live code-bearing surface excludes the no-code address 0xab3dbcd9b096c3ff76275038bf58eac10d22c61f; BSC/Binance exposure should be discovered or separately noted because project TVL includes BSC.

### Architecture

The protocol consists of a single product family centered around the YUSD token, with no additional supporting contracts identified in the inventory.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 6
- Raw deployments: 6
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

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AegisConfig | governance | ethereum | [`0x90ccf2...f1db00`](./contracts/ethereum-1/0x90ccf2c4b3dee7aeac9af5950a7c60f89af1db00/) | ⚠️ Unaudited |
| AegisMinting | operational_periphery | ethereum | [`0xa30644...bd815b`](./contracts/ethereum-1/0xa30644ca67e0a93805c443df4a6e1856d8bd815b/) | ⚠️ Unaudited |
| AegisOracle | operational_periphery | ethereum | [`0x2b4ad1...041aec`](./contracts/ethereum-1/0x2b4ad1d479561064cd1c311004aca93d15041aec/) | ⚠️ Unaudited |
| AegisRewards | operational_periphery | ethereum | [`0x8adcfa...ddeafd`](./contracts/ethereum-1/0x8adcfaf1b64cc514524b80565bcc732273ddeafd/) | ⚠️ Unaudited |
| YUSD | token | ethereum | [`0x4274cd...a8da0a`](./contracts/ethereum-1/0x4274cd7277c7bb0806bd5fe84b9adae466a8da0a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0xab3dbc...22c61f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x90ccf2...f1db00`](./contracts/ethereum-1/0x90ccf2c4b3dee7aeac9af5950a7c60f89af1db00/) | AegisConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa30644...bd815b`](./contracts/ethereum-1/0xa30644ca67e0a93805c443df4a6e1856d8bd815b/) | AegisMinting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b4ad1...041aec`](./contracts/ethereum-1/0x2b4ad1d479561064cd1c311004aca93d15041aec/) | AegisOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8adcfa...ddeafd`](./contracts/ethereum-1/0x8adcfaf1b64cc514524b80565bcc732273ddeafd/) | AegisRewards | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4274cd...a8da0a`](./contracts/ethereum-1/0x4274cd7277c7bb0806bd5fe84b9adae466a8da0a/) | YUSD | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
