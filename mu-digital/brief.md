# Agentic Audit Brief: Mu Digital

## Project Overview

- Project: Mu Digital (`mu-digital`)
- Website: [https://mudigital.net](https://mudigital.net)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-18T20:34:41.742Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-4ae8
- Chains: ethereum
- Contract surface: 7 unique implementations (14 raw deployments)
- DeFi Llama TVL: $21,576,768.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Mu Digital is a real-world asset (RWA) protocol focused on Asia-based fixed income and private credit yield products. Its token structure includes AZND as the senior tranche and muBOND as the junior or first-loss tranche; staking, rewards, treasury, and related contracts should be treated as supporting infrastructure rather than the primary product unless separately documented.

### Architecture

The Protocol Contracts family relies on shared proxy infrastructure (ERC1967Proxy) for upgradeability. Supporting contracts like AccessManager, TreasuryManager, and PriceFeed provide cross-cutting services for access control, treasury operations, and price oracles.

## Contract Surface Quality

- Indexed contracts: 42; live-surface contracts included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 28 singleton, 0 uninitialized.
- Deployment units: 2/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 6/7 (85.7%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 14
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Staleness: 2 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: 85.7% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 6 | 85.7% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessManager | governance | ethereum | n/a | 4 deployments: ethereum [`0x4122ee...fc9184`](./contracts/ethereum-1/0x4122ee38cc344784ae1a7f11afa2cfa89cfc9184/); ethereum `0x43e117...4b426f`; ethereum `0x549b90...ba7fb6`; ethereum `0xc0f4f4...fc8f08` | ✅ Audited |
| MuBOND | unknown | ethereum | n/a | [`0x8169e1...7c98ba`](./contracts/ethereum-1/0x8169e15aa5dfd4766b9fd5e247c7614e127c98ba/) | ✅ Audited |
| MuBONDPriceFeed | operational_periphery | ethereum | unit-39044 | [`0xca5b9e...45a7a1`](./contracts/ethereum-1/0xca5b9e561e3d94c8b3a90278d6e1752e8445a7a1/) | ✅ Audited |
| MuBONDPriceFeed | operational_periphery | ethereum | n/a | [`0xdefb60...92ed70`](./contracts/ethereum-1/0xdefb60c6c3d46cf324c8fad8edb989c47192ed70/) | ✅ Audited |
| PriceFeed | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x5588f4...88ed32`](./contracts/ethereum-1/0x5588f4090dfd88e0753a8ba2a08d639d7888ed32/); ethereum `0xd37453...3327bf` | ✅ Audited |
| PriceFeed | operational_periphery | ethereum | unit-39045 | [`0xe200c4...cbc0a4`](./contracts/ethereum-1/0xe200c42374258c4c192f35e4beb5e489b0cbc0a4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PreDeposit | unknown | ethereum | n/a | 4 deployments: ethereum [`0x00692c...e5cd01`](./contracts/ethereum-1/0x00692cc98b70639c6a47f01a4a7bd7a1e2e5cd01/); ethereum `0x7ad72f...d49827`; ethereum `0xb0d323...0627f6`; ethereum `0xf17ee2...a7c1ec` | ⚠️ Unaudited |

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
| [Mu Protocol - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Mu%20Protocol%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-10 | fresh | Direct | contract_name | 10 | high |
| [hacken.io/audits/mu-digital](https://hacken.io/audits/mu-digital) | Hacken | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x00692c...e5cd01`](./contracts/ethereum-1/0x00692cc98b70639c6a47f01a4a7bd7a1e2e5cd01/) | PreDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=34

Zero-match audit list:

- [1914] hacken.io/audits/mu-digital

Fork inheritance lineage and inherited audits are included when available.
