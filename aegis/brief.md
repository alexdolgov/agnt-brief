# Agentic Audit Brief: Aegis

## Project Overview

- Project: Aegis (`aegis`)
- Website: [https://aegis.im/](https://aegis.im/)
- Lifecycle: active (Tier 0, 19.3% below peak)
- Generated: 2026-05-28T15:11:21.809Z
- Pipeline run: v2-pipeline-2026-05-28-8b27fb-06de
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $35,812,925.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Aegis is a DeFi protocol focused on basis trading, offering yield-bearing stablecoin-like tokens. It provides users with exposure to basis trading strategies through its YUSD token.

### Architecture

The protocol consists of a single product family centered around the YUSD token, with no additional supporting contracts identified in the inventory.

## Audit Coverage Summary

- Verified implementations audited: 5/5 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 5
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 5 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 5 | 100.0% | n/a |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AegisConfig | governance | ethereum | [`0x90ccf2...f1db00`](./contracts/ethereum-1/0x90ccf2c4b3dee7aeac9af5950a7c60f89af1db00/) | ✅ Audited |
| AegisMinting | unknown | ethereum | [`0xa30644...bd815b`](./contracts/ethereum-1/0xa30644ca67e0a93805c443df4a6e1856d8bd815b/) | ✅ Audited |
| AegisOracle | operational_periphery | ethereum | [`0x2b4ad1...041aec`](./contracts/ethereum-1/0x2b4ad1d479561064cd1c311004aca93d15041aec/) | ✅ Audited |
| AegisRewards | unknown | ethereum | [`0x8adcfa...ddeafd`](./contracts/ethereum-1/0x8adcfaf1b64cc514524b80565bcc732273ddeafd/) | ✅ Audited |
| YUSD | unknown | ethereum | [`0x4274cd...a8da0a`](./contracts/ethereum-1/0x4274cd7277c7bb0806bd5fe84b9adae466a8da0a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [cross-chain-deployment.md](https://github.com/Aegis-im/aegis-contracts/blob/master/docs/cross-chain-deployment.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 5 | low |
| [mint-redeem.md](https://github.com/Aegis-im/aegis-contracts/blob/master/docs/mint-redeem.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: low=1
- Match method counts: extraction_exact=5

Zero-match audit list:

- [5917] mint-redeem.md
- [5918] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [5919] 0002-metadata-manifest-and-pull-command.md
- [5920] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
