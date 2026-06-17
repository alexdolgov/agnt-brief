# Agentic Audit Brief: Atlendis

## Project Overview

- Project: Atlendis (`atlendis`)
- Lifecycle: active (Tier 0, 99% below peak)
- Generated: 2026-06-17T07:00:32.496Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: polygon
- Contract surface: 4 unique implementations (6 raw deployments)
- DeFi Llama TVL: $10,993,162.00
- On-chain TVL (included contracts): $4,280,775.69
- TVL by chain: Polygon $4,280,775.69

## Project Description

Atlendis is an active decentralized private-credit and RWA lending protocol. The parent Atlendis project includes Atlendis V1 uncollateralized lending pools as well as newer V2/Mode deployments, so audit and coverage conclusions should distinguish V1-only audited contracts from the broader current Atlendis protocol surface. External assets and third-party token contracts should be treated as dependencies or held assets, not as native Atlendis protocol components unless explicitly confirmed by Atlendis documentation.

### Architecture

The protocol consists of a single product family, Atlendis V1, where BorrowerPools manages lending logic, AToken represents lender deposits, and TokenPolygonUpgradeableNameable likely serves as the debt token. Supporting proxies and the ZeroYieldProvider handle upgrades and yield routing.

## Contract Surface Quality

- Indexed contracts: 106; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 88 inactive, 12 singleton, 0 uninitialized.
- Deployment units: 3/10 live.
- Detected codebases: none
- Dependencies extracted: 4; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 6
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
| AToken | token | polygon | unit-19042 | [`0x1a13f4...998b7f`](./contracts/polygon-137/0x1a13f4ca1d028320a707d99520abfefca3998b7f/) | ⚠️ Unaudited |
| AToken | token | polygon | unit-19045 | [`0x60d55f...885cec`](./contracts/polygon-137/0x60d55f02a771d515e077c9c2403a1ef324885cec/) | ⚠️ Unaudited |
| TokenPolygonUpgradeableNameable | token | polygon | unit-19050 | [`0xe0b52e...057db4`](./contracts/polygon-137/0xe0b52e49357fd4daf2c15e02058dce6bc0057db4/) | ⚠️ Unaudited |
| AtlendisLockdrop | unknown | polygon | n/a | 3 deployments: polygon [`0x4d5fa3...deab3b`](./contracts/polygon-137/0x4d5fa31a68f51ec53ea036cd4cc4cb8645deab3b/); polygon `0x74597f...b418aa`; polygon `0xbe7e43...37e84e` | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-Atlendis-v1.0.pdf](https://github.com/Atlendis/protocol-v1/blob/master/audits/PeckShield-Audit-Report-Atlendis-v1.0.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | 0 | n/a |
| [atlendis-audit-report.pdf (also discovered via alternate URL)](https://github.com/Atlendis/protocol-v1/blob/master/audits/atlendis-audit-report.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name|n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x4d5fa3...deab3b`](./contracts/polygon-137/0x4d5fa31a68f51ec53ea036cd4cc4cb8645deab3b/) | AtlendisLockdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=8

Zero-match audit list:

- [7048] PeckShield-Audit-Report-Atlendis-v1.0.pdf
- [7049] atlendis-audit-report.pdf

Fork inheritance lineage and inherited audits are included when available.
