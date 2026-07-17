# Agentic Audit Brief: Cap Finance

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

- Project: Cap Finance (`cap-finance`)
- Website: [https://cap.io/](https://cap.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum
- Contract surface: 18 unique implementations (18 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $154,606.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Cap Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, ethereum. Structural roles: 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x43044f861ec040db59a7e324c40507addb673142`, chain 1)
- UnnamedContract (`0x07b0b00b9008798055071dde6f2d343782b35dc6`, chain 42161)
- UnnamedContract (`0x10f2f3b550d98b6e51461a83ad3fe27123391029`, chain 42161)
- UnnamedContract (`0x1e91f67a5aa0137ad86eebad64e2c2a1b6ae30e5`, chain 42161)
- UnnamedContract (`0x29163356bbaf0a3bfee9ba5a52a5c6463114cb5f`, chain 42161)
- UnnamedContract (`0x5abff8f8d5b13253dcab1e427fdb3305ca620119`, chain 42161)
- UnnamedContract (`0x9190338f23be9024a9f9628e44cd169926fe7795`, chain 42161)
- UnnamedContract (`0x958cc92297e6f087f41a86125ba8e121f0fbecf2`, chain 42161)
- UnnamedContract (`0x996da299fb8247dbc2ef45299b62b897d89c01d4`, chain 42161)
- UnnamedContract (`0xb224f2689bc0afc5b6721a0807d07017d8cdddf8`, chain 42161)
- UnnamedContract (`0xbed32937d8a5d1421241f52809908f1a17d75bdb`, chain 42161)
- UnnamedContract (`0xc8cdd2ea6a5149ced1f2d225d16a775ee081c67d`, chain 42161)
- UnnamedContract (`0xcaec650502f15c1a6bff1c2288fc8f819776b2ec`, chain 42161)
- UnnamedContract (`0xceffac2522b837012b576770b6f5dd75a3f75c38`, chain 42161)
- UnnamedContract (`0xe0ccd451bb57851c1b2172c07d8b4a7c6952a54e`, chain 42161)
- StandardArbERC20 (`0x031d35296154279dc1984dcd93e392b1f946737b`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 16 of 18 unique; 2 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 18
- Raw deployments: 18
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
| StandardArbERC20 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-381612 | `0x031d35296154279dc1984dcd93e392b1f946737b` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381595 | `0x43044f861ec040db59a7e324c40507addb673142` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381596 | `0x07b0b00b9008798055071dde6f2d343782b35dc6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381597 | `0x10f2f3b550d98b6e51461a83ad3fe27123391029` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381598 | `0x1e91f67a5aa0137ad86eebad64e2c2a1b6ae30e5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-381599 | `0x283c41b726634fbd6b72aa22741b202db7e56aac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381600 | `0x29163356bbaf0a3bfee9ba5a52a5c6463114cb5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381601 | `0x5abff8f8d5b13253dcab1e427fdb3305ca620119` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381602 | `0x9190338f23be9024a9f9628e44cd169926fe7795` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381603 | `0x958cc92297e6f087f41a86125ba8e121f0fbecf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381604 | `0x996da299fb8247dbc2ef45299b62b897d89c01d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381605 | `0xb224f2689bc0afc5b6721a0807d07017d8cdddf8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381606 | `0xbed32937d8a5d1421241f52809908f1a17d75bdb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381607 | `0xc8cdd2ea6a5149ced1f2d225d16a775ee081c67d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381608 | `0xcaec650502f15c1a6bff1c2288fc8f819776b2ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381609 | `0xceffac2522b837012b576770b6f5dd75a3f75c38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381610 | `0xe0ccd451bb57851c1b2172c07d8b4a7c6952a54e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-381611 | `0xe195a15533c01c8cd6b28f09066842486f80f8f2` | ❓ Unverified |

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
| arbitrum | `0x031d35296154279dc1984dcd93e392b1f946737b` | StandardArbERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 17 |

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
