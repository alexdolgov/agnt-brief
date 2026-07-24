# Agentic Audit Brief: Surf Liquid

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Surf Liquid (`surf-liquid`)
- Website: [https://surfliquid.com/](https://surfliquid.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 6 unique implementations (8 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $246,098.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Surf Liquid. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across base, ethereum. Structural roles: 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AgentKeyV2 (`0xcdca2eaae4a8a6b83d7a3589946c2301040dafbf`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 5 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 1 of 6 unique; 5 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 8
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
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
| AgentKeyV2 | unknown | project_anchor | own_supporting | 0 | base | unit-393508 | `0xcdca2eaae4a8a6b83d7a3589946c2301040dafbf` | ⚠️ Unaudited |
| BridgeLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab71119e39d1d51b8dc0d0b72ab5e31539cce284` | ⚠️ Unaudited |
| BundlerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84be6e2916c614c183b9b603073187bbbd24c99b` | ⚠️ Unaudited |
| DirectDepositLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8888db40e2732a66610c52e74f525258344b9178` | ⚠️ Unaudited |
| UserVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8fa50dea8db10987d7d22ac092001c3613c18779`; ethereum `0x990d4056646240f82808e525dd645896a541b654` | ⚠️ Unaudited |
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x98a0def9c959ec934df02141291303819369f271`; ethereum `0xb5d34ae5b2d5a08494185f06a3e991cc7b260206` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 2
- Live contracts: 0
- Unknown liveness contracts: 2
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=2

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x990d4056646240f82808e525dd645896a541b654` | non_address_book | unknown | unknown | unverified | n/a | `0xf5ae9affc314bd2c235a33660756b19ad859996c` |
| unverified unclassified | UnnamedContract<br>`0xb5d34ae5b2d5a08494185f06a3e991cc7b260206` | non_address_book | unknown | unknown | unverified | n/a | `0xf5ae9affc314bd2c235a33660756b19ad859996c` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2024_02-Smart-Contract-Audit-Report-for-Surf-1.pdf](https://sayfer.io/wp-content/uploads/2024/02/2024_02-Smart-Contract-Audit-Report-for-Surf-1.pdf) | Sayfer | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [sayfer.io/audits/smart-contract-audit-report-for-surf](https://sayfer.io/audits/smart-contract-audit-report-for-surf) | Sayfer | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21461] 2024_02-Smart-Contract-Audit-Report-for-Surf-1.pdf — no match: Only one contract in scope: SurfBank.sol. Audit performed in February 2024, so end of month used.
- [21462] sayfer.io/audits/smart-contract-audit-report-for-surf — no match: Only one contract in scope: SurfBank.sol. No audit date found in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024_02-Smart-Contract-Audit-Report-for-Surf-1.pdf | SurfBank | unmatched — not counted | — | listed in scope table with sha-256 hash | no |
| sayfer.io/audits/smart-contract-audit-report-for-surf | SurfBank | unmatched — not counted | — | Scope Overview table lists SurfBank.sol with SHA-256 hash | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0xcdca2eaae4a8a6b83d7a3589946c2301040dafbf` | AgentKeyV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [21461] 2024_02-Smart-Contract-Audit-Report-for-Surf-1.pdf
- [21462] sayfer.io/audits/smart-contract-audit-report-for-surf

Fork inheritance lineage and inherited audits are included when available.
