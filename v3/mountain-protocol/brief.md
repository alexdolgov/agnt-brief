# Agentic Audit Brief: Mountain Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Mountain Protocol (`mountain-protocol`)
- Website: [https://mountainprotocol.com](https://mountainprotocol.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, celo, ethereum, optimism, polygon, zksync-era
- Contract surface: 17 unique implementations (17 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,400,998.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Mountain Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum, avalanche, base, celo, ethereum, optimism, polygon, zksync-era. Structural roles: 5 infra. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: infra (5)
- Contract kinds: contract (5)
- Detected standards: erc1967proxy (5)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x57f5e098cad7a3d1eed53991d4d66c45c9af7812`, chain 1)
- UnnamedContract (`0x57f5e098cad7a3d1eed53991d4d66c45c9af7812`, chain 10)
- UnnamedContract (`0x57f5e098cad7a3d1eed53991d4d66c45c9af7812`, chain 137)
- UnnamedContract (`0x7715c206a14ac93cb1a6c0316a6e5f8ad7c9dc31`, chain 324)
- UnnamedContract (`0xa900cbe7739c96d2b153a273953620a701d5442b`, chain 324)
- UnnamedContract (`0x57f5e098cad7a3d1eed53991d4d66c45c9af7812`, chain 8453)
- UnnamedContract (`0x57f5e098cad7a3d1eed53991d4d66c45c9af7812`, chain 42161)
- UnnamedContract (`0x57f5e098cad7a3d1eed53991d4d66c45c9af7812`, chain 42220)
- UnnamedContract (`0x59d9356e565ab3a36dd77763fc0d87feaf85508c`, chain 42220)
- UnnamedContract (`0x57f5e098cad7a3d1eed53991d4d66c45c9af7812`, chain 43114)
- UnnamedContract (`0x59d9356e565ab3a36dd77763fc0d87feaf85508c`, chain 43114)
- ERC1967Proxy (`0x59d9356e565ab3a36dd77763fc0d87feaf85508c`, chain 1)
- ERC1967Proxy (`0x59d9356e565ab3a36dd77763fc0d87feaf85508c`, chain 10)
- ERC1967Proxy (`0x59d9356e565ab3a36dd77763fc0d87feaf85508c`, chain 137)
- ERC1967Proxy (`0x59d9356e565ab3a36dd77763fc0d87feaf85508c`, chain 8453)
- ERC1967Proxy (`0x59d9356e565ab3a36dd77763fc0d87feaf85508c`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 16 of 17 unique; 1 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 17
- Raw deployments: 17
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| USDM | unknown | project_anchor | own_supporting | 1 | ethereum | unit-248391 | `0x59d9356e565ab3a36dd77763fc0d87feaf85508c` | ⚠️ Unaudited |
| USDM | unknown | project_anchor | own_supporting | 1 | optimism | unit-248392 | `0x59d9356e565ab3a36dd77763fc0d87feaf85508c` | ⚠️ Unaudited |
| USDM | unknown | project_anchor | own_supporting | 1 | polygon | unit-248393 | `0x59d9356e565ab3a36dd77763fc0d87feaf85508c` | ⚠️ Unaudited |
| USDM | unknown | project_anchor | own_supporting | 1 | base | unit-248395 | `0x59d9356e565ab3a36dd77763fc0d87feaf85508c` | ⚠️ Unaudited |
| USDM | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-248394 | `0x59d9356e565ab3a36dd77763fc0d87feaf85508c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248380 | `0x57f5e098cad7a3d1eed53991d4d66c45c9af7812` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248381 | `0x57f5e098cad7a3d1eed53991d4d66c45c9af7812` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-248382 | `0x57f5e098cad7a3d1eed53991d4d66c45c9af7812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x59d9356e565ab3a36dd77763fc0d87feaf85508c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-248383 | `0x7715c206a14ac93cb1a6c0316a6e5f8ad7c9dc31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-248384 | `0xa900cbe7739c96d2b153a273953620a701d5442b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-248390 | `0x57f5e098cad7a3d1eed53991d4d66c45c9af7812` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248385 | `0x57f5e098cad7a3d1eed53991d4d66c45c9af7812` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-248386 | `0x57f5e098cad7a3d1eed53991d4d66c45c9af7812` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-248387 | `0x59d9356e565ab3a36dd77763fc0d87feaf85508c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248388 | `0x57f5e098cad7a3d1eed53991d4d66c45c9af7812` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248389 | `0x59d9356e565ab3a36dd77763fc0d87feaf85508c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [OpenZeppelin Mountain Protocol USDM - Audit Report Jun 2023.pdf](https://github.com/mountainprotocol/audits/blob/main/OpenZeppelin%20Mountain%20Protocol%20USDM%20-%20Audit%20Report%20Jun%202023.pdf) | OpenZeppelin | Audit | 2023-06 | stale | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [OpenZeppelin Mountain Protocol wUSDM - Audit Report Oct 2023.pdf](https://github.com/mountainprotocol/audits/blob/main/OpenZeppelin%20Mountain%20Protocol%20wUSDM%20-%20Audit%20Report%20Oct%202023.pdf) | OpenZeppelin | Audit | 2023-10 | stale | Direct | address | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13527] OpenZeppelin Mountain Protocol USDM - Audit Report Jun 2023.pdf — no match: Only one contract in scope: USDM.sol
- [13528] OpenZeppelin Mountain Protocol wUSDM - Audit Report Oct 2023.pdf — no match: Only wUSDM.sol is in scope; audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| OpenZeppelin Mountain Protocol USDM - Audit Report Jun 2023.pdf | USDM | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x59d9356e565ab3a36dd77763fc0d87feaf85508c` — deployed 2023-08-25 20:35:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x59d9356e565ab3a36dd77763fc0d87feaf85508c` — deployed 2023-11-17 17:52:57+03 — liveness: live (current_address_book_code)<br>0x59d935… (alternative) `0x59d9356e565ab3a36dd77763fc0d87feaf85508c` — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x59d9356e565ab3a36dd77763fc0d87feaf85508c` — deployed 2023-11-17 03:34:09+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x59d9356e565ab3a36dd77763fc0d87feaf85508c` — deployed 2023-11-17 04:59:59+03 — liveness: live (current_address_book_code)<br>0x59d935… (alternative) `0x59d9356e565ab3a36dd77763fc0d87feaf85508c` — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x59d9356e565ab3a36dd77763fc0d87feaf85508c` — deployed 2023-11-17 17:51:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OpenZeppelin Mountain Protocol wUSDM - Audit Report Oct 2023.pdf | wUSDM | ambiguous — not counted | 0x57f5e0… (alternative) `0x57f5e098cad7a3d1eed53991d4d66c45c9af7812` — liveness: live (current_address_book_code)<br>0x57f5e0… (alternative) `0x57f5e098cad7a3d1eed53991d4d66c45c9af7812` — liveness: live (current_address_book_code)<br>0x57f5e0… (alternative) `0x57f5e098cad7a3d1eed53991d4d66c45c9af7812` — liveness: live (current_address_book_code)<br>0x57f5e0… (alternative) `0x57f5e098cad7a3d1eed53991d4d66c45c9af7812` — liveness: live (current_address_book_code)<br>0x57f5e0… (alternative) `0x57f5e098cad7a3d1eed53991d4d66c45c9af7812` — liveness: live (current_address_book_code)<br>0x57f5e0… (alternative) `0x57f5e098cad7a3d1eed53991d4d66c45c9af7812` — liveness: live (current_address_book_code)<br>0x57f5e0… (alternative) `0x57f5e098cad7a3d1eed53991d4d66c45c9af7812` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x59d9356e565ab3a36dd77763fc0d87feaf85508c` | USDM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x59d9356e565ab3a36dd77763fc0d87feaf85508c` | USDM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x59d9356e565ab3a36dd77763fc0d87feaf85508c` | USDM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x59d9356e565ab3a36dd77763fc0d87feaf85508c` | USDM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x59d9356e565ab3a36dd77763fc0d87feaf85508c` | USDM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [13527] OpenZeppelin Mountain Protocol USDM - Audit Report Jun 2023.pdf
- [13528] OpenZeppelin Mountain Protocol wUSDM - Audit Report Oct 2023.pdf

Fork inheritance lineage and inherited audits are included when available.
