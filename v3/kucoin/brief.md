# Agentic Audit Brief: KuCoin

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

- Project: KuCoin (`kucoin`)
- Website: [https://www.kucoin.com](https://www.kucoin.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, kava, optimism, polygon
- Contract surface: 11 unique implementations (11 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $2,329,463,509.59
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for KuCoin in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 11
- Raw deployments: 11
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

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-149129 | `0x175ce6204bfda2a509c7e9c786b74407f569c9cc` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-149127 | `0x9fa3e93531c85d61fd76e80020d4565b134d26ba` | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-149126 | `0x689fab0352b442f9d3cce68afbb348fcfa317ccf` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-149128 | `0x17a30350771d02409046a683b18fe1c13ccfc4a8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x446b86a33e2a438f569b15855189e3da28d027ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62fe3024c521dfed093b6d895c83fc09815b854a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb8e6d31e7b212b2b7250ee9c26c56cebbfbe6b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2538accb846bdb067bf38f3dced04f4859d9eadd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb3a7761e1931692662570fda99a00a0b24ff9b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d0362fd02e0f5427d2ea3e937020a8005f3bf16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78ca07d08a80f3f19c8f664db3d497da2aca4cb7` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 6
- Live contracts: 0
- Unknown liveness contracts: 6
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=6

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x446b86a33e2a438f569b15855189e3da28d027ba` | non_address_book | unknown | unknown | unverified | n/a | `0x302257e675afe52a30ecb401321c73a68a0c71ca` |
| unverified unclassified | UnnamedContract<br>`0x62fe3024c521dfed093b6d895c83fc09815b854a` | non_address_book | unknown | unknown | unverified | n/a | `0x302257e675afe52a30ecb401321c73a68a0c71ca` |
| unverified unclassified | UnnamedContract<br>`0x2538accb846bdb067bf38f3dced04f4859d9eadd` | non_address_book | unknown | unknown | unverified | n/a | `0x7b027a004bbd3d4abb3c916d6e7609c773482ba7` |
| unverified unclassified | UnnamedContract<br>`0xcb3a7761e1931692662570fda99a00a0b24ff9b1` | non_address_book | unknown | unknown | unverified | n/a | `0x7b027a004bbd3d4abb3c916d6e7609c773482ba7` |
| unverified unclassified | UnnamedContract<br>`0x3d0362fd02e0f5427d2ea3e937020a8005f3bf16` | non_address_book | unknown | unknown | unverified | n/a | `0xb17575853c04cb44f86b996c39e50a65180eb017` |
| unverified unclassified | UnnamedContract<br>`0x78ca07d08a80f3f19c8f664db3d497da2aca4cb7` | non_address_book | unknown | unknown | unverified | n/a | `0xb17575853c04cb44f86b996c39e50a65180eb017` |

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
| native | 2 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 7 |

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
