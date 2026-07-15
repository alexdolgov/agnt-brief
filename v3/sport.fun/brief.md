# Agentic Audit Brief: Sport.fun

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

- Project: Sport.fun (`sport.fun`)
- Website: [https://pro.sport.fun](https://pro.sport.fun)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 37 unique implementations (70 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $2,942,863.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Sport.fun in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

- UnnamedContract (`0x16ee7e...a7dd92`, chain 8453)

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
- Outside the address book: 36 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 22
- Confirmed-live implementations: 1 of 37 unique; 36 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/36
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 37
- Raw deployments: 70
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

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DevelopmentPlayers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x292fad...9f6bac`; base `0x602091...1d6ba9` | ⚠️ Unaudited |
| DevelopmentPlayersV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x216491...8464f1`; base `0xc98bf3...6dacf9` | ⚠️ Unaudited |
| DevelopmentPlayersV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x48d29e...1185a5`; base `0xc21c2d...541965` | ⚠️ Unaudited |
| FDFFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1637f0...8de115`; base `0xc5e617...e5bc79` | ⚠️ Unaudited |
| FDFFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x175799...e4bfce`; base `0xfa664e...1633c4` | ⚠️ Unaudited |
| FDFPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x4f91bc...d5e388`; base `0x920cb9...981bd0` | ⚠️ Unaudited |
| FDFPairV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x1071d4...449d4e`; base `0x95d691...d95b4c` | ⚠️ Unaudited |
| FDFPairV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x0a1b8a...f5599f`; base `0x3433e7...f57a72` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xcbf41e...5f8497`; base `0xf69ef8...64ea87` | ⚠️ Unaudited |
| FeeManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x2fcb5e...e71cf9`; base `0xc7d627...85302c` | ⚠️ Unaudited |
| FeeManagerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x079793...0f3757` | ⚠️ Unaudited |
| FeeManagerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5a0e0b...459830`; base `0xbac4a9...36305d` | ⚠️ Unaudited |
| Fun | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2ce345...25bb9a`; base `0x8a2530...7cedcb` | ⚠️ Unaudited |
| PackSale | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0a7e01...7f9640`; base `0x3efdde...95a961` | ⚠️ Unaudited |
| PackSale | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x104bf5...872ae2`; base `0x68042f...30a466` | ⚠️ Unaudited |
| PackSale | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1f7762...4a4dad`; base `0x5422ec...921e45` | ⚠️ Unaudited |
| PackSale | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3dac7d...d7e15f`; base `0xfa15ea...81d255` | ⚠️ Unaudited |
| PackSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x448599...e127b3` | ⚠️ Unaudited |
| PackSale | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7a3a8a...786e6a`; base `0xe807e3...78f591` | ⚠️ Unaudited |
| PackSaleReveal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x17345c...5b6354`; base `0x4fb35d...be09e4` | ⚠️ Unaudited |
| PackSaleReveal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2bf909...2c1b66`; base `0xa15910...d49d5c` | ⚠️ Unaudited |
| PackSaleReveal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3b14ac...b9ea11`; base `0x8e015e...36d122` | ⚠️ Unaudited |
| PackSaleReveal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x77c7ff...b728d0`; base `0x7f7b8a...4d47f2` | ⚠️ Unaudited |
| Player | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x31b078...0e2a59`; base `0xfa2e6d...131648` | ⚠️ Unaudited |
| PlayerContracts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x5792f6...dd1b45`; base `0x63f3f8...9209a5` | ⚠️ Unaudited |
| PlayerContractsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x282324...5230f2`; base `0xe7a8dd...20b1f7` | ⚠️ Unaudited |
| PlayerContractsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6f0bdf...2dd470`; base `0xa983c2...062778` | ⚠️ Unaudited |
| PlayerPack | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x1a2304...cf62eb`; base `0x882148...1b6635` | ⚠️ Unaudited |
| PlayerPackV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x577003...f2c507`; base `0x70dd11...c50085` | ⚠️ Unaudited |
| PlayerPackV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1f6919...0cf405`; base `0xe7cfd9...12a58c` | ⚠️ Unaudited |
| PlayerPackV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xb0a100...072b32`; base `0xc2df94...2d3e8d` | ⚠️ Unaudited |
| PlayerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x1b30c1...25b7e0`; base `0x7f17c0...f1ac64` | ⚠️ Unaudited |
| PlayerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2eef46...d35b56`; base `0xf0da45...49d746` | ⚠️ Unaudited |
| PlayerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x71c8b0...a16918`; base `0xcc647f...043208` | ⚠️ Unaudited |
| RewardsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2e8e74...1b8ed7`; base `0xfd4c27...dae866` | ⚠️ Unaudited |
| SimpleMultisender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x40cdf1...0139d3` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392953 | `0x16ee7e...a7dd92` | ❓ Unverified |

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
| native | 36 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

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
