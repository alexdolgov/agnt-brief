# Agentic Audit Brief: Ledgity Yield

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Ledgity Yield (`ledgity-yield`)
- Website: [https://ledgity.finance/](https://ledgity.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, linea, sonic
- Contract surface: 19 unique implementations (22 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $2,551,547.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Ledgity Yield. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 35 contract row(s) across arbitrum, base, ethereum, linea, sonic. Structural roles: 28 unclassified, 7 core. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 35
- Structural roles: unclassified (28), core (7)
- Contract kinds: contract (33), abstract (2)
- Detected standards: erc20 (6), ownable (6), erc1967proxy (4), erc165 (3), pausable (3)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 4

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 35; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 19 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (4 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 17
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 19
- Raw deployments: 22
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LDY | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-244545 | `0x482df7...ddfdbc` | ⚠️ Unaudited |
| LDY | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-244550 | `0x9cfbf9...ed0bce` | ⚠️ Unaudited |
| LDY | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-244555 | `0x055d20...dd8a13` | ⚠️ Unaudited |
| LDY | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-244553 | `0x999faf...0d07e1` | ⚠️ Unaudited |
| LedgityYieldVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 2 | ethereum | unit-244559 (2 proxies) | 2 deployments: ethereum `0x209681...d44bc8`; ethereum `0x3c769d...ecb6d4` | ⚠️ Unaudited |
| LedgityYieldVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 2 | base | unit-244569 (2 proxies) | 2 deployments: base `0x916f17...6a6e38`; base `0xfaa1e3...33b134` | ⚠️ Unaudited |
| LedgityYieldVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-244564 | `0x283f35...e157ee` | ⚠️ Unaudited |
| LedgityYieldVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | linea | unit-244565 | `0x43b3c6...9e698f` | ⚠️ Unaudited |
| LedgityYieldVaultSonic | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | sonic | unit-244560 | `0x65f75c...223001` | ⚠️ Unaudited |
| LToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-244570 | `0x3c769d...ecb6d4` | ⚠️ Unaudited |
| LToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | base | unit-244571 | `0x77ce97...83708f` | ⚠️ Unaudited |
| LToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | arbitrum | unit-244563 | `0xd54d56...b77813` | ⚠️ Unaudited |
| LToken | token | external_dependency_or_infra | third_party_dependency (excluded) | 1 | linea | unit-244566 | `0x4af215...b45b7a` | ⚠️ Unaudited |
| LTokenSonic | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 2 | sonic | unit-244561 (2 proxies) | 2 deployments: sonic `0x88dc86...d6dc82`; sonic `0xd7ccab...e75e69` | ⚠️ Unaudited |
| StakingPositions | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-244558 | `0x902982...f75144` | ⚠️ Unaudited |
| StakingPositions | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-244568 | `0x0fcfdf...2d6d88` | ⚠️ Unaudited |
| StakingPositions | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-244562 | `0x6e8361...eafd5b` | ⚠️ Unaudited |
| StakingPositions | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | linea | unit-244567 | `0x891611...87d554` | ⚠️ Unaudited |
| WrappedLToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-244549 | `0x841a13...e6c300` | ⚠️ Unaudited |

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
| [report.md](https://github.com/LedgityLabs/LedgityYield/blob/main/report.md) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20767] report.md — no match: No explicit scope section found; contracts extracted from findings referencing file paths.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| report.md | LDYStaking | unmatched — not counted | — | listed in findings | no |
| report.md | LToken | unmatched — not counted | — | listed in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [20767] report.md

Fork inheritance lineage and inherited audits are included when available.
