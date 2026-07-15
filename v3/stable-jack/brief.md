# Agentic Audit Brief: Stable Jack

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

- Project: Stable Jack (`stable-jack`)
- Website: [https://www.stablejack.xyz](https://www.stablejack.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche
- Contract surface: 10 unique implementations (13 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,172,460.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Stable Jack. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across avalanche. Structural roles: 5 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: unclassified (5)
- Contract kinds: contract (5)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 5; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 10 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 13
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| TransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-256772 | 2 deployments: avalanche `0x0363a3...d461db`; avalanche `0xadb77d...b41314` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-256770 | 2 deployments: avalanche `0x383627...00243a`; avalanche `0xabe7a9...c47dc1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256765 | `0x698c34...5e715e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-256771 | 2 deployments: avalanche `0xab2bd1...837451`; avalanche `0xdc325a...5f9d58` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256768 | `0xbb640e...41b697` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256763 | `0x013b34...6e3273` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256764 | `0x683d22...462f59` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256766 | `0x86bac6...45aadb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256767 | `0xaec185...66f131` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256769 | `0xcf26a5...30c100` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [aUSD_SC_Final_Audit_Report.pdf](https://github.com/Credshields/audit-reports/blob/master/aUSD_SC_Final_Audit_Report.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2961] aUSD_SC_Final_Audit_Report.pdf — no match: Extracted contract names from scope table and findings. Audit date is the end of the testing window (May 15, 2024).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| aUSD_SC_Final_Audit_Report.pdf | sAVAXGateway | unmatched — not counted | — | Listed in scope table and referenced in findings | no |
| aUSD_SC_Final_Audit_Report.pdf | sAVAXTreasury | unmatched — not counted | — | Referenced in findings (BugID#2) | no |
| aUSD_SC_Final_Audit_Report.pdf | Market | unmatched — not counted | — | Listed in scope table and referenced in findings | no |
| aUSD_SC_Final_Audit_Report.pdf | Treasury | unmatched — not counted | — | Listed in scope table and referenced in findings | no |
| aUSD_SC_Final_Audit_Report.pdf | ChainlinkPriceOracle | unmatched — not counted | — | Referenced in findings (BugID#9, #10) | no |
| aUSD_SC_Final_Audit_Report.pdf | ChainlinkTwapOracleV3 | unmatched — not counted | — | Referenced in findings (BugID#9, #10) | no |
| aUSD_SC_Final_Audit_Report.pdf | JacksAVAXTwapOracle | unmatched — not counted | — | Referenced in findings (BugID#14) | no |
| aUSD_SC_Final_Audit_Report.pdf | RebalancePool | unmatched — not counted | — | Referenced in findings (BugID#12, #13, #17, #22) | no |
| aUSD_SC_Final_Audit_Report.pdf | RebalancePoolSplitter | unmatched — not counted | — | Referenced in findings (BugID#17, #22) | no |
| aUSD_SC_Final_Audit_Report.pdf | RebalancePoolRegistry | unmatched — not counted | — | Referenced in findings (BugID#18, #30) | no |
| aUSD_SC_Final_Audit_Report.pdf | Rebalancer | unmatched — not counted | — | Referenced in findings (BugID#17) | no |
| aUSD_SC_Final_Audit_Report.pdf | PlatformFeeDistributor | unmatched — not counted | — | Referenced in findings (BugID#21) | no |
| aUSD_SC_Final_Audit_Report.pdf | PlatformFeeSpliter | unmatched — not counted | — | Referenced in findings (BugID#17, #22) | no |
| aUSD_SC_Final_Audit_Report.pdf | JackGateway | unmatched — not counted | — | Referenced in findings (BugID#20, #22) | no |
| aUSD_SC_Final_Audit_Report.pdf | ReservePool | unmatched — not counted | — | Referenced in findings (BugID#22) | no |
| aUSD_SC_Final_Audit_Report.pdf | LogExpMath | unmatched — not counted | — | Referenced in findings (BugID#25, #28, #29) | no |
| aUSD_SC_Final_Audit_Report.pdf | StableCoinMath | unmatched — not counted | — | Mentioned in BugID#4 and client comment in BugID#19 | no |
| aUSD_SC_Final_Audit_Report.pdf | LeveragedToken | unmatched — not counted | — | Mentioned in client comment in BugID#19 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 18 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2961] aUSD_SC_Final_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
