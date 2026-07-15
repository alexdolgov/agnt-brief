# Agentic Audit Brief: Monolith Market

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 6 audit(s)
- Eligible audit results: 7 (6 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Monolith Market (`monolith-market`)
- Website: [https://monolith.market](https://monolith.market)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, sepolia
- Contract surface: 8 unique implementations (8 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $223,963.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Monolith Market. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum, sepolia. Structural roles: 1 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: solmate (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 3 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

**Metadata** (`0x2afb12...8f581a`, chain 1)
Origin: inverse-finance (`0x2afb12...8f581a`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6d961c...39b849`, chain 1)
- Lens (`0x8aab59...01e60d`, chain 1)

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 3 of 8 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 6 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 50.0% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 1 | 50.0% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Lens | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389171 | `0x8aab59...01e60d` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c13d0...618d83` | ⚠️ Unaudited |
| Metadata | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389169 | `0x2afb12...8f581a` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x926df1...659d5b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389170 | `0x6d961c...39b849` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389172 | `0x365009...19e4d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389173 | `0x823427...3d2a22` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389174 | `0x8aab59...01e60d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [yAudit-Monolith-Report-June-2025.pdf](https://monolith-public-files.vercel.app/audits/yAudit-Monolith-Report-June-2025.pdf) | Electisec (yAudit) | Audit | 2025-06 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [ChainSecurity-Monolith-Audit-Report-October-2025.pdf](https://monolith-public-files.vercel.app/audits/ChainSecurity-Monolith-Audit-Report-October-2025.pdf) | ChainSecurity | Audit | 2025-10 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf](https://monolith-public-files.vercel.app/audits/Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf) | Sherlock | Contest | 2025-12 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [ChainSecurity-Monolith-Re-Audit-Report-March-2026.pdf](https://monolith-public-files.vercel.app/audits/ChainSecurity-Monolith-Re-Audit-Report-March-2026.pdf) | ChainSecurity | Audit | 2026-03 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [Sherlock-AI-Monolith-Audit-Report-April-2026.pdf](https://monolith-public-files.vercel.app/audits/Sherlock-AI-Monolith-Audit-Report-April-2026.pdf) | Sherlock AI | Contest | 2026-04 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [Nemesis-Monolith-Audit-Report-April-2026.md](https://monolith-public-files.vercel.app/audits/Nemesis-Monolith-Audit-Report-April-2026.md) | Nemesis | Audit | 2026-04 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [audits.sherlock.xyz/contests/1212](https://audits.sherlock.xyz/contests/1212) | Sherlock | Contest | 2025-12 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21402] yAudit-Monolith-Report-June-2025.pdf — matched: Scope section lists 5 contracts: Vault.sol, Lender.sol, InterestModel.sol, Factory.sol, Coin.sol. Audit completed between May 20-27, 2025, so end date is 2025-05-27.
- [21403] ChainSecurity-Monolith-Audit-Report-October-2025.pdf — matched: Scope section explicitly lists 5 Solidity files. Audit date from cover page: March 25, 2026.
- [21404] Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf — matched: Scope section lists 6 files: src/Coin.sol, src/Factory.sol, src/InterestModel.sol, src/Lender.sol, src/Lens.sol, src/Vault.sol. Audit date is December 8-14, 2025, so end date is 2025-12-14.
- [21405] ChainSecurity-Monolith-Re-Audit-Report-March-2026.pdf — matched: Scope table explicitly lists 5 Solidity files. Audit date from cover page: 'April 14, 2026'.
- [21406] Sherlock-AI-Monolith-Audit-Report-April-2026.pdf — matched: Scope section lists five contracts: Factory.sol, Coin.sol, Interest-Model.sol, Vault.sol, Lender.sol. Audit date is April 2026, mapped to last day of month.
- [21407] Nemesis-Monolith-Audit-Report-April-2026.md — matched: Scope explicitly listed as 'Modules analyzed: Lender.sol, Vault.sol, Coin.sol, InterestModel.sol, Factory.sol' at the top of the report.
- [21409] audits.sherlock.xyz/contests/1212 — no match: The provided text is a header snippet from a contest page, not a full audit report. No contract names, scope section, or audit date are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| yAudit-Monolith-Report-June-2025.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| yAudit-Monolith-Report-June-2025.pdf | Lender | unmatched — not counted | — | listed in scope | no |
| yAudit-Monolith-Report-June-2025.pdf | InterestModel | unmatched — not counted | — | listed in scope | no |
| yAudit-Monolith-Report-June-2025.pdf | Factory | own contract | 0x6d961c… (selected) `0x6d961c...39b849` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| yAudit-Monolith-Report-June-2025.pdf | Coin | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Monolith-Audit-Report-October-2025.pdf | Factory | own contract | 0x6d961c… (selected) `0x6d961c...39b849` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-Monolith-Audit-Report-October-2025.pdf | Coin | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity-Monolith-Audit-Report-October-2025.pdf | InterestModel | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity-Monolith-Audit-Report-October-2025.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity-Monolith-Audit-Report-October-2025.pdf | Lender | unmatched — not counted | — | listed in scope table | no |
| Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf | Coin | unmatched — not counted | — | listed in scope | no |
| Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf | Factory | own contract | 0x6d961c… (selected) `0x6d961c...39b849` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf | InterestModel | unmatched — not counted | — | listed in scope | no |
| Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf | Lender | unmatched — not counted | — | listed in scope | no |
| Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf | Lens | own contract | Lens (selected) `0x8aab59...01e60d` — deployed 2026-04-18 14:36:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Monolith-Re-Audit-Report-March-2026.pdf | Factory | own contract | 0x6d961c… (selected) `0x6d961c...39b849` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-Monolith-Re-Audit-Report-March-2026.pdf | Coin | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity-Monolith-Re-Audit-Report-March-2026.pdf | InterestModel | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity-Monolith-Re-Audit-Report-March-2026.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity-Monolith-Re-Audit-Report-March-2026.pdf | Lender | unmatched — not counted | — | listed in scope table | no |
| Sherlock-AI-Monolith-Audit-Report-April-2026.pdf | Factory | own contract | 0x6d961c… (selected) `0x6d961c...39b849` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock-AI-Monolith-Audit-Report-April-2026.pdf | Coin | unmatched — not counted | — | listed in scope | no |
| Sherlock-AI-Monolith-Audit-Report-April-2026.pdf | InterestModel | unmatched — not counted | — | listed in scope | no |
| Sherlock-AI-Monolith-Audit-Report-April-2026.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| Sherlock-AI-Monolith-Audit-Report-April-2026.pdf | Lender | unmatched — not counted | — | listed in scope | no |
| Nemesis-Monolith-Audit-Report-April-2026.md | Lender | unmatched — not counted | — | listed in scope | no |
| Nemesis-Monolith-Audit-Report-April-2026.md | Vault | unmatched — not counted | — | listed in scope | no |
| Nemesis-Monolith-Audit-Report-April-2026.md | Coin | unmatched — not counted | — | listed in scope | no |
| Nemesis-Monolith-Audit-Report-April-2026.md | InterestModel | unmatched — not counted | — | listed in scope | no |
| Nemesis-Monolith-Audit-Report-April-2026.md | Factory | own contract | 0x6d961c… (selected) `0x6d961c...39b849` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x2afb12...8f581a` | Metadata | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 24 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=1
- Match method counts: unique_name=7

Zero-match audit list:

- [21409] audits.sherlock.xyz/contests/1212

Fork inheritance lineage and inherited audits are included when available.
