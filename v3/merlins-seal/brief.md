# Agentic Audit Brief: Merlins Seal

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Merlins Seal (`merlins-seal`)
- Website: [https://merlinchain.io/bridge/staking](https://merlinchain.io/bridge/staking)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, merlin
- Contract surface: 70 unique implementations (70 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $349,025,166.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Merlins Seal in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x00fe62...def4f7`, chain 4200)
- UnnamedContract (`0x072652...865559`, chain 4200)
- UnnamedContract (`0x27622b...55aa39`, chain 4200)
- UnnamedContract (`0x4dcb91...c19e4c`, chain 4200)
- UnnamedContract (`0x69181a...bfa501`, chain 4200)
- UnnamedContract (`0x6b4eca...282ebe`, chain 4200)
- UnnamedContract (`0x967aec...07dc0d`, chain 4200)
- UnnamedContract (`0x977a08...e7ac5a`, chain 4200)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 8 own, 21 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 41 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 8 of 70 unique; 62 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/41
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 70
- Raw deployments: 70
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x728da6...d75c19` | ⚠️ Unaudited |
| AssetsRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x219e15...eadfb6` | ⚠️ Unaudited |
| AssetsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x948571...7e9ad9` | ⚠️ Unaudited |
| AssetVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fc603...628226` | ⚠️ Unaudited |
| AsyncDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed15e5...8656cb` | ⚠️ Unaudited |
| BeraStoneRateAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48d74b...b8a664` | ⚠️ Unaudited |
| BevmDepositBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53dde9...df6c7f` | ⚠️ Unaudited |
| DepositBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b70ff...1df54e` | ⚠️ Unaudited |
| DepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1565db...531a76` | ⚠️ Unaudited |
| DepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x749342...8ed2cc` | ⚠️ Unaudited |
| DepositWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aca0c...343357` | ⚠️ Unaudited |
| Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fa6f0...6d9d2d` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x147a19...3d93e5` | ⚠️ Unaudited |
| Locker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0fde8...0db2fb` | ⚠️ Unaudited |
| MellowDepositWstETHStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9b7cc...34d574` | ⚠️ Unaudited |
| MiningPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f5420...de709b` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec306e...133b17` | ⚠️ Unaudited |
| NativeLendingETHStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d7086...daa376` | ⚠️ Unaudited |
| NoDelayTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00e723...6a3d82` | ⚠️ Unaudited |
| OneDayDelayTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5eddcf...86de9a` | ⚠️ Unaudited |
| OracleConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cd42e...495fb1` | ⚠️ Unaudited |
| OracleRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa77cf3...fd9196` | ⚠️ Unaudited |
| ParamRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fa8e2...125e23` | ⚠️ Unaudited |
| Proposal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aa067...9aff9b` | ⚠️ Unaudited |
| SBTCBeraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x437c88...6be43f` | ⚠️ Unaudited |
| StakeStoneRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd9779...b866cf` | ⚠️ Unaudited |
| STO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d8871...b4534d` | ⚠️ Unaudited |
| StoneBeraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f88ae...b577f0` | ⚠️ Unaudited |
| StoneBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x094c0e...b07624` | ⚠️ Unaudited |
| StoneBTCVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7dbac0...09108d` | ⚠️ Unaudited |
| StoneCarnival | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d831e...2e3dd0` | ⚠️ Unaudited |
| StoneCarnivalETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42af99...15754b` | ⚠️ Unaudited |
| StoneOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c1d3d...f531e5` | ⚠️ Unaudited |
| StoneVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa62f9c...b90572` | ⚠️ Unaudited |
| StoryPreDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb13819...75654c` | ⚠️ Unaudited |
| ThreeDaysDelayTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc29f7...031ae6` | ⚠️ Unaudited |
| TimeLockContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e8c3f...65d869` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0de028...731ee4` | ⚠️ Unaudited |
| VeSTO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0abc5...6828c2` | ⚠️ Unaudited |
| WETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb09b4e...cb6628` | ⚠️ Unaudited |
| WithdrawController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x081d90...db0b29` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-246467 | `0x00fe62...def4f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-246468 | `0x072652...865559` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246469 | `0x141162...c68073` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246470 | `0x20584e...04155a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246471 | `0x24c1bd...477bea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-246472 | `0x27622b...55aa39` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246473 | `0x32a4b8...17b811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246474 | `0x460637...fb81f0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246475 | `0x480e15...caf78d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246476 | `0x48e6ac...ee838c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246477 | `0x4a7aa0...6b840d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246478 | `0x4dbe39...87cafa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-246479 | `0x4dcb91...c19e4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246480 | `0x580283...48a422` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246481 | `0x5c46bf...c87378` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-246482 | `0x69181a...bfa501` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-246483 | `0x6b4eca...282ebe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246484 | `0x6bfbe9...a3ce15` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246485 | `0x7c09e0...81734e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246486 | `0x7dcb50...2cbb5a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246487 | `0x9458ea...88a98a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-246488 | `0x967aec...07dc0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-246489 | `0x977a08...e7ac5a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246490 | `0x9bd60d...1bddcd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246491 | `0xa2b1f8...da0a2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246492 | `0xb880fd...2e9bcd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246493 | `0xd32e14...5c7ef8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246494 | `0xf31883...60045a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246495 | `0xf6d226...24e1ba` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Bitmap-Tech-BTCBridge_report_2024-03-06.pdf](https://github.com/MerlinLayer2/merlin-audits/blob/main/Bitmap-Tech-BTCBridge_report_2024-03-06.pdf) | Bitmap Tech | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf](https://github.com/MerlinLayer2/merlin-audits/blob/main/Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf) | ScaleBit | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [Merlin_BTC_L2_final_Secure3_Audit_Report.pdf](https://github.com/MerlinLayer2/merlin-audits/blob/main/Merlin_BTC_L2_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [SlowMist Audit Report - BTCLayer2BridgeContract.pdf](https://github.com/MerlinLayer2/merlin-audits/blob/main/SlowMist%20Audit%20Report%20-%20BTCLayer2BridgeContract.pdf) | SlowMist | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [blocksec_merlin_erc20tokenwrapped_v1.0-signed.pdf](https://github.com/MerlinLayer2/merlin-audits/blob/main/blocksec_merlin_erc20tokenwrapped_v1.0-signed.pdf) | BlockSec | Audit | 2024-04 | stale | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [merlin-audits (GitHub directory)](https://github.com/MerlinLayer2/merlin-audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21160] Bitmap-Tech-BTCBridge_report_2024-03-06.pdf — no match: Extracted 5 contracts from Appendix 1 - Files in Scope. Audit date from 'Date Mar 06 2024' in header.
- [21161] Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf — no match: Extracted 12 contract names from the 'Files in Scope' table. Audit date from header: 'Mon Jan 22 2024'.
- [21162] Merlin_BTC_L2_final_Secure3_Audit_Report.pdf — no match: All contracts listed in the Audit Scope table on page 5 are extracted. The audit date is from the cover page: Jan 23rd, 2024.
- [21163] SlowMist Audit Report - BTCLayer2BridgeContract.pdf — no match: Contracts extracted from visibility description and vulnerability sections. Audit date from audit result table: 2024.01.24 - 2024.01.26, using end date.
- [21164] blocksec_merlin_erc20tokenwrapped_v1.0-signed.pdf — no match: Only one contract in scope: ERC20TokenWrapped. Date found on cover page and in version history.
- [21165] merlin-audits (GitHub directory) — no match: The provided text is a GitHub repository listing with PDF filenames but no actual audit report content. No contract names or scope details are extractable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Bitmap-Tech-BTCBridge_report_2024-03-06.pdf | BTCLayer2Bridge | unmatched — not counted | — | listed in scope appendix | no |
| Bitmap-Tech-BTCBridge_report_2024-03-06.pdf | BTCLayer2BridgeERC20 | unmatched — not counted | — | listed in scope appendix | no |
| Bitmap-Tech-BTCBridge_report_2024-03-06.pdf | BTCLayer2BridgeERC721 | unmatched — not counted | — | listed in scope appendix | no |
| Bitmap-Tech-BTCBridge_report_2024-03-06.pdf | ERC20TokenWrapped | unmatched — not counted | — | listed in scope appendix | no |
| Bitmap-Tech-BTCBridge_report_2024-03-06.pdf | ERC721TokenWrapped | unmatched — not counted | — | listed in scope appendix | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | CDKValidiumDeployer | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | PolygonZkEVMGlobalExitRoot | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | FflonkVerifier | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | CDKValidiumTimelock | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | CDKValidium | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | TokenWrapped | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | DepositContract | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | EmergencyManager | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | GlobalExitRootLib | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | PolygonZkEVMGlobalExitRootL2 | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | CDKDataCommittee | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | PolygonZkEVMBridge | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | CDKValidium | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | FflonkVerifier | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | PolygonZkEVMBridge | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | CDKDataCommittee | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | TokenWrapped | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | DepositContract | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | PolygonZkEVMGlobalExitRoot | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | CDKValidiumDeployer | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | EmergencyManager | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | CDKValidiumTimelock | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | PolygonZkEVMGlobalExitRootL2 | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | GlobalExitRootLib | unmatched — not counted | — | listed in scope table | no |
| SlowMist Audit Report - BTCLayer2BridgeContract.pdf | BTCLayer2Bridge | unmatched — not counted | — | listed in scope and vulnerability analysis | no |
| SlowMist Audit Report - BTCLayer2BridgeContract.pdf | BTCLayer2BridgeERC721 | unmatched — not counted | — | listed in visibility description | no |
| SlowMist Audit Report - BTCLayer2BridgeContract.pdf | BTCLayer2BridgeERC20 | unmatched — not counted | — | listed in visibility description | no |
| SlowMist Audit Report - BTCLayer2BridgeContract.pdf | ERC721TokenWrapped | unmatched — not counted | — | listed in visibility description | no |
| SlowMist Audit Report - BTCLayer2BridgeContract.pdf | ERC20TokenWrapped | unmatched — not counted | — | listed in visibility description | no |
| blocksec_merlin_erc20tokenwrapped_v1.0-signed.pdf | ERC20TokenWrapped | unmatched — not counted | — | Section 1.1: 'The focus of this audit is on the ERC20TokenWrapped Contract.' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 40 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 35 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=1
- Match method counts: n/a

Zero-match audit list:

- [21160] Bitmap-Tech-BTCBridge_report_2024-03-06.pdf
- [21161] Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf
- [21162] Merlin_BTC_L2_final_Secure3_Audit_Report.pdf
- [21163] SlowMist Audit Report - BTCLayer2BridgeContract.pdf
- [21164] blocksec_merlin_erc20tokenwrapped_v1.0-signed.pdf
- [21165] merlin-audits (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
