# Agentic Audit Brief: Sport.fun

## Project Overview

- Project: Sport.fun (`sport.fun`)
- Website: [https://pro.sport.fun](https://pro.sport.fun)
- Lifecycle: active (Tier 0, 52.5% below peak)
- Generated: 2026-06-14T00:02:25.308Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-24d8
- Chains: base
- Contract surface: 6 unique implementations (11 raw deployments)
- DeFi Llama TVL: $3,539,171.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Sport.fun is a Base fantasy soccer protocol where users trade fractional shares of football players backed by player performance. The protocol uses Gold, pegged to USDC, rather than a generic binary sports-event outcome prediction market model.

### Architecture

The protocol consists of a single product family with two proxy contracts sharing the same FDFPairV3 implementation, indicating a standardized market structure. No additional infrastructure contracts are present in the inventory.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 11
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

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DevelopmentPlayersV2 | unknown | base | 2 deployments: base [`0xc21c2d...541965`](./contracts/base-8453/0xc21c2d586f1db92eedb67a2fc348f21ed7541965/); base `0xc98bf3...6dacf9` | ⚠️ Unaudited |
| FDFPairV3 | unknown | base | 4 deployments: base [`0x0a1b8a...f5599f`](./contracts/base-8453/0x0a1b8a8dcd25ce607ebd1ccabb67c37621f5599f/); base `0x3433e7...f57a72`; base `0x4fdce0...80585e`; base `0x9da1bb...446617` | ⚠️ Unaudited |
| FeeManagerV3 | governance | base | [`0xbac4a9...36305d`](./contracts/base-8453/0xbac4a9428ea707c51f171ed9890c3c2fa436305d/) | ⚠️ Unaudited |
| PackSaleReveal | unknown | base | [`0x17345c...5b6354`](./contracts/base-8453/0x17345c2e8e9a81c66e1fb76a0951b18aa95b6354/) | ⚠️ Unaudited |
| PlayerPackV3 | unknown | base | 2 deployments: base [`0xb0a100...072b32`](./contracts/base-8453/0xb0a1004b9a14176783c31b4c56e4254f3d072b32/); base `0xc2df94...2d3e8d` | ⚠️ Unaudited |
| PlayerV3 | unknown | base | [`0xcc647f...043208`](./contracts/base-8453/0xcc647f306482f13ff0a20c99aec29baddd043208/) | ⚠️ Unaudited |

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
| base | [`0x0a1b8a...f5599f`](./contracts/base-8453/0x0a1b8a8dcd25ce607ebd1ccabb67c37621f5599f/) | FDFPairV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb0a100...072b32`](./contracts/base-8453/0xb0a1004b9a14176783c31b4c56e4254f3d072b32/) | PlayerPackV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcc647f...043208`](./contracts/base-8453/0xcc647f306482f13ff0a20c99aec29baddd043208/) | PlayerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
