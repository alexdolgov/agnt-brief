# Agentic Audit Brief: Tether Gold

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

- Project: Tether Gold (`tether-gold`)
- Website: [https://gold.tether.to/](https://gold.tether.to/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, celo, ethereum, ink, plasma, polygon
- Contract surface: 31 unique implementations (31 raw deployments)
- Coverage basis: 0/12 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,857,217,272.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Tether Gold. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across arbitrum, avalanche, celo, ethereum, ink, plasma, polygon. Structural roles: 12 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: unclassified (12)
- Contract kinds: contract (12)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 14 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x687496...782f38`, chain 1)
- UnnamedContract (`0xb9c232...fd696c`, chain 1)
- UnnamedContract (`0x5421cf...49e352`, chain 137)
- UnnamedContract (`0xf1815b...045d14`, chain 137)
- UnnamedContract (`0x1b64b9...d4d193`, chain 9745)
- UnnamedContract (`0x63ab93...08e6f7`, chain 9745)
- UnnamedContract (`0x404612...0d7159`, chain 42161)
- UnnamedContract (`0xf40542...b6df39`, chain 42161)
- UnnamedContract (`0x21caef...96a3bf`, chain 42220)
- UnnamedContract (`0xaf37e8...0847ff`, chain 42220)
- UnnamedContract (`0x2775d5...d1dd32`, chain 43114)
- UnnamedContract (`0x7e7866...ba9a68`, chain 43114)
- UnnamedContract (`0xa1be15...a0dab2`, chain 57073)
- UnnamedContract (`0xf50258...b50dac`, chain 57073)

## Contract Surface Quality

- Logic-topography rows: 12; live-surface rows included: 12 (12 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/12 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 17 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 14 of 31 unique; 17 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/29
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 31
- Raw deployments: 31
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

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CeloOFTExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x207059...fd7e4c` | ⚠️ Unaudited |
| DaoModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3de7a4...8a398a` | ⚠️ Unaudited |
| DVFInterface2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6197...b684d5` | ⚠️ Unaudited |
| DVFInterface3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa297ec...319212` | ⚠️ Unaudited |
| DVFInterface4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7de1f0...645a15` | ⚠️ Unaudited |
| FeeCurrencyWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x0357ee...1880c4` | ⚠️ Unaudited |
| NectarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fae7b...b851b7` | ⚠️ Unaudited |
| OUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0200c2...8470c1` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x01bff4...bc1071` | ⚠️ Unaudited |
| RevokableVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b31b2...1f61e5` | ⚠️ Unaudited |
| SignatureChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6d2053...432c35` | ⚠️ Unaudited |
| SupporterVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0302f7...7b63b2` | ⚠️ Unaudited |
| TetherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x354f86...d9ba87` | ⚠️ Unaudited |
| TetherTokenEURTV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde706e...bd5c7d` | ⚠️ Unaudited |
| TetherTokenOFTExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x07cfc1...e42e1f` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05e364...4c9a27` | ⚠️ Unaudited |
| TreasuryVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65d57b...4c0ce9` | ⚠️ Unaudited |
| UnnamedContract | token | project_anchor | own_supporting | 0 | ethereum | unit-394009 | `0x687496...782f38` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | ethereum | unit-394010 | `0xb9c232...fd696c` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | polygon | unit-394011 | `0x5421cf...49e352` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | polygon | unit-394012 | `0xf1815b...045d14` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | plasma | unit-394021 | `0x1b64b9...d4d193` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | plasma | unit-394022 | `0x63ab93...08e6f7` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-394013 | `0x404612...0d7159` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-394014 | `0xf40542...b6df39` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | celo | unit-394015 | `0x21caef...96a3bf` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | celo | unit-394016 | `0xaf37e8...0847ff` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | avalanche | unit-394017 | `0x2775d5...d1dd32` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | avalanche | unit-394018 | `0x7e7866...ba9a68` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | ink | unit-394019 | `0xa1be15...a0dab2` | ❓ Unverified |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | ink | unit-394020 | `0xf50258...b50dac` | ❓ Unverified |

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
| native | 16 |
| upstream | 0 |
| standard_library | 1 |
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
