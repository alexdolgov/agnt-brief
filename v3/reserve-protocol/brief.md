# Agentic Audit Brief: Reserve Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 5 audit(s)
- Eligible audit results: 27 (5 matched; 22 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Reserve Protocol (`reserve-protocol`)
- Website: [https://reserve.org](https://reserve.org)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bsc, ethereum
- Contract surface: 27 unique implementations (27 raw deployments)
- Coverage basis: 4/19 confirmed own live verified implementations (21.1%); conservative 21.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $47,742,955.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Reserve Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 19 contract row(s) across base, bsc, ethereum. Structural roles: 14 core, 5 supporting. 14 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 19
- Structural roles: core (14), supporting (5)
- Contract kinds: contract (19)
- Detected standards: erc20 (6), erc165 (5), accesscontrol (4), erc20permit (1), ownable (1), pausable (1)
- Frameworks: openzeppelin (18), openzeppelin-upgradeable (14), prb-math (12), solmate (1)
- Upgradeable-pattern rows: 14

## Fork Analysis

0 of 27 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0262e3...cdcd80`, chain 1)
- UnnamedContract (`0xa665b2...4849db`, chain 1)
- UnnamedContract (`0xba9642...a5d725`, chain 1)
- UnnamedContract (`0xe92657...2b558c`, chain 1)
- UnnamedContract (`0x6f2c63...3e9a07`, chain 56)
- UnnamedContract (`0x79a4e9...6c9390`, chain 56)
- UnnamedContract (`0x0262e3...cdcd80`, chain 8453)
- UnnamedContract (`0xa665b2...4849db`, chain 8453)
- BridgeToken (`0x23f72a...27bfee`, chain 56)
- Folio (`0xb6b35b...b7e0a6`, chain 1)
- Folio (`0xd58b27...4d45e7`, chain 56)
- Folio (`0x03d27e...214dfb`, chain 8453)
- Folio (`0x6368e6...959a10`, chain 8453)
- FolioDAOFeeRegistry (`0x135437...68285e`, chain 56)
- FolioDeployer (`0x4d201a...122073`, chain 1)
- FolioDeployer (`0xbe3b47...bec63a`, chain 1)
- FolioDeployer (`0x5bed18...edcdcf`, chain 56)
- FolioDeployer (`0x72f872...14ab2a`, chain 56)
- FolioDeployer (`0x3451fd...a816f9`, chain 8453)
- FolioDeployer (`0xa203aa...5ae7ea`, chain 8453)
- GovernanceDeployer (`0x270d92...3c13ec`, chain 56)
- GovernanceDeployer (`0x6a66e6...22c872`, chain 8453)
- OptimismMintableERC20 (`0xab3645...72f64a`, chain 8453)
- RSR (`0x320623...8b5d70`, chain 1)
- TrustedFillerRegistry (`0x279ccf...a88b3a`, chain 1)
- TrustedFillerRegistry (`0x08424d...a6449b`, chain 56)
- TrustedFillerRegistry (`0x72db5f...6c7a18`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 19; live-surface contracts included: 19 (19 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/27 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/19 (21.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 27 of 27 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 4/19
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 27
- Raw deployments: 27
- Audits discovered: 27 (27 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 3 fresh, 7 aging, 17 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 15.8% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 3 | 15.8% | 2025-06 |
| Pashov Audit Group | Tier 2 | 1 | 5.3% | 2025-06 |
| Trust Security | Tier 2 | 1 | 5.3% | 2024-12 |
| unknown | Tier 2 | 1 | 5.3% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Folio | unknown | project_anchor | own_supporting | 0 | base | unit-391440 | `0x03d27e...214dfb` | ✅ Audited |
| FolioDAOFeeRegistry | registry | project_anchor | own_supporting | 0 | bsc | unit-391432 | `0x135437...68285e` | ✅ Audited |
| GovernanceDeployer | unknown | project_anchor | own_supporting | 0 | base | unit-391443 | `0x6a66e6...22c872` | ✅ Audited |
| RSR | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391424 | `0x320623...8b5d70` | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Folio | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391427 | `0xb6b35b...b7e0a6` | ⚠️ Unaudited |
| Folio | unknown | project_anchor | own_supporting | 0 | bsc | unit-391438 | `0xd58b27...4d45e7` | ⚠️ Unaudited |
| Folio | unknown | project_anchor | own_supporting | 0 | base | unit-391442 | `0x6368e6...959a10` | ⚠️ Unaudited |
| FolioDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391425 | `0x4d201a...122073` | ⚠️ Unaudited |
| FolioDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391429 | `0xbe3b47...bec63a` | ⚠️ Unaudited |
| FolioDeployer | unknown | project_anchor | own_supporting | 0 | bsc | unit-391434 | `0x5bed18...edcdcf` | ⚠️ Unaudited |
| FolioDeployer | unknown | project_anchor | own_supporting | 0 | bsc | unit-391436 | `0x72f872...14ab2a` | ⚠️ Unaudited |
| FolioDeployer | unknown | project_anchor | own_supporting | 0 | base | unit-391441 | `0x3451fd...a816f9` | ⚠️ Unaudited |
| FolioDeployer | unknown | project_anchor | own_supporting | 0 | base | unit-391445 | `0xa203aa...5ae7ea` | ⚠️ Unaudited |
| GovernanceDeployer | unknown | project_anchor | own_supporting | 0 | bsc | unit-391433 | `0x270d92...3c13ec` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-391447 | `0xab3645...72f64a` | ⚠️ Unaudited |
| TokenImplementation | token | project_anchor | own_supporting | 1 | bsc | unit-391448 | `0x23f72a...27bfee` | ⚠️ Unaudited |
| TrustedFillerRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-391423 | `0x279ccf...a88b3a` | ⚠️ Unaudited |
| TrustedFillerRegistry | registry | project_anchor | own_supporting | 0 | bsc | unit-391431 | `0x08424d...a6449b` | ⚠️ Unaudited |
| TrustedFillerRegistry | registry | project_anchor | own_supporting | 0 | base | unit-391444 | `0x72db5f...6c7a18` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391422 | `0x0262e3...cdcd80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391426 | `0xa665b2...4849db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391428 | `0xba9642...a5d725` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391430 | `0xe92657...2b558c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391435 | `0x6f2c63...3e9a07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391437 | `0x79a4e9...6c9390` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391439 | `0x0262e3...cdcd80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391446 | `0xa665b2...4849db` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Ackee - abch-reserve-protocol-report-1.1.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Ackee%20-%20abch-reserve-protocol-report-1.1.pdf) | Ackee Blockchain | Audit | 2022-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 16 | n/a |
| [Certora Formal Verification FixLib.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Certora%20Formal%20Verification%20FixLib.pdf) | unknown | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Code4rena - Reserve Audit Report - Release 2.1.0.md](https://github.com/reserve-protocol/protocol/blob/master/audits/Code4rena%20-%20Reserve%20Audit%20Report%20-%20Release%202.1.0.md) | Code4rena | Contest | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 17 | n/a |
| [Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md](https://github.com/reserve-protocol/protocol/blob/master/audits/Code4rena%20-%20Reserve%20Audit%20Report%20-%20Release%203.0.0%20(collaterals).md) | Code4rena | Contest | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 25 | n/a |
| [Code4rena - Reserve Audit Report - Release 3.0.0 (core).md](https://github.com/reserve-protocol/protocol/blob/master/audits/Code4rena%20-%20Reserve%20Audit%20Report%20-%20Release%203.0.0%20(core).md) | Code4rena | Contest | 2023-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |
| [Code4rena - Reserve Audit Report - Release 4.0.0.md](https://github.com/reserve-protocol/protocol/blob/master/audits/Code4rena%20-%20Reserve%20Audit%20Report%20-%20Release%204.0.0.md) | Code4rena | Contest | 2024-08 | aging | Direct | n/a | no match | 0 | 0 | 0 | 19 | n/a |
| [Halborn - Reserve_Protocol_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Halborn%20-%20Reserve_Protocol_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Oak%20Security%20-%202026-03-12%20Audit%20Report%20-%20Reserve%20Updates.pdf) | unknown | Audit | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 20 | n/a |
| [Reserve_June_Plugins_v1.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Reserve_June_Plugins_v1.pdf) | unknown | Audit | 2024-11 | aging | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [Reserve_PR_4_0_0_v1.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Reserve_PR_4_0_0_v1.pdf) | unknown | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 18 | n/a |
| [Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Solidified%20-%20Audit%20Report%20-%20Reserve%20Protocol%20-%20April%2025%202024.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 158 | n/a |
| [Solidified - Audit Report - Reserve Protocol 3.4.0.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Solidified%20-%20Audit%20Report%20-%20Reserve%20Protocol%203.4.0.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 169 | n/a |
| [Solidified - Audit Report - Reserve Protocol.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Solidified%20-%20Audit%20Report%20-%20Reserve%20Protocol.pdf) | unknown | Audit | 2022-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 94 | n/a |
| [Trust Security - Reserve Audit 3.4.0 Spell.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Trust%20Security%20-%20Reserve%20Audit%203.4.0%20Spell.pdf) | unknown | Audit | 2024-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Trust Security - Reserve Audit Report 3_1_0.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Trust%20Security%20-%20Reserve%20Audit%20Report%203_1_0.pdf) | unknown | Audit | 2024-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 77 | n/a |
| [Trust Security - Reserve Audit Report 3_2_0.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Trust%20Security%20-%20Reserve%20Audit%20Report%203_2_0.pdf) | unknown | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 34 | n/a |
| [Trust Security - Reserve Audit Report 4_2_0.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Trust%20Security%20-%20Reserve%20Audit%20Report%204_2_0.pdf) | unknown | Audit | 2026-01 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 21 | n/a |
| [Reserve_ETH_Plus_LP_v1.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/individual-plugins/Reserve_ETH_Plus_LP_v1.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Reserve_MetaMorpho_plugins_v2.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/individual-plugins/Reserve_MetaMorpho_plugins_v2.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [trail-of-bits-2022-08-reserve-protocol-fixreview.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/trail-of-bits-2022-08-reserve-protocol-fixreview.pdf) | unknown | Audit | 2022-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 15 | n/a |
| [trail-of-bits-2022-08-reserve-protocol-securityreview.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/trail-of-bits-2022-08-reserve-protocol-securityreview.pdf) | unknown | Audit | 2022-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 24 | n/a |
| [report-competition-reserve-jan2025.pdf](https://github.com/reserve-protocol/reserve-index-dtf/blob/main/audits/cantina/report-competition-reserve-jan2025.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [reserve-security-review_2025-06-02.pdf](https://github.com/reserve-protocol/reserve-index-dtf/blob/main/audits/pashov/reserve-security-review_2025-06-02.pdf) | Pashov Audit Group | Audit | 2025-06 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 16 | high |
| [2025-04-reserve-folio-solidity-2.0.0.pdf](https://github.com/reserve-protocol/reserve-index-dtf/blob/main/audits/trail-of-bits/2025-04-reserve-folio-solidity-2.0.0.pdf) | Trail of Bits | Audit | 2025-04 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 7 | high |
| [2025-06-reserve-folio-solidity-4.0.0.pdf](https://github.com/reserve-protocol/reserve-index-dtf/blob/main/audits/trail-of-bits/2025-06-reserve-folio-solidity-4.0.0.pdf) | Trail of Bits | Audit | 2025-06 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [v1-audit-dec-2024.pdf](https://github.com/reserve-protocol/reserve-index-dtf/blob/main/audits/trust-security/v1-audit-dec-2024.pdf) | Trust Security | Audit | 2024-12 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 14 | high |
| [Audit Report - Reserve Token [3 Jan 2022]-2.pdf](https://github.com/reserve-protocol/rsr-mainnet/blob/master/audits/solidified/Audit%20Report%20-%20Reserve%20Token%20%5B3%20Jan%202022%5D-2.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | matched | 1 | 0 | 0 | 4 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5382] Ackee - abch-reserve-protocol-report-1.1.pdf — no match: No reason recorded
- [5383] Certora Formal Verification FixLib.pdf — no match: Only one library contract (Fixed.sol) is in scope. Audit date is the end date of the engagement (January 12th, 2026).
- [5384] Code4rena - Reserve Audit Report - Release 2.1.0.md — no match: No reason recorded
- [5385] Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md — no match: No reason recorded
- [5386] Code4rena - Reserve Audit Report - Release 3.0.0 (core).md — no match: No reason recorded
- [5387] Code4rena - Reserve Audit Report - Release 4.0.0.md — no match: No reason recorded
- [5388] Halborn - Reserve_Protocol_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — no match: No reason recorded
- [5389] Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf — no match: No reason recorded
- [5390] Reserve_June_Plugins_v1.pdf — no match: No reason recorded
- [5391] Reserve_PR_4_0_0_v1.pdf — no match: No reason recorded
- [5392] Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf — no match: No reason recorded
- [5393] Solidified - Audit Report - Reserve Protocol 3.4.0.pdf — no match: No reason recorded
- [5394] Solidified - Audit Report - Reserve Protocol.pdf — no match: No reason recorded
- [5395] Trust Security - Reserve Audit 3.4.0 Spell.pdf — no match: No reason recorded
- [5396] Trust Security - Reserve Audit Report 3_1_0.pdf — no match: No reason recorded
- [5397] Trust Security - Reserve Audit Report 3_2_0.pdf — no match: No reason recorded
- [5398] Trust Security - Reserve Audit Report 4_2_0.pdf — no match: No reason recorded
- [5399] Reserve_ETH_Plus_LP_v1.pdf — no match: Scope section explicitly lists four files. Audit date from document versioning: 03/07/2024.
- [5400] Reserve_MetaMorpho_plugins_v2.pdf — no match: Scope explicitly lists two files: MetaMorphoFiatCollateral.sol and MetaMorphoSelfReferentialCollateral.sol. Audit date from versioning table: 02/05/2024.
- [5401] trail-of-bits-2022-08-reserve-protocol-fixreview.pdf — no match: No reason recorded
- [5402] trail-of-bits-2022-08-reserve-protocol-securityreview.pdf — no match: No reason recorded
- [5466] report-competition-reserve-jan2025.pdf — no match: Only one contract (Folio) is explicitly referenced in the findings. No explicit scope section or file listing was provided in the report text.
- [5467] reserve-security-review_2025-06-02.pdf — matched: Scope section explicitly lists 17 smart contracts. Audit date is the end date of the engagement (June 11th 2025).
- [5468] 2025-04-reserve-folio-solidity-2.0.0.pdf — matched: Extracted from 'Project Targets' section and detailed findings. The report explicitly lists Folio, StakingVault, UnstakingManager, and deployment contracts as targets. Additional contracts referenced in findings and PoCs are included.
- [5469] 2025-06-reserve-folio-solidity-4.0.0.pdf — matched: Extracted contracts from scope section (Project Targets) and findings. Audit date from cover page.
- [5470] v1-audit-dec-2024.pdf — matched: All 15 files listed in the Scope section of the report.
- [5472] Audit Report - Reserve Token [3 Jan 2022]-2.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Ackee - abch-reserve-protocol-report-1.1.pdf | AbstractCollateral | unmatched — not counted | — | — | no |
| Ackee - abch-reserve-protocol-report-1.1.pdf | AssetRegistry | unmatched — not counted | — | — | no |
| Ackee - abch-reserve-protocol-report-1.1.pdf | BackingManager | unmatched — not counted | — | — | no |
| Ackee - abch-reserve-protocol-report-1.1.pdf | BasketHandler | unmatched — not counted | — | — | no |
| Ackee - abch-reserve-protocol-report-1.1.pdf | Broker | unmatched — not counted | — | — | no |
| Ackee - abch-reserve-protocol-report-1.1.pdf | Deployer | unmatched — not counted | — | — | no |
| Ackee - abch-reserve-protocol-report-1.1.pdf | Distributor | unmatched — not counted | — | — | no |
| Ackee - abch-reserve-protocol-report-1.1.pdf | Fixed | unmatched — not counted | — | — | no |
| Ackee - abch-reserve-protocol-report-1.1.pdf | Furnace | unmatched — not counted | — | — | no |
| Ackee - abch-reserve-protocol-report-1.1.pdf | GnosisTrade | unmatched — not counted | — | — | no |
| Ackee - abch-reserve-protocol-report-1.1.pdf | Main | unmatched — not counted | — | — | no |
| Ackee - abch-reserve-protocol-report-1.1.pdf | OracleLib | unmatched — not counted | — | — | no |
| Ackee - abch-reserve-protocol-report-1.1.pdf | RToken | unmatched — not counted | — | — | no |
| Ackee - abch-reserve-protocol-report-1.1.pdf | RevenueTrader | unmatched — not counted | — | — | no |
| Ackee - abch-reserve-protocol-report-1.1.pdf | StRSR | unmatched — not counted | — | — | no |
| Ackee - abch-reserve-protocol-report-1.1.pdf | StRSRVotes | unmatched — not counted | — | — | no |
| Certora Formal Verification FixLib.pdf | Fixed | unmatched — not counted | — | listed in scope | no |
| Code4rena - Reserve Audit Report - Release 2.1.0.md | Asset | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 2.1.0.md | BackingManagerP1 | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 2.1.0.md | BasketHandler | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 2.1.0.md | CTokenFiatCollateral | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 2.1.0.md | CTokenNonFiatCollateral | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 2.1.0.md | Component | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 2.1.0.md | Distributor | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 2.1.0.md | FiatCollateral | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 2.1.0.md | Furnace | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 2.1.0.md | OracleLib | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 2.1.0.md | RTokenAsset | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 2.1.0.md | RTokenP1 | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 2.1.0.md | RecollateralizationLibP1 | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 2.1.0.md | RedemptionBatteryLib | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 2.1.0.md | RevenueTrader | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 2.1.0.md | StRSR | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 2.1.0.md | TradingP1 | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | AnkrStakedEthCollateral | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | AppreciatingFiatCollateral | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | Asset | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | BackingManager | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | BasketHandler | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | CBEthCollateral | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | CTokenV3Collateral | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | CometHelpers | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | ConvexStakingWrapper | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | CurveStableCollateral | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | CurveStableMetapoolCollateral | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | CurveStableRTokenMetapoolCollateral | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | CurveVolatileCollateral | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | CusdcV3Wrapper | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | NonFiatCollateral | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | OracleLib | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | PoolToken | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | RTokenAsset | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | RecollateralizationLibP1 | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | RethCollateral | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | RevenueTrader | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | RewardableERC20 | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | RewardableERC20Wrapper | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | StargateRewardableWrapper | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md | StaticATokenLM | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (core).md | AssetRegistry | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (core).md | BackingManager | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (core).md | BasketHandler | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (core).md | Broker | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (core).md | Distributor | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (core).md | DutchTrade | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (core).md | Furnace | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (core).md | GnosisTrade | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (core).md | RToken | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (core).md | RevenueTrader | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (core).md | StRSR | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 3.0.0 (core).md | Trading | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 4.0.0.md | AllowanceLib | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 4.0.0.md | Asset | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 4.0.0.md | AssetRegistry | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 4.0.0.md | BackingManager | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 4.0.0.md | BasketHandler | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 4.0.0.md | Broker | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 4.0.0.md | Deployer | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 4.0.0.md | Distributor | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 4.0.0.md | DutchTrade | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 4.0.0.md | Governance | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 4.0.0.md | Main | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 4.0.0.md | PermitLib | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 4.0.0.md | RToken | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 4.0.0.md | StRSR | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 4.0.0.md | StRSRP1Votes | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 4.0.0.md | StRSRVotes | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 4.0.0.md | TimelockController | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 4.0.0.md | TradingP1 | unmatched — not counted | — | — | no |
| Code4rena - Reserve Audit Report - Release 4.0.0.md | VersionRegistry | unmatched — not counted | — | — | no |
| Halborn - Reserve_Protocol_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | BackingManager | unmatched — not counted | — | — | no |
| Halborn - Reserve_Protocol_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | BasketHandler | unmatched — not counted | — | — | no |
| Halborn - Reserve_Protocol_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Broker | unmatched — not counted | — | — | no |
| Halborn - Reserve_Protocol_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Deployer | unmatched — not counted | — | — | no |
| Halborn - Reserve_Protocol_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Distributor | unmatched — not counted | — | — | no |
| Halborn - Reserve_Protocol_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | FacadeWrite | unmatched — not counted | — | — | no |
| Halborn - Reserve_Protocol_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Main | unmatched — not counted | — | — | no |
| Halborn - Reserve_Protocol_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | RToken | unmatched — not counted | — | — | no |
| Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf | AerodromeGaugeWrapper | unmatched — not counted | — | — | no |
| Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf | AerodromeStableCollateral | unmatched — not counted | — | — | no |
| Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf | AerodromeVolatileCollateral | unmatched — not counted | — | — | no |
| Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf | AssetPluginRegistry | unmatched — not counted | — | — | no |
| Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf | BackingManager | unmatched — not counted | — | — | no |
| Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf | Broker | unmatched — not counted | — | — | no |
| Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf | CFiatV3Wrapper | unmatched — not counted | — | — | no |
| Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf | CurveGaugeWrapper | unmatched — not counted | — | — | no |
| Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf | DAOFeeRegistry | unmatched — not counted | — | — | no |
| Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf | Deployer | unmatched — not counted | — | — | no |
| Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf | Distributor | unmatched — not counted | — | — | no |
| Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf | DutchTrade | unmatched — not counted | — | — | no |
| Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf | GnosisTrade | unmatched — not counted | — | — | no |
| Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf | IDeployer | unmatched — not counted | — | — | no |
| Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf | Main | unmatched — not counted | — | — | no |
| Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf | RToken | unmatched — not counted | — | — | no |
| Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf | RoleRegistry | unmatched — not counted | — | — | no |
| Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf | StRSR | unmatched — not counted | — | — | no |
| Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf | Upgrade4_2_0 | unmatched — not counted | — | — | no |
| Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf | VersionRegistry | unmatched — not counted | — | — | no |
| Reserve_June_Plugins_v1.pdf | ApxEthCollateral | unmatched — not counted | — | — | no |
| Reserve_June_Plugins_v1.pdf | USDM | unmatched — not counted | — | — | no |
| Reserve_June_Plugins_v1.pdf | apxETH | unmatched — not counted | — | — | no |
| Reserve_June_Plugins_v1.pdf | sUSDe | unmatched — not counted | — | — | no |
| Reserve_PR_4_0_0_v1.pdf | AssetPluginRegistry | unmatched — not counted | — | — | no |
| Reserve_PR_4_0_0_v1.pdf | AssetRegistry | unmatched — not counted | — | — | no |
| Reserve_PR_4_0_0_v1.pdf | BasketHandler | unmatched — not counted | — | — | no |
| Reserve_PR_4_0_0_v1.pdf | BasketLibP1 | unmatched — not counted | — | — | no |
| Reserve_PR_4_0_0_v1.pdf | Broker | unmatched — not counted | — | — | no |
| Reserve_PR_4_0_0_v1.pdf | CurveStableMetapoolCollateral | unmatched — not counted | — | — | no |
| Reserve_PR_4_0_0_v1.pdf | DAOFeeRegistry | unmatched — not counted | — | — | no |
| Reserve_PR_4_0_0_v1.pdf | Distributor | unmatched — not counted | — | — | no |
| Reserve_PR_4_0_0_v1.pdf | DutchTrade | unmatched — not counted | — | — | no |
| Reserve_PR_4_0_0_v1.pdf | GnosisTrade | unmatched — not counted | — | — | no |
| Reserve_PR_4_0_0_v1.pdf | IDistributor | unmatched — not counted | — | — | no |
| Reserve_PR_4_0_0_v1.pdf | Main | unmatched — not counted | — | — | no |
| Reserve_PR_4_0_0_v1.pdf | ReadFacet | unmatched — not counted | — | — | no |
| Reserve_PR_4_0_0_v1.pdf | RecollateralizationLib | unmatched — not counted | — | — | no |
| Reserve_PR_4_0_0_v1.pdf | RevenueTrader | unmatched — not counted | — | — | no |
| Reserve_PR_4_0_0_v1.pdf | TradeLib | unmatched — not counted | — | — | no |
| Reserve_PR_4_0_0_v1.pdf | VersionRegistry | unmatched — not counted | — | — | no |
| Reserve_PR_4_0_0_v1.pdf | YearnV2CurveFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | ATokenFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | AaveV3FiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | Allowance | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | AnkrStakedEthCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | AppreciatingFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | Array | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | Asset | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | AssetRegistry | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | Auth | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | BackingManager | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | BasketHandler | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | BasketLib | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | Broker | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | CBETHCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | CBETHCollateralL2 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | CTokenFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | CTokenNonFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | CTokenSelfReferentialCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | CTokenV3Collateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | CTokenWrapper | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | CometCore | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | CometExtInterface | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | CometExtMock | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | CometHelpers | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | CometInterface | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | CometMainInterface | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | CometStorage | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | Component | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | ComponentRegistry | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | ConvexInterfaces | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | ConvexStakingWrapper | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | CurveGaugeWrapper | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | CurveStableCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | CurveStableMetapoolCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | CurveStableRTokenMetapoolCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | CusdcV3Wrapper | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | CvxMining | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | DO_NOT_USE_StargatePoolETHCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | Deployer | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | DeployerRegistry | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | Distributor | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | DutchTrade | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | ERC20 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | ERC20PermitUpgradeable | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | ERC4626 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | EURFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | FacadeAct | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | FacadeMonitor | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | FacadeRead | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | FacadeTest | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | FacadeWrite | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | FacadeWriteLib | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | FiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | Fixed | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | Furnace | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | GnosisTrade | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | Governance | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IAToken | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IAaveIncentivesController | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IAnkrETH | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IAsset | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IAssetRegistry | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IBackingManager | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IBasketHandler | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IBroker | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | ICBEth | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | ICToken | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IComet | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | ICometConfigurator | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | ICometProxyAdmin | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | ICometRewards | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IComponent | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IConvexStakingWrapper | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | ICusdcV3Wrapper | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IDeployer | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IDeployerRegistry | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IDistributor | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IERC4626 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IFacadeAct | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IFacadeMonitor | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IFacadeRead | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IFacadeTest | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IFacadeWrite | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IFurnace | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IGnosis | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IInitializableStaticATokenLM | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IMain | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IMorpho | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IRToken | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IRTokenOracle | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IReth | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IRevenueTrader | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IRewardStaking | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IRewardable | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IRocketNetworkBalances | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IRocketStorage | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | ISTETH | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IStRSR | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IStRSRVotes | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IStargateLPStaking | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IStargatePool | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IStargateRouter | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IStaticATokenLM | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IStaticATokenV3LM | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | ITrade | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | ITrading | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IVersioned | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IWSTETH | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IWrappedERC20 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IfrxEthMinter | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | IsfrxEth | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | L2LSDCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | LidoStakedEthCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | Main | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | MorphoAaveV2TokenisedDeposit | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | MorphoFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | MorphoNonFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | MorphoSelfReferentialCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | MorphoTokenisedDeposit | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | NetworkConfigLib | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | NonFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | OracleLib | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | Permit | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | PoolTokens | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | RToken | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | RTokenAsset | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | RayMathExplicitRounding | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | RayMathNoRounding | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | RecollateralizationLib | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | ReentrancyGuard | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | RethCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | RevenueTrader | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | Rewardable | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | RewardableERC20 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | RewardableERC20Wrapper | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | RewardableERC4626Vault | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | RewardableLib | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | SDaiCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | SFraxCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | SFraxEthCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | SelfReferentialCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | StRSR | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | StRSRVotes | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | StableSwap3Pool | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | StargatePoolFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | StargateRewardableWrapper | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | StaticATokenErrors | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | StaticATokenLM | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | StaticATokenV3LM | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | String | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | Throttle | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | TradeLib | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | Trading | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | TradingLib | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | Versioned | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | VersionedAsset | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | WrappedERC20 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf | YearnV2CurveFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | ATokenFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | AaveV3FiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | ActFacet | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | Allowance | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | AnkrStakedEthCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | AppreciatingFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | Array | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | Asset | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | AssetRegistry | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | Auth | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | BackingManager | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | BasketHandler | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | BasketLib | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | Broker | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CBETHCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CBETHCollateralL2 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CTokenFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CTokenNonFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CTokenSelfReferentialCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CTokenV3Collateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CometCore | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CometExtInterface | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CometExtMock | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CometHelpers | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CometInterface | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CometMainInterface | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CometStorage | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | Component | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | ComponentRegistry | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | ConvexInterfaces | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | ConvexStakingWrapper | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CurveAppreciatingRTokenFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CurveAppreciatingRTokenSelfReferentialCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CurveGaugeWrapper | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CurveRecursiveCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CurveStableCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CurveStableMetapoolCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CurveStableRTokenMetapoolCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CusdcV3Wrapper | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | CvxMining | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | DEPRECATED_CTokenWrapper | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | DO_NOT_USE_StargatePoolETHCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | Deployer | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | DeployerRegistry | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | Distributor | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | DutchTrade | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | ERC20 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | ERC20PermitUpgradeable | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | ERC4626 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | ERC4626FiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | EURFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | Facade | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | FacadeMonitor | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | FacadeTest | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | FacadeWrite | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | FacadeWriteLib | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | FiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | Fixed | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | Furnace | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | GnosisTrade | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | Governance | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IAToken | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IAaveIncentivesController | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IAnkrETH | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IAsset | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IAssetRegistry | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IBackingManager | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IBasketHandler | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IBroker | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | ICBEth | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | ICToken | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IComet | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | ICometConfigurator | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | ICometProxyAdmin | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | ICometRewards | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IComponent | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IConvexStakingWrapper | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | ICusdcV3Wrapper | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IDeployer | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IDeployerRegistry | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IDistributor | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IERC4626 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IFacade | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IFacadeMonitor | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IFacadeTest | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IFacadeWrite | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IFurnace | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IGnosis | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IInitializableStaticATokenLM | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IMain | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IMorpho | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IRToken | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IRTokenOracle | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IReth | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IRevenueTrader | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IRewardStaking | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IRewardable | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IRocketNetworkBalances | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IRocketStorage | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | ISTETH | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IStRSR | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IStRSRVotes | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IStakeDAO | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IStargateLPStaking | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IStargatePool | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IStargateRouter | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IStaticATokenLM | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IStaticATokenV3LM | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | ITrade | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | ITrading | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IVersioned | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IWSTETH | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IWrappedERC20 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IfrxEthMinter | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | IsfrxEth | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | L2LSDCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | L2LidoStakedEthCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | LidoStakedEthCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | Main | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | MaxIssuableFacet | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | MetaMorphoFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | MetaMorphoSelfReferentialCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | MorphoAaveV2TokenisedDeposit | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | MorphoFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | MorphoNonFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | MorphoSelfReferentialCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | MorphoTokenisedDeposit | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | Multicall | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | NonFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | OracleErrors | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | OracleLib | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | Permit | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | PoolTokens | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | RToken | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | RTokenAsset | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | RayMathExplicitRounding | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | RayMathNoRounding | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | ReadFacet | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | RecollateralizationLib | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | ReentrancyGuard | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | RethCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | RevenueTrader | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | Rewardable | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | RewardableERC20 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | RewardableERC20Wrapper | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | RewardableERC4626Vault | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | RewardableLib | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | SDaiCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | SFraxCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | SFraxEthCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | SelfReferentialCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | StRSR | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | StRSRVotes | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | StableSwap3Pool | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | StakeDAORecursiveCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | StargatePoolFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | StargateRewardableWrapper | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | StaticATokenErrors | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | StaticATokenLM | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | StaticATokenV3LM | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | String | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | Throttle | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | TradeLib | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | Trading | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | TradingLib | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | Versioned | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | VersionedAsset | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | WrappedERC20 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol 3.4.0.pdf | YearnV2CurveFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | ATokenFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | ATokenMock | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | AaveLendingPoolMock | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | AbstractCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | Asset | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | AssetRegistry | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | AssetRegistryV2 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | Auth | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | BackingManager | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | BackingManagerV2 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | BadCollateralPlugin | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | BadERC20 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | BasketHandler | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | BasketHandlerV2 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | Broker | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | BrokerV2 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | CTokenFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | CTokenMock | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | CTokenNonFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | CTokenSelfReferentialCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | ChainlinkMock | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | Component | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | ComponentRegistry | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | ComptrollerMock | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | Deployer | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | Distributor | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | DistributorV2 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | ERC20 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | ERC20Mock | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | EURFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | EasyAuction | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | Facade | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | FacadeWrite | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | FacadeWriteLib | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | FiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | Fixed | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | FixedCallerMock | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | Furnace | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | FurnaceV2 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | GnosisMock | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | GnosisTrade | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | Governance | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | IAToken | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | IAaveIncentivesController | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | IAsset | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | IAssetRegistry | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | IBackingManager | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | IBasketHandler | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | IBroker | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | IComponent | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | IDeployer | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | IDistributor | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | IFacade | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | IFacadeWrite | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | IFurnace | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | IGnosis | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | IMain | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | IRToken | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | IRevenueTrader | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | IRewardable | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | IStRSR | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | IStRSRVotes | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | IStaticATokenLM | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | ITrade | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | ITrading | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | InvalidATokenFiatCollateralMock | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | InvalidBrokerMock | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | Main | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | MainV2 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | NonFiatCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | NontrivialPegCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | OracleLib | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | RToken | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | RTokenAsset | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | RTokenCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | RTokenPricingLib | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | RTokenV2 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | RayMathNoRounding | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | RedemptionBattery | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | RevenueTrader | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | RevenueTraderV2 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | Rewardable | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | RewardableLib | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | SelfReferentialCollateral | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | SelfdestructTransferMock | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | StRSR | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | StRSRV2 | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | StRSRVotes | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | StaticATokenErrors | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | StaticATokenLM | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | Trading | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | TradingLib | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | USDCMock | unmatched — not counted | — | — | no |
| Solidified - Audit Report - Reserve Protocol.pdf | WETH | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit 3.4.0 Spell.pdf | 3_4_0.sol | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit 3.4.0 Spell.pdf | GnosisTrade.sol | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | ATokenFiatCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | AnkrStakedEthCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | AppreciatingFiatCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | Array | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | Asset | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | AssetRegistry | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | Auth | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | BackingManager | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | BasketHandler | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | BasketLib | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | Broker | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | CBETHCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | CTokenFiatCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | CTokenNonFiatCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | CTokenSelfReferentialCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | CTokenV3Collateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | CTokenWrapper | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | CometHelpers | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | Component | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | ComponentRegistry | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | CurveGaugeWrapper | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | CurveStableCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | CurveStableMetapoolCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | CurveStableRTokenMetapoolCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | CusdcV3Wrapper | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | Deployer | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | Distributor | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | DutchTrade | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | EURFiatCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | FiatCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | Fixed | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | Furnace | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | GnosisTrade | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | Governance | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | ICToken | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | ICusdcV3Wrapper | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | IMorpho | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | IStaticATokenLM | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | IWrappedERC20 | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | LidoStakedEthCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | Main | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | MorphoAaveV2TokenisedDeposit | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | MorphoFiatCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | MorphoNonFiatCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | MorphoSelfReferentialCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | MorphoTokenisedDeposit | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | NetworkConfigLib | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | NonFiatCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | OracleLib | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | Permit | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | PoolTokens | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | RToken | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | RTokenAsset | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | RecollateralizationLib | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | RethCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | RevenueTrader | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | RewardableERC20 | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | RewardableERC20Wrapper | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | RewardableERC4626Vault | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | RewardableLib | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | SDaiCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | SFraxEthCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | SelfReferentialCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | StRSR | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | StRSRVotes | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | StargatePoolETHCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | StargatePoolFiatCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | StargateRewardableWrapper | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | StaticATokenErrors | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | StaticATokenLM | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | String | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | Throttle | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | TradeLib | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | Trading | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | Versioned | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | VersionedAsset | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_1_0.pdf | WrappedERC20 | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | AppreciatingFiatCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | AssetRegistry | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | BackingManager | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | BasketHandler | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | BasketLib | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | CollateralConfig | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | CurvePoolEmaPriceOracleWithMinMax | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | CurveStableCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | Deployer | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | DeploymentParams | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | Distributor | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | DutchTrade | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | DutchTradeRouter | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | FiatCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | FraxOracleLib | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | GnosisTrade | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | IDeployer | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | IDutchTradeCallee | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | IEmaPriceOracleStableSwap | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | IPricePerShareHelper | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | IStakedFrax | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | IStargateLPStaking | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | IsfrxEth | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | MorphoTokenisedDeposit | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | PTConfiguration | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | PoolTokens | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | RToken | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | RewardableERC20Wrapper | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | RewardableERC4626Vault | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | SFraxCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | SFraxEthCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | StRSR | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | StargateRewardableWrapper | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 3_2_0.pdf | YearnV2CurveFiatCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 4_2_0.pdf | 4_2_0 | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 4_2_0.pdf | AssetPluginRegistry | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 4_2_0.pdf | AssetRegistry | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 4_2_0.pdf | BackingManager | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 4_2_0.pdf | BasketHandler | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 4_2_0.pdf | BasketLibP1 | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 4_2_0.pdf | CowSwapFiller | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 4_2_0.pdf | CurveStableMetapoolCollateral | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 4_2_0.pdf | DAOFeeRegistry | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 4_2_0.pdf | Distributor | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 4_2_0.pdf | DutchTrade | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 4_2_0.pdf | GnosisTrade | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 4_2_0.pdf | IDistributor | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 4_2_0.pdf | Main | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 4_2_0.pdf | ReadFacet | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 4_2_0.pdf | RevenueTrader | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 4_2_0.pdf | StRSR | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 4_2_0.pdf | TradeLib | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 4_2_0.pdf | Trading | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 4_2_0.pdf | VersionRegistry | unmatched — not counted | — | — | no |
| Trust Security - Reserve Audit Report 4_2_0.pdf | YearnV2CurveFiatCollateral | unmatched — not counted | — | — | no |
| Reserve_ETH_Plus_LP_v1.pdf | AppreciatingFiatCollateral | unmatched — not counted | — | listed in scope | no |
| Reserve_ETH_Plus_LP_v1.pdf | CurveAppreciatingRTokenFiatCollateral | unmatched — not counted | — | listed in scope | no |
| Reserve_ETH_Plus_LP_v1.pdf | CurveAppreciatingRTokenSelfReferentialCollateral | unmatched — not counted | — | listed in scope | no |
| Reserve_ETH_Plus_LP_v1.pdf | CurveStableRTokenMetapoolCollateral | unmatched — not counted | — | listed in scope | no |
| Reserve_MetaMorpho_plugins_v2.pdf | MetaMorphoFiatCollateral | unmatched — not counted | — | listed in scope | no |
| Reserve_MetaMorpho_plugins_v2.pdf | MetaMorphoSelfReferentialCollateral | unmatched — not counted | — | listed in scope | no |
| trail-of-bits-2022-08-reserve-protocol-fixreview.pdf | AaveOracleMixin | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-fixreview.pdf | BackingManager | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-fixreview.pdf | BasketHandler | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-fixreview.pdf | Broker | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-fixreview.pdf | ComponentRegistry | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-fixreview.pdf | CompoundOracleMixin | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-fixreview.pdf | Deployer | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-fixreview.pdf | Distributor | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-fixreview.pdf | Furnace | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-fixreview.pdf | GnosisTrade | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-fixreview.pdf | Main | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-fixreview.pdf | RToken | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-fixreview.pdf | RevenueTrader | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-fixreview.pdf | StRSR | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-fixreview.pdf | TradingLib | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | AaveOracleMixin | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | Asset | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | AssetRegistry | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | BackingManager | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | BasketHandler | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | Broker | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | Collateral | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | ComponentRegistry | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | CompoundOracleMixin | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | Deployer | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | Distributor | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | EasyAuction | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | Facade | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | FacadeP1 | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | FixLib | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | Furnace | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | GnosisTrade | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | Governor | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | Main | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | RToken | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | RevenueTrader | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | StRSR | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | StRSRVotes | unmatched — not counted | — | — | no |
| trail-of-bits-2022-08-reserve-protocol-securityreview.pdf | TradingLib | unmatched — not counted | — | — | no |
| report-competition-reserve-jan2025.pdf | Folio | ambiguous — not counted | Folio (alternative) `0x03d27e...214dfb` — deployed 2025-07-11 21:04:35+03 — liveness: live (code_present_context)<br>Folio (alternative) `0x6368e6...959a10` — deployed 2025-12-10 16:51:05+03 — liveness: live (code_present_context)<br>Folio (alternative) `0xd58b27...4d45e7` — deployed 2025-09-10 20:22:01+03 — liveness: live (code_present_context)<br>Folio (alternative) `0xb6b35b...b7e0a6` — deployed 2025-12-10 16:52:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| reserve-security-review_2025-06-02.pdf | TrustedFillerRegistry | ambiguous — not counted | TrustedFillerRegistry (alternative) `0x08424d...a6449b` — deployed 2025-07-01 23:40:51+03 — liveness: live (code_present_context)<br>TrustedFillerRegistry (alternative) `0x72db5f...6c7a18` — deployed 2025-07-01 23:36:59+03 — liveness: live (code_present_context)<br>TrustedFillerRegistry (alternative) `0x279ccf...a88b3a` — deployed 2025-07-01 23:39:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| reserve-security-review_2025-06-02.pdf | CowSwapFiller | unmatched — not counted | — | listed in scope | no |
| reserve-security-review_2025-06-02.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| reserve-security-review_2025-06-02.pdf | Folio | own contract | Folio (selected) `0x03d27e...214dfb` — deployed 2025-07-11 21:04:35+03 — liveness: live (code_present_context)<br>Folio (alternative) `0x6368e6...959a10` — deployed 2025-12-10 16:51:05+03 — liveness: live (code_present_context)<br>Folio (alternative) `0xd58b27...4d45e7` — deployed 2025-09-10 20:22:01+03 — liveness: live (code_present_context)<br>Folio (alternative) `0xb6b35b...b7e0a6` — deployed 2025-12-10 16:52:59+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-07-11 was 30d from audit; next candidate 91d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| reserve-security-review_2025-06-02.pdf | MathLib | unmatched — not counted | — | listed in scope | no |
| reserve-security-review_2025-06-02.pdf | RebalancingLib | unmatched — not counted | — | listed in scope | no |
| reserve-security-review_2025-06-02.pdf | Versioned | unmatched — not counted | — | listed in scope | no |
| reserve-security-review_2025-06-02.pdf | StakingVault | unmatched — not counted | — | listed in scope | no |
| reserve-security-review_2025-06-02.pdf | UnstakingManager | unmatched — not counted | — | listed in scope | no |
| reserve-security-review_2025-06-02.pdf | FolioDeployer | ambiguous — not counted | FolioDeployer (alternative) `0x4d201a...122073` — deployed 2025-12-10 16:52:59+03 — liveness: live (current_address_book_code)<br>FolioDeployer (alternative) `0x72f872...14ab2a` — deployed 2025-12-10 16:54:20+03 — liveness: live (current_address_book_code)<br>FolioDeployer (alternative) `0x5bed18...edcdcf` — deployed 2025-09-10 20:22:01+03 — liveness: live (current_address_book_code)<br>FolioDeployer (alternative) `0xa203aa...5ae7ea` — deployed 2025-07-11 21:04:35+03 — liveness: live (current_address_book_code)<br>FolioDeployer (alternative) `0x3451fd...a816f9` — deployed 2025-12-10 16:51:05+03 — liveness: live (current_address_book_code)<br>FolioDeployer (alternative) `0xbe3b47...bec63a` — deployed 2025-07-11 21:09:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| reserve-security-review_2025-06-02.pdf | GovernanceDeployer | ambiguous — not counted | GovernanceDeployer (alternative) `0x270d92...3c13ec` — deployed 2025-09-10 20:21:59+03 — liveness: live (code_present_context)<br>GovernanceDeployer (alternative) `0x6a66e6...22c872` — deployed 2025-03-19 17:48:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| reserve-security-review_2025-06-02.pdf | IBidderCallee | unmatched — not counted | — | listed in scope | no |
| reserve-security-review_2025-06-02.pdf | IFolio | unmatched — not counted | — | listed in scope | no |
| reserve-security-review_2025-06-02.pdf | IFolioDAOFeeRegistry | unmatched — not counted | — | listed in scope | no |
| reserve-security-review_2025-06-02.pdf | IFolioDeployer | unmatched — not counted | — | listed in scope | no |
| reserve-security-review_2025-06-02.pdf | IFolioVersionRegistry | unmatched — not counted | — | listed in scope | no |
| reserve-security-review_2025-06-02.pdf | IRoleRegistry | unmatched — not counted | — | listed in scope | no |
| 2025-04-reserve-folio-solidity-2.0.0.pdf | Folio | ambiguous — not counted | Folio (alternative) `0x03d27e...214dfb` — deployed 2025-07-11 21:04:35+03 — liveness: live (code_present_context)<br>Folio (alternative) `0x6368e6...959a10` — deployed 2025-12-10 16:51:05+03 — liveness: live (code_present_context)<br>Folio (alternative) `0xd58b27...4d45e7` — deployed 2025-09-10 20:22:01+03 — liveness: live (code_present_context)<br>Folio (alternative) `0xb6b35b...b7e0a6` — deployed 2025-12-10 16:52:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-04-reserve-folio-solidity-2.0.0.pdf | StakingVault | unmatched — not counted | — | listed in scope and findings targets | no |
| 2025-04-reserve-folio-solidity-2.0.0.pdf | UnstakingManager | unmatched — not counted | — | mentioned in scope description | no |
| 2025-04-reserve-folio-solidity-2.0.0.pdf | GovernanceDeployer | own contract | GovernanceDeployer (alternative) `0x270d92...3c13ec` — deployed 2025-09-10 20:21:59+03 — liveness: live (code_present_context)<br>GovernanceDeployer (selected) `0x6a66e6...22c872` — deployed 2025-03-19 17:48:05+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-03-19 was 30d from audit; next candidate 145d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-reserve-folio-solidity-2.0.0.pdf | FolioGovernor | unmatched — not counted | — | mentioned in finding 3 | no |
| 2025-04-reserve-folio-solidity-2.0.0.pdf | FolioDeployerV2 | unmatched — not counted | — | mentioned in PoC | no |
| 2025-04-reserve-folio-solidity-2.0.0.pdf | FolioProxyAdmin | unmatched — not counted | — | imported in PoC | no |
| 2025-04-reserve-folio-solidity-2.0.0.pdf | FolioProxy | unmatched — not counted | — | imported in PoC | no |
| 2025-04-reserve-folio-solidity-2.0.0.pdf | FolioDAOFeeRegistry | own contract | FolioDAOFeeRegistry (selected) `0x135437...68285e` — deployed 2025-09-10 20:21:51+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-06-reserve-folio-solidity-4.0.0.pdf | Folio | own contract | Folio (selected) `0x03d27e...214dfb` — deployed 2025-07-11 21:04:35+03 — liveness: live (code_present_context)<br>Folio (alternative) `0x6368e6...959a10` — deployed 2025-12-10 16:51:05+03 — liveness: live (code_present_context)<br>Folio (alternative) `0xd58b27...4d45e7` — deployed 2025-09-10 20:22:01+03 — liveness: live (code_present_context)<br>Folio (alternative) `0xb6b35b...b7e0a6` — deployed 2025-12-10 16:52:59+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-07-11 was 24d from audit; next candidate 85d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-06-reserve-folio-solidity-4.0.0.pdf | TrustedFillerRegistry | ambiguous — not counted | TrustedFillerRegistry (alternative) `0x08424d...a6449b` — deployed 2025-07-01 23:40:51+03 — liveness: live (code_present_context)<br>TrustedFillerRegistry (alternative) `0x72db5f...6c7a18` — deployed 2025-07-01 23:36:59+03 — liveness: live (code_present_context)<br>TrustedFillerRegistry (alternative) `0x279ccf...a88b3a` — deployed 2025-07-01 23:39:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-06-reserve-folio-solidity-4.0.0.pdf | CowSwapFiller | unmatched — not counted | — | Listed as target in findings 1,3,5 | no |
| 2025-06-reserve-folio-solidity-4.0.0.pdf | GPv2OrderLib | unmatched — not counted | — | Listed as target in finding 3 | no |
| 2025-06-reserve-folio-solidity-4.0.0.pdf | AuctionLib | unmatched — not counted | — | Mentioned in appendix B and C | no |
| 2025-06-reserve-folio-solidity-4.0.0.pdf | IFolio | unmatched — not counted | — | Mentioned in appendix B | no |
| 2025-06-reserve-folio-solidity-4.0.0.pdf | UpgradeSpell_3_0_0 | unmatched — not counted | — | Mentioned in appendix B and project targets | no |
| v1-audit-dec-2024.pdf | Folio | ambiguous — not counted | Folio (alternative) `0x03d27e...214dfb` — deployed 2025-07-11 21:04:35+03 — liveness: live (code_present_context)<br>Folio (alternative) `0x6368e6...959a10` — deployed 2025-12-10 16:51:05+03 — liveness: live (code_present_context)<br>Folio (alternative) `0xd58b27...4d45e7` — deployed 2025-09-10 20:22:01+03 — liveness: live (code_present_context)<br>Folio (alternative) `0xb6b35b...b7e0a6` — deployed 2025-12-10 16:52:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| v1-audit-dec-2024.pdf | StakingVault | unmatched — not counted | — | listed in scope | no |
| v1-audit-dec-2024.pdf | FolioDeployer | ambiguous — not counted | FolioDeployer (alternative) `0x4d201a...122073` — deployed 2025-12-10 16:52:59+03 — liveness: live (current_address_book_code)<br>FolioDeployer (alternative) `0x72f872...14ab2a` — deployed 2025-12-10 16:54:20+03 — liveness: live (current_address_book_code)<br>FolioDeployer (alternative) `0x5bed18...edcdcf` — deployed 2025-09-10 20:22:01+03 — liveness: live (current_address_book_code)<br>FolioDeployer (alternative) `0xa203aa...5ae7ea` — deployed 2025-07-11 21:04:35+03 — liveness: live (current_address_book_code)<br>FolioDeployer (alternative) `0x3451fd...a816f9` — deployed 2025-12-10 16:51:05+03 — liveness: live (current_address_book_code)<br>FolioDeployer (alternative) `0xbe3b47...bec63a` — deployed 2025-07-11 21:09:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| v1-audit-dec-2024.pdf | FolioGovernor | unmatched — not counted | — | listed in scope | no |
| v1-audit-dec-2024.pdf | IFolio | unmatched — not counted | — | listed in scope | no |
| v1-audit-dec-2024.pdf | FolioDAOFeeRegistry | own contract | FolioDAOFeeRegistry (selected) `0x135437...68285e` — deployed 2025-09-10 20:21:51+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| v1-audit-dec-2024.pdf | FolioVersionRegistry | unmatched — not counted | — | listed in scope | no |
| v1-audit-dec-2024.pdf | UnstakingManager | unmatched — not counted | — | listed in scope | no |
| v1-audit-dec-2024.pdf | GovernanceDeployer | ambiguous — not counted | GovernanceDeployer (alternative) `0x270d92...3c13ec` — deployed 2025-09-10 20:21:59+03 — liveness: live (code_present_context)<br>GovernanceDeployer (alternative) `0x6a66e6...22c872` — deployed 2025-03-19 17:48:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| v1-audit-dec-2024.pdf | FolioProxy | unmatched — not counted | — | listed in scope | no |
| v1-audit-dec-2024.pdf | IFolioDAOFeeRegistry | unmatched — not counted | — | listed in scope | no |
| v1-audit-dec-2024.pdf | IFolioDeployer | unmatched — not counted | — | listed in scope | no |
| v1-audit-dec-2024.pdf | IFolioVersionRegistry | unmatched — not counted | — | listed in scope | no |
| v1-audit-dec-2024.pdf | Versioned | unmatched — not counted | — | listed in scope | no |
| v1-audit-dec-2024.pdf | IRoleRegistry | unmatched — not counted | — | listed in scope | no |
| Audit Report - Reserve Token [3 Jan 2022]-2.pdf | Enchantable | unmatched — not counted | — | — | no |
| Audit Report - Reserve Token [3 Jan 2022]-2.pdf | ForkSpell | unmatched — not counted | — | — | no |
| Audit Report - Reserve Token [3 Jan 2022]-2.pdf | RSR | own contract | RSR (selected) `0x320623...8b5d70` — deployed 2022-01-05 21:27:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit Report - Reserve Token [3 Jan 2022]-2.pdf | SiphonSpell | unmatched — not counted | — | — | no |
| Audit Report - Reserve Token [3 Jan 2022]-2.pdf | Spell | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xb6b35b...b7e0a6` | Folio | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd58b27...4d45e7` | Folio | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6368e6...959a10` | Folio | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4d201a...122073` | FolioDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbe3b47...bec63a` | FolioDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5bed18...edcdcf` | FolioDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x72f872...14ab2a` | FolioDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x3451fd...a816f9` | FolioDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa203aa...5ae7ea` | FolioDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x270d92...3c13ec` | GovernanceDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xab3645...72f64a` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x23f72a...27bfee` | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x279ccf...a88b3a` | TrustedFillerRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x08424d...a6449b` | TrustedFillerRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x72db5f...6c7a18` | TrustedFillerRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 22
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 9 ambiguous, 779 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, medium=1
- Match method counts: temporal_name=3, unique_name=3

Zero-match audit list:

- [5382] Ackee - abch-reserve-protocol-report-1.1.pdf
- [5383] Certora Formal Verification FixLib.pdf
- [5384] Code4rena - Reserve Audit Report - Release 2.1.0.md
- [5385] Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md
- [5386] Code4rena - Reserve Audit Report - Release 3.0.0 (core).md
- [5387] Code4rena - Reserve Audit Report - Release 4.0.0.md
- [5388] Halborn - Reserve_Protocol_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [5389] Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf
- [5390] Reserve_June_Plugins_v1.pdf
- [5391] Reserve_PR_4_0_0_v1.pdf
- [5392] Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf
- [5393] Solidified - Audit Report - Reserve Protocol 3.4.0.pdf
- [5394] Solidified - Audit Report - Reserve Protocol.pdf
- [5395] Trust Security - Reserve Audit 3.4.0 Spell.pdf
- [5396] Trust Security - Reserve Audit Report 3_1_0.pdf
- [5397] Trust Security - Reserve Audit Report 3_2_0.pdf
- [5398] Trust Security - Reserve Audit Report 4_2_0.pdf
- [5399] Reserve_ETH_Plus_LP_v1.pdf
- [5400] Reserve_MetaMorpho_plugins_v2.pdf
- [5401] trail-of-bits-2022-08-reserve-protocol-fixreview.pdf
- [5402] trail-of-bits-2022-08-reserve-protocol-securityreview.pdf
- [5466] report-competition-reserve-jan2025.pdf

Fork inheritance lineage and inherited audits are included when available.
