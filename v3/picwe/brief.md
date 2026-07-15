# Agentic Audit Brief: PICWE

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

- Project: PICWE (`picwe`)
- Website: [https://www.picwe.org/en](https://www.picwe.org/en)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, hashkey
- Contract surface: 13 unique implementations (13 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $504,539.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for PICWE. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum, base, bsc, hashkey. Structural roles: 3 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: accesscontrol (2), erc165 (2), erc1967proxy (1), erc20 (1), erc20permit (1), pausable (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x054ed4...d88d0a`, chain 177)
- UnnamedContract (`0x4b3495...3ed1fd`, chain 177)
- UnnamedContract (`0x5d54f1...3ef22c`, chain 177)
- UnnamedContract (`0xdd73ea...d89d56`, chain 177)
- UnnamedContract (`0x4b3495...3ed1fd`, chain 42161)
- UnnamedContract (`0x5d54f1...3ef22c`, chain 42161)
- UnnamedContract (`0xdd73ea...d89d56`, chain 42161)
- FiatTokenProxy (`0xaf88d0...8e5831`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (1 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/15 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 8 of 13 unique; 5 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 13
- Raw deployments: 13
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
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
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-251576 | `0xaf88d0...8e5831` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f4fb9...b6e04a` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8aff09...eeab36` | ⚠️ Unaudited |
| PicWe_USD | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-251575 | `0xdd73ea...d89d56` | ⚠️ Unaudited |
| WeUSDMintRedeem | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-251574 | `0x5d54f1...3ef22c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hashkey | unit-251562 | `0x054ed4...d88d0a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hashkey | unit-251563 | `0x4b3495...3ed1fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hashkey | unit-251565 | `0x5d54f1...3ef22c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hashkey | unit-251568 | `0xdd73ea...d89d56` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-251573 | `0x4b3495...3ed1fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251569 | `0x4b3495...3ed1fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251570 | `0x5d54f1...3ef22c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251571 | `0xdd73ea...d89d56` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view](https://drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view?usp=sharing) | unknown | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20938] drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view — no match: Extracted 18 contract/module names from the 'Files in Scope' table (section 1.2). Audit date from cover page: Sat Feb 08 2025.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view | IMainContract | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view | IPicweUSD | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view | weusd | ambiguous — not counted | 0xdd73ea… (alternative) `0xdd73ea...d89d56` — liveness: live (current_address_book_code)<br>0xdd73ea… (alternative) `0xdd73ea...d89d56` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view | manageusd | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view | IClientStructsEvents | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view | client | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view | ClientInternal | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view | AuctionInternal | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view | auction | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view | IAuctionStructsEvents | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view | weusd_cross_chain | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view | pipi | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view | price_oracle | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view | swap_cross_chain | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view | launchpad | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view | airdrop | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view | weusd_operations | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0xaf88d0...8e5831` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 16 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20938] drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view

Fork inheritance lineage and inherited audits are included when available.
