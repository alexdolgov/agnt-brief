# Agentic Audit Brief: MONSTRO

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

- Project: MONSTRO (`monstro`)
- Website: [https://v2.monstro.fun](https://v2.monstro.fun)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 18 unique implementations (25 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,359,293.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for MONSTRO. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across base. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: erc20 (2), ownable (2), erc20permit (1), erc4626 (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xe187fca3ff7ba74b91a6376920e5b974631e4ffe`, chain 8453)
- MonstroStaking (`0x99741758a3bcd7a95b80845e124c5c499df4742b`, chain 8453)
- MonstroToken (`0x1d3be1cc80ca89ddbabe5b5c254af63200e708f7`, chain 8453)
- MonstroUSDC (`0xfa68ac5ca298ab4b96bce6542ec74bb9516b0397`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 14 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 4 of 18 unique; 14 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 18
- Raw deployments: 25
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

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x174b0950f7359f6197e92d8b274f0d6b27154575` | ⚠️ Unaudited |
| BasedLoansLendingLedger | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x278cfeadeaacbe88f24692ef199247cf17c5141f` | ⚠️ Unaudited |
| HVOriginsNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xffec065c2e8535b8c9e25b2be98f5adfd676d6a2` | ⚠️ Unaudited |
| MasterbrewsNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfa94fe77e914af84186ba9317819e1ae0bfbd6d2` | ⚠️ Unaudited |
| MonstroDataTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x813303b6f253c74d997020518227f87ff721f53f` | ⚠️ Unaudited |
| MonstroNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x553fa1d5e0bc4b1b98fc39c4e01f4b25d8373cf0` | ⚠️ Unaudited |
| MonstroNFTFeatures | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d949bbe56bffe8d2bc333a6f830e1a8de28041d` | ⚠️ Unaudited |
| MonstroNFTProps | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb0c01c090bbf77440119f1e2e83443fb04b3452` | ⚠️ Unaudited |
| MonstroNFTSale | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x53f3f548f30639d4d0bd6020db7e789ee8f1ec7c`; base `0xcc0bec85bdaeeea0f41622921441761af929cec1`; base `0xcd6cdae2f0f9c31de9a682b11b80968a4376c76d`; base `0xf6509eb1730e18d90f0e024dcacaa722574ddcd4` | ⚠️ Unaudited |
| MonstroPayUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37db84b897c6db3e509d74bc009efb9210ecbf6c` | ⚠️ Unaudited |
| MonstroStaking | unknown | project_anchor | own_supporting | 0 | base | unit-389176 | `0x99741758a3bcd7a95b80845e124c5c499df4742b` | ⚠️ Unaudited |
| MonstroToken | token | project_anchor | own_supporting | 0 | base | unit-389175 | `0x1d3be1cc80ca89ddbabe5b5c254af63200e708f7` | ⚠️ Unaudited |
| MonstroUSDC | unknown | project_anchor | own_supporting | 0 | base | unit-389178 | `0xfa68ac5ca298ab4b96bce6542ec74bb9516b0397` | ⚠️ Unaudited |
| RatioDerivedAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb5391e137cd3bb9dda02c164b599c95af0f88b52` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x4713b3ab36c9759043694757e6cb8123915a8dd0`; base `0xa673566a818e3525e57292b22311ad0be114085c`; base `0xa6cd9800eff0994b3f64c330de4e55925d5404dc`; base `0xcb7c195de077b9cadbc5c086ba7932149b9f4391`; base `0xce45b2ae92c9dc7e39ebb9d9db6920897a6f6b4a` | ⚠️ Unaudited |
| WhelpsHighbornNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d4a5b93a734f411f91237d66a10d82f65104d3a` | ⚠️ Unaudited |
| WhelpsNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ce5b9b1b22be31689d43c408ba6938568e88a42` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389177 | `0xe187fca3ff7ba74b91a6376920e5b974631e4ffe` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x99741758a3bcd7a95b80845e124c5c499df4742b` | MonstroStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1d3be1cc80ca89ddbabe5b5c254af63200e708f7` | MonstroToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xfa68ac5ca298ab4b96bce6542ec74bb9516b0397` | MonstroUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 1 |
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
