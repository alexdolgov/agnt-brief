# Agentic Audit Brief: Sigma Money

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 10 (0 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Sigma Money (`sigma-money`)
- Website: [https://sigma.money](https://sigma.money)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 34 unique implementations (34 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $2,706,891.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Sigma Money. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 15 contract row(s) across bsc. Structural roles: 7 core, 6 supporting, 2 unclassified. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 15
- Structural roles: core (7), supporting (6), unclassified (2)
- Contract kinds: contract (15)
- Detected standards: ownable (4), erc1967proxy (3), accesscontrol (2), erc165 (2), erc20 (1), erc20permit (1), ownable2step (1)
- Frameworks: openzeppelin (11), chainlink (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 4

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 15; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 34 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 34
- Raw deployments: 34
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 8 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BNBPriceOracle | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254886 | `0x45dcdf...3efa3e` | ⚠️ Unaudited |
| BnbUSDBasePool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254873 | `0x16d39a...754c94` | ⚠️ Unaudited |
| BnbUSDBasePool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254876 | `0x1a36aa...86a635` | ⚠️ Unaudited |
| BnbUSDBasePool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254901 | `0x2b9c1f...4a3aa3` | ⚠️ Unaudited |
| BnbUSDBasePool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254899 | `0xde1bdd...eacea7` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254875 | `0x185cd2...9c1c86` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254898 | `0xd7dd08...cea28c` | ⚠️ Unaudited |
| GaugeEmission | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254871 | `0x0626bd...f70348` | ⚠️ Unaudited |
| L2FxUSD | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | bsc | unit-254888 | `0x5519a4...fda265` | ⚠️ Unaudited |
| ListaStrategyV2 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254885 | `0x434a55...35f87e` | ⚠️ Unaudited |
| ListaStrategyV2 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254891 | `0x6dbc02...936668` | ⚠️ Unaudited |
| PancakeV3SpotPriceReader | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254880 | `0x220ed3...4780e5` | ⚠️ Unaudited |
| PegKeeper | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254902 | `0xee3f89...7373f6` | ⚠️ Unaudited |
| PoolManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254872 | `0x0a43ca...ca600e` | ⚠️ Unaudited |
| RevenuePool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254877 | `0x1b54fe...e08d44` | ⚠️ Unaudited |
| RevenuePool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254881 | `0x232da2...64d4cb` | ⚠️ Unaudited |
| RevenuePool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254895 | `0x9a4c05...424e42` | ⚠️ Unaudited |
| SafeProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254870 | `0x0609c8...317f34` | ⚠️ Unaudited |
| Shadow | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-254893 | `0x85375d...0a40e7` | ⚠️ Unaudited |
| SigmaClisBNBSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | bsc | unit-254894 | `0x8b9856...847a29` | ⚠️ Unaudited |
| SigmaClisBNBSYBNBRateProvider | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254878 | `0x1cf9bf...a92095` | ⚠️ Unaudited |
| SigmaController | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254896 | `0xab98d1...01188b` | ⚠️ Unaudited |
| SigmaLongPool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254900 | `0xe8a16f...187b7d` | ⚠️ Unaudited |
| VoteModule | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254884 | `0x3fab76...f99965` | ⚠️ Unaudited |
| Voter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254883 | `0x3e8832...80f56e` | ⚠️ Unaudited |
| XShadow | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254889 | `0x66a247...2e8442` | ⚠️ Unaudited |
| YieldStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254887 | `0x53f28d...8ef2fc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254869 | `0x04bd5c...05b2ac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254874 | `0x17e6e5...59c62b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254879 | `0x1f04a2...5d95f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254882 | `0x2903fd...67942b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254890 | `0x6a25b4...a74ae5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254892 | `0x7e1f2e...8a07ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254897 | `0xba500b...0176e1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [SigmaMoney round 2 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SigmaMoney%20round%202%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-07 | aging | Direct | n/a | no match | 0 | 0 | 0 | 15 | n/a |
| [Supremacy-Audit-Report-SigmaMoney-v1.2.pdf](https://github.com/SupremacyTeam/publications/blob/main/Sigma%20Money/Supremacy-Audit-Report-SigmaMoney-v1.2.pdf) | Supremacy | Audit | 2025-07 | aging | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [SigmaMoney round 3 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SigmaMoney%20round%203%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 20 | n/a |
| [Supremacy-Audit-Report-SigmaMoney-v1.6.pdf](https://github.com/SupremacyTeam/publications/blob/main/Sigma%20Money/Supremacy-Audit-Report-SigmaMoney-v1.6.pdf) | Supremacy | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [SigmaMoney round 4 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SigmaMoney%20round%204%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 18 | n/a |
| [Sigma DAO round 1 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Sigma%20DAO%20round%201%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [Sigma DAO round 2 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Sigma%20DAO%20round%202%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [Sigma DAO round 3&4&5 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Sigma%20DAO%20round%203%264%265%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [SigmaMoney Round 7 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SigmaMoney%20Round%207%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Sigma_Dao_round_6_%26_Money_round_8_SlowMist_Audit_Report.pdf) | SlowMist | Audit | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 35 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11667] SigmaMoney round 2 - SlowMist Audit Report.pdf — no match: No reason recorded
- [11668] Supremacy-Audit-Report-SigmaMoney-v1.2.pdf — no match: No reason recorded
- [11669] SigmaMoney round 3 - SlowMist Audit Report.pdf — no match: No reason recorded
- [11670] Supremacy-Audit-Report-SigmaMoney-v1.6.pdf — no match: No reason recorded
- [11671] SigmaMoney round 4 - SlowMist Audit Report.pdf — no match: No reason recorded
- [11672] Sigma DAO round 1 - SlowMist Audit Report.pdf — no match: No reason recorded
- [11673] Sigma DAO round 2 - SlowMist Audit Report.pdf — no match: No reason recorded
- [11674] Sigma DAO round 3&4&5 - SlowMist Audit Report.pdf — no match: No reason recorded
- [11675] SigmaMoney Round 7 - SlowMist Audit Report.pdf — no match: No reason recorded
- [11676] Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| SigmaMoney round 2 - SlowMist Audit Report.pdf | BNBPriceOracle | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | BNBUSDBasePool | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | BasePool | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | IListaStakeManager | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | IPancakeV3Pool | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | ISigmaClisBNBSYPool | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | ISigmaController | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | IV3SwapRouter | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | PancakeLib | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | PoolManager | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | RevenuePool | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | SigmaClisBNBPool | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | SigmaClisBNBSYBNBRateProvider | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | SigmaClisBNBSYSlisBNBRateProvider | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | SigmaController | unmatched — not counted | — | — | no |
| Supremacy-Audit-Report-SigmaMoney-v1.2.pdf | PoolManager | unmatched — not counted | — | — | no |
| Supremacy-Audit-Report-SigmaMoney-v1.2.pdf | SigmaController | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | BNBPriceOracle | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | BasePool | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | BnbUSDBasePool | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | BnbUSDPriceOracle | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | ConverterBase | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | GeneralTokenConverter | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | InverseBnbPriceOracle | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | ListaStrategyV2 | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | LongPositionEmergencyCloseFacet | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | MoolahFlashLoanCallbackFacet | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | MultiPathConverter | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | PegKeeper | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | PoolConfiguration | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | PoolManager | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | PoolStorage | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | PositionOperateFlashLoanFacetV2 | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | ProtocolFees | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | ShortPool | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | ShortPositionOperateFlashLoanFacet | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | SigmaLongPool | unmatched — not counted | — | — | no |
| Supremacy-Audit-Report-SigmaMoney-v1.6.pdf | ListaStrategy | unmatched — not counted | — | — | no |
| Supremacy-Audit-Report-SigmaMoney-v1.6.pdf | PoolConfiguration | unmatched — not counted | — | — | no |
| Supremacy-Audit-Report-SigmaMoney-v1.6.pdf | PoolManager | unmatched — not counted | — | — | no |
| Supremacy-Audit-Report-SigmaMoney-v1.6.pdf | SigmaController | unmatched — not counted | — | — | no |
| Supremacy-Audit-Report-SigmaMoney-v1.6.pdf | SigmaSPAdapter | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | BNBPriceOracle | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | FlashLoanCallbackFacet | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | FlashLoanFacetBase | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | FlashLoans | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | IPoolConfiguration | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | ISmartWalletChecker | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | InversePriceOracle | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | ListaStrategyV2 | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | LongPositionEmergencyCloseFacet | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | MigrateFacet | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | MorphoFlashLoanFacetBase | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | PoolConfiguration | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | PoolManager | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | PositionOperateFlashLoanFacet | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | PositionOperateFlashLoanFacetV2 | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | ShortPoolManager | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | ShortPositionOperateFlashLoanFacet | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | SmartWalletWhitelist | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | AccessHub | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | IAccessHub | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | IMinter | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | ISigmaFeeDistributor | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | ISigmaFeeDistributorFactory | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | ISigmaGaugeFactory | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | ISigmaVesting | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | IVeFunderGauge | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | IVeFunderGaugeFactory | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | IVoter | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | Minter | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | RewardClaimers | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | Shadow | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | SigmaFeeDistributor | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | SigmaFeeDistributorFactory | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | SigmaGauge | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | SigmaGaugeFactory | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | SigmaVesting | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | VeFunderGauge | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | VeFunderGaugeFactory | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | Voter | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | XShadow | unmatched — not counted | — | — | no |
| Sigma DAO round 2 - SlowMist Audit Report.pdf | AccessHub | unmatched — not counted | — | — | no |
| Sigma DAO round 2 - SlowMist Audit Report.pdf | IAccessHub | unmatched — not counted | — | — | no |
| Sigma DAO round 2 - SlowMist Audit Report.pdf | IMinter | unmatched — not counted | — | — | no |
| Sigma DAO round 2 - SlowMist Audit Report.pdf | IXShadow | unmatched — not counted | — | — | no |
| Sigma DAO round 2 - SlowMist Audit Report.pdf | Minter | unmatched — not counted | — | — | no |
| Sigma DAO round 2 - SlowMist Audit Report.pdf | XShadow | unmatched — not counted | — | — | no |
| Sigma DAO round 3&4&5 - SlowMist Audit Report.pdf | AccessHub | unmatched — not counted | — | — | no |
| Sigma DAO round 3&4&5 - SlowMist Audit Report.pdf | IAccessHub | unmatched — not counted | — | — | no |
| Sigma DAO round 3&4&5 - SlowMist Audit Report.pdf | IVoter | unmatched — not counted | — | — | no |
| Sigma DAO round 3&4&5 - SlowMist Audit Report.pdf | SigmaAirdrop | unmatched — not counted | — | — | no |
| Sigma DAO round 3&4&5 - SlowMist Audit Report.pdf | Voter | unmatched — not counted | — | — | no |
| Sigma DAO round 3&4&5 - SlowMist Audit Report.pdf | x33 | unmatched — not counted | — | — | no |
| SigmaMoney Round 7 - SlowMist Audit Report.pdf | LongPositionOperateFacet | unmatched — not counted | — | — | no |
| SigmaMoney Round 7 - SlowMist Audit Report.pdf | MorphoFlashLoanFacetBase | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | AccessHub | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | GaugeEmission | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IAccessHub | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IERC20Extended | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IFeeDistributor | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IGauge | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IGaugeEmission | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | ISigmaFeeDistributor | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | ISigmaFeeDistributorFactory | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | ISigmaGauge | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | ISigmaGaugeFactory | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IVeFunderGauge | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IVeFunderGaugeFactory | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IVoteModule | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IVoter | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IX33 | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IXShadow | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | PoolManager | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | RewardClaimers | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | ShortPositionOperateFacet | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | SigmaAirdrop | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | SigmaFeeDistributor | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | SigmaFeeDistributorFactory | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | SigmaGauge | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | SigmaGaugeFactory | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | StrategyBaseUpgradeable | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | TimelockedTransparentUpgradableProxy | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | Token | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | VeFunderGauge | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | VeFunderGaugeFactory | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | VoteModule | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | Voter | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | XShadow | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | YieldStrategy | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | x33 | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 131 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11667] SigmaMoney round 2 - SlowMist Audit Report.pdf
- [11668] Supremacy-Audit-Report-SigmaMoney-v1.2.pdf
- [11669] SigmaMoney round 3 - SlowMist Audit Report.pdf
- [11670] Supremacy-Audit-Report-SigmaMoney-v1.6.pdf
- [11671] SigmaMoney round 4 - SlowMist Audit Report.pdf
- [11672] Sigma DAO round 1 - SlowMist Audit Report.pdf
- [11673] Sigma DAO round 2 - SlowMist Audit Report.pdf
- [11674] Sigma DAO round 3&4&5 - SlowMist Audit Report.pdf
- [11675] SigmaMoney Round 7 - SlowMist Audit Report.pdf
- [11676] Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
