# Agentic Audit Brief: Coinswap Space

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Coinswap Space (`coinswap-space`)
- Website: [https://coinswap.space/](https://coinswap.space/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 11 unique implementations (11 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $232,443.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Coinswap Space in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 11 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CoinswapFaaS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129841 | `0x496a02...5203c5` | ⚠️ Unaudited |
| CoinswapSaaS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129848 | `0xfdfe9a...3f8133` | ⚠️ Unaudited |
| CoinswapTestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129844 | `0xa7ba3a...bbcea1` | ⚠️ Unaudited |
| CommunityReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129836 | `0x29a888...0db9de` | ⚠️ Unaudited |
| CommunityRewardBnb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129843 | `0x5ca94e...ca6cb1` | ⚠️ Unaudited |
| CssReferral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129829 | `0x0207f9...8ee8cb` | ⚠️ Unaudited |
| CssToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129838 | `0x3bc579...23850d` | ⚠️ Unaudited |
| MasterCSS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129834 | `0x140767...596aff` | ⚠️ Unaudited |
| SpacePad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129833 | `0x09b543...f661f0` | ⚠️ Unaudited |
| SpacePadFriends | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129830 | `0x02db3a...2d7fa2` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-129846 | `0xb83e4a...390889` | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/coinswap) | CertiK | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19654] DL audit link — no match: Extracted from CertiK Skynet page for CoinSwap Space. Audit date inferred from 'Last Audit was delivered on 7/10/2021'. Contract names are from the audit PDF listing: Coinswap Swap-Periphery, Coinswap Core, CoinSwap Farm.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | Coinswap Swap-Periphery | unmatched — not counted | — | Listed under Code Audit History as a PDF | no |
| DL audit link | Coinswap Core | unmatched — not counted | — | Listed under Code Audit History as a PDF | no |
| DL audit link | CoinSwap Farm | unmatched — not counted | — | Listed under Code Audit History as a PDF | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [19654] DL audit link

Fork inheritance lineage and inherited audits are included when available.
