# Agentic Audit Brief: Predict Fun

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 6 audit(s)
- Eligible audit results: 9 (6 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Predict Fun (`predict-fun`)
- Website: [https://predict.fun](https://predict.fun)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: blast, bsc
- Contract surface: 57 unique implementations (70 raw deployments)
- Coverage basis: 5/29 confirmed own live verified implementations (17.2%); conservative 17.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $23,808,868.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Predict Fun. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 29 contract row(s) across blast, bsc. Structural roles: 20 core, 9 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 29
- Structural roles: core (20), supporting (9)
- Contract kinds: contract (29)
- Detected standards: erc165 (12), accesscontrol (8), erc1155 (3), erc20permit (2), ownable (1), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (23), solmate (15)
- Upgradeable-pattern rows: 0

## Fork Analysis

9 of 29 contracts are derived from known codebases. 20 contracts have no detected origin.

### Forked Contracts

**CTFExchange** (`0x6beb5a...decfa5`, chain 56)
Origin: limitless-exchange (`0x46e607...48891d`)
Containment: 100.0% - 35 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CTFExchange** (`0x8bc070...94b689`, chain 56)
Origin: limitless-exchange (`0x46e607...48891d`)
Containment: 100.0% - 35 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**NegRiskAdapter** (`0xc3cf7c...7f1a6e`, chain 56)
Origin: predict-fun (`0x41dce1...0b2a40`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**NegRiskCtfExchange** (`0x365fb8...d8d58a`, chain 56)
Origin: limitless-exchange (`0x46e607...48891d`)
Containment: 100.0% - 35 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**NegRiskCtfExchange** (`0x8a289d...81b41d`, chain 56)
Origin: limitless-exchange (`0x46e607...48891d`)
Containment: 100.0% - 35 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**UmaCompatibleCtfAdapter** (`0x242e1b...22613d`, chain 56)
Origin: predict-fun (`0x7c7818...54df64`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**UmaCompatibleCtfAdapter** (`0x26b366...df8172`, chain 56)
Origin: predict-fun (`0x7c7818...54df64`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**UmaCompatibleCtfAdapter** (`0x947cc0...53d7b4`, chain 56)
Origin: predict-fun (`0x7c7818...54df64`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**UmaCompatibleCtfAdapter** (`0xf61198...17902f`, chain 56)
Origin: predict-fun (`0x7c7818...54df64`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- ConditionalTokens (`0x22da18...c9d244`, chain 56)
- ConditionalTokens (`0xf64b0b...19a07f`, chain 56)
- ConditionalTokensFeesHandler (`0xb4d9f1...645f6e`, chain 56)
- ConditionalTokensFeesHandler (`0xd63206...e64030`, chain 56)
- FeeModuleV2 (`0xf1f8f5...fa9783`, chain 56)
- FeeModuleV2 (`0xfbc225...7ba34f`, chain 56)
- NegRiskFeeModuleV2 (`0xd172f3...da6057`, chain 56)
- NegRiskFeeModuleV2 (`0xf2311c...b3132f`, chain 56)
- NegRiskOperator (`0x56020f...6ecffd`, chain 56)
- NegRiskOperator (`0xbb7250...e3e175`, chain 56)
- RegisterTokenHelper (`0x89f92c...fd8e5e`, chain 56)
- RegisterTokenHelper (`0xa48c26...9c2089`, chain 56)
- RewardDistributor (`0x14e3cb...d436ae`, chain 56)
- UmaCompatibleOptimisticOracle (`0x76f42e...ec2531`, chain 56)
- Vault (`0x09f683...7410c5`, chain 56)
- WrappedCollateral (`0x66239b...cd39e7`, chain 56)
- YieldBearingConditionalTokens (`0x9400f8...eb1d9f`, chain 56)
- YieldBearingNegRiskAdapter (`0x41dce1...0b2a40`, chain 56)
- YieldBearingWrappedCollateral (`0xcfb9be...3334d9`, chain 56)
- ZeroDevWithdrawalHelper (`0xf4aa30...a77b00`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 29; live-surface rows included: 29 (29 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/29 (17.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 28 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 29 of 57 unique; 28 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/42
- Verified + Unaudited implementations: 37
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 57
- Raw deployments: 70
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 9 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 6.9% (Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Collaborative (multiple) | Tier 2 | 5 | 11.9% | 2025-11 |
| Cyfrin | Tier 1 | 2 | 4.8% | 2026-04 |
| TenArmor | Tier 2 | 2 | 4.8% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| NegRiskAdapter | adapter | project_anchor | own_supporting | 0 | bsc | unit-391170 | `0xc3cf7c...7f1a6e` | ✅ Audited |
| UmaCompatibleOptimisticOracle | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-391161 | `0x76f42e...ec2531` | ✅ Audited |
| YieldBearingConditionalTokens | token | project_anchor | own_supporting | 0 | bsc | unit-391165 | `0x9400f8...eb1d9f` | ✅ Audited |
| YieldBearingNegRiskAdapter | adapter | project_anchor | own_supporting | 0 | bsc | unit-391157 | `0x41dce1...0b2a40` | ✅ Audited |
| YieldBearingWrappedCollateral | unknown | project_anchor | own_supporting | 0 | bsc | unit-391171 | `0xcfb9be...3334d9` | ✅ Audited |

### ⚠️ Verified + Unaudited (37)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressFinder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc31bb9...b6f24a` | ⚠️ Unaudited |
| AdminAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69e6be...868c4a` | ⚠️ Unaudited |
| ConditionalTokens | token | project_anchor | own_supporting | 0 | bsc | unit-391153 | `0x22da18...c9d244` | ⚠️ Unaudited |
| ConditionalTokens | token | project_anchor | own_supporting | 0 | bsc | unit-391178 | `0xf64b0b...19a07f` | ⚠️ Unaudited |
| ConditionalTokensFeesHandler | token | project_anchor | own_supporting | 0 | bsc | unit-391168 | `0xb4d9f1...645f6e` | ⚠️ Unaudited |
| ConditionalTokensFeesHandler | token | project_anchor | own_supporting | 0 | bsc | unit-391173 | `0xd63206...e64030` | ⚠️ Unaudited |
| ConditionalTokensFeesHandlerV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x13ba3d...81d8fa`; bsc `0x2d4370...24093e`; bsc `0x57f12f...883ab2`; bsc `0x7bd1a1...252b84`; bsc `0xd573f4...2b5f3b` | ⚠️ Unaudited |
| CTFAutoRedemptionHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x6422e0...f235e3`; bsc `0xfca64d...47cbec` | ⚠️ Unaudited |
| CTFExchange | unknown | project_anchor | own_supporting | 0 | bsc | unit-391160 | `0x6beb5a...decfa5` | ⚠️ Unaudited |
| CTFExchange | unknown | project_anchor | own_supporting | 0 | bsc | unit-391164 | `0x8bc070...94b689` | ⚠️ Unaudited |
| FeeModuleV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-391174 | `0xf1f8f5...fa9783` | ⚠️ Unaudited |
| FeeModuleV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-391179 | `0xfbc225...7ba34f` | ⚠️ Unaudited |
| FeeModuleV2Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc63467...49a7b6` | ⚠️ Unaudited |
| FeeModuleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xdcffeb...4891a1`; bsc `0xf291a6...f0a279` | ⚠️ Unaudited |
| NegRiskCtfExchange | unknown | project_anchor | own_supporting | 0 | bsc | unit-391156 | `0x365fb8...d8d58a` | ⚠️ Unaudited |
| NegRiskCtfExchange | unknown | project_anchor | own_supporting | 0 | bsc | unit-391163 | `0x8a289d...81b41d` | ⚠️ Unaudited |
| NegRiskFeeModuleV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-391172 | `0xd172f3...da6057` | ⚠️ Unaudited |
| NegRiskFeeModuleV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-391175 | `0xf2311c...b3132f` | ⚠️ Unaudited |
| NegRiskFeeModuleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x098994...a5fd63`; bsc `0x765636...73768e` | ⚠️ Unaudited |
| NegRiskOperator | unknown | project_anchor | own_supporting | 0 | bsc | unit-391158 | `0x56020f...6ecffd` | ⚠️ Unaudited |
| NegRiskOperator | unknown | project_anchor | own_supporting | 0 | bsc | unit-391169 | `0xbb7250...e3e175` | ⚠️ Unaudited |
| RegisterTokenHelper | token | project_anchor | own_supporting | 0 | bsc | unit-391162 | `0x89f92c...fd8e5e` | ⚠️ Unaudited |
| RegisterTokenHelper | token | project_anchor | own_supporting | 0 | bsc | unit-391167 | `0xa48c26...9c2089` | ⚠️ Unaudited |
| RegisterTokenHelper | token | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x54dc9c...4cb63a` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-391152 | `0x14e3cb...d436ae` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x54870a...f77a3c`; blast `0xfebfe1...dba20d` | ⚠️ Unaudited |
| ThreePoAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe82ae4...06f28c` | ⚠️ Unaudited |
| UmaCompatibleCtfAdapter | adapter | project_anchor | own_supporting | 0 | bsc | unit-391154 | `0x242e1b...22613d` | ⚠️ Unaudited |
| UmaCompatibleCtfAdapter | adapter | project_anchor | own_supporting | 0 | bsc | unit-391155 | `0x26b366...df8172` | ⚠️ Unaudited |
| UmaCompatibleCtfAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x2c8635...6a0388`; bsc `0x7c7818...54df64`; bsc `0xb51797...4641cf`; bsc `0xe338e6...e3eb27` | ⚠️ Unaudited |
| UmaCompatibleCtfAdapter | adapter | project_anchor | own_supporting | 0 | bsc | unit-391166 | `0x947cc0...53d7b4` | ⚠️ Unaudited |
| UmaCompatibleCtfAdapter | adapter | project_anchor | own_supporting | 0 | bsc | unit-391177 | `0xf61198...17902f` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | bsc | unit-391151 | `0x09f683...7410c5` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfcba72...c8de7a` | ⚠️ Unaudited |
| WrappedCollateral | unknown | project_anchor | own_supporting | 0 | bsc | unit-391159 | `0x66239b...cd39e7` | ⚠️ Unaudited |
| ZeroDevWithdrawalHelper | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-391176 | `0xf4aa30...a77b00` | ⚠️ Unaudited |
| ZeroDevWithdrawalHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 3 deployments: blast `0x834b7e...8600de`; blast `0xc45343...bde7fd`; blast `0xd25366...e71d37` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x011297...221181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x036b7f...b5dc10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23364c...7219ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f253a...cae74c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x479e6e...aff3a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x502c53...e9634c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6bc913...53820a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84f569...0f924e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa757f5...71b971` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1ac4e...3e84aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3fe54...89a97d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd018f6...3cfff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd06d15...ff3e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeea370...6c2236` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf543b7...9060f3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf](https://1627684912-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuBy5cIxCH65sso6lWCM8%2Fuploads%2FCoqlfwzTGHqUhtq54JZL%2F2025.11.26%20-%20Final%20-%20Predict.fun%20Collaborative%20Audit%20Report%201764175259.pdf) | Collaborative (multiple) | Audit | 2025-11 | fresh | Direct | contract_name | matched | 5 | 0 | 0 | 18 | high |
| [spaces/uBy5cIxCH65sso6lWCM8/uploads/53ekOJh0m9sN791a76vm/TenArmor_Predict_Dot_Fun_Audit_Report_final.pdf](https://1627684912-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuBy5cIxCH65sso6lWCM8%2Fuploads%2F53ekOJh0m9sN791a76vm%2FTenArmor_Predict_Dot_Fun_Audit_Report_final.pdf) | TenArmor | Audit | 2025-12 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 15 | high |
| [spaces/uBy5cIxCH65sso6lWCM8/uploads/35xaz4ieEz1xwjcC9Rzy/2026-02-18-cyfrin-predict-fun-v2.0.pdf](https://1627684912-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuBy5cIxCH65sso6lWCM8%2Fuploads%2F35xaz4ieEz1xwjcC9Rzy%2F2026-02-18-cyfrin-predict-fun-v2.0.pdf) | Cyfrin | Audit | 2026-02 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 3 | high |
| [spaces/uBy5cIxCH65sso6lWCM8/uploads/I1DXLS1LjI8TvRaNnDAK/2026-02-06-cyfrin-formal-verification-report-predict-fun.pdf](https://1627684912-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuBy5cIxCH65sso6lWCM8%2Fuploads%2FI1DXLS1LjI8TvRaNnDAK%2F2026-02-06-cyfrin-formal-verification-report-predict-fun.pdf) | Cyfrin | Audit | 2026-02 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [2026-04-25-cyfrin-predict-cre-integration-v2.1.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2026-04-25-cyfrin-predict-cre-integration-v2.1.pdf) | Cyfrin | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2026-02-18-cyfrin-predict-fun-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2026-02-18-cyfrin-predict-fun-v2.0.pdf) | Cyfrin | Audit | 2026-02 | fresh | Direct | n/a | matched | 2 | 0 | 0 | 3 | n/a |
| [2026-01-27-cyfrin-predict-dot-fun-FV-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2026-01-27-cyfrin-predict-dot-fun-FV-v2.0.pdf) | Cyfrin | Audit | 2026-01 | fresh | Direct | n/a | matched | 1 | 0 | 0 | 2 | n/a |
| [2026-02-18-cyfrin-predict-fun-v2.0.md](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports_md/2026-02-18-cyfrin-predict-fun-v2.0.md) | Cyfrin | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | low |
| [2026-04-25-cyfrin-predict-cre-integration-v2.1.md](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports_md/2026-04-25-cyfrin-predict-cre-integration-v2.1.md) | Cyfrin | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1976] spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf — matched: Extracted 24 contract names from the scope section and findings. Audit date is the end of the range October 27 - November 10, 2025.
- [1977] spaces/uBy5cIxCH65sso6lWCM8/uploads/53ekOJh0m9sN791a76vm/TenArmor_Predict_Dot_Fun_Audit_Report_final.pdf — matched: Extracted contract names from findings and executive summary. Audit date from header: Dec 15, 2025 - Dec 26, 2025, using end date.
- [1978] spaces/uBy5cIxCH65sso6lWCM8/uploads/35xaz4ieEz1xwjcC9Rzy/2026-02-18-cyfrin-predict-fun-v2.0.pdf — matched: All five contracts listed in the Audit Scope section were extracted. The audit date is explicitly given as 'February 18, 2026' on the cover page.
- [1979] spaces/uBy5cIxCH65sso6lWCM8/uploads/I1DXLS1LjI8TvRaNnDAK/2026-02-06-cyfrin-formal-verification-report-predict-fun.pdf — matched: The report explicitly states 'YieldBearingConditionalTokens is the core contract... This contract and its inherited contracts constitute the verification scope.' Inherited contracts are WhitelistedERC1155 and Venus. No other contracts are listed in scope.
- [1980] 2026-04-25-cyfrin-predict-cre-integration-v2.1.pdf — no match: Extracted 3 Solidity contracts from the scope section. Also found CRE TypeScript files but they are not smart contracts. Audit date from cover page.
- [1981] 2026-02-18-cyfrin-predict-fun-v2.0.pdf — matched: No reason recorded
- [1982] 2026-01-27-cyfrin-predict-dot-fun-FV-v2.0.pdf — matched: No reason recorded
- [1983] 2026-02-18-cyfrin-predict-fun-v2.0.md — no match: No explicit scope section found; contracts inferred from findings. No audit date found.
- [1984] 2026-04-25-cyfrin-predict-cre-integration-v2.1.md — no match: No explicit scope section found. Contract names extracted from findings and file references. Audit date not found in provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | ConditionalTokens | ambiguous — not counted | ConditionalTokens (alternative) `0x22da18...c9d244` — deployed 2025-11-24 21:22:18+03 — liveness: live (code_present_context)<br>ConditionalTokens (alternative) `0xf64b0b...19a07f` — deployed 2025-11-21 14:03:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | CTHelpers | unmatched — not counted | — | listed in scope | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | WhitelistedERC1155 | unmatched — not counted | — | listed in scope | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | Helpers | unmatched — not counted | — | listed in scope | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | NegRiskIdLib | unmatched — not counted | — | listed in scope | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | MarketDataManager | unmatched — not counted | — | listed in scope | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | MarketData | unmatched — not counted | — | listed in scope | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | YieldBearingNegRiskAdapter | own contract | YieldBearingNegRiskAdapter (selected) `0x41dce1...0b2a40` — deployed 2025-11-21 14:03:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | Lockable | unmatched — not counted | — | listed in scope | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | OptimisticOracleV2Interface | unmatched — not counted | — | listed in scope | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | UmaCompatibleOptimisticOracle | own contract | UmaCompatibleOptimisticOracle (selected) `0x76f42e...ec2531` — deployed 2025-11-21 13:43:39+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | IBulletinBoard | unmatched — not counted | — | listed in scope | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | IOptimisticOracleV2 | unmatched — not counted | — | listed in scope | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | IUmaCtfAdapter | unmatched — not counted | — | listed in scope | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | AncillaryDataLib | unmatched — not counted | — | listed in scope | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | PayoutHelperLib | unmatched — not counted | — | listed in scope | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | UmaCompatibleCtfAdapter | ambiguous — not counted | UmaCompatibleCtfAdapter (alternative) `0x242e1b...22613d` — deployed 2025-11-24 21:22:19+03 — liveness: live (current_address_book_code)<br>UmaCompatibleCtfAdapter (alternative) `0x947cc0...53d7b4` — deployed 2025-11-21 14:03:46+03 — liveness: live (current_address_book_code)<br>UmaCompatibleCtfAdapter (alternative) `0x26b366...df8172` — deployed 2025-11-21 14:03:46+03 — liveness: live (current_address_book_code)<br>UmaCompatibleCtfAdapter (alternative) `0xf61198...17902f` — deployed 2025-11-24 21:22:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | Venus | unmatched — not counted | — | listed in scope | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | YieldBearingConditionalTokens | own contract | YieldBearingConditionalTokens (selected) `0x9400f8...eb1d9f` — deployed 2025-11-21 14:03:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | YieldBearingWrappedCollateral | own contract | YieldBearingWrappedCollateral (selected) `0xcfb9be...3334d9` — deployed 2025-11-21 14:03:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | NegRiskOperator | ambiguous — not counted | NegRiskOperator (alternative) `0xbb7250...e3e175` — deployed 2025-11-21 14:03:46+03 — liveness: live (code_present_context)<br>NegRiskOperator (alternative) `0x56020f...6ecffd` — deployed 2025-11-24 21:22:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/CoqlfwzTGHqUhtq54JZL/2025.11.26 - Final - Predict.fun Collaborative Audit Report 1764175259.pdf | NegRiskAdapter | own contract | NegRiskAdapter (selected) `0xc3cf7c...7f1a6e` — deployed 2025-11-24 21:22:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/53ekOJh0m9sN791a76vm/TenArmor_Predict_Dot_Fun_Audit_Report_final.pdf | Trading | unmatched — not counted | — | mentioned in L-1 finding | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/53ekOJh0m9sN791a76vm/TenArmor_Predict_Dot_Fun_Audit_Report_final.pdf | CalculatorHelper | unmatched — not counted | — | mentioned in L-2 finding | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/53ekOJh0m9sN791a76vm/TenArmor_Predict_Dot_Fun_Audit_Report_final.pdf | UmaCompatibleCtfAdapter | ambiguous — not counted | UmaCompatibleCtfAdapter (alternative) `0x242e1b...22613d` — deployed 2025-11-24 21:22:19+03 — liveness: live (current_address_book_code)<br>UmaCompatibleCtfAdapter (alternative) `0x947cc0...53d7b4` — deployed 2025-11-21 14:03:46+03 — liveness: live (current_address_book_code)<br>UmaCompatibleCtfAdapter (alternative) `0x26b366...df8172` — deployed 2025-11-21 14:03:46+03 — liveness: live (current_address_book_code)<br>UmaCompatibleCtfAdapter (alternative) `0xf61198...17902f` — deployed 2025-11-24 21:22:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/53ekOJh0m9sN791a76vm/TenArmor_Predict_Dot_Fun_Audit_Report_final.pdf | MarketDataLib | unmatched — not counted | — | mentioned in L-4 finding | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/53ekOJh0m9sN791a76vm/TenArmor_Predict_Dot_Fun_Audit_Report_final.pdf | MarketStateManager | unmatched — not counted | — | mentioned in L-4 finding | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/53ekOJh0m9sN791a76vm/TenArmor_Predict_Dot_Fun_Audit_Report_final.pdf | MarketDataManager | unmatched — not counted | — | mentioned in L-4 finding | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/53ekOJh0m9sN791a76vm/TenArmor_Predict_Dot_Fun_Audit_Report_final.pdf | Venus | unmatched — not counted | — | mentioned in L-5 and L-6 findings | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/53ekOJh0m9sN791a76vm/TenArmor_Predict_Dot_Fun_Audit_Report_final.pdf | YieldBearingWrappedCollateral | own contract | YieldBearingWrappedCollateral (selected) `0xcfb9be...3334d9` — deployed 2025-11-21 14:03:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/53ekOJh0m9sN791a76vm/TenArmor_Predict_Dot_Fun_Audit_Report_final.pdf | ConditionalTokens | ambiguous — not counted | ConditionalTokens (alternative) `0x22da18...c9d244` — deployed 2025-11-24 21:22:18+03 — liveness: live (code_present_context)<br>ConditionalTokens (alternative) `0xf64b0b...19a07f` — deployed 2025-11-21 14:03:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/53ekOJh0m9sN791a76vm/TenArmor_Predict_Dot_Fun_Audit_Report_final.pdf | YieldBearingConditionalTokens | own contract | YieldBearingConditionalTokens (selected) `0x9400f8...eb1d9f` — deployed 2025-11-21 14:03:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/53ekOJh0m9sN791a76vm/TenArmor_Predict_Dot_Fun_Audit_Report_final.pdf | Assets | unmatched — not counted | — | mentioned in I-3 finding | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/53ekOJh0m9sN791a76vm/TenArmor_Predict_Dot_Fun_Audit_Report_final.pdf | UmaCtfAdapter | unmatched — not counted | — | mentioned in I-3 finding | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/53ekOJh0m9sN791a76vm/TenArmor_Predict_Dot_Fun_Audit_Report_final.pdf | FeeModuleV2 | ambiguous — not counted | FeeModuleV2 (alternative) `0xfbc225...7ba34f` — deployed 2025-11-21 14:03:46+03 — liveness: live (code_present_context)<br>FeeModuleV2 (alternative) `0xf1f8f5...fa9783` — deployed 2025-11-24 21:22:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/53ekOJh0m9sN791a76vm/TenArmor_Predict_Dot_Fun_Audit_Report_final.pdf | NegRiskFeeModuleV2 | ambiguous — not counted | NegRiskFeeModuleV2 (alternative) `0xd172f3...da6057` — deployed 2025-11-21 14:03:46+03 — liveness: live (code_present_context)<br>NegRiskFeeModuleV2 (alternative) `0xf2311c...b3132f` — deployed 2025-11-24 21:22:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/53ekOJh0m9sN791a76vm/TenArmor_Predict_Dot_Fun_Audit_Report_final.pdf | NegRiskOperator | ambiguous — not counted | NegRiskOperator (alternative) `0xbb7250...e3e175` — deployed 2025-11-21 14:03:46+03 — liveness: live (code_present_context)<br>NegRiskOperator (alternative) `0x56020f...6ecffd` — deployed 2025-11-24 21:22:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/53ekOJh0m9sN791a76vm/TenArmor_Predict_Dot_Fun_Audit_Report_final.pdf | ConditionalTokensFeesHandler | ambiguous — not counted | ConditionalTokensFeesHandler (alternative) `0xd63206...e64030` — deployed 2025-11-24 21:22:19+03 — liveness: live (current_address_book_code)<br>ConditionalTokensFeesHandler (alternative) `0xb4d9f1...645f6e` — deployed 2025-11-21 14:03:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/53ekOJh0m9sN791a76vm/TenArmor_Predict_Dot_Fun_Audit_Report_final.pdf | FeeModule | unmatched — not counted | — | mentioned in I-4 finding | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/35xaz4ieEz1xwjcC9Rzy/2026-02-18-cyfrin-predict-fun-v2.0.pdf | CTHelpers | unmatched — not counted | — | listed in Audit Scope section | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/35xaz4ieEz1xwjcC9Rzy/2026-02-18-cyfrin-predict-fun-v2.0.pdf | WhitelistedERC1155 | unmatched — not counted | — | listed in Audit Scope section | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/35xaz4ieEz1xwjcC9Rzy/2026-02-18-cyfrin-predict-fun-v2.0.pdf | Venus | unmatched — not counted | — | listed in Audit Scope section | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/35xaz4ieEz1xwjcC9Rzy/2026-02-18-cyfrin-predict-fun-v2.0.pdf | YieldBearingConditionalTokens | own contract | YieldBearingConditionalTokens (selected) `0x9400f8...eb1d9f` — deployed 2025-11-21 14:03:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/35xaz4ieEz1xwjcC9Rzy/2026-02-18-cyfrin-predict-fun-v2.0.pdf | YieldBearingWrappedCollateral | own contract | YieldBearingWrappedCollateral (selected) `0xcfb9be...3334d9` — deployed 2025-11-21 14:03:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/I1DXLS1LjI8TvRaNnDAK/2026-02-06-cyfrin-formal-verification-report-predict-fun.pdf | YieldBearingConditionalTokens | own contract | YieldBearingConditionalTokens (selected) `0x9400f8...eb1d9f` — deployed 2025-11-21 14:03:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/I1DXLS1LjI8TvRaNnDAK/2026-02-06-cyfrin-formal-verification-report-predict-fun.pdf | WhitelistedERC1155 | unmatched — not counted | — | Inherited by YieldBearingConditionalTokens; described as 'transfer-controlled ERC-1155' and part of verification scope. | no |
| spaces/uBy5cIxCH65sso6lWCM8/uploads/I1DXLS1LjI8TvRaNnDAK/2026-02-06-cyfrin-formal-verification-report-predict-fun.pdf | Venus | unmatched — not counted | — | Inherited by YieldBearingConditionalTokens; described as 'yield management via vTokens' and part of verification scope. | no |
| 2026-04-25-cyfrin-predict-cre-integration-v2.1.pdf | ChainlinkAdapter | unmatched — not counted | — | listed in scope | no |
| 2026-04-25-cyfrin-predict-cre-integration-v2.1.pdf | ChainlinkReceiverBase | unmatched — not counted | — | listed in scope | no |
| 2026-04-25-cyfrin-predict-cre-integration-v2.1.pdf | ChainlinkUpDownAdapter | unmatched — not counted | — | listed in scope | no |
| 2026-02-18-cyfrin-predict-fun-v2.0.pdf | CTHelpers | unmatched — not counted | — | — | no |
| 2026-02-18-cyfrin-predict-fun-v2.0.pdf | Venus | unmatched — not counted | — | — | no |
| 2026-02-18-cyfrin-predict-fun-v2.0.pdf | WhitelistedERC1155 | unmatched — not counted | — | — | no |
| 2026-02-18-cyfrin-predict-fun-v2.0.pdf | YieldBearingConditionalTokens | own contract | YieldBearingConditionalTokens (selected) `0x9400f8...eb1d9f` — deployed 2025-11-21 14:03:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-02-18-cyfrin-predict-fun-v2.0.pdf | YieldBearingWrappedCollateral | own contract | YieldBearingWrappedCollateral (selected) `0xcfb9be...3334d9` — deployed 2025-11-21 14:03:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-27-cyfrin-predict-dot-fun-FV-v2.0.pdf | Venus | unmatched — not counted | — | — | no |
| 2026-01-27-cyfrin-predict-dot-fun-FV-v2.0.pdf | WhitelistedERC1155 | unmatched — not counted | — | — | no |
| 2026-01-27-cyfrin-predict-dot-fun-FV-v2.0.pdf | YieldBearingConditionalTokens | own contract | YieldBearingConditionalTokens (selected) `0x9400f8...eb1d9f` — deployed 2025-11-21 14:03:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-02-18-cyfrin-predict-fun-v2.0.md | Venus | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2026-02-18-cyfrin-predict-fun-v2.0.md | WhitelistedERC1155 | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2026-02-18-cyfrin-predict-fun-v2.0.md | CTHelpers | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2026-04-25-cyfrin-predict-cre-integration-v2.1.md | ChainlinkUpDownAdapter | unmatched — not counted | — | listed in scope | no |
| 2026-04-25-cyfrin-predict-cre-integration-v2.1.md | ChainlinkReceiverBase | unmatched — not counted | — | listed in scope | no |
| 2026-04-25-cyfrin-predict-cre-integration-v2.1.md | ChainlinkAdapter | unmatched — not counted | — | listed in scope | no |
| 2026-04-25-cyfrin-predict-cre-integration-v2.1.md | IChainlinkAdapter | unmatched — not counted | — | listed in scope | no |
| 2026-04-25-cyfrin-predict-cre-integration-v2.1.md | IVerifierProxy | unmatched — not counted | — | mentioned as dependency | no |
| 2026-04-25-cyfrin-predict-cre-integration-v2.1.md | IConditionalTokens | unmatched — not counted | — | mentioned as dependency | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x22da18...c9d244` | ConditionalTokens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf64b0b...19a07f` | ConditionalTokens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xb4d9f1...645f6e` | ConditionalTokensFeesHandler | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd63206...e64030` | ConditionalTokensFeesHandler | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6beb5a...decfa5` | CTFExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8bc070...94b689` | CTFExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf1f8f5...fa9783` | FeeModuleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfbc225...7ba34f` | FeeModuleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x365fb8...d8d58a` | NegRiskCtfExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8a289d...81b41d` | NegRiskCtfExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd172f3...da6057` | NegRiskFeeModuleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf2311c...b3132f` | NegRiskFeeModuleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x56020f...6ecffd` | NegRiskOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbb7250...e3e175` | NegRiskOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x89f92c...fd8e5e` | RegisterTokenHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa48c26...9c2089` | RegisterTokenHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x14e3cb...d436ae` | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x242e1b...22613d` | UmaCompatibleCtfAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x26b366...df8172` | UmaCompatibleCtfAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x947cc0...53d7b4` | UmaCompatibleCtfAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf61198...17902f` | UmaCompatibleCtfAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x09f683...7410c5` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x66239b...cd39e7` | WrappedCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf4aa30...a77b00` | ZeroDevWithdrawalHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 9 ambiguous, 46 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=1, medium=1
- Match method counts: unique_name=13

Zero-match audit list:

- [1980] 2026-04-25-cyfrin-predict-cre-integration-v2.1.pdf
- [1983] 2026-02-18-cyfrin-predict-fun-v2.0.md
- [1984] 2026-04-25-cyfrin-predict-cre-integration-v2.1.md

Fork inheritance lineage and inherited audits are included when available.
