# Agentic Audit Brief: MyTrade

⚠️ Lifecycle status: DECLINING - TVL dropped 8.4% over 90 days

## Project Overview

- Project: MyTrade (`mytrade`)
- Website: [https://www.mytrade.org](https://www.mytrade.org)
- Lifecycle: declining (Tier 0, 96.4% below peak)
- Generated: 2026-06-19T21:24:11.598Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: polygon
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $7,630.07
- On-chain TVL (included contracts): $747,796.66
- TVL by chain: Polygon $747,796.66

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 349; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 346 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Unverified dependencies: 1/1.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $747,796.66
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $747,796.66 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UChildERC20 | token | polygon | unit-40394 | [`0x4535e5...6747e4`](./contracts/polygon-137/0x4535e52cdf3ab787b379b7b72b5990767e6747e4/) | ⚠️ Unaudited |
| MyTradeOrderBook | unknown | polygon | n/a | [`0x5d36b3...bd888b`](./contracts/polygon-137/0x5d36b36c53438c0fb70dca5082ee5bde25bd888b/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | polygon | n/a | `0xee22f8...323c4e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link (also discovered via alternate URL)](https://www.mytrade.org/files/mytradedex_auditpolygon.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x5d36b3...bd888b`](./contracts/polygon-137/0x5d36b36c53438c0fb70dca5082ee5bde25bd888b/) | MyTradeOrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13539] DL audit link

Fork inheritance lineage and inherited audits are included when available.
