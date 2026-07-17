# Agentic Audit Brief: Antarctic

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Antarctic (`antarctic`)
- Website: [https://www.antarctic.exchange/](https://www.antarctic.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum
- Contract surface: 13 unique implementations (16 raw deployments)
- Coverage basis: 1/3 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $9,838,626.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Antarctic. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum. Structural roles: 2 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (2), supporting (1)
- Contract kinds: contract (3)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AMLP (`0x152f5e6142db867f905a68617dbb6408d7993a4b`, chain 42161)
- AmlpManager (`0x98a6aee58699e4f4e13d8d8d0800e4e9cbbcf8dd`, chain 42161)
- FundingVault (`0x07f169d388c56cf8517b249e845502a14ddf043f`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/3 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 3 of 13 unique; 10 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/9
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 13
- Raw deployments: 16
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-11 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 11.1% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AMLP | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-266810 | `0x152f5e6142db867f905a68617dbb6408d7993a4b` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AHLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5fd22da8315992dbbd82d5ac1087803ff134c2c4` | ⚠️ Unaudited |
| AhlpManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5f9d4b9f68caaa869317baa09a233b22940bd9f` | ⚠️ Unaudited |
| AhlpStaker | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1ba274ebbb07353657ed8c76a87acf362e408d85`; arbitrum `0x237455b466c896a646d72a1c23e579638c175600` | ⚠️ Unaudited |
| AmlpManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-266811 | `0x98a6aee58699e4f4e13d8d8d0800e4e9cbbcf8dd` | ⚠️ Unaudited |
| AmlpStaker | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3a66b81be26f2d799c5a96a011e1e3fb2ba50999`; arbitrum `0x88ff0b40a93166251c7b319bedbf6f41f2d52038` | ⚠️ Unaudited |
| FundingVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-266809 | `0x07f169d388c56cf8517b249e845502a14ddf043f` | ⚠️ Unaudited |
| sAHLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50c30f24b957b1ac9e31558e55bf7dc4ab685ea9` | ⚠️ Unaudited |
| sAMLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x4f2b3767616ee3523534910176d61ff35224b6a7`; arbitrum `0xbc08f30c18a79a3a18dbbd40931c551f91edb9db` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x169dac7128a6b26a3de082304a001295b330378d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x734ec6a0791a1b84a9208faae6187ed81d3597b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf5ce8705f91184ce0d7009baaa959f16c62132fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb323b42c1058c6e2e9c185c05862df47513bd68` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/antarctic-exchange](https://skynet.certik.com/projects/antarctic-exchange) | CertiK | Audit | 2024-11 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20639] skynet.certik.com/projects/antarctic-exchange — matched: Extracted from Audited Files and Assessed Contracts sections. Audit date from 'Last Audit was delivered on 11/1/2024'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/antarctic-exchange | AMLP | own contract | AMLP (selected) `0x152f5e6142db867f905a68617dbb6408d7993a4b` — deployed 2025-01-02 13:17:16+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| skynet.certik.com/projects/antarctic-exchange | HashStorage | unmatched — not counted | — | listed in Audited Files | no |
| skynet.certik.com/projects/antarctic-exchange | MintableBaseToken | unmatched — not counted | — | listed in Assessed Contracts | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x98a6aee58699e4f4e13d8d8d0800e4e9cbbcf8dd` | AmlpManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x07f169d388c56cf8517b249e845502a14ddf043f` | FundingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=1

Fork inheritance lineage and inherited audits are included when available.
