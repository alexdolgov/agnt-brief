# Agentic Audit Brief: Resupply

## Project Overview

- Project: Resupply (`resupply`)
- Website: [https://resupply.fi/](https://resupply.fi/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:45.971Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-0679
- Chains: ethereum
- Contract surface: 39 unique implementations (60 raw deployments)
- DeFi Llama TVL: $38,229,554.93
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 135 project-authored contract(s) across 1 chain(s); 11 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 6 common project-authored base contract(s) (rewarddistributormultiepoch, coreownable, epochtracker). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 60; live-surface contracts included: 60 (60 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/36 (16.7%)
- Deployed-live implementations: 39 of 39 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/39
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 39
- Raw deployments: 60
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 4 fresh, 2 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 16.7% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 6 | 15.4% | 2025-10 |
| yAudit | Tier 2 | 1 | 2.6% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeDepositController | governance | ethereum | n/a | [`0xc700000506423bad12d5eb6d55b35ea9f5384df6`](./contracts/ethereum-1/0xc700000506423bad12d5eb6d55b35ea9f5384df6/) | ✅ Audited |
| InterestRateCalculatorV2 | operational_periphery | ethereum | n/a | [`0x1972b5d65a690de0bc36278ac93d47fd98bc14f7`](./contracts/ethereum-1/0x1972b5d65a690de0bc36278ac93d47fd98bc14f7/) | ✅ Audited |
| PriceWatcher | operational_periphery | ethereum | n/a | [`0xaaaa0013e2ec451f76816d1e0a02aba596dd9251`](./contracts/ethereum-1/0xaaaa0013e2ec451f76816d1e0a02aba596dd9251/) | ✅ Audited |
| ResupplyRegistry | registry | ethereum | n/a | [`0x10101010e0c3171d894b71b3400668af311e7d94`](./contracts/ethereum-1/0x10101010e0c3171d894b71b3400668af311e7d94/) | ✅ Audited |
| RewardHandler | unknown | ethereum | n/a | [`0x74747408065d6a85dff07d23f22c921ce7d0b4b1`](./contracts/ethereum-1/0x74747408065d6a85dff07d23f22c921ce7d0b4b1/) | ✅ Audited |
| SavingsReUSD | unknown | ethereum | n/a | [`0x557ab1e003951a73c12d16f0fea8490e39c33c35`](./contracts/ethereum-1/0x557ab1e003951a73c12d16f0fea8490e39c33c35/) | ✅ Audited |

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AutoStakeCallback | unknown | ethereum | n/a | [`0x4888205f02df9832274d470c685baa728f128745`](./contracts/ethereum-1/0x4888205f02df9832274d470c685baa728f128745/) | ⚠️ Unaudited |
| BasicVaultOracle | operational_periphery | ethereum | n/a | [`0xcb7e25fbbd8afe4ce73d7dac647dbc3d847f3c82`](./contracts/ethereum-1/0xcb7e25fbbd8afe4ce73d7dac647dbc3d847f3c82/) | ⚠️ Unaudited |
| BorrowLimitController | core_logic | ethereum | n/a | [`0x0950000465476f4470e74aed93e7dd414012bb7d`](./contracts/ethereum-1/0x0950000465476f4470e74aed93e7dd414012bb7d/) | ⚠️ Unaudited |
| Core | unknown | ethereum | n/a | [`0xc07e000044f95655c11fda4cd37f70a94d7e0a7d`](./contracts/ethereum-1/0xc07e000044f95655c11fda4cd37f70a94d7e0a7d/) | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xc522a6606bba746d7960404f22a3db936b6f4f50`](./contracts/ethereum-1/0xc522a6606bba746d7960404f22a3db936b6f4f50/); ethereum `0xed785af60bed688baa8990cd5c4166221599a441` | ⚠️ Unaudited |
| CurveTwocryptoOptimized | unknown | ethereum | n/a | [`0xee351f12eae8c2b8b9d1b9bfd3c5dd565234578d`](./contracts/ethereum-1/0xee351f12eae8c2b8b9d1b9bfd3c5dd565234578d/) | ⚠️ Unaudited |
| EmissionsController | operational_periphery | ethereum | n/a | [`0x33333333df05b0d52edd13d230461e5a0f5a4706`](./contracts/ethereum-1/0x33333333df05b0d52edd13d230461e5a0f5a4706/) | ⚠️ Unaudited |
| FeeDeposit | unknown | ethereum | n/a | [`0x07ad4630985ade5b5307806c43e57e0a9a932c52`](./contracts/ethereum-1/0x07ad4630985ade5b5307806c43e57e0a9a932c52/) | ⚠️ Unaudited |
| GovStaker | core_logic | ethereum | n/a | [`0x22222222e9fe38f6f1fc8c61b25228adb4d8b953`](./contracts/ethereum-1/0x22222222e9fe38f6f1fc8c61b25228adb4d8b953/) | ⚠️ Unaudited |
| GuardianUpgradeable | governance | ethereum | n/a | [`0xa4745e0b1f40ab3dcfd98f381835de591a8974e3`](./contracts/ethereum-1/0xa4745e0b1f40ab3dcfd98f381835de591a8974e3/) | ⚠️ Unaudited |
| InsurancePool | core_logic | ethereum | n/a | [`0x00000000efe883b3304aff71eacf72dbc3e1b577`](./contracts/ethereum-1/0x00000000efe883b3304aff71eacf72dbc3e1b577/) | ⚠️ Unaudited |
| InterestRateCalculator | operational_periphery | ethereum | n/a | [`0x77777777729c405efb6ac823493e6111f0070d67`](./contracts/ethereum-1/0x77777777729c405efb6ac823493e6111f0070d67/) | ⚠️ Unaudited |
| Keeper | operational_periphery | ethereum | n/a | [`0x49f7aa38af55322de009add5f10a602cd26ee958`](./contracts/ethereum-1/0x49f7aa38af55322de009add5f10a602cd26ee958/) | ⚠️ Unaudited |
| LiquidityGaugeV6 | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x09f62a6777032329c0d49f1fd4fbe9b3468cda56`](./contracts/ethereum-1/0x09f62a6777032329c0d49f1fd4fbe9b3468cda56/); ethereum `0x5c0b03914f68f2717d779a0211fd98c2cc45a4dd`; ethereum `0xaf01d68714e7ea67f43f08b5947e367126b889b1` | ⚠️ Unaudited |
| PairAdder | unknown | ethereum | n/a | [`0x09500002956877b910acec25c4b4dd57950e1d27`](./contracts/ethereum-1/0x09500002956877b910acec25c4b4dd57950e1d27/) | ⚠️ Unaudited |
| PermaStaker | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x12341234b35c8a48908c716266db79caea0100e8`](./contracts/ethereum-1/0x12341234b35c8a48908c716266db79caea0100e8/); ethereum `0xcccccccc94bfecdd365b4ee6b86108fc91848901` | ⚠️ Unaudited |
| RedemptionHandler | unknown | ethereum | n/a | [`0x5eeb063d0abefbbc78f576e28d762a16b637a025`](./contracts/ethereum-1/0x5eeb063d0abefbbc78f576e28d762a16b637a025/) | ⚠️ Unaudited |
| ResupplyPair | unknown | ethereum | n/a | 14 deployments: ethereum [`0x08064a8eeecf71203449228f3eac65e462009fdf`](./contracts/ethereum-1/0x08064a8eeecf71203449228f3eac65e462009fdf/); ethereum `0x212589b06ebba4d89d9defcc8ddc58d80e141ea0`; ethereum `0x22b12110f1479d5d6fd53d0da35482371feb3c7e`; ethereum `0x24ccbd9130ec24945916095ec54e9acc7382c864`; ethereum `0x27ab448a75d548ecff73f8b4f36fcc9496768797`; ethereum `0x2d8ecd48b58e53972dbc54d8d0414002b41abc9d`; ethereum `0x39ea8e7f44e9303a7441b1e1a4f5731f1028505c`; ethereum `0x3b037329ff77b5863e6a3c844ad2a7506abe5706`; ethereum `0x3f2b20b8e8ce30bb52239d3dfadf826ecfe6a5f7`; ethereum `0x4a7c64932d1ef0b4a2d430ea10184e3b87095e33`; ethereum `0x55c49c707aa0ad254f34a389a8dfd0d103894adb`; ethereum `0xb5575fe3d3b7877415a166001f67c2df94d4e6c1`; ethereum `0xc5184cccf85b81eddc661330acb3e41bd89f34a1`; ethereum `0xcf1deb0570c2f7dee8c07a7e5fa2bd4b2b96520d` | ⚠️ Unaudited |
| ResupplyPairDeployer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5555555524de7c56c1b20128dbeaace47d2c0417`](./contracts/ethereum-1/0x5555555524de7c56c1b20128dbeaace47d2c0417/); ethereum `0x5555555558b7309ecb0fbb23e609ec3c6f74c2ea` | ⚠️ Unaudited |
| RetentionIncentives | unknown | ethereum | n/a | [`0xb9415639618e70abb71a0f4f8bbb2643bf337892`](./contracts/ethereum-1/0xb9415639618e70abb71a0f4f8bbb2643bf337892/) | ⚠️ Unaudited |
| RetentionReceiver | unknown | ethereum | n/a | [`0x6e7d5dade33f76f480ea38e3c47f870de74906f1`](./contracts/ethereum-1/0x6e7d5dade33f76f480ea38e3c47f870de74906f1/) | ⚠️ Unaudited |
| ReusdOracle | operational_periphery | ethereum | n/a | [`0x3a1e320f289eef2636b6d7aa5c0f9202ee9928e4`](./contracts/ethereum-1/0x3a1e320f289eef2636b6d7aa5c0f9202ee9928e4/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0xfe11a5009f2121622271e7dd0fd470264e076af6`](./contracts/ethereum-1/0xfe11a5009f2121622271e7dd0fd470264e076af6/) | ⚠️ Unaudited |
| SimpleReceiver | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2d4e8bff0c23571016d7b329b9fd76441f4a37c9`](./contracts/ethereum-1/0x2d4e8bff0c23571016d7b329b9fd76441f4a37c9/); ethereum `0x70a1879aeea28072e321d52427f0ac88603df61b`; ethereum `0x8b36ad6a6605745529908c90ccc90f05901155b4`; ethereum `0xc9a9c21f8740684129d271ad1007e87e24858c59` | ⚠️ Unaudited |
| SimpleReceiverFactory | registry | ethereum | n/a | [`0x20d55f2bb72ebde67a4325fb757348ea3d9014d8`](./contracts/ethereum-1/0x20d55f2bb72ebde67a4325fb757348ea3d9014d8/) | ⚠️ Unaudited |
| Swapper | adapter | ethereum | n/a | [`0x042f48346be16be381190a7397a80808243f3b2e`](./contracts/ethereum-1/0x042f48346be16be381190a7397a80808243f3b2e/) | ⚠️ Unaudited |
| SwapperOdos | adapter | ethereum | n/a | [`0x3ae884d1a67650501278001fda40dca975d9194d`](./contracts/ethereum-1/0x3ae884d1a67650501278001fda40dca975d9194d/) | ⚠️ Unaudited |
| Treasury | operational_periphery | ethereum | n/a | [`0x4444444455bf42de586a88426e5412971ea48324`](./contracts/ethereum-1/0x4444444455bf42de586a88426e5412971ea48324/) | ⚠️ Unaudited |
| TreasuryManagerUpgradeable | operational_periphery | ethereum | n/a | [`0x4cf97a55d58aad14c493a46c8151a0bfffb10403`](./contracts/ethereum-1/0x4cf97a55d58aad14c493a46c8151a0bfffb10403/) | ⚠️ Unaudited |
| UnderlyingOracle | operational_periphery | ethereum | n/a | [`0x152ce2e248a86bd11ca01502fb8fefbec0fbd5ec`](./contracts/ethereum-1/0x152ce2e248a86bd11ca01502fb8fefbec0fbd5ec/) | ⚠️ Unaudited |
| UpgradeOperator | unknown | ethereum | n/a | [`0x82ba27ee62fc490f81fefce5ac9c2f238f8b5543`](./contracts/ethereum-1/0x82ba27ee62fc490f81fefce5ac9c2f238f8b5543/) | ⚠️ Unaudited |
| VestManager | operational_periphery | ethereum | n/a | [`0x6666666677b06cb55ebf802bb12f8876360f919c`](./contracts/ethereum-1/0x6666666677b06cb55ebf802bb12f8876360f919c/) | ⚠️ Unaudited |
| Voter | unknown | ethereum | n/a | [`0x11111111408bd67b92c4f74b9d3cf96f1fa412bc`](./contracts/ethereum-1/0x11111111408bd67b92c4f74b9d3cf96f1fa412bc/) | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ChainSecurity_Resupply_CurveLend_Operators_audit.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/ChainSecurity_Resupply_CurveLend_Operators_audit.pdf) | ChainSecurity | Audit | 2025-10 | fresh | Direct | contract_name | 0 | n/a |
| [ChainSecurity_Resupply_Resupply_audit.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/ChainSecurity_Resupply_Resupply_audit.pdf) | ChainSecurity | Audit | 2025-02 | aging | Direct | contract_name | 1 | n/a |
| [ChainSecurity_Resupply_audit_v2.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/ChainSecurity_Resupply_audit_v2.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | contract_name | 1 | n/a |
| [ChainSecurity_Resupply_sreUSD_audit.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/ChainSecurity_Resupply_sreUSD_audit.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | contract_name | 5 | high |
| [Electisec-Resupply-CurveLendOperator.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/Electisec-Resupply-CurveLendOperator.pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | 0 | n/a |
| [Electisec-Resupply-Inflation-Fixes.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/Electisec-Resupply-Inflation-Fixes.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Electisec-Resupply-sreUSD.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/Electisec-Resupply-sreUSD.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rsup_yaudit_report.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/rsup_yaudit_report.pdf) | yAudit | Audit | 2024-12 | aging | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4888205f02df9832274d470c685baa728f128745`](./contracts/ethereum-1/0x4888205f02df9832274d470c685baa728f128745/) | AutoStakeCallback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb7e25fbbd8afe4ce73d7dac647dbc3d847f3c82`](./contracts/ethereum-1/0xcb7e25fbbd8afe4ce73d7dac647dbc3d847f3c82/) | BasicVaultOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0950000465476f4470e74aed93e7dd414012bb7d`](./contracts/ethereum-1/0x0950000465476f4470e74aed93e7dd414012bb7d/) | BorrowLimitController | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc07e000044f95655c11fda4cd37f70a94d7e0a7d`](./contracts/ethereum-1/0xc07e000044f95655c11fda4cd37f70a94d7e0a7d/) | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33333333df05b0d52edd13d230461e5a0f5a4706`](./contracts/ethereum-1/0x33333333df05b0d52edd13d230461e5a0f5a4706/) | EmissionsController | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07ad4630985ade5b5307806c43e57e0a9a932c52`](./contracts/ethereum-1/0x07ad4630985ade5b5307806c43e57e0a9a932c52/) | FeeDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22222222e9fe38f6f1fc8c61b25228adb4d8b953`](./contracts/ethereum-1/0x22222222e9fe38f6f1fc8c61b25228adb4d8b953/) | GovStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4745e0b1f40ab3dcfd98f381835de591a8974e3`](./contracts/ethereum-1/0xa4745e0b1f40ab3dcfd98f381835de591a8974e3/) | GuardianUpgradeable | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00000000efe883b3304aff71eacf72dbc3e1b577`](./contracts/ethereum-1/0x00000000efe883b3304aff71eacf72dbc3e1b577/) | InsurancePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77777777729c405efb6ac823493e6111f0070d67`](./contracts/ethereum-1/0x77777777729c405efb6ac823493e6111f0070d67/) | InterestRateCalculator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49f7aa38af55322de009add5f10a602cd26ee958`](./contracts/ethereum-1/0x49f7aa38af55322de009add5f10a602cd26ee958/) | Keeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09f62a6777032329c0d49f1fd4fbe9b3468cda56`](./contracts/ethereum-1/0x09f62a6777032329c0d49f1fd4fbe9b3468cda56/) | LiquidityGaugeV6 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09500002956877b910acec25c4b4dd57950e1d27`](./contracts/ethereum-1/0x09500002956877b910acec25c4b4dd57950e1d27/) | PairAdder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12341234b35c8a48908c716266db79caea0100e8`](./contracts/ethereum-1/0x12341234b35c8a48908c716266db79caea0100e8/) | PermaStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5eeb063d0abefbbc78f576e28d762a16b637a025`](./contracts/ethereum-1/0x5eeb063d0abefbbc78f576e28d762a16b637a025/) | RedemptionHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08064a8eeecf71203449228f3eac65e462009fdf`](./contracts/ethereum-1/0x08064a8eeecf71203449228f3eac65e462009fdf/) | ResupplyPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5555555524de7c56c1b20128dbeaace47d2c0417`](./contracts/ethereum-1/0x5555555524de7c56c1b20128dbeaace47d2c0417/) | ResupplyPairDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9415639618e70abb71a0f4f8bbb2643bf337892`](./contracts/ethereum-1/0xb9415639618e70abb71a0f4f8bbb2643bf337892/) | RetentionIncentives | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e7d5dade33f76f480ea38e3c47f870de74906f1`](./contracts/ethereum-1/0x6e7d5dade33f76f480ea38e3c47f870de74906f1/) | RetentionReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a1e320f289eef2636b6d7aa5c0f9202ee9928e4`](./contracts/ethereum-1/0x3a1e320f289eef2636b6d7aa5c0f9202ee9928e4/) | ReusdOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d4e8bff0c23571016d7b329b9fd76441f4a37c9`](./contracts/ethereum-1/0x2d4e8bff0c23571016d7b329b9fd76441f4a37c9/) | SimpleReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20d55f2bb72ebde67a4325fb757348ea3d9014d8`](./contracts/ethereum-1/0x20d55f2bb72ebde67a4325fb757348ea3d9014d8/) | SimpleReceiverFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x042f48346be16be381190a7397a80808243f3b2e`](./contracts/ethereum-1/0x042f48346be16be381190a7397a80808243f3b2e/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ae884d1a67650501278001fda40dca975d9194d`](./contracts/ethereum-1/0x3ae884d1a67650501278001fda40dca975d9194d/) | SwapperOdos | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4444444455bf42de586a88426e5412971ea48324`](./contracts/ethereum-1/0x4444444455bf42de586a88426e5412971ea48324/) | Treasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4cf97a55d58aad14c493a46c8151a0bfffb10403`](./contracts/ethereum-1/0x4cf97a55d58aad14c493a46c8151a0bfffb10403/) | TreasuryManagerUpgradeable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x152ce2e248a86bd11ca01502fb8fefbec0fbd5ec`](./contracts/ethereum-1/0x152ce2e248a86bd11ca01502fb8fefbec0fbd5ec/) | UnderlyingOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82ba27ee62fc490f81fefce5ac9c2f238f8b5543`](./contracts/ethereum-1/0x82ba27ee62fc490f81fefce5ac9c2f238f8b5543/) | UpgradeOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6666666677b06cb55ebf802bb12f8876360f919c`](./contracts/ethereum-1/0x6666666677b06cb55ebf802bb12f8876360f919c/) | VestManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11111111408bd67b92c4f74b9d3cf96f1fa412bc`](./contracts/ethereum-1/0x11111111408bd67b92c4f74b9d3cf96f1fa412bc/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=3, extraction_exact=7

Zero-match audit list:

- [5822] ChainSecurity_Resupply_CurveLend_Operators_audit.pdf
- [5826] Electisec-Resupply-CurveLendOperator.pdf
- [5827] Electisec-Resupply-Inflation-Fixes.pdf
- [5828] Electisec-Resupply-sreUSD.pdf

Fork inheritance lineage and inherited audits are included when available.
