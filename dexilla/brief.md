# Agentic Audit Brief: Dexilla

⚠️ Lifecycle status: DECLINING - TVL dropped 16.1% over 90 days

## Project Overview

- Project: Dexilla (`dexilla`)
- Lifecycle: declining (Tier 0, 99.7% below peak)
- Generated: 2026-06-19T13:00:51.217Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: arbitrum, optimism
- Contract surface: 5 unique implementations (10 raw deployments)
- DeFi Llama TVL: $133.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexilla is a decentralized exchange (DEX) protocol deployed across multiple chains, enabling users to swap tokens through a series of exchange contract versions (V3 to V6).

### Architecture

All exchange contracts belong to a single product family and share the same core purpose; there is no evidence of separate infrastructure or token contracts, suggesting a self-contained DEX design.

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 10 (1 live, 9 unknown).
- Excluded by liveness: 14 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/4 (25.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 5
- Raw deployments: 10
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 25.0% | 2023-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DexillaExchangeV4 | unknown | optimism | n/a | 2 deployments: optimism [`0x44f1c3...25ce84`](./contracts/optimism-10/0x44f1c33ed3bf77a5883cbece1c1b34e71425ce84/); optimism `0xb0be48...57e959` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DexillaExchangeV3 | unknown | optimism | n/a | 2 deployments: optimism [`0x68d054...ff2bd9`](./contracts/optimism-10/0x68d05405472c4f0c254a47922dba9dbc4cff2bd9/); optimism `0x8f1f67...3e6e50` | ⚠️ Unaudited |
| DexillaExchangeV5 | unknown | optimism | n/a | 2 deployments: optimism [`0x6f1d07...86884a`](./contracts/optimism-10/0x6f1d074bf170fcdde7712bb8da4c70c5be86884a/); arbitrum `0xb56f90...2d6600` | ⚠️ Unaudited |
| FeeCollector | unknown | optimism | n/a | 3 deployments: optimism [`0x50f3ba...d3ca6e`](./contracts/optimism-10/0x50f3ba8a9e0306e545b04186a60b722516d3ca6e/); optimism `0x6a5d7c...aa35e2`; optimism `0x982d56...45dce3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0xe9e8aa...9cbd07` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [mythx_all.pdf](https://github.com/dexilla/protocol/blob/main/audits/mythx_all.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x68d054...ff2bd9`](./contracts/optimism-10/0x68d05405472c4f0c254a47922dba9dbc4cff2bd9/) | DexillaExchangeV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6f1d07...86884a`](./contracts/optimism-10/0x6f1d074bf170fcdde7712bb8da4c70c5be86884a/) | DexillaExchangeV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x50f3ba...d3ca6e`](./contracts/optimism-10/0x50f3ba8a9e0306e545b04186a60b722516d3ca6e/) | FeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=8

Fork inheritance lineage and inherited audits are included when available.
