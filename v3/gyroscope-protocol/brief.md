# Agentic Audit Brief: Gyroscope Protocol

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

- Project: Gyroscope Protocol (`gyroscope-protocol`)
- Website: [https://app.gyro.finance/](https://app.gyro.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, ethereum, gnosis, optimism, polygon, polygon-zkevm, sei, sonic
- Contract surface: 48 unique implementations (56 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $353,872.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Gyroscope Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 61 contract row(s) across arbitrum, avalanche, base, ethereum, gnosis, optimism, polygon, polygon-zkevm, sei, sonic. Structural roles: 49 unclassified, 8 supporting, 4 core. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 61
- Structural roles: unclassified (49), supporting (8), core (4)
- Contract kinds: contract (53), abstract (8)
- Detected standards: erc1967proxy (4), accesscontrol (3), erc165 (3), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (5)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x70c443...8b7383`, chain 1)
- UnnamedContract (`0xc63529...6cfbb9`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 61; live-surface contracts included: 61 (0 live, 61 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/48 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 2 own, 46 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 25
- Deployed-live implementations: 2 of 48 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 48
- Raw deployments: 56
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241688 | 2 deployments: ethereum `0x66a7aa...60b0b2`; ethereum `0x94c341...5c9126` | ⚠️ Unaudited |
| BalancerPoolVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241687 | `0x29609b...ee26e6` | ⚠️ Unaudited |
| BatchVaultPriceOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241660 | `0x46412c...9ec881` | ⚠️ Unaudited |
| CheckedPriceOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241658 | `0x2a18f5...482411` | ⚠️ Unaudited |
| ConstantRateProvider | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241662 | `0x5413e8...8556d8` | ⚠️ Unaudited |
| DistributionManager | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241661 | `0x4d9c76...0e6586` | ⚠️ Unaudited |
| FreezableTransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241684 | 2 deployments: ethereum `0x77f2ae...5e0014`; ethereum `0x8e1787...a94ff2` | ⚠️ Unaudited |
| FreezableTransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-241678 | `0xb438ea...baf7fa` | ⚠️ Unaudited |
| GenericVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 3 | ethereum | unit-241685 (3 proxies) | 4 deployments: ethereum `0x80ecf3...295176`; ethereum `0x830913...89ab31`; ethereum `0x88f3b4...821d65`; ethereum `0x98962b...6a4953` | ⚠️ Unaudited |
| GenericVaultPriceOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241668 | `0x89b938...de854a` | ⚠️ Unaudited |
| GnosisSafe | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241691 | `0xa8d612...b5f9e9` | ⚠️ Unaudited |
| GydDistributor | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241670 | `0xc1024e...b0561d` | ⚠️ Unaudited |
| GydRecovery | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241659 | `0x2a803c...fd4025` | ⚠️ Unaudited |
| GydToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241675 | `0xfa08eb...ea0cb5` | ⚠️ Unaudited |
| GydTokenPaused | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241683 | `0xe07f9d...491e8a` | ⚠️ Unaudited |
| GyroConfig | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | optimism | unit-241692 | `0x32acb4...2a23f3` | ⚠️ Unaudited |
| GyroConfig | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-241695 | `0x00a2a9...abb4a8` | ⚠️ Unaudited |
| GyroConfig | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-241698 | `0xfdc2e9...3fbe67` | ⚠️ Unaudited |
| GyroConfig | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | sonic | unit-241699 | `0xeecee5...8ea81b` | ⚠️ Unaudited |
| GyroConfig | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | sei | unit-241696 | `0x194941...2deadd` | ⚠️ Unaudited |
| GyroConfig | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-241703 | `0x8a5eb9...42c8a6` | ⚠️ Unaudited |
| GyroECLPPool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241676 | `0xfbfad5...a64c63` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | optimism | unit-241693 | `0x9b683c...77413c` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-241694 | `0x5d3be8...c99b89` | ⚠️ Unaudited |
| GyroECLPPoolFactory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-241697 | `0x1a79a2...05926b` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | sonic | unit-241700 | `0x536429...620c5f` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-241704 | `0x15e86b...574cec` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-241702 | `0xdca5f1...53eaf6` | ⚠️ Unaudited |
| L2GydDistributor | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241679 | `0x4dfdad...6ba299` | ⚠️ Unaudited |
| Motherboard | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241689 | 2 deployments: ethereum `0x8de76b...fff393`; ethereum `0xbaf6a0...a6cc95` | ⚠️ Unaudited |
| PrimaryAMMV1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241673 | `0xe7ea59...5a6ce5` | ⚠️ Unaudited |
| RateManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241671 | `0xdbc810...c4eda7` | ⚠️ Unaudited |
| Reserve | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241682 | 2 deployments: ethereum `0x00ffba...435c2a`; ethereum `0xc7ab17...b21a37` | ⚠️ Unaudited |
| ReserveManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241657 | `0x2519a7...1c2869` | ⚠️ Unaudited |
| ReserveSafetyManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241669 | `0x8f3832...3a3fab` | ⚠️ Unaudited |
| ReserveStewardshipIncentives | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241664 | `0x5c73d4...d94f86` | ⚠️ Unaudited |
| RootSafetyCheck | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241663 | `0x56773c...273789` | ⚠️ Unaudited |
| sGYD | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241690 | `0xea50f4...f37816` | ⚠️ Unaudited |
| sGYD | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-241701 | `0xea50f4...f37816` | ⚠️ Unaudited |
| StaticPercentageFeeHandler | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241666 | `0x757cfc...f9a051` | ⚠️ Unaudited |
| TellorOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241672 | `0xe22188...f9d9a0` | ⚠️ Unaudited |
| TrustedSignerPriceOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241674 | `0xf4ca93...4b4aa5` | ⚠️ Unaudited |
| VaultRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241686 | 2 deployments: ethereum `0x82c45c...0b5a22`; ethereum `0xf2865b...ed4eb5` | ⚠️ Unaudited |
| VaultSafetyMode | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241667 | `0x84b22e...232c0e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241665 | `0x70c443...8b7383` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-241677 | `0x5d56ea...324f0c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-241681 | `0xc63529...6cfbb9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241680 | `0x41e9ac...4d946a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [NM_0526_Gyroscope-dynamic-eclp.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM_0526_Gyroscope-dynamic-eclp.pdf) | Nethermind | Audit | 2025-06 | aging | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [NM0440_GYFI_FINAL.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0440_GYFI_FINAL.pdf) | Nethermind | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [NM0255_GYROSCOPE _FINAL.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0255_GYROSCOPE%20_FINAL.pdf) | Nethermind | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [NM0264_GYRO_SGYD.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0264_GYRO_SGYD.pdf) | Nethermind | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf) | Nethermind | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 50 | high |
| [NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf) | Nethermind | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 40 | high |
| [NM-0055 Security Review - Gyroscope CEMM.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM-0055%20Security%20Review%20-%20Gyroscope%20CEMM.pdf) | Nethermind | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [NM-0051 Security Review Gyroscope.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM-0051%20Security%20Review%20Gyroscope.pdf) | Nethermind | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 50 | high |
| [Summary Report & Fix Review - Gyroscope.pdf](https://github.com/gyrostable/audit-reports/blob/main/Trail%20of%20Bits/Summary%20Report%20%26%20Fix%20Review%20-%20Gyroscope.pdf) | Trail of Bits | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Gyroscope_Protocol_Audit_Report.pdf](https://github.com/gyrostable/audit-reports/blob/main/Runtime%20Verification/Gyroscope_Protocol_Audit_Report.pdf) | Runtime Verification | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2962] NM_0526_Gyroscope-dynamic-eclp.pdf — no match: No reason recorded
- [2963] NM0440_GYFI_FINAL.pdf — no match: Audited files table lists three contracts: GYFIAirdrop.sol, GYFILocker.sol, Types.sol. Audit date is Feb 26, 2025 from the final report date.
- [2964] NM0255_GYROSCOPE _FINAL.pdf — no match: Extracted 5 unique contract names from two repositories: CCIP-GYD (CCIPHelpers, GydL1CCIPEscrow, L2Gyd, CCIPReceiverUpgradeable) and ZkEVM-GYD (L2Gyd, GydL1Escrow). L2Gyd appears in both repositories but is listed once. Audit date is June 25, 2024 (final report date).
- [2965] NM0264_GYRO_SGYD.pdf — no match: No reason recorded
- [2966] NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf — no match: All contracts listed in the 'Audited Files' table (Section 2) are in scope. The audit date is the final report date (August 15, 2023).
- [2967] NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf — no match: Extracted contract names from the 'Audited Files' tables (two tables) and the system overview. The audit date is the final report date: August 15, 2023.
- [2968] NM-0055 Security Review - Gyroscope CEMM.pdf — no match: Extracted 6 contracts from the scope table and findings sections. Audit date from final report date.
- [2969] NM-0051 Security Review Gyroscope.pdf — no match: All contracts listed in the 'Audited Files' sections (Vaults Repository and Protocol Repository) are included. The audit date is from the final report date on the cover page.
- [2970] Summary Report & Fix Review - Gyroscope.pdf — no match: Extracted contract names from scope descriptions, findings, and fix log. Audit date from cover page.
- [2971] Gyroscope_Protocol_Audit_Report.pdf — no match: Three contracts explicitly listed in scope sections: PrimaryAMMV1, GyroCEMMMath, BalancerLPSharePricing. Other contracts mentioned (e.g., Motherboard, BaseVaultPriceOracle) are not in scope per report statements.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| NM_0526_Gyroscope-dynamic-eclp.pdf | BaseUpdatableRateProvider | unmatched — not counted | — | — | no |
| NM_0526_Gyroscope-dynamic-eclp.pdf | GovernanceRoleManager | unmatched — not counted | — | — | no |
| NM_0526_Gyroscope-dynamic-eclp.pdf | Gyro3CLPPool | unmatched — not counted | — | — | no |
| NM_0526_Gyroscope-dynamic-eclp.pdf | GyroConfigManager | unmatched — not counted | — | — | no |
| NM_0526_Gyroscope-dynamic-eclp.pdf | UpdatableRateProviderBalV2 | unmatched — not counted | — | — | no |
| NM_0526_Gyroscope-dynamic-eclp.pdf | UpdatableRateProviderBalV3 | unmatched — not counted | — | — | no |
| NM0440_GYFI_FINAL.pdf | GYFIAirdrop | unmatched — not counted | — | listed in Audited Files table | no |
| NM0440_GYFI_FINAL.pdf | GYFILocker | unmatched — not counted | — | listed in Audited Files table | no |
| NM0440_GYFI_FINAL.pdf | Types | unmatched — not counted | — | listed in Audited Files table | no |
| NM0255_GYROSCOPE _FINAL.pdf | CCIPHelpers | unmatched — not counted | — | Listed in audited files table for CCIP-GYD repository | no |
| NM0255_GYROSCOPE _FINAL.pdf | GydL1CCIPEscrow | unmatched — not counted | — | Listed in audited files table for CCIP-GYD repository | no |
| NM0255_GYROSCOPE _FINAL.pdf | L2Gyd | unmatched — not counted | — | Listed in audited files table for ZkEVM-GYD repository | no |
| NM0255_GYROSCOPE _FINAL.pdf | CCIPReceiverUpgradeable | unmatched — not counted | — | Listed in audited files table for CCIP-GYD repository | no |
| NM0255_GYROSCOPE _FINAL.pdf | GydL1Escrow | unmatched — not counted | — | Listed in audited files table for ZkEVM-GYD repository | no |
| NM0264_GYRO_SGYD.pdf | BaseDistributor | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | GydDistributor | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | ICurveLiquidityGauge | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | IGYD | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | IGydDistributor | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | IL1GydEscrow | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | IsGYD | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | L2GydDistributor | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | ScaledMath | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | Stream | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | sGYD | unmatched — not counted | — | — | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GydToken | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GydRecovery | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ReserveManager | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Motherboard | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GyroConfig | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | FreezableProxy | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | LiquidityMining | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | PrimaryAMMV1 | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Reserve | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ReserveStewardshipIncentives | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | VaultRegistry | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | CheckedPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BatchVaultPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GenericVaultPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BaseVaultPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | AssetRegistry | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | TellorOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ChainLinkPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | TrustedSignerPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BaseChainLinkOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BaseBalancerPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BalancerLPSharePricing | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BalancerCPMMPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BalancerECLPV2PriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Balancer2CLPPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Balancer3CLPPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GovernableBase | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Governable | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GovernableUpgradeable | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GovernanceProxy | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ReserveSafetyManager | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | VaultSafetyMode | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | RootSafetyCheck | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | StaticPercentageFeeHandler | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BalancerPoolVault | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GenericVault | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BaseVault | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ReserveSystemRead | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Vaults | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ConfigHelpers | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Errors | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | VaultMetadataExtension | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Arrays | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | DecimalScale | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ConfigKeys | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | DataTypes | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | TypeConversion | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ReserveStateExtensions | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Flow | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | SignedFixedPoint | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | WrappedERC20WithEMA | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | VotingPowerAggregator | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ActionTierConfig | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | LiquidityMining | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | RecruitNFT | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | GovernanceManager | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | EmergencyRecovery | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | GovernanceOnly | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ImmutableOwner | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | RecruitNFTVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | FriendlyDAOVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | NFTVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | FoundingFrogVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | LPVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | AggregateLPVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | NoSafeManagementByMultisig | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | SafeManagementModule | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | SimpleThresholdStrategy | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | SetAddressStrategy | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | BaseThresholdStrategy | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | SetVaultFeesStrategy | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | SetSystemParamsStrategy | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | StaticTierStrategy | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | Errors | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ScaledMath | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | DataTypes | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | VotingPowerHistory | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | Merkle | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | IVotingPowersUpdater | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ITierer | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | IVotingPowerAggregator | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | IVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ITierStrategy | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | IDelegatingVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ILiquidityMining | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | IWrappedERC20WithEMA | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ILockingVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | GydRecovery | unmatched — not counted | — | listed in audited files table (second table) | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | Motherboard | unmatched — not counted | — | listed in audited files table (second table) | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ReserveStewardshipIncentives | unmatched — not counted | — | listed in audited files table (second table) | no |
| NM-0055 Security Review - Gyroscope CEMM.pdf | GyroCEMMPool | unmatched — not counted | — | listed in scope table and findings sections | no |
| NM-0055 Security Review - Gyroscope CEMM.pdf | GyroCEMMOracleMath | unmatched — not counted | — | listed in scope table | no |
| NM-0055 Security Review - Gyroscope CEMM.pdf | GyroCEMMMath | unmatched — not counted | — | listed in scope table | no |
| NM-0055 Security Review - Gyroscope CEMM.pdf | GyroCEMMPoolErrors | unmatched — not counted | — | listed in scope table | no |
| NM-0055 Security Review - Gyroscope CEMM.pdf | GyroPoolMath | unmatched — not counted | — | listed in scope table and findings sections | no |
| NM-0055 Security Review - Gyroscope CEMM.pdf | SignedFixedPoint | unmatched — not counted | — | listed in scope table and findings sections | no |
| NM-0051 Security Review Gyroscope.pdf | Gyro2PoolErrors | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroTwoMath | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroTwoOracleMath | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroTwoPool | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroTwoPoolFactory | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroThreeMath | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroThreePool | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroThreePoolErrors | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroThreePoolFactory | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroCEMMMath | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroCEMMOracleMath | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroCEMMPool | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroCEMMPoolErrors | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroPoolMath | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | Governable | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerExchanger | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerPoolRegistry | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | StaticPercentageFeeHandler | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | FeeBank | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GydToken | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroConfig | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | LPTokenExchangerRegistry | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | Motherboard | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | AssetRegistry | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerCEMMPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerCPMMPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerCPMMV2PriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerCPMMV3PriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerLPSharePricing | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BaseBalancerPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BaseChainLinkOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BaseVaultPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BatchVaultPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | ChainLinkPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | CheckedPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | CrashProtectedChainLinkPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | TrustedSignerPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | UniswapV3TwapPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | PrimaryAMMV1 | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | Reserve | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | ReserveManager | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | ReserveSafetyManager | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | RootSafetyCheck | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | VaultSafetyMode | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | VaultRegistry | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerPoolVault | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BaseVault | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | DataTypes | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | Flow | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | SignedFixedPoint | unmatched — not counted | — | listed in scope table | no |
| Summary Report & Fix Review - Gyroscope.pdf | GyroToken | unmatched — not counted | — | gyro-token/ contains the Gyro token contracts. | no |
| Summary Report & Fix Review - Gyroscope.pdf | GyroTwoPool | unmatched — not counted | — | vaults/ contains the GyroTwoPool, GyroThreePool, and GyroCEMMPool implementations | no |
| Summary Report & Fix Review - Gyroscope.pdf | GyroThreePool | unmatched — not counted | — | vaults/ contains the GyroTwoPool, GyroThreePool, and GyroCEMMPool implementations | no |
| Summary Report & Fix Review - Gyroscope.pdf | GyroCEMMPool | unmatched — not counted | — | vaults/ contains the GyroTwoPool, GyroThreePool, and GyroCEMMPool implementations | no |
| Summary Report & Fix Review - Gyroscope.pdf | PrimaryAMMV1 | unmatched — not counted | — | protocol/ contains the AMM and various other core contracts of the system. Our scope in the initial two weeks was limited to the PrimaryAMMV1 contract. | no |
| Summary Report & Fix Review - Gyroscope.pdf | ReserveSafetyManager | unmatched — not counted | — | Certain safety checks performed during minting and redeeming operations do not properly check the returned error codes; as a result, minting and redeeming operations could succeed even if the ReserveSafetyManager indicates that they are unsafe. | no |
| Summary Report & Fix Review - Gyroscope.pdf | FeeBank | unmatched — not counted | — | SafeERC20 functions not used in FeeBank | no |
| Summary Report & Fix Review - Gyroscope.pdf | GryoTokenL1 | unmatched — not counted | — | Risk of trapped funds in the GryoTokenL1 contract due to missing ETH validation | no |
| Gyroscope_Protocol_Audit_Report.pdf | PrimaryAMMV1 | unmatched — not counted | — | listed in scope | no |
| Gyroscope_Protocol_Audit_Report.pdf | GyroCEMMMath | unmatched — not counted | — | listed in scope | no |
| Gyroscope_Protocol_Audit_Report.pdf | BalancerLPSharePricing | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 182 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8
- Match method counts: n/a

Zero-match audit list:

- [2962] NM_0526_Gyroscope-dynamic-eclp.pdf
- [2963] NM0440_GYFI_FINAL.pdf
- [2964] NM0255_GYROSCOPE _FINAL.pdf
- [2965] NM0264_GYRO_SGYD.pdf
- [2966] NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf
- [2967] NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf
- [2968] NM-0055 Security Review - Gyroscope CEMM.pdf
- [2969] NM-0051 Security Review Gyroscope.pdf
- [2970] Summary Report & Fix Review - Gyroscope.pdf
- [2971] Gyroscope_Protocol_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
