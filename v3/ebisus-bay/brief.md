# Agentic Audit Brief: Ebisus Bay

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Ebisus Bay (`ebisus-bay`)
- Website: [https://app.ebisusbay.com/](https://app.ebisusbay.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: cronos
- Contract surface: 14 unique implementations (14 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $494,365.73
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ebisus Bay. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across cronos. Structural roles: 5 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: unclassified (5)
- Contract kinds: contract (5)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Fortune Teller (`0x04636c...11d566`, chain 25)
- Founding Member (`0x8d9232...eb25f5`, chain 25)
- FRTN (`0xaf02d7...9aff21`, chain 25)
- Mitama (`0x0a060a...fedef9`, chain 25)
- Ryoshi Halloween (`0x54e61e...f7e6d3`, chain 25)
- Ryoshi Lands (`0xcf7c77...3fb0e3`, chain 25)
- Ryoshi Playing Cards (`0xd87838...a98d24`, chain 25)
- Ryoshi Resources (`0xce3f4e...884b3d`, chain 25)
- Ryoshi Tales (`0x562e3e...150e04`, chain 25)
- Ryoshi VIP (`0xe49709...07664c`, chain 25)
- Ryoshi with Knife (`0x055c51...7fd49c`, chain 25)
- Ryoshi Xmas (`0xe3ef45...17b11c`, chain 25)
- Teller Guards (`0x013f83...66af88`, chain 25)

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 13 of 14 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
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
| Fortune Teller | unknown | project_anchor | own_supporting | 0 | cronos | unit-384137 | `0x04636c...11d566` | ⚠️ Unaudited |
| FRTN | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | unit-384143 | `0xaf02d7...9aff21` | ⚠️ Unaudited |
| Mitama | unknown | project_anchor | own_supporting | 0 | cronos | unit-384139 | `0x0a060a...fedef9` | ⚠️ Unaudited |
| Ryoshi Lands | unknown | project_anchor | own_supporting | 0 | cronos | unit-384146 | `0xcf7c77...3fb0e3` | ⚠️ Unaudited |
| Teller Guards | unknown | project_anchor | own_supporting | 0 | cronos | unit-384136 | `0x013f83...66af88` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Founding Member | unknown | project_anchor | own_supporting | 0 | cronos | unit-384142 | `0x8d9232...eb25f5` | ❓ Unverified |
| Ryoshi Halloween | unknown | project_anchor | own_supporting | 0 | cronos | unit-384140 | `0x54e61e...f7e6d3` | ❓ Unverified |
| Ryoshi Playing Cards | unknown | project_anchor | own_supporting | 0 | cronos | unit-384147 | `0xd87838...a98d24` | ❓ Unverified |
| Ryoshi Resources | unknown | project_anchor | own_supporting | 0 | cronos | unit-384145 | `0xce3f4e...884b3d` | ❓ Unverified |
| Ryoshi Tales | unknown | project_anchor | own_supporting | 0 | cronos | unit-384141 | `0x562e3e...150e04` | ❓ Unverified |
| Ryoshi VIP | unknown | project_anchor | own_supporting | 0 | cronos | unit-384149 | `0xe49709...07664c` | ❓ Unverified |
| Ryoshi with Knife | unknown | project_anchor | own_supporting | 0 | cronos | unit-384138 | `0x055c51...7fd49c` | ❓ Unverified |
| Ryoshi Xmas | unknown | project_anchor | own_supporting | 0 | cronos | unit-384148 | `0xe3ef45...17b11c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | unit-384144 | `0xb2925f...a83b9f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
