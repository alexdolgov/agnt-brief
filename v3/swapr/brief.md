# Agentic Audit Brief: Swapr

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

- Project: Swapr (`swapr`)
- Website: [https://swapr.eth.link/#/swap](https://swapr.eth.link/#/swap)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, gnosis
- Contract surface: 10 unique implementations (10 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $749,491.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Swapr. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, gnosis. Structural roles: 1 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: ownable (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 2; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 8 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 10
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DXdaoERC20StakingRewardsDistributionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4e6a2e...b01402` | ⚠️ Unaudited |
| DXswapDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x01f1b4...902518` | ⚠️ Unaudited |
| DXswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x047f32...c1998d` | ⚠️ Unaudited |
| DXswapFeeReceiver | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-257588 | `0x1d7c7c...24a1ae` | ⚠️ Unaudited |
| DXswapFeeSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x34d924...d60f9d` | ⚠️ Unaudited |
| DXswapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1dc945...3af36e` | ⚠️ Unaudited |
| ERC20StakingRewardsDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd28629...f37ba2` | ⚠️ Unaudited |
| KPITokensFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe9c1c9...3ceacb` | ⚠️ Unaudited |
| StandardArbERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xde903e...65ac30` | ⚠️ Unaudited |
| SWPRConverter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-257589 | `0x2b058a...daddfd` | ⚠️ Unaudited |

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
| [ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn](https://ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn) | unknown | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21020] ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn — no match: Audit report title indicates Oct, 2020. No specific day given, so last day of month used.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn | DXswapERC20 | unmatched — not counted | — | listed in scope section 1.2 | no |
| ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn | DXswapPair | unmatched — not counted | — | listed in scope section 1.2 | no |
| ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn | DXswapFactory | unmatched — not counted | — | listed in scope section 1.2 | no |
| ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn | DXswapDeployer | unmatched — not counted | — | listed in scope section 1.2 | no |
| ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn | DXswapLibrary | unmatched — not counted | — | listed in scope section 1.2 | no |
| ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn | DXswapRouter | unmatched — not counted | — | listed in scope section 1.2 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [21020] ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn

Fork inheritance lineage and inherited audits are included when available.
