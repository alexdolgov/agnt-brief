# Agentic Audit Brief: Flex

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 4 (1 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Flex (`flex`)
- Website: [https://flexmeow.com/](https://flexmeow.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- Coverage basis: 1/3 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,626,576.49
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Flex. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across ethereum. Structural roles: 2 unclassified, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: unclassified (2), supporting (1)
- Contract kinds: unclassified (3)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4e8341...638290`, chain 1)
- UnnamedContract (`0x687b82...ef3b67`, chain 1)
- Factory (`0xe2c4a5...34753d`, chain 1)
- Leverage Zapper (`0xbf3e99...6137e0`, chain 1)
- Registry (`0x911744...7c77c8`, chain 1)

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/3 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/3
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 33.3% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-386063 | `0xe2c4a5...34753d` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Leverage Zapper | adapter | project_anchor | own_supporting | 0 | ethereum | unit-386061 | `0xbf3e99...6137e0` | ⚠️ Unaudited |
| Registry | registry | project_anchor | own_supporting | 0 | ethereum | unit-386060 | `0x911744...7c77c8` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386056 | `0x4e8341...638290` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386059 | `0x687b82...ef3b67` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [FLEX-Audit-28-February-2026.md](https://github.com/flexmeow/flex-contracts/blob/master/audits/FLEX-Audit-28-February-2026.md) | unknown | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Flex-May-07-2026-Dedaub.pdf](https://github.com/flexmeow/flex-contracts/blob/master/audits/Flex-May-07-2026-Dedaub.pdf) | Dedaub | Audit | 2026-05 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |
| [flex-audit-27-april.md](https://github.com/flexmeow/flex-contracts/blob/master/audits/flex-audit-27-april.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [2026-03-Flex-report.pdf](https://github.com/flexmeow/flex-contracts/blob/master/audits/2026-03-Flex-report.pdf) | Unknown | Audit | 2026-03 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 10 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [9630] FLEX-Audit-28-February-2026.md — no match: Audit report title includes date '28 February 2026'. Scope section lists repo and hash but no explicit contract list; contracts are identified from findings code references.
- [9631] Flex-May-07-2026-Dedaub.pdf — no match: No reason recorded
- [9632] flex-audit-27-april.md — no match: No reason recorded
- [14470] 2026-03-Flex-report.pdf — matched: Scope section explicitly lists 11 smart contracts with file paths. Audit completed date is 2026-03-31.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| FLEX-Audit-28-February-2026.md | trove_manager | unmatched — not counted | — | listed in scope and findings | no |
| FLEX-Audit-28-February-2026.md | auction | unmatched — not counted | — | listed in scope and findings | no |
| Flex-May-07-2026-Dedaub.pdf | Lender.sol | unmatched — not counted | — | — | no |
| Flex-May-07-2026-Dedaub.pdf | LenderFactory.sol | unmatched — not counted | — | — | no |
| Flex-May-07-2026-Dedaub.pdf | StrategyAprOracle.sol | unmatched — not counted | — | — | no |
| Flex-May-07-2026-Dedaub.pdf | auction.vy | unmatched — not counted | — | — | no |
| Flex-May-07-2026-Dedaub.pdf | dutch_desk.vy | unmatched — not counted | — | — | no |
| Flex-May-07-2026-Dedaub.pdf | factory.vy | unmatched — not counted | — | — | no |
| Flex-May-07-2026-Dedaub.pdf | registry.vy | unmatched — not counted | — | — | no |
| Flex-May-07-2026-Dedaub.pdf | sorted_troves.vy | unmatched — not counted | — | — | no |
| Flex-May-07-2026-Dedaub.pdf | trove_manager.vy | unmatched — not counted | — | — | no |
| Flex-May-07-2026-Dedaub.pdf | yvcrvusd2_to_usdc_oracle.vy | unmatched — not counted | — | — | no |
| Flex-May-07-2026-Dedaub.pdf | yvusd_to_usdc_oracle.vy | unmatched — not counted | — | — | no |
| Flex-May-07-2026-Dedaub.pdf | yvweth2_to_usdc_oracle.vy | unmatched — not counted | — | — | no |
| flex-audit-27-april.md | Auction | unmatched — not counted | — | — | no |
| flex-audit-27-april.md | DutchDesk | unmatched — not counted | — | — | no |
| flex-audit-27-april.md | Keeper | unmatched — not counted | — | — | no |
| flex-audit-27-april.md | Lender | unmatched — not counted | — | — | no |
| flex-audit-27-april.md | LenderFactory | unmatched — not counted | — | — | no |
| flex-audit-27-april.md | TokenizedStrategy | unmatched — not counted | — | — | no |
| flex-audit-27-april.md | TroveManager | unmatched — not counted | — | — | no |
| 2026-03-Flex-report.pdf | auction | unmatched — not counted | — | listed in scope | no |
| 2026-03-Flex-report.pdf | dutch_desk | unmatched — not counted | — | listed in scope | no |
| 2026-03-Flex-report.pdf | factory | own contract | Factory (selected) `0xe2c4a5...34753d` — deployed 2026-05-14 20:22:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-03-Flex-report.pdf | Lender | unmatched — not counted | — | listed in scope | no |
| 2026-03-Flex-report.pdf | LenderFactory | unmatched — not counted | — | listed in scope | no |
| 2026-03-Flex-report.pdf | yvusd_to_usdc_oracle | unmatched — not counted | — | listed in scope | no |
| 2026-03-Flex-report.pdf | daddy | unmatched — not counted | — | listed in scope | no |
| 2026-03-Flex-report.pdf | leverage_zapper | unmatched — not counted | — | listed in scope | no |
| 2026-03-Flex-report.pdf | registry | ambiguous — not counted | Factory (alternative) `0xe2c4a5...34753d` — deployed 2026-05-14 20:22:47+03 — liveness: live (current_address_book_code)<br>Registry (alternative) `0x911744...7c77c8` — deployed 2026-05-14 20:22:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-03-Flex-report.pdf | sorted_troves | unmatched — not counted | — | listed in scope | no |
| 2026-03-Flex-report.pdf | trove_manager | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xbf3e99...6137e0` | Leverage Zapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x911744...7c77c8` | Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 30 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=1

Zero-match audit list:

- [9630] FLEX-Audit-28-February-2026.md
- [9631] Flex-May-07-2026-Dedaub.pdf
- [9632] flex-audit-27-april.md

Fork inheritance lineage and inherited audits are included when available.
