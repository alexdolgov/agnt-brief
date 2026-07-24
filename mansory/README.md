# Agentic Audit Brief: Mansory

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Mansory (`mansory`)
- Website: [https://www.mansory.com/](https://www.mansory.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 13 unique implementations (13 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $6,687,646.09
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Mansory in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0fcfe33b46e5b21e5e96b722d4c85510198f9255`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 12 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 13 unique; 12 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 13
- Raw deployments: 13
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

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PancakeV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4700ac98ee76e0d63598e2bfc24a2646fdf3649a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0238200679ce049f2dc3c335ae817d594885d489` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388780 | `0x0fcfe33b46e5b21e5e96b722d4c85510198f9255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ed6051389f66b9d96a7bf2cd7a5e67e708f1a0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bd86707412fadc3b453558ac32013e7d82a54c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88c5b935c63a047898dbbebc6af294cc7df626e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88fa770e4408b8b5ef7b6d0d42d29d321a31b7a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa033ab0640ed86206aefa73db81b4ee659b7bde3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc7dee0f48ca7aa4e9b7603329b0fc4b5e462d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5bd1f7a3ea6185a62132b68ac1ade451e6e8ddc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6dd93ee31a7ab7c7ee5e05a995d66b486039f2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda7ac01474da9398bd0b26f9fb62117a13bbac68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf07c9c82438e7f53091bf8669ffee9bd256b0e8` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 11
- Live contracts: 0
- Unknown liveness contracts: 11
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=11

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0238200679ce049f2dc3c335ae817d594885d489` | non_address_book | unknown | unknown | unverified | n/a | `0x5a35db4e3a91be40f6c53545121fb6b9ca366ad9` |
| unverified unclassified | UnnamedContract<br>`0x1ed6051389f66b9d96a7bf2cd7a5e67e708f1a0e` | non_address_book | unknown | unknown | unverified | n/a | `0x5a35db4e3a91be40f6c53545121fb6b9ca366ad9` |
| unverified unclassified | UnnamedContract<br>`0x2bd86707412fadc3b453558ac32013e7d82a54c2` | non_address_book | unknown | unknown | unverified | n/a | `0x5a35db4e3a91be40f6c53545121fb6b9ca366ad9` |
| unverified unclassified | UnnamedContract<br>`0x88c5b935c63a047898dbbebc6af294cc7df626e7` | non_address_book | unknown | unknown | unverified | n/a | `0x5a35db4e3a91be40f6c53545121fb6b9ca366ad9` |
| unverified unclassified | UnnamedContract<br>`0x88fa770e4408b8b5ef7b6d0d42d29d321a31b7a8` | non_address_book | unknown | unknown | unverified | n/a | `0x5a35db4e3a91be40f6c53545121fb6b9ca366ad9` |
| unverified unclassified | UnnamedContract<br>`0xa033ab0640ed86206aefa73db81b4ee659b7bde3` | non_address_book | unknown | unknown | unverified | n/a | `0x5a35db4e3a91be40f6c53545121fb6b9ca366ad9` |
| unverified unclassified | UnnamedContract<br>`0xbc7dee0f48ca7aa4e9b7603329b0fc4b5e462d38` | non_address_book | unknown | unknown | unverified | n/a | `0x5a35db4e3a91be40f6c53545121fb6b9ca366ad9` |
| unverified unclassified | UnnamedContract<br>`0xc5bd1f7a3ea6185a62132b68ac1ade451e6e8ddc` | non_address_book | unknown | unknown | unverified | n/a | `0x5a35db4e3a91be40f6c53545121fb6b9ca366ad9` |
| unverified unclassified | UnnamedContract<br>`0xd6dd93ee31a7ab7c7ee5e05a995d66b486039f2a` | non_address_book | unknown | unknown | unverified | n/a | `0x5a35db4e3a91be40f6c53545121fb6b9ca366ad9` |
| unverified unclassified | UnnamedContract<br>`0xda7ac01474da9398bd0b26f9fb62117a13bbac68` | non_address_book | unknown | unknown | unverified | n/a | `0x5a35db4e3a91be40f6c53545121fb6b9ca366ad9` |
| unverified unclassified | UnnamedContract<br>`0xdf07c9c82438e7f53091bf8669ffee9bd256b0e8` | non_address_book | unknown | unknown | unverified | n/a | `0x5a35db4e3a91be40f6c53545121fb6b9ca366ad9` |

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
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

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
