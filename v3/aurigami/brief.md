# Agentic Audit Brief: Aurigami

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DEAD - TVL changed 9.4% over 90 days

## Project Overview

- Project: Aurigami (`aurigami`)
- Website: [https://www.aurigami.finance](https://www.aurigami.finance)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: aurora, ethereum
- Contract surface: 27 unique implementations (27 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $772,292.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Aurigami. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across aurora, ethereum. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc20 (1)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 25 contracts are derived from known codebases. 25 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x04ac48...71095e`, chain 1313161554)
- UnnamedContract (`0x054fc0...9098bf`, chain 1313161554)
- UnnamedContract (`0x0bc03b...9d400a`, chain 1313161554)
- UnnamedContract (`0x319594...e94786`, chain 1313161554)
- UnnamedContract (`0x4f0d86...b5917b`, chain 1313161554)
- UnnamedContract (`0x5715c4...c5412b`, chain 1313161554)
- UnnamedContract (`0x5ccad0...78d7cc`, chain 1313161554)
- UnnamedContract (`0x60bf66...86b89f`, chain 1313161554)
- UnnamedContract (`0x6ea6c0...d24dca`, chain 1313161554)
- UnnamedContract (`0x817af6...369aeb`, chain 1313161554)
- UnnamedContract (`0x888868...e433bf`, chain 1313161554)
- UnnamedContract (`0xa200b5...e195f8`, chain 1313161554)
- UnnamedContract (`0xa308a5...e441e6`, chain 1313161554)
- UnnamedContract (`0xa8f1a3...7743a1`, chain 1313161554)
- UnnamedContract (`0xad5a24...9b1c54`, chain 1313161554)
- UnnamedContract (`0xae4fac...6e9423`, chain 1313161554)
- UnnamedContract (`0xc6e518...744e90`, chain 1313161554)
- UnnamedContract (`0xc9011e...3a792c`, chain 1313161554)
- UnnamedContract (`0xc9a848...c0bbc2`, chain 1313161554)
- UnnamedContract (`0xca9511...4449e9`, chain 1313161554)
- UnnamedContract (`0xcecd14...19e0bd`, chain 1313161554)
- UnnamedContract (`0xcfb6b0...60adbb`, chain 1313161554)
- UnnamedContract (`0xffdffb...0a1e70`, chain 1313161554)
- EvmErc20 (`0x09c9d4...8d3a4f`, chain 1313161554)
- Ply (`0x1ab432...2ef90b`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 25/25 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 25 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 25 of 27 unique; 2 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 23
- Unique implementations: 27
- Raw deployments: 27
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EvmErc20 | token | project_anchor | own_supporting | 0 | aurora | unit-227660 | `0x09c9d4...8d3a4f` | ⚠️ Unaudited |
| EvmErc20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x3d4205...bb7980` | ⚠️ Unaudited |
| Ply | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227654 | `0x1ab432...2ef90b` | ⚠️ Unaudited |
| Ply | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cc183...67b877` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227656 | `0x04ac48...71095e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227658 | `0x054fc0...9098bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227662 | `0x0bc03b...9d400a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227664 | `0x319594...e94786` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227666 | `0x4f0d86...b5917b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227668 | `0x5715c4...c5412b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227670 | `0x5ccad0...78d7cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227672 | `0x60bf66...86b89f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227674 | `0x6ea6c0...d24dca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227676 | `0x817af6...369aeb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227678 | `0x888868...e433bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227680 | `0xa200b5...e195f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227682 | `0xa308a5...e441e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227684 | `0xa8f1a3...7743a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227685 | `0xad5a24...9b1c54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227687 | `0xae4fac...6e9423` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227689 | `0xc6e518...744e90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227691 | `0xc9011e...3a792c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227693 | `0xc9a848...c0bbc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227695 | `0xca9511...4449e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227697 | `0xcecd14...19e0bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227699 | `0xcfb6b0...60adbb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-227701 | `0xffdffb...0a1e70` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Aurigami_Finance_Audit_Report_by_WatchPug.pdf](https://github.com/Aurigami-Finance/aurigami-smart-contracts/blob/main/docs/Aurigami_Finance_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2022-02 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 5 | high |
| [www.watchpug.org](https://www.watchpug.org/) | WatchPug | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12702] Aurigami_Finance_Audit_Report_by_WatchPug.pdf — matched: Contracts extracted from findings sections; no explicit scope table provided but all contracts mentioned are in scope.
- [12703] www.watchpug.org — no match: The provided text is a header/footer snippet from an audit report, not the full report content. No contracts, scope section, or date were found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | AuErc20 | unmatched — not counted | — | mentioned in finding AF-1 | no |
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | AuToken | unmatched — not counted | — | mentioned in findings AF-1, AF-2, AF-3 | no |
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | Unitroller | own contract | 0x817af6… (selected) `0x817af6...369aeb` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | AuriLens | own contract | 0xffdffb… (selected) `0xffdffb...0a1e70` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | Comptroller | unmatched — not counted | — | mentioned in findings AF-4, AF-5 | no |
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | AuriMathLib | unmatched — not counted | — | mentioned in finding AF-6 | no |
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | AuETH | own contract | 0xca9511… (selected) `0xca9511...4449e9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Aurigami_Finance_Audit_Report_by_WatchPug.pdf | AuriOracle | unmatched — not counted | — | mentioned in finding AF-8 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: unique_name=3

Zero-match audit list:

- [12703] www.watchpug.org

Fork inheritance lineage and inherited audits are included when available.
