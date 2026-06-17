# Agentic Audit Brief: Atlendis

## Project Overview

- Project: Atlendis (`atlendis`)
- Lifecycle: active (Tier 0, 99% below peak)
- Generated: 2026-06-17T23:34:21.611Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-9ddf
- Chains: polygon
- Contract surface: 6 unique implementations (7 raw deployments)
- DeFi Llama TVL: $10,993,162.00
- On-chain TVL (included contracts): $4,280,775.69
- TVL by chain: Polygon $4,280,775.69

## Project Description

Atlendis is an active decentralized private-credit and RWA lending protocol. The parent Atlendis project includes Atlendis V1 uncollateralized lending pools as well as newer V2/Mode deployments, so audit and coverage conclusions should distinguish V1-only audited contracts from the broader current Atlendis protocol surface. External assets and third-party token contracts should be treated as dependencies or held assets, not as native Atlendis protocol components unless explicitly confirmed by Atlendis documentation.

### Architecture

The protocol consists of a single product family, Atlendis V1, where BorrowerPools manages lending logic, AToken represents lender deposits, and TokenPolygonUpgradeableNameable likely serves as the debt token. Supporting proxies and the ZeroYieldProvider handle upgrades and yield routing.

## Contract Surface Quality

- Indexed contracts: 115; live-surface contracts included: 7 (5 live, 2 unknown).
- Excluded by liveness: 94 inactive, 14 singleton, 0 uninitialized.
- Deployment units: 3/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 6
- Raw deployments: 7
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $4,280,775.69
- Latest audit: 2022-05 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AToken | token | polygon | unit-33489 | [`0x1a13f4...998b7f`](./contracts/polygon-137/0x1a13f4ca1d028320a707d99520abfefca3998b7f/) | ⚠️ Unaudited |
| AToken | token | polygon | unit-33494 | [`0x60d55f...885cec`](./contracts/polygon-137/0x60d55f02a771d515e077c9c2403a1ef324885cec/) | ⚠️ Unaudited |
| TokenPolygonUpgradeableNameable | token | polygon | unit-33499 | [`0xe0b52e...057db4`](./contracts/polygon-137/0xe0b52e49357fd4daf2c15e02058dce6bc0057db4/) | ⚠️ Unaudited |
| AtlendisLockdrop | unknown | polygon | n/a | 2 deployments: polygon [`0x4d5fa3...deab3b`](./contracts/polygon-137/0x4d5fa31a68f51ec53ea036cd4cc4cb8645deab3b/); polygon `0xbe7e43...37e84e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x115f10...200e6d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa91a5b...37a1c5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Atlendis-v1.0.pdf](https://github.com/Atlendis/protocol-v1/blob/master/audits/PeckShield-Audit-Report-Atlendis-v1.0.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | 0 | n/a |
| [atlendis-audit-report.pdf (also discovered via alternate URL)](https://github.com/Atlendis/protocol-v1/blob/master/audits/atlendis-audit-report.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x1a13f4...998b7f`](./contracts/polygon-137/0x1a13f4ca1d028320a707d99520abfefca3998b7f/) | AToken | token | $2,819,204.96 | Verified native implementation with $2,819,204.96 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x60d55f...885cec`](./contracts/polygon-137/0x60d55f02a771d515e077c9c2403a1ef324885cec/) | AToken | token | $1,368,908.36 | Verified native implementation with $1,368,908.36 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4d5fa3...deab3b`](./contracts/polygon-137/0x4d5fa31a68f51ec53ea036cd4cc4cb8645deab3b/) | AtlendisLockdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=12

Zero-match audit list:

- [7048] PeckShield-Audit-Report-Atlendis-v1.0.pdf
- [7049] atlendis-audit-report.pdf

Fork inheritance lineage and inherited audits are included when available.
