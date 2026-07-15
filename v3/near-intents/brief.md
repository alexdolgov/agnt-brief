# Agentic Audit Brief: NEAR Intents

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: NEAR Intents (`near-intents`)
- Website: [https://near.com/](https://near.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: monad, x-layer
- Contract surface: 2 unique implementations (2 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $76,666,996.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for NEAR Intents in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x233c53...4cb4cd`, chain 143)
- UnnamedContract (`0x233c53...4cb4cd`, chain 196)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 1 unknown
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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-389847 | `0x233c53...4cb4cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-389848 | `0x233c53...4cb4cd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024](https://hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024) | Hacken | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [1738583399-hacken_aurora-labs-limited-sca-aurora-labs-defuse-contracts-dec2024_p-2024-1418_2_20250127-10_50.pdf](https://www.datocms-assets.com/50156/1738583399-hacken_aurora-labs-limited-sca-aurora-labs-defuse-contracts-dec2024_p-2024-1418_2_20250127-10_50.pdf) | Hacken | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Manual audit seed](https://docs.near-intents.org/security-compliance/security) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21257] hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024 — no match: Extracted contract names from the Assets in Scope table in the report. The report is for NEAR Intents contracts written in Rust. The audit date is the published time of the second report (2025-01-27).
- [21258] 1738583399-hacken_aurora-labs-limited-sca-aurora-labs-defuse-contracts-dec2024_p-2024-1418_2_20250127-10_50.pdf — no match: The scope section lists multiple Rust source files under directories bitmap, core, crypto, defuse, erc191, and nep413. The main contract names are derived from the top-level module names.
- [24267] Manual audit seed — no match: The provided text is a documentation page for NEAR Intents, not an audit report. It mentions audits exist but does not list any contract names or scope details.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024 | bitmap | unmatched — not counted | — | listed in Assets in Scope table | no |
| hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024 | core | unmatched — not counted | — | listed in Assets in Scope table | no |
| hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024 | accounts | unmatched — not counted | — | listed in Assets in Scope table | no |
| hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024 | deadline | unmatched — not counted | — | listed in Assets in Scope table | no |
| hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024 | engine | unmatched — not counted | — | listed in Assets in Scope table | no |
| hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024 | inspector | unmatched — not counted | — | listed in Assets in Scope table | no |
| hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024 | state | unmatched — not counted | — | listed in Assets in Scope table | no |
| hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024 | cached | unmatched — not counted | — | listed in Assets in Scope table | no |
| hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024 | deltas | unmatched — not counted | — | listed in Assets in Scope table | no |
| hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024 | error | unmatched — not counted | — | listed in Assets in Scope table | no |
| hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024 | events | unmatched — not counted | — | listed in Assets in Scope table | no |
| hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024 | fees | unmatched — not counted | — | listed in Assets in Scope table | no |
| hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024 | intents | unmatched — not counted | — | listed in Assets in Scope table | no |
| hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024 | account | unmatched — not counted | — | listed in Assets in Scope table | no |
| hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024 | token_diff | unmatched — not counted | — | listed in Assets in Scope table | no |
| hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024 | tokens | unmatched — not counted | — | listed in Assets in Scope table | no |
| 1738583399-hacken_aurora-labs-limited-sca-aurora-labs-defuse-contracts-dec2024_p-2024-1418_2_20250127-10_50.pdf | bitmap | unmatched — not counted | — | listed in scope table | no |
| 1738583399-hacken_aurora-labs-limited-sca-aurora-labs-defuse-contracts-dec2024_p-2024-1418_2_20250127-10_50.pdf | core | unmatched — not counted | — | listed in scope table | no |
| 1738583399-hacken_aurora-labs-limited-sca-aurora-labs-defuse-contracts-dec2024_p-2024-1418_2_20250127-10_50.pdf | crypto | unmatched — not counted | — | listed in scope table | no |
| 1738583399-hacken_aurora-labs-limited-sca-aurora-labs-defuse-contracts-dec2024_p-2024-1418_2_20250127-10_50.pdf | defuse | unmatched — not counted | — | listed in scope table | no |
| 1738583399-hacken_aurora-labs-limited-sca-aurora-labs-defuse-contracts-dec2024_p-2024-1418_2_20250127-10_50.pdf | erc191 | unmatched — not counted | — | listed in scope table | no |
| 1738583399-hacken_aurora-labs-limited-sca-aurora-labs-defuse-contracts-dec2024_p-2024-1418_2_20250127-10_50.pdf | nep413 | unmatched — not counted | — | listed in scope table | no |

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
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 22 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: n/a

Zero-match audit list:

- [21257] hacken.io/audits/aurora-labs-limited/sca-aurora-labs-defuse-contracts-dec2024
- [21258] 1738583399-hacken_aurora-labs-limited-sca-aurora-labs-defuse-contracts-dec2024_p-2024-1418_2_20250127-10_50.pdf
- [24267] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
