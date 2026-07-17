# Agentic Audit Brief: Maya Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Maya Protocol (`maya-protocol`)
- Website: [https://www.mayaprotocol.com](https://www.mayaprotocol.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $9,780,102.24
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Maya Protocol in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xe3985e6b61b814f7cdb188766562ba71b446b46d`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 2 unique; 1 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
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

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246196 | `0xe3985e6b61b814f7cdb188766562ba71b446b46d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Cosmos_Security_Final.pdf](https://maya-cdn.s3.amazonaws.com/Halborn/Cosmos_Security_Final.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Liquidity_Auction_Final.pdf](https://maya-cdn.s3.amazonaws.com/Halborn/Liquidity_Auction_Final.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Liquidity_Auction_Tiers_Final.pdf](https://maya-cdn.s3.amazonaws.com/Halborn/Liquidity_Auction_Tiers_Final.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [ETH_Router_Draft_3.pdf](https://maya-cdn.s3.amazonaws.com/Halborn/ETH_Router_Draft_3.pdf) | Halborn | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Dynamic_Inflation_Final.pdf](https://maya-cdn.s3.amazonaws.com/Halborn/Dynamic_Inflation_Final.pdf) | Halborn | Audit | 2022-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [TC_Bifrost_Final.pdf](https://maya-cdn.s3.amazonaws.com/Halborn/TC_Bifrost_Final.pdf) | Halborn | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Dash_Bifrost_Final.pdf](https://maya-cdn.s3.amazonaws.com/Halborn/Dash_Bifrost_Final.pdf) | Halborn | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13477] Cosmos_Security_Final.pdf — no match: The audit scope is a Cosmos SDK project (thornode) with no specific smart contract names listed. The scope section only references a repository URL and commit hash, not individual contracts or modules.
- [13478] Liquidity_Auction_Final.pdf — no match: Scope section lists specific files and functions. No Solidity contracts; this is a Cosmos SDK Go project. Extracted file names as contract names.
- [13479] Liquidity_Auction_Tiers_Final.pdf — no match: The audit scope is a Cosmos SDK module (thornode) with no Solidity contracts. The report mentions files like helpers.go, msg_add_liquidity.go, memo_add.go, but these are Go source files, not smart contracts. No contract names were extracted.
- [13480] ETH_Router_Draft_3.pdf — no match: Scope section lists the Maya ETH Router repository with commit hash. Contracts mentioned in findings are part of the codebase. Audit date is the end date of engagement: December 13th, 2022.
- [13481] Dynamic_Inflation_Final.pdf — no match: The audit scope is a Cosmos SDK module (Dynamic Inflation) within the Maya Protocol thornode repository. No smart contracts in the traditional sense; only Go source files. No contract names extracted.
- [13482] TC_Bifrost_Final.pdf — no match: The audit scope is a repository (thornode) and branch (MAYA-19), not individual smart contracts. No contract names were explicitly listed in scope.
- [13483] Dash_Bifrost_Final.pdf — no match: The audit scope is a Go repository (thornode) with Dash chain client code, not smart contracts. No Solidity or smart contract names found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Liquidity_Auction_Final.pdf | handler_donate.go | unmatched — not counted | — | listed in scope | no |
| Liquidity_Auction_Final.pdf | helpers.go | unmatched — not counted | — | listed in scope | no |
| Liquidity_Auction_Final.pdf | handler_deposit.go | unmatched — not counted | — | mentioned in findings | no |
| Liquidity_Auction_Final.pdf | handler_unbond.go | unmatched — not counted | — | mentioned in findings | no |
| Liquidity_Auction_Final.pdf | handler_donate_test.go | unmatched — not counted | — | mentioned in findings | no |
| ETH_Router_Draft_3.pdf | THORChain_Router | unmatched — not counted | — | listed in scope and findings | no |
| ETH_Router_Draft_3.pdf | THORChain_Aggregator | unmatched — not counted | — | listed in findings | no |
| ETH_Router_Draft_3.pdf | SushiRouterSmol | unmatched — not counted | — | listed in findings | no |
| ETH_Router_Draft_3.pdf | eth_rune | unmatched — not counted | — | listed in findings | no |
| ETH_Router_Draft_3.pdf | EvilToken | unmatched — not counted | — | listed in findings | no |
| ETH_Router_Draft_3.pdf | USDT | unmatched — not counted | — | listed in findings | no |
| ETH_Router_Draft_3.pdf | Token | unmatched — not counted | — | listed in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=5
- Match method counts: n/a

Zero-match audit list:

- [13477] Cosmos_Security_Final.pdf
- [13478] Liquidity_Auction_Final.pdf
- [13479] Liquidity_Auction_Tiers_Final.pdf
- [13480] ETH_Router_Draft_3.pdf
- [13481] Dynamic_Inflation_Final.pdf
- [13482] TC_Bifrost_Final.pdf
- [13483] Dash_Bifrost_Final.pdf

Fork inheritance lineage and inherited audits are included when available.
