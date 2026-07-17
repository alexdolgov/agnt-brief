# Agentic Audit Brief: ShimmerBridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: ShimmerBridge (`shimmerbridge`)
- Website: [https://shimmerbridge.org/](https://shimmerbridge.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, fantom, optimism, polygon
- Contract surface: 21 unique implementations (21 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $197,726.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for ShimmerBridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 20 contracts are derived from known codebases. 20 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`, chain 1)
- UnnamedContract (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- UnnamedContract (`0xdac17f958d2ee523a2206206994597c13d831ec7`, chain 1)
- UnnamedContract (`0x0b2c639c533813f4aa9d7837caf62653d097ff85`, chain 10)
- UnnamedContract (`0x4200000000000000000000000000000000000006`, chain 10)
- UnnamedContract (`0x68f180fcce6836688e9084f035309e29bf0a2095`, chain 10)
- UnnamedContract (`0x94b008aa00579c1307b0ef2c499ad98a8ce58e58`, chain 10)
- UnnamedContract (`0x55d398326f99059ff775485246999027b3197955`, chain 56)
- UnnamedContract (`0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d`, chain 56)
- UnnamedContract (`0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6`, chain 137)
- UnnamedContract (`0x3c499c542cef5e3811e1192ce70d8cc03d5c3359`, chain 137)
- UnnamedContract (`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`, chain 137)
- UnnamedContract (`0xc2132d05d31c914a87c6611c10748aeb04b58e8f`, chain 137)
- UnnamedContract (`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`, chain 8453)
- UnnamedContract (`0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f`, chain 42161)
- UnnamedContract (`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`, chain 42161)
- UnnamedContract (`0xaf88d065e77c8cc2239327c5edb3a432268e5831`, chain 42161)
- UnnamedContract (`0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9`, chain 42161)
- UnnamedContract (`0x9702230a8ea53601f5cd2dc00fdbc13d4df4a8c7`, chain 43114)
- UnnamedContract (`0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 20/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 20 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 20 of 21 unique; 1 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 21
- Raw deployments: 21
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OriginalTokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9c6d5a71fdd306329287a835e9b8edb7f0f17898` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392541 | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392545 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392548 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392552 | `0x0b2c639c533813f4aa9d7837caf62653d097ff85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392553 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392554 | `0x68f180fcce6836688e9084f035309e29bf0a2095` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392555 | `0x94b008aa00579c1307b0ef2c499ad98a8ce58e58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392566 | `0x55d398326f99059ff775485246999027b3197955` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392567 | `0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-392556 | `0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-392557 | `0x3c499c542cef5e3811e1192ce70d8cc03d5c3359` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-392558 | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-392559 | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392569 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392560 | `0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392561 | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392562 | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392563 | `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392564 | `0x9702230a8ea53601f5cd2dc00fdbc13d4df4a8c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392565 | `0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Shimmer Bridge_Zokyo_Jan19_2024.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/zokyo-sec/audit-reports/main/Shimmer/Shimmer%20Bridge_Zokyo_Jan19_2024.pdf) | Zokyo | Audit | 2024-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21446] Shimmer Bridge_Zokyo_Jan19_2024.pdf — no match: The report is a penetration test of the Shimmer Bridge web application, not a smart contract audit. No smart contracts are listed in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [21446] Shimmer Bridge_Zokyo_Jan19_2024.pdf

Fork inheritance lineage and inherited audits are included when available.
