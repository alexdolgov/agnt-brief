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

- UnnamedContract (`0x68749665ff8d2d112fa859aa293f07a622782f38`, chain 1)
- UnnamedContract (`0xb9c2321bb7d0db468f570d10a424d1cc8efd696c`, chain 1)
- UnnamedContract (`0x5421cf4288d8007d3c43ac4246eafce5b049e352`, chain 137)
- UnnamedContract (`0xf1815bd50389c46847f0bda824ec8da914045d14`, chain 137)
- UnnamedContract (`0x1b64b9025eebb9a6239575df9ea4b9ac46d4d193`, chain 9745)
- UnnamedContract (`0x63ab93cbc9d4ecd9c4947b1a38f458147c08e6f7`, chain 9745)
- UnnamedContract (`0x40461291347e1ecbb09499f3371d3f17f10d7159`, chain 42161)
- UnnamedContract (`0xf40542a7b66ad7c68c459ee3679635d2fdb6df39`, chain 42161)
- UnnamedContract (`0x21caef8a43163eea865baee23b9c2e327696a3bf`, chain 42220)
- UnnamedContract (`0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff`, chain 42220)
- UnnamedContract (`0x2775d5105276781b4b85ba6ea6a6653beed1dd32`, chain 43114)
- UnnamedContract (`0x7e7866bc840aff9f517a49afdbfc9e7c7aba9a68`, chain 43114)
- UnnamedContract (`0xa1be1572b4beef24f812efdc58bdc41d56a0dab2`, chain 57073)
- UnnamedContract (`0xf50258d3c1dd88946c567920b986a12e65b50dac`, chain 57073)

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
| CeloOFTExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x207059273474e6226a2e68085439015ad5fd7e4c` | ⚠️ Unaudited |
| DaoModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3de7a43ec8716126c819c6e4020c9f0a9b8a398a` | ⚠️ Unaudited |
| DVFInterface2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc619735fdf48bba5e2bb403e42a5d457db684d5` | ⚠️ Unaudited |
| DVFInterface3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa297ec52ac188f98a5b293bca3ff405643319212` | ⚠️ Unaudited |
| DVFInterface4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7de1f04204ef29229d84e7c0c2d1216c28645a15` | ⚠️ Unaudited |
| FeeCurrencyWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x0357ee22278c922e1d36cfe6b899269b161880c4` | ⚠️ Unaudited |
| NectarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fae7beed65b3d98ad8f1d5276387b20c6b851b7` | ⚠️ Unaudited |
| OUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0200c29006150606b650577bbe7b6248f58470c1` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x01bff41798a0bcf287b996046ca68b395dbc1071` | ⚠️ Unaudited |
| RevokableVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b31b28103754a272d7905240301ec7b2a1f61e5` | ⚠️ Unaudited |
| SignatureChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6d205337f45d6850c3c3006e28d5b52c8a432c35` | ⚠️ Unaudited |
| SupporterVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0302f75047aa0935052275e77d15c40bee7b63b2` | ⚠️ Unaudited |
| TetherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x354f861227fc9b7abf55389e0038163047d9ba87` | ⚠️ Unaudited |
| TetherTokenEURTV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde706e90f07ffa15b1783379edab3c21fbbd5c7d` | ⚠️ Unaudited |
| TetherTokenOFTExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x07cfc1de16f7ba1eb921fe570fc61a791be42e1f` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05e36403584e1f3f004dc516b5375a1e884c9a27` | ⚠️ Unaudited |
| TreasuryVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65d57b1e6570f5c636b8dd64c186ac304a4c0ce9` | ⚠️ Unaudited |
| UnnamedContract | token | project_anchor | own_supporting | 0 | ethereum | unit-394009 | `0x68749665ff8d2d112fa859aa293f07a622782f38` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | ethereum | unit-394010 | `0xb9c2321bb7d0db468f570d10a424d1cc8efd696c` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | polygon | unit-394011 | `0x5421cf4288d8007d3c43ac4246eafce5b049e352` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | polygon | unit-394012 | `0xf1815bd50389c46847f0bda824ec8da914045d14` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | plasma | unit-394021 | `0x1b64b9025eebb9a6239575df9ea4b9ac46d4d193` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | plasma | unit-394022 | `0x63ab93cbc9d4ecd9c4947b1a38f458147c08e6f7` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-394013 | `0x40461291347e1ecbb09499f3371d3f17f10d7159` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-394014 | `0xf40542a7b66ad7c68c459ee3679635d2fdb6df39` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | celo | unit-394015 | `0x21caef8a43163eea865baee23b9c2e327696a3bf` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | celo | unit-394016 | `0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | avalanche | unit-394017 | `0x2775d5105276781b4b85ba6ea6a6653beed1dd32` | ⚠️ Unaudited |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | avalanche | unit-394018 | `0x7e7866bc840aff9f517a49afdbfc9e7c7aba9a68` | ⚠️ Unaudited |

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
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | ink | unit-394019 | `0xa1be1572b4beef24f812efdc58bdc41d56a0dab2` | ❓ Unverified |
| UnnamedContract | adapter | project_anchor | own_supporting | 0 | ink | unit-394020 | `0xf50258d3c1dd88946c567920b986a12e65b50dac` | ❓ Unverified |

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
