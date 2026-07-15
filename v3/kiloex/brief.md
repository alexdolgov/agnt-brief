# Agentic Audit Brief: KiloEx

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

- Project: KiloEx (`kiloex`)
- Website: [https://app.kiloex.io/#/trade](https://app.kiloex.io/#/trade)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,251,178.06
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for KiloEx in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Indexed contracts: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 9 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| KiloExOFT | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-244030 | `0x503fa2...c1df53` | ⚠️ Unaudited |

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
| [drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view](https://drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view?usp=sharing) | Secure3 | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 33 | high |
| [drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view](https://drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view?usp=sharing) | Ancilia | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |
| [Kilo---Vault2-Final-Audit-Report.pdf](https://scalebit.xyz/reports/Kilo---Vault2-Final-Audit-Report.pdf) | Scalebit | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [20240802-HybridVault-Final-Audit-Report.pdf](https://scalebit.xyz/reports/20240802-HybridVault-Final-Audit-Report.pdf) | Scalebit | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [20250321-XKilo-Token-Final-Audit-Report.pdf](https://scalebit.xyz/reports/20250321-XKilo-Token-Final-Audit-Report.pdf) | Scalebit | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [KiloEx - SlowMist Audit Report.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/KiloEx%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 59 | n/a |
| [HybridVault Audit Report.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/HybridVault%20Audit%20Report.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [Kilo - Vault2 Audit Report.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/Kilo%20-%20Vault2%20Audit%20Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Kilo Auditing Report 1.3 public.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/Kilo%20Auditing%20Report%201.3%20public.pdf) | unknown | Audit | 2023-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [KiloEx_final_Secure3_Audit_Report.pdf](https://github.com/KiloExPerp/kiloex-audit/blob/main/KiloEx_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2023-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 33 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2766] drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view — no match: Extracted 33 contract names from the Audit Scope table on page 8. Audit date from title: 'KiloEx Jun 6th, 2023'.
- [2767] drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view — no match: Extracted 22 contracts from the 'Contracts overview' section with file paths and commit hashes. Audit date inferred from version history: first draft June 28, 2023, public version July 13, 2023. Using June 30, 2023 as approximate completion date.
- [2768] Kilo---Vault2-Final-Audit-Report.pdf — no match: Extracted 6 contracts from the 'Files in Scope' table. Audit date from cover page: 'Tue Apr 30 2024'.
- [2769] 20240802-HybridVault-Final-Audit-Report.pdf — no match: Extracted 25 contract names from the 'Files in Scope' table (section 1.2) and the audit date from the header 'Tue Jul 23 2024'.
- [2770] 20250321-XKilo-Token-Final-Audit-Report.pdf — no match: No reason recorded
- [2771] KiloEx - SlowMist Audit Report.pdf — no match: No reason recorded
- [2772] HybridVault Audit Report.pdf — no match: All contracts listed in the 'Files in Scope' table (section 1.2) were extracted. The audit date is the end date of the timeline (Tue Jul 23 2024).
- [2773] Kilo - Vault2 Audit Report.pdf — no match: Extracted 6 contracts from the 'Files in Scope' table. Audit date from cover page.
- [2774] Kilo Auditing Report 1.3 public.pdf — no match: No reason recorded
- [2775] KiloEx_final_Secure3_Audit_Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | OrderBook | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | PositionRouter | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | PerpTrade | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | KiloStorageManager | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | VaultStakeReward | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | KiloPriceFeed | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | PendingReward | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | ProductManager | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | KiloPerpView | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | MarginFeeManager | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | PerpTradeUtil | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | TradeRewardDistributor | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | LiquidationPriceReader | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | ReferralStorageManager | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | IKiloStorage | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | ProtocolReward | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | OperatorOwnerGovernableUpgradeable | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | OperatorOwnerGovernable | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | OwnerGovernableUpgradeable | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | OwnerGovernable | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | IPendingReward | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | IPerpTrade | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | OwnerUpgradeable | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | IProductManager | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | IReferralStorage | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | GovernableUpgradeable | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | Governable | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | ReferralReader | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | IMarginFeeManager | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | ITradeRewardDistributor | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | IOracle | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | IProtocolReward | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view | IVaultReward | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | OperatorOwnerGovernableUpgradeable | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | OwnerGovernableUpgradeable | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | OperatorOwnerGovernable | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | OwnerGovernable | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | KiloPriceFeed | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | KiloStorageManager | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | MarginFeeManager | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | OrderBook | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | PendingReward | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | PerpTrade | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | PositionRouter | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | ProductManager | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | VaultStakeReward | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | KiloPassCard | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | KeeperReader | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | KiloPerpView | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | LiquidationPriceReader | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | ReferralReader | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | ReferralStorageManager | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | ProtocolReward | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | TradeRewardDistributor | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view | PerpTradeUtil | unmatched — not counted | — | listed in scope table | no |
| Kilo---Vault2-Final-Audit-Report.pdf | OperatorOwnerGovernableUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Kilo---Vault2-Final-Audit-Report.pdf | OwnerGovernableUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Kilo---Vault2-Final-Audit-Report.pdf | VaultStakeReward | unmatched — not counted | — | listed in scope table | no |
| Kilo---Vault2-Final-Audit-Report.pdf | KTokenLockedDepositNftDesign | unmatched — not counted | — | listed in scope table | no |
| Kilo---Vault2-Final-Audit-Report.pdf | KTokenLockedDepositNft | unmatched — not counted | — | listed in scope table | no |
| Kilo---Vault2-Final-Audit-Report.pdf | KTokenOpenPnlFeed | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | PercentageMath | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | OperatorOwnerGovernableUpgradeable | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | OwnerGovernableUpgradeable | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | IOpenTradesPnlFeed | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | IKiloStorage | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | IPendingReward | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | INft | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | IKTokenLockedDepositNftDesign | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | IOracle | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | VUSD | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | IHToken | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | HToken | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | IVUSD | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | KiloERC4626Upgradeable | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | KTokenLockedDepositNftDesign | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | KTokenLockedDepositNft | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | KTokenOpenPnlFeed | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | IKToken | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | VaultStakeReward | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | HybridVaultLogic | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | IPriceRouter | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | DataTypes | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | IHybridVault | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | HybridVault | unmatched — not counted | — | listed in scope table | no |
| 20240802-HybridVault-Final-Audit-Report.pdf | PriceRouter | unmatched — not counted | — | listed in scope table | no |
| 20250321-XKilo-Token-Final-Audit-Report.pdf | KiloExToken | unmatched — not counted | — | — | no |
| 20250321-XKilo-Token-Final-Audit-Report.pdf | XKiloDividends | unmatched — not counted | — | — | no |
| 20250321-XKilo-Token-Final-Audit-Report.pdf | XKiloToken | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | AaveV3Strategy | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | AffiliateRewardDistributor | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | AirdropRewardDistributor | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | CheckIn | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | CommonReward | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | Delegate | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | DelegateCollection | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | GenesisPassCard | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | HToken | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | HybridVault | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | HybridVaultLogic | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | HybridVaultReader | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | KTokenLockedDepositNft | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | KTokenLockedDepositNftDesign | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | KTokenOpenPnlFeed | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | KeeperReader | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | KiloERC4626Upgradeable | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | KiloExReader | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | KiloPassCard | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | KiloPerpView | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | KiloPriceFeed | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | KiloStorageManager | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | KiloVestingWallet | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | KolRewardDistributor | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | LiquidationPriceReader | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | ListaDaoWbnbStrategy | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | MarginFeeManager | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | MarketOrderWithTriggerOrder | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | MinimalForwarderUpgradeable | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | OperatorOwnerGovernable | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | OperatorOwnerGovernableUpgradeable | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | OrderBook | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | OwnerGovernable | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | OwnerGovernableUpgradeable | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | PendingReward | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | PerpTrade | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | PerpTradeReader | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | PositionRouter | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | PriceImpactLogic | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | PriceRouter | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | PriceRouterHelper | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | ProductManager | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | ProtocolReward | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | ReferralReader | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | ReferralStorageManager | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | SideVault | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | SideVaultEntry | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | SideVaultWithPending | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | StakingReader | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | TeamContestReward | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | TradeRewardDistributor | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | TrustedForwarder | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | V2PlusTemp | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | VUSD | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | VaultStakeReward | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | VaultStakeRewardTemp | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | VenusVTokenStrategy | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | XKiloDividends | unmatched — not counted | — | — | no |
| KiloEx - SlowMist Audit Report.pdf | XKiloToken | unmatched — not counted | — | — | no |
| HybridVault Audit Report.pdf | PercentageMath | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | OperatorOwnerGovernableUpgradeable | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | OwnerGovernableUpgradeable | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | IOpenTradesPnlFeed | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | IKiloStorage | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | IPendingReward | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | INft | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | IKTokenLockedDepositNftDesign | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | IOracle | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | VUSD | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | IHToken | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | HToken | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | IVUSD | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | KiloERC4626Upgradeable | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | KTokenLockedDepositNftDesign | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | KTokenLockedDepositNft | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | KTokenOpenPnlFeed | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | IKToken | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | VaultStakeReward | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | HybridVaultLogic | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | IPriceRouter | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | DataTypes | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | IHybridVault | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | HybridVault | unmatched — not counted | — | listed in scope table | no |
| HybridVault Audit Report.pdf | PriceRouter | unmatched — not counted | — | listed in scope table | no |
| Kilo - Vault2 Audit Report.pdf | OperatorOwnerGovernableUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Kilo - Vault2 Audit Report.pdf | OwnerGovernableUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Kilo - Vault2 Audit Report.pdf | VaultStakeReward | unmatched — not counted | — | listed in scope table | no |
| Kilo - Vault2 Audit Report.pdf | KTokenLockedDepositNftDesign | unmatched — not counted | — | listed in scope table | no |
| Kilo - Vault2 Audit Report.pdf | KTokenLockedDepositNft | unmatched — not counted | — | listed in scope table | no |
| Kilo - Vault2 Audit Report.pdf | KTokenOpenPnlFeed | unmatched — not counted | — | listed in scope table | no |
| Kilo Auditing Report 1.3 public.pdf | KeeperReader | unmatched — not counted | — | — | no |
| Kilo Auditing Report 1.3 public.pdf | KiloPassCard | unmatched — not counted | — | — | no |
| Kilo Auditing Report 1.3 public.pdf | KiloPerpView | unmatched — not counted | — | — | no |
| Kilo Auditing Report 1.3 public.pdf | KiloPriceFeed | unmatched — not counted | — | — | no |
| Kilo Auditing Report 1.3 public.pdf | KiloStorageManager | unmatched — not counted | — | — | no |
| Kilo Auditing Report 1.3 public.pdf | LiquidationPriceReader | unmatched — not counted | — | — | no |
| Kilo Auditing Report 1.3 public.pdf | MarginFeeManager | unmatched — not counted | — | — | no |
| Kilo Auditing Report 1.3 public.pdf | OperatorOwnerGovernable | unmatched — not counted | — | — | no |
| Kilo Auditing Report 1.3 public.pdf | OperatorOwnerGovernableUpgradeable | unmatched — not counted | — | — | no |
| Kilo Auditing Report 1.3 public.pdf | OrderBook | unmatched — not counted | — | — | no |
| Kilo Auditing Report 1.3 public.pdf | OwnerGovernable | unmatched — not counted | — | — | no |
| Kilo Auditing Report 1.3 public.pdf | OwnerGovernableUpgradeable | unmatched — not counted | — | — | no |
| Kilo Auditing Report 1.3 public.pdf | PendingReward | unmatched — not counted | — | — | no |
| Kilo Auditing Report 1.3 public.pdf | PerpTrade | unmatched — not counted | — | — | no |
| Kilo Auditing Report 1.3 public.pdf | PerpTradeUtil | unmatched — not counted | — | — | no |
| Kilo Auditing Report 1.3 public.pdf | PositionRouter | unmatched — not counted | — | — | no |
| Kilo Auditing Report 1.3 public.pdf | ProductManager | unmatched — not counted | — | — | no |
| Kilo Auditing Report 1.3 public.pdf | ProtocolReward | unmatched — not counted | — | — | no |
| Kilo Auditing Report 1.3 public.pdf | ReferralReader | unmatched — not counted | — | — | no |
| Kilo Auditing Report 1.3 public.pdf | ReferralStorageManager | unmatched — not counted | — | — | no |
| Kilo Auditing Report 1.3 public.pdf | TradeRewardDistributor | unmatched — not counted | — | — | no |
| Kilo Auditing Report 1.3 public.pdf | VaultStakeReward | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | Governable | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | GovernableUpgradeable | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | IKiloStorage | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | IMarginFeeManager | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | IOracle | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | IPendingReward | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | IPerpTrade | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | IProductManager | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | IProtocolReward | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | IReferralStorage | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | ITradeRewardDistributor | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | IVaultReward | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | KiloPerpView | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | KiloPriceFeed | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | KiloStorageManager | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | LiquidationPriceReader | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | MarginFeeManager | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | OperatorOwnerGovernable | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | OperatorOwnerGovernableUpgradeable | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | OrderBook | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | OwnerGovernable | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | OwnerGovernableUpgradeable | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | OwnerUpgradeable | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | PendingReward | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | PerpTrade | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | PerpTradeUtil | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | PositionRouter | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | ProductManager | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | ProtocolReward | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | ReferralReader | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | ReferralStorageManager | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | TradeRewardDistributor | unmatched — not counted | — | — | no |
| KiloEx_final_Secure3_Audit_Report.pdf | VaultStakeReward | unmatched — not counted | — | — | no |

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
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 234 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: n/a

Zero-match audit list:

- [2766] drive.google.com/file/d/1xsBXkS6dfGRrNLopK6xy29dKex-VV0fw/view
- [2767] drive.google.com/file/d/15xcavMe1WPkVVvh8vJRRImSNAiVeT_al/view
- [2768] Kilo---Vault2-Final-Audit-Report.pdf
- [2769] 20240802-HybridVault-Final-Audit-Report.pdf
- [2770] 20250321-XKilo-Token-Final-Audit-Report.pdf
- [2771] KiloEx - SlowMist Audit Report.pdf
- [2772] HybridVault Audit Report.pdf
- [2773] Kilo - Vault2 Audit Report.pdf
- [2774] Kilo Auditing Report 1.3 public.pdf
- [2775] KiloEx_final_Secure3_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
