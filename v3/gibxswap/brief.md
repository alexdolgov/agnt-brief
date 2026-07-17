# Agentic Audit Brief: GIBXSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: GIBXSwap (`gibxswap`)
- Website: [https://gibxswap.io/](https://gibxswap.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 28 unique implementations (28 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $595,805.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for GIBXSwap in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 14 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 14 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 28
- Raw deployments: 28
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GIBXBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-142245 | `0x63d2756537ab0b10c1a3578b0755417e5f608536` | ⚠️ Unaudited |
| GIBXFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-142246 | `0x97bcd9bb482144291d77ee53bfa99317a82066e8` | ⚠️ Unaudited |
| GIBXRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-142237 | `0x253fe2c76728c98fc18bb52e9a0ba8522be15aa5` | ⚠️ Unaudited |
| GIBXSwapFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-142235 | `0x10a55ac513d202721be12eb40cd29b5b5dbf47d0` | ⚠️ Unaudited |
| GIBXToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-142234 | `0x004eda9c37660387e424872b0cf25323fdd7f620` | ⚠️ Unaudited |
| ILO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-142239 | `0x299cac915a93216c35b35786c70b7e523e36005c` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-142240 | `0x29e02337fba64d61239f1140389b371127c95947` | ⚠️ Unaudited |
| MasterChefTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-142241 | `0x39f01e469c9a000b426e7196f9ff75f9ae49ed28` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-142243 | `0x572138bbbbb851be13db130297b69c330e556c2c` | ⚠️ Unaudited |
| PoolChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-142236 | `0x10ee036c8dc47e74b063f56f750b5b22d76785df` | ⚠️ Unaudited |
| PoolChefTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-142242 | `0x3d008d53e7061fdc4bfb256e6b868615dd9bb6c8` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-142244 | `0x5d9f2c265c57bb3d70636034f52f20f92ff15465` | ⚠️ Unaudited |
| SwapMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-142247 | `0xc31a355277228c1bf9a88599647faeaae664ea1f` | ⚠️ Unaudited |
| TokenLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-142238 | `0x26ce70a8404c390bdbb680a67c5b10a492323b3c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x02332c69debf4eda2857e6146ca87425f1f432e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x0e3c939cc14e5797aeaf7718210a8e94f20ba374` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x0fcc29c11b6ebedafde71e0ea114bd1eddf47d23` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x1f598e9d022e5df76070bea8bc94e0347f56e567` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x2008b6d863f5f5a678274cd3fb254fe191d65129` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x4ab507e85b148e66b5a79b34a8a7942ef368c7b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x6f5da3bc98da0c67787ff85f25d265ead296c4af` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x77a9d1aa94a0ade8515ad5b2f57066e4489aee55` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xaa2dcc97540c4a3c2ebbe5b9862c49c7d410b592` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xaad0351e32982ab22c3325f41da318955bd1934e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xaed487b71965f792af648810595b5d069e870d34` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xb816e67685b7b2d183adad9fa2aacc89f9af38bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xdba63fa240d8f4ff68c82082a48087243e2da79b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xfec95dc89baf31ddeebb9b0e413e13701d0d44c4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/gibx-swap) | CertiK | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20430] DL audit link — no match: Extracted from 'Audited Files/SHA256' section listing two files: interfaces/ISwapMining.sol and SwapMining.sol. The audit date is from 'Last Audit was delivered on 9/3/2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | ISwapMining.sol | unmatched — not counted | — | listed in Audited Files/SHA256 | no |
| DL audit link | SwapMining.sol | unmatched — not counted | — | listed in Audited Files/SHA256 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [20430] DL audit link

Fork inheritance lineage and inherited audits are included when available.
