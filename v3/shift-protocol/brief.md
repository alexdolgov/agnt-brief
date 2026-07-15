# Agentic Audit Brief: Shift Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Shift Protocol (`shift-protocol`)
- Website: [https://shiftprotocol.xyz](https://shiftprotocol.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base
- Contract surface: 9 unique implementations (24 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $794,768.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Shift Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, base. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1), prb-math (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ShiftVault (`0xaf69bf...ed1e0e`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 8 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 9 unique; 8 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/9
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 24
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 11.1% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ShiftVault | core_logic | project_anchor | own_supporting | 0 | base | unit-392402 | `0xaf69bf...ed1e0e` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ExitWindow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x106f8a...4a9723`; base `0x19b32b...3198f4`; base `0x4ace31...0ee753`; base `0x878589...4e1562`; base `0xe98d8f...ab0aba` | ⚠️ Unaudited |
| extUSDSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5453a2...7a3df4` | ⚠️ Unaudited |
| ltPARASY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x12bb79...a76123` | ⚠️ Unaudited |
| ShiftAccessControl | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x092b55...d3132e`; base `0x35305e...a61ce6`; base `0x3ccc08...dc2773`; base `0x52dc22...326b56` | ⚠️ Unaudited |
| ShiftMonoData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5457ea...bea196` | ⚠️ Unaudited |
| ShiftTvlFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x505171...9e6285`; base `0x619681...40f19b`; base `0x8a04ac...b9f110`; base `0xdbe599...ff67d3` | ⚠️ Unaudited |
| ShiftVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x4ce3ec...1aa2e1`; base `0x89d63c...8a36b0`; base `0x8d8d46...872327`; arbitrum `0x6d7c89...7ae3c2`; arbitrum `0x7174f0...0a10bd`; arbitrum `0x956bdd...cb6964` | ⚠️ Unaudited |
| SupplyValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x446a68...5f97be` | ⚠️ Unaudited |

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
| [shift-sbsecurity-audit-2025.pdf](https://github.com/SHIFT-NebulaLabs/shift-contracts/blob/main/audits/shift-sbsecurity-audit-2025.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | matched | 1 | 0 | 0 | 5 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13826] shift-sbsecurity-audit-2025.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| shift-sbsecurity-audit-2025.pdf | AccessModifier | unmatched — not counted | — | — | no |
| shift-sbsecurity-audit-2025.pdf | Constants | unmatched — not counted | — | — | no |
| shift-sbsecurity-audit-2025.pdf | ShiftAccessControl | unmatched — not counted | — | — | no |
| shift-sbsecurity-audit-2025.pdf | ShiftManager | unmatched — not counted | — | — | no |
| shift-sbsecurity-audit-2025.pdf | ShiftTvlFeed | unmatched — not counted | — | — | no |
| shift-sbsecurity-audit-2025.pdf | ShiftVault | own contract | ShiftVault (selected) `0xaf69bf...ed1e0e` — deployed 2025-09-18 16:15:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=1

Fork inheritance lineage and inherited audits are included when available.
