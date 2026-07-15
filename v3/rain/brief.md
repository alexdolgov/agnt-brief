# Agentic Audit Brief: Rain

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

- Project: Rain (`rain`)
- Website: [https://www.rain.one/](https://www.rain.one/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum
- Contract surface: 36 unique implementations (134 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $29,513,996.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Rain. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum. Structural roles: 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xa8640b...31f264`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 33 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 1 of 36 unique; 35 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/34
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 36
- Raw deployments: 134
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlFacet | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08d5de...25c9a9` | ⚠️ Unaudited |
| AppStorageFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf33a30...5b09e8` | ⚠️ Unaudited |
| CancelOrderFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x0921fd...ba84d7`; arbitrum `0x28bb2b...d71d15`; arbitrum `0x459da9...f307d4`; arbitrum `0x58bf2b...35ed9b`; arbitrum `0x7560cb...c566ce`; arbitrum `0x89f6c6...0ba0fc`; arbitrum `0x9b92f2...e8f8d2`; arbitrum `0xb453ac...7a00e0`; arbitrum `0xcd7647...4b4b56` | ⚠️ Unaudited |
| ClaimFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x38d3d0...2b5a52`; arbitrum `0x3e4ac1...0193a3`; arbitrum `0x53099b...1546fa`; arbitrum `0x67176e...41fec2`; arbitrum `0x6ca2ce...dda3d9`; arbitrum `0x8aa370...40a840`; arbitrum `0xbe17a4...3aa6f2`; arbitrum `0xdcc4e0...89b0f1`; arbitrum `0xe1ef15...1a4656` | ⚠️ Unaudited |
| Conduit | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x106ac3...143bae` | ⚠️ Unaudited |
| Conduit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x177d2f...05a91f`; arbitrum `0xe4de94...6dd731` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: arbitrum `0x03cfee...8d2818`; arbitrum `0x1cbeba...5f0b20`; arbitrum `0x31c463...d90c47`; arbitrum `0x3535de...659839`; arbitrum `0x487c50...20c4af`; arbitrum `0x7593f7...4d07f7`; arbitrum `0x78d3ff...ab65ff`; arbitrum `0x93edbc...406c50`; arbitrum `0x9aa7a6...0cb90c`; arbitrum `0xb55207...1bcb89` | ⚠️ Unaudited |
| DiamondInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8cc839...714231` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: arbitrum `0x002c69...ab5250`; arbitrum `0x06a437...c270ad`; arbitrum `0x8126dc...794c77`; arbitrum `0xc59314...18f607`; arbitrum `0xc5f573...8dbc14`; arbitrum `0xc69016...36ee35`; arbitrum `0xce73e0...0d164b`; arbitrum `0xd456de...4f0a1f`; arbitrum `0xd621f8...573531`; arbitrum `0xeae50b...ce020a` | ⚠️ Unaudited |
| DisputeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x058d7d...88bf68`; arbitrum `0x3224e7...409744`; arbitrum `0x3f5758...a858f2`; arbitrum `0x461b4b...ba257c`; arbitrum `0x61b803...d0baa8`; arbitrum `0x95716c...cfe8de`; arbitrum `0xb0da34...298ec5`; arbitrum `0xda29a9...b55399`; arbitrum `0xff4e16...7d65f2` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xcccb3c...3623f1` | ⚠️ Unaudited |
| GetterFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x1ea6ec...90ec38`; arbitrum `0x204103...c495b7`; arbitrum `0x2d2e23...a2f41d`; arbitrum `0x35e25d...76345a`; arbitrum `0x399123...292a9b`; arbitrum `0x3b578b...893cc2`; arbitrum `0x78d58a...d8154e`; arbitrum `0x8c6084...1a7343`; arbitrum `0xfeb0c9...3d78d9` | ⚠️ Unaudited |
| HelperFacet | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32bcb5...426b4c` | ⚠️ Unaudited |
| InfoFacet | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x0ab66d...9878a2`; arbitrum `0x43a98b...8115d7`; arbitrum `0x5adc4e...e02f26`; arbitrum `0x9fac12...bfe820`; arbitrum `0xbf9726...a044b5`; arbitrum `0xc67b30...6c0c01`; arbitrum `0xd65624...2fea98`; arbitrum `0xe15563...71bef5`; arbitrum `0xf4341d...89ed67` | ⚠️ Unaudited |
| MarketTerminationFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe6696...9ed052` | ⚠️ Unaudited |
| MarketThresholdFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x51a8c5...067d59` | ⚠️ Unaudited |
| MetadataFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1260e7...d251bf` | ⚠️ Unaudited |
| Operator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe45cee...2a46d0` | ⚠️ Unaudited |
| OracleFeeFacet | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x267c80...d9314b`; arbitrum `0x692219...278e33`; arbitrum `0x799276...029a3f`; arbitrum `0x912529...4160f7`; arbitrum `0xb9d4bf...1cab80`; arbitrum `0xcd819a...fe76e8`; arbitrum `0xcdbcea...0d3bd7`; arbitrum `0xd99eed...0f91de`; arbitrum `0xf91094...64f61d` | ⚠️ Unaudited |
| PausableFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x459a99...873649` | ⚠️ Unaudited |
| QueueFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f20d4...81416a` | ⚠️ Unaudited |
| Rain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x251182...64099d` | ⚠️ Unaudited |
| Rain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b6f86...85ddad` | ⚠️ Unaudited |
| RainDecisionDiamond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4e25b6...a5d96a` | ⚠️ Unaudited |
| RainDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x16d071...1aa686`; arbitrum `0x5fbe39...042814`; arbitrum `0x74d2b5...ffe61c`; arbitrum `0x9c7fa9...b8e694`; arbitrum `0xa2849e...0191c9`; arbitrum `0xbc3848...a9a4e1` | ⚠️ Unaudited |
| RainDiamondFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x153b10...a5a1fe`; arbitrum `0x209dd3...0b35ee`; arbitrum `0x71b8b4...613b1d`; arbitrum `0x7af3a1...0da82a`; arbitrum `0x7b4f2e...59d9f8`; arbitrum `0xa9ff29...15feea`; arbitrum `0xbe520f...ee16da`; arbitrum `0xe5a92b...7b7776`; arbitrum `0xee4760...c6e54e` | ⚠️ Unaudited |
| RainPoolDiamond | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a3682...e03b32` | ⚠️ Unaudited |
| RandomNumberService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x43f7fe...4a61bd`; arbitrum `0xcb3c3e...cb13ec` | ⚠️ Unaudited |
| RandomNumberService | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x8e4fd9...6ad086`; arbitrum `0xdc85fc...50e224` | ⚠️ Unaudited |
| Reservoir | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x3783c9...ef26b5` | ⚠️ Unaudited |
| Reservoir | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d65a0...44b144` | ⚠️ Unaudited |
| ResolutionFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x16dc01...5ae889`; arbitrum `0x17182c...5a90f9`; arbitrum `0x61b09c...05d572`; arbitrum `0x8c8a09...67d3e3`; arbitrum `0x8d60ea...b7a4b6`; arbitrum `0x910331...af8682`; arbitrum `0xb8859f...308ef4`; arbitrum `0xcf5ba3...16b874`; arbitrum `0xef9f3c...a76544` | ⚠️ Unaudited |
| TradingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x165f69...dd1bf2`; arbitrum `0x231dac...821b69`; arbitrum `0x299e09...3ceffc`; arbitrum `0x390669...9ca0c0`; arbitrum `0x719926...992fa6`; arbitrum `0xa0ce8c...8113bb`; arbitrum `0xd419fc...63bf22`; arbitrum `0xd9329b...0e42ce`; arbitrum `0xee1682...cfbdc7` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-391275 | `0xa8640b...31f264` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-391274 | `0x05b1fd...b6c1dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-391276 | `0xd4900c...6d96be` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [hacken.io/audits/rain/sca-rain-token-aug2025](https://hacken.io/audits/rain/sca-rain-token-aug2025) | Hacken | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2735] hacken.io/audits/rain/sca-rain-token-aug2025 — no match: Only one contract in scope: RainToken.sol

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| hacken.io/audits/rain/sca-rain-token-aug2025 | RainToken | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2735] hacken.io/audits/rain/sca-rain-token-aug2025

Fork inheritance lineage and inherited audits are included when available.
