# Agentic Audit Brief: Boros

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Boros (`boros`)
- Website: [https://boros.pendle.finance/markets](https://boros.pendle.finance/markets)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $8,377,022.79
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Boros in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xbe6d22...8ab652`, chain 1)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/35 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 1 of 1 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 3 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381397 | `0xbe6d22...8ab652` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ChainSecurity-Markets.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/ChainSecurity/ChainSecurity-Markets.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 42 | n/a |
| [ChainSecurity-Router and AMM.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/ChainSecurity/ChainSecurity-Router%20and%20AMM.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 28 | n/a |
| [Pendle-Spearbit-Security-Review-August-2025.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/Spearbit/Pendle-Spearbit-Security-Review-August-2025.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 64 | high |
| [Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/WatchPug/Pendle___Boros___Market_%26_MarketHub_Audit_Report_by_WatchPug_rev2.pdf) | WatchPug | Audit | 2025-07 | aging | Direct | n/a | no match | 0 | 0 | 0 | 31 | n/a |
| [Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf](https://github.com/pendle-finance/boros-core-public/blob/main/audits/WatchPug/Pendle___Boros___Router_%26_AMM_Audit_Report_by_WatchPug_rev2.pdf) | WatchPug | Audit | 2025-07 | aging | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2064] ChainSecurity-Markets.pdf — no match: No reason recorded
- [2065] ChainSecurity-Router and AMM.pdf — no match: No reason recorded
- [2066] Pendle-Spearbit-Security-Review-August-2025.pdf — no match: Extracted contract names from the audit report's scope table and file paths. The report covers Pendle Core v3 with multiple scopes including Market, MarketHub, AMM, Router, and various libraries and interfaces. The audit date is from the cover page.
- [2067] Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf — no match: No reason recorded
- [2068] Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ChainSecurity-Markets.pdf | Account | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | ArrayLib | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | CoreOrderUtils | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | CoreStateUtils | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | Errors | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | FIndexOracle | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | FixedWindowObservationLib | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | LibOrderIdSort | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | LiquidationViewUtils | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | MarginManager | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | MarginViewUtils | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | MarketEntry | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | MarketFactory | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | MarketHub | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | MarketHubEntry | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | MarketHubRiskManagement | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | MarketHubSetAndView | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | MarketImpliedRate | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | MarketInfoAndState | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | MarketOffView | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | MarketOrderAndOtc | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | MarketRiskManagement | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | MarketSetAndView | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | MarketTypes | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | Order | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | OrderBookUtils | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | PMath | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | PaymentLib | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | PendingOIUtils | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | ProcessUtils | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | RateUtils | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | RecentTradeRateLib | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | SampleFundingRateUpkeep | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | Storage | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | StoredOrderIdArr | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | SweepProcessUtils | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | Tick | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | TickBitmap | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | TickMath | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | Trade | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | TransientOrderIdMapping | unmatched — not counted | — | — | no |
| ChainSecurity-Markets.pdf | createCompute | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | AMMModule | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | Account | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | AuthBase | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | AuthModule | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | AuthStorage | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | BOROS20 | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | BaseAMM | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | BookAmmSwapBase | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | EIP712 | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | Errors | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | LiquidityMath | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | MarketTypes | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | MiscModule | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | NegativeAMM | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | NegativeAMMMath | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | PaymentLib | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | PendleAccessController | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | PendleRoles | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | PositiveAMM | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | PositiveAMMMath | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | Router | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | RouterAccountBase | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | SigningBase | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | SwapMath | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | TickSweepStateLib | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | Trade | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | TradeModule | unmatched — not counted | — | — | no |
| ChainSecurity-Router and AMM.pdf | TradeStorage | unmatched — not counted | — | — | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | Storage | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MiscModule | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketFactory | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | Router | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketHub | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | FIndexOracle | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketOff | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketHubEntry | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketHubRiskManagement | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | AMMFactory | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | AMM | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | BaseAMM | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | PositiveAMMMath | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarginManager | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketOrderAndOtc | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | CoreOrderUtils | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | CoreStateUtils | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | ProcessMergeUtils | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | PendingOIPureUtils | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarginViewUtils | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | Tick | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | OrderBookUtils | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | ArrayLib | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | PMath | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | PaymentLib | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | PayFeeLib | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | SweepProcessUtils | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | RecentTradeRateLib | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | RecentTradeRateReadWriteLib | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketImpliedRate | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketSetAndView | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketInfoAndState | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketEntry | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | TickSweepStateLib | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | PendleRolesPlugin | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | PendleAccessController | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | PendleRoles | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | EIP712 | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | BookAmmSwapBase | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | CreateCompute | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | ProcessUtils | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | TradeStorage | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | LibOrderIdSort | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | Order | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | Trade | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | TradeLib | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketTypes | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | IRouter | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | IMarket | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | IMarketOff | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | IMarketHub | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | IMiscModule | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | IRouterEventsAndTypes | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | IERC20Errors | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | IERC20Metadata | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | UUPSUpgradeable | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | AccessControlUpgradeable | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | CustomDecimalsToken | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | RouterWrapper | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | MarketSettingWrapper | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | BorosTestBase | unmatched — not counted | — | listed in scope | no |
| Pendle-Spearbit-Security-Review-August-2025.pdf | CheckPrevrandao | unmatched — not counted | — | listed in scope | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | AccessControlEnumerableUpgradeable | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | AccountLib | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | CreateCompute | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | FIndexLib | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | FIndexOracle | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | FixedWindowObservationLib | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | IERC20 | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | IERC20Metadata | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | IFIndexOracle | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | IMarket | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | IMarketHub | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | IMarketSetting | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | IPAccessManagerCore | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | MarginManager | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | MarketFactory | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | MarketHub | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | MarketImpliedRateLib | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | MarketOrderAndOtc | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | MarketSetAndView | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | OrderBookUtils | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | PMath | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | PaymentLib | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | PendleAccessController | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | PendleRolesConstants | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | PendleRolesPlugin | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | Storage | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | TickMath | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | TradeLib | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | UUPSUpgradeable | unmatched — not counted | — | — | no |
| Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf | VMResultLib | unmatched — not counted | — | — | no |
| Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf | AMMModule | unmatched — not counted | — | — | no |
| Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf | AuthModule | unmatched — not counted | — | — | no |
| Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf | MarketHub | unmatched — not counted | — | — | no |
| Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf | MiscModule | unmatched — not counted | — | — | no |
| Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf | PositiveAMMMath | unmatched — not counted | — | — | no |
| Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf | TradeModule | unmatched — not counted | — | — | no |
| Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf | TradeStorage | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 172 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2064] ChainSecurity-Markets.pdf
- [2065] ChainSecurity-Router and AMM.pdf
- [2066] Pendle-Spearbit-Security-Review-August-2025.pdf
- [2067] Pendle___Boros___Market_&_MarketHub_Audit_Report_by_WatchPug_rev2.pdf
- [2068] Pendle___Boros___Router_&_AMM_Audit_Report_by_WatchPug_rev2.pdf

Fork inheritance lineage and inherited audits are included when available.
