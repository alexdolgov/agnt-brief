# Agentic Audit Brief: Saturn

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 4 audit(s)
- Eligible audit results: 4 (4 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Saturn (`saturn`)
- Website: [https://app.saturn.credit/](https://app.saturn.credit/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 11 unique implementations (11 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $187,106,216.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Saturn. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across bsc, ethereum. Structural roles: 2 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: supporting (2)
- Contract kinds: abstract (1), contract (1)
- Detected standards: erc1967proxy (2)
- Frameworks: openzeppelin-upgradeable (2), openzeppelin (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4bc9fe...923d2e`, chain 1)
- UnnamedContract (`0x5f7ecd...a871bf`, chain 1)
- UnnamedContract (`0x6206ca...529a7a`, chain 1)
- UnnamedContract (`0xb68071...6f6278`, chain 1)
- UnnamedContract (`0xf4d0cf...6896d7`, chain 1)
- UnnamedContract (`0xf4d207...218d23`, chain 1)
- UnnamedContract (`0xf3396a...4e0e81`, chain 56)
- UnnamedContract (`0xf80ab3...d70aa9`, chain 56)
- ERC1967Proxy (`0xd16633...bd2df7`, chain 1)
- USDat (`0x23238f...5aaa71`, chain 1)

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Deployed-live implementations: 10 of 11 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 50.0% (Certora)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Certora | Tier 1 | 1 | 50.0% | 2026-04 |
| Three Sigma | Tier 2 | 1 | 50.0% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| USDat | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392049 | `0x23238f...5aaa71` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392050 | `0xd16633...bd2df7` | ⚠️ Unaudited |
| MToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x866a2b...36be1b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392039 | `0x4bc9fe...923d2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392040 | `0x5f7ecd...a871bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392042 | `0x6206ca...529a7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392044 | `0xb68071...6f6278` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392045 | `0xf4d0cf...6896d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392046 | `0xf4d207...218d23` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392047 | `0xf3396a...4e0e81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392048 | `0xf80ab3...d70aa9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/aoxN2WzhSM74tsJUct0C/uploads/M1TsQVTqUghMuZSes4wu/Certora - Formal Verification.pdf](https://3131394583-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaoxN2WzhSM74tsJUct0C%2Fuploads%2FM1TsQVTqUghMuZSes4wu%2FCertora%20-%20Formal%20Verification.pdf) | Certora | Audit | 2026-04 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [spaces/aoxN2WzhSM74tsJUct0C/uploads/jP4Ej0FXvClHiADGwKLd/Certora - Audit #3.pdf](https://3131394583-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaoxN2WzhSM74tsJUct0C%2Fuploads%2FjP4Ej0FXvClHiADGwKLd%2FCertora%20-%20Audit%20%233.pdf) | Certora | Audit | 2026-02 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [spaces/aoxN2WzhSM74tsJUct0C/uploads/KNrnqGyTv1VPM2rbBIp0/Certora - Audit #2.pdf](https://3131394583-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaoxN2WzhSM74tsJUct0C%2Fuploads%2FKNrnqGyTv1VPM2rbBIp0%2FCertora%20-%20Audit%20%232.pdf) | Certora | Audit | 2026-01 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 5 | high |
| [spaces/aoxN2WzhSM74tsJUct0C/uploads/PKsYColQZJy0e2AlTX7K/Three Sigma - Audit #1.pdf](https://3131394583-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaoxN2WzhSM74tsJUct0C%2Fuploads%2FPKsYColQZJy0e2AlTX7K%2FThree%20Sigma%20-%20Audit%20%231.pdf) | Three Sigma | Audit | 2026-01 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21181] spaces/aoxN2WzhSM74tsJUct0C/uploads/M1TsQVTqUghMuZSes4wu/Certora - Formal Verification.pdf — matched: Extracted 4 contracts from scope section and file paths. Audit date from 'February 23rd, 2026 to April 9th, 2026' using end date.
- [21182] spaces/aoxN2WzhSM74tsJUct0C/uploads/jP4Ej0FXvClHiADGwKLd/Certora - Audit #3.pdf — matched: Extracted from scope section and findings. Audit date from project timeline: February 23rd to February 27th, 2026.
- [21183] spaces/aoxN2WzhSM74tsJUct0C/uploads/KNrnqGyTv1VPM2rbBIp0/Certora - Audit #2.pdf — matched: Scope includes all files in saturn-organization/saturn-yield-dollar/src/* and saturn-organization/saturn-dollar/src/*. Contracts explicitly mentioned: USDat, sUSDat, StakedUSDat, WithdrawalQueueERC721, TokenizedSTRC, IWithdrawalQueueERC721.
- [21184] spaces/aoxN2WzhSM74tsJUct0C/uploads/PKsYColQZJy0e2AlTX7K/Three Sigma - Audit #1.pdf — matched: Scope table lists 4 files: USDat.sol, StakedUSDat.sol, WithdrawalQueue.sol, TokenizedSTRC.sol. Audit dates: 30/12/2025 to 31/12/2025 and 9/01/2026 to 12/01/2026. End date used.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/aoxN2WzhSM74tsJUct0C/uploads/M1TsQVTqUghMuZSes4wu/Certora - Formal Verification.pdf | USDat | own proxy deployment | USDat (proxy) (selected) `0x23238f...5aaa71` — deployed 2026-03-10 23:24:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/M1TsQVTqUghMuZSes4wu/Certora - Formal Verification.pdf | StakedUSDat | unmatched — not counted | — | listed in scope and detailed findings | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/M1TsQVTqUghMuZSes4wu/Certora - Formal Verification.pdf | WithdrawalQueueERC721 | unmatched — not counted | — | listed in scope and detailed findings | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/M1TsQVTqUghMuZSes4wu/Certora - Formal Verification.pdf | StrcPriceOracle | unmatched — not counted | — | mentioned in scope and threat model | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/jP4Ej0FXvClHiADGwKLd/Certora - Audit #3.pdf | USDat | own proxy deployment | USDat (proxy) (selected) `0x23238f...5aaa71` — deployed 2026-03-10 23:24:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/jP4Ej0FXvClHiADGwKLd/Certora - Audit #3.pdf | StakedUSDat | unmatched — not counted | — | listed in scope and findings | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/jP4Ej0FXvClHiADGwKLd/Certora - Audit #3.pdf | WithdrawalQueueERC721 | unmatched — not counted | — | listed in scope and findings | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/jP4Ej0FXvClHiADGwKLd/Certora - Audit #3.pdf | StrcPriceOracle | unmatched — not counted | — | mentioned in scope description | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/KNrnqGyTv1VPM2rbBIp0/Certora - Audit #2.pdf | USDat | own proxy deployment | USDat (proxy) (selected) `0x23238f...5aaa71` — deployed 2026-03-10 23:24:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/KNrnqGyTv1VPM2rbBIp0/Certora - Audit #2.pdf | sUSDat | unmatched — not counted | — | mentioned as yield-bearing vault token in protocol overview | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/KNrnqGyTv1VPM2rbBIp0/Certora - Audit #2.pdf | StakedUSDat | unmatched — not counted | — | listed in scope via src/* pattern and mentioned in findings | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/KNrnqGyTv1VPM2rbBIp0/Certora - Audit #2.pdf | WithdrawalQueueERC721 | unmatched — not counted | — | listed in scope via src/* pattern and mentioned in findings | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/KNrnqGyTv1VPM2rbBIp0/Certora - Audit #2.pdf | TokenizedSTRC | unmatched — not counted | — | mentioned in protocol overview and findings (I-01) | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/KNrnqGyTv1VPM2rbBIp0/Certora - Audit #2.pdf | IWithdrawalQueueERC721 | unmatched — not counted | — | mentioned in finding I-03 | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/PKsYColQZJy0e2AlTX7K/Three Sigma - Audit #1.pdf | USDat | own proxy deployment | USDat (proxy) (selected) `0x23238f...5aaa71` — deployed 2026-03-10 23:24:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/PKsYColQZJy0e2AlTX7K/Three Sigma - Audit #1.pdf | StakedUSDat | unmatched — not counted | — | listed in scope table | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/PKsYColQZJy0e2AlTX7K/Three Sigma - Audit #1.pdf | WithdrawalQueue | unmatched — not counted | — | listed in scope table | no |
| spaces/aoxN2WzhSM74tsJUct0C/uploads/PKsYColQZJy0e2AlTX7K/Three Sigma - Audit #1.pdf | TokenizedSTRC | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 14 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: unique_name=4

Fork inheritance lineage and inherited audits are included when available.
