# Agentic Audit Brief: Verse

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 5 (1 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Verse (`verse`)
- Website: [https://verse.bitcoin.com](https://verse.bitcoin.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $424,910.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Verse. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- VerseToken (`0x249ca8...350a18`, chain 1)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 1 of 1 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 1 | 100.0% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| VerseToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395721 | `0x249ca8...350a18` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [Bitcoin.com_final-audit-report.pdf](https://github.com/0xGuard-com/audit-reports/blob/master/bitcoin.com/Bitcoin.com_final-audit-report.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [skynet.certik.com/projects/bitcoin-com](https://skynet.certik.com/projects/bitcoin-com) | CertiK | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [verse-security-audit.pdf](https://www.getverse.com/verse-security-audit.pdf) | Quantstamp | Audit | 2022-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [single-token-lp-audit.pdf](https://verse.bitcoin.com/single-token-lp-audit.pdf) | Chainsulting | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [dynamic-rewards-farming-audit.pdf](https://verse.bitcoin.com/dynamic-rewards-farming-audit.pdf) | Softstack | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14107] Bitcoin.com_final-audit-report.pdf — no match: Scope table lists 4 contracts: SwapsFactory, SwapsPair, SwapsRouter, SwapsERC20. Audit date range 2022-02-11 to 2022-02-14, end date used.
- [14108] skynet.certik.com/projects/bitcoin-com — no match: Only SimpleFarm.sol is explicitly listed as an assessed contract. IERC20.sol and SafeERC20.sol are listed under 'Audited Files' but are likely dependencies, not primary scope contracts.
- [14109] verse-security-audit.pdf — matched: Scope explicitly mentions VerseToken and VerseClaimer contracts. Audit date from cover page.
- [14110] single-token-lp-audit.pdf — no match: All contracts listed in 'Source Unites in Scope' table and 'Tested Contract Files' section. Audit date from cover page and version history.
- [14111] dynamic-rewards-farming-audit.pdf — no match: Two contracts in scope: TokenWrapper and DynamicRewardFarm. Audit date from cover page and version history.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Bitcoin.com_final-audit-report.pdf | SwapsFactory | unmatched — not counted | — | listed in scope table | no |
| Bitcoin.com_final-audit-report.pdf | SwapsPair | unmatched — not counted | — | listed in scope table | no |
| Bitcoin.com_final-audit-report.pdf | SwapsRouter | unmatched — not counted | — | listed in scope table | no |
| Bitcoin.com_final-audit-report.pdf | SwapsERC20 | unmatched — not counted | — | listed in scope table | no |
| skynet.certik.com/projects/bitcoin-com | SimpleFarm | unmatched — not counted | — | Listed under 'Assessed Contracts' as SimpleFarm.sol | no |
| verse-security-audit.pdf | VerseToken | own contract | VerseToken (selected) `0x249ca8...350a18` — deployed 2022-12-07 03:09:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| verse-security-audit.pdf | VerseClaimer | unmatched — not counted | — | listed in scope and findings | no |
| single-token-lp-audit.pdf | LiquidityMaker | unmatched — not counted | — | listed in scope and findings | no |
| single-token-lp-audit.pdf | LiquidityHelper | unmatched — not counted | — | listed in scope | no |
| single-token-lp-audit.pdf | ISwapsERC20 | unmatched — not counted | — | listed in scope | no |
| single-token-lp-audit.pdf | ISwapsFactory | unmatched — not counted | — | listed in scope | no |
| single-token-lp-audit.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| single-token-lp-audit.pdf | ISwapsPair | unmatched — not counted | — | listed in scope | no |
| single-token-lp-audit.pdf | IERC20 | unmatched — not counted | — | listed in scope | no |
| single-token-lp-audit.pdf | ISwapsRouter | unmatched — not counted | — | listed in scope | no |
| dynamic-rewards-farming-audit.pdf | TokenWrapper | unmatched — not counted | — | Listed in scope table and tested contract files | no |
| dynamic-rewards-farming-audit.pdf | DynamicRewardFarm | unmatched — not counted | — | Listed in scope table and tested contract files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 16 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: unique_name=1

Zero-match audit list:

- [14107] Bitcoin.com_final-audit-report.pdf
- [14108] skynet.certik.com/projects/bitcoin-com
- [14110] single-token-lp-audit.pdf
- [14111] dynamic-rewards-farming-audit.pdf

Fork inheritance lineage and inherited audits are included when available.
