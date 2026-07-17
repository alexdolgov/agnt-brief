# Agentic Audit Brief: Mars Ecosystem

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: Mars Ecosystem (`mars-ecosystem`)
- Website: [https://marsecosystem.com/home](https://marsecosystem.com/home)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 22 unique implementations (23 raw deployments)
- Coverage basis: 0/10 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $233,545.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Mars Ecosystem. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across bsc. Structural roles: 9 core, 1 supporting, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: core (9), supporting (1), unclassified (1)
- Contract kinds: contract (10), abstract (1)
- Detected standards: pausable (6), erc20 (4), accesscontrol (1)
- Frameworks: openzeppelin (10)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xde03ed82e611e9ee6fe52d50bb40fdc00d89ba6b`, chain 56)
- AirDrop (`0x01d152ff991e76b6cb310387c07cafdfda790a25`, chain 56)
- Core (`0x00789cfb69499c65ac9a3a68fb4917c9b4fca2a7`, chain 56)
- IMO (`0x243ddd2e42ceb93349e726e2367edec6339aba75`, chain 56)
- LiquidityMiningMasterBNB (`0x48c42579d98aa768cde893f8214371ed607cabe3`, chain 56)
- MarsStake (`0x3b550bbfac32ec434f858a8135fa17c40636583b`, chain 56)
- MarsSwapFactory (`0x6f12482d9869303b998c54d91bcd8bccba81f3be`, chain 56)
- MarsSwapRouter (`0xb68825c810e67d4e444ad5b9deb55ba56a66e72d`, chain 56)
- Timelock (`0xc35a8bdbb93abfab362af6dc3383cd2c6aea6cbc`, chain 56)
- VestingMaster (`0x381facb9282770a5e3ac6c8637096b442039c3db`, chain 56)
- XMSToken (`0x7859b01bbf675d67da8cd128a50d155cd881b576`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (10 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/10 (0.0%)
- Coverage assessment: partial (medium confidence) — Coverage is calculated only over confirmed own address-book implementations; review inventory is reported separately and included in the conservative percentage where live and verified.
- Address-book implementation classification: 11 own, 7 exact-address-book context/dependencies excluded, 1 exact-address-book entries needing review
- Outside the address book: 3 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 11 of 22 unique; 11 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 22
- Raw deployments: 23
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/marsecosystem/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
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
| AirDrop | unknown | project_anchor | own_supporting | 0 | bsc | unit-246057 | `0x01d152ff991e76b6cb310387c07cafdfda790a25` | ⚠️ Unaudited |
| Core | unknown | project_anchor | own_supporting | 0 | bsc | unit-246056 | `0x00789cfb69499c65ac9a3a68fb4917c9b4fca2a7` | ⚠️ Unaudited |
| IMO | unknown | project_anchor | own_supporting | 0 | bsc | unit-246058 | `0x243ddd2e42ceb93349e726e2367edec6339aba75` | ⚠️ Unaudited |
| LiquidityMiningMaster | unknown | unclassified_address_book | needs_review (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x18878ca9b1cd1862c2cc357a6cf7a0ec857c80ed`; bsc `0xc7b8285a9e099e8c21ca5516d23348d8dbadde4a` | ⚠️ Unaudited |
| LiquidityMiningMasterBNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-246061 | `0x48c42579d98aa768cde893f8214371ed607cabe3` | ⚠️ Unaudited |
| MarsFarmV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3762899a888944c1dde493041a339df2f9e310e9` | ⚠️ Unaudited |
| MarsStake | unknown | project_anchor | own_supporting | 0 | bsc | unit-246060 | `0x3b550bbfac32ec434f858a8135fa17c40636583b` | ⚠️ Unaudited |
| MarsStratX2_PCS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c7f4daca14c4bb0e6b616cc6faa8354ccc5238f` | ⚠️ Unaudited |
| MarsSwapFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-246062 | `0x6f12482d9869303b998c54d91bcd8bccba81f3be` | ⚠️ Unaudited |
| MarsSwapRouter | unknown | project_anchor | own_supporting | 0 | bsc | unit-246064 | `0xb68825c810e67d4e444ad5b9deb55ba56a66e72d` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | bsc | unit-246065 | `0xc35a8bdbb93abfab362af6dc3383cd2c6aea6cbc` | ⚠️ Unaudited |
| USDMToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb0fa2fbe9b37444f5d1dbd22e0e5bdd2afbbe85` | ⚠️ Unaudited |
| VestingMaster | unknown | project_anchor | own_supporting | 0 | bsc | unit-246059 | `0x381facb9282770a5e3ac6c8637096b442039c3db` | ⚠️ Unaudited |
| XMSToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-246063 | `0x7859b01bbf675d67da8cd128a50d155cd881b576` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x22d8d50454203bd5a41b49ef515891f1ad9f3e53` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x29f4fd982ee7aee8fd1f1da76585bf99e7d4740d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x3a003e18124cfff65c14cb111893aff4e89b3814` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x4639d936f0a716f234ead073362c5cb272cc4b70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x56b91ebaeb450ce27a3c4a41d9bf16162dd63ea2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xa53b575f9ec7126ba7b43c8c3171fe4685f2f8b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xb7881f5142245531c3fb938a37b5d2489efd2c01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-246066 | `0xde03ed82e611e9ee6fe52d50bb40fdc00d89ba6b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/marsecosystem](https://skynet.certik.com/projects/marsecosystem) | CertiK | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [immunefi.com/bug-bounty/marsecosystem/information](https://immunefi.com/bug-bounty/marsecosystem/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20817] skynet.certik.com/projects/marsecosystem — no match: Only one contract name explicitly mentioned in audited files; other files listed by SHA256 hash only.
- [20818] immunefi.com/bug-bounty/marsecosystem/information — no match: The document is a bug bounty program page, not an audit report. No contracts in scope are listed; only the program overview and reward structure are provided.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/marsecosystem | MarsSwapPairCombOracle | unmatched — not counted | — | Listed in audited files section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x01d152ff991e76b6cb310387c07cafdfda790a25` | AirDrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x00789cfb69499c65ac9a3a68fb4917c9b4fca2a7` | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x243ddd2e42ceb93349e726e2367edec6339aba75` | IMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x48c42579d98aa768cde893f8214371ed607cabe3` | LiquidityMiningMasterBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3b550bbfac32ec434f858a8135fa17c40636583b` | MarsStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6f12482d9869303b998c54d91bcd8bccba81f3be` | MarsSwapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xb68825c810e67d4e444ad5b9deb55ba56a66e72d` | MarsSwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc35a8bdbb93abfab362af6dc3383cd2c6aea6cbc` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x381facb9282770a5e3ac6c8637096b442039c3db` | VestingMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x7859b01bbf675d67da8cd128a50d155cd881b576` | XMSToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [20817] skynet.certik.com/projects/marsecosystem

Fork inheritance lineage and inherited audits are included when available.
