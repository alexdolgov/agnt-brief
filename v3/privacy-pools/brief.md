# Agentic Audit Brief: Privacy Pools

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Privacy Pools (`privacy-pools`)
- Website: [https://privacypools.com/](https://privacypools.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, optimism
- Contract surface: 5 unique implementations (5 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $7,683,672.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Privacy Pools. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across ethereum. Structural roles: 2 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (2), supporting (2)
- Contract kinds: contract (4)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 4; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 1 unknown
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
| CommitmentVerifier | periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa45aca...565ec6` | ⚠️ Unaudited |
| Entrypoint | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xdd8aa0...fbd4c1` | ⚠️ Unaudited |
| PrivacyPoolComplex | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a604e...b61633` | ⚠️ Unaudited |
| PrivacyPoolSimple | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf241d5...a9c9fb` | ⚠️ Unaudited |
| WithdrawalVerifier | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x022891...897d6d` | ⚠️ Unaudited |

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
| [circuits_audit_oxorio.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/circuits_audit_oxorio.md) | unknown | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [contracts_audit_auditware.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/contracts_audit_auditware.md) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [contracts_audit_oxorio.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/contracts_audit_oxorio.md) | unknown | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [entrypoint_upgrade_audit_oxorio.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/entrypoint_upgrade_audit_oxorio.md) | unknown | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [7629] circuits_audit_oxorio.md — no match: Three Circom circuits (commitment, merkleTree, withdraw) are explicitly listed in the Audited Files table. The audit date is the final report submission date (February 21, 2025) from the Project Timeline.
- [7630] contracts_audit_auditware.md — no match: Scope section explicitly lists 7 contracts with file paths. No audit date found in the provided text.
- [7631] contracts_audit_oxorio.md — no match: All 7 contracts from the audited files table are extracted. The audit date is the final report submission date (March 18, 2025).
- [7632] entrypoint_upgrade_audit_oxorio.md — no match: Audit report covers 2 contracts: Entrypoint and IEntrypoint. Audit date is May 18, 2025 (submission date).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| circuits_audit_oxorio.md | commitment | unmatched — not counted | — | listed in Audited Files table | no |
| circuits_audit_oxorio.md | merkleTree | unmatched — not counted | — | listed in Audited Files table | no |
| circuits_audit_oxorio.md | withdraw | unmatched — not counted | — | listed in Audited Files table | no |
| contracts_audit_auditware.md | Entrypoint | unmatched — not counted | — | listed in scope | no |
| contracts_audit_auditware.md | PrivacyPool | unmatched — not counted | — | listed in scope | no |
| contracts_audit_auditware.md | State | unmatched — not counted | — | listed in scope | no |
| contracts_audit_auditware.md | PrivacyPoolComplex | unmatched — not counted | — | listed in scope | no |
| contracts_audit_auditware.md | PrivacyPoolSimple | unmatched — not counted | — | listed in scope | no |
| contracts_audit_auditware.md | Constants | unmatched — not counted | — | listed in scope | no |
| contracts_audit_auditware.md | ProofLib | unmatched — not counted | — | listed in scope | no |
| contracts_audit_oxorio.md | Entrypoint | unmatched — not counted | — | listed in audited files table | no |
| contracts_audit_oxorio.md | PrivacyPoolComplex | unmatched — not counted | — | listed in audited files table | no |
| contracts_audit_oxorio.md | PrivacyPoolSimple | unmatched — not counted | — | listed in audited files table | no |
| contracts_audit_oxorio.md | Constants | unmatched — not counted | — | listed in audited files table | no |
| contracts_audit_oxorio.md | ProofLib | unmatched — not counted | — | listed in audited files table | no |
| contracts_audit_oxorio.md | PrivacyPool | unmatched — not counted | — | listed in audited files table | no |
| contracts_audit_oxorio.md | State | unmatched — not counted | — | listed in audited files table | no |
| entrypoint_upgrade_audit_oxorio.md | Entrypoint | unmatched — not counted | — | listed in audited files table | no |
| entrypoint_upgrade_audit_oxorio.md | IEntrypoint | unmatched — not counted | — | listed in audited files table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 19 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: n/a

Zero-match audit list:

- [7629] circuits_audit_oxorio.md
- [7630] contracts_audit_auditware.md
- [7631] contracts_audit_oxorio.md
- [7632] entrypoint_upgrade_audit_oxorio.md

Fork inheritance lineage and inherited audits are included when available.
