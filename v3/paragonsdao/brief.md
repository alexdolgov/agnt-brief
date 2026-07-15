# Agentic Audit Brief: ParagonsDAO

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 8 (2 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: ParagonsDAO (`paragonsdao`)
- Website: [https://app.paragonsdao.com](https://app.paragonsdao.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 1 unique implementations (1 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,034,465.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for ParagonsDAO. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across base. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: accesscontrol (1), erc165 (1), erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- StakedPDT (`0x51e025...29aa3e`, chain 8453)

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
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hashlock | Tier 2 | 1 | 100.0% | 2024-07 |
| Zellic | Tier 2 | 1 | 100.0% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| StakedPDT | token | project_anchor | own_supporting | 0 | base | unit-390689 | `0x51e025...29aa3e` | ✅ Audited |

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
| [PDT Staking V2 - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/PDT%20Staking%20V2%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-07 | stale | Direct | n/a | matched | 1 | 0 | 0 | 2 | n/a |
| [ParagonsDAO-Smart-Contract-Audit-Report-Final-Report-V1.pdf](https://hashlock.com/wp-content/uploads/2024/08/ParagonsDAO-Smart-Contract-Audit-Report-Final-Report-V1.pdf) | Hashlock | Audit | 2024-07 | stale | Direct | n/a | matched | 1 | 0 | 0 | 2 | n/a |
| [drive.google.com/file/d/1-SgDmCutMhxyTuZDwOOLPn4b8Fb4YyQ5/view](https://drive.google.com/file/d/1-SgDmCutMhxyTuZDwOOLPn4b8Fb4YyQ5/view) | Hashlock | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [drive.google.com/file/d/1tdr8vD0C43lPPbQJ6kQ92mjQdnLH9Ete/view](https://drive.google.com/file/d/1tdr8vD0C43lPPbQJ6kQ92mjQdnLH9Ete/view?usp=drive_link) | Code4rena | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1FZUl1eqk1dgyMyHfmzYBY90-C6MkRh--/view](https://drive.google.com/file/d/1FZUl1eqk1dgyMyHfmzYBY90-C6MkRh--/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.docdroid.net/WJT7qMD/6-month-report-jan-jun-2023-pdf](https://www.docdroid.net/WJT7qMD/6-month-report-jan-jun-2023-pdf) | unknown | Audit | 2023-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [index.html](https://certificate.quantstamp.com/full/paragons-dao-sleeves/faf66f29-b639-4afe-96c2-0bf88597ea66/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [hashlock.com/audits/paragonsdao](https://hashlock.com/audits/paragonsdao) | unknown | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2314] PDT Staking V2 - Zellic Audit Report.pdf — matched: No reason recorded
- [2316] ParagonsDAO-Smart-Contract-Audit-Report-Final-Report-V1.pdf — matched: No reason recorded
- [2317] drive.google.com/file/d/1-SgDmCutMhxyTuZDwOOLPn4b8Fb4YyQ5/view — no match: Two contracts in scope: PDTOFT.sol and PDTOFTAdapter.sol. Audit date is May 2024, mapped to last day of month.
- [2318] drive.google.com/file/d/1tdr8vD0C43lPPbQJ6kQ92mjQdnLH9Ete/view — no match: The document is a semi-annual DAO report, not a smart contract audit report. No contracts in scope, no audit date, and no findings sections are present.
- [2319] drive.google.com/file/d/1FZUl1eqk1dgyMyHfmzYBY90-C6MkRh--/view — no match: The document is a DAO report, not a smart contract audit report. No contracts in scope are mentioned.
- [2320] www.docdroid.net/WJT7qMD/6-month-report-jan-jun-2023-pdf — no match: The document title suggests a 6-month report from Jan to Jun 2023, but no contract names or scope section were found in the provided text.
- [2321] index.html — no match: The provided text is incomplete and does not contain any contract names or audit details.
- [14437] hashlock.com/audits/paragonsdao — no match: The provided text is a webpage for Hashlock's audit service listing, not the actual audit report. It mentions 'ParagonsDAO Smart Contract Audit Report' and 'Last Audit July 2024', but no specific contract names or scope details are present.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PDT Staking V2 - Zellic Audit Report.pdf | IForkedPDTStakingV2 | unmatched — not counted | — | — | no |
| PDT Staking V2 - Zellic Audit Report.pdf | IStakedPDT | unmatched — not counted | — | — | no |
| PDT Staking V2 - Zellic Audit Report.pdf | StakedPDT | own contract | StakedPDT (selected) `0x51e025...29aa3e` — deployed 2024-08-22 05:12:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ParagonsDAO-Smart-Contract-Audit-Report-Final-Report-V1.pdf | IForkedPDTStakingV2.sol | unmatched — not counted | — | — | no |
| ParagonsDAO-Smart-Contract-Audit-Report-Final-Report-V1.pdf | IStakedPDT.sol | unmatched — not counted | — | — | no |
| ParagonsDAO-Smart-Contract-Audit-Report-Final-Report-V1.pdf | StakedPDT.sol | own contract | StakedPDT (selected) `0x51e025...29aa3e` — deployed 2024-08-22 05:12:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1-SgDmCutMhxyTuZDwOOLPn4b8Fb4YyQ5/view | PDTOFT | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1-SgDmCutMhxyTuZDwOOLPn4b8Fb4YyQ5/view | PDTOFTAdapter | unmatched — not counted | — | listed in scope table | no |

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
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=5
- Match method counts: unique_name=2

Zero-match audit list:

- [2317] drive.google.com/file/d/1-SgDmCutMhxyTuZDwOOLPn4b8Fb4YyQ5/view
- [2318] drive.google.com/file/d/1tdr8vD0C43lPPbQJ6kQ92mjQdnLH9Ete/view
- [2319] drive.google.com/file/d/1FZUl1eqk1dgyMyHfmzYBY90-C6MkRh--/view
- [2320] www.docdroid.net/WJT7qMD/6-month-report-jan-jun-2023-pdf
- [2321] index.html
- [14437] hashlock.com/audits/paragonsdao

Fork inheritance lineage and inherited audits are included when available.
