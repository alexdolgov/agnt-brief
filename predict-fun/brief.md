# Agentic Audit Brief: Predict Fun

## Project Overview

- Project: Predict Fun (`predict-fun`)
- Website: [https://predict.fun](https://predict.fun)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.140Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: blast, bsc
- Contract surface: 39 unique implementations (65 raw deployments)
- DeFi Llama TVL: $23,808,868.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Prediction Market. Structurally: 29 project-authored contract(s) across 2 chain(s); 2 ERC1155 multi-tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 30 common project-authored base contract(s) (transfers, auth, conditionaltokensfeeshandler). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 69; live-surface contracts included: 65 (50 live, 15 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 10/24 (41.7%)
- Deployed-live implementations: 24 of 39 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 10/24
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 39
- Raw deployments: 65
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 9 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 10 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 8.3% (Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| TenArmor | Tier 2 | 8 | 33.3% | 2025-12 |
| Collaborative (multiple) | Tier 2 | 6 | 25.0% | 2025-11 |
| Cyfrin | Tier 1 | 2 | 8.3% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConditionalTokens | token | bsc | n/a | 2 deployments: bsc [`0x22da18...c9d244`](./contracts/bsc-56/0x22da1810b194ca018378464a58f6ac2b10c9d244/); bsc `0xf64b0b...19a07f` | ✅ Audited |
| ConditionalTokensFeesHandler | token | bsc | n/a | 2 deployments: bsc [`0xb4d9f1...645f6e`](./contracts/bsc-56/0xb4d9f13738a50e88e0ade2eccc89254ef1645f6e/); bsc `0xd63206...e64030` | ✅ Audited |
| FeeModuleV2 | unknown | bsc | n/a | 2 deployments: bsc [`0xf1f8f5...fa9783`](./contracts/bsc-56/0xf1f8f5c641f20c48526269ef7dff19172efa9783/); bsc `0xfbc225...7ba34f` | ✅ Audited |
| NegRiskFeeModuleV2 | unknown | bsc | n/a | 2 deployments: bsc [`0xd172f3...da6057`](./contracts/bsc-56/0xd172f3fbabe763ee8e52d8b32421574236da6057/); bsc `0xf2311c...b3132f` | ✅ Audited |
| NegRiskOperator | unknown | bsc | n/a | 2 deployments: bsc [`0x56020f...6ecffd`](./contracts/bsc-56/0x56020f5024641d577cb54032af70a23a986ecffd/); bsc `0xbb7250...e3e175` | ✅ Audited |
| UmaCompatibleCtfAdapter | adapter | bsc | n/a | 8 deployments: bsc [`0x242e1b...22613d`](./contracts/bsc-56/0x242e1ba24f6fc524bfb410062ca5689a9622613d/); bsc `0x26b366...df8172`; bsc `0x2c8635...6a0388`; bsc `0x7c7818...54df64`; bsc `0x947cc0...53d7b4`; bsc `0xb51797...4641cf`; bsc `0xe338e6...e3eb27`; bsc `0xf61198...17902f` | ✅ Audited |
| UmaCompatibleOptimisticOracle | operational_periphery | bsc | n/a | [`0x76f42e...ec2531`](./contracts/bsc-56/0x76f42e5520e62ad88f8fe583cbb4bff27eec2531/) | ✅ Audited |
| YieldBearingConditionalTokens | token | bsc | n/a | [`0x9400f8...eb1d9f`](./contracts/bsc-56/0x9400f8ad57e9e0f352345935d6d3175975eb1d9f/) | ✅ Audited |
| YieldBearingNegRiskAdapter | adapter | bsc | n/a | [`0x41dce1...0b2a40`](./contracts/bsc-56/0x41dce1a4b8fb5e6327701750af6231b7cd0b2a40/) | ✅ Audited |
| YieldBearingWrappedCollateral | unknown | bsc | n/a | [`0xcfb9be...3334d9`](./contracts/bsc-56/0xcfb9bef5f7b748ac72311f057f3a888bc73334d9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminAdapter | adapter | bsc | n/a | [`0x69e6be...868c4a`](./contracts/bsc-56/0x69e6bef6c94ee41e09db3e828eb9560e34868c4a/) | ⚠️ Unaudited |
| ConditionalTokensFeesHandlerV2 | token | bsc | n/a | 5 deployments: bsc [`0x13ba3d...81d8fa`](./contracts/bsc-56/0x13ba3d9f7da3f8ae955df4f01f01d7218f81d8fa/); bsc `0x2d4370...24093e`; bsc `0x57f12f...883ab2`; bsc `0x7bd1a1...252b84`; bsc `0xd573f4...2b5f3b` | ⚠️ Unaudited |
| CTFAutoRedemptionHelper | periphery | bsc | n/a | 2 deployments: bsc [`0x6422e0...f235e3`](./contracts/bsc-56/0x6422e0ad3deb7de5c3bdb5c9b517bceb72f235e3/); bsc `0xfca64d...47cbec` | ⚠️ Unaudited |
| CTFExchange | unknown | bsc | n/a | 2 deployments: bsc [`0x6beb5a...decfa5`](./contracts/bsc-56/0x6beb5a40c032afc305961162d8204cda16decfa5/); bsc `0x8bc070...94b689` | ⚠️ Unaudited |
| FeeModuleV3 | unknown | bsc | n/a | 2 deployments: bsc [`0xdcffeb...4891a1`](./contracts/bsc-56/0xdcffeb0c30263888a48485a664ec9563a54891a1/); bsc `0xf291a6...f0a279` | ⚠️ Unaudited |
| NegRiskAdapter | adapter | bsc | n/a | [`0xc3cf7c...7f1a6e`](./contracts/bsc-56/0xc3cf7c252f65e0d8d88537df96569ae94a7f1a6e/) | ⚠️ Unaudited |
| NegRiskCtfExchange | unknown | bsc | n/a | 2 deployments: bsc [`0x365fb8...d8d58a`](./contracts/bsc-56/0x365fb81bd4a24d6303cd2f19c349de6894d8d58a/); bsc `0x8a289d...81b41d` | ⚠️ Unaudited |
| NegRiskFeeModuleV3 | unknown | bsc | n/a | 2 deployments: bsc [`0x098994...a5fd63`](./contracts/bsc-56/0x0989942f8e5b778e804858a0cc791b4469a5fd63/); bsc `0x765636...73768e` | ⚠️ Unaudited |
| RegisterTokenHelper | token | blast | n/a | 3 deployments: bsc `0x89f92c...fd8e5e`; bsc `0xa48c26...9c2089`; blast [`0x54dc9c...4cb63a`](./contracts/blast-81457/0x54dc9c76d024c136698db2cad66dd1517d4cb63a/) | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | bsc | n/a | 3 deployments: bsc [`0x14e3cb...d436ae`](./contracts/bsc-56/0x14e3cb02f48818a8fef6bc257059767ca9d436ae/); bsc `0x54870a...f77a3c`; blast `0xfebfe1...dba20d` | ⚠️ Unaudited |
| ThreePoAdapter | adapter | bsc | n/a | [`0xe82ae4...06f28c`](./contracts/bsc-56/0xe82ae4c6678f4d967eadac93ac323fa72806f28c/) | ⚠️ Unaudited |
| Vault | core_logic | bsc | n/a | 2 deployments: bsc [`0x09f683...7410c5`](./contracts/bsc-56/0x09f683d8a144c4ac296d770f839098c3377410c5/); bsc `0xfcba72...c8de7a` | ⚠️ Unaudited |
| WrappedCollateral | unknown | bsc | n/a | [`0x66239b...cd39e7`](./contracts/bsc-56/0x66239b70133773a72a0d589e5564e88a50cd39e7/) | ⚠️ Unaudited |
| ZeroDevWithdrawalHelper | operational_periphery | bsc | n/a | [`0xf4aa30...a77b00`](./contracts/bsc-56/0xf4aa30b537882eca7e69defb68d6f631cda77b00/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x011297...221181` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x036b7f...b5dc10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x23364c...7219ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f253a...cae74c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x479e6e...aff3a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x502c53...e9634c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6bc913...53820a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84f569...0f924e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa757f5...71b971` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb1ac4e...3e84aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc3fe54...89a97d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd018f6...3cfff5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd06d15...ff3e85` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeea370...6c2236` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf543b7...9060f3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf](https://1627684912-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuBy5cIxCH65sso6lWCM8%2Fuploads%2FCoqlfwzTGHqUhtq54JZL%2F2025.11.26%20-%20Final%20-%20Predict.fun%20Collaborative%20Audit%20Report%201764175259.pdf) | Collaborative (multiple) | Audit | 2025-11 | fresh | Direct | contract_name | 14 | high |
| [spaces/uBy5cIxCH65sso6lWCM8/uploads/53ekOJh0m9sN791a76vm/TenArmor_Predict_Dot_Fun_Audit_Report_final.pdf](https://1627684912-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuBy5cIxCH65sso6lWCM8%2Fuploads%2F53ekOJh0m9sN791a76vm%2FTenArmor_Predict_Dot_Fun_Audit_Report_final.pdf) | TenArmor | Audit | 2025-12 | fresh | Direct | contract_name | 20 | high |
| [spaces/uBy5cIxCH65sso6lWCM8/uploads/35xaz4ieEz1xwjcC9Rzy/2026-02-18-cyfrin-predict-fun-v2.0.pdf](https://1627684912-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuBy5cIxCH65sso6lWCM8%2Fuploads%2F35xaz4ieEz1xwjcC9Rzy%2F2026-02-18-cyfrin-predict-fun-v2.0.pdf) | Cyfrin | Audit | 2026-02 | fresh | Direct | contract_name | 2 | high |
| [spaces/uBy5cIxCH65sso6lWCM8/uploads/I1DXLS1LjI8TvRaNnDAK/2026-02-06-cyfrin-formal-verification-report-predict-fun.pdf](https://1627684912-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuBy5cIxCH65sso6lWCM8%2Fuploads%2FI1DXLS1LjI8TvRaNnDAK%2F2026-02-06-cyfrin-formal-verification-report-predict-fun.pdf) | Cyfrin | Audit | 2026-02 | fresh | Direct | contract_name | 1 | high |
| [2026-04-25-cyfrin-predict-cre-integration-v2.1.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2026-04-25-cyfrin-predict-cre-integration-v2.1.pdf) | Cyfrin | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |
| [2026-02-18-cyfrin-predict-fun-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2026-02-18-cyfrin-predict-fun-v2.0.pdf) | Cyfrin | Audit | 2026-02 | fresh | Direct | contract_name | 2 | n/a |
| [2026-01-27-cyfrin-predict-dot-fun-FV-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2026-01-27-cyfrin-predict-dot-fun-FV-v2.0.pdf) | Cyfrin | Audit | 2026-01 | fresh | Direct | contract_name | 1 | n/a |
| [2026-02-18-cyfrin-predict-fun-v2.0.md](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports_md/2026-02-18-cyfrin-predict-fun-v2.0.md) | Cyfrin | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [2026-04-25-cyfrin-predict-cre-integration-v2.1.md](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports_md/2026-04-25-cyfrin-predict-cre-integration-v2.1.md) | Cyfrin | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x69e6be...868c4a`](./contracts/bsc-56/0x69e6bef6c94ee41e09db3e828eb9560e34868c4a/) | AdminAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x13ba3d...81d8fa`](./contracts/bsc-56/0x13ba3d9f7da3f8ae955df4f01f01d7218f81d8fa/) | ConditionalTokensFeesHandlerV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6422e0...f235e3`](./contracts/bsc-56/0x6422e0ad3deb7de5c3bdb5c9b517bceb72f235e3/) | CTFAutoRedemptionHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6beb5a...decfa5`](./contracts/bsc-56/0x6beb5a40c032afc305961162d8204cda16decfa5/) | CTFExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdcffeb...4891a1`](./contracts/bsc-56/0xdcffeb0c30263888a48485a664ec9563a54891a1/) | FeeModuleV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc3cf7c...7f1a6e`](./contracts/bsc-56/0xc3cf7c252f65e0d8d88537df96569ae94a7f1a6e/) | NegRiskAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x365fb8...d8d58a`](./contracts/bsc-56/0x365fb81bd4a24d6303cd2f19c349de6894d8d58a/) | NegRiskCtfExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x098994...a5fd63`](./contracts/bsc-56/0x0989942f8e5b778e804858a0cc791b4469a5fd63/) | NegRiskFeeModuleV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x54dc9c...4cb63a`](./contracts/blast-81457/0x54dc9c76d024c136698db2cad66dd1517d4cb63a/) | RegisterTokenHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x14e3cb...d436ae`](./contracts/bsc-56/0x14e3cb02f48818a8fef6bc257059767ca9d436ae/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe82ae4...06f28c`](./contracts/bsc-56/0xe82ae4c6678f4d967eadac93ac323fa72806f28c/) | ThreePoAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x09f683...7410c5`](./contracts/bsc-56/0x09f683d8a144c4ac296d770f839098c3377410c5/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x66239b...cd39e7`](./contracts/bsc-56/0x66239b70133773a72a0d589e5564e88a50cd39e7/) | WrappedCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf4aa30...a77b00`](./contracts/bsc-56/0xf4aa30b537882eca7e69defb68d6f631cda77b00/) | ZeroDevWithdrawalHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: contract_name=3, extraction_exact=37

Zero-match audit list:

- [1980] 2026-04-25-cyfrin-predict-cre-integration-v2.1.pdf
- [1983] 2026-02-18-cyfrin-predict-fun-v2.0.md
- [1984] 2026-04-25-cyfrin-predict-cre-integration-v2.1.md

Fork inheritance lineage and inherited audits are included when available.
