# Agentic Audit Brief: Peapods Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Peapods Finance (`peapods-finance`)
- Website: [https://peapods.finance](https://peapods.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, mode
- Contract surface: 13 unique implementations (13 raw deployments)
- Coverage basis: 1/8 confirmed own live verified implementations (12.5%); conservative 12.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,268,642.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Peapods Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across arbitrum, base, ethereum, mode. Structural roles: 7 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (7), supporting (1)
- Contract kinds: contract (8)
- Detected standards: erc20 (1)
- Frameworks: uniswap-v3 (2), openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

2 of 13 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

**AlgebraPool** (`0x44cc8b...584a77`, chain 42161)
Origin: swapbased (`0x3ce99e...eae8c9`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AlgebraPool** (`0xcf7145...7bd6d5`, chain 42161)
Origin: swapbased (`0x3ce99e...eae8c9`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x44c95b...b044a3`, chain 1)
- UnnamedContract (`0x9af2bf...482606`, chain 1)
- UnnamedContract (`0x2787d7...f529d6`, chain 8453)
- UnnamedContract (`0xb0a65b...17309e`, chain 8453)
- UnnamedContract (`0x23d177...f3f8b2`, chain 42161)
- AlgebraPool (`0x54f0b2...1b9243`, chain 34443)
- CLPool (`0xd53398...98c37e`, chain 8453)
- PEAS (`0x02f928...2df875`, chain 1)
- UniswapV3Pool (`0x526800...c56b36`, chain 1)
- UniswapV3Pool (`0xae7505...d79160`, chain 1)
- UniswapV3Pool (`0x5abdb2...f5a72b`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/8 (12.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 13 of 13 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/8
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 13
- Raw deployments: 13
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 1 | 12.5% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PEAS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251168 | `0x02f928...2df875` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraPool | core_logic | project_anchor | own_supporting | 0 | mode | unit-251173 | `0x54f0b2...1b9243` | ⚠️ Unaudited |
| AlgebraPool | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-251175 | `0x44cc8b...584a77` | ⚠️ Unaudited |
| AlgebraPool | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-251176 | `0xcf7145...7bd6d5` | ⚠️ Unaudited |
| CLPool | core_logic | project_anchor | own_supporting | 0 | base | unit-251180 | `0xd53398...98c37e` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251170 | `0x526800...c56b36` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251172 | `0xae7505...d79160` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | base | unit-251178 | `0x5abdb2...f5a72b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251169 | `0x44c95b...b044a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251171 | `0x9af2bf...482606` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-251177 | `0x2787d7...f529d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-251179 | `0xb0a65b...17309e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251174 | `0x23d177...f3f8b2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [sourcehat.com/audits/PeapodsFinance](https://sourcehat.com/audits/PeapodsFinance) | SourceHat | Audit | 2023-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 9 | n/a |
| [spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2FNepD2vC6ydmdzIX0TlkF%2FyAudit_report%20(2).pdf) | yAudit | Audit | 2024-10 | aging | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2FhIIhvk8ktnP28clIIAls%2FPeapods_Report.pdf) | SourceHat | Audit | 2024-11 | aging | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf](https://3679785424-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWWGuQ85FudSBhxhUZWcf%2Fuploads%2F1H0oxy7m5JgiUvW4syJW%2FPeapods-security-review_2024-11-16%20(2).pdf) | SourceHat | Audit | 2024-12 | aging | Direct | n/a | matched | 1 | 0 | 0 | 53 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2198] sourcehat.com/audits/PeapodsFinance — matched: No reason recorded
- [2199] spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf — no match: No reason recorded
- [2200] spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf — no match: No reason recorded
- [2201] spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| sourcehat.com/audits/PeapodsFinance | IndexUtils | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | PEAS | own contract | PEAS (selected) `0x02f928...2df875` — deployed 2023-12-12 22:06:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/PeapodsFinance | ProtocolFeeRouter | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | ProtocolFees | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | StakingPoolToken | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | TokenRewards | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | UnweightedIndex | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | V3Locker | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | V3TwapUtilities | unmatched — not counted | — | — | no |
| sourcehat.com/audits/PeapodsFinance | WeightedIndex | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | AutoCompoundingPodLp | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | AutoCompoundingPodLpFactory | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | BalancerFlashSource | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | ChainlinkSinglePriceOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | ConversionFactorPTKN | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | ConversionFactorSPTKN | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | FlashSourceBase | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | FraxlendPair | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | FraxlendPairAccessControl | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | FraxlendPairCore | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | LendingAssetVault | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | LeverageManager | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | LeverageManagerAccessControl | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | LeveragePositionCustodian | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | LeveragePositions | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | PodFlashSource | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | UniswapV3FlashSource | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | UniswapV3SinglePriceOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | VaultAccount | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | VotingPool | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | aspTKNMinimalOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf | spTKNMinimalOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | AutoCompoundingPodLP | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | AutoCompoundingPodLp | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | ChainlinkSinglePriceOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | DecentralizedIndex | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | FraxlendPair | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | FraxlendPairCore | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | IndexUtils | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | LendingAssetVault | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | LeverageManager | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | PodFlashSource | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | StakingPoolToken | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | TokenRewards | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | UniswapDexAdapter | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | UniswapV3SinglePriceOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | V3AerodromeUtilities | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | V3TwapUtilities | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | VariableInterestRate | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | VotingPool | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | WeightedIndex | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | Zapper | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | aspTKNMinimalOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf | spTKNMinimalOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | AerodromeCommands | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | AerodromeDexAdapter | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | AutoCompoundingPodLp | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | AutoCompoundingPodLpFactory | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | BalancerFlashSource | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | BokkyPooBahsDateTimeLibrary | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | BulkPodYieldProcess | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | CamelotDexAdapter | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | ChainlinkSinglePriceOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | ConversionFactorPTKN | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | ConversionFactorSPTKN | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | DIAOracleV2SinglePriceOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | DecentralizedIndex | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | ERC20Bridgeable | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | FlashSourceBase | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | FullMath | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | IndexManager | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | IndexUtils | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | LendingAssetVault | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | LendingAssetVaultFactory | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | LeverageManager | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | LeverageManagerAccessControl | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | LeveragePositionCustodian | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | LeveragePositions | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | PEAS | own contract | PEAS (selected) `0x02f928...2df875` — deployed 2023-12-12 22:06:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | PodFlashSource | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | PoolAddress | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | PoolAddressAlgebra | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | PoolAddressKimMode | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | PoolAddressSlipstream | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | ProtocolFeeRouter | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | ProtocolFees | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | RewardsWhitelist | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | StakingPoolToken | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | TickMath | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | TokenBridge | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | TokenRewards | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | TokenRouter | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | UniswapDexAdapter | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | UniswapV3FlashSource | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | UniswapV3SinglePriceOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | V2ReservesCamelot | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | V2ReservesUniswap | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | V3Locker | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | V3TwapAerodromeUtilities | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | V3TwapCamelotUtilities | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | V3TwapKimUtilities | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | V3TwapUtilities | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | VaultAccount | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | VotingPool | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | WeightedIndex | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | Zapper | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | aspTKNMinimalOracle | unmatched — not counted | — | — | no |
| spaces/WWGuQ85FudSBhxhUZWcf/uploads/1H0oxy7m5JgiUvW4syJW/Peapods-security-review_2024-11-16 (2).pdf | spTKNMinimalOracle | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mode | `0x54f0b2...1b9243` | AlgebraPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x44cc8b...584a77` | AlgebraPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcf7145...7bd6d5` | AlgebraPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd53398...98c37e` | CLPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 106 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=2

Zero-match audit list:

- [2199] spaces/WWGuQ85FudSBhxhUZWcf/uploads/NepD2vC6ydmdzIX0TlkF/yAudit_report (2).pdf
- [2200] spaces/WWGuQ85FudSBhxhUZWcf/uploads/hIIhvk8ktnP28clIIAls/Peapods_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
