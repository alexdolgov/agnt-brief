# Agentic Audit Brief: KnightSwap

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

- Project: KnightSwap (`knightswap`)
- Website: [https://knightswap.financial](https://knightswap.financial)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, fantom
- Contract surface: 23 unique implementations (35 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $875,758.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for KnightSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across bsc, fantom. Structural roles: 2 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (2), supporting (2)
- Contract kinds: contract (4)
- Detected standards: ownable (2), erc20 (1)
- Frameworks: openzeppelin (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- KnightFactory (`0xf0bc2e...90751f`, chain 56)
- KnightRouter (`0x05e61e...d6c46f`, chain 56)
- KnightToken (`0xd23811...c4abba`, chain 56)
- MasterChef (`0xe50cb7...407414`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 19 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 4 of 23 unique; 19 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 23
- Raw deployments: 35
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Astroshot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x8b1e9a...c119df`; bsc `0xf219e7...eea5b2` | ⚠️ Unaudited |
| BIGFOOT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1326be...b210be` | ⚠️ Unaudited |
| Fantomnomics | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb56b90...cd0cf8` | ⚠️ Unaudited |
| IterableMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x568763...e7900b`; bsc `0x8f3063...28a9fd` | ⚠️ Unaudited |
| IWO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x1bbee6...a55dc6`; bsc `0x29c8d8...c42d2f`; bsc `0x4bb4e6...9ea997`; bsc `0x597111...b7c94b`; bsc `0x935c82...e0880a`; bsc `0x979363...890899` | ⚠️ Unaudited |
| KnightFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-388373 | `0xf0bc2e...90751f` | ⚠️ Unaudited |
| KnightRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-388370 | `0x05e61e...d6c46f` | ⚠️ Unaudited |
| KnightToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30ee67...c066bd` | ⚠️ Unaudited |
| KnightToken | token | project_anchor | own_supporting | 0 | bsc | unit-388371 | `0xd23811...c4abba` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x246e3e...9165a6`; bsc `0x662215...1a1cec`; bsc `0xa379f5...596863`; bsc `0xf5d8c5...bc1a49` | ⚠️ Unaudited |
| MasterChef | unknown | project_anchor | own_supporting | 0 | bsc | unit-388372 | `0xe50cb7...407414` | ⚠️ Unaudited |
| NFTHELPER | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe186af...6edc34` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x300206...fa56ff` | ⚠️ Unaudited |
| Spartans | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xbcfe39...910b1e`; bsc `0xd27fae...fd864c` | ⚠️ Unaudited |
| TOKEN2NFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63a6c5...bced67` | ⚠️ Unaudited |
| Wizshot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x551c61...8bb81d`; bsc `0xa1cffa...ceee64` | ⚠️ Unaudited |
| Wizshot2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d82f5...732218` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ea8fb...9d02b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77e6d5...8b3f27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcaeb6e...ad8262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc84b3...f61620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff16d3...5ad8c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0x7d82f5...732218` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [KnightSwap.pdf](https://github.com/TechRate/Smart-Contract-Audits/blob/main/November/KnightSwap.pdf) | unknown | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13350] KnightSwap.pdf — no match: The report lists BSC scan addresses but does not provide contract names or file paths. No contract names could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xf0bc2e...90751f` | KnightFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x05e61e...d6c46f` | KnightRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd23811...c4abba` | KnightToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe50cb7...407414` | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [13350] KnightSwap.pdf

Fork inheritance lineage and inherited audits are included when available.
