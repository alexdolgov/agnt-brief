# Agentic Audit Brief: KUMA Protocol

## Project Overview

- Project: KUMA Protocol (`kuma-protocol`)
- Website: [https://kuma.bond](https://kuma.bond)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:36.493Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum, linea, mantle, polygon
- Contract surface: 9 unique implementations (14 raw deployments)
- DeFi Llama TVL: $3,075,023.64
- On-chain TVL (included contracts): $22,134.05
- TVL by chain: Linea $21,710.03 | Ethereum $424.02

## Project Description

KUMA Protocol provides infrastructure for regulated real-world-asset-backed yield tokens. It swaps regulated MCAG-issued KUMA NFTs, initially backed by sovereign bonds, into transferable interest-bearing ERC-20 KIBTs, supported by KIBToken, KBCToken/KUMABondToken components, address-provider and access-control registry infrastructure, rate/feed integrations, fee collection, and swap contracts. Claims that KUMA directly tokenizes sovereign bonds or primarily facilitates stablecoin swaps should be qualified unless separately sourced.

### Architecture

The KUMA Protocol family provides the core infrastructure (rate feeds, swaps, fee collection) shared by all token instances. Individual token families (EGK, FRK, USK) are specific deployments of KIBToken that rely on the protocol's registries and access controllers for operation.

## Contract Surface Quality

- Indexed contracts: 210; live-surface contracts included: 14 (12 live, 2 unknown).
- Excluded by liveness: 102 inactive, 94 singleton, 0 uninitialized.
- Deployment units: 2/50 live.
- Detected codebases: none
- Dependencies extracted: 115; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/9 (11.1%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 14
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $22,134.05
- Latest audit: 2023-02 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 1 unknown
- Tier 1 coverage: 11.1% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 1 | 11.1% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KUMABondToken | token | linea | n/a | 2 deployments: ethereum `0x74e9e8...b79a7b`; linea [`0x3d0a18...3a3a9a`](./contracts/linea-59144/0x3d0a18c6bddd2e03ddd0ea26ed2bb9c6f83a3a9a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WrappedRebaseToken | token | linea | n/a | 2 deployments: ethereum `0xaf4ce7...e57e09`; linea [`0x2f0b43...d7297a`](./contracts/linea-59144/0x2f0b4300074afc01726262d4cc9c1d2619d7297a/) | ⚠️ Unaudited |
| FeeDistributor | operational_periphery | polygon | n/a | [`0x83d8ca...ca1227`](./contracts/polygon-137/0x83d8ca70144d55f74ad3c5eb3336b4163bca1227/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-22355 (2 proxies) | 2 deployments: ethereum [`0x33da84...e0d1bf`](./contracts/ethereum-1/0x33da84dd937779f3edaccf87e7ddcdc216e0d1bf/); ethereum `0xb55027...33f450` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | linea | unit-22383 (2 proxies) | 2 deployments: linea [`0x1151d6...642997`](./contracts/linea-59144/0x1151d63eb6154843d4b4898cf4c63af556642997/); linea `0x7cf34a...025432` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | mantle | n/a | [`0xfef638...3207b6`](./contracts/mantle-5000/0xfef638230495d1b36422f7475c2000d7cb3207b6/) | ⚠️ Unaudited |
| KUMAAccessController | governance | ethereum | n/a | 2 deployments: ethereum [`0x5fad6f...1163de`](./contracts/ethereum-1/0x5fad6f80312aee6f19784a7fc359f90d441163de/); linea `0xb9cee0...6a52ae` | ⚠️ Unaudited |
| PaUSD | unknown | polygon | n/a | [`0x8054d4...a7486b`](./contracts/polygon-137/0x8054d4d130c3a84852f379424bcac75673a7486b/) | ⚠️ Unaudited |
| RateProvider | unknown | polygon | n/a | [`0x76d8b7...6628e2`](./contracts/polygon-137/0x76d8b79fb9afd4da89913458c90b6c09676628e2/) | ⚠️ Unaudited |

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
| [Code4rena](https://code4rena.com/reports/2023-02-kuma) | Code4rena | Contest | 2023-02 | stale | Direct | contract_name | 2 | high |
| [KUMA Audit report #3](https://www.chainsecurity.com/security-audit/kuma-protocol) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Public Github Repo: <>](https://github.com/code-423n4/2023-02-kuma) | Code4rena | Contest | 2023-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0x2f0b43...d7297a`](./contracts/linea-59144/0x2f0b4300074afc01726262d4cc9c1d2619d7297a/) | WrappedRebaseToken | token | $22,134.05 | Verified native implementation with $22,134.05 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x83d8ca...ca1227`](./contracts/polygon-137/0x83d8ca70144d55f74ad3c5eb3336b4163bca1227/) | FeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fad6f...1163de`](./contracts/ethereum-1/0x5fad6f80312aee6f19784a7fc359f90d441163de/) | KUMAAccessController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8054d4...a7486b`](./contracts/polygon-137/0x8054d4d130c3a84852f379424bcac75673a7486b/) | PaUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x76d8b7...6628e2`](./contracts/polygon-137/0x76d8b79fb9afd4da89913458c90b6c09676628e2/) | RateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=98

Zero-match audit list:

- [2759] KUMA Audit report #3
- [11948] Public Github Repo: <>

Fork inheritance lineage and inherited audits are included when available.
