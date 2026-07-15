# Agentic Audit Brief: Rysk Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Rysk Finance (`rysk-finance`)
- Website: [https://app.rysk.finance/join?code=DEFILLAMA](https://app.rysk.finance/join?code=DEFILLAMA)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: hyperliquid
- Contract surface: 1 unique implementations (1 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $45,773,374.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Rysk Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Indexed contracts: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | unit-163437 | `0x24a44f...c91ab4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [dedaub.com/audits/rysk/rysk-jun-18-2022](https://dedaub.com/audits/rysk/rysk-jun-18-2022) | Dedaub | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20996] dedaub.com/audits/rysk/rysk-jun-18-2022 — no match: Extracted contract names from the audit report's findings and advisory sections. The report covers the Rysk protocol on Arbitrum, including PortfolioValuesFeed, OptionsCompute, LiquidityPool, UniswapV3HedgingReactor, PerpHedgingReactor, PriceFeed, OptionHandler, OptionRegistry, OptionSeries, AccessControl, VolatilityFeed, and Protocol. The audit date is explicitly stated as 18.06.2022.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| dedaub.com/audits/rysk/rysk-jun-18-2022 | PortfolioValuesFeed | unmatched — not counted | — | mentioned in H1, M1, M2, M3 | no |
| dedaub.com/audits/rysk/rysk-jun-18-2022 | OptionsCompute | unmatched — not counted | — | mentioned in H2 | no |
| dedaub.com/audits/rysk/rysk-jun-18-2022 | LiquidityPool | unmatched — not counted | — | mentioned in H1, M3, M4, L1, A2, A3, A4, A12, A13, A14 | no |
| dedaub.com/audits/rysk/rysk-jun-18-2022 | UniswapV3HedgingReactor | unmatched — not counted | — | mentioned in M6, L1 | no |
| dedaub.com/audits/rysk/rysk-jun-18-2022 | PerpHedgingReactor | unmatched — not counted | — | mentioned in L5, A15 | no |
| dedaub.com/audits/rysk/rysk-jun-18-2022 | PriceFeed | unmatched — not counted | — | mentioned in L4, A8 | no |
| dedaub.com/audits/rysk/rysk-jun-18-2022 | OptionHandler | unmatched — not counted | — | mentioned in A5, A14 | no |
| dedaub.com/audits/rysk/rysk-jun-18-2022 | OptionRegistry | unmatched — not counted | — | mentioned in A6, A7 | no |
| dedaub.com/audits/rysk/rysk-jun-18-2022 | OptionSeries | unmatched — not counted | — | mentioned in A7 | no |
| dedaub.com/audits/rysk/rysk-jun-18-2022 | AccessControl | unmatched — not counted | — | mentioned in A10 | no |
| dedaub.com/audits/rysk/rysk-jun-18-2022 | VolatilityFeed | unmatched — not counted | — | mentioned in A11 | no |
| dedaub.com/audits/rysk/rysk-jun-18-2022 | Protocol | unmatched — not counted | — | mentioned in A9 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20996] dedaub.com/audits/rysk/rysk-jun-18-2022

Fork inheritance lineage and inherited audits are included when available.
