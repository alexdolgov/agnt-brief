# Agentic Audit Brief: Seer

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

- Project: Seer (`seer`)
- Website: [https://seer.pm/](https://seer.pm/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, gnosis, optimism
- Contract surface: 33 unique implementations (33 raw deployments)
- Coverage basis: 0/16 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $983,763.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Seer. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across base, ethereum, gnosis, optimism. Structural roles: 9 supporting, 7 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: supporting (9), unclassified (7)
- Contract kinds: contract (16)
- Detected standards: erc165 (5)
- Frameworks: openzeppelin (8)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 26 contracts are derived from known codebases. 26 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1ba2db...44d9b5`, chain 1)
- UnnamedContract (`0x201803...4f85ad`, chain 1)
- UnnamedContract (`0x179d8f...2d05dd`, chain 10)
- UnnamedContract (`0x3124e9...c77a73`, chain 10)
- UnnamedContract (`0x44921b...a79f00`, chain 10)
- UnnamedContract (`0x886ef0...af8bc6`, chain 10)
- UnnamedContract (`0xab797c...7a87fc`, chain 10)
- UnnamedContract (`0xd19431...10b79f`, chain 10)
- UnnamedContract (`0xfe8bf5...4a46b2`, chain 10)
- UnnamedContract (`0xd19431...10b79f`, chain 100)
- UnnamedContract (`0x179d8f...2d05dd`, chain 8453)
- UnnamedContract (`0x3124e9...c77a73`, chain 8453)
- UnnamedContract (`0x886ef0...af8bc6`, chain 8453)
- UnnamedContract (`0xc72f73...a0ca9e`, chain 8453)
- UnnamedContract (`0xd19431...10b79f`, chain 8453)
- UnnamedContract (`0xf5ccbf...7723b9`, chain 8453)
- UnnamedContract (`0xfe8bf5...4a46b2`, chain 8453)
- ConditionalRouter (`0x774284...13c29c`, chain 100)
- FutarchyFactory (`0xe789e4...f6b792`, chain 100)
- FutarchyRouter (`0xe2996f...c9f74e`, chain 100)
- GnosisRouter (`0xec9048...c70fb8`, chain 100)
- MainnetRouter (`0x886ef0...af8bc6`, chain 1)
- MarketFactory (`0x1f728c...7b7904`, chain 1)
- MarketFactory (`0x83183d...5cdcf1`, chain 100)
- RealityProxy (`0xc260ad...0f2d6c`, chain 100)
- Wrapped1155Factory (`0xd19431...10b79f`, chain 1)

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 33/33 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/16 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 33 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 33 of 33 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 33
- Raw deployments: 33
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

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ConditionalRouter | adapter | project_anchor | own_supporting | 0 | gnosis | unit-392419 | `0x774284...13c29c` | ⚠️ Unaudited |
| FutarchyFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-392426 | `0xe789e4...f6b792` | ⚠️ Unaudited |
| FutarchyProposal | unknown | project_anchor | own_supporting | 0 | gnosis | unit-392427 | `0xec4fb9...5b484c` | ⚠️ Unaudited |
| FutarchyRealityProxy | unknown | project_anchor | own_supporting | 0 | gnosis | unit-392418 | `0x03e1fc...a61cfc` | ⚠️ Unaudited |
| FutarchyRouter | adapter | project_anchor | own_supporting | 0 | gnosis | unit-392425 | `0xe2996f...c9f74e` | ⚠️ Unaudited |
| GnosisRouter | adapter | project_anchor | own_supporting | 0 | gnosis | unit-392428 | `0xec9048...c70fb8` | ⚠️ Unaudited |
| MainnetRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-392406 | `0x886ef0...af8bc6` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392407 | `0x8bdc50...d27b93` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | gnosis | unit-392421 | `0x8f76bc...a9636a` | ⚠️ Unaudited |
| MarketFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-392404 | `0x1f728c...7b7904` | ⚠️ Unaudited |
| MarketFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-392420 | `0x83183d...5cdcf1` | ⚠️ Unaudited |
| MarketView | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392408 | `0xb2ab74...84771a` | ⚠️ Unaudited |
| MarketView | unknown | project_anchor | own_supporting | 0 | gnosis | unit-392422 | `0x95493f...90f59c` | ⚠️ Unaudited |
| RealityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392409 | `0xc72f73...a0ca9e` | ⚠️ Unaudited |
| RealityProxy | unknown | project_anchor | own_supporting | 0 | gnosis | unit-392423 | `0xc260ad...0f2d6c` | ⚠️ Unaudited |
| Wrapped1155Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-392410 | `0xd19431...10b79f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392403 | `0x1ba2db...44d9b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392405 | `0x201803...4f85ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392411 | `0x179d8f...2d05dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392412 | `0x3124e9...c77a73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392413 | `0x44921b...a79f00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392414 | `0x886ef0...af8bc6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392415 | `0xab797c...7a87fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392416 | `0xd19431...10b79f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-392417 | `0xfe8bf5...4a46b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-392424 | `0xd19431...10b79f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392429 | `0x179d8f...2d05dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392430 | `0x3124e9...c77a73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392431 | `0x886ef0...af8bc6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392432 | `0xc72f73...a0ca9e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392433 | `0xd19431...10b79f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392434 | `0xf5ccbf...7723b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392435 | `0xfe8bf5...4a46b2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audit-reports.md](https://seer-3.gitbook.io/seer-documentation/other/audit-reports.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21122] audit-reports.md — no match: The provided text is a documentation index page listing audit reports for a 'Core' module, but it does not contain the actual audit report content. No contract names, file paths, or audit dates are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| gnosis | `0x774284...13c29c` | ConditionalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xe789e4...f6b792` | FutarchyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xec4fb9...5b484c` | FutarchyProposal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x03e1fc...a61cfc` | FutarchyRealityProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xe2996f...c9f74e` | FutarchyRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xec9048...c70fb8` | GnosisRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x886ef0...af8bc6` | MainnetRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8bdc50...d27b93` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x8f76bc...a9636a` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f728c...7b7904` | MarketFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x83183d...5cdcf1` | MarketFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb2ab74...84771a` | MarketView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x95493f...90f59c` | MarketView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc72f73...a0ca9e` | RealityProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xc260ad...0f2d6c` | RealityProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd19431...10b79f` | Wrapped1155Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [21122] audit-reports.md

Fork inheritance lineage and inherited audits are included when available.
