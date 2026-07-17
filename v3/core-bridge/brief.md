# Agentic Audit Brief: CORE Bridge

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

- Project: CORE Bridge (`core-bridge`)
- Website: [https://bridge.coredao.org/bridge](https://bridge.coredao.org/bridge)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, optimism, polygon
- Contract surface: 30 unique implementations (33 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,738,707.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for CORE Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, optimism, polygon. Structural roles: 4 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: supporting (4)
- Contract kinds: contract (4)
- Detected standards: ownable (4)
- Frameworks: openzeppelin (4), layerzero (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x29d096cd18c0da7500295f082da73316d704031a`, chain 10)
- UnnamedContract (`0x52e75d318cfb31f9a2edfa2dfee26b161255b233`, chain 56)
- UnnamedContract (`0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c`, chain 56)
- UnnamedContract (`0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c`, chain 56)
- OriginalTokenBridge (`0x52e75d318cfb31f9a2edfa2dfee26b161255b233`, chain 1)
- OriginalTokenBridge (`0x52e75d318cfb31f9a2edfa2dfee26b161255b233`, chain 137)
- OriginalTokenBridge (`0x84fb2086fed7b3c9b3a4bc559f60ffaa91507879`, chain 8453)
- OriginalTokenBridge (`0x29d096cd18c0da7500295f082da73316d704031a`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/28 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 20 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations shown in the inventory but excluded from coverage (20 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 8 of 30 unique; 22 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 30
- Raw deployments: 33
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
| OriginalTokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x07a8590418edb7a60d9dea5a02b22b0afd3fc1e2`; ethereum `0xa4218e1f39da4aadac971066458db56e901bcbde`; polygon `0x07a8590418edb7a60d9dea5a02b22b0afd3fc1e2`; polygon `0xa4218e1f39da4aadac971066458db56e901bcbde` | ⚠️ Unaudited |
| OriginalTokenBridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-233325 | `0x52e75d318cfb31f9a2edfa2dfee26b161255b233` | ⚠️ Unaudited |
| OriginalTokenBridge | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-233335 | `0x52e75d318cfb31f9a2edfa2dfee26b161255b233` | ⚠️ Unaudited |
| OriginalTokenBridge | operational_periphery | project_anchor | own_supporting | 0 | base | unit-233364 | `0x84fb2086fed7b3c9b3a4bc559f60ffaa91507879` | ⚠️ Unaudited |
| OriginalTokenBridge | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-233337 | `0x29d096cd18c0da7500295f082da73316d704031a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233324 | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233326 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233327 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-233328 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-233329 | `0x0b2c639c533813f4aa9d7837caf62653d097ff85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-233330 | `0x29d096cd18c0da7500295f082da73316d704031a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-233331 | `0x68f180fcce6836688e9084f035309e29bf0a2095` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-233332 | `0x94b008aa00579c1307b0ef2c499ad98a8ce58e58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-233349 | `0x52e75d318cfb31f9a2edfa2dfee26b161255b233` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-233351 | `0x55d398326f99059ff775485246999027b3197955` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-233353 | `0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-233355 | `0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-233357 | `0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-233333 | `0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-233334 | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-233336 | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-233360 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-233362 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-233338 | `0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-233340 | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-233342 | `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29d096cd18c0da7500295f082da73316d704031a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-233343 | `0x50b7545627a5162f82a992c33b87adc75187b218` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-233345 | `0x9702230a8ea53601f5cd2dc00fdbc13d4df4a8c7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | avalanche | unit-233347 | `0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e` | ❓ Unverified |

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
| ethereum | `0x52e75d318cfb31f9a2edfa2dfee26b161255b233` | OriginalTokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x52e75d318cfb31f9a2edfa2dfee26b161255b233` | OriginalTokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x84fb2086fed7b3c9b3a4bc559f60ffaa91507879` | OriginalTokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x29d096cd18c0da7500295f082da73316d704031a` | OriginalTokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 25 |

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
