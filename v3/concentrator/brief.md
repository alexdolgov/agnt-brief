# Agentic Audit Brief: Concentrator

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 34 (0 matched; 34 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Concentrator (`concentrator`)
- Website: [https://concentrator.aladdin.club/](https://concentrator.aladdin.club/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 39 unique implementations (44 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $56,501,343.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Concentrator. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 2 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: unclassified (2)
- Contract kinds: unclassified (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Vyper_contract (`0x3f0e79...f2e5df`, chain 1)
- Vyper_contract (`0x5bc3dd...9c9dca`, chain 1)

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 37 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Deployed-live implementations: 2 of 39 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 39
- Raw deployments: 44
- Audits discovered: 34 (34 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 32 stale, 0 unknown
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
| AladdinConvexVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc8ff37...68e0e8` | ⚠️ Unaudited |
| AladdinFXSConvexVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd6e3bb...bf99e1` | ⚠️ Unaudited |
| AutoCompoundingConvexFraxStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9cfd6...c58187` | ⚠️ Unaudited |
| ConvexFraxCompounderBurner | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x789e72...f1a034` | ⚠️ Unaudited |
| CvxCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb0903a...8fb777` | ⚠️ Unaudited |
| CvxFxnCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00bac6...349545` | ⚠️ Unaudited |
| FxUSDCompounder4626 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x07d171...945f9a` | ⚠️ Unaudited |
| PlatformFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x695eb5...411403` | ⚠️ Unaudited |
| PlatformFeeSpliter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x323668...2380c8` | ⚠️ Unaudited |
| SdCRVBribeBurnerV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x680f26...476665` | ⚠️ Unaudited |
| SdCrvCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x43e54c...7b9922` | ⚠️ Unaudited |
| StakeDAOCompounderBurner | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf95420...c05d5b` | ⚠️ Unaudited |
| Vesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x834188...f28742` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x33e411...7fdab0`; ethereum `0xa5d935...a4458c`; ethereum `0xb3ad64...6890b8`; ethereum `0xe4c099...4b4968`; ethereum `0xf43211...366c7a`; ethereum `0xf9078f...d1a5a6` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232180 | `0x3f0e79...f2e5df` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232181 | `0x5bc3dd...9c9dca` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09b0e3...3f3bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12b132...7762a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c0d72...eead09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29e56d...8ef1b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b3e72...e1e3f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b95a1...7e0884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d8b89...d5ef6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3557bd...f63318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cf54f...4450b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50b47c...29346d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x549716...0df240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59866e...ada3de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6037bb...e3ff64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80a8ea...914e49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x837592...4c08f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94cc62...75f345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d6dc3...1573f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb15ad6...be5aba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd27917...76e973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf03d...6d3ec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdec800...c8e359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf57b53...cb87b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa86aa...6ec515` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [AladdinETH_Report_v1.0_2022_12_22.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/AladdinETH_Report_v1.0_2022_12_22.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [SECBIT_AladdinCVX_v1.0_20221209.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinCVX_v1.0_20221209.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [SECBIT_AladdinCVX_v1.1_20230203.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinCVX_v1.1_20230203.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [SECBIT_AladdinDAO_aFXS_Report.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinDAO_aFXS_Report.pdf) | unknown | Audit | 2022-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf) | unknown | Audit | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf) | unknown | Audit | 2022-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf) | unknown | Audit | 2023-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [SECBIT_CLever_Furnace_Update_20221111.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_CLever_Furnace_Update_20221111.pdf) | unknown | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [SECBIT_CLever_Report_v1.1.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_CLever_Report_v1.1.pdf) | unknown | Audit | 2022-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf) | unknown | Audit | 2022-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [SECBIT_Concentrator_Report.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_Report.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [SECBIT_Concentrator_Report_v1.1.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_Report_v1.1.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [SECBIT_Concentrator_aCRV_Update_20230203.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_aCRV_Update_20230203.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf) | unknown | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf) | unknown | Audit | 2023-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf) | unknown | Audit | 2024-08 | aging | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [SECBIT_Generic_CLever_Report.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Generic_CLever_Report.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [SECBIT_TokenSale_Report_v1.1.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_TokenSale_Report_v1.1.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf) | unknown | Audit | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 29 | n/a |
| [SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf) | unknown | Audit | 2023-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf) | unknown | Audit | 2023-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf) | unknown | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [SECBIT_sdCRV_Report_v1.0_20230202.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_sdCRV_Report_v1.0_20230202.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [SECBIT_sdCRV_Report_v1.2_20230616.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_sdCRV_Report_v1.2_20230616.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf) | unknown | Audit | 2023-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [TrailofBits_fx_oracle_202406.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/TrailofBits_fx_oracle_202406.pdf) | Trail of Bits | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [TrailofBits_fx_protocol_202403.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/TrailofBits_fx_protocol_202403.pdf) | Trail of Bits | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 25 | n/a |
| [AladdinDao_V3_Report_Secbit.pdf](https://aladdin.club/audits/AladdinDao_V3_Report_Secbit.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5558] AladdinETH_Report_v1.0_2022_12_22.pdf — no match: All contracts listed in section 2.2 Contract List are in scope. Audit date from title page.
- [5559] PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf — no match: No reason recorded
- [5560] PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf — no match: Only one contract name explicitly mentioned as a target in findings. No scope table or file listing provided.
- [5561] SECBIT_AladdinCVX_v1.0_20221209.pdf — no match: Scope table lists 4 contracts: AladdinCVX.sol, AMOMath.sol, CLeverAMOBase.sol, RewardClaimable.sol. Audit date is December 9, 2022 from the report header.
- [5562] SECBIT_AladdinCVX_v1.1_20230203.pdf — no match: Contracts listed in section 2.2 Contract List. Audit date from cover page: February 3, 2023.
- [5563] SECBIT_AladdinDAO_aFXS_Report.pdf — no match: No reason recorded
- [5564] SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf — no match: No reason recorded
- [5565] SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf — no match: No reason recorded
- [5567] SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf — no match: No reason recorded
- [5568] SECBIT_CLever_Furnace_Update_20221111.pdf — no match: Scope table explicitly lists MetaFurnace.sol and Furnace.sol. Audit date from report header: Nov 11, 2022.
- [5569] SECBIT_CLever_Report_v1.1.pdf — no match: No reason recorded
- [5571] SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf — no match: Extracted 5 contracts from scope table and 11 additional reviewed contracts. Audit date from title: March 8, 2023.
- [5572] SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf — no match: No reason recorded
- [5573] SECBIT_Concentrator_Report.pdf — no match: No reason recorded
- [5574] SECBIT_Concentrator_Report_v1.1.pdf — no match: No reason recorded
- [5575] SECBIT_Concentrator_aCRV_Update_20230203.pdf — no match: Scope table lists three contracts: AladdinCRVV2.sol, ConcentratorStrategyBase.sol, cvxCRVStakingWrapperStrategy.sol. Audit date from title.
- [5576] SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf — no match: No reason recorded
- [5577] SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf — no match: No reason recorded
- [5578] SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf — no match: No reason recorded
- [5579] SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf — no match: No reason recorded
- [5585] SECBIT_Generic_CLever_Report.pdf — no match: Contracts listed in 'Contract List' section of the audit report.
- [5586] SECBIT_TokenSale_Report_v1.1.pdf — no match: Only one contract, TokenSale, is in scope. The report mentions 'Concentrator contract' but it is not listed in scope; it appears to be a different contract. The audit date is from the report header.
- [5591] SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf — no match: No reason recorded
- [5592] SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf — no match: All five contracts from the scope table are extracted. The audit date is July 25, 2023, as stated in the title and introduction.
- [5593] SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf — no match: All contracts listed in section 2.2 Contract List are in scope.
- [5594] SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf — no match: No reason recorded
- [5595] SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf — no match: No reason recorded
- [5601] SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf — no match: No reason recorded
- [5602] SECBIT_sdCRV_Report_v1.0_20230202.pdf — no match: Extracted 6 contracts from the scope section (2.2 Contract List). Audit date from the report header.
- [5603] SECBIT_sdCRV_Report_v1.2_20230616.pdf — no match: Extracted 7 contracts from scope table and update note. Audit date from cover page and update note.
- [5604] Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf — no match: No reason recorded
- [5605] TrailofBits_fx_oracle_202406.pdf — no match: Extracted contract names from the 'Project Targets' section and detailed findings. The audit report date is July 10, 2024, as stated on the cover page and in the project timeline.
- [5606] TrailofBits_fx_protocol_202403.pdf — no match: No reason recorded
- [15350] AladdinDao_V3_Report_Secbit.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| AladdinETH_Report_v1.0_2022_12_22.pdf | FeeCustomization | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | AladdinETH | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | ConcentratorAladdinETHVault | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | AutoCompoundingConvexCurveStrategy | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | AutoCompoundingConvexFraxStrategy | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | AutoCompoundingStrategyBase | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | ConcentratorStrategyBase | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | ManualCompoundingConvexCurveStrategy | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | ManualCompoundingCurveGaugeStrategy | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | ManualCompoundingStrategyBase | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | AladdinCompounder | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | AladdinCompounderWithStrategy | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | ConcentratorGeneralVault | unmatched — not counted | — | listed in contract list | no |
| PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf | AddLiquidityHelper | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf | AladdinCRV | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf | AladdinConvexVault | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf | GaugeRewardDistributor | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf | PlatformFeeDistributor | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf | AladdinCRV | unmatched — not counted | — | Target in finding PVE-001 and mentioned in code listings | no |
| SECBIT_AladdinCVX_v1.0_20221209.pdf | AladdinCVX | unmatched — not counted | — | listed in scope table | no |
| SECBIT_AladdinCVX_v1.0_20221209.pdf | AMOMath | unmatched — not counted | — | listed in scope table | no |
| SECBIT_AladdinCVX_v1.0_20221209.pdf | CLeverAMOBase | unmatched — not counted | — | listed in scope table | no |
| SECBIT_AladdinCVX_v1.0_20221209.pdf | RewardClaimable | unmatched — not counted | — | listed in scope table | no |
| SECBIT_AladdinCVX_v1.1_20230203.pdf | AladdinCVX | unmatched — not counted | — | listed in contract list | no |
| SECBIT_AladdinCVX_v1.1_20230203.pdf | AMOMath | unmatched — not counted | — | listed in contract list | no |
| SECBIT_AladdinCVX_v1.1_20230203.pdf | CLeverAMOBase | unmatched — not counted | — | listed in contract list | no |
| SECBIT_AladdinCVX_v1.1_20230203.pdf | RewardClaimable | unmatched — not counted | — | listed in contract list | no |
| SECBIT_AladdinCVX_v1.1_20230203.pdf | AMOConvexCurveStrategy | unmatched — not counted | — | listed in contract list | no |
| SECBIT_AladdinDAO_aFXS_Report.pdf | AladdinCompounder | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_Report.pdf | AladdinFXS | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_Report.pdf | AladdinFXSConvexVault | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_Report.pdf | ConcentratorConvexVault | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | AladdinFXSV2 | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | BurnerBase | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | ConverterBase | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | ConverterRegistry | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | ConvexFraxCompounderBurner | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | CvxFxsStakingStrategy | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | GeneralTokenConverter | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | PlatformFeeBurner | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | PlatformFeeSpliter | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | StakeDAOCompounderBurner | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | AllInOneGateWay | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | CLeverCVXLocker | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | ConcentratorStrategy | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | CurveBasePoolChecker | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | CurveMetaPoolChecker | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | Vesting | unmatched — not counted | — | — | no |
| SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf | AutoCompoundingStrategyBaseV2 | unmatched — not counted | — | — | no |
| SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf | ConcentratorCompounderBase | unmatched — not counted | — | — | no |
| SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf | ConcentratorCompounderStash | unmatched — not counted | — | — | no |
| SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf | CvxCompounder | unmatched — not counted | — | — | no |
| SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf | CvxStakingStrategy | unmatched — not counted | — | — | no |
| SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf | LinearRewardDistributor | unmatched — not counted | — | — | no |
| SECBIT_CLever_Furnace_Update_20221111.pdf | MetaFurnace | unmatched — not counted | — | listed in scope table | no |
| SECBIT_CLever_Furnace_Update_20221111.pdf | Furnace | unmatched — not counted | — | listed in scope table | no |
| SECBIT_CLever_Report_v1.1.pdf | CLeverCVXLocker | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | CLeverCVXLocker.sol | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | CLeverToken | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | CLeverToken.sol | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | Furnace | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | Furnace.sol | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | Vesting | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | Vesting.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | CLeverAMOHarvesterFacet | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | ConcentratorHarvesterFacet | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | StakeDaoHarvesterFacet | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | LibConcentratorHarvester | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | ConcentratorBase | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinCompounder | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinCompounderWithStrategy | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | ConcentratorConvexVault | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | ConcentratorGeneralVault | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | CLeverAMOBase | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinCVX | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinCRV | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinCRVConvexVault | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinCRVV2 | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinFXS | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinSdCRV | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf | AladdinConvexVault | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf | ConcentratorIFOVault | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report.pdf | AladdinCRV.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report.pdf | AladdinCRVZap.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report.pdf | AladdinConvexVault.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report.pdf | AladdinConvexVaultZap.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report_v1.1.pdf | AladdinCRV.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report_v1.1.pdf | AladdinCRVZap.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report_v1.1.pdf | AladdinConvexVault.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report_v1.1.pdf | AladdinConvexVaultZap.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report_v1.1.pdf | AladdinZap.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_aCRV_Update_20230203.pdf | AladdinCRVV2 | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_aCRV_Update_20230203.pdf | ConcentratorStrategyBase | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_aCRV_Update_20230203.pdf | cvxCRVStakingWrapperStrategy | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf | AutoCompoundingStrategyBaseV2 | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf | ConcentratorCompounderBase | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf | CvxFxnCompounder | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf | CvxFxnCompounder.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf | CvxFxnStakingStrategy | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf | CvxFxnStakingStrategy.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf | FxUSDCompounder.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf | FxUSDCompounder4626.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf | FxUSDStandardizedYieldBase.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | ConcentratorSdCrvGaugeWrapper | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | ConcentratorStakeDAOGaugeWrapper | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | ConcentratorStakeDAOLocker | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | LegacyCompounderStash | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | SdCRVBribeBurnerV2 | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | SdCRVLocker | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | SdCrvCompounder | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | StakeDAOGaugeWrapperStash | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf | AutoCompoundingStrategyBaseV2 | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf | ConcentratorCompounderBase | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf | SdPendleBribeBurner | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf | SdPendleCompounder | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf | SdPendleGaugeStrategy | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf | SdPendleHelper | unmatched — not counted | — | — | no |
| SECBIT_Generic_CLever_Report.pdf | MataCLever | unmatched — not counted | — | listed in contract list | no |
| SECBIT_Generic_CLever_Report.pdf | MetaFurnace | unmatched — not counted | — | listed in contract list | no |
| SECBIT_Generic_CLever_Report.pdf | AladdinCRVStrategy | unmatched — not counted | — | listed in contract list | no |
| SECBIT_Generic_CLever_Report.pdf | ConcentratorBatchStrategy | unmatched — not counted | — | listed in contract list | no |
| SECBIT_Generic_CLever_Report.pdf | ConcentratorStrategy | unmatched — not counted | — | listed in contract list | no |
| SECBIT_Generic_CLever_Report.pdf | YieldStrategyBase | unmatched — not counted | — | listed in contract list | no |
| SECBIT_TokenSale_Report_v1.1.pdf | TokenSale | unmatched — not counted | — | listed in scope section and contract list | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | ConvexCurveManager | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | ConvexCurveManagerImmutable | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | CvxFxnVestingManager | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | ExponentialMovingAverage | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | FxGateway | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | GeneralTokenConverter | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | LidoConverter | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | LinearMultipleRewardDistributor | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | LinearReward | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | LinearRewardDistributor | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | LiquidityGauge | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | LiquidityManagerBase | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | LiquidityManagerBaseImmutable | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | ManageableVesting | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | Market | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | MultipleRewardAccumulator | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | PlainVestingManager | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | RebalancePool | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | RebalancePoolRegistry | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | RebalancePoolSplitter | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | RebalanceWithBonusToken | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | SdFxnVestingManager | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | SharedLiquidityGauge | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | StETHAndxETHWrapper | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | Treasury | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | VestingManagerProxy | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | VotingEscrowBoost | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | VotingEscrowProxy | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | WordCodec | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf | RebalanceWithBonusToken | unmatched — not counted | — | listed in scope table | no |
| SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf | stETHGateway | unmatched — not counted | — | listed in scope table | no |
| SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf | stETHTreasury | unmatched — not counted | — | listed in scope table | no |
| SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf | wstETHWrapper | unmatched — not counted | — | listed in scope table | no |
| SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf | RebalancePool | unmatched — not counted | — | listed in scope table | no |
| SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf | ETHGateway | unmatched — not counted | — | listed in contract list | no |
| SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf | FractionalToken | unmatched — not counted | — | listed in contract list | no |
| SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf | LeveragedToken | unmatched — not counted | — | listed in contract list | no |
| SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf | Market | unmatched — not counted | — | listed in contract list | no |
| SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf | StableCoinMath | unmatched — not counted | — | listed in contract list | no |
| SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf | Treasury | unmatched — not counted | — | listed in contract list | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | ChainlinkWstETHRateProvider | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | FxETHTwapOracle | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | FxGateway | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | HarvestableTreasury | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | Market | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | MultiPathConverter | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | ReservePool | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | StableCoinMath | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | Treasury | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | WrappedTokenTreasury | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | wBETHProvider | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf | BoostableRebalancePool | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf | MultipleRewardCompoundingAccumulator | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf | RebalancePoolGaugeClaimer | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | AaveV3Strategy | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | AssetManagement | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | ConcentratorBase | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | FxUSDBasePoolV2Facet | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | RewardHarvester | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | SavingFxUSD | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | SavingFxUSDFacet | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | StrategyBase | unmatched — not counted | — | — | no |
| SECBIT_sdCRV_Report_v1.0_20230202.pdf | AladdinSdCRV | unmatched — not counted | — | listed in scope | no |
| SECBIT_sdCRV_Report_v1.0_20230202.pdf | SdCRVLocker | unmatched — not counted | — | listed in scope | no |
| SECBIT_sdCRV_Report_v1.0_20230202.pdf | StakeDAOCRVVault | unmatched — not counted | — | listed in scope | no |
| SECBIT_sdCRV_Report_v1.0_20230202.pdf | StakeDAOLockerProxy | unmatched — not counted | — | listed in scope | no |
| SECBIT_sdCRV_Report_v1.0_20230202.pdf | StakeDAOVaultBase | unmatched — not counted | — | listed in scope | no |
| SECBIT_sdCRV_Report_v1.0_20230202.pdf | VeSDTDelegation | unmatched — not counted | — | listed in scope | no |
| SECBIT_sdCRV_Report_v1.2_20230616.pdf | AladdinSdCRV | unmatched — not counted | — | listed in scope table | no |
| SECBIT_sdCRV_Report_v1.2_20230616.pdf | SdCRVLocker | unmatched — not counted | — | listed in scope table | no |
| SECBIT_sdCRV_Report_v1.2_20230616.pdf | StakeDAOCRVVault | unmatched — not counted | — | listed in scope table | no |
| SECBIT_sdCRV_Report_v1.2_20230616.pdf | StakeDAOLockerProxy | unmatched — not counted | — | listed in scope table | no |
| SECBIT_sdCRV_Report_v1.2_20230616.pdf | StakeDAOVaultBase | unmatched — not counted | — | listed in scope table | no |
| SECBIT_sdCRV_Report_v1.2_20230616.pdf | VeSDTDelegation | unmatched — not counted | — | listed in scope table | no |
| SECBIT_sdCRV_Report_v1.2_20230616.pdf | ConcentratorVaultForAsdCRV | unmatched — not counted | — | mentioned in scope update | no |
| Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf | AutoCompoundingStrategyBaseV2 | unmatched — not counted | — | — | no |
| Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf | ConcentratorCompounderBase | unmatched — not counted | — | — | no |
| Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf | ConcentratorStrategyBase | unmatched — not counted | — | — | no |
| Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf | ConcentratorStrategyBaseV2 | unmatched — not counted | — | — | no |
| Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf | CvxCompounder | unmatched — not counted | — | — | no |
| Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf | CvxStakingStrategy | unmatched — not counted | — | — | no |
| Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf | LinearRewardDistributor | unmatched — not counted | — | — | no |
| TrailofBits_fx_oracle_202406.pdf | FxBTCDerivativeOracleBase | unmatched — not counted | — | listed in scope and detailed findings | no |
| TrailofBits_fx_oracle_202406.pdf | FxSpotOracleBase | unmatched — not counted | — | listed in detailed findings | no |
| TrailofBits_fx_oracle_202406.pdf | FxLSDOracleV2Base | unmatched — not counted | — | referenced in detailed findings | no |
| TrailofBits_fx_oracle_202406.pdf | LeveragedTokenV2 | unmatched — not counted | — | listed in detailed findings | no |
| TrailofBits_fx_oracle_202406.pdf | SpotPriceOracle | unmatched — not counted | — | listed in detailed findings | no |
| TrailofBits_fx_protocol_202403.pdf | BoostableRebalancePool | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | ChainlinkTwapOracleV3 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | ERC4626RateProvider | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FractionalTokenV2 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxFrxETHTwapOracle | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxInitialFund | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxMarketV1Facet | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxStableMath | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxTokenBalancerV2Wrapper | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxUSD | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxUSDFacet | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxUSDRebalancer | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxUSDShareableRebalancePool | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | GaugeControllerOwner | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | LeveragedTokenV2 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | LeveragedTokenWrapper | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | LibGatewayRouter | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | MarketV2 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | ReservePoolV2 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | ShareableRebalancePool | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | ShareableRebalancePoolV2 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | TokenConvertManagementFacet | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | TreasuryV2 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | WrappedTokenTreasuryV2 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | WstETHRateProvider | unmatched — not counted | — | — | no |
| AladdinDao_V3_Report_Secbit.pdf | AladdinCRV | unmatched — not counted | — | — | no |
| AladdinDao_V3_Report_Secbit.pdf | AladdinCRVZap | unmatched — not counted | — | — | no |
| AladdinDao_V3_Report_Secbit.pdf | AladdinConvexVault | unmatched — not counted | — | — | no |
| AladdinDao_V3_Report_Secbit.pdf | AladdinConvexVaultZap | unmatched — not counted | — | — | no |
| AladdinDao_V3_Report_Secbit.pdf | AladdinZap | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x3f0e79...f2e5df` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5bc3dd...9c9dca` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 34
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 241 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=13, medium=1
- Match method counts: n/a

Zero-match audit list:

- [5558] AladdinETH_Report_v1.0_2022_12_22.pdf
- [5559] PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf
- [5560] PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf
- [5561] SECBIT_AladdinCVX_v1.0_20221209.pdf
- [5562] SECBIT_AladdinCVX_v1.1_20230203.pdf
- [5563] SECBIT_AladdinDAO_aFXS_Report.pdf
- [5564] SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf
- [5565] SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf
- [5567] SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf
- [5568] SECBIT_CLever_Furnace_Update_20221111.pdf
- [5569] SECBIT_CLever_Report_v1.1.pdf
- [5571] SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf
- [5572] SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf
- [5573] SECBIT_Concentrator_Report.pdf
- [5574] SECBIT_Concentrator_Report_v1.1.pdf
- [5575] SECBIT_Concentrator_aCRV_Update_20230203.pdf
- [5576] SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf
- [5577] SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf
- [5578] SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf
- [5579] SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf
- [5585] SECBIT_Generic_CLever_Report.pdf
- [5586] SECBIT_TokenSale_Report_v1.1.pdf
- [5591] SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf
- [5592] SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf
- [5593] SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf
- [5594] SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf
- [5595] SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf
- [5601] SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf
- [5602] SECBIT_sdCRV_Report_v1.0_20230202.pdf
- [5603] SECBIT_sdCRV_Report_v1.2_20230616.pdf
- [5604] Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf
- [5605] TrailofBits_fx_oracle_202406.pdf
- [5606] TrailofBits_fx_protocol_202403.pdf
- [15350] AladdinDao_V3_Report_Secbit.pdf

Fork inheritance lineage and inherited audits are included when available.
