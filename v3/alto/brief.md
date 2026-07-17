# Agentic Audit Brief: Alto

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 18 (0 matched; 18 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Alto (`alto`)
- Website: [https://www.altofoundation.org/](https://www.altofoundation.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 16 unique implementations (16 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $274,256.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Alto. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ERC1967Proxy (`0x133cf03d2a7a87b9239b1a3a8dd62f3f27c46788`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 15 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 1 of 16 unique; 15 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 16
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 8 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressChange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cf6f8d0201f38fa3e6f21c1f4803f4eb40c0bb2` | ⚠️ Unaudited |
| AltoAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x241aa0ac561a5c210a86fecc82f45d2713f59c0c` | ⚠️ Unaudited |
| AltoLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e64cc242fa7a7a294efc29b0ca08daa6bf98a33` | ⚠️ Unaudited |
| AltoLeverageSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e635f6529d37ecad98b5d709beb479cdc101941` | ⚠️ Unaudited |
| AltoMintMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x195b11839e371bd25346f14158f6c51f733e866e` | ⚠️ Unaudited |
| AltoReferralWhitelistAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x766d36c3e140a29bd47390958939ed7f7239513d` | ⚠️ Unaudited |
| AltoTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9f06fefc4c53ded77a90cb798ed08dc068bb6dd` | ⚠️ Unaudited |
| AltoTimelockControllerMintMarketFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f80c18b6b73b1c4f06fa5233de32778ec90fa96` | ⚠️ Unaudited |
| Bundler3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac80387009231b4d55b85df27924b85f2ed6823d` | ⚠️ Unaudited |
| DlbDcfPriorityLiquidationEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a3fb51184183405c975bd8b355d4dc43209f45b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-266808 | `0x133cf03d2a7a87b9239b1a3a8dd62f3f27c46788` | ⚠️ Unaudited |
| FixedRateIrm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e4065c4db1802d3f24d538c8f685571c7f83896` | ⚠️ Unaudited |
| MarketRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd45d50611c38e35dd1d1119077de1e988ed2257` | ⚠️ Unaudited |
| UsmRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad5620e10c33918e2c6a2e8e53325bf98c548e5e` | ⚠️ Unaudited |
| UsmSellAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaac86f77eb51fa1d565b743c43dece2cef90af24` | ⚠️ Unaudited |
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x696e7b1d5d11e2cf7f7b970acf54cf1491f17a47` | ⚠️ Unaudited |

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
| [2025-07_Managed_Security_Review_Alto_foundation.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/2025-07_Managed_Security_Review_Alto_foundation.pdf) | unknown | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [2025-09_Managed_Security_Review_Alto_foundation.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/2025-09_Managed_Security_Review_Alto_foundation.pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2025-11_Managed_Security_Review_Alto_foundation.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/2025-11_Managed_Security_Review_Alto_foundation.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Bailsec - ALTO - Lending Market - Final Report.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/Bailsec%20-%20ALTO%20-%20Lending%20Market%20-%20Final%20Report.pdf) | Bailsec | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Bailsec - ALTO - Staking Rewards - Final Report.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/Bailsec%20-%20ALTO%20-%20Staking%20Rewards%20-%20Final%20Report.pdf) | Bailsec | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [report-cantinacode-alto-money-1124.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/report-cantinacode-alto-money-1124.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [report-cantinacode-alto-money-solo-1204.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/report-cantinacode-alto-money-solo-1204.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf) | Spearbit | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [report-cli-cantina-altomoney-0114.pdf (also discovered via alternate URL)](https://github.com/altomoney/security-review-engagements/blob/main/reports/report-cli-cantina-altomoney-0114.pdf) | Spearbit | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19420] 2025-07_Managed_Security_Review_Alto_foundation.pdf — no match: Contracts extracted from findings context; no explicit scope section found.
- [19421] 2025-09_Managed_Security_Review_Alto_foundation.pdf — no match: Contracts extracted from findings context; no explicit scope section but contracts are clearly audited targets.
- [19422] 2025-11_Managed_Security_Review_Alto_foundation.pdf — no match: Contracts extracted from finding contexts in the audit report. No explicit scope table, but contracts are clearly referenced in findings.
- [19423] Bailsec - ALTO - Lending Market - Final Report.pdf — no match: The report explicitly lists six contracts in scope: AltoBaseMarket, AltoBorrowMarket, AltoLeverage, AdaptiveCurveIRM, FixedRateIRM, and AssetShareConversionMath. The audit date is derived from 'October ‘2025' in the header, interpreted as the last day of October 2025.
- [19424] Bailsec - ALTO - Staking Rewards - Final Report.pdf — no match: The report explicitly lists contracts in scope: AltoStaking, TVLWeightedContainers, AltoRewardsDistributor, AltoReferralWhitelistAdapter, MerkleRootManager. The audit date is October 2025, interpreted as 2025-10-31.
- [19425] report-cantinacode-alto-money-1124.pdf — no match: Scope section explicitly lists four contracts under contracts/usm/. Audit date is December 8, 2025 from the cover page.
- [19426] report-cantinacode-alto-money-solo-1204.pdf — no match: Extracted 16 contract names from the scope section (page 3) of the audit report. The audit date is December 9, 2025, as stated on the cover page.
- [19427] report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf — no match: Scope section explicitly lists contracts and libraries under contracts/lending/libraries/, contracts/lending/vault/, and contracts/utils/. Audit date is June 18, 2026 from the cover page.
- [19428] report-cli-cantina-altomoney-0114.pdf — no match: Extracted contract names from context references in findings. No explicit scope section found; contracts are inferred from file paths and imports in PoC code.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025-07_Managed_Security_Review_Alto_foundation.pdf | AltoBaseMarket | unmatched — not counted | — | mentioned in findings context | no |
| 2025-07_Managed_Security_Review_Alto_foundation.pdf | AltoMintMarket | unmatched — not counted | — | mentioned in findings context | no |
| 2025-07_Managed_Security_Review_Alto_foundation.pdf | FixedPointMath | unmatched — not counted | — | mentioned in findings context | no |
| 2025-07_Managed_Security_Review_Alto_foundation.pdf | Auth | unmatched — not counted | — | mentioned in findings context | no |
| 2025-07_Managed_Security_Review_Alto_foundation.pdf | AuthUpgradeable | unmatched — not counted | — | mentioned in findings context | no |
| 2025-07_Managed_Security_Review_Alto_foundation.pdf | FixedRateIrm | unmatched — not counted | — | mentioned in findings context | no |
| 2025-07_Managed_Security_Review_Alto_foundation.pdf | AdaptiveCurveIrm | unmatched — not counted | — | mentioned in findings context | no |
| 2025-07_Managed_Security_Review_Alto_foundation.pdf | AltoAdapter | unmatched — not counted | — | mentioned in findings context | no |
| 2025-09_Managed_Security_Review_Alto_foundation.pdf | AltoRewardsDistributor | unmatched — not counted | — | listed in findings context | no |
| 2025-09_Managed_Security_Review_Alto_foundation.pdf | AltoReferralWhitelistAdapter | unmatched — not counted | — | listed in findings context | no |
| 2025-09_Managed_Security_Review_Alto_foundation.pdf | MerkleRootManager | unmatched — not counted | — | listed in findings context | no |
| 2025-11_Managed_Security_Review_Alto_foundation.pdf | ERC4626RatioChainlinkOracleWSTETH | unmatched — not counted | — | M-01 finding context | no |
| 2025-11_Managed_Security_Review_Alto_foundation.pdf | AltoStaking | unmatched — not counted | — | L-01, I-02, I-03 finding contexts | no |
| 2025-11_Managed_Security_Review_Alto_foundation.pdf | ModuleERC4626Ratio | unmatched — not counted | — | L-02 finding context | no |
| 2025-11_Managed_Security_Review_Alto_foundation.pdf | AltoRewardsOracle | unmatched — not counted | — | L-03, I-04, I-06 finding contexts | no |
| 2025-11_Managed_Security_Review_Alto_foundation.pdf | AltoRewardsDistributor | unmatched — not counted | — | L-03 finding context | no |
| 2025-11_Managed_Security_Review_Alto_foundation.pdf | TVLWeightedContainers | unmatched — not counted | — | I-01 finding context | no |
| 2025-11_Managed_Security_Review_Alto_foundation.pdf | OracleMath | unmatched — not counted | — | I-05 finding context | no |
| 2025-11_Managed_Security_Review_Alto_foundation.pdf | AltoLeverageSwapper | unmatched — not counted | — | I-07 finding context | no |
| Bailsec - ALTO - Lending Market - Final Report.pdf | AltoBaseMarket | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec - ALTO - Lending Market - Final Report.pdf | AltoBorrowMarket | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec - ALTO - Lending Market - Final Report.pdf | AltoLeverage | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec - ALTO - Lending Market - Final Report.pdf | AdaptiveCurveIRM | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec - ALTO - Lending Market - Final Report.pdf | FixedRateIRM | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec - ALTO - Lending Market - Final Report.pdf | AssetShareConversionMath | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec - ALTO - Staking Rewards - Final Report.pdf | AltoStaking | unmatched — not counted | — | Explicitly described as in scope: 'The AltoStaking contract allows users to lock their LOCK_TOKEN...' | no |
| Bailsec - ALTO - Staking Rewards - Final Report.pdf | TVLWeightedContainers | unmatched — not counted | — | Explicitly described as in scope: 'The TVLWeightedContainers contract is inherited by the AltoStaking contract...' | no |
| Bailsec - ALTO - Staking Rewards - Final Report.pdf | AltoRewardsDistributor | unmatched — not counted | — | Explicitly described as in scope: 'The AltoRewardsDistributor contract is a sale contract...' | no |
| Bailsec - ALTO - Staking Rewards - Final Report.pdf | AltoReferralWhitelistAdapter | unmatched — not counted | — | Explicitly described as in scope: 'The AltoReferralWhitelistAdapter contract is a simple referral storage contract...' | no |
| Bailsec - ALTO - Staking Rewards - Final Report.pdf | MerkleRootManager | unmatched — not counted | — | Explicitly described as in scope: 'The MerkleRootManager contract is inherited by the AltoRewardsDistributor contract and by the AltoReferralWhitelistAdapter contract.' | no |
| report-cantinacode-alto-money-1124.pdf | DUSDUsm | unmatched — not counted | — | listed in scope | no |
| report-cantinacode-alto-money-1124.pdf | FixedFeeStrategy | unmatched — not counted | — | listed in scope | no |
| report-cantinacode-alto-money-1124.pdf | FixedPriceStrategy | unmatched — not counted | — | listed in scope | no |
| report-cantinacode-alto-money-1124.pdf | Usm | unmatched — not counted | — | listed in scope | no |
| report-cantinacode-alto-money-solo-1204.pdf | AltoLeverageSwapper | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | AltoERC4626RatioChainlinkOracle | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | ERC4626RatioChainlinkOracleMETH | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | ERC4626RatioChainlinkOracleRETH | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | ERC4626RatioChainlinkOracleSUSDE | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | ERC4626RatioChainlinkOracleWSTETH | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | AltoMultiChainlinkLendingOracle | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | AltoRewardsOracle | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | ModuleChainlink | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | ModuleCurve | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | ModuleERC4626Ratio | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | FullMath | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | ModuleUniswap | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | OracleMath | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | DUSD | unmatched — not counted | — | listed in scope section | no |
| report-cantinacode-alto-money-solo-1204.pdf | AltoVesting | unmatched — not counted | — | listed in scope section | no |
| report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf | AltoBalancesLib | unmatched — not counted | — | listed in scope section | no |
| report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf | MarketLib | unmatched — not counted | — | listed in scope section | no |
| report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf | PendingLib | unmatched — not counted | — | listed in scope section | no |
| report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf | AltoVault | unmatched — not counted | — | listed in scope section | no |
| report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf | AltoAdapter | unmatched — not counted | — | listed in scope section | no |
| report-cli-cantina-altomoney-0114.pdf | AltoMintMarket | unmatched — not counted | — | Context:AltoMintMarket.sol#L155-L160, L162-L168 | no |
| report-cli-cantina-altomoney-0114.pdf | AltoBaseMarket | unmatched — not counted | — | Context:AltoBaseMarket.sol#L377-L386, L117-L119, L626-L651 | no |
| report-cli-cantina-altomoney-0114.pdf | AltoBorrowMarket | unmatched — not counted | — | Context:AltoBorrowMarket.sol#L142-L151 | no |
| report-cli-cantina-altomoney-0114.pdf | DlbDcfPriorityLiquidationEngine | unmatched — not counted | — | Context:DlbDcfPriorityLiquidationEngine.sol#L245-L248, L279 | no |
| report-cli-cantina-altomoney-0114.pdf | IDcfDlbPriorityLiquidationEngine | unmatched — not counted | — | import in PoC | no |
| report-cli-cantina-altomoney-0114.pdf | IMintableERC20 | unmatched — not counted | — | import in PoC | no |
| report-cli-cantina-altomoney-0114.pdf | IOracle | unmatched — not counted | — | import in PoC | no |
| report-cli-cantina-altomoney-0114.pdf | IAltoLiquidationEngine | unmatched — not counted | — | referenced in AltoBorrowMarket | no |
| report-cli-cantina-altomoney-0114.pdf | Uint128Converter | unmatched — not counted | — | import in PoC | no |
| report-cli-cantina-altomoney-0114.pdf | ExpLib | unmatched — not counted | — | referenced in DlbDcfPriorityLiquidationEngine | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 65 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9
- Match method counts: n/a

Zero-match audit list:

- [19420] 2025-07_Managed_Security_Review_Alto_foundation.pdf
- [19421] 2025-09_Managed_Security_Review_Alto_foundation.pdf
- [19422] 2025-11_Managed_Security_Review_Alto_foundation.pdf
- [19423] Bailsec - ALTO - Lending Market - Final Report.pdf
- [19424] Bailsec - ALTO - Staking Rewards - Final Report.pdf
- [19425] report-cantinacode-alto-money-1124.pdf
- [19426] report-cantinacode-alto-money-solo-1204.pdf
- [19427] report-cli-cantina-2032a5c5-8cb7-433b-bdfe-64b0cde36cac-alto-phaze-solo.pdf
- [19428] report-cli-cantina-altomoney-0114.pdf

Fork inheritance lineage and inherited audits are included when available.
