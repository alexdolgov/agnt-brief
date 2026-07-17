# Agentic Audit Brief: Resupply

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Resupply (`resupply`)
- Website: [https://resupply.fi/](https://resupply.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 39 unique implementations (60 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $38,229,554.93
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Resupply in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 39 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/39
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 39
- Raw deployments: 60
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 4 fresh, 2 aging, 0 stale, 2 unknown
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
| AutoStakeCallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4888205f02df9832274d470c685baa728f128745` | ⚠️ Unaudited |
| BasicVaultOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb7e25fbbd8afe4ce73d7dac647dbc3d847f3c82` | ⚠️ Unaudited |
| BorrowLimitController | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0950000465476f4470e74aed93e7dd414012bb7d` | ⚠️ Unaudited |
| Core | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc07e000044f95655c11fda4cd37f70a94d7e0a7d` | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc522a6606bba746d7960404f22a3db936b6f4f50`; ethereum `0xed785af60bed688baa8990cd5c4166221599a441` | ⚠️ Unaudited |
| CurveTwocryptoOptimized | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee351f12eae8c2b8b9d1b9bfd3c5dd565234578d` | ⚠️ Unaudited |
| EmissionsController | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33333333df05b0d52edd13d230461e5a0f5a4706` | ⚠️ Unaudited |
| FeeDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07ad4630985ade5b5307806c43e57e0a9a932c52` | ⚠️ Unaudited |
| FeeDepositController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc700000506423bad12d5eb6d55b35ea9f5384df6` | ⚠️ Unaudited |
| GovStaker | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22222222e9fe38f6f1fc8c61b25228adb4d8b953` | ⚠️ Unaudited |
| GuardianUpgradeable | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa4745e0b1f40ab3dcfd98f381835de591a8974e3` | ⚠️ Unaudited |
| InsurancePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00000000efe883b3304aff71eacf72dbc3e1b577` | ⚠️ Unaudited |
| InterestRateCalculator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77777777729c405efb6ac823493e6111f0070d67` | ⚠️ Unaudited |
| InterestRateCalculatorV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1972b5d65a690de0bc36278ac93d47fd98bc14f7` | ⚠️ Unaudited |
| Keeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49f7aa38af55322de009add5f10a602cd26ee958` | ⚠️ Unaudited |
| LiquidityGaugeV6 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x09f62a6777032329c0d49f1fd4fbe9b3468cda56`; ethereum `0x5c0b03914f68f2717d779a0211fd98c2cc45a4dd`; ethereum `0xaf01d68714e7ea67f43f08b5947e367126b889b1` | ⚠️ Unaudited |
| PairAdder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09500002956877b910acec25c4b4dd57950e1d27` | ⚠️ Unaudited |
| PermaStaker | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x12341234b35c8a48908c716266db79caea0100e8`; ethereum `0xcccccccc94bfecdd365b4ee6b86108fc91848901` | ⚠️ Unaudited |
| PriceWatcher | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaaaa0013e2ec451f76816d1e0a02aba596dd9251` | ⚠️ Unaudited |
| RedemptionHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5eeb063d0abefbbc78f576e28d762a16b637a025` | ⚠️ Unaudited |
| ResupplyPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x08064a8eeecf71203449228f3eac65e462009fdf`; ethereum `0x212589b06ebba4d89d9defcc8ddc58d80e141ea0`; ethereum `0x22b12110f1479d5d6fd53d0da35482371feb3c7e`; ethereum `0x24ccbd9130ec24945916095ec54e9acc7382c864`; ethereum `0x27ab448a75d548ecff73f8b4f36fcc9496768797`; ethereum `0x2d8ecd48b58e53972dbc54d8d0414002b41abc9d`; ethereum `0x39ea8e7f44e9303a7441b1e1a4f5731f1028505c`; ethereum `0x3b037329ff77b5863e6a3c844ad2a7506abe5706`; ethereum `0x3f2b20b8e8ce30bb52239d3dfadf826ecfe6a5f7`; ethereum `0x4a7c64932d1ef0b4a2d430ea10184e3b87095e33`; ethereum `0x55c49c707aa0ad254f34a389a8dfd0d103894adb`; ethereum `0xb5575fe3d3b7877415a166001f67c2df94d4e6c1`; ethereum `0xc5184cccf85b81eddc661330acb3e41bd89f34a1`; ethereum `0xcf1deb0570c2f7dee8c07a7e5fa2bd4b2b96520d` | ⚠️ Unaudited |
| ResupplyPairDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5555555524de7c56c1b20128dbeaace47d2c0417`; ethereum `0x5555555558b7309ecb0fbb23e609ec3c6f74c2ea` | ⚠️ Unaudited |
| ResupplyRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10101010e0c3171d894b71b3400668af311e7d94` | ⚠️ Unaudited |
| RetentionIncentives | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9415639618e70abb71a0f4f8bbb2643bf337892` | ⚠️ Unaudited |
| RetentionReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e7d5dade33f76f480ea38e3c47f870de74906f1` | ⚠️ Unaudited |
| ReusdOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a1e320f289eef2636b6d7aa5c0f9202ee9928e4` | ⚠️ Unaudited |
| RewardHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74747408065d6a85dff07d23f22c921ce7d0b4b1` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xfe11a5009f2121622271e7dd0fd470264e076af6` | ⚠️ Unaudited |
| SavingsReUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x557ab1e003951a73c12d16f0fea8490e39c33c35` | ⚠️ Unaudited |
| SimpleReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2d4e8bff0c23571016d7b329b9fd76441f4a37c9`; ethereum `0x70a1879aeea28072e321d52427f0ac88603df61b`; ethereum `0x8b36ad6a6605745529908c90ccc90f05901155b4`; ethereum `0xc9a9c21f8740684129d271ad1007e87e24858c59` | ⚠️ Unaudited |
| SimpleReceiverFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20d55f2bb72ebde67a4325fb757348ea3d9014d8` | ⚠️ Unaudited |
| Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x042f48346be16be381190a7397a80808243f3b2e` | ⚠️ Unaudited |
| SwapperOdos | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ae884d1a67650501278001fda40dca975d9194d` | ⚠️ Unaudited |
| Treasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4444444455bf42de586a88426e5412971ea48324` | ⚠️ Unaudited |
| TreasuryManagerUpgradeable | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4cf97a55d58aad14c493a46c8151a0bfffb10403` | ⚠️ Unaudited |
| UnderlyingOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x152ce2e248a86bd11ca01502fb8fefbec0fbd5ec` | ⚠️ Unaudited |
| UpgradeOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82ba27ee62fc490f81fefce5ac9c2f238f8b5543` | ⚠️ Unaudited |
| VestManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6666666677b06cb55ebf802bb12f8876360f919c` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11111111408bd67b92c4f74b9d3cf96f1fa412bc` | ⚠️ Unaudited |

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
| [ChainSecurity_Resupply_CurveLend_Operators_audit.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/ChainSecurity_Resupply_CurveLend_Operators_audit.pdf) | ChainSecurity | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [ChainSecurity_Resupply_Resupply_audit.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/ChainSecurity_Resupply_Resupply_audit.pdf) | ChainSecurity | Audit | 2025-02 | aging | Direct | n/a | no match | 0 | 0 | 0 | 30 | n/a |
| [ChainSecurity_Resupply_audit_v2.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/ChainSecurity_Resupply_audit_v2.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 29 | n/a |
| [ChainSecurity_Resupply_sreUSD_audit.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/ChainSecurity_Resupply_sreUSD_audit.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Electisec-Resupply-CurveLendOperator.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/Electisec-Resupply-CurveLendOperator.pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Electisec-Resupply-Inflation-Fixes.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/Electisec-Resupply-Inflation-Fixes.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Electisec-Resupply-sreUSD.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/Electisec-Resupply-sreUSD.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [rsup_yaudit_report.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/rsup_yaudit_report.pdf) | yAudit | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 41 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5822] ChainSecurity_Resupply_CurveLend_Operators_audit.pdf — no match: Two contracts in scope: CurveLendMinterFactory and CurveLendOperator. Audit date from cover page.
- [5823] ChainSecurity_Resupply_Resupply_audit.pdf — no match: No reason recorded
- [5824] ChainSecurity_Resupply_audit_v2.pdf — no match: No reason recorded
- [5825] ChainSecurity_Resupply_sreUSD_audit.pdf — no match: Scope table on page 5 lists 7 contracts with file paths. Audit date from cover page: August 19, 2025.
- [5826] Electisec-Resupply-CurveLendOperator.pdf — no match: Two contracts in scope: CurveLendMinterFactory and CurveLendOperator, both under src/dao/. Audit date is September 16, 2025.
- [5827] Electisec-Resupply-Inflation-Fixes.pdf — no match: The provided text is a GitHub page with navigation elements, not the actual audit report content. No contract names or audit date could be extracted.
- [5828] Electisec-Resupply-sreUSD.pdf — no match: The provided text is a GitHub page navigation and does not contain the actual audit report content. No contracts or audit date could be extracted.
- [5829] rsup_yaudit_report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ChainSecurity_Resupply_CurveLend_Operators_audit.pdf | CurveLendMinterFactory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Resupply_CurveLend_Operators_audit.pdf | CurveLendOperator | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | BasicVaultOracle | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | Core | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | EmissionsController | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | FeeDeposit | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | FeeDepositController | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | GovStaker | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | GovStakerEscrow | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | GovToken | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | InsurancePool | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | InterestRateCalculator | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | LiquidationHandler | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | MultiRewardsDistributor | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | PermaStaker | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | RedemptionHandler | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | ResupplyPair | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | ResupplyPairConstants | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | ResupplyPairCore | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | ResupplyPairDeployer | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | ResupplyRegistry | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | RewardDistributorMultiEpoch | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | RewardHandler | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | SimpleReceiver | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | SimpleReceiverFactory | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | SimpleRewardStreamer | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | Stablecoin | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | Swapper | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | Treasury | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | VestManager | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | Voter | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_Resupply_audit.pdf | WriteOffToken | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | BasicVaultOracle | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | BorrowLimitController | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | Core | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | EmissionsController | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | FeeDeposit | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | FeeDepositController | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | GovStaker | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | GovStakerEscrow | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | GovToken | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | InsurancePool | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | InterestRateCalculator | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | LiquidationHandler | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | MultiRewardsDistributor | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | PermaStaker | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | RedemptionHandler | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | ResupplyPair | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | ResupplyPairCore | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | ResupplyPairDeployer | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | ResupplyRegistry | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | RewardDistributorMultiEpoch | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | RewardHandler | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | SimpleReceiver | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | SimpleReceiverFactory | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | SimpleRewardStreamer | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | Stablecoin | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | Swapper | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | Treasury | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | VestManager | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_audit_v2.pdf | Voter | unmatched — not counted | — | — | no |
| ChainSecurity_Resupply_sreUSD_audit.pdf | LinearRewardsErc4626 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Resupply_sreUSD_audit.pdf | sreUSD | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Resupply_sreUSD_audit.pdf | PriceWatcher | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Resupply_sreUSD_audit.pdf | InterestRateCalculatorV2 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Resupply_sreUSD_audit.pdf | FeeLogger | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Resupply_sreUSD_audit.pdf | RewardHandler | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Resupply_sreUSD_audit.pdf | FeeDepositController | unmatched — not counted | — | listed in scope table | no |
| Electisec-Resupply-CurveLendOperator.pdf | CurveLendMinterFactory | unmatched — not counted | — | listed in scope section | no |
| Electisec-Resupply-CurveLendOperator.pdf | CurveLendOperator | unmatched — not counted | — | listed in scope section | no |
| rsup_yaudit_report.pdf | BasicVaultOracle | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | Constants | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | Core | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | CoreOwnable | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | CorePausable | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | DelegatedOps | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | EmissionsController | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | EpochTracker | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | ExampleReceiver | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | FeeDeposit | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | FeeDepositController | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | GovStaker | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | GovStakerEscrow | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | GovToken | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | GuardianAuthHook | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | GuardianOperator | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | InsurancePool | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | InterestRateCalculator | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | LiquidationHandler | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | MathUtil | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | MultiRewardsDistributor | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | PermaLocker | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | RedemptionHandler | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | ResupplyPair | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | ResupplyPairConstants | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | ResupplyPairCore | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | ResupplyPairDeployer | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | ResupplyRegistry | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | RewardDistributorMultiEpoch | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | RewardHandler | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | SimpleReceiver | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | SimpleReceiverFactory | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | SimpleRewardStreamer | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | Stablecoin | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | Treasury | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | VaultAccount | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | VestManager | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | VestManagerBase | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | Voter | unmatched — not counted | — | — | no |
| rsup_yaudit_report.pdf | WriteOffToken | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 111 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=2
- Match method counts: n/a

Zero-match audit list:

- [5822] ChainSecurity_Resupply_CurveLend_Operators_audit.pdf
- [5823] ChainSecurity_Resupply_Resupply_audit.pdf
- [5824] ChainSecurity_Resupply_audit_v2.pdf
- [5825] ChainSecurity_Resupply_sreUSD_audit.pdf
- [5826] Electisec-Resupply-CurveLendOperator.pdf
- [5827] Electisec-Resupply-Inflation-Fixes.pdf
- [5828] Electisec-Resupply-sreUSD.pdf
- [5829] rsup_yaudit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
