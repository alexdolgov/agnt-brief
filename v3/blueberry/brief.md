# Agentic Audit Brief: Blueberry

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

- Project: Blueberry (`blueberry`)
- Website: [https://app.blueberry.garden](https://app.blueberry.garden)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $257,415.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Blueberry in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 6 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BloomPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x225a72...3450e3` | ⚠️ Unaudited |
| BlueberryToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x904f36...966a02` | ⚠️ Unaudited |
| BPSFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51fd72...7924ad` | ⚠️ Unaudited |
| GasChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd49845...dafc9b` | ⚠️ Unaudited |
| MerkleWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30b4a5...efd5f4` | ⚠️ Unaudited |
| SwapFacility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x165401...11acd6` | ⚠️ Unaudited |

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
| [Blueberry-security-review_2025-04-30.pdf](https://github.com/Blueberryfi/blueberry-v2-contracts/blob/main/audits/bbhlp/current/Blueberry-security-review_2025-04-30.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Blueberry-security-review_2025-05-16.pdf](https://github.com/Blueberryfi/blueberry-v2-contracts/blob/main/audits/bbhlp/current/Blueberry-security-review_2025-05-16.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19577] Blueberry-security-review_2025-04-30.pdf — no match: Scope section explicitly lists 8 smart contracts. Audit date is the end date of the engagement (May 4th 2025).
- [19578] Blueberry-security-review_2025-05-16.pdf — no match: Scope section lists 6 contracts: Escrow, AssetStorage, HyperVaultRouter, HyperliquidEscrow, L1EscrowActions, WrappedVaultShare. Audit date is May 19th 2025 (end date of audit period).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Blueberry-security-review_2025-04-30.pdf | DeployRouterTestnet | unmatched — not counted | — | listed in scope section | no |
| Blueberry-security-review_2025-04-30.pdf | UpgradeEscrows | unmatched — not counted | — | listed in scope section | no |
| Blueberry-security-review_2025-04-30.pdf | UpgradeRouter | unmatched — not counted | — | listed in scope section | no |
| Blueberry-security-review_2025-04-30.pdf | EscrowAssetStorage | unmatched — not counted | — | listed in scope section | no |
| Blueberry-security-review_2025-04-30.pdf | HyperVaultRouter | unmatched — not counted | — | listed in scope section | no |
| Blueberry-security-review_2025-04-30.pdf | HyperliquidEscrow | unmatched — not counted | — | listed in scope section | no |
| Blueberry-security-review_2025-04-30.pdf | L1EscrowActions | unmatched — not counted | — | listed in scope section | no |
| Blueberry-security-review_2025-04-30.pdf | WrappedVaultShare | unmatched — not counted | — | listed in scope section | no |
| Blueberry-security-review_2025-05-16.pdf | Escrow | unmatched — not counted | — | listed in scope section | no |
| Blueberry-security-review_2025-05-16.pdf | AssetStorage | unmatched — not counted | — | listed in scope section | no |
| Blueberry-security-review_2025-05-16.pdf | HyperVaultRouter | unmatched — not counted | — | listed in scope section | no |
| Blueberry-security-review_2025-05-16.pdf | HyperliquidEscrow | unmatched — not counted | — | listed in scope section | no |
| Blueberry-security-review_2025-05-16.pdf | L1EscrowActions | unmatched — not counted | — | listed in scope section | no |
| Blueberry-security-review_2025-05-16.pdf | WrappedVaultShare | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 14 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [19577] Blueberry-security-review_2025-04-30.pdf
- [19578] Blueberry-security-review_2025-05-16.pdf

Fork inheritance lineage and inherited audits are included when available.
