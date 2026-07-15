# Agentic Audit Brief: Clovis

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

- Project: Clovis (`clovis`)
- Website: [https://clovis.network/](https://clovis.network/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, optimism, sei
- Contract surface: 5 unique implementations (5 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $233,440.41
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Clovis in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 5 discovered implementations excluded (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 0 stale, 0 unknown
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
| ATokenV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | unit-129362 | `0x093066...e32819` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-129359 | `0xe7cd86...0fc82d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | optimism | unit-129361 | `0x01bff4...bc1071` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-129358 | `0xf97f14...6c7d0c` | ⚠️ Unaudited |
| VaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-129360 | `0x39166b...a5e94c` | ⚠️ Unaudited |

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
| [Clovis - Verichains Audit Report - Pre-deposit Vault.pdf](https://1911326218-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FAVHC81FYBgMAILvctkBu%2Fuploads%2FpqSJehegms81oyLLXrZX%2FClovis%20-%20Verichains%20Audit%20Report%20-%20%20Pre-deposit%20Vault.pdf) | Verichains | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Clovis - billh Security Review - Pre-deposit Vault.pdf](https://1911326218-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FAVHC81FYBgMAILvctkBu%2Fuploads%2FGYHchudKLFMpgRmDKfTO%2FClovis%20-%20billh%20Security%20Review%20-%20Pre-deposit%20Vault.pdf) | billh | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Clovis - billh Security Report - TGE.pdf](https://1911326218-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FAVHC81FYBgMAILvctkBu%2Fuploads%2Feuw9HH6WBEyWWlk3tIdq%2FClovis%20-%20billh%20Security%20Report%20-%20TGE.pdf) | billh | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19651] Clovis - Verichains Audit Report - Pre-deposit Vault.pdf — no match: Two contracts in scope: Vault.sol and YeiVault.sol. Audit date from cover page and version history.
- [19652] Clovis - billh Security Review - Pre-deposit Vault.pdf — no match: Scope section lists project name Yei Finance and commit hash, but no explicit contract list. Extracted contract names from findings context.
- [19653] Clovis - billh Security Report - TGE.pdf — no match: Scope section lists two GitHub repos but no specific contract files; only YeiDistributor.sol is referenced in findings.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Clovis - Verichains Audit Report - Pre-deposit Vault.pdf | Vault | unmatched — not counted | — | listed in scope with SHA256 hash | no |
| Clovis - Verichains Audit Report - Pre-deposit Vault.pdf | YeiVault | unmatched — not counted | — | listed in scope with SHA256 hash | no |
| Clovis - billh Security Review - Pre-deposit Vault.pdf | YeiVault | unmatched — not counted | — | Context:YeiVault.sol in finding 2.1.1 | no |
| Clovis - billh Security Review - Pre-deposit Vault.pdf | Vault | unmatched — not counted | — | Context:Vault.sol in finding 2.1.2 | no |
| Clovis - billh Security Report - TGE.pdf | YeiDistributor | unmatched — not counted | — | mentioned in findings context | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, medium=1
- Match method counts: n/a

Zero-match audit list:

- [19651] Clovis - Verichains Audit Report - Pre-deposit Vault.pdf
- [19652] Clovis - billh Security Review - Pre-deposit Vault.pdf
- [19653] Clovis - billh Security Report - TGE.pdf

Fork inheritance lineage and inherited audits are included when available.
