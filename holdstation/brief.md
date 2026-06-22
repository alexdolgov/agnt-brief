# Agentic Audit Brief: Holdstation

⚠️ Lifecycle status: DECLINING - TVL dropped 19.5% over 90 days

## Project Overview

- Project: Holdstation (`holdstation`)
- Website: [https://holdstation.com/](https://holdstation.com/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-20T00:14:41.648Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: berachain, bsc, zksync-era
- Contract surface: 9 unique implementations (10 raw deployments)
- DeFi Llama TVL: $19,733.00
- On-chain TVL (included contracts): $100,158.06
- TVL by chain: Berachain $100,158.06

## Project Description

Holdstation is a DeFi platform offering derivatives trading, token swaps, and a DEX aggregator across multiple chains. It provides a wallet miniapp and a native token (HoldToken) to facilitate trading and liquidity.

### Architecture

All contracts belong to a single product family deployed by the same deployer cluster, sharing a common implementation contract (0x8e77fb...) used by multiple proxies. The HoldToken likely serves as the utility and governance token across the protocol's trading and aggregation features.

## Contract Surface Quality

- Indexed contracts: 78; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 35 inactive, 33 singleton, 0 uninitialized.
- Deployment units: 2/19 live.
- Detected codebases: none
- Unverified dependencies: 1/2.

## Audit Coverage Summary

- Verified implementations audited: 1/4 (25.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 9
- Raw deployments: 10
- Audits discovered: 9
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Staleness: 0 fresh, 0 aging, 8 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Verichains | Tier 2 | 1 | 25.0% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HoldToken | token | berachain | n/a | [`0xff0a63...290c98`](./contracts/berachain-80094/0xff0a636dfc44bb0129b631cdd38d21b613290c98/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GodLikesElephants | unknown | bsc | unit-40702 | [`0x7470c4...d0afef`](./contracts/bsc-56/0x7470c48fbf23067f6f8ef63f7d9b4a2aa5d0afef/) | ⚠️ Unaudited |
| ProxyAdmin | governance | berachain | n/a | 2 deployments: berachain [`0x98a7d4...c94f12`](./contracts/berachain-80094/0x98a7d495ae2065d5befd852a51edc9073ec94f12/); berachain `0xd4213d...39a660` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | berachain | unit-40715 | [`0xa8dba7...c48e14`](./contracts/berachain-80094/0xa8dba750a2d76586a234efb7bdf1d34fdcc48e14/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | zksync-era | n/a | `0xed4040...95f0f2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x39b9ec...177edd` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x47954b...ca0558` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x61c11b...ff075b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x77c99d...65bb35` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Verichains Draft Audit Report - HoldStation Dex - v1.0.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Draft%20Audit%20Report%20-%20HoldStation%20Dex%20-%20v1.0.pdf) | unknown | Audit | 2023-05 | stale | Direct | contract_name | 0 | n/a |
| [* [**PeckShield Audit**]()](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Holdstation-v1.0.pdf?ref=blog.holdstation.com) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [* [**Certik Audit**]()](https://skynet.certik.com/projects/holdstation) | CertiK | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [* [**Holdstation Wallet Audit**]()](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Holdstation%20Mobile%20Wallet%20-%20v1.0.pdf) | CertiK | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [* [**Holdstation DeFuture Audit**]()](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20HoldStation%20Defutures%20-%20v1.4.pdf) | Verichains | Audit | 2023-08 | stale | Direct | contract_name | 0 | n/a |
| [* [**Holdstation Launchpad Audit**]()](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Holdstation%20Launchpad%20-%20v1.1.pdf) | Verichains | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [* [**Holdstation Swap**]()](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Holdstation%20Dex%20-%20v1.0.pdf) | Verichains | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [**HOLD Audit Link:** [ ](<https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Holdstation%20Token%20-%20v1.0.pdf >)](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Holdstation%20Token%20-%20v1.0.pdf) | Verichains | Audit | 2023-10 | stale | Direct | contract_name | 1 | high |
| [DIP001_audit_report_2020_03_en_1_0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/DIP001_audit_report_2020_03_en_1_0.pdf) | PeckShield | Audit | 2020-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=3

Zero-match audit list:

- [13229] Verichains Draft Audit Report - HoldStation Dex - v1.0.pdf
- [13230] * [**PeckShield Audit**]()
- [13231] * [**Certik Audit**]()
- [13232] * [**Holdstation Wallet Audit**]()
- [13233] * [**Holdstation DeFuture Audit**]()
- [13234] * [**Holdstation Launchpad Audit**]()
- [13235] * [**Holdstation Swap**]()
- [13237] DIP001_audit_report_2020_03_en_1_0.pdf

Fork inheritance lineage and inherited audits are included when available.
