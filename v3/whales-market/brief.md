# Agentic Audit Brief: Whales Market

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Whales Market (`whales-market`)
- Website: [https://whales.market/](https://whales.market/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, blast, bsc, ethereum, linea, manta-pacific, merlin, mode
- Contract surface: 14 unique implementations (14 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $654,440.93
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Whales Market in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

- UnnamedContract (`0x1ecdb32e59e948c010a189a0798c674a2d0c6603`, chain 1)
- UnnamedContract (`0x7a560269480ef38b885526c8bbecdc4686d8bf7a`, chain 169)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 12 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 4 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 2 of 14 unique; 12 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x193aaa7e9f358b7e52c978bf560f28f2b62aecbf` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1311d574598b516b3b050e77ab9e424867cf9d4d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x47d7c164834ccae520be78f9cb032d6d03fdc9bf` | ⚠️ Unaudited |
| MappingLog | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9a286c70830f2b35b1bc530e62769393c78810a` | ⚠️ Unaudited |
| PreMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e57fff83ae53b22c5b656745168b21a9d2ac3da` | ⚠️ Unaudited |
| PreMarketMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31847b4f5cce05fa29038e914f5fdd952f136290` | ⚠️ Unaudited |
| PreMarketMode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xed66dbd66ecbd215827eea1eea896ccc2e09e79c` | ⚠️ Unaudited |
| PremarketOFTFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20c453e643badb04072ca2a94eef965a58968940` | ⚠️ Unaudited |
| PreMarketV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e57fff83ae53b22c5b656745168b21a9d2ac3da` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ecdb32e59e948c010a189a0798c674a2d0c6603` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x12617f31a29dccff3790e4767239a7b00928d43b` | ⚠️ Unaudited |
| VCDeal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b416aa811bd8396f516be8833b9683524c5b25c` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396625 | `0x1ecdb32e59e948c010a189a0798c674a2d0c6603` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-396627 | `0x7a560269480ef38b885526c8bbecdc4686d8bf7a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/x6BD7DBdJOnjDJswNoq9/uploads/FRidwsyZAo0bejXHjYHq/PeckShield-Audit-Report-WhalesMarket-Solana.v1.0.pdf](https://1927385578-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fx6BD7DBdJOnjDJswNoq9%2Fuploads%2FFRidwsyZAo0bejXHjYHq%2FPeckShield-Audit-Report-WhalesMarket-Solana.v1.0.pdf?alt=media&token=fc4571bf-8a93-49da-a492-a573b1022ce8) | PeckShield | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [docs.whales.market/additional-documents/contract-audits](https://docs.whales.market/additional-documents/contract-audits) | PeckShield | Audit | 2024-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21353] spaces/x6BD7DBdJOnjDJswNoq9/uploads/FRidwsyZAo0bejXHjYHq/PeckShield-Audit-Report-WhalesMarket-Solana.v1.0.pdf — no match: The report does not list individual contract names; only the overall project 'Whales Market' is mentioned as the target. The findings reference specific files (e.g., create_offer.rs, fill_offer_buy.rs) but these are not explicitly listed as contracts in scope.
- [21354] docs.whales.market/additional-documents/contract-audits — no match: The provided text is a table of contents and metadata for an audit report, not the full report. No specific contract names are listed in the scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/x6BD7DBdJOnjDJswNoq9/uploads/FRidwsyZAo0bejXHjYHq/PeckShield-Audit-Report-WhalesMarket-Solana.v1.0.pdf | Whales Market | unmatched — not counted | — | listed in scope table and throughout report | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [21353] spaces/x6BD7DBdJOnjDJswNoq9/uploads/FRidwsyZAo0bejXHjYHq/PeckShield-Audit-Report-WhalesMarket-Solana.v1.0.pdf
- [21354] docs.whales.market/additional-documents/contract-audits

Fork inheritance lineage and inherited audits are included when available.
