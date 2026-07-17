# Agentic Audit Brief: Punks Terminal

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Punks Terminal (`punks-terminal`)
- Website: [https://punks.lightyear.build/stash](https://punks.lightyear.build/stash)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 10 unique implementations (17 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,331,494.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Punks Terminal. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: ownable (1)
- Frameworks: solady (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- StashFactory (`0x000000000000a6fa31f5fc51c1640aac76866750`, chain 1)

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
- Outside the address book: 9 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 10 unique; 9 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 17
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

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Autoglyphs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4e4078ca3495de5b1d4db434bebc5a986197782` | ⚠️ Unaudited |
| CryptoPunks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ba6f2207e343923ba692e5cae646fb0f566db8d` | ⚠️ Unaudited |
| CryptoPunks721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000000000003607fce1ac9e043a86675c5c2f` | ⚠️ Unaudited |
| CryptopunksData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16f5a35647d6f03d5d3da7b35409d65ba03af3b2` | ⚠️ Unaudited |
| CryptoPunksMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb` | ⚠️ Unaudited |
| Meebits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bd29408f11d2bfc23c34f18275bbf23bb716bc7` | ⚠️ Unaudited |
| PunkTransferHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000000000748d91de137891483c6f2f312272` | ⚠️ Unaudited |
| Stash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x00000000000060d035a8002956b5fb02e3968eec`; ethereum `0x32b26224a937c9de1efc0cbbad71c835b8f90d7e`; ethereum `0x436f079edb456f7feb36ebfef59467ea22b8f6fc`; ethereum `0xa3c22ee54e4dce534229bcdd71c346bc1e3a6f23`; ethereum `0xccb0082ff1d696b8a996e8db81fe9ac39ed1e925`; ethereum `0xe4f74112b54e7261903baedb941797be296460ce`; ethereum `0xf30c1e83e91d17f259cdca5a819bc8ad9173090f`; ethereum `0xf78baae3e2c597ac7f994106e8914ecf6cb8c860` | ⚠️ Unaudited |
| StashFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-391213 | `0x000000000000a6fa31f5fc51c1640aac76866750` | ⚠️ Unaudited |
| WrappedPunk | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7f7f6c52f2e2fdb1963eab30438024864c313f6` | ⚠️ Unaudited |

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

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x000000000000a6fa31f5fc51c1640aac76866750` | StashFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
