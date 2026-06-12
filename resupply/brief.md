# Agentic Audit Brief: Resupply

## Project Overview

- Project: Resupply (`resupply`)
- Website: [https://resupply.fi/](https://resupply.fi/)
- Lifecycle: active (Tier 0, 74.3% below peak)
- Generated: 2026-06-12T05:39:47.656Z
- Pipeline run: v2-pipeline-2026-06-12-c31370-dba8
- Chains: ethereum
- Contract surface: 41 unique implementations (64 raw deployments)
- DeFi Llama TVL: $38,668,611.92
- On-chain TVL (included contracts): $3,182,227.15
- TVL by chain: Ethereum $3,182,227.15

## Project Description

Resupply is an Ethereum DeFi protocol centered on reUSD, a stablecoin-backed lending and rehypothecation system. Users can deposit supported collateral such as crvUSD- and frxUSD-related assets into markets to borrow reUSD, while the protocol routes collateral and liquidity through operators and related lending infrastructure. The protocol also includes governance/staking, insurance pool, liquidation/redemption, treasury and registry components that coordinate markets, risk management and system accounting.

### Architecture

The protocol consists of a single product family with one registry contract that likely manages all lending pools and user positions.

## Audit Coverage Summary

- Verified implementations audited: 1/41 (2.4%)
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 41
- Raw deployments: 64
- Audits discovered: 8
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $3,182,227.15
- Latest audit: 2025-10 (fresh)
- Staleness: 4 fresh, 2 aging, 0 stale, 2 unknown
- Tier 1 coverage: 2.4% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 1 | 2.4% | 2025-10 |
| yAudit | Tier 2 | 1 | 2.4% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ResupplyRegistry | registry | ethereum | [`0x101010...1e7d94`](./contracts/ethereum-1/0x10101010e0c3171d894b71b3400668af311e7d94/) | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| InsurancePool | core_logic | ethereum | [`0x000000...e1b577`](./contracts/ethereum-1/0x00000000efe883b3304aff71eacf72dbc3e1b577/) | ⚠️ Unaudited |
| GovStaker | core_logic | ethereum | [`0x222222...d8b953`](./contracts/ethereum-1/0x22222222e9fe38f6f1fc8c61b25228adb4d8b953/) | ⚠️ Unaudited |
| AutoStakeCallback | unknown | ethereum | [`0x488820...128745`](./contracts/ethereum-1/0x4888205f02df9832274d470c685baa728f128745/) | ⚠️ Unaudited |
| BasicVaultOracle | unknown | ethereum | [`0xcb7e25...7f3c82`](./contracts/ethereum-1/0xcb7e25fbbd8afe4ce73d7dac647dbc3d847f3c82/) | ⚠️ Unaudited |
| BorrowLimitController | core_logic | ethereum | [`0x095000...12bb7d`](./contracts/ethereum-1/0x0950000465476f4470e74aed93e7dd414012bb7d/) | ⚠️ Unaudited |
| Core | unknown | ethereum | [`0xc07e00...7e0a7d`](./contracts/ethereum-1/0xc07e000044f95655c11fda4cd37f70a94d7e0a7d/) | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | ethereum | 2 deployments: ethereum [`0xc522a6...6f4f50`](./contracts/ethereum-1/0xc522a6606bba746d7960404f22a3db936b6f4f50/); ethereum `0xed785a...99a441` | ⚠️ Unaudited |
| CurveTwocryptoOptimized | unknown | ethereum | [`0xee351f...34578d`](./contracts/ethereum-1/0xee351f12eae8c2b8b9d1b9bfd3c5dd565234578d/) | ⚠️ Unaudited |
| EmissionsController | operational_periphery | ethereum | [`0x333333...5a4706`](./contracts/ethereum-1/0x33333333df05b0d52edd13d230461e5a0f5a4706/) | ⚠️ Unaudited |
| FeeDeposit | unknown | ethereum | [`0x07ad46...932c52`](./contracts/ethereum-1/0x07ad4630985ade5b5307806c43e57e0a9a932c52/) | ⚠️ Unaudited |
| FeeDepositController | unknown | ethereum | [`0xc70000...384df6`](./contracts/ethereum-1/0xc700000506423bad12d5eb6d55b35ea9f5384df6/) | ⚠️ Unaudited |
| GuardianUpgradeable | governance | ethereum | [`0xa4745e...8974e3`](./contracts/ethereum-1/0xa4745e0b1f40ab3dcfd98f381835de591a8974e3/) | ⚠️ Unaudited |
| InterestRateCalculator | unknown | ethereum | [`0x777777...070d67`](./contracts/ethereum-1/0x77777777729c405efb6ac823493e6111f0070d67/) | ⚠️ Unaudited |
| InterestRateCalculatorV2 | unknown | ethereum | [`0x1972b5...bc14f7`](./contracts/ethereum-1/0x1972b5d65a690de0bc36278ac93d47fd98bc14f7/) | ⚠️ Unaudited |
| Keeper | operational_periphery | ethereum | [`0x49f7aa...6ee958`](./contracts/ethereum-1/0x49f7aa38af55322de009add5f10a602cd26ee958/) | ⚠️ Unaudited |
| LiquidationHandler | unknown | ethereum | [`0x888888...0b2634`](./contracts/ethereum-1/0x88888888c227c36401493ed9f3e3dcc3800b2634/) | ⚠️ Unaudited |
| LiquidityGaugeV6 | operational_periphery | ethereum | 3 deployments: ethereum [`0x09f62a...8cda56`](./contracts/ethereum-1/0x09f62a6777032329c0d49f1fd4fbe9b3468cda56/); ethereum `0x5c0b03...45a4dd`; ethereum `0xaf01d6...b889b1` | ⚠️ Unaudited |
| PairAdder | unknown | ethereum | [`0x095000...0e1d27`](./contracts/ethereum-1/0x09500002956877b910acec25c4b4dd57950e1d27/) | ⚠️ Unaudited |
| PermaStaker | core_logic | ethereum | 2 deployments: ethereum [`0x123412...0100e8`](./contracts/ethereum-1/0x12341234b35c8a48908c716266db79caea0100e8/); ethereum `0xcccccc...848901` | ⚠️ Unaudited |
| PriceWatcher | unknown | ethereum | [`0xaaaa00...dd9251`](./contracts/ethereum-1/0xaaaa0013e2ec451f76816d1e0a02aba596dd9251/) | ⚠️ Unaudited |
| RedemptionHandler | unknown | ethereum | [`0x5eeb06...37a025`](./contracts/ethereum-1/0x5eeb063d0abefbbc78f576e28d762a16b637a025/) | ⚠️ Unaudited |
| RedemptionOperator | unknown | ethereum | 2 deployments: ethereum [`0x3f7c15...387e40`](./contracts/ethereum-1/0x3f7c15d053ab332d194d0040815e466d34387e40/); ethereum `0x67ba21...9c6f69` | ⚠️ Unaudited |
| ResupplyPair | unknown | ethereum | 14 deployments: ethereum [`0x08064a...009fdf`](./contracts/ethereum-1/0x08064a8eeecf71203449228f3eac65e462009fdf/); ethereum `0x212589...141ea0`; ethereum `0x22b121...eb3c7e`; ethereum `0x24ccbd...82c864`; ethereum `0x27ab44...768797`; ethereum `0x2d8ecd...1abc9d`; ethereum `0x39ea8e...28505c`; ethereum `0x3b0373...be5706`; ethereum `0x3f2b20...e6a5f7`; ethereum `0x4a7c64...095e33`; ethereum `0x55c49c...894adb`; ethereum `0xb5575f...d4e6c1`; ethereum `0xc5184c...9f34a1`; ethereum `0xcf1deb...96520d` | ⚠️ Unaudited |
| ResupplyPairDeployer | unknown | ethereum | 2 deployments: ethereum [`0x555555...2c0417`](./contracts/ethereum-1/0x5555555524de7c56c1b20128dbeaace47d2c0417/); ethereum `0x555555...74c2ea` | ⚠️ Unaudited |
| RetentionIncentives | unknown | ethereum | [`0xb94156...337892`](./contracts/ethereum-1/0xb9415639618e70abb71a0f4f8bbb2643bf337892/) | ⚠️ Unaudited |
| RetentionReceiver | unknown | ethereum | [`0x6e7d5d...4906f1`](./contracts/ethereum-1/0x6e7d5dade33f76f480ea38e3c47f870de74906f1/) | ⚠️ Unaudited |
| ReusdOracle | unknown | ethereum | [`0x3a1e32...9928e4`](./contracts/ethereum-1/0x3a1e320f289eef2636b6d7aa5c0f9202ee9928e4/) | ⚠️ Unaudited |
| RewardHandler | unknown | ethereum | [`0x747474...d0b4b1`](./contracts/ethereum-1/0x74747408065d6a85dff07d23f22c921ce7d0b4b1/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | [`0xfe11a5...076af6`](./contracts/ethereum-1/0xfe11a5009f2121622271e7dd0fd470264e076af6/) | ⚠️ Unaudited |
| SavingsReUSD | unknown | ethereum | [`0x557ab1...c33c35`](./contracts/ethereum-1/0x557ab1e003951a73c12d16f0fea8490e39c33c35/) | ⚠️ Unaudited |
| SimpleReceiver | unknown | ethereum | 4 deployments: ethereum [`0x2d4e8b...4a37c9`](./contracts/ethereum-1/0x2d4e8bff0c23571016d7b329b9fd76441f4a37c9/); ethereum `0x70a187...3df61b`; ethereum `0x8b36ad...1155b4`; ethereum `0xc9a9c2...858c59` | ⚠️ Unaudited |
| SimpleReceiverFactory | registry | ethereum | [`0x20d55f...9014d8`](./contracts/ethereum-1/0x20d55f2bb72ebde67a4325fb757348ea3d9014d8/) | ⚠️ Unaudited |
| Swapper | adapter | ethereum | [`0x042f48...3f3b2e`](./contracts/ethereum-1/0x042f48346be16be381190a7397a80808243f3b2e/) | ⚠️ Unaudited |
| SwapperOdos | adapter | ethereum | [`0x3ae884...d9194d`](./contracts/ethereum-1/0x3ae884d1a67650501278001fda40dca975d9194d/) | ⚠️ Unaudited |
| Treasury | operational_periphery | ethereum | [`0x444444...a48324`](./contracts/ethereum-1/0x4444444455bf42de586a88426e5412971ea48324/) | ⚠️ Unaudited |
| TreasuryManagerUpgradeable | operational_periphery | ethereum | [`0x4cf97a...b10403`](./contracts/ethereum-1/0x4cf97a55d58aad14c493a46c8151a0bfffb10403/) | ⚠️ Unaudited |
| UnderlyingOracle | unknown | ethereum | [`0x152ce2...fbd5ec`](./contracts/ethereum-1/0x152ce2e248a86bd11ca01502fb8fefbec0fbd5ec/) | ⚠️ Unaudited |
| UpgradeOperator | unknown | ethereum | [`0x82ba27...8b5543`](./contracts/ethereum-1/0x82ba27ee62fc490f81fefce5ac9c2f238f8b5543/) | ⚠️ Unaudited |
| VestManager | operational_periphery | ethereum | [`0x666666...0f919c`](./contracts/ethereum-1/0x6666666677b06cb55ebf802bb12f8876360f919c/) | ⚠️ Unaudited |
| Voter | unknown | ethereum | 2 deployments: ethereum [`0x111111...888c28`](./contracts/ethereum-1/0x11111111084a560ea5755ed904a57e5411888c28/); ethereum `0x111111...a412bc` | ⚠️ Unaudited |

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
| [ChainSecurity_Resupply_CurveLend_Operators_audit.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/ChainSecurity_Resupply_CurveLend_Operators_audit.pdf) | ChainSecurity | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [ChainSecurity_Resupply_Resupply_audit.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/ChainSecurity_Resupply_Resupply_audit.pdf) | ChainSecurity | Audit | 2025-02 | aging | Direct | contract_name | 1 | high |
| [ChainSecurity_Resupply_audit_v2.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/ChainSecurity_Resupply_audit_v2.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | contract_name | 1 | high |
| [ChainSecurity_Resupply_sreUSD_audit.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/ChainSecurity_Resupply_sreUSD_audit.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Electisec-Resupply-CurveLendOperator.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/Electisec-Resupply-CurveLendOperator.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Electisec-Resupply-Inflation-Fixes.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/Electisec-Resupply-Inflation-Fixes.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Electisec-Resupply-sreUSD.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/Electisec-Resupply-sreUSD.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rsup_yaudit_report.pdf](https://github.com/resupplyfi/resupply/blob/main/audits/rsup_yaudit_report.pdf) | yAudit | Audit | 2024-12 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 39 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=3

Zero-match audit list:

- [5822] ChainSecurity_Resupply_CurveLend_Operators_audit.pdf
- [5825] ChainSecurity_Resupply_sreUSD_audit.pdf
- [5826] Electisec-Resupply-CurveLendOperator.pdf
- [5827] Electisec-Resupply-Inflation-Fixes.pdf
- [5828] Electisec-Resupply-sreUSD.pdf

Fork inheritance lineage and inherited audits are included when available.
