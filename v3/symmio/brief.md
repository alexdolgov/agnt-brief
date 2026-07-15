# Agentic Audit Brief: SYMMIO

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 9 (0 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: SYMMIO (`symmio`)
- Website: [https://www.symm.io/](https://www.symm.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: polygon
- Contract surface: 15 unique implementations (15 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,334,364.60
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SYMMIO. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across polygon. Structural roles: 5 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (5)
- Contract kinds: contract (5)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0ee6a1...defd9c`, chain 137)
- UnnamedContract (`0x1dd8fd...f0f553`, chain 137)
- UnnamedContract (`0x32ddd0...d99b4f`, chain 137)
- UnnamedContract (`0x4ae643...9ece6f`, chain 137)
- UnnamedContract (`0x6ca4f5...7d606c`, chain 137)
- UnnamedContract (`0x7a539b...7d1a7c`, chain 137)
- UnnamedContract (`0xa2cfa4...9faa0e`, chain 137)
- UnnamedContract (`0xa88b8b...ff381a`, chain 137)
- UnnamedContract (`0xe5274e...53dede`, chain 137)
- UnnamedContract (`0xe91eee...993208`, chain 137)
- AccountFacet (`0xa90b7e...fa91c8`, chain 137)
- AccountFacet (`0xe53f37...cb63cc`, chain 137)
- ClearingHouseFacet (`0x77e706...d876b6`, chain 137)
- FakeStablecoin (`0x50e88c...e0d5ba`, chain 137)
- TradeFacet (`0x2c6381...5e7903`, chain 137)

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 15/15 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 15 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 15 of 15 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 4 unknown
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
| AccountFacet | unknown | project_anchor | own_supporting | 0 | polygon | unit-393649 | `0xa90b7e...fa91c8` | ⚠️ Unaudited |
| AccountFacet | unknown | project_anchor | own_supporting | 0 | polygon | unit-393651 | `0xe53f37...cb63cc` | ⚠️ Unaudited |
| ClearingHouseFacet | unknown | project_anchor | own_supporting | 0 | polygon | unit-393645 | `0x77e706...d876b6` | ⚠️ Unaudited |
| FakeStablecoin | token | project_anchor | own_supporting | 0 | polygon | unit-393643 | `0x50e88c...e0d5ba` | ⚠️ Unaudited |
| TradeFacet | unknown | project_anchor | own_supporting | 0 | polygon | unit-393640 | `0x2c6381...5e7903` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-393638 | `0x0ee6a1...defd9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-393639 | `0x1dd8fd...f0f553` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-393641 | `0x32ddd0...d99b4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-393642 | `0x4ae643...9ece6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-393644 | `0x6ca4f5...7d606c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-393646 | `0x7a539b...7d1a7c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-393647 | `0xa2cfa4...9faa0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-393648 | `0xa88b8b...ff381a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-393650 | `0xe5274e...53dede` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-393652 | `0xe91eee...993208` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit report: <> (also discovered via alternate URL)](https://github.com/sherlock-audit/2024-09-symmio-v0-8-4-update-contest-judging/blob/main/Audit_Report.pdf) | Sherlock | Contest | 2024-10 | aging | Direct | contract_name|n/a | no match | 0 | 0 | 0 | 28 | high|low |
| [{% embed url="<>" %}](https://audits.sherlock.xyz/contests/577) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [* <>](https://audits.sherlock.xyz/contests/427) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [* <>](https://audits.sherlock.xyz/contests/144) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [{% embed url="<>" %}](https://audits.sherlock.xyz/contests/838) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29899] Audit report: <> — no match: Extracted contract names from findings sections where files are explicitly referenced as part of the audited codebase. The audit date is from the 'Prepared on' field.
- [29900] {% embed url="<>" %} — no match: The provided text is a header/footer snippet from a contest page, not a full audit report. No contract names, file paths, or audit date are identifiable.
- [29901] * <> — no match: The provided text is a header/footer snippet from a contest page, not a full audit report. No contract names or audit date could be extracted.
- [29902] * <> — no match: The provided text is a fragment of a contest page header with no contract names, file paths, or audit date. It only mentions 'SYMM IO Contest' and reward details.
- [29908] {% embed url="<>" %} — no match: The provided text is a header snippet from a contest page, not an audit report. No contract names or audit date could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit report: <> | SettlementFacet | unmatched — not counted | — | mentioned in issue M-2 | no |
| Audit report: <> | LibMuonSettlement | unmatched — not counted | — | mentioned in issue M-1 | no |
| Audit report: <> | LibSettlement | unmatched — not counted | — | mentioned in issue M-2 | no |
| Audit report: <> | ForceActionsFacetImpl | unmatched — not counted | — | mentioned in issue M-3 | no |
| Audit report: <> | PartyBPositionActionsFacetImpl | unmatched — not counted | — | mentioned in issue M-4 | no |
| Audit report: <> | LibLiquidation | unmatched — not counted | — | mentioned in issue M-5 | no |
| Audit report: <> | BridgeFacetImpl | unmatched — not counted | — | listed in scope and findings | no |
| Audit report: <> | AccountFacetImpl | unmatched — not counted | — | listed in scope and findings | no |
| Audit report: <> | DeferredLiquidationFacetImpl | unmatched — not counted | — | listed in scope and findings | no |
| Audit report: <> | LiquidationFacetImpl | unmatched — not counted | — | mentioned in finding H-2 code snippet | no |
| Audit report: <> | AccountFacet | ambiguous — not counted | AccountFacet (alternative) `0xe53f37...cb63cc` — deployed 2025-07-22 15:50:10+03 — liveness: live (current_address_book_code)<br>AccountFacet (alternative) `0xa90b7e...fa91c8` — deployed 2024-10-26 13:26:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit report: <> | FundingRateFacetImpl | unmatched — not counted | — | mentioned in recommendation | no |
| Audit report: <> | LibMuon | unmatched — not counted | — | mentioned in finding H-1 code snippet | no |
| Audit report: <> | LibSolvency | unmatched — not counted | — | mentioned in finding M-1 code snippet | no |
| Audit report: <> | AccountStorage | unmatched — not counted | — | mentioned in finding M-2 code snippet | no |
| Audit report: <> | LibAccount | unmatched — not counted | — | mentioned in finding M-2 code snippet | no |
| Audit report: <> | LibQuote | unmatched — not counted | — | mentioned in finding M-3 code snippet | no |
| Audit report: <> | MultiAccount | unmatched — not counted | — | mentioned in finding M-4 code snippet | no |
| Audit report: <> | PartyBFacetImpl | unmatched — not counted | — | mentioned in finding M-5 code snippet | no |
| Audit report: <> | PartyAFacetImpl | unmatched — not counted | — | mentioned in finding M-5 code snippet | no |
| Audit report: <> | SymmStaking | unmatched — not counted | — | listed in scope | no |
| Audit report: <> | SymmVesting | unmatched — not counted | — | listed in scope | no |
| Audit report: <> | Vesting | unmatched — not counted | — | listed in scope | no |
| Audit report: <> | IMintableERC20 | unmatched — not counted | — | listed in scope | no |
| Audit report: <> | IPermit2 | unmatched — not counted | — | listed in scope | no |
| Audit report: <> | IPool | unmatched — not counted | — | listed in scope | no |
| Audit report: <> | IRouter | unmatched — not counted | — | listed in scope | no |
| Audit report: <> | LibVestingPlan | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0xa90b7e...fa91c8` | AccountFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xe53f37...cb63cc` | AccountFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x77e706...d876b6` | ClearingHouseFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x50e88c...e0d5ba` | FakeStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x2c6381...5e7903` | TradeFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 27 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=5
- Match method counts: n/a

Zero-match audit list:

- [29899] Audit report: <>
- [29900] {% embed url="<>" %}
- [29901] * <>
- [29902] * <>
- [29908] {% embed url="<>" %}

Fork inheritance lineage and inherited audits are included when available.
