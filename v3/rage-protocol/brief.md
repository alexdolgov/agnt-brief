# Agentic Audit Brief: RAGE Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: RAGE Protocol (`rage-protocol`)
- Website: [https://ultraroundmoney.com/rage](https://ultraroundmoney.com/rage)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 23 unique implementations (31 raw deployments)
- Coverage basis: 3/3 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $232,093.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for RAGE Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across base. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: erc20permit (1)
- Frameworks: openzeppelin (2), uniswap-v3 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Rage (`0xc0df50143ea93aec63e38a6ed4e92b378079ea15`, chain 8453)
- RageBuyingProtocol (`0xff70cd1e1931372f869c936582a7f42e49b6da4c`, chain 8453)
- RageChaosEngine (`0x4c15f778ab59f25d5dfd2dd508236a25ed2813fe`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/3 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 20 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 3 of 23 unique; 20 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/22
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 23
- Raw deployments: 31
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 13.6% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Rage | unknown | project_anchor | own_supporting | 0 | base | unit-391264 | `0xc0df50143ea93aec63e38a6ed4e92b378079ea15` | ✅ Audited |
| RageBuyingProtocol | unknown | project_anchor | own_supporting | 0 | base | unit-391266 | `0xff70cd1e1931372f869c936582a7f42e49b6da4c` | ✅ Audited |
| RageChaosEngine | unknown | project_anchor | own_supporting | 0 | base | unit-391262 | `0x4c15f778ab59f25d5dfd2dd508236a25ed2813fe` | ✅ Audited |

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Circle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5babfc2f240bc5de90eb7e19d789412db1dec402` | ⚠️ Unaudited |
| CircleTemple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe77b94b2a3ab82d4bba7ae2e05b6176dd91fb987` | ⚠️ Unaudited |
| Hestia | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbc7755a153e852cf76cccddb4c2e7c368f6259d8` | ⚠️ Unaudited |
| HestiaChaosEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4e5524e08fee52cef973380fdbea8909361887b8` | ⚠️ Unaudited |
| HestiaMine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc10aa720dfde56be6fb37f91189a64215a61ddc3` | ⚠️ Unaudited |
| RageCalculation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb8ed155ab154b2dbadcc07b814cc52e92dc75ae1` | ⚠️ Unaudited |
| RageDepot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x33e11fd175435188b0b750eb966fd6b195da40de`; base `0xa87008e732cfd9003c6bfba84369c2778284c82c` | ⚠️ Unaudited |
| RageOptionNft | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe29a221ac6e69927161c3dfcc663f75119421178` | ⚠️ Unaudited |
| RageOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9b8a45c4a0fbd44158480d9b4b41e0bdca42874c` | ⚠️ Unaudited |
| RageOtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x022118088fb1484a728a23d60b1866c5f1d12b6c`; base `0x43a3a8d71da54f0ec9d75417945d494add90c224`; base `0x4d95932b66eca32f8527303aee75a565969441e4`; base `0xaee9b9591bb05ccc708482f9725b85d0156ecbe1`; base `0xc95e30eaacfbbfe71211b33ea1a4c0157e8ad6a1`; base `0xdcb26dd3fc28f24fe97539dca230e23feca8be85` | ⚠️ Unaudited |
| RagePresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x96cd711dd6ba5d14b98402fa58648d68d64db3ac` | ⚠️ Unaudited |
| RageSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03fee5ba01d5b71c7f7689490826ba75a2750c44` | ⚠️ Unaudited |
| RageTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94e29af27dc811406e1f5ded721e42e160adae30` | ⚠️ Unaudited |
| Urm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf0e3349f00972475a5d16721796091aa3b997837` | ⚠️ Unaudited |
| UrmFlankingTower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x8a0f28fadaf826491a64fea300ffb14b15c3e62c`; base `0xf258981a818d49580278e183e5f8ff8069be6657` | ⚠️ Unaudited |
| UrmFortress | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5e06b7117d47210a5fdc54d08a9dd8d8bf0f1fc3` | ⚠️ Unaudited |
| UrmOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa51e78a5b3380516f9cf2c910641703d5c2e45a1` | ⚠️ Unaudited |
| UrmSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x52c540f4d8d16f7f6d625b9e08317a1ef2cde13c` | ⚠️ Unaudited |
| UrmSwapperRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3cb81b027bdcd4c653f13a94622f2f578ad0ee31` | ⚠️ Unaudited |

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
| WeightedIndex | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 2 | base | n/a | 2 deployments: base `0x55a81da2a319dd60fb028c53cb4419493b56f6c0`; base `0xf760fd8feb1f5e3bf3651e2e4f227285a82470ff` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audit.pdf](https://ultraroundmoney.com/rage/audit.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | matched | 3 | 0 | 0 | 3 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13732] audit.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| audit.pdf | Rage | own contract | Rage (selected) `0xc0df50143ea93aec63e38a6ed4e92b378079ea15` — deployed 2025-10-24 19:58:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit.pdf | RageBuyingProtocol | own contract | RageBuyingProtocol (selected) `0xff70cd1e1931372f869c936582a7f42e49b6da4c` — deployed 2025-10-24 20:56:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit.pdf | RageChaosEngine | own contract | RageChaosEngine (selected) `0x4c15f778ab59f25d5dfd2dd508236a25ed2813fe` — deployed 2025-10-24 20:56:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit.pdf | RageOptionNft | unmatched — not counted | — | — | no |
| audit.pdf | RageOracle | unmatched — not counted | — | — | no |
| audit.pdf | RageSwapper | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=3

Fork inheritance lineage and inherited audits are included when available.
