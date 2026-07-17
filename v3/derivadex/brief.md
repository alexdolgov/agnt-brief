# Agentic Audit Brief: DerivaDEX

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

- Project: DerivaDEX (`derivadex`)
- Website: [http://derivadex.com](http://derivadex.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bob, bsc, celo, ethereum, gnosis, ink, linea, mantle, monad, optimism, polygon, scroll, sepolia, sonic, unichain, zksync-era
- Contract surface: 22 unique implementations (22 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $608,327.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for DerivaDEX in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 19 contracts are derived from known codebases. 19 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3e64cd889482443324f91bfa9c84fe72a511f48a`, chain 1)
- UnnamedContract (`0xab93491064aee774be4b8a1cffe4421f5b124f4e`, chain 1)
- UnnamedContract (`0x71c5cc2aeb9fa812ca360e9bac7108fc23312cdd`, chain 10)
- UnnamedContract (`0x141f4278a5d71070dc09ca276b72809b80f20ef0`, chain 56)
- UnnamedContract (`0xab93491064aee774be4b8a1cffe4421f5b124f4e`, chain 100)
- UnnamedContract (`0xab93491064aee774be4b8a1cffe4421f5b124f4e`, chain 130)
- UnnamedContract (`0xab93491064aee774be4b8a1cffe4421f5b124f4e`, chain 137)
- UnnamedContract (`0x2c4936af7c8867e62daf9874519239dbe6b6dffd`, chain 143)
- UnnamedContract (`0x141f4278a5d71070dc09ca276b72809b80f20ef0`, chain 146)
- UnnamedContract (`0xc370405879c1ab0470604679e3275a02bcb89c91`, chain 324)
- UnnamedContract (`0x141f4278a5d71070dc09ca276b72809b80f20ef0`, chain 5000)
- UnnamedContract (`0x71c5cc2aeb9fa812ca360e9bac7108fc23312cdd`, chain 8453)
- UnnamedContract (`0x20551b03c092d998b1410c47bd54004d7c3106d0`, chain 42161)
- UnnamedContract (`0xab93491064aee774be4b8a1cffe4421f5b124f4e`, chain 42220)
- UnnamedContract (`0x71c5cc2aeb9fa812ca360e9bac7108fc23312cdd`, chain 43114)
- UnnamedContract (`0xab93491064aee774be4b8a1cffe4421f5b124f4e`, chain 57073)
- UnnamedContract (`0xab93491064aee774be4b8a1cffe4421f5b124f4e`, chain 59144)
- UnnamedContract (`0xab93491064aee774be4b8a1cffe4421f5b124f4e`, chain 60808)
- UnnamedContract (`0x141f4278a5d71070dc09ca276b72809b80f20ef0`, chain 534352)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 19/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 19 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 19 of 22 unique; 3 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 22
- Raw deployments: 22
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
| DDX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a880652f47bfaa771908c07dd8673a787daed3a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3de960fe090bfec72f585347fa0a27cf96a83b36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235269 | `0x3e64cd889482443324f91bfa9c84fe72a511f48a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-235270 | `0xab93491064aee774be4b8a1cffe4421f5b124f4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-235271 | `0x71c5cc2aeb9fa812ca360e9bac7108fc23312cdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-235284 | `0x141f4278a5d71070dc09ca276b72809b80f20ef0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-235272 | `0xab93491064aee774be4b8a1cffe4421f5b124f4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-235274 | `0xab93491064aee774be4b8a1cffe4421f5b124f4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235275 | `0xab93491064aee774be4b8a1cffe4421f5b124f4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-235276 | `0x2c4936af7c8867e62daf9874519239dbe6b6dffd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-235277 | `0x141f4278a5d71070dc09ca276b72809b80f20ef0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-235278 | `0xc370405879c1ab0470604679e3275a02bcb89c91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-235282 | `0x141f4278a5d71070dc09ca276b72809b80f20ef0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-235288 | `0x71c5cc2aeb9fa812ca360e9bac7108fc23312cdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-235279 | `0x20551b03c092d998b1410c47bd54004d7c3106d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-235280 | `0xab93491064aee774be4b8a1cffe4421f5b124f4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-235281 | `0x71c5cc2aeb9fa812ca360e9bac7108fc23312cdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-235285 | `0xab93491064aee774be4b8a1cffe4421f5b124f4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-235286 | `0xab93491064aee774be4b8a1cffe4421f5b124f4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-235287 | `0xab93491064aee774be4b8a1cffe4421f5b124f4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-235283 | `0x141f4278a5d71070dc09ca276b72809b80f20ef0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-235273 | `0x447fd5ec2d383091c22b8549cb231a3bad6d3faf` | ❓ Unverified |

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
| needs_review | 21 |

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
