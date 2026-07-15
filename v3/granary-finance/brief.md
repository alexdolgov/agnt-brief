# Agentic Audit Brief: Granary Finance

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

- Project: Granary Finance (`granary-finance`)
- Website: [https://granary.finance/dashboard](https://granary.finance/dashboard)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, fantom, metis, optimism
- Contract surface: 39 unique implementations (39 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $615,228.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Granary Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 39 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/39
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 39
- Raw deployments: 39
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142875 | `0x9546f6...5a9995` | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142870 | `0x33c62b...4645bf` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142893 | `0x3f45e5...7448fd` | ⚠️ Unaudited |
| ATokensAndRatesHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142879 | `0x0ce5e7...1907e2` | ⚠️ Unaudited |
| ChainlinkSourcesRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142872 | `0x376824...ec587d` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142863 | `0x025d9d...170947` | ⚠️ Unaudited |
| FarmerNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142899 | `0x9a6add...96af05` | ⚠️ Unaudited |
| FarmersMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142895 | `0x582e07...d41008` | ⚠️ Unaudited |
| GenericLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142873 | `0x39dfc4...593cc4` | ⚠️ Unaudited |
| Grain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142865 | `0x12c261...2cdfbf` | ⚠️ Unaudited |
| GrainLGEUniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142881 | `0x1033fe...7b9428` | ⚠️ Unaudited |
| GrainSaleClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142878 | `0x037c66...6d3a52` | ⚠️ Unaudited |
| GranaryRewardsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142887 | `0x246824...f73d28` | ⚠️ Unaudited |
| GranaryTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142900 | `0xb17844...4b8236` | ⚠️ Unaudited |
| Intermediary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142889 | `0x27d723...13426a` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142876 | `0xc01a7a...8a1783` | ⚠️ Unaudited |
| LendingPoolAddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142891 | `0x3884fc...24be95` | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142890 | `0x33c62b...4645bf` | ⚠️ Unaudited |
| LendingPoolCollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142901 | `0xc2cda5...4b16c2` | ⚠️ Unaudited |
| LendingPoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142884 | `0x204f5c...a61831` | ⚠️ Unaudited |
| LendingRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142894 | `0x4a418c...f952c7` | ⚠️ Unaudited |
| Leverager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142885 | `0x21ba67...72e716` | ⚠️ Unaudited |
| RektCure | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142877 | `0xec4ec3...9376fc` | ⚠️ Unaudited |
| ReserveLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142888 | `0x250b47...33e1e9` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142896 | `0x7a1919...bc717d` | ⚠️ Unaudited |
| StableAndVariableTokensHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142866 | `0x158b0b...34dd9d` | ⚠️ Unaudited |
| StableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142898 | `0x8429d0...45a00b` | ⚠️ Unaudited |
| TestGrainLGEUniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142883 | `0x14d83b...66e36a` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142867 | `0x198147...ed1975` | ⚠️ Unaudited |
| Timestamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142886 | `0x22a639...9e2cd7` | ⚠️ Unaudited |
| UiDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142880 | `0x0fdbd7...c508be` | ⚠️ Unaudited |
| UiIncentiveDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142874 | `0x48b61d...aa3b62` | ⚠️ Unaudited |
| UiIncentiveDataProviderV2V3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142902 | `0xf742a0...5cba9a` | ⚠️ Unaudited |
| UiPoolDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142864 | `0x0ce5e7...1907e2` | ⚠️ Unaudited |
| UiPoolDataProviderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142869 | `0x30a5a4...38f54c` | ⚠️ Unaudited |
| ValidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142882 | `0x12c261...2cdfbf` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142892 | `0x3e45df...66c837` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142897 | `0x7b48eb...f00e90` | ⚠️ Unaudited |
| WETHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142868 | `0x2aa685...b747ea` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/granary](https://skynet.certik.com/projects/granary) | CertiK | Audit | 2022-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21364] skynet.certik.com/projects/granary — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21364] skynet.certik.com/projects/granary

Fork inheritance lineage and inherited audits are included when available.
