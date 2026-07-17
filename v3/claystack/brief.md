# Agentic Audit Brief: ClayStack

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

- Project: ClayStack (`claystack`)
- Website: [https://claystack.com/](https://claystack.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, polygon
- Contract surface: 14 unique implementations (14 raw deployments)
- Coverage basis: 0/13 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,554,107.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for ClayStack. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across ethereum, polygon. Structural roles: 7 core, 6 supporting. 8 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (7), supporting (6)
- Contract kinds: contract (13)
- Detected standards: erc1967proxy (8), accesscontrol (3), erc165 (3), erc20 (3), pausable (3)
- Frameworks: openzeppelin (10), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 8

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x09ba4ec4769fd1c65f47f3006616182461182150`, chain 1)
- UnnamedContract (`0x324eba6a72610b189c902ae6f80f2695d2a68a00`, chain 1)
- UnnamedContract (`0x331312dabaf3d69138c047aac278c9f9e0e8fff8`, chain 1)
- UnnamedContract (`0x349405b80c8bafd74da9d4308f3c7b60b4bf10e5`, chain 1)
- UnnamedContract (`0x38b7bf4eecf3eb530b1529c9401fc37d2a71a912`, chain 1)
- UnnamedContract (`0x41446668f264f493633aceebd811faa16605cb88`, chain 1)
- UnnamedContract (`0x5d74468b69073f809d4fae90afec439e69bf6263`, chain 1)
- UnnamedContract (`0x82e0707abd5f6e25c06af00d7dc7cf1939b19c92`, chain 1)
- UnnamedContract (`0x87f733afb5e39b908cf8633501181e2c5808146c`, chain 1)
- UnnamedContract (`0x92693f9edb8dd60e4332775d4b877b1c88092995`, chain 1)
- UnnamedContract (`0xa360690676d2ad036b1426496afe53ae46f3cef3`, chain 1)
- UnnamedContract (`0xdcf7dbe6865e52409a0fa2b4b23433db2af3646f`, chain 1)
- UnnamedContract (`0xfcbb00df1d663eee58123946a30ab2138bf9eb2a`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 13; live-surface rows included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/13 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 13 of 14 unique; 1 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/13
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 1
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

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | proxy | project_anchor | own_supporting | 0 | ethereum | unit-381687 | `0x09ba4ec4769fd1c65f47f3006616182461182150` | ⚠️ Unaudited |
| UnnamedContract | governance | project_anchor | own_supporting | 0 | ethereum | unit-381688 | `0x324eba6a72610b189c902ae6f80f2695d2a68a00` | ⚠️ Unaudited |
| UnnamedContract | proxy | project_anchor | own_supporting | 0 | ethereum | unit-381689 | `0x331312dabaf3d69138c047aac278c9f9e0e8fff8` | ⚠️ Unaudited |
| UnnamedContract | proxy | project_anchor | own_supporting | 0 | ethereum | unit-381690 | `0x349405b80c8bafd74da9d4308f3c7b60b4bf10e5` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-381691 | `0x38b7bf4eecf3eb530b1529c9401fc37d2a71a912` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-381692 | `0x41446668f264f493633aceebd811faa16605cb88` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-381693 | `0x5d74468b69073f809d4fae90afec439e69bf6263` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-381694 | `0x82e0707abd5f6e25c06af00d7dc7cf1939b19c92` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-381695 | `0x87f733afb5e39b908cf8633501181e2c5808146c` | ⚠️ Unaudited |
| UnnamedContract | governance | project_anchor | own_supporting | 0 | ethereum | unit-381696 | `0x92693f9edb8dd60e4332775d4b877b1c88092995` | ⚠️ Unaudited |
| UnnamedContract | proxy | project_anchor | own_supporting | 0 | ethereum | unit-381697 | `0xa360690676d2ad036b1426496afe53ae46f3cef3` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-381698 | `0xdcf7dbe6865e52409a0fa2b4b23433db2af3646f` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | polygon | unit-381700 | `0xfcbb00df1d663eee58123946a30ab2138bf9eb2a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-381699 | `0x7ed6390f38d554b8518ef30b925b46972e768af8` | ❓ Unverified |

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
