# Agentic Audit Brief: Manta CeDeFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Manta CeDeFi (`manta-cedefi`)
- Website: [https://cedefi.manta.network](https://cedefi.manta.network)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: n/a
- Contract surface: 0 unique implementations (0 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $26,383,821.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Manta CeDeFi in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 0
- Raw deployments: 0
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 0 unknown
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

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Atlantic-Halborn-zkSBT.pdf](https://github.com/Manta-Network/Atlantic-Audits/blob/main/Atlantic-Halborn-zkSBT.pdf) | Halborn | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Atlantic-Secure3-Dapps.pdf](https://github.com/Manta-Network/Atlantic-Audits/blob/main/Atlantic-Secure3-Dapps.pdf) | Secure3 | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Atlantic-Veridise-Chain.pdf](https://github.com/Manta-Network/Atlantic-Audits/blob/main/Atlantic-Veridise-Chain.pdf) | Veridise | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Atlantic-Veridise-ZK.pdf](https://github.com/Manta-Network/Atlantic-Audits/blob/main/Atlantic-Veridise-ZK.pdf) | Veridise | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Atlantic-Veridise-zkSBT.pdf](https://github.com/Manta-Network/Atlantic-Audits/blob/main/Atlantic-Veridise-zkSBT.pdf) | Veridise | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20812] Atlantic-Halborn-zkSBT.pdf — no match: Scope section lists two pallets: SBT pallet (manta-sbt) and Support pallet (manta-support). Directories node, runtime, primitives are also in scope but are not contract names. Audit date is the end date of the engagement: May 26th, 2023.
- [20813] Atlantic-Secure3-Dapps.pdf — no match: The audit scope lists URLs (https://app.manta.network/calamari/transact, bridge, stake) but no smart contract names or source files. The report is a web application security assessment, not a smart contract audit.
- [20814] Atlantic-Veridise-Chain.pdf — no match: Scope section 3.2 lists top-level directories: node/, pallets/ (with sub-pallets asset-manager, collator-selection, manta-pay, parachain-staking, tx-pause, vesting), primitives/, runtime/. Contract names extracted from pallet directory names.
- [20815] Atlantic-Veridise-ZK.pdf — no match: The audit scope lists three packages: manta-crypto, manta-accounting/transfer, and manta-pay. No individual contract files are listed; the report states 'For brevity, we omit listing each of the files.' The audit date is from the cover page: May 1, 2023.
- [20816] Atlantic-Veridise-zkSBT.pdf — no match: The audit covers the MantaSBT pallet within the Manta Chain (Substrate blockchain). The scope includes directories node/, pallets/manta-sbt, pallets/manta-support, primitives/, and runtime/. The main contract is the MantaSBT pallet implemented in pallets/manta-sbt/src/lib.rs.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Atlantic-Halborn-zkSBT.pdf | manta-sbt | unmatched — not counted | — | listed in scope as SBT pallet | no |
| Atlantic-Halborn-zkSBT.pdf | manta-support | unmatched — not counted | — | listed in scope as Support pallet | no |
| Atlantic-Veridise-Chain.pdf | asset-manager | unmatched — not counted | — | listed in scope section 3.2 | no |
| Atlantic-Veridise-Chain.pdf | collator-selection | unmatched — not counted | — | listed in scope section 3.2 | no |
| Atlantic-Veridise-Chain.pdf | manta-pay | unmatched — not counted | — | listed in scope section 3.2 | no |
| Atlantic-Veridise-Chain.pdf | parachain-staking | unmatched — not counted | — | listed in scope section 3.2 | no |
| Atlantic-Veridise-Chain.pdf | tx-pause | unmatched — not counted | — | listed in scope section 3.2 | no |
| Atlantic-Veridise-Chain.pdf | vesting | unmatched — not counted | — | listed in scope section 3.2 | no |
| Atlantic-Veridise-ZK.pdf | manta-crypto | unmatched — not counted | — | listed in scope section 3.2 | no |
| Atlantic-Veridise-ZK.pdf | manta-accounting/transfer | unmatched — not counted | — | listed in scope section 3.2 | no |
| Atlantic-Veridise-ZK.pdf | manta-pay | unmatched — not counted | — | listed in scope section 3.2 | no |
| Atlantic-Veridise-zkSBT.pdf | MantaSBT | unmatched — not counted | — | listed in scope as pallets/manta-sbt | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1
- Match method counts: n/a

Zero-match audit list:

- [20812] Atlantic-Halborn-zkSBT.pdf
- [20813] Atlantic-Secure3-Dapps.pdf
- [20814] Atlantic-Veridise-Chain.pdf
- [20815] Atlantic-Veridise-ZK.pdf
- [20816] Atlantic-Veridise-zkSBT.pdf

Fork inheritance lineage and inherited audits are included when available.
