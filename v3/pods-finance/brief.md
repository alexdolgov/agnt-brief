# Agentic Audit Brief: Pods Finance

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

- Project: Pods Finance (`pods-finance`)
- Website: [https://yield.pods.finance](https://yield.pods.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, polygon
- Contract surface: 20 unique implementations (20 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $387,920.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Pods Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6b175474e89094c44da98b954eedeac495271d0f`, chain 1)
- UnnamedContract (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- UnnamedContract (`0xe4da64757b2b29db43429a52caf7ad884c76f8b0`, chain 1)
- UnnamedContract (`0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270`, chain 137)
- UnnamedContract (`0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6`, chain 137)
- UnnamedContract (`0x2791bca1f2de4661ed88a30c99a7a9449aa84174`, chain 137)
- UnnamedContract (`0x3294027e4849b1b3155f8b0477bfa37994bb322f`, chain 137)
- UnnamedContract (`0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39`, chain 137)
- UnnamedContract (`0x6e20f296e79cc7a62737fedcf9a87fa32f373864`, chain 137)
- UnnamedContract (`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`, chain 137)
- UnnamedContract (`0x8f3cf7ad23cd3cadbd9735aff958023239c6a063`, chain 137)
- UnnamedContract (`0x9719d867a500ef117cc201206b8ab51e794d3f82`, chain 137)
- UnnamedContract (`0xabd65b1b125e12abb2f7bdeae57e62a6272e8797`, chain 137)
- UnnamedContract (`0xe0b22e0037b130a9f56bbb537684e6fa18192341`, chain 137)
- UnnamedContract (`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`, chain 42161)
- UnnamedContract (`0x84601612702c7699c09bbf3c033747709f529008`, chain 42161)
- UnnamedContract (`0xff970a61a04b1ca14834a43f5de4533ebddb5cc8`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/25 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 3 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 17 of 20 unique; 3 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 20
- Raw deployments: 20
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

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ETHoriaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fe4b38520e856921978715c8579d2d7a4d2274f` | ⚠️ Unaudited |
| FUDVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x287f941ab4b5aadad2f13f9363fcec8ee312a969` | ⚠️ Unaudited |
| STETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x463f9ed5e11764eb9029762011a03643603ad879` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391048 | `0x6b175474e89094c44da98b954eedeac495271d0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391049 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391052 | `0xe4da64757b2b29db43429a52caf7ad884c76f8b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391055 | `0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391056 | `0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391057 | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391058 | `0x3294027e4849b1b3155f8b0477bfa37994bb322f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391059 | `0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391060 | `0x6e20f296e79cc7a62737fedcf9a87fa32f373864` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391061 | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391062 | `0x8f3cf7ad23cd3cadbd9735aff958023239c6a063` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391063 | `0x9719d867a500ef117cc201206b8ab51e794d3f82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391064 | `0xabd65b1b125e12abb2f7bdeae57e62a6272e8797` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391065 | `0xe0b22e0037b130a9f56bbb537684e6fa18192341` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391066 | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391067 | `0x84601612702c7699c09bbf3c033747709f529008` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391068 | `0xff970a61a04b1ca14834a43f5de4533ebddb5cc8` | ❓ Unverified |

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
| native | 3 |
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
