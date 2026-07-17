# Agentic Audit Brief: Bitget

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

- Project: Bitget (`bitget`)
- Website: [https://www.bitget.com](https://www.bitget.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, cronos, ethereum, fantom, kaia, kava, metis, morph, optimism, polygon, sonic, zksync-era
- Contract surface: 26 unique implementations (26 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,911,781,736.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Bitget. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, ethereum, morph. Structural roles: 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: unclassified (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x54d2252757e1672eead234d27b1270728ff90581`, chain 1)
- UnnamedContract (`0x55d1f1879969bdbb9960d269974564c58dbc3238`, chain 2818)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 23 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 26 unique; 24 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 26
- Raw deployments: 26
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

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e516184686ffb009ce9f77d67dececb2afc4a51` | ⚠️ Unaudited |
| ATokensAndRatesHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e0730775a8568e3773a496e0a65438bd1af74ea` | ⚠️ Unaudited |
| ChefIncentivesController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x287ff908b4db0b29b65b8442b0a5840455f0db32` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00ff3b408cdbb79c32683aa7b6e4ecb7a33a9577` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab843bec136e848fc47f0eb24902b61f158534d6` | ⚠️ Unaudited |
| LendingPoolAddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d475766ab187acf6238ae45fff213fa19d52832` | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x397824e7b156f57263aea72ff61ea860289e83ae` | ⚠️ Unaudited |
| LendingPoolCollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8b4dbcbf943f21ca956a8cfeeea917d1855c608` | ⚠️ Unaudited |
| LendingPoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e2b5533729b1f67d7e60bcb89ccbc3f5f66b32d` | ⚠️ Unaudited |
| LendingRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1fab9ae08e670f853158e40bfc6a5e0b3c3d7ecb` | ⚠️ Unaudited |
| Leverager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5682a39078edce41a65f1bd8733bf9ca2bbe3b1b` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x854775e2607a65321476f7f40d4dd33ada783a95` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xefab5c6f57f301f87875b3270bb4659e27a23a82` | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2054a8c33bfce28de8af4af548c48915c455c13` | ⚠️ Unaudited |
| QuickLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75206c2a29b646706c8856df0e8acaea38921bad` | ⚠️ Unaudited |
| RadiantToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01a01deaf702e960d91151de6113e1fc4667f6ba` | ⚠️ Unaudited |
| StableAndVariableTokensHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f9819516eadfc947e652710e3dbf738d6c1772b` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b6f135db3a621ab9041ac261276d8f38e1dc7a9` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a88e473fa2f4012e6c1b730dd070e4b15d15740` | ⚠️ Unaudited |
| UiPoolDataProviderV2V3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x80c64191944a53ee1deabb6705b50fea8620fc31` | ⚠️ Unaudited |
| UnnamedContract | token | project_anchor | own_supporting | 0 | ethereum | unit-380639 | `0x54d2252757e1672eead234d27b1270728ff90581` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b6176cae0bfa63d9f8c8561cebe3e19c1bc504b` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe36d523ad4febaa09b9bc043999252f96375c621` | ⚠️ Unaudited |
| WETHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebf9746af2c757a20db467b007f4fa6317385e9a` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-380638 | `0x19de6b897ed14a376dda0fe53a5420d2ac828a28` | ❓ Unverified |
| UnnamedContract | token | project_anchor | own_supporting | 0 | morph | unit-380640 | `0x55d1f1879969bdbb9960d269974564c58dbc3238` | ❓ Unverified |

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
| native | 23 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

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
