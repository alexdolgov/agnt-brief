# Agentic Audit Brief: Sport.fun

## Project Overview

- Project: Sport.fun (`sport.fun`)
- Website: [https://pro.sport.fun](https://pro.sport.fun)
- Lifecycle: active (Tier 0, 52.5% below peak)
- Generated: 2026-06-17T07:00:52.573Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $3,539,171.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Sport.fun is a Base fantasy soccer protocol where users trade fractional shares of football players backed by player performance. The protocol uses Gold, pegged to USDC, rather than a generic binary sports-event outcome prediction market model.

### Architecture

The protocol consists of a single product family with two proxy contracts sharing the same FDFPairV3 implementation, indicating a standardized market structure. No additional infrastructure contracts are present in the inventory.

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 5 (0 live, 5 unknown).
- Excluded by liveness: 0 inactive, 6 singleton, 0 uninitialized.
- Deployment units: 0/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
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

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DevelopmentPlayersV2 | unknown | base | unit-31951 | [`0xc21c2d...541965`](./contracts/base-8453/0xc21c2d586f1db92eedb67a2fc348f21ed7541965/) | ⚠️ Unaudited |
| DevelopmentPlayersV2 | unknown | base | unit-31953 | [`0xc98bf3...6dacf9`](./contracts/base-8453/0xc98bf3fc49a8a7ad162098ad0bb62268d46dacf9/) | ⚠️ Unaudited |
| FeeManagerV3 | governance | base | unit-31950 | [`0xbac4a9...36305d`](./contracts/base-8453/0xbac4a9428ea707c51f171ed9890c3c2fa436305d/) | ⚠️ Unaudited |
| PackSaleReveal | unknown | base | unit-31947 | [`0x17345c...5b6354`](./contracts/base-8453/0x17345c2e8e9a81c66e1fb76a0951b18aa95b6354/) | ⚠️ Unaudited |
| PlayerV3 | unknown | base | n/a | [`0xcc647f...043208`](./contracts/base-8453/0xcc647f306482f13ff0a20c99aec29baddd043208/) | ⚠️ Unaudited |

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
| base | [`0xcc647f...043208`](./contracts/base-8453/0xcc647f306482f13ff0a20c99aec29baddd043208/) | PlayerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
