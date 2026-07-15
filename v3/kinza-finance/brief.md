# Agentic Audit Brief: Kinza Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Kinza Finance (`kinza-finance`)
- Website: [https://app.kinza.finance](https://app.kinza.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, mantle
- Contract surface: 12 unique implementations (12 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $6,547,336.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Kinza Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across bsc, mantle. Structural roles: 2 supporting, 1 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: supporting (2), unclassified (1)
- Contract kinds: contract (3)
- Detected standards: none
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0d4af5...8381b8`, chain 5000)
- UnnamedContract (`0x18cc2c...95ec38`, chain 5000)
- UnnamedContract (`0x22e585...9589c9`, chain 5000)
- UnnamedContract (`0x28a3f4...3f873c`, chain 5000)
- UnnamedContract (`0x5757b1...78ed51`, chain 5000)
- UnnamedContract (`0xd62434...7a9438`, chain 5000)
- GnosisSafeProxy (`0xb00083...12ee28`, chain 5000)
- UUPSProxy (`0x9356f6...b48383`, chain 56)

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (2 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 8 of 12 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafeProxy | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-244220 | `0x3cc8dc...561d68` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | mantle | unit-244223 | `0xb00083...12ee28` | ⚠️ Unaudited |
| kBTC | unknown | project_anchor | own_supporting | 1 | bsc | unit-244226 | `0x9356f6...b48383` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244215 | `0x0d4af5...8381b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244216 | `0x18cc2c...95ec38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244217 | `0x22e585...9589c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244218 | `0x28a3f4...3f873c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-244219 | `0x34edc3...972891` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-244221 | `0x51ff36...373d64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244222 | `0x5757b1...78ed51` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-244224 | `0xbf2602...7e51b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244225 | `0xd62434...7a9438` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513](https://omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513) | Omniscia | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Salus-Kinza-1.0.pdf](https://github.com/Kinza-Finance/KZA-1.0/blob/main/audits/Salus-Kinza-1.0.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2142] omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513 — no match: Three contracts explicitly listed in scope table.
- [10238] Salus-Kinza-1.0.pdf — no match: All contracts listed in Appendix 1 - Files in Scope. Audit date from 'Date June 9 2023' in Project Dashboard.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513 | ProtectedERC20 | unmatched — not counted | — | listed in scope | no |
| omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513 | ProtectedERC20Gateway | unmatched — not counted | — | listed in scope | no |
| omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513 | ProtectedNativeTokenGateway | unmatched — not counted | — | listed in scope | no |
| Salus-Kinza-1.0.pdf | RewardsVault | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | ReserveFeeDistributor | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | LockTransferStrategy | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | TransferStrategyBase | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | VoteLogic | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | KZADistributor | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | VestingEscrow | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | Voter | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | BribeAssetRegistry | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | Minter | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | KZA | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | XKZA | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | AggregateBribe | unmatched — not counted | — | listed in Appendix 1 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x9356f6...b48383` | kBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 16 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [2142] omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513
- [10238] Salus-Kinza-1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
